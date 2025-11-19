wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000726CC(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 15);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v15 = *(this + 3);
    if (v15)
    {
      *v3 = 18;
      v16 = v3 + 1;
      v17 = *(v15 + 40);
      if (v17 <= 0x7F)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v15 = *(qword_10045DBE0 + 24);
      *v3 = 18;
      v16 = v3 + 1;
      v17 = *(v15 + 40);
      if (v17 <= 0x7F)
      {
LABEL_17:
        *(v3 + 1) = v17;
        v3 = sub_100071938(v15, v3 + 2, a3);
        if ((*(this + 15) & 4) != 0)
        {
          goto LABEL_21;
        }

LABEL_4:
        if ((*(this + 60) & 8) == 0)
        {
          goto LABEL_5;
        }

LABEL_28:
        v22 = *(this + 9);
        *v3 = 32;
        v23 = v3 + 1;
        if ((v22 & 0x80000000) != 0)
        {
          v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v22, v23, a3);
          v6 = *(this + 15);
          if ((v6 & 0x10) != 0)
          {
            goto LABEL_35;
          }
        }

        else if (v22 > 0x7F)
        {
          v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, v23, a3);
          v6 = *(this + 15);
          if ((v6 & 0x10) != 0)
          {
            goto LABEL_35;
          }
        }

        else
        {
          *(v3 + 1) = v22;
          v3 = (v3 + 2);
          v6 = *(this + 15);
          if ((v6 & 0x10) != 0)
          {
            goto LABEL_35;
          }
        }

LABEL_6:
        if ((v6 & 0x20) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_36;
      }
    }

    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v16, a3);
    v3 = sub_100071938(v15, v18, v19);
    if ((*(this + 15) & 4) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_4;
  }

  v10 = *(this + 2);
  if (v10)
  {
    *a2 = 10;
    v11 = a2 + 1;
    v12 = *(v10 + 40);
    if (v12 <= 0x7F)
    {
      goto LABEL_11;
    }

LABEL_14:
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v11, a3);
    v3 = sub_100071938(v10, v13, v14);
    v5 = *(this + 15);
    if ((v5 & 2) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_3;
  }

  v10 = *(qword_10045DBE0 + 16);
  *a2 = 10;
  v11 = a2 + 1;
  v12 = *(v10 + 40);
  if (v12 > 0x7F)
  {
    goto LABEL_14;
  }

LABEL_11:
  *(v3 + 1) = v12;
  v3 = sub_100071938(v10, v3 + 2, a3);
  v5 = *(this + 15);
  if ((v5 & 2) != 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_21:
  v20 = *(this + 8);
  *v3 = 24;
  v21 = v3 + 1;
  if ((v20 & 0x80000000) != 0)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v20, v21, a3);
    if ((*(this + 60) & 8) != 0)
    {
      goto LABEL_28;
    }
  }

  else if (v20 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v21, a3);
    if ((*(this + 60) & 8) != 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    *(v3 + 1) = v20;
    v3 = (v3 + 2);
    if ((*(this + 60) & 8) != 0)
    {
      goto LABEL_28;
    }
  }

LABEL_5:
  v6 = *(this + 15);
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_35:
  v24 = *(this + 5);
  *v3 = 41;
  *(v3 + 1) = v24;
  v3 = (v3 + 9);
  if ((*(this + 15) & 0x20) == 0)
  {
LABEL_7:
    v9 = *(this + 1);
    v8 = (this + 8);
    v7 = v9;
    if (!v9)
    {
      return v3;
    }

    goto LABEL_37;
  }

LABEL_36:
  v25 = *(this + 6);
  *v3 = 49;
  *(v3 + 1) = v25;
  v3 = (v3 + 9);
  v26 = *(this + 1);
  v8 = (this + 8);
  v7 = v26;
  if (!v26)
  {
    return v3;
  }

LABEL_37:
  if (*v7 == v7[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v8, v3, a3);
}

uint64_t sub_1000729A4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 60);
  if (v3)
  {
    if ((*(a1 + 60) & 1) == 0)
    {
      v4 = 0;
      if ((*(a1 + 60) & 2) == 0)
      {
        goto LABEL_42;
      }

LABEL_25:
      v16 = *(a1 + 24);
      if (v16)
      {
        v17 = *(v16 + 44);
        if (*(v16 + 44))
        {
          goto LABEL_27;
        }
      }

      else
      {
        v16 = *(qword_10045DBE0 + 24);
        v17 = *(v16 + 44);
        if (*(v16 + 44))
        {
LABEL_27:
          v18 = (v17 << 31 >> 31) & 9;
          if ((v17 & 2) != 0)
          {
            v18 += 9;
          }

          if ((v17 & 4) != 0)
          {
            LODWORD(v19) = v18 + 9;
          }

          else
          {
            LODWORD(v19) = v18;
          }

          v20 = (v16 + 8);
          v21 = *(v16 + 8);
          if (!v21)
          {
            goto LABEL_39;
          }

LABEL_36:
          if (*v21 != v21[1])
          {
            v19 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v20, a2) + v19);
            *(v16 + 40) = v19;
            if (v19 >= 0x80)
            {
              v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
            }

            else
            {
              v22 = 1;
            }

            goto LABEL_41;
          }

LABEL_39:
          *(v16 + 40) = v19;
          v22 = 1;
LABEL_41:
          v4 += v19 + v22 + 1;
          v3 = *(a1 + 60);
          goto LABEL_42;
        }
      }

      LODWORD(v19) = 0;
      v20 = (v16 + 8);
      v21 = *(v16 + 8);
      if (!v21)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(v9 + 44);
      if (*(v9 + 44))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v9 = *(qword_10045DBE0 + 16);
      v10 = *(v9 + 44);
      if (*(v9 + 44))
      {
LABEL_9:
        v11 = (v10 << 31 >> 31) & 9;
        if ((v10 & 2) != 0)
        {
          v11 += 9;
        }

        if ((v10 & 4) != 0)
        {
          v12 = v11 + 9;
        }

        else
        {
          v12 = v11;
        }

        v13 = (v9 + 8);
        v14 = *(v9 + 8);
        if (!v14)
        {
          goto LABEL_22;
        }

        goto LABEL_18;
      }
    }

    v12 = 0;
    v13 = (v9 + 8);
    v14 = *(v9 + 8);
    if (!v14)
    {
      goto LABEL_22;
    }

LABEL_18:
    if (*v14 != v14[1])
    {
      v15 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v13, a2) + v12);
      *(v9 + 40) = v15;
      if (v15 >= 0x80)
      {
        v4 = v15 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
        v3 = *(a1 + 60);
        if ((v3 & 2) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_25;
      }

      v4 = v15 + 2;
      v3 = *(a1 + 60);
      if ((v3 & 2) != 0)
      {
        goto LABEL_25;
      }

LABEL_42:
      if ((v3 & 4) != 0)
      {
        v23 = *(a1 + 32);
        if ((v23 & 0x80000000) != 0)
        {
          v4 += 11;
          if ((v3 & 8) == 0)
          {
            goto LABEL_58;
          }
        }

        else if (v23 >= 0x80)
        {
          v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2);
          v3 = *(a1 + 60);
          v4 += v24 + 1;
          if ((v3 & 8) == 0)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v4 += 2;
          if ((v3 & 8) == 0)
          {
            goto LABEL_58;
          }
        }
      }

      else if ((v3 & 8) == 0)
      {
        goto LABEL_58;
      }

      v25 = *(a1 + 36);
      if ((v25 & 0x80000000) != 0)
      {
        v26 = 11;
      }

      else if (v25 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2) + 1;
        v3 = *(a1 + 60);
      }

      else
      {
        v26 = 2;
      }

      v4 += v26;
LABEL_58:
      v27 = v4 + 9;
      if ((v3 & 0x10) == 0)
      {
        v27 = v4;
      }

      if ((v3 & 0x20) != 0)
      {
        v5 = v27 + 9;
      }

      else
      {
        v5 = v27;
      }

      v6 = (a1 + 8);
      v7 = *(a1 + 8);
      if (!v7)
      {
        goto LABEL_6;
      }

      goto LABEL_64;
    }

LABEL_22:
    *(v9 + 40) = v12;
    v4 = v12 + 2;
    v3 = *(a1 + 60);
    if ((v3 & 2) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_42;
  }

  v5 = 0;
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (!v7)
  {
LABEL_6:
    *(a1 + 56) = v5;
    return v5;
  }

LABEL_64:
  if (*v7 == v7[1])
  {
    goto LABEL_6;
  }

  v28 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 56) = v28;
  return v28;
}

uint64_t sub_100072C54(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100070288(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100072D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100072D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100072D5C(uint64_t result, uint64_t a2)
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

uint64_t sub_100072DF0()
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

  return qword_10045C858;
}

void sub_100072E80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_100072E94(void *a1)
{
  *a1 = off_100435D38;
  if (qword_10045DBE8 != a1)
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

void sub_100072F28(void *a1)
{
  *a1 = off_100435D38;
  if (qword_10045DBE8 != a1)
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

uint64_t sub_100073064(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

      if ((TagFallback & 7) != 0)
      {
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

      else
      {
        v12 = *(this + 1);
        v11 = *(this + 2);
        v25 = 0;
        if (v12 < v11)
        {
          goto LABEL_29;
        }

LABEL_33:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25);
        if (!result)
        {
          return result;
        }

        v23 = v25;
        if (v25 <= 5)
        {
          goto LABEL_31;
        }

LABEL_35:
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 2, v23);
        if (*(this + 1) == *(this + 2))
        {
          goto LABEL_36;
        }
      }
    }

    if (TagFallback >> 3 != 1 || v8 != 2)
    {
      goto LABEL_15;
    }

    *(a1 + 32) |= 1u;
    v9 = *(a1 + 16);
    if (!v9)
    {
      operator new();
    }

    v26 = 0;
    v10 = *(this + 1);
    if (v10 >= *(this + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26))
      {
        return 0;
      }
    }

    else
    {
      v26 = *v10;
      *(this + 1) = v10 + 1;
    }

    v13 = *(this + 14);
    v14 = *(this + 15);
    *(this + 14) = v13 + 1;
    if (v13 >= v14)
    {
      return 0;
    }

    v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v26);
    if (!sub_1000716AC(v9, this, v16, v17) || *(this + 36) != 1)
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

    v22 = *(this + 1);
    v21 = *(this + 2);
    if (v22 < v21 && *v22 == 16)
    {
      v12 = v22 + 1;
      *(this + 1) = v12;
      v25 = 0;
      if (v12 >= v21)
      {
        goto LABEL_33;
      }

LABEL_29:
      v23 = *v12;
      if ((v23 & 0x80000000) != 0)
      {
        goto LABEL_33;
      }

      *(this + 1) = v12 + 1;
      if (v23 > 5)
      {
        goto LABEL_35;
      }

LABEL_31:
      *(a1 + 32) |= 2u;
      *(a1 + 24) = v23;
      if (*(this + 1) == *(this + 2))
      {
LABEL_36:
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

uint64_t sub_100073338(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    v10 = *(result + 16);
    if (v10)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
      if ((*(v5 + 32) & 2) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DBE8 + 16), a2, a4);
      if ((*(v5 + 32) & 2) != 0)
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 24), a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000733FC(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 8);
  if (v5)
  {
    v9 = *(this + 2);
    if (v9)
    {
      *a2 = 10;
      v10 = a2 + 1;
      v11 = *(v9 + 40);
      if (v11 <= 0x7F)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9 = *(qword_10045DBE8 + 16);
      *a2 = 10;
      v10 = a2 + 1;
      v11 = *(v9 + 40);
      if (v11 <= 0x7F)
      {
LABEL_7:
        *(v3 + 1) = v11;
        v3 = sub_100071938(v9, v3 + 2, a3);
        if ((*(this + 8) & 2) != 0)
        {
          goto LABEL_11;
        }

LABEL_3:
        v8 = *(this + 1);
        v7 = (this + 8);
        v6 = v8;
        if (!v8)
        {
          return v3;
        }

        goto LABEL_18;
      }
    }

    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v10, a3);
    v3 = sub_100071938(v9, v12, v13);
    if ((*(this + 8) & 2) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_3;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  v14 = *(this + 6);
  *v3 = 16;
  v15 = v3 + 1;
  if ((v14 & 0x80000000) != 0)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v14, v15, a3);
    v17 = *(this + 1);
    v7 = (this + 8);
    v6 = v17;
    if (!v17)
    {
      return v3;
    }
  }

  else if (v14 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v15, a3);
    v18 = *(this + 1);
    v7 = (this + 8);
    v6 = v18;
    if (!v18)
    {
      return v3;
    }
  }

  else
  {
    *(v3 + 1) = v14;
    v3 = (v3 + 2);
    v16 = *(this + 1);
    v7 = (this + 8);
    v6 = v16;
    if (!v16)
    {
      return v3;
    }
  }

LABEL_18:
  if (*v6 == v6[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v7, v3, a3);
}

uint64_t sub_100073540(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (!*(a1 + 32))
  {
    v3 = 0;
    goto LABEL_30;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_30;
    }

LABEL_24:
    v11 = *(a1 + 24);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
    }

    else
    {
      v12 = 2;
    }

    v3 = (v12 + v3);
    goto LABEL_30;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(v4 + 44);
    if (*(v4 + 44))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = *(qword_10045DBE8 + 16);
    v5 = *(v4 + 44);
    if (*(v4 + 44))
    {
LABEL_8:
      v6 = (v5 << 31 >> 31) & 9;
      if ((v5 & 2) != 0)
      {
        v6 += 9;
      }

      if ((v5 & 4) != 0)
      {
        v7 = v6 + 9;
      }

      else
      {
        v7 = v6;
      }

      v8 = (v4 + 8);
      v9 = *(v4 + 8);
      if (!v9)
      {
LABEL_21:
        *(v4 + 40) = v7;
        v3 = (v7 + 2);
        if ((*(a1 + 32) & 2) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_24;
      }

      goto LABEL_17;
    }
  }

  v7 = 0;
  v8 = (v4 + 8);
  v9 = *(v4 + 8);
  if (!v9)
  {
    goto LABEL_21;
  }

LABEL_17:
  if (*v9 == v9[1])
  {
    goto LABEL_21;
  }

  v10 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v8, a2) + v7);
  *(v4 + 40) = v10;
  if (v10 < 0x80)
  {
    v3 = (v10 + 2);
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  v3 = v10 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
  if ((*(a1 + 32) & 2) != 0)
  {
    goto LABEL_24;
  }

LABEL_30:
  v13 = *(a1 + 8);
  if (v13 && *v13 != v13[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 28) = v3;
  return v3;
}

uint64_t sub_1000736B0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100070504(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100073790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000737A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000737B8(uint64_t result, uint64_t a2)
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

uint64_t sub_10007384C()
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

  return qword_10045C868;
}

void sub_1000738DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_1000738F0(void *a1)
{
  *a1 = off_100435DE8;
  if (qword_10045DBF0 != a1)
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

void sub_100073984(void *a1)
{
  *a1 = off_100435DE8;
  if (qword_10045DBF0 != a1)
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

uint64_t sub_100073AC0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (v8 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v15 = *(this + 1);
            v14 = *(this + 2);
            v32[0] = 0;
            if (v15 >= v14)
            {
              goto LABEL_50;
            }

            goto LABEL_47;
          }
        }

        else if (v8 == 4 && v9 == 1)
        {
          *v32 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_56;
        }

        goto LABEL_24;
      }

      if (v8 == 1)
      {
        break;
      }

      if (v8 == 2 && (TagFallback & 7) == 0)
      {
        v11 = *(this + 1);
        v10 = *(this + 2);
        v32[0] = 0;
        if (v11 >= v10)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
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

    if (v9 != 2)
    {
      goto LABEL_24;
    }

    *(a1 + 44) |= 1u;
    v12 = *(a1 + 16);
    if (!v12)
    {
      operator new();
    }

    v32[0] = 0;
    v13 = *(this + 1);
    if (v13 >= *(this + 2) || *v13 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v32))
      {
        return 0;
      }
    }

    else
    {
      v32[0] = *v13;
      *(this + 1) = v13 + 1;
    }

    v16 = *(this + 14);
    v17 = *(this + 15);
    *(this + 14) = v16 + 1;
    if (v16 >= v17)
    {
      return 0;
    }

    v18 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v32[0]);
    if (!sub_1000716AC(v12, this, v19, v20) || *(this + 36) != 1)
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

    v25 = *(this + 1);
    v24 = *(this + 2);
    if (v25 < v24 && *v25 == 16)
    {
      v11 = v25 + 1;
      *(this + 1) = v11;
      v32[0] = 0;
      if (v11 >= v24)
      {
        goto LABEL_41;
      }

LABEL_38:
      v26 = *v11;
      if ((v26 & 0x80000000) == 0)
      {
        *(this + 1) = v11 + 1;
        if (v26 <= 2)
        {
          goto LABEL_40;
        }

        goto LABEL_43;
      }

LABEL_41:
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v32);
      if (!result)
      {
        return result;
      }

      v26 = v32[0];
      if (v32[0] <= 2)
      {
LABEL_40:
        *(a1 + 44) |= 2u;
        *(a1 + 24) = v26;
        goto LABEL_44;
      }

LABEL_43:
      wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 2, v26);
LABEL_44:
      v29 = *(this + 1);
      v28 = *(this + 2);
      if (v29 < v28 && *v29 == 24)
      {
        v15 = v29 + 1;
        *(this + 1) = v15;
        v32[0] = 0;
        if (v15 >= v28)
        {
          goto LABEL_50;
        }

LABEL_47:
        v30 = *v15;
        if ((v30 & 0x80000000) == 0)
        {
          *(this + 1) = v15 + 1;
          if (v30 <= 3)
          {
            goto LABEL_49;
          }

          goto LABEL_52;
        }

LABEL_50:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v32);
        if (!result)
        {
          return result;
        }

        v30 = v32[0];
        if (v32[0] <= 3)
        {
LABEL_49:
          *(a1 + 44) |= 4u;
          *(a1 + 28) = v30;
          goto LABEL_53;
        }

LABEL_52:
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 3, v30);
LABEL_53:
        v31 = *(this + 1);
        if (v31 < *(this + 2) && *v31 == 33)
        {
          *(this + 1) = v31 + 1;
          *v32 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
          {
            return 0;
          }

LABEL_56:
          *(a1 + 32) = *v32;
          *(a1 + 44) |= 8u;
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

uint64_t sub_100073EA4(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    v10 = *(result + 16);
    if (v10)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
      v6 = *(v5 + 44);
      if ((v6 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DBF0 + 16), a2, a4);
      v6 = *(v5 + 44);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 44);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 28), a2, a4);
  if ((*(v5 + 44) & 8) == 0)
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100073FA0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 11);
  if (v5)
  {
    v9 = *(this + 2);
    if (v9)
    {
      *a2 = 10;
      v10 = a2 + 1;
      v11 = *(v9 + 40);
      if (v11 <= 0x7F)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v9 = *(qword_10045DBF0 + 16);
      *a2 = 10;
      v10 = a2 + 1;
      v11 = *(v9 + 40);
      if (v11 <= 0x7F)
      {
LABEL_9:
        *(v3 + 1) = v11;
        v3 = sub_100071938(v9, v3 + 2, a3);
        if ((*(this + 11) & 2) != 0)
        {
          goto LABEL_13;
        }

LABEL_3:
        if ((*(this + 44) & 4) == 0)
        {
          goto LABEL_4;
        }

LABEL_20:
        v16 = *(this + 7);
        *v3 = 24;
        v17 = v3 + 1;
        if ((v16 & 0x80000000) != 0)
        {
          v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v16, v17, a3);
          if ((*(this + 44) & 8) != 0)
          {
            goto LABEL_27;
          }
        }

        else if (v16 > 0x7F)
        {
          v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v17, a3);
          if ((*(this + 44) & 8) != 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          *(v3 + 1) = v16;
          v3 = (v3 + 2);
          if ((*(this + 44) & 8) != 0)
          {
            goto LABEL_27;
          }
        }

LABEL_5:
        v8 = *(this + 1);
        v7 = (this + 8);
        v6 = v8;
        if (!v8)
        {
          return v3;
        }

        goto LABEL_28;
      }
    }

    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v10, a3);
    v3 = sub_100071938(v9, v12, v13);
    if ((*(this + 11) & 2) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_3;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_13:
  v14 = *(this + 6);
  *v3 = 16;
  v15 = v3 + 1;
  if ((v14 & 0x80000000) != 0)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v14, v15, a3);
    if ((*(this + 44) & 4) != 0)
    {
      goto LABEL_20;
    }
  }

  else if (v14 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v15, a3);
    if ((*(this + 44) & 4) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *(v3 + 1) = v14;
    v3 = (v3 + 2);
    if ((*(this + 44) & 4) != 0)
    {
      goto LABEL_20;
    }
  }

LABEL_4:
  if ((*(this + 44) & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_27:
  v18 = *(this + 4);
  *v3 = 33;
  *(v3 + 1) = v18;
  v3 = (v3 + 9);
  v19 = *(this + 1);
  v7 = (this + 8);
  v6 = v19;
  if (!v19)
  {
    return v3;
  }

LABEL_28:
  if (*v6 == v6[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v7, v3, a3);
}

unint64_t sub_10007419C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 44);
  if (v3)
  {
    if ((*(a1 + 44) & 1) == 0)
    {
      LODWORD(v4) = 0;
      if ((*(a1 + 44) & 2) == 0)
      {
        goto LABEL_31;
      }

LABEL_25:
      v14 = *(a1 + 24);
      if ((v14 & 0x80000000) != 0)
      {
        v15 = 11;
      }

      else if (v14 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
        v3 = *(a1 + 44);
      }

      else
      {
        v15 = 2;
      }

      LODWORD(v4) = v15 + v4;
LABEL_31:
      if ((v3 & 4) != 0)
      {
        v16 = *(a1 + 28);
        if ((v16 & 0x80000000) != 0)
        {
          v17 = 11;
        }

        else if (v16 >= 0x80)
        {
          v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
          v3 = *(a1 + 44);
        }

        else
        {
          v17 = 2;
        }

        LODWORD(v4) = v17 + v4;
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

      goto LABEL_42;
    }

    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = *(v8 + 44);
      if (*(v8 + 44))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = *(qword_10045DBF0 + 16);
      v9 = *(v8 + 44);
      if (*(v8 + 44))
      {
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
          goto LABEL_22;
        }

        goto LABEL_18;
      }
    }

    v11 = 0;
    v12 = (v8 + 8);
    v13 = *(v8 + 8);
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_18:
    if (*v13 != v13[1])
    {
      v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v12, a2) + v11;
      *(v8 + 40) = v4;
      if (v4 >= 0x80)
      {
        LODWORD(v4) = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4, a2) + 1;
        v3 = *(a1 + 44);
        if ((v3 & 2) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        LODWORD(v4) = v4 + 2;
        v3 = *(a1 + 44);
        if ((v3 & 2) == 0)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_25;
    }

LABEL_22:
    *(v8 + 40) = v11;
    LODWORD(v4) = v11 + 2;
    v3 = *(a1 + 44);
    if ((v3 & 2) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  v4 = 0;
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_6:
    *(a1 + 40) = v4;
    return v4;
  }

LABEL_42:
  if (*v6 == v6[1])
  {
    goto LABEL_6;
  }

  v18 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v4;
  *(a1 + 40) = v18;
  return v18;
}

uint64_t sub_100074370(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100070688(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100074450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100074464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100074478(uint64_t result, uint64_t a2)
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

uint64_t sub_10007450C()
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

  return qword_10045C880;
}

void sub_10007459C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000745B0(_DWORD *a1, uint64_t a2)
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

  LOBYTE(v4) = *(a2 + 32);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v8 = *(a2 + 20);
    a1[8] |= 2u;
    a1[5] = v8;
    if ((*(a2 + 32) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
    }

    goto LABEL_7;
  }

  v7 = *(a2 + 16);
  a1[8] |= 1u;
  a1[4] = v7;
  v4 = *(a2 + 32);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v4 & 4) != 0)
  {
LABEL_7:
    v5 = *(a2 + 24);
    a1[8] |= 4u;
    a1[6] = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_100074698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000746AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000746C0(uint64_t a1)
{
  *a1 = off_100435E98;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100074714(uint64_t a1)
{
  *a1 = off_100435E98;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100074810(uint64_t a1)
{
  if (*(a1 + 32))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 6) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100074834(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        if (v9 != 5)
        {
          goto LABEL_20;
        }

LABEL_23:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        a1[6] = v13;
        a1[8] |= 4u;
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

      if (v8 != 1 || v9 != 5)
      {
        goto LABEL_20;
      }

      v15 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v15) & 1) == 0)
      {
        return 0;
      }

      a1[4] = v15;
      a1[8] |= 1u;
      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 21)
      {
        *(this + 1) = v10 + 1;
LABEL_15:
        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v14) & 1) == 0)
        {
          return 0;
        }

        a1[5] = v14;
        a1[8] |= 2u;
        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 29)
        {
          *(this + 1) = v11 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v9 == 5)
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

uint64_t sub_100074A08(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 32);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 16), a3);
    v5 = *(v4 + 32);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v4 + 20), a3);
  if ((*(v4 + 32) & 4) == 0)
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v4 + 24), a3);
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

uint64_t sub_100074AC0(_DWORD *a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a1[8];
  if (v3)
  {
    v7 = a1[4];
    *a2 = 13;
    *(a2 + 1) = v7;
    a2 += 5;
    v3 = a1[8];
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = a1[6];
      *a2 = 29;
      *(a2 + 1) = v9;
      a2 += 5;
      v10 = *(a1 + 1);
      v4 = (a1 + 2);
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

  v8 = a1[5];
  *a2 = 21;
  *(a2 + 1) = v8;
  a2 += 5;
  if ((a1[8] & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = *(a1 + 1);
  v4 = (a1 + 2);
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

uint64_t sub_100074B90(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 32);
  v4 = (v3 << 31 >> 31) & 5;
  if ((v3 & 2) != 0)
  {
    v4 += 5;
  }

  if ((v3 & 4) != 0)
  {
    v4 += 5;
  }

  if (*(a1 + 32))
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

  *(a1 + 28) = v5;
  return v5;
}

uint64_t sub_100074C04(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000745B0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100074CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100074CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100074D0C(uint64_t result, uint64_t a2)
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

uint64_t sub_100074DA0()
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

  return qword_10045C8B0;
}

void sub_100074E30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_100074E44(uint64_t a1)
{
  *a1 = off_100435F48;
  if (qword_10045DBF8 != a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(a1 + 132);
  if (v3 >= 1)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = *(*(a1 + 120) + 8 * i);
      if (v5)
      {
        (*(*v5 + 8))(v5);
        v3 = *(a1 + 132);
      }
    }
  }

  if (*(a1 + 120))
  {
    operator delete[]();
  }

  v6 = *(a1 + 108);
  if (v6 >= 1)
  {
    for (j = 0; j < v6; ++j)
    {
      v8 = *(*(a1 + 96) + 8 * j);
      if (v8)
      {
        (*(*v8 + 8))(v8);
        v6 = *(a1 + 108);
      }
    }
  }

  if (*(a1 + 96))
  {
    operator delete[]();
  }

  v9 = *(a1 + 84);
  if (v9 >= 1)
  {
    for (k = 0; k < v9; ++k)
    {
      v11 = *(*(a1 + 72) + 8 * k);
      if (v11)
      {
        (*(*v11 + 8))(v11);
        v9 = *(a1 + 84);
      }
    }
  }

  if (*(a1 + 72))
  {
    operator delete[]();
  }

  v12 = *(a1 + 60);
  if (v12 >= 1)
  {
    for (m = 0; m < v12; ++m)
    {
      v14 = *(*(a1 + 48) + 8 * m);
      if (v14)
      {
        (*(*v14 + 8))(v14);
        v12 = *(a1 + 60);
      }
    }
  }

  if (*(a1 + 48))
  {
    operator delete[]();
  }

  v15 = *(a1 + 36);
  if (v15 >= 1)
  {
    for (n = 0; n < v15; ++n)
    {
      v17 = *(*(a1 + 24) + 8 * n);
      if (v17)
      {
        (*(*v17 + 8))(v17);
        v15 = *(a1 + 36);
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

void sub_1000750FC(uint64_t a1)
{
  sub_100074E44(a1);

  operator delete();
}

uint64_t sub_1000751F0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
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
          if (TagFallback >> 3 > 3)
          {
            break;
          }

          if (v8 != 1)
          {
            if (v8 == 2)
            {
              if (v9 == 2)
              {
                v24 = *(a1 + 36);
                v25 = *(a1 + 32);
                if (v25 >= v24)
                {
                  goto LABEL_44;
                }

                goto LABEL_30;
              }
            }

            else if (v8 == 3 && v9 == 2)
            {
              v10 = *(a1 + 60);
              v11 = *(a1 + 56);
              if (v11 >= v10)
              {
                goto LABEL_60;
              }

              goto LABEL_12;
            }

            goto LABEL_32;
          }

          if (v9 != 2)
          {
            goto LABEL_32;
          }

          *(a1 + 148) |= 1u;
          v18 = *(a1 + 16);
          if (!v18)
          {
            operator new();
          }

          v87 = 0;
          v19 = *(this + 1);
          if (v19 >= *(this + 2) || *v19 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v87))
            {
              return 0;
            }
          }

          else
          {
            v87 = *v19;
            *(this + 1) = v19 + 1;
          }

          v28 = *(this + 14);
          v29 = *(this + 15);
          *(this + 14) = v28 + 1;
          if (v28 >= v29)
          {
            return 0;
          }

          v30 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v87);
          if (!sub_1000716AC(v18, this, v31, v32) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v30);
          v33 = *(this + 14);
          v34 = __OFSUB__(v33, 1);
          v35 = v33 - 1;
          if (v35 < 0 == v34)
          {
            *(this + 14) = v35;
          }

          v36 = *(this + 1);
          if (v36 < *(this + 2) && *v36 == 18)
          {
            while (1)
            {
              *(this + 1) = v36 + 1;
              v24 = *(a1 + 36);
              v25 = *(a1 + 32);
              if (v25 >= v24)
              {
LABEL_44:
                if (v24 == *(a1 + 40))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v24 + 1);
                  v24 = *(a1 + 36);
                }

                *(a1 + 36) = v24 + 1;
                operator new();
              }

LABEL_30:
              v26 = *(a1 + 24);
              *(a1 + 32) = v25 + 1;
              v27 = *(v26 + 8 * v25);
              v87 = 0;
              v37 = *(this + 1);
              if (v37 >= *(this + 2) || *v37 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v87))
                {
                  return 0;
                }
              }

              else
              {
                v87 = *v37;
                *(this + 1) = v37 + 1;
              }

              v38 = *(this + 14);
              v39 = *(this + 15);
              *(this + 14) = v38 + 1;
              if (v38 >= v39)
              {
                return 0;
              }

              v40 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v87);
              if (!sub_100074834(v27, this, v41, v42) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v40);
              v43 = *(this + 14);
              v34 = __OFSUB__(v43, 1);
              v44 = v43 - 1;
              if (v44 < 0 == v34)
              {
                *(this + 14) = v44;
              }

              v36 = *(this + 1);
              if (v36 >= *(this + 2))
              {
                break;
              }

              v45 = *v36;
              if (v45 != 18)
              {
                if (v45 == 26)
                {
                  while (1)
                  {
                    *(this + 1) = v36 + 1;
                    v10 = *(a1 + 60);
                    v11 = *(a1 + 56);
                    if (v11 >= v10)
                    {
LABEL_60:
                      if (v10 == *(a1 + 64))
                      {
                        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v10 + 1);
                        v10 = *(a1 + 60);
                      }

                      *(a1 + 60) = v10 + 1;
                      operator new();
                    }

LABEL_12:
                    v12 = *(a1 + 48);
                    *(a1 + 56) = v11 + 1;
                    v13 = *(v12 + 8 * v11);
                    v87 = 0;
                    v46 = *(this + 1);
                    if (v46 >= *(this + 2) || *v46 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v87))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v87 = *v46;
                      *(this + 1) = v46 + 1;
                    }

                    v47 = *(this + 14);
                    v48 = *(this + 15);
                    *(this + 14) = v47 + 1;
                    if (v47 >= v48)
                    {
                      return 0;
                    }

                    v49 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v87);
                    if (!sub_100074834(v13, this, v50, v51) || *(this + 36) != 1)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v49);
                    v52 = *(this + 14);
                    v34 = __OFSUB__(v52, 1);
                    v53 = v52 - 1;
                    if (v53 < 0 == v34)
                    {
                      *(this + 14) = v53;
                    }

                    v36 = *(this + 1);
                    if (v36 >= *(this + 2))
                    {
                      break;
                    }

                    v54 = *v36;
                    if (v54 != 26)
                    {
                      if (v54 != 34)
                      {
                        goto LABEL_1;
                      }

                      goto LABEL_75;
                    }
                  }
                }

                goto LABEL_1;
              }
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

        v20 = *(a1 + 84);
        v21 = *(a1 + 80);
        if (v21 >= v20)
        {
          goto LABEL_76;
        }

        while (1)
        {
          v22 = *(a1 + 72);
          *(a1 + 80) = v21 + 1;
          v23 = *(v22 + 8 * v21);
          v87 = 0;
          v55 = *(this + 1);
          if (v55 >= *(this + 2) || *v55 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v87))
            {
              return 0;
            }
          }

          else
          {
            v87 = *v55;
            *(this + 1) = v55 + 1;
          }

          v56 = *(this + 14);
          v57 = *(this + 15);
          *(this + 14) = v56 + 1;
          if (v56 >= v57)
          {
            return 0;
          }

          v58 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v87);
          if (!sub_100074834(v23, this, v59, v60) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v58);
          v61 = *(this + 14);
          v34 = __OFSUB__(v61, 1);
          v62 = v61 - 1;
          if (v62 < 0 == v34)
          {
            *(this + 14) = v62;
          }

          v36 = *(this + 1);
          if (v36 >= *(this + 2))
          {
            break;
          }

          v63 = *v36;
          if (v63 != 34)
          {
            if (v63 != 42)
            {
              goto LABEL_1;
            }

            goto LABEL_91;
          }

LABEL_75:
          *(this + 1) = v36 + 1;
          v20 = *(a1 + 84);
          v21 = *(a1 + 80);
          if (v21 >= v20)
          {
LABEL_76:
            if (v20 == *(a1 + 88))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72), v20 + 1);
              v20 = *(a1 + 84);
            }

            *(a1 + 84) = v20 + 1;
            operator new();
          }
        }
      }

      if (v8 != 5)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_32;
      }

      while (1)
      {
        v64 = *(a1 + 108);
        v65 = *(a1 + 104);
        if (v65 >= v64)
        {
          if (v64 == *(a1 + 112))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96), v64 + 1);
            v64 = *(a1 + 108);
          }

          *(a1 + 108) = v64 + 1;
          operator new();
        }

        v66 = *(a1 + 96);
        *(a1 + 104) = v65 + 1;
        v67 = *(v66 + 8 * v65);
        v87 = 0;
        v68 = *(this + 1);
        if (v68 >= *(this + 2) || *v68 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v87))
          {
            return 0;
          }
        }

        else
        {
          v87 = *v68;
          *(this + 1) = v68 + 1;
        }

        v69 = *(this + 14);
        v70 = *(this + 15);
        *(this + 14) = v69 + 1;
        if (v69 >= v70)
        {
          return 0;
        }

        v71 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v87);
        if (!sub_100074834(v67, this, v72, v73) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v71);
        v74 = *(this + 14);
        v34 = __OFSUB__(v74, 1);
        v75 = v74 - 1;
        if (v75 < 0 == v34)
        {
          *(this + 14) = v75;
        }

        v36 = *(this + 1);
        if (v36 >= *(this + 2))
        {
          break;
        }

        v76 = *v36;
        if (v76 != 42)
        {
          if (v76 == 50)
          {
            do
            {
              *(this + 1) = v36 + 1;
              v14 = *(a1 + 132);
              v15 = *(a1 + 128);
              if (v15 >= v14)
              {
LABEL_110:
                if (v14 == *(a1 + 136))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120), v14 + 1);
                  v14 = *(a1 + 132);
                }

                *(a1 + 132) = v14 + 1;
                operator new();
              }

LABEL_18:
              v16 = *(a1 + 120);
              *(a1 + 128) = v15 + 1;
              v17 = *(v16 + 8 * v15);
              v87 = 0;
              v77 = *(this + 1);
              if (v77 >= *(this + 2) || *v77 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v87))
                {
                  return 0;
                }
              }

              else
              {
                v87 = *v77;
                *(this + 1) = v77 + 1;
              }

              v78 = *(this + 14);
              v79 = *(this + 15);
              *(this + 14) = v78 + 1;
              if (v78 >= v79)
              {
                return 0;
              }

              v80 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v87);
              if (!sub_100074834(v17, this, v81, v82) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v80);
              v83 = *(this + 14);
              v34 = __OFSUB__(v83, 1);
              v84 = v83 - 1;
              if (v84 < 0 == v34)
              {
                *(this + 14) = v84;
              }

              v36 = *(this + 1);
              v85 = *(this + 2);
            }

            while (v36 < v85 && *v36 == 50);
            if (v36 == v85 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }

          goto LABEL_1;
        }

LABEL_91:
        *(this + 1) = v36 + 1;
      }
    }

    if (v8 == 6 && v9 == 2)
    {
      v14 = *(a1 + 132);
      v15 = *(a1 + 128);
      if (v15 >= v14)
      {
        goto LABEL_110;
      }

      goto LABEL_18;
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

uint64_t sub_100075B84(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 148))
  {
    v6 = *(result + 16);
    if (!v6)
    {
      v6 = *(qword_10045DBF8 + 16);
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

  if (*(v5 + 56) >= 1)
  {
    v8 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(*(v5 + 48) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 56));
  }

  if (*(v5 + 80) >= 1)
  {
    v9 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, *(*(v5 + 72) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 80));
  }

  if (*(v5 + 104) >= 1)
  {
    v10 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, *(*(v5 + 96) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 104));
  }

  if (*(v5 + 128) >= 1)
  {
    v11 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, *(*(v5 + 120) + 8 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 128));
  }

  v14 = *(v5 + 8);
  v13 = (v5 + 8);
  v12 = v14;
  if (v14 && *v12 != v12[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v13, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100075D18(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 148))
  {
    v5 = *(this + 2);
    if (v5)
    {
      *a2 = 10;
      v6 = a2 + 1;
      v7 = *(v5 + 40);
      if (v7 <= 0x7F)
      {
LABEL_4:
        *(v3 + 1) = v7;
        v8 = v3 + 2;
LABEL_7:
        v3 = sub_100071938(v5, v8, a3);
        goto LABEL_8;
      }
    }

    else
    {
      v5 = *(qword_10045DBF8 + 16);
      *a2 = 10;
      v6 = a2 + 1;
      v7 = *(v5 + 40);
      if (v7 <= 0x7F)
      {
        goto LABEL_4;
      }
    }

    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, v6, a3);
    goto LABEL_7;
  }

LABEL_8:
  if (*(this + 8) >= 1)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(*(this + 3) + 8 * v9);
      *v3 = 18;
      v11 = v10[7];
      if (v11 <= 0x7F)
      {
        break;
      }

      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v3 + 1, a3);
      v12 = v10[8];
      if (v12)
      {
        goto LABEL_13;
      }

LABEL_14:
      if ((v12 & 2) != 0)
      {
        v17 = v10[5];
        *v3 = 21;
        *(v3 + 1) = v17;
        v3 = (v3 + 5);
        if ((v10[8] & 4) == 0)
        {
LABEL_16:
          v16 = *(v10 + 1);
          v15 = (v10 + 2);
          v14 = v16;
          if (v16)
          {
            goto LABEL_22;
          }

          goto LABEL_10;
        }
      }

      else if ((v12 & 4) == 0)
      {
        goto LABEL_16;
      }

      v18 = v10[6];
      *v3 = 29;
      *(v3 + 1) = v18;
      v3 = (v3 + 5);
      v19 = *(v10 + 1);
      v15 = (v10 + 2);
      v14 = v19;
      if (v19)
      {
LABEL_22:
        if (*v14 != v14[1])
        {
          v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v15, v3, a3);
        }
      }

LABEL_10:
      if (++v9 >= *(this + 8))
      {
        goto LABEL_24;
      }
    }

    *(v3 + 1) = v11;
    v3 = (v3 + 2);
    v12 = v10[8];
    if ((v12 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    v13 = v10[4];
    *v3 = 13;
    *(v3 + 1) = v13;
    v3 = (v3 + 5);
    v12 = v10[8];
    goto LABEL_14;
  }

LABEL_24:
  if (*(this + 14) >= 1)
  {
    v20 = 0;
    while (1)
    {
      v21 = *(*(this + 6) + 8 * v20);
      *v3 = 26;
      v22 = v21[7];
      if (v22 <= 0x7F)
      {
        break;
      }

      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, v3 + 1, a3);
      v23 = v21[8];
      if (v23)
      {
        goto LABEL_29;
      }

LABEL_30:
      if ((v23 & 2) != 0)
      {
        v28 = v21[5];
        *v3 = 21;
        *(v3 + 1) = v28;
        v3 = (v3 + 5);
        if ((v21[8] & 4) == 0)
        {
LABEL_32:
          v27 = *(v21 + 1);
          v26 = (v21 + 2);
          v25 = v27;
          if (v27)
          {
            goto LABEL_38;
          }

          goto LABEL_26;
        }
      }

      else if ((v23 & 4) == 0)
      {
        goto LABEL_32;
      }

      v29 = v21[6];
      *v3 = 29;
      *(v3 + 1) = v29;
      v3 = (v3 + 5);
      v30 = *(v21 + 1);
      v26 = (v21 + 2);
      v25 = v30;
      if (v30)
      {
LABEL_38:
        if (*v25 != v25[1])
        {
          v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v26, v3, a3);
        }
      }

LABEL_26:
      if (++v20 >= *(this + 14))
      {
        goto LABEL_40;
      }
    }

    *(v3 + 1) = v22;
    v3 = (v3 + 2);
    v23 = v21[8];
    if ((v23 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_29:
    v24 = v21[4];
    *v3 = 13;
    *(v3 + 1) = v24;
    v3 = (v3 + 5);
    v23 = v21[8];
    goto LABEL_30;
  }

LABEL_40:
  if (*(this + 20) >= 1)
  {
    v31 = 0;
    while (1)
    {
      v32 = *(*(this + 9) + 8 * v31);
      *v3 = 34;
      v33 = v32[7];
      if (v33 <= 0x7F)
      {
        break;
      }

      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v33, v3 + 1, a3);
      v34 = v32[8];
      if (v34)
      {
        goto LABEL_45;
      }

LABEL_46:
      if ((v34 & 2) != 0)
      {
        v39 = v32[5];
        *v3 = 21;
        *(v3 + 1) = v39;
        v3 = (v3 + 5);
        if ((v32[8] & 4) == 0)
        {
LABEL_48:
          v38 = *(v32 + 1);
          v37 = (v32 + 2);
          v36 = v38;
          if (v38)
          {
            goto LABEL_54;
          }

          goto LABEL_42;
        }
      }

      else if ((v34 & 4) == 0)
      {
        goto LABEL_48;
      }

      v40 = v32[6];
      *v3 = 29;
      *(v3 + 1) = v40;
      v3 = (v3 + 5);
      v41 = *(v32 + 1);
      v37 = (v32 + 2);
      v36 = v41;
      if (v41)
      {
LABEL_54:
        if (*v36 != v36[1])
        {
          v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v37, v3, a3);
        }
      }

LABEL_42:
      if (++v31 >= *(this + 20))
      {
        goto LABEL_56;
      }
    }

    *(v3 + 1) = v33;
    v3 = (v3 + 2);
    v34 = v32[8];
    if ((v34 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_45:
    v35 = v32[4];
    *v3 = 13;
    *(v3 + 1) = v35;
    v3 = (v3 + 5);
    v34 = v32[8];
    goto LABEL_46;
  }

LABEL_56:
  if (*(this + 26) >= 1)
  {
    v42 = 0;
    while (1)
    {
      v43 = *(*(this + 12) + 8 * v42);
      *v3 = 42;
      v44 = v43[7];
      if (v44 <= 0x7F)
      {
        break;
      }

      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v44, v3 + 1, a3);
      v45 = v43[8];
      if (v45)
      {
        goto LABEL_61;
      }

LABEL_62:
      if ((v45 & 2) != 0)
      {
        v50 = v43[5];
        *v3 = 21;
        *(v3 + 1) = v50;
        v3 = (v3 + 5);
        if ((v43[8] & 4) == 0)
        {
LABEL_64:
          v49 = *(v43 + 1);
          v48 = (v43 + 2);
          v47 = v49;
          if (v49)
          {
            goto LABEL_70;
          }

          goto LABEL_58;
        }
      }

      else if ((v45 & 4) == 0)
      {
        goto LABEL_64;
      }

      v51 = v43[6];
      *v3 = 29;
      *(v3 + 1) = v51;
      v3 = (v3 + 5);
      v52 = *(v43 + 1);
      v48 = (v43 + 2);
      v47 = v52;
      if (v52)
      {
LABEL_70:
        if (*v47 != v47[1])
        {
          v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v48, v3, a3);
        }
      }

LABEL_58:
      if (++v42 >= *(this + 26))
      {
        goto LABEL_72;
      }
    }

    *(v3 + 1) = v44;
    v3 = (v3 + 2);
    v45 = v43[8];
    if ((v45 & 1) == 0)
    {
      goto LABEL_62;
    }

LABEL_61:
    v46 = v43[4];
    *v3 = 13;
    *(v3 + 1) = v46;
    v3 = (v3 + 5);
    v45 = v43[8];
    goto LABEL_62;
  }

LABEL_72:
  if (*(this + 32) >= 1)
  {
    v53 = 0;
    while (1)
    {
      v54 = *(*(this + 15) + 8 * v53);
      *v3 = 50;
      v55 = v54[7];
      if (v55 <= 0x7F)
      {
        break;
      }

      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v55, v3 + 1, a3);
      v56 = v54[8];
      if (v56)
      {
        goto LABEL_77;
      }

LABEL_78:
      if ((v56 & 2) != 0)
      {
        v61 = v54[5];
        *v3 = 21;
        *(v3 + 1) = v61;
        v3 = (v3 + 5);
        if ((v54[8] & 4) == 0)
        {
LABEL_80:
          v60 = *(v54 + 1);
          v59 = (v54 + 2);
          v58 = v60;
          if (v60)
          {
            goto LABEL_86;
          }

          goto LABEL_74;
        }
      }

      else if ((v56 & 4) == 0)
      {
        goto LABEL_80;
      }

      v62 = v54[6];
      *v3 = 29;
      *(v3 + 1) = v62;
      v3 = (v3 + 5);
      v63 = *(v54 + 1);
      v59 = (v54 + 2);
      v58 = v63;
      if (v63)
      {
LABEL_86:
        if (*v58 != v58[1])
        {
          v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v59, v3, a3);
        }
      }

LABEL_74:
      if (++v53 >= *(this + 32))
      {
        goto LABEL_88;
      }
    }

    *(v3 + 1) = v55;
    v3 = (v3 + 2);
    v56 = v54[8];
    if ((v56 & 1) == 0)
    {
      goto LABEL_78;
    }

LABEL_77:
    v57 = v54[4];
    *v3 = 13;
    *(v3 + 1) = v57;
    v3 = (v3 + 5);
    v56 = v54[8];
    goto LABEL_78;
  }

LABEL_88:
  v66 = *(this + 1);
  v65 = (this + 8);
  v64 = v66;
  if (!v66 || *v64 == v64[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v65, v3, a3);
}

uint64_t sub_10007640C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if ((*(a1 + 148) & 1) == 0)
  {
    v3 = *(a1 + 32);
    if (v3 < 1)
    {
      goto LABEL_37;
    }

    goto LABEL_22;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(v4 + 44);
    if (*(v4 + 44))
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = *(qword_10045DBF8 + 16);
    v5 = *(v4 + 44);
    if (*(v4 + 44))
    {
LABEL_6:
      v6 = (v5 << 31 >> 31) & 9;
      if ((v5 & 2) != 0)
      {
        v6 += 9;
      }

      if ((v5 & 4) != 0)
      {
        v7 = v6 + 9;
      }

      else
      {
        v7 = v6;
      }

      v8 = (v4 + 8);
      v9 = *(v4 + 8);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }
  }

  v7 = 0;
  v8 = (v4 + 8);
  v9 = *(v4 + 8);
  if (!v9)
  {
    goto LABEL_19;
  }

LABEL_15:
  if (*v9 != v9[1])
  {
    v10 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v8, a2) + v7);
    *(v4 + 40) = v10;
    if (v10 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
      v14 = *(a1 + 32);
      v3 = v14 + v10 + v13 + 1;
      if (v14 < 1)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v11 = *(a1 + 32);
      v3 = v11 + v10 + 2;
      if (v11 < 1)
      {
        goto LABEL_37;
      }
    }

LABEL_22:
    v15 = 0;
    while (1)
    {
      v16 = *(*(a1 + 24) + 8 * v15);
      v17 = *(v16 + 32);
      if (*(v16 + 32))
      {
        v18 = (v17 << 31 >> 31) & 5;
        if ((v17 & 2) != 0)
        {
          v18 += 5;
        }

        if ((v17 & 4) != 0)
        {
          LODWORD(v19) = v18 + 5;
        }

        else
        {
          LODWORD(v19) = v18;
        }

        v20 = (v16 + 8);
        v21 = *(v16 + 8);
        if (!v21)
        {
          goto LABEL_23;
        }

LABEL_34:
        if (*v21 == v21[1])
        {
          goto LABEL_23;
        }

        v19 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v20, a2) + v19);
        *(v16 + 28) = v19;
        if (v19 < 0x80)
        {
          goto LABEL_24;
        }

        v3 += v19 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
        if (++v15 >= *(a1 + 32))
        {
          goto LABEL_37;
        }
      }

      else
      {
        LODWORD(v19) = 0;
        v20 = (v16 + 8);
        v21 = *(v16 + 8);
        if (v21)
        {
          goto LABEL_34;
        }

LABEL_23:
        *(v16 + 28) = v19;
LABEL_24:
        v3 += v19 + 1;
        if (++v15 >= *(a1 + 32))
        {
          goto LABEL_37;
        }
      }
    }
  }

LABEL_19:
  *(v4 + 40) = v7;
  v12 = *(a1 + 32);
  v3 = v12 + v7 + 2;
  if (v12 >= 1)
  {
    goto LABEL_22;
  }

LABEL_37:
  v22 = *(a1 + 56);
  v23 = v22 + v3;
  if (v22 >= 1)
  {
    v24 = 0;
    while (1)
    {
      v25 = *(*(a1 + 48) + 8 * v24);
      v26 = *(v25 + 32);
      if (*(v25 + 32))
      {
        v27 = (v26 << 31 >> 31) & 5;
        if ((v26 & 2) != 0)
        {
          v27 += 5;
        }

        if ((v26 & 4) != 0)
        {
          LODWORD(v28) = v27 + 5;
        }

        else
        {
          LODWORD(v28) = v27;
        }

        v29 = (v25 + 8);
        v30 = *(v25 + 8);
        if (!v30)
        {
          goto LABEL_39;
        }

LABEL_50:
        if (*v30 == v30[1])
        {
          goto LABEL_39;
        }

        v28 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v29, a2) + v28);
        *(v25 + 28) = v28;
        if (v28 < 0x80)
        {
          goto LABEL_40;
        }

        v23 += v28 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2);
        if (++v24 >= *(a1 + 56))
        {
          break;
        }
      }

      else
      {
        LODWORD(v28) = 0;
        v29 = (v25 + 8);
        v30 = *(v25 + 8);
        if (v30)
        {
          goto LABEL_50;
        }

LABEL_39:
        *(v25 + 28) = v28;
LABEL_40:
        v23 += v28 + 1;
        if (++v24 >= *(a1 + 56))
        {
          break;
        }
      }
    }
  }

  v31 = *(a1 + 80);
  v32 = v31 + v23;
  if (v31 >= 1)
  {
    v33 = 0;
    while (1)
    {
      v34 = *(*(a1 + 72) + 8 * v33);
      v35 = *(v34 + 32);
      if (*(v34 + 32))
      {
        v36 = (v35 << 31 >> 31) & 5;
        if ((v35 & 2) != 0)
        {
          v36 += 5;
        }

        if ((v35 & 4) != 0)
        {
          LODWORD(v37) = v36 + 5;
        }

        else
        {
          LODWORD(v37) = v36;
        }

        v38 = (v34 + 8);
        v39 = *(v34 + 8);
        if (!v39)
        {
          goto LABEL_55;
        }

LABEL_66:
        if (*v39 == v39[1])
        {
          goto LABEL_55;
        }

        v37 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v38, a2) + v37);
        *(v34 + 28) = v37;
        if (v37 < 0x80)
        {
          goto LABEL_56;
        }

        v32 += v37 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37, a2);
        if (++v33 >= *(a1 + 80))
        {
          break;
        }
      }

      else
      {
        LODWORD(v37) = 0;
        v38 = (v34 + 8);
        v39 = *(v34 + 8);
        if (v39)
        {
          goto LABEL_66;
        }

LABEL_55:
        *(v34 + 28) = v37;
LABEL_56:
        v32 += v37 + 1;
        if (++v33 >= *(a1 + 80))
        {
          break;
        }
      }
    }
  }

  v40 = *(a1 + 104);
  v41 = v40 + v32;
  if (v40 >= 1)
  {
    v42 = 0;
    while (1)
    {
      v43 = *(*(a1 + 96) + 8 * v42);
      v44 = *(v43 + 32);
      if (*(v43 + 32))
      {
        v45 = (v44 << 31 >> 31) & 5;
        if ((v44 & 2) != 0)
        {
          v45 += 5;
        }

        if ((v44 & 4) != 0)
        {
          LODWORD(v46) = v45 + 5;
        }

        else
        {
          LODWORD(v46) = v45;
        }

        v47 = (v43 + 8);
        v48 = *(v43 + 8);
        if (!v48)
        {
          goto LABEL_71;
        }

LABEL_82:
        if (*v48 == v48[1])
        {
          goto LABEL_71;
        }

        v46 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v47, a2) + v46);
        *(v43 + 28) = v46;
        if (v46 < 0x80)
        {
          goto LABEL_72;
        }

        v41 += v46 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46, a2);
        if (++v42 >= *(a1 + 104))
        {
          break;
        }
      }

      else
      {
        LODWORD(v46) = 0;
        v47 = (v43 + 8);
        v48 = *(v43 + 8);
        if (v48)
        {
          goto LABEL_82;
        }

LABEL_71:
        *(v43 + 28) = v46;
LABEL_72:
        v41 += v46 + 1;
        if (++v42 >= *(a1 + 104))
        {
          break;
        }
      }
    }
  }

  v49 = *(a1 + 128);
  v50 = (v49 + v41);
  if (v49 >= 1)
  {
    v51 = 0;
    while (1)
    {
      v52 = *(*(a1 + 120) + 8 * v51);
      v53 = *(v52 + 32);
      if (*(v52 + 32))
      {
        v54 = (v53 << 31 >> 31) & 5;
        if ((v53 & 2) != 0)
        {
          v54 += 5;
        }

        if ((v53 & 4) != 0)
        {
          LODWORD(v55) = v54 + 5;
        }

        else
        {
          LODWORD(v55) = v54;
        }

        v56 = (v52 + 8);
        v57 = *(v52 + 8);
        if (!v57)
        {
          goto LABEL_87;
        }

LABEL_98:
        if (*v57 == v57[1])
        {
          goto LABEL_87;
        }

        v55 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v56, a2) + v55);
        *(v52 + 28) = v55;
        if (v55 < 0x80)
        {
          goto LABEL_88;
        }

        v50 = v55 + v50 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55, a2);
        if (++v51 >= *(a1 + 128))
        {
          break;
        }
      }

      else
      {
        LODWORD(v55) = 0;
        v56 = (v52 + 8);
        v57 = *(v52 + 8);
        if (v57)
        {
          goto LABEL_98;
        }

LABEL_87:
        *(v52 + 28) = v55;
LABEL_88:
        v50 = (v55 + v50 + 1);
        if (++v51 >= *(a1 + 128))
        {
          break;
        }
      }
    }
  }

  v58 = *(a1 + 8);
  if (v58 && *v58 != v58[1])
  {
    v50 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v50;
  }

  *(a1 + 144) = v50;
  return v50;
}

uint64_t sub_10007695C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100070850(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100076A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100076A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100076A64(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v7 = *(*a2 + 8 * v5);
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
        operator new();
      }

      v6 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_1000745B0(*(v6 + 8 * v9), v7);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }

  return result;
}

uint64_t sub_100076BB4(uint64_t result, uint64_t a2)
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

uint64_t sub_100076C48()
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

  return qword_10045C8A0;
}

void sub_100076CD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_100076CEC(void *a1)
{
  *a1 = off_100435FF8;
  if (qword_10045DC08 != a1)
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

void sub_100076D80(void *a1)
{
  *a1 = off_100435FF8;
  if (qword_10045DC08 != a1)
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

uint64_t sub_100076EC0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 <= 7)
          {
            if (v8 == 6)
            {
              if ((TagFallback & 7) == 0)
              {
                v17 = *(this + 1);
                v10 = *(this + 2);
                v50 = 0;
                if (v17 >= v10)
                {
                  goto LABEL_91;
                }

                goto LABEL_89;
              }
            }

            else if (v8 == 7 && (TagFallback & 7) == 0)
            {
              v14 = *(this + 1);
              v10 = *(this + 2);
              v50 = 0;
              if (v14 >= v10)
              {
                goto LABEL_98;
              }

              goto LABEL_96;
            }
          }

          else if (v8 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_103;
            }
          }

          else if (v8 == 9)
          {
            if ((TagFallback & 7) == 0)
            {
              v21 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_111;
            }
          }

          else if (v8 == 10 && (TagFallback & 7) == 0)
          {
            v12 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_119;
          }

          goto LABEL_48;
        }

        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v8 == 3)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_48;
          }

          v18 = *(this + 1);
          v10 = *(this + 2);
          v50 = 0;
          if (v18 >= v10)
          {
LABEL_70:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
            if (!result)
            {
              return result;
            }

            v34 = v50;
            v35 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_72;
          }

LABEL_68:
          v34 = *v18;
          if ((v34 & 0x80000000) != 0)
          {
            goto LABEL_70;
          }

          v35 = v18 + 1;
          *(this + 1) = v35;
LABEL_72:
          *(a1 + 25) = v34 != 0;
          *(a1 + 40) |= 4u;
          if (v35 < v10 && *v35 == 32)
          {
            v20 = v35 + 1;
            *(this + 1) = v20;
            v50 = 0;
            if (v20 >= v10)
            {
              goto LABEL_77;
            }

            goto LABEL_75;
          }
        }

        else if (v8 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_48;
          }

          v20 = *(this + 1);
          v10 = *(this + 2);
          v50 = 0;
          if (v20 >= v10)
          {
LABEL_77:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
            if (!result)
            {
              return result;
            }

            v36 = v50;
            v37 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_79;
          }

LABEL_75:
          v36 = *v20;
          if ((v36 & 0x80000000) != 0)
          {
            goto LABEL_77;
          }

          v37 = v20 + 1;
          *(this + 1) = v37;
LABEL_79:
          *(a1 + 26) = v36 != 0;
          *(a1 + 40) |= 8u;
          if (v37 < v10 && *v37 == 40)
          {
            v11 = v37 + 1;
            *(this + 1) = v11;
            v50 = 0;
            if (v11 >= v10)
            {
              goto LABEL_84;
            }

LABEL_82:
            v38 = *v11;
            if ((v38 & 0x80000000) != 0)
            {
LABEL_84:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
              if (!result)
              {
                return result;
              }

              v38 = v50;
              v39 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_86;
            }

            v39 = v11 + 1;
            *(this + 1) = v39;
LABEL_86:
            *(a1 + 27) = v38 != 0;
            *(a1 + 40) |= 0x10u;
            if (v39 < v10 && *v39 == 48)
            {
              v17 = v39 + 1;
              *(this + 1) = v17;
              v50 = 0;
              if (v17 >= v10)
              {
                goto LABEL_91;
              }

LABEL_89:
              v40 = *v17;
              if ((v40 & 0x80000000) != 0)
              {
LABEL_91:
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
                if (!result)
                {
                  return result;
                }

                v40 = v50;
                v41 = *(this + 1);
                v10 = *(this + 2);
                goto LABEL_93;
              }

              v41 = v17 + 1;
              *(this + 1) = v41;
LABEL_93:
              *(a1 + 28) = v40 != 0;
              *(a1 + 40) |= 0x20u;
              if (v41 < v10 && *v41 == 56)
              {
                v14 = v41 + 1;
                *(this + 1) = v14;
                v50 = 0;
                if (v14 >= v10)
                {
                  goto LABEL_98;
                }

LABEL_96:
                v42 = *v14;
                if ((v42 & 0x80000000) != 0)
                {
LABEL_98:
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
                  if (!result)
                  {
                    return result;
                  }

                  v42 = v50;
                  v43 = *(this + 1);
                  v10 = *(this + 2);
                  goto LABEL_100;
                }

                v43 = v14 + 1;
                *(this + 1) = v43;
LABEL_100:
                *(a1 + 29) = v42 != 0;
                *(a1 + 40) |= 0x40u;
                if (v43 < v10 && *v43 == 64)
                {
                  v19 = v43 + 1;
                  *(this + 1) = v19;
LABEL_103:
                  v50 = 0;
                  if (v19 >= v10 || (v44 = *v19, (v44 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
                    if (!result)
                    {
                      return result;
                    }

                    v44 = v50;
                    v45 = *(this + 1);
                    v10 = *(this + 2);
                  }

                  else
                  {
                    v45 = v19 + 1;
                    *(this + 1) = v45;
                  }

                  *(a1 + 30) = v44 != 0;
                  *(a1 + 40) |= 0x80u;
                  if (v45 < v10 && *v45 == 72)
                  {
                    v21 = v45 + 1;
                    *(this + 1) = v21;
LABEL_111:
                    v50 = 0;
                    if (v21 >= v10 || (v46 = *v21, (v46 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
                      if (!result)
                      {
                        return result;
                      }

                      v46 = v50;
                      v47 = *(this + 1);
                      v10 = *(this + 2);
                    }

                    else
                    {
                      v47 = v21 + 1;
                      *(this + 1) = v47;
                    }

                    *(a1 + 31) = v46 != 0;
                    *(a1 + 40) |= 0x100u;
                    if (v47 < v10 && *v47 == 80)
                    {
                      v12 = v47 + 1;
                      *(this + 1) = v12;
LABEL_119:
                      v50 = 0;
                      if (v12 >= v10 || (v48 = *v12, (v48 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
                        if (!result)
                        {
                          return result;
                        }

                        v48 = v50;
                        v49 = *(this + 1);
                        v10 = *(this + 2);
                      }

                      else
                      {
                        v49 = v12 + 1;
                        *(this + 1) = v49;
                      }

                      *(a1 + 32) = v48 != 0;
                      *(a1 + 40) |= 0x200u;
                      if (v49 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

        else
        {
          if (v8 == 5 && (TagFallback & 7) == 0)
          {
            v11 = *(this + 1);
            v10 = *(this + 2);
            v50 = 0;
            if (v11 >= v10)
            {
              goto LABEL_84;
            }

            goto LABEL_82;
          }

LABEL_48:
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

      if (v8 != 2 || (TagFallback & 7) != 0)
      {
        goto LABEL_48;
      }

      v13 = *(this + 1);
      v10 = *(this + 2);
      v50 = 0;
      if (v13 >= v10)
      {
LABEL_63:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
        if (!result)
        {
          return result;
        }

        v31 = v50;
        v32 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_65;
      }

LABEL_61:
      v31 = *v13;
      if ((v31 & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      v32 = v13 + 1;
      *(this + 1) = v32;
LABEL_65:
      *(a1 + 24) = v31 != 0;
      *(a1 + 40) |= 2u;
      if (v32 < v10 && *v32 == 24)
      {
        v18 = v32 + 1;
        *(this + 1) = v18;
        v50 = 0;
        if (v18 >= v10)
        {
          goto LABEL_70;
        }

        goto LABEL_68;
      }
    }

    if (v9 != 2)
    {
      goto LABEL_48;
    }

    *(a1 + 40) |= 1u;
    v15 = *(a1 + 16);
    if (!v15)
    {
      operator new();
    }

    v50 = 0;
    v16 = *(this + 1);
    if (v16 >= *(this + 2) || *v16 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50))
      {
        return 0;
      }
    }

    else
    {
      v50 = *v16;
      *(this + 1) = v16 + 1;
    }

    v22 = *(this + 14);
    v23 = *(this + 15);
    *(this + 14) = v22 + 1;
    if (v22 >= v23)
    {
      return 0;
    }

    v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v50);
    if (!sub_1000716AC(v15, this, v25, v26) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v24);
    v27 = *(this + 14);
    v28 = __OFSUB__(v27, 1);
    v29 = v27 - 1;
    if (v29 < 0 == v28)
    {
      *(this + 14) = v29;
    }

    v30 = *(this + 1);
    v10 = *(this + 2);
    if (v30 < v10 && *v30 == 16)
    {
      v13 = v30 + 1;
      *(this + 1) = v13;
      v50 = 0;
      if (v13 >= v10)
      {
        goto LABEL_63;
      }

      goto LABEL_61;
    }
  }
}

uint64_t sub_1000775C4(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
        goto LABEL_17;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DC08 + 16), a2, a4);
      v6 = *(v5 + 40);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 40);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 25), a2, a4);
  v6 = *(v5 + 40);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 26), a2, a4);
  v6 = *(v5 + 40);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 27), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 28), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 29), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 30), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 31), a2, a4);
  if ((*(v5 + 40) & 0x200) == 0)
  {
LABEL_11:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, *(v5 + 32), a2, a4);
  v11 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v11;
  if (!v11)
  {
    return result;
  }

LABEL_26:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

uint64_t sub_100077768(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      v7 = *(qword_10045DC08 + 16);
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
      *(a2 + 1) = v9;
      v10 = a2 + 2;
    }

    a2 = sub_100071938(v7, v10, a3);
    a1 = v8;
    v3 = *(v8 + 40);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(a1 + 24);
  *a2 = 16;
  *(a2 + 1) = v11;
  a2 = (a2 + 2);
  v3 = *(a1 + 40);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = *(a1 + 25);
  *a2 = 24;
  *(a2 + 1) = v12;
  a2 = (a2 + 2);
  v3 = *(a1 + 40);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = *(a1 + 26);
  *a2 = 32;
  *(a2 + 1) = v13;
  a2 = (a2 + 2);
  v3 = *(a1 + 40);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v14 = *(a1 + 27);
  *a2 = 40;
  *(a2 + 1) = v14;
  a2 = (a2 + 2);
  v3 = *(a1 + 40);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v15 = *(a1 + 28);
  *a2 = 48;
  *(a2 + 1) = v15;
  a2 = (a2 + 2);
  v3 = *(a1 + 40);
  if ((v3 & 0x40) == 0)
  {
LABEL_8:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v16 = *(a1 + 29);
  *a2 = 56;
  *(a2 + 1) = v16;
  a2 = (a2 + 2);
  v3 = *(a1 + 40);
  if ((v3 & 0x80) == 0)
  {
LABEL_9:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v17 = *(a1 + 30);
  *a2 = 64;
  *(a2 + 1) = v17;
  a2 = (a2 + 2);
  v3 = *(a1 + 40);
  if ((v3 & 0x100) == 0)
  {
LABEL_10:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v18 = *(a1 + 31);
  *a2 = 72;
  *(a2 + 1) = v18;
  a2 = (a2 + 2);
  if ((*(a1 + 40) & 0x200) == 0)
  {
LABEL_11:
    v6 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v6;
    if (!v6)
    {
      return a2;
    }

    goto LABEL_28;
  }

LABEL_27:
  v19 = *(a1 + 32);
  *a2 = 80;
  *(a2 + 1) = v19;
  a2 = (a2 + 2);
  v20 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v20;
  if (!v20)
  {
    return a2;
  }

LABEL_28:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
}

uint64_t sub_100077944(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_23;
  }

  if (v3)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = *(v6 + 44);
      if (*(v6 + 44))
      {
        goto LABEL_7;
      }
    }

    else
    {
      v6 = *(qword_10045DC08 + 16);
      v7 = *(v6 + 44);
      if (*(v6 + 44))
      {
LABEL_7:
        v8 = (v7 << 31 >> 31) & 9;
        if ((v7 & 2) != 0)
        {
          v8 += 9;
        }

        if ((v7 & 4) != 0)
        {
          LODWORD(v9) = v8 + 9;
        }

        else
        {
          LODWORD(v9) = v8;
        }

        v10 = (v6 + 8);
        v11 = *(v6 + 8);
        if (!v11)
        {
          goto LABEL_19;
        }

LABEL_16:
        if (*v11 != v11[1])
        {
          v9 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v10, a2) + v9);
          *(v6 + 40) = v9;
          if (v9 >= 0x80)
          {
            v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
          }

          else
          {
            v12 = 1;
          }

          goto LABEL_21;
        }

LABEL_19:
        *(v6 + 40) = v9;
        v12 = 1;
LABEL_21:
        v4 = v9 + v12 + 1;
        v3 = *(a1 + 40);
        goto LABEL_22;
      }
    }

    LODWORD(v9) = 0;
    v10 = (v6 + 8);
    v11 = *(v6 + 8);
    if (!v11)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v4 = 0;
LABEL_22:
  v13.i64[0] = 0x200000002;
  v13.i64[1] = 0x200000002;
  v5 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v3), xmmword_1003C9010), v13)) + (v3 & 2) + ((v3 >> 5) & 2) + ((v3 >> 6) & 2) + v4;
LABEL_23:
  v14 = (v3 & 0xFF00) == 0;
  v15 = ((v3 >> 7) & 2) + v5 + ((v3 >> 8) & 2);
  if (v14)
  {
    v16 = v5;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(a1 + 8);
  if (v17 && *v17 != v17[1])
  {
    v16 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v16;
  }

  *(a1 + 36) = v16;
  return v16;
}

uint64_t sub_100077AC8(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000709E4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100077BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100077BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100077BD0(uint64_t result, uint64_t a2)
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

uint64_t sub_100077C64()
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

  return qword_10045C8C0;
}

void sub_100077CF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_100077D08(void *a1)
{
  *a1 = off_1004360A8;
  if (qword_10045DC10 != a1)
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

void sub_100077D9C(void *a1)
{
  *a1 = off_1004360A8;
  if (qword_10045DC10 != a1)
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

uint64_t sub_100077ED8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

      if ((TagFallback & 7) != 0)
      {
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

      else
      {
        v12 = *(this + 1);
        v11 = *(this + 2);
        v25 = 0;
        if (v12 < v11)
        {
          goto LABEL_29;
        }

LABEL_33:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25);
        if (!result)
        {
          return result;
        }

        v23 = v25;
        if (v25 <= 0x1B)
        {
          goto LABEL_31;
        }

LABEL_35:
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 2, v23);
        if (*(this + 1) == *(this + 2))
        {
          goto LABEL_36;
        }
      }
    }

    if (TagFallback >> 3 != 1 || v8 != 2)
    {
      goto LABEL_15;
    }

    *(a1 + 32) |= 1u;
    v9 = *(a1 + 16);
    if (!v9)
    {
      operator new();
    }

    v26 = 0;
    v10 = *(this + 1);
    if (v10 >= *(this + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26))
      {
        return 0;
      }
    }

    else
    {
      v26 = *v10;
      *(this + 1) = v10 + 1;
    }

    v13 = *(this + 14);
    v14 = *(this + 15);
    *(this + 14) = v13 + 1;
    if (v13 >= v14)
    {
      return 0;
    }

    v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v26);
    if (!sub_1000716AC(v9, this, v16, v17) || *(this + 36) != 1)
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

    v22 = *(this + 1);
    v21 = *(this + 2);
    if (v22 < v21 && *v22 == 16)
    {
      v12 = v22 + 1;
      *(this + 1) = v12;
      v25 = 0;
      if (v12 >= v21)
      {
        goto LABEL_33;
      }

LABEL_29:
      v23 = *v12;
      if ((v23 & 0x80000000) != 0)
      {
        goto LABEL_33;
      }

      *(this + 1) = v12 + 1;
      if (v23 > 0x1B)
      {
        goto LABEL_35;
      }

LABEL_31:
      *(a1 + 32) |= 2u;
      *(a1 + 24) = v23;
      if (*(this + 1) == *(this + 2))
      {
LABEL_36:
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

uint64_t sub_1000781AC(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    v10 = *(result + 16);
    if (v10)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
      if ((*(v5 + 32) & 2) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DC10 + 16), a2, a4);
      if ((*(v5 + 32) & 2) != 0)
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 24), a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100078270(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 8);
  if (v5)
  {
    v9 = *(this + 2);
    if (v9)
    {
      *a2 = 10;
      v10 = a2 + 1;
      v11 = *(v9 + 40);
      if (v11 <= 0x7F)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9 = *(qword_10045DC10 + 16);
      *a2 = 10;
      v10 = a2 + 1;
      v11 = *(v9 + 40);
      if (v11 <= 0x7F)
      {
LABEL_7:
        *(v3 + 1) = v11;
        v3 = sub_100071938(v9, v3 + 2, a3);
        if ((*(this + 8) & 2) != 0)
        {
          goto LABEL_11;
        }

LABEL_3:
        v8 = *(this + 1);
        v7 = (this + 8);
        v6 = v8;
        if (!v8)
        {
          return v3;
        }

        goto LABEL_18;
      }
    }

    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v10, a3);
    v3 = sub_100071938(v9, v12, v13);
    if ((*(this + 8) & 2) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_3;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  v14 = *(this + 6);
  *v3 = 16;
  v15 = v3 + 1;
  if ((v14 & 0x80000000) != 0)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v14, v15, a3);
    v17 = *(this + 1);
    v7 = (this + 8);
    v6 = v17;
    if (!v17)
    {
      return v3;
    }
  }

  else if (v14 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v15, a3);
    v18 = *(this + 1);
    v7 = (this + 8);
    v6 = v18;
    if (!v18)
    {
      return v3;
    }
  }

  else
  {
    *(v3 + 1) = v14;
    v3 = (v3 + 2);
    v16 = *(this + 1);
    v7 = (this + 8);
    v6 = v16;
    if (!v16)
    {
      return v3;
    }
  }

LABEL_18:
  if (*v6 == v6[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v7, v3, a3);
}

uint64_t sub_1000783B4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (!*(a1 + 32))
  {
    v3 = 0;
    goto LABEL_30;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_30;
    }

LABEL_24:
    v11 = *(a1 + 24);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
    }

    else
    {
      v12 = 2;
    }

    v3 = (v12 + v3);
    goto LABEL_30;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(v4 + 44);
    if (*(v4 + 44))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = *(qword_10045DC10 + 16);
    v5 = *(v4 + 44);
    if (*(v4 + 44))
    {
LABEL_8:
      v6 = (v5 << 31 >> 31) & 9;
      if ((v5 & 2) != 0)
      {
        v6 += 9;
      }

      if ((v5 & 4) != 0)
      {
        v7 = v6 + 9;
      }

      else
      {
        v7 = v6;
      }

      v8 = (v4 + 8);
      v9 = *(v4 + 8);
      if (!v9)
      {
LABEL_21:
        *(v4 + 40) = v7;
        v3 = (v7 + 2);
        if ((*(a1 + 32) & 2) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_24;
      }

      goto LABEL_17;
    }
  }

  v7 = 0;
  v8 = (v4 + 8);
  v9 = *(v4 + 8);
  if (!v9)
  {
    goto LABEL_21;
  }

LABEL_17:
  if (*v9 == v9[1])
  {
    goto LABEL_21;
  }

  v10 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v8, a2) + v7);
  *(v4 + 40) = v10;
  if (v10 < 0x80)
  {
    v3 = (v10 + 2);
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  v3 = v10 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
  if ((*(a1 + 32) & 2) != 0)
  {
    goto LABEL_24;
  }

LABEL_30:
  v13 = *(a1 + 8);
  if (v13 && *v13 != v13[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 28) = v3;
  return v3;
}

uint64_t sub_100078524(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100070C74(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100078604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100078618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007862C(uint64_t result, uint64_t a2)
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

uint64_t sub_1000786C0()
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

  return qword_10045C8D0;
}

void sub_100078750(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_100078764(void *a1)
{
  *a1 = off_100436158;
  if (qword_10045DC18 != a1)
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

void sub_1000787F8(void *a1)
{
  *a1 = off_100436158;
  if (qword_10045DC18 != a1)
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

uint64_t sub_100078934(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
    if (!sub_1000716AC(v9, this, v14, v15) || *(this + 36) != 1)
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

uint64_t sub_100078BB0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DC18 + 16), a2, a4);
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

uint64_t sub_100078C74(uint64_t a1, _BYTE *a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 36);
  if (v3)
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      v7 = *(qword_10045DC18 + 16);
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

    a2 = sub_100071938(v7, v10, a3);
    a1 = v8;
    if ((*(v8 + 36) & 2) == 0)
    {
LABEL_3:
      v6 = *(a1 + 8);
      v4 = (a1 + 8);
      v5 = v6;
      if (!v6)
      {
        return a2;
      }

      goto LABEL_12;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(a1 + 24);
  *a2 = 17;
  *(a2 + 1) = v11;
  a2 += 9;
  v12 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v12;
  if (!v12)
  {
    return a2;
  }

LABEL_12:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
}

uint64_t sub_100078D88(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (v3)
  {
    if ((*(a1 + 36) & 1) == 0)
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
      v9 = *(qword_10045DC18 + 16);
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
        v3 = *(a1 + 36);
LABEL_23:
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

        goto LABEL_27;
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
    *(a1 + 32) = v5;
    return v5;
  }

LABEL_27:
  if (*v7 == v7[1])
  {
    goto LABEL_5;
  }

  v16 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 32) = v16;
  return v16;
}

uint64_t sub_100078ED0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100070DF8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100078FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100078FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100078FD8(uint64_t result, uint64_t a2)
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

uint64_t sub_10007906C()
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

  return qword_10045C8E8;
}

void sub_1000790FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_100079110(void *a1)
{
  *a1 = off_100436208;
  if (qword_10045DC20 != a1)
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

void sub_1000791A4(void *a1)
{
  *a1 = off_100436208;
  if (qword_10045DC20 != a1)
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

uint64_t sub_1000792E0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
    if (!sub_1000716AC(v9, this, v14, v15) || *(this + 36) != 1)
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

uint64_t sub_10007955C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DC20 + 16), a2, a4);
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

uint64_t sub_100079620(uint64_t a1, _BYTE *a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 36);
  if (v3)
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      v7 = *(qword_10045DC20 + 16);
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

    a2 = sub_100071938(v7, v10, a3);
    a1 = v8;
    if ((*(v8 + 36) & 2) == 0)
    {
LABEL_3:
      v6 = *(a1 + 8);
      v4 = (a1 + 8);
      v5 = v6;
      if (!v6)
      {
        return a2;
      }

      goto LABEL_12;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(a1 + 24);
  *a2 = 17;
  *(a2 + 1) = v11;
  a2 += 9;
  v12 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v12;
  if (!v12)
  {
    return a2;
  }

LABEL_12:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
}

uint64_t sub_100079734(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (v3)
  {
    if ((*(a1 + 36) & 1) == 0)
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
      v9 = *(qword_10045DC20 + 16);
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
        v3 = *(a1 + 36);
LABEL_23:
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

        goto LABEL_27;
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
    *(a1 + 32) = v5;
    return v5;
  }

LABEL_27:
  if (*v7 == v7[1])
  {
    goto LABEL_5;
  }

  v16 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 32) = v16;
  return v16;
}

uint64_t sub_10007987C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100070F7C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10007995C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100079970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100079984(uint64_t result, uint64_t a2)
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

uint64_t sub_100079A18()
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

  return qword_10045C8F8;
}

void sub_100079AA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_100079ABC(void *a1)
{
  *a1 = off_1004362B8;
  if (qword_10045DC28 != a1)
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

void sub_100079B50(void *a1)
{
  *a1 = off_1004362B8;
  if (qword_10045DC28 != a1)
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

uint64_t sub_100079C8C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
    if (!sub_1000716AC(v9, this, v14, v15) || *(this + 36) != 1)
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

uint64_t sub_100079F08(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DC28 + 16), a2, a4);
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

uint64_t sub_100079FCC(uint64_t a1, _BYTE *a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 36);
  if (v3)
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      v7 = *(qword_10045DC28 + 16);
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

    a2 = sub_100071938(v7, v10, a3);
    a1 = v8;
    if ((*(v8 + 36) & 2) == 0)
    {
LABEL_3:
      v6 = *(a1 + 8);
      v4 = (a1 + 8);
      v5 = v6;
      if (!v6)
      {
        return a2;
      }

      goto LABEL_12;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(a1 + 24);
  *a2 = 17;
  *(a2 + 1) = v11;
  a2 += 9;
  v12 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v12;
  if (!v12)
  {
    return a2;
  }

LABEL_12:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
}

uint64_t sub_10007A0E0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (v3)
  {
    if ((*(a1 + 36) & 1) == 0)
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
      v9 = *(qword_10045DC28 + 16);
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
        v3 = *(a1 + 36);
LABEL_23:
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

        goto LABEL_27;
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
    *(a1 + 32) = v5;
    return v5;
  }

LABEL_27:
  if (*v7 == v7[1])
  {
    goto LABEL_5;
  }

  v16 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 32) = v16;
  return v16;
}

uint64_t sub_10007A228(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100071100(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10007A308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007A31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007A330(uint64_t result, uint64_t a2)
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

uint64_t sub_10007A3C4()
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

  return qword_10045C908;
}

void sub_10007A454(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_10007A4CC()
{
  v0 = sub_10007AA60();
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v0);
  operator new();
}

void sub_10007A9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007A9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007AA0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10007AA60(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_10045C930 & 1) == 0)
  {
    byte_10045C930 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/common/protobuf/clpsensorsurvey/Proto/CLPPrivateDataShared.pb.cc", a4);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile(&unk_1003CA74C, 0xA3C, v4);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_10007AF90()
{
  if (qword_10045DC30)
  {
    (*(*qword_10045DC30 + 8))(qword_10045DC30);
  }

  if (qword_10045C948)
  {
    (*(*qword_10045C948 + 8))(qword_10045C948);
  }

  if (qword_10045DC38)
  {
    (*(*qword_10045DC38 + 8))(qword_10045DC38);
  }

  if (qword_10045C958)
  {
    (*(*qword_10045C958 + 8))(qword_10045C958);
  }

  if (qword_10045DC40)
  {
    (*(*qword_10045DC40 + 8))(qword_10045DC40);
  }

  if (qword_10045C968)
  {
    (*(*qword_10045C968 + 8))(qword_10045C968);
  }

  if (qword_10045DC48)
  {
    (*(*qword_10045DC48 + 8))(qword_10045DC48);
  }

  if (qword_10045C978)
  {
    (*(*qword_10045C978 + 8))(qword_10045C978);
  }

  if (qword_10045DC50)
  {
    (*(*qword_10045DC50 + 8))(qword_10045DC50);
  }

  if (qword_10045C988)
  {
    (*(*qword_10045C988 + 8))(qword_10045C988);
  }

  if (qword_10045DC58)
  {
    (*(*qword_10045DC58 + 8))(qword_10045DC58);
  }

  if (qword_10045C998)
  {
    (*(*qword_10045C998 + 8))(qword_10045C998);
  }

  if (qword_10045DC60)
  {
    (*(*qword_10045DC60 + 8))(qword_10045DC60);
  }

  if (qword_10045C9A8)
  {
    (*(*qword_10045C9A8 + 8))(qword_10045C9A8);
  }

  if (qword_10045DC68)
  {
    (*(*qword_10045DC68 + 8))(qword_10045DC68);
  }

  if (qword_10045C9B8)
  {
    (*(*qword_10045C9B8 + 8))(qword_10045C9B8);
  }

  if (qword_10045DC70)
  {
    (*(*qword_10045DC70 + 8))(qword_10045DC70);
  }

  result = qword_10045C9C8;
  if (qword_10045C9C8)
  {
    v1 = *(*qword_10045C9C8 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_10007B318()
{
  v0 = qword_10045C9F0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v10[1] = sub_10007A4CC;
    v11 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v10);
  }

  if (!qword_10045DC30)
  {
    (sub_10007AA60)();
  }

  v1 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DC38)
  {
    sub_10007AA60(v1);
  }

  v2 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DC40)
  {
    sub_10007AA60(v2);
  }

  v3 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DC48)
  {
    sub_10007AA60(v3);
  }

  v4 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DC50)
  {
    sub_10007AA60(v4);
  }

  v5 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DC58)
  {
    sub_10007AA60(v5);
  }

  v6 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DC60)
  {
    sub_10007AA60(v6);
  }

  v7 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DC68)
  {
    sub_10007AA60(v7);
  }

  v8 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DC70)
  {
    sub_10007AA60(v8);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_10007B4F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007B50C(uint64_t a1)
{
  *a1 = off_100436488;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_10007B56C(uint64_t a1)
{
  *a1 = off_100436538;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  return a1;
}

uint64_t sub_10007B5D0(uint64_t a1)
{
  *a1 = off_1004365E8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_10007B638(uint64_t a1)
{
  *a1 = off_100436698;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  return a1;
}

uint64_t sub_10007B69C(uint64_t a1)
{
  *a1 = off_100436748;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_10007B704(uint64_t a1)
{
  *a1 = off_1004367F8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 52) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_10007B77C(uint64_t a1)
{
  *a1 = off_100436958;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_10007B7E4(uint64_t a1)
{
  *a1 = off_100436A08;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

uint64_t sub_10007B848(uint64_t a1, uint64_t a2)
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

void sub_10007B930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007B944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007B958(uint64_t a1)
{
  *a1 = off_100436488;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10007B9AC(uint64_t a1)
{
  *a1 = off_100436488;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10007BAA8(uint64_t a1)
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

uint64_t sub_10007BACC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

uint64_t sub_10007BCA0(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t sub_10007BD58(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
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

uint64_t sub_10007BE88(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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

uint64_t sub_10007BEFC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10007B848(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10007BFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007BFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007C004(uint64_t result, uint64_t a2)
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

uint64_t sub_10007C098()
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

  return qword_10045C940;
}

void sub_10007C128(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007C13C(uint64_t a1, uint64_t a2)
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
      v6 = *(qword_10045DC38 + 16);
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

void sub_10007C2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007C2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007C304(void *a1)
{
  *a1 = off_100436538;
  if (qword_10045DC38 != a1)
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

void sub_10007C398(void *a1)
{
  *a1 = off_100436538;
  if (qword_10045DC38 != a1)
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10007C4D8(uint64_t a1)
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

uint64_t sub_10007C55C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

uint64_t sub_10007C8C0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DC38 + 16), a2, a4);
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

uint64_t sub_10007C9BC(uint64_t a1, _BYTE *a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      v7 = *(qword_10045DC38 + 16);
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

uint64_t sub_10007CB20(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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
      v9 = *(qword_10045DC38 + 16);
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

uint64_t sub_10007CC80(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10007C13C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10007CD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007CD74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007CD88(uint64_t result, uint64_t a2)
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

uint64_t sub_10007CE1C()
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

  return qword_10045C950;
}

void sub_10007CEAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007CEC0(uint64_t a1, uint64_t a2)
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
      sub_10007C13C(*(v5 + 8 * v8), v6);
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
      v10 = *(qword_10045DC40 + 16);
    }

    sub_10007B848(v9, v10);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10007D100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007D114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007D144(uint64_t a1)
{
  *a1 = off_1004365E8;
  if (qword_10045DC40 != a1)
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

void sub_10007D250(uint64_t a1)
{
  sub_10007D144(a1);

  operator delete();
}

uint64_t sub_10007D290(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_10045DC40;
  if (!qword_10045DC40)
  {
    sub_10007AA60(0, a2, a3, a4);
    return qword_10045DC40;
  }

  return result;
}

uint64_t sub_10007D360(uint64_t this)
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

uint64_t sub_10007D42C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (!sub_10007C55C(v23, this, v28, v29) || *(this + 36) != 1)
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

uint64_t sub_10007D7F4(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 52))
  {
    v6 = *(result + 16);
    if (!v6)
    {
      v6 = *(qword_10045DC40 + 16);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10007D8B8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
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

      result = sub_10007C9BC(v13, v12, a3);
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
    v5 = *(qword_10045DC40 + 16);
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

uint64_t sub_10007DA10(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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
      v5 = *(qword_10045DC40 + 16);
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
    v15 = sub_10007CB20(*(*(a1 + 24) + 8 * v13), a2);
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

uint64_t sub_10007DB84(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10007CEC0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10007DC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007DC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007DC8C(uint64_t result, uint64_t a2)
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

uint64_t sub_10007DD20()
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

  return qword_10045C960;
}

void sub_10007DDB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}