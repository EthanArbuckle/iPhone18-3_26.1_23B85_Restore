void sub_1003A5040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003A5060(uint64_t *a1)
{
  *a1 = off_102447D00;
  sub_100027438(a1 + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003A50BC(uint64_t *a1)
{
  sub_1003A5060(a1);

  operator delete();
}

uint64_t sub_1003A5148(uint64_t a1)
{
  result = sub_1003C79DC(a1 + 8);
  *(a1 + 36) = 0;
  return result;
}

uint64_t sub_1003A5174(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
LABEL_1:
    v5 = *(this + 1);
    if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v5 + 1;
    }

    if (TagFallback == 10)
    {
      while (1)
      {
        v7 = a1[5];
        v8 = a1[4];
        if (v8 >= v7)
        {
          if (v7 == a1[6])
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2), v7 + 1);
            v7 = a1[5];
          }

          a1[5] = v7 + 1;
          operator new();
        }

        v9 = *(a1 + 1);
        a1[4] = v8 + 1;
        v10 = *(v9 + 8 * v8);
        v22 = 0;
        v11 = *(this + 1);
        if (v11 >= *(this + 2) || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22))
          {
            return 0;
          }
        }

        else
        {
          v22 = *v11;
          *(this + 1) = v11 + 1;
        }

        v12 = *(this + 14);
        v13 = *(this + 15);
        *(this + 14) = v12 + 1;
        if (v12 >= v13)
        {
          return 0;
        }

        v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v22);
        if (!sub_1003A49A8(v10, this, v15) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v14);
        v16 = *(this + 14);
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v18 < 0 == v17)
        {
          *(this + 14) = v18;
        }

        v19 = *(this + 1);
        v20 = *(this + 2);
        if (v19 >= v20 || *v19 != 10)
        {
          if (v19 == v20 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(this + 1) = v19 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1003A53A8(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16) >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return result;
}

uint64_t sub_1003A540C(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_1003A4D00(*(*(a1 + 8) + 8 * v4), a2);
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

    while (v4 < *(a1 + 16));
  }

  *(a1 + 32) = v3;
  return v3;
}

void sub_1003A548C(_DWORD *a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003A4E80(a1, lpsrc);
}

void sub_1003A552C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    sub_1003C7898(a1 + 16, *(a1 + 24) + v4);
    memcpy((*(a1 + 16) + 8 * *(a1 + 24)), *(a2 + 16), 8 * *(a2 + 24));
    *(a1 + 24) += *(a2 + 24);
  }

  if (*(a2 + 36))
  {
    v5 = *(a2 + 8);
    *(a1 + 36) |= 1u;
    v6 = *(a1 + 8);
    if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v6, v5);
  }
}

void sub_1003A5638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003A5650(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102447D78;
  sub_10000FCA0(a1);
  if (*(a1 + 2))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003A56C4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1003A5650(a1);

  operator delete();
}

uint64_t sub_1003A5754(uint64_t result)
{
  if (*(result + 36))
  {
    v1 = *(result + 8);
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

  *(result + 24) = 0;
  *(result + 36) = 0;
  return result;
}

uint64_t sub_1003A579C(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback & 7;
        if (TagFallback >> 3 == 2)
        {
          break;
        }

        if (TagFallback >> 3 != 1 || v7 != 2)
        {
          goto LABEL_17;
        }

        *(a1 + 36) |= 1u;
        if (*(a1 + 8) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v9 = *(this + 1);
        if (v9 < *(this + 2) && *v9 == 17)
        {
          goto LABEL_40;
        }
      }

      if (v7 == 1)
      {
        goto LABEL_22;
      }

      if (v7 == 2)
      {
        break;
      }

LABEL_17:
      if (v7 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
      {
        return 0;
      }
    }

    result = sub_1003A5A94(this, a1 + 16);
    if (!result)
    {
      return result;
    }

LABEL_38:
    v9 = *(this + 1);
    v20 = *(this + 2);
    if (v9 < v20 && *v9 == 17)
    {
      break;
    }

    if (v9 == v20 && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }

LABEL_40:
  *(this + 1) = v9 + 1;
LABEL_22:
  v21[0] = 0;
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v21))
  {
    v10 = v21[0];
    v11 = *(a1 + 24);
    if (v11 == *(a1 + 28))
    {
      sub_1003C7898(a1 + 16, v11 + 1);
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
        while (*v14 == 17)
        {
          v19 = *(v14 + 1);
          if (v13 >= *(a1 + 28))
          {
            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
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
            goto LABEL_37;
          }
        }

        if (!v18)
        {
          goto LABEL_38;
        }

LABEL_37:
        wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v18);
      }
    }

    goto LABEL_38;
  }

  return 0;
}

void sub_1003A5A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003A5A94(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2)
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
        sub_1003C7898(a2, v9 + 1);
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

uint64_t sub_1003A5B8C(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  if (*(result + 36))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  if (*(v4 + 24) >= 1)
  {
    v5 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(*(v4 + 16) + 8 * v5++), a3);
    }

    while (v5 < *(v4 + 24));
  }

  return result;
}

uint64_t sub_1003A5C04(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 36))
  {
    v4 = *(a1 + 8);
    v5 = *(v4 + 23);
    v6 = v5;
    v7 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v8 = *(v4 + 23);
    }

    else
    {
      v8 = v7;
    }

    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
      v5 = *(v4 + 23);
      v7 = *(v4 + 8);
      v9 = v10 + 1;
      v6 = *(v4 + 23);
    }

    else
    {
      v9 = 2;
    }

    if (v6 < 0)
    {
      v5 = v7;
    }

    v3 = v9 + v5;
  }

  else
  {
    v3 = 0;
  }

  result = (9 * *(a1 + 24) + v3);
  *(a1 + 32) = result;
  return result;
}

void sub_1003A5C90(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003A552C(a1, lpsrc);
}

void sub_1003A5D30(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  sub_1003A2600((a1 + 8), a2 + 8);
  sub_1003C7B1C((a1 + 32), a2 + 32);
  v4 = *(a2 + 64);
  if (v4)
  {
    sub_1003945DC(a1 + 56, *(a1 + 64) + v4);
    memcpy((*(a1 + 56) + 4 * *(a1 + 64)), *(a2 + 56), 4 * *(a2 + 64));
    *(a1 + 64) += *(a2 + 64);
  }
}

void sub_1003A5DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003A5E14(uint64_t a1)
{
  *a1 = off_102447DF0;
  if (*(a1 + 56))
  {
    operator delete[]();
  }

  sub_100027438((a1 + 32));
  sub_1003C7A9C((a1 + 8));

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003A5E9C(uint64_t a1)
{
  sub_1003A5E14(a1);

  operator delete();
}

uint64_t sub_1003A5F34(uint64_t a1)
{
  sub_1003C7A4C(a1 + 8);
  result = sub_1003C79DC(a1 + 32);
  *(a1 + 64) = 0;
  *(a1 + 76) = 0;
  return result;
}

uint64_t sub_1003A5F6C(uint64_t result, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  v4 = result;
  while (1)
  {
    while (1)
    {
LABEL_2:
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (v6 = *v5, (v6 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        v6 = result;
        *(this + 8) = result;
        if (!result)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = v6;
        *(this + 1) = v5 + 1;
        if (!v6)
        {
          return 1;
        }
      }

      v7 = v6 >> 3;
      v8 = v6 & 7;
      if (v6 >> 3 != 3)
      {
        break;
      }

      if ((v6 & 7) != 0)
      {
        if (v8 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedEnumNoInline();
          if (!result)
          {
            return result;
          }

          goto LABEL_65;
        }

LABEL_27:
        if (v8 == 4)
        {
          return 1;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, v6, a3);
        if ((result & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v17 = *(this + 1);
        v16 = *(this + 2);
        while (1)
        {
          v35 = 0;
          if (v17 >= v16 || (v31 = *v17, (v31 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35);
            if (!result)
            {
              return result;
            }

            v31 = v35;
          }

          else
          {
            *(this + 1) = v17 + 1;
          }

          if (v31 < 4 || v31 == 15)
          {
            v33 = *(v4 + 64);
            if (v33 == *(v4 + 68))
            {
              result = sub_1003945DC(v4 + 56, v33 + 1);
              v33 = *(v4 + 64);
            }

            v34 = *(v4 + 56);
            *(v4 + 64) = v33 + 1;
            *(v34 + 4 * v33) = v31;
          }

LABEL_65:
          v14 = *(this + 1);
          v16 = *(this + 2);
          if (v14 >= v16 || *v14 != 24)
          {
            break;
          }

LABEL_67:
          v17 = v14 + 1;
          *(this + 1) = v17;
        }

        if (v14 == v16 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 2)
    {
      break;
    }

    if (v7 != 1 || v8 != 2)
    {
      goto LABEL_27;
    }

    while (1)
    {
      v9 = *(v4 + 20);
      v10 = *(v4 + 16);
      if (v10 >= v9)
      {
        if (v9 == *(v4 + 24))
        {
          result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 8), v9 + 1);
          v9 = *(v4 + 20);
        }

        *(v4 + 20) = v9 + 1;
        v11 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
        v12 = *(v4 + 8);
        v13 = *(v4 + 16);
        *(v4 + 16) = v13 + 1;
        *(v12 + 8 * v13) = v11;
      }

      else
      {
        *(v4 + 16) = v10 + 1;
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v14 = *(this + 1);
      if (v14 >= *(this + 2))
      {
        break;
      }

      v15 = *v14;
      if (v15 != 10)
      {
        if (v15 != 18)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      }

      *(this + 1) = v14 + 1;
    }
  }

  if (v8 != 2)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v18 = *(v4 + 44);
    v19 = *(v4 + 40);
    if (v19 >= v18)
    {
      if (v18 == *(v4 + 48))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 32), v18 + 1);
        v18 = *(v4 + 44);
      }

      *(v4 + 44) = v18 + 1;
      operator new();
    }

    v20 = *(v4 + 32);
    *(v4 + 40) = v19 + 1;
    v21 = *(v20 + 8 * v19);
    v36 = 0;
    v22 = *(this + 1);
    if (v22 >= *(this + 2) || *v22 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v36))
      {
        return 0;
      }
    }

    else
    {
      v36 = *v22;
      *(this + 1) = v22 + 1;
    }

    v23 = *(this + 14);
    v24 = *(this + 15);
    *(this + 14) = v23 + 1;
    if (v23 >= v24)
    {
      return 0;
    }

    v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v36);
    if (!sub_1003A579C(v21, this, v26) || *(this + 36) != 1)
    {
      return 0;
    }

    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v25);
    v27 = *(this + 14);
    v28 = __OFSUB__(v27, 1);
    v29 = v27 - 1;
    if (v29 < 0 == v28)
    {
      *(this + 14) = v29;
    }

    v14 = *(this + 1);
    v16 = *(this + 2);
    if (v14 >= v16)
    {
      goto LABEL_2;
    }

    v30 = *v14;
    if (v30 != 18)
    {
      if (v30 == 24)
      {
        goto LABEL_67;
      }

      goto LABEL_2;
    }

LABEL_51:
    *(this + 1) = v14 + 1;
  }
}

uint64_t sub_1003A6340(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 16) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      ++v6;
    }

    while (v6 < *(v5 + 16));
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 32) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 64) >= 1)
  {
    v8 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(*(v5 + 56) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 64));
  }

  return result;
}

uint64_t sub_1003A6408(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  if (v3 < 1)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v4 = 0;
    v5 = *(a1 + 16);
    do
    {
      v6 = *(*(a1 + 8) + 8 * v4);
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
        v3 = *(a1 + 16);
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

      v5 += v11 + v7;
      ++v4;
    }

    while (v4 < v3);
  }

  v12 = *(a1 + 40);
  v13 = v12 + v5;
  if (v12 >= 1)
  {
    v14 = 0;
    do
    {
      v15 = sub_1003A5C04(*(*(a1 + 32) + 8 * v14), a2);
      v16 = v15;
      if (v15 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
      }

      else
      {
        v17 = 1;
      }

      v13 += v16 + v17;
      ++v14;
    }

    while (v14 < *(a1 + 40));
  }

  v18 = *(a1 + 64);
  if (v18 < 1)
  {
    v20 = 0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(*(a1 + 56) + 4 * v19);
      if ((v21 & 0x80000000) != 0)
      {
        v22 = 10;
      }

      else if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2);
        v18 = *(a1 + 64);
      }

      else
      {
        v22 = 1;
      }

      v20 += v22;
      ++v19;
    }

    while (v19 < v18);
  }

  result = (v20 + v13 + v18);
  *(a1 + 72) = result;
  return result;
}

void sub_1003A6564(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003A5D30(a1, lpsrc);
}

void sub_1003A6604(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v45);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 8), *(a2 + 16) + *(a1 + 16));
  LODWORD(v4) = *(a2 + 16);
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      if (v5 >= v4)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v45);
      }

      v6 = *(*(a2 + 8) + 8 * v5);
      v7 = *(a1 + 20);
      v8 = *(a1 + 16);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 24))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 8), v7 + 1);
          v7 = *(a1 + 20);
        }

        *(a1 + 20) = v7 + 1;
        operator new();
      }

      v9 = *(a1 + 8);
      *(a1 + 16) = v8 + 1;
      sub_1003A0D78(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 16);
    }

    while (v5 < v4);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 56), *(a2 + 64) + *(a1 + 64));
  LODWORD(v10) = *(a2 + 64);
  if (v10 >= 1)
  {
    v11 = 0;
    do
    {
      if (v11 >= v10)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v45);
      }

      v12 = *(*(a2 + 56) + 8 * v11);
      v13 = *(a1 + 68);
      v14 = *(a1 + 64);
      if (v14 >= v13)
      {
        if (v13 == *(a1 + 72))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 56), v13 + 1);
          v13 = *(a1 + 68);
        }

        *(a1 + 68) = v13 + 1;
        operator new();
      }

      v15 = *(a1 + 56);
      *(a1 + 64) = v14 + 1;
      sub_1003A1FC4(*(v15 + 8 * v14), v12);
      ++v11;
      v10 = *(a2 + 64);
    }

    while (v11 < v10);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 80), *(a2 + 88) + *(a1 + 88));
  LODWORD(v16) = *(a2 + 88);
  if (v16 >= 1)
  {
    v17 = 0;
    do
    {
      if (v17 >= v16)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v45);
      }

      v18 = *(*(a2 + 80) + 8 * v17);
      v19 = *(a1 + 92);
      v20 = *(a1 + 88);
      if (v20 >= v19)
      {
        if (v19 == *(a1 + 96))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 80), v19 + 1);
          v19 = *(a1 + 92);
        }

        *(a1 + 92) = v19 + 1;
        operator new();
      }

      v21 = *(a1 + 80);
      *(a1 + 88) = v20 + 1;
      sub_1003A2758(*(v21 + 8 * v20), v18);
      ++v17;
      v16 = *(a2 + 88);
    }

    while (v17 < v16);
  }

  v22 = *(a2 + 144);
  if (v22)
  {
    sub_1003945DC(a1 + 136, *(a1 + 144) + v22);
    memcpy((*(a1 + 136) + 4 * *(a1 + 144)), *(a2 + 136), 4 * *(a2 + 144));
    *(a1 + 144) += *(a2 + 144);
  }

  v23 = *(a2 + 192);
  if ((v23 & 0x1FE) == 0)
  {
    goto LABEL_42;
  }

  if ((v23 & 2) != 0)
  {
    v27 = *(a2 + 32);
    *(a1 + 192) |= 2u;
    *(a1 + 32) = v27;
    v23 = *(a2 + 192);
    if ((v23 & 4) == 0)
    {
LABEL_38:
      if ((v23 & 8) == 0)
      {
        goto LABEL_39;
      }

LABEL_62:
      v29 = *(a2 + 48);
      if (v29 >= 6)
      {
        sub_101871F30();
      }

      *(a1 + 192) |= 8u;
      *(a1 + 48) = v29;
      v23 = *(a2 + 192);
      if ((v23 & 0x10) == 0)
      {
LABEL_40:
        if ((v23 & 0x80) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      goto LABEL_64;
    }
  }

  else if ((v23 & 4) == 0)
  {
    goto LABEL_38;
  }

  v28 = *(a2 + 40);
  *(a1 + 192) |= 4u;
  *(a1 + 40) = v28;
  v23 = *(a2 + 192);
  if ((v23 & 8) != 0)
  {
    goto LABEL_62;
  }

LABEL_39:
  if ((v23 & 0x10) == 0)
  {
    goto LABEL_40;
  }

LABEL_64:
  v30 = *(a2 + 52);
  if (v30 >= 4)
  {
    sub_101871F5C();
  }

  *(a1 + 192) |= 0x10u;
  *(a1 + 52) = v30;
  v23 = *(a2 + 192);
  if ((v23 & 0x80) != 0)
  {
LABEL_41:
    v24 = *(a2 + 104);
    *(a1 + 192) |= 0x80u;
    *(a1 + 104) = v24;
    v23 = *(a2 + 192);
  }

LABEL_42:
  if ((v23 & 0xFF00) == 0)
  {
    goto LABEL_52;
  }

  if ((v23 & 0x100) != 0)
  {
    *(a1 + 192) |= 0x100u;
    v31 = *(a1 + 112);
    if (!v31)
    {
      operator new();
    }

    v32 = *(a2 + 112);
    if (!v32)
    {
      v32 = *(qword_102635F50 + 112);
    }

    sub_1003A391C(v31, v32);
    v23 = *(a2 + 192);
    if ((v23 & 0x200) == 0)
    {
LABEL_45:
      if ((v23 & 0x400) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_73;
    }
  }

  else if ((v23 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  v33 = *(a2 + 108);
  *(a1 + 192) |= 0x200u;
  *(a1 + 108) = v33;
  v23 = *(a2 + 192);
  if ((v23 & 0x400) == 0)
  {
LABEL_46:
    if ((v23 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_78;
  }

LABEL_73:
  *(a1 + 192) |= 0x400u;
  v34 = *(a1 + 120);
  if (!v34)
  {
    operator new();
  }

  v35 = *(a2 + 120);
  if (!v35)
  {
    v35 = *(qword_102635F50 + 120);
  }

  sub_1003A5D30(v34, v35);
  v23 = *(a2 + 192);
  if ((v23 & 0x800) == 0)
  {
LABEL_47:
    if ((v23 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_80;
  }

LABEL_78:
  v36 = *(a2 + 128);
  if (v36 >= 4)
  {
    sub_101871F88();
  }

  *(a1 + 192) |= 0x800u;
  *(a1 + 128) = v36;
  v23 = *(a2 + 192);
  if ((v23 & 0x1000) == 0)
  {
LABEL_48:
    if ((v23 & 0x4000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_80:
  v37 = *(a2 + 132);
  if (v37 >= 4)
  {
    sub_101871FB4();
  }

  *(a1 + 192) |= 0x1000u;
  *(a1 + 132) = v37;
  v23 = *(a2 + 192);
  if ((v23 & 0x4000) == 0)
  {
    goto LABEL_50;
  }

LABEL_49:
  v25 = *(a2 + 152);
  *(a1 + 192) |= 0x4000u;
  *(a1 + 152) = v25;
  v23 = *(a2 + 192);
LABEL_50:
  if ((v23 & 0x8000) != 0)
  {
    v26 = *(a2 + 156);
    *(a1 + 192) |= 0x8000u;
    *(a1 + 156) = v26;
    v23 = *(a2 + 192);
  }

LABEL_52:
  if ((v23 & 0xFF0000) == 0)
  {
    return;
  }

  if ((v23 & 0x10000) != 0)
  {
    v38 = *(a2 + 160);
    *(a1 + 192) |= 0x10000u;
    *(a1 + 160) = v38;
    v23 = *(a2 + 192);
    if ((v23 & 0x20000) == 0)
    {
LABEL_55:
      if ((v23 & 0x40000) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_85;
    }
  }

  else if ((v23 & 0x20000) == 0)
  {
    goto LABEL_55;
  }

  v39 = *(a2 + 164);
  *(a1 + 192) |= 0x20000u;
  *(a1 + 164) = v39;
  v23 = *(a2 + 192);
  if ((v23 & 0x40000) == 0)
  {
LABEL_56:
    if ((v23 & 0x80000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_86;
  }

LABEL_85:
  v40 = *(a2 + 168);
  *(a1 + 192) |= 0x40000u;
  *(a1 + 168) = v40;
  v23 = *(a2 + 192);
  if ((v23 & 0x80000) == 0)
  {
LABEL_57:
    if ((v23 & 0x100000) == 0)
    {
      goto LABEL_58;
    }

LABEL_87:
    v42 = *(a2 + 184);
    *(a1 + 192) |= 0x100000u;
    *(a1 + 184) = v42;
    if ((*(a2 + 192) & 0x200000) == 0)
    {
      return;
    }

    goto LABEL_88;
  }

LABEL_86:
  v41 = *(a2 + 172);
  *(a1 + 192) |= 0x80000u;
  *(a1 + 172) = v41;
  v23 = *(a2 + 192);
  if ((v23 & 0x100000) != 0)
  {
    goto LABEL_87;
  }

LABEL_58:
  if ((v23 & 0x200000) == 0)
  {
    return;
  }

LABEL_88:
  v43 = *(a2 + 176);
  *(a1 + 192) |= 0x200000u;
  v44 = *(a1 + 176);
  if (v44 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v44, v43);
}

void sub_1003A6E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003A6E58(uint64_t *a1)
{
  *a1 = off_102447E68;
  sub_1003A6EEC(a1);
  if (a1[17])
  {
    operator delete[]();
  }

  sub_100027438(a1 + 10);
  sub_100027438(a1 + 7);
  sub_100027438(a1 + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void *sub_1003A6EEC(void *result)
{
  v1 = result;
  v2 = result[22];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (qword_102635F50 != result)
  {
    v4 = result[14];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    result = v1[15];
    if (result)
    {
      v5 = *(*result + 8);

      return v5();
    }
  }

  return result;
}

void sub_1003A6FD0(uint64_t *a1)
{
  sub_1003A6E58(a1);

  operator delete();
}

uint64_t sub_1003A7094(uint64_t a1)
{
  v2 = *(a1 + 192);
  if ((v2 & 0x1FE) != 0)
  {
    *(a1 + 104) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 32) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v3 = *(a1 + 112);
      if (v3)
      {
        sub_1003C79DC(v3 + 8);
        *(v3 + 36) = 0;
        v2 = *(a1 + 192);
      }
    }

    *(a1 + 108) = 0;
    if ((v2 & 0x400) != 0)
    {
      v4 = *(a1 + 120);
      if (v4)
      {
        sub_1003C7A4C(v4 + 8);
        sub_1003C79DC(v4 + 32);
        *(v4 + 64) = 0;
        *(v4 + 76) = 0;
        v2 = *(a1 + 192);
      }
    }

    *(a1 + 128) = 0;
    *(a1 + 152) = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(a1 + 184) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    if ((v2 & 0x200000) != 0)
    {
      v5 = *(a1 + 176);
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
  }

  sub_1003C79DC(a1 + 8);
  sub_1003C79DC(a1 + 56);
  result = sub_1003C79DC(a1 + 80);
  *(a1 + 144) = 0;
  *(a1 + 192) = 0;
  return result;
}

uint64_t sub_1003A7190(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
LABEL_1:
  while (2)
  {
    v5 = *(this + 1);
    if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
      *(this + 1) = v5 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v7 != 2)
        {
          goto LABEL_74;
        }

        while (1)
        {
          v8 = *(a1 + 20);
          v9 = *(a1 + 16);
          if (v9 >= v8)
          {
            if (v8 == *(a1 + 24))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 8), v8 + 1);
              v8 = *(a1 + 20);
            }

            *(a1 + 20) = v8 + 1;
            operator new();
          }

          v10 = *(a1 + 8);
          *(a1 + 16) = v9 + 1;
          v11 = *(v10 + 8 * v9);
          v124[0] = 0;
          v12 = *(this + 1);
          if (v12 >= *(this + 2) || *v12 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124))
            {
              return 0;
            }
          }

          else
          {
            v124[0] = *v12;
            *(this + 1) = v12 + 1;
          }

          v13 = *(this + 14);
          v14 = *(this + 15);
          *(this + 14) = v13 + 1;
          if (v13 >= v14)
          {
            return 0;
          }

          v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v124[0]);
          if (!sub_1003A14A8(v11, this, v16) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v15);
          v17 = *(this + 14);
          v18 = __OFSUB__(v17, 1);
          v19 = v17 - 1;
          if (v19 < 0 == v18)
          {
            *(this + 14) = v19;
          }

          v21 = *(this + 1);
          v20 = *(this + 2);
          if (v21 >= v20)
          {
            goto LABEL_1;
          }

          v22 = *v21;
          if (v22 != 10)
          {
            break;
          }

          *(this + 1) = v21 + 1;
        }

        if (v22 != 16)
        {
          continue;
        }

        v23 = (v21 + 1);
        *(this + 1) = v23;
        goto LABEL_50;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_74;
        }

        v23 = *(this + 1);
        v20 = *(this + 2);
LABEL_50:
        if (v23 >= v20 || (v40 = *v23, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
          if (!result)
          {
            return result;
          }

          v41 = *(this + 1);
          v20 = *(this + 2);
        }

        else
        {
          *(a1 + 32) = v40;
          v41 = v23 + 1;
          *(this + 1) = v41;
        }

        *(a1 + 192) |= 2u;
        if (v41 >= v20 || *v41 != 25)
        {
          continue;
        }

        *(this + 1) = v41 + 1;
LABEL_84:
        *v124 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v124) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = *v124;
        *(a1 + 192) |= 4u;
        v51 = *(this + 1);
        v36 = *(this + 2);
        if (v51 >= v36 || *v51 != 32)
        {
          continue;
        }

        v37 = v51 + 1;
        *(this + 1) = v37;
LABEL_88:
        v124[0] = 0;
        if (v37 >= v36 || (v52 = *v37, (v52 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124);
          if (!result)
          {
            return result;
          }

          v52 = v124[0];
        }

        else
        {
          *(this + 1) = v37 + 1;
        }

        if (v52 <= 5)
        {
          *(a1 + 192) |= 8u;
          *(a1 + 48) = v52;
        }

        v53 = *(this + 1);
        v29 = *(this + 2);
        if (v53 >= v29 || *v53 != 40)
        {
          continue;
        }

        v30 = v53 + 1;
        *(this + 1) = v30;
LABEL_98:
        v124[0] = 0;
        if (v30 >= v29 || (v54 = *v30, (v54 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124);
          if (!result)
          {
            return result;
          }

          v54 = v124[0];
        }

        else
        {
          *(this + 1) = v30 + 1;
        }

        if (v54 <= 3)
        {
          *(a1 + 192) |= 0x10u;
          *(a1 + 52) = v54;
        }

        v55 = *(this + 1);
        if (v55 >= *(this + 2) || *v55 != 50)
        {
          continue;
        }

        do
        {
          *(this + 1) = v55 + 1;
LABEL_108:
          v56 = *(a1 + 68);
          v57 = *(a1 + 64);
          if (v57 >= v56)
          {
            if (v56 == *(a1 + 72))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 56), v56 + 1);
              v56 = *(a1 + 68);
            }

            *(a1 + 68) = v56 + 1;
            operator new();
          }

          v58 = *(a1 + 56);
          *(a1 + 64) = v57 + 1;
          v59 = *(v58 + 8 * v57);
          v124[0] = 0;
          v60 = *(this + 1);
          if (v60 >= *(this + 2) || *v60 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124))
            {
              return 0;
            }
          }

          else
          {
            v124[0] = *v60;
            *(this + 1) = v60 + 1;
          }

          v61 = *(this + 14);
          v62 = *(this + 15);
          *(this + 14) = v61 + 1;
          if (v61 >= v62)
          {
            return 0;
          }

          v63 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v124[0]);
          if (!sub_1003A2214(v59, this, v64) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v63);
          v65 = *(this + 14);
          v18 = __OFSUB__(v65, 1);
          v66 = v65 - 1;
          if (v66 < 0 == v18)
          {
            *(this + 14) = v66;
          }

          v55 = *(this + 1);
          if (v55 >= *(this + 2))
          {
            goto LABEL_1;
          }

          v67 = *v55;
        }

        while (v67 == 50);
        if (v67 != 58)
        {
          continue;
        }

        do
        {
          *(this + 1) = v55 + 1;
LABEL_126:
          v68 = *(a1 + 92);
          v69 = *(a1 + 88);
          if (v69 >= v68)
          {
            if (v68 == *(a1 + 96))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 80), v68 + 1);
              v68 = *(a1 + 92);
            }

            *(a1 + 92) = v68 + 1;
            operator new();
          }

          v70 = *(a1 + 80);
          *(a1 + 88) = v69 + 1;
          v71 = *(v70 + 8 * v69);
          v124[0] = 0;
          v72 = *(this + 1);
          if (v72 >= *(this + 2) || *v72 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124))
            {
              return 0;
            }
          }

          else
          {
            v124[0] = *v72;
            *(this + 1) = v72 + 1;
          }

          v73 = *(this + 14);
          v74 = *(this + 15);
          *(this + 14) = v73 + 1;
          if (v73 >= v74)
          {
            return 0;
          }

          v75 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v124[0]);
          if (!sub_1003A2B14(v71, this, v76) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v75);
          v77 = *(this + 14);
          v18 = __OFSUB__(v77, 1);
          v78 = v77 - 1;
          if (v78 < 0 == v18)
          {
            *(this + 14) = v78;
          }

          v55 = *(this + 1);
          v38 = *(this + 2);
          if (v55 >= v38)
          {
            goto LABEL_1;
          }

          v79 = *v55;
        }

        while (v79 == 58);
        if (v79 != 64)
        {
          continue;
        }

        v39 = v55 + 1;
        *(this + 1) = v39;
LABEL_144:
        v124[0] = 0;
        if (v39 >= v38 || (v80 = *v39, (v80 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124);
          if (!result)
          {
            return result;
          }

          v80 = v124[0];
          v81 = *(this + 1);
          v38 = *(this + 2);
        }

        else
        {
          v81 = v39 + 1;
          *(this + 1) = v81;
        }

        *(a1 + 104) = v80 != 0;
        v48 = *(a1 + 192) | 0x80;
        *(a1 + 192) = v48;
        if (v81 >= v38 || *v81 != 74)
        {
          continue;
        }

        *(this + 1) = v81 + 1;
LABEL_152:
        *(a1 + 192) = v48 | 0x100;
        v82 = *(a1 + 112);
        if (!v82)
        {
          operator new();
        }

        v124[0] = 0;
        v83 = *(this + 1);
        if (v83 >= *(this + 2) || *v83 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124))
          {
            return 0;
          }
        }

        else
        {
          v124[0] = *v83;
          *(this + 1) = v83 + 1;
        }

        v84 = *(this + 14);
        v85 = *(this + 15);
        *(this + 14) = v84 + 1;
        if (v84 >= v85)
        {
          return 0;
        }

        v86 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v124[0]);
        if (!sub_1003A3C10(v82, this, v87) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v86);
        v88 = *(this + 14);
        v18 = __OFSUB__(v88, 1);
        v89 = v88 - 1;
        if (v89 < 0 == v18)
        {
          *(this + 14) = v89;
        }

        v90 = *(this + 1);
        v33 = *(this + 2);
        if (v90 >= v33 || *v90 != 80)
        {
          continue;
        }

        v34 = v90 + 1;
        *(this + 1) = v34;
LABEL_166:
        if (v34 >= v33 || (v91 = *v34, v91 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 108));
          if (!result)
          {
            return result;
          }

          v92 = *(this + 1);
          v33 = *(this + 2);
        }

        else
        {
          *(a1 + 108) = v91;
          v92 = v34 + 1;
          *(this + 1) = v92;
        }

        v47 = *(a1 + 192) | 0x200;
        *(a1 + 192) = v47;
        if (v92 >= v33 || *v92 != 90)
        {
          continue;
        }

        *(this + 1) = v92 + 1;
LABEL_174:
        *(a1 + 192) = v47 | 0x400;
        v93 = *(a1 + 120);
        if (!v93)
        {
          operator new();
        }

        v124[0] = 0;
        v94 = *(this + 1);
        if (v94 >= *(this + 2) || *v94 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124))
          {
            return 0;
          }
        }

        else
        {
          v124[0] = *v94;
          *(this + 1) = v94 + 1;
        }

        v95 = *(this + 14);
        v96 = *(this + 15);
        *(this + 14) = v95 + 1;
        if (v95 >= v96)
        {
          return 0;
        }

        v97 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v124[0]);
        if (!sub_1003A5F6C(v93, this, v98) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v97);
        v99 = *(this + 14);
        v18 = __OFSUB__(v99, 1);
        v100 = v99 - 1;
        if (v100 < 0 == v18)
        {
          *(this + 14) = v100;
        }

        v101 = *(this + 1);
        v27 = *(this + 2);
        if (v101 < v27 && *v101 == 96)
        {
          v28 = v101 + 1;
          *(this + 1) = v28;
LABEL_188:
          v124[0] = 0;
          if (v28 >= v27 || (v102 = *v28, (v102 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124);
            if (!result)
            {
              return result;
            }

            v102 = v124[0];
          }

          else
          {
            *(this + 1) = v28 + 1;
          }

          if (v102 <= 3)
          {
            *(a1 + 192) |= 0x800u;
            *(a1 + 128) = v102;
          }

          v103 = *(this + 1);
          v31 = *(this + 2);
          if (v103 < v31 && *v103 == 104)
          {
            v32 = v103 + 1;
            *(this + 1) = v32;
LABEL_198:
            v124[0] = 0;
            if (v32 >= v31 || (v104 = *v32, (v104 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124);
              if (!result)
              {
                return result;
              }

              v104 = v124[0];
            }

            else
            {
              *(this + 1) = v32 + 1;
            }

            if (v104 <= 3)
            {
              *(a1 + 192) |= 0x1000u;
              *(a1 + 132) = v104;
            }

            v105 = *(this + 1);
            v24 = *(this + 2);
            if (v105 < v24)
            {
              v106 = *v105;
              goto LABEL_207;
            }
          }
        }

        continue;
      case 3u:
        if (v7 == 1)
        {
          goto LABEL_84;
        }

        goto LABEL_74;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_74;
        }

        v37 = *(this + 1);
        v36 = *(this + 2);
        goto LABEL_88;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_74;
        }

        v30 = *(this + 1);
        v29 = *(this + 2);
        goto LABEL_98;
      case 6u:
        if (v7 == 2)
        {
          goto LABEL_108;
        }

        goto LABEL_74;
      case 7u:
        if (v7 == 2)
        {
          goto LABEL_126;
        }

        goto LABEL_74;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_74;
        }

        v39 = *(this + 1);
        v38 = *(this + 2);
        goto LABEL_144;
      case 9u:
        if (v7 != 2)
        {
          goto LABEL_74;
        }

        v48 = *(a1 + 192);
        goto LABEL_152;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_74;
        }

        v34 = *(this + 1);
        v33 = *(this + 2);
        goto LABEL_166;
      case 0xBu:
        if (v7 != 2)
        {
          goto LABEL_74;
        }

        v47 = *(a1 + 192);
        goto LABEL_174;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_74;
        }

        v28 = *(this + 1);
        v27 = *(this + 2);
        goto LABEL_188;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_74;
        }

        v32 = *(this + 1);
        v31 = *(this + 2);
        goto LABEL_198;
      case 0xEu:
        if ((TagFallback & 7) == 0)
        {
          v50 = *(this + 1);
          v24 = *(this + 2);
          while (1)
          {
            v124[0] = 0;
            if (v50 >= v24 || (v107 = *v50, (v107 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124);
              if (!result)
              {
                return result;
              }

              v107 = v124[0];
            }

            else
            {
              *(this + 1) = v50 + 1;
            }

            if (v107 <= 8)
            {
              v108 = *(a1 + 144);
              if (v108 == *(a1 + 148))
              {
                sub_1003945DC(a1 + 136, v108 + 1);
                v108 = *(a1 + 144);
              }

              v109 = *(a1 + 136);
              *(a1 + 144) = v108 + 1;
              *(v109 + 4 * v108) = v107;
            }

LABEL_218:
            v105 = *(this + 1);
            v24 = *(this + 2);
            if (v105 >= v24)
            {
              goto LABEL_1;
            }

            v106 = *v105;
            if (v106 == 120)
            {
              break;
            }

LABEL_207:
            if (v106 != 112)
            {
              goto LABEL_1;
            }

            v50 = (v105 + 1);
            *(this + 1) = v50;
          }

          v26 = (v105 + 1);
          *(this + 1) = v26;
LABEL_221:
          if (v26 >= v24 || (v110 = *v26, v110 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 152));
            if (!result)
            {
              return result;
            }

            v111 = *(this + 1);
            v24 = *(this + 2);
          }

          else
          {
            *(a1 + 152) = v110;
            v111 = (v26 + 1);
            *(this + 1) = v111;
          }

          *(a1 + 192) |= 0x4000u;
          if (v24 - v111 >= 2 && *v111 == 128 && v111[1] == 1)
          {
            v35 = (v111 + 2);
            *(this + 1) = v35;
LABEL_230:
            if (v35 >= v24 || (v112 = *v35, v112 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 156));
              if (!result)
              {
                return result;
              }

              v113 = *(this + 1);
              v24 = *(this + 2);
            }

            else
            {
              *(a1 + 156) = v112;
              v113 = (v35 + 1);
              *(this + 1) = v113;
            }

            *(a1 + 192) |= 0x8000u;
            if (v24 - v113 >= 2 && *v113 == 136 && v113[1] == 1)
            {
              v25 = (v113 + 2);
              *(this + 1) = v25;
LABEL_239:
              if (v25 >= v24 || (v114 = *v25, v114 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 160));
                if (!result)
                {
                  return result;
                }

                v115 = *(this + 1);
                v24 = *(this + 2);
              }

              else
              {
                *(a1 + 160) = v114;
                v115 = (v25 + 1);
                *(this + 1) = v115;
              }

              *(a1 + 192) |= 0x10000u;
              if (v24 - v115 >= 2 && *v115 == 144 && v115[1] == 1)
              {
                v42 = (v115 + 2);
                *(this + 1) = v42;
LABEL_248:
                if (v42 >= v24 || (v116 = *v42, v116 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 164));
                  if (!result)
                  {
                    return result;
                  }

                  v117 = *(this + 1);
                  v24 = *(this + 2);
                }

                else
                {
                  *(a1 + 164) = v116;
                  v117 = (v42 + 1);
                  *(this + 1) = v117;
                }

                *(a1 + 192) |= 0x20000u;
                if (v24 - v117 >= 2 && *v117 == 152 && v117[1] == 1)
                {
                  v46 = (v117 + 2);
                  *(this + 1) = v46;
LABEL_257:
                  if (v46 >= v24 || (v118 = *v46, v118 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 168));
                    if (!result)
                    {
                      return result;
                    }

                    v119 = *(this + 1);
                    v24 = *(this + 2);
                  }

                  else
                  {
                    *(a1 + 168) = v118;
                    v119 = (v46 + 1);
                    *(this + 1) = v119;
                  }

                  *(a1 + 192) |= 0x40000u;
                  if (v24 - v119 >= 2 && *v119 == 160 && v119[1] == 1)
                  {
                    v49 = (v119 + 2);
                    *(this + 1) = v49;
LABEL_266:
                    if (v49 >= v24 || (v120 = *v49, v120 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 172));
                      if (!result)
                      {
                        return result;
                      }

                      v121 = *(this + 1);
                      v24 = *(this + 2);
                    }

                    else
                    {
                      *(a1 + 172) = v120;
                      v121 = (v49 + 1);
                      *(this + 1) = v121;
                    }

                    *(a1 + 192) |= 0x80000u;
                    if (v24 - v121 >= 2 && *v121 == 168 && v121[1] == 1)
                    {
                      v43 = (v121 + 2);
                      *(this + 1) = v43;
LABEL_275:
                      if (v43 >= v24 || (v122 = *v43, v122 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 184));
                        if (!result)
                        {
                          return result;
                        }

                        v123 = *(this + 1);
                        v24 = *(this + 2);
                      }

                      else
                      {
                        *(a1 + 184) = v122;
                        v123 = (v43 + 1);
                        *(this + 1) = v123;
                      }

                      v44 = *(a1 + 192) | 0x100000;
                      *(a1 + 192) = v44;
                      if (v24 - v123 >= 2 && *v123 == 178 && v123[1] == 1)
                      {
                        *(this + 1) = v123 + 2;
LABEL_284:
                        *(a1 + 192) = v44 | 0x200000;
                        if (*(a1 + 176) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                        {
                          operator new();
                        }

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
                    }
                  }
                }
              }
            }
          }

          continue;
        }

        if (v7 != 2)
        {
LABEL_74:
          if (v7 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedEnumNoInline();
        if (result)
        {
          goto LABEL_218;
        }

        return result;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_74;
        }

        v26 = *(this + 1);
        v24 = *(this + 2);
        goto LABEL_221;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_74;
        }

        v35 = *(this + 1);
        v24 = *(this + 2);
        goto LABEL_230;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_74;
        }

        v25 = *(this + 1);
        v24 = *(this + 2);
        goto LABEL_239;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_74;
        }

        v42 = *(this + 1);
        v24 = *(this + 2);
        goto LABEL_248;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_74;
        }

        v46 = *(this + 1);
        v24 = *(this + 2);
        goto LABEL_257;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_74;
        }

        v49 = *(this + 1);
        v24 = *(this + 2);
        goto LABEL_266;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_74;
        }

        v43 = *(this + 1);
        v24 = *(this + 2);
        goto LABEL_275;
      case 0x16u:
        if (v7 != 2)
        {
          goto LABEL_74;
        }

        v44 = *(a1 + 192);
        goto LABEL_284;
      default:
        goto LABEL_74;
    }
  }
}

uint64_t sub_1003A8140(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 16) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  v7 = *(v5 + 192);
  if ((v7 & 2) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 32), a2, a4);
    v7 = *(v5 + 192);
    if ((v7 & 4) == 0)
    {
LABEL_6:
      if ((v7 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_36;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_6;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 40), a3);
  v7 = *(v5 + 192);
  if ((v7 & 8) == 0)
  {
LABEL_7:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_36:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 48), a2, a4);
  if ((*(v5 + 192) & 0x10) != 0)
  {
LABEL_8:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 52), a2, a4);
  }

LABEL_9:
  if (*(v5 + 64) >= 1)
  {
    v8 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, *(*(v5 + 56) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 64));
  }

  if (*(v5 + 88) >= 1)
  {
    v9 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, *(*(v5 + 80) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 88));
  }

  v10 = *(v5 + 192);
  if ((v10 & 0x80) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 104), a2, a4);
    v10 = *(v5 + 192);
    if ((v10 & 0x100) == 0)
    {
LABEL_17:
      if ((v10 & 0x200) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_42;
    }
  }

  else if ((v10 & 0x100) == 0)
  {
    goto LABEL_17;
  }

  v13 = *(v5 + 112);
  if (!v13)
  {
    v13 = *(qword_102635F50 + 112);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v13, a2, a4);
  v10 = *(v5 + 192);
  if ((v10 & 0x200) == 0)
  {
LABEL_18:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 108), a2, a4);
  v10 = *(v5 + 192);
  if ((v10 & 0x400) == 0)
  {
LABEL_19:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_43:
  v14 = *(v5 + 120);
  if (!v14)
  {
    v14 = *(qword_102635F50 + 120);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v14, a2, a4);
  v10 = *(v5 + 192);
  if ((v10 & 0x800) == 0)
  {
LABEL_20:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_46:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, *(v5 + 128), a2, a4);
  if ((*(v5 + 192) & 0x1000) != 0)
  {
LABEL_21:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xD, *(v5 + 132), a2, a4);
  }

LABEL_22:
  if (*(v5 + 144) >= 1)
  {
    v11 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xE, *(*(v5 + 136) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 144));
  }

  v12 = *(v5 + 192);
  if ((v12 & 0x4000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 152), a2, a4);
    v12 = *(v5 + 192);
    if ((v12 & 0x8000) == 0)
    {
LABEL_27:
      if ((v12 & 0x10000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_50;
    }
  }

  else if ((v12 & 0x8000) == 0)
  {
    goto LABEL_27;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 156), a2, a4);
  v12 = *(v5 + 192);
  if ((v12 & 0x10000) == 0)
  {
LABEL_28:
    if ((v12 & 0x20000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 160), a2, a4);
  v12 = *(v5 + 192);
  if ((v12 & 0x20000) == 0)
  {
LABEL_29:
    if ((v12 & 0x40000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 164), a2, a4);
  v12 = *(v5 + 192);
  if ((v12 & 0x40000) == 0)
  {
LABEL_30:
    if ((v12 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 168), a2, a4);
  v12 = *(v5 + 192);
  if ((v12 & 0x80000) == 0)
  {
LABEL_31:
    if ((v12 & 0x100000) == 0)
    {
      goto LABEL_32;
    }

LABEL_54:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 184), a2, a4);
    if ((*(v5 + 192) & 0x200000) == 0)
    {
      return result;
    }

    goto LABEL_55;
  }

LABEL_53:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 172), a2, a4);
  v12 = *(v5 + 192);
  if ((v12 & 0x100000) != 0)
  {
    goto LABEL_54;
  }

LABEL_32:
  if ((v12 & 0x200000) == 0)
  {
    return result;
  }

LABEL_55:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t sub_1003A846C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 192);
  if ((v3 & 0x1FE) != 0)
  {
    if ((v3 & 2) != 0)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32), a2) + 1;
      v3 = *(a1 + 192);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 4) != 0)
    {
      v6 = v4 + 9;
    }

    else
    {
      v6 = v4;
    }

    if ((v3 & 8) != 0)
    {
      v7 = *(a1 + 48);
      if ((v7 & 0x80000000) != 0)
      {
        v8 = 11;
      }

      else if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
        v3 = *(a1 + 192);
      }

      else
      {
        v8 = 2;
      }

      v6 += v8;
    }

    if ((v3 & 0x10) != 0)
    {
      v9 = *(a1 + 52);
      if ((v9 & 0x80000000) != 0)
      {
        v10 = 11;
      }

      else if (v9 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
        v3 = *(a1 + 192);
      }

      else
      {
        v10 = 2;
      }

      v6 += v10;
    }

    v5 = ((v3 >> 6) & 2) + v6;
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_69;
  }

  if ((v3 & 0x100) != 0)
  {
    v11 = *(a1 + 112);
    if (!v11)
    {
      v11 = *(qword_102635F50 + 112);
    }

    v12 = sub_1003A3EA8(v11, a2);
    v13 = v12;
    if (v12 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
    }

    else
    {
      v14 = 1;
    }

    v5 += v13 + v14 + 1;
    v3 = *(a1 + 192);
    if ((v3 & 0x200) == 0)
    {
LABEL_27:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_43;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_27;
  }

  v15 = *(a1 + 108);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
    v3 = *(a1 + 192);
  }

  else
  {
    v16 = 2;
  }

  v5 += v16;
  if ((v3 & 0x400) == 0)
  {
LABEL_28:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_49;
  }

LABEL_43:
  v17 = *(a1 + 120);
  if (!v17)
  {
    v17 = *(qword_102635F50 + 120);
  }

  v18 = sub_1003A6408(v17, a2);
  v19 = v18;
  if (v18 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
  }

  else
  {
    v20 = 1;
  }

  v5 += v19 + v20 + 1;
  v3 = *(a1 + 192);
  if ((v3 & 0x800) == 0)
  {
LABEL_29:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_30;
    }

LABEL_55:
    v23 = *(a1 + 132);
    if ((v23 & 0x80000000) != 0)
    {
      v24 = 11;
    }

    else if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2) + 1;
      v3 = *(a1 + 192);
    }

    else
    {
      v24 = 2;
    }

    v5 += v24;
    if ((v3 & 0x4000) == 0)
    {
LABEL_31:
      if ((v3 & 0x8000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_65;
    }

    goto LABEL_61;
  }

LABEL_49:
  v21 = *(a1 + 128);
  if ((v21 & 0x80000000) != 0)
  {
    v22 = 11;
  }

  else if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 1;
    v3 = *(a1 + 192);
  }

  else
  {
    v22 = 2;
  }

  v5 += v22;
  if ((v3 & 0x1000) != 0)
  {
    goto LABEL_55;
  }

LABEL_30:
  if ((v3 & 0x4000) == 0)
  {
    goto LABEL_31;
  }

LABEL_61:
  v25 = *(a1 + 152);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2) + 1;
    v3 = *(a1 + 192);
  }

  else
  {
    v26 = 2;
  }

  v5 += v26;
  if ((v3 & 0x8000) != 0)
  {
LABEL_65:
    v27 = *(a1 + 156);
    if (v27 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, a2) + 2;
      v3 = *(a1 + 192);
    }

    else
    {
      v28 = 3;
    }

    v5 += v28;
  }

LABEL_69:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_106;
  }

  if ((v3 & 0x10000) != 0)
  {
    v29 = *(a1 + 160);
    if (v29 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2) + 2;
      v3 = *(a1 + 192);
    }

    else
    {
      v30 = 3;
    }

    v5 += v30;
    if ((v3 & 0x20000) == 0)
    {
LABEL_72:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_85;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_72;
  }

  v31 = *(a1 + 164);
  if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31, a2) + 2;
    v3 = *(a1 + 192);
  }

  else
  {
    v32 = 3;
  }

  v5 += v32;
  if ((v3 & 0x40000) == 0)
  {
LABEL_73:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_89;
  }

LABEL_85:
  v33 = *(a1 + 168);
  if (v33 >= 0x80)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33, a2) + 2;
    v3 = *(a1 + 192);
  }

  else
  {
    v34 = 3;
  }

  v5 += v34;
  if ((v3 & 0x80000) == 0)
  {
LABEL_74:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_75;
    }

LABEL_93:
    v37 = *(a1 + 184);
    if (v37 >= 0x80)
    {
      v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37, a2) + 2;
      v3 = *(a1 + 192);
    }

    else
    {
      v38 = 3;
    }

    v5 += v38;
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_97;
  }

LABEL_89:
  v35 = *(a1 + 172);
  if (v35 >= 0x80)
  {
    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35, a2) + 2;
    v3 = *(a1 + 192);
  }

  else
  {
    v36 = 3;
  }

  v5 += v36;
  if ((v3 & 0x100000) != 0)
  {
    goto LABEL_93;
  }

LABEL_75:
  if ((v3 & 0x200000) == 0)
  {
    goto LABEL_106;
  }

LABEL_97:
  v39 = *(a1 + 176);
  v40 = *(v39 + 23);
  v41 = v40;
  v42 = *(v39 + 8);
  if ((v40 & 0x80u) == 0)
  {
    v43 = *(v39 + 23);
  }

  else
  {
    v43 = v42;
  }

  if (v43 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43, a2);
    v40 = *(v39 + 23);
    v42 = *(v39 + 8);
    v41 = *(v39 + 23);
  }

  else
  {
    v44 = 1;
  }

  if (v41 < 0)
  {
    v40 = v42;
  }

  v5 += v44 + v40 + 2;
LABEL_106:
  v45 = *(a1 + 16);
  v46 = v45 + v5;
  if (v45 >= 1)
  {
    v47 = 0;
    do
    {
      v48 = sub_1003A1D34(*(*(a1 + 8) + 8 * v47), a2);
      v49 = v48;
      if (v48 >= 0x80)
      {
        v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48, a2);
      }

      else
      {
        v50 = 1;
      }

      v46 += v49 + v50;
      ++v47;
    }

    while (v47 < *(a1 + 16));
  }

  v51 = *(a1 + 64);
  v52 = v51 + v46;
  if (v51 >= 1)
  {
    v53 = 0;
    do
    {
      v54 = sub_1003A2478(*(*(a1 + 56) + 8 * v53), a2);
      v55 = v54;
      if (v54 >= 0x80)
      {
        v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54, a2);
      }

      else
      {
        v56 = 1;
      }

      v52 += v55 + v56;
      ++v53;
    }

    while (v53 < *(a1 + 64));
  }

  v57 = *(a1 + 88);
  v58 = v57 + v52;
  if (v57 >= 1)
  {
    v59 = 0;
    do
    {
      v60 = sub_1003A3018(*(*(a1 + 80) + 8 * v59), a2);
      v61 = v60;
      if (v60 >= 0x80)
      {
        v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60, a2);
      }

      else
      {
        v62 = 1;
      }

      v58 += v61 + v62;
      ++v59;
    }

    while (v59 < *(a1 + 88));
  }

  v63 = *(a1 + 144);
  if (v63 < 1)
  {
    v65 = 0;
  }

  else
  {
    v64 = 0;
    v65 = 0;
    do
    {
      v66 = *(*(a1 + 136) + 4 * v64);
      if ((v66 & 0x80000000) != 0)
      {
        v67 = 10;
      }

      else if (v66 >= 0x80)
      {
        v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66, a2);
        v63 = *(a1 + 144);
      }

      else
      {
        v67 = 1;
      }

      v65 += v67;
      ++v64;
    }

    while (v64 < v63);
  }

  result = (v65 + v58 + v63);
  *(a1 + 188) = result;
  return result;
}

void sub_1003A8974(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003A6604(a1, lpsrc);
}

uint64_t sub_1003A8A14(uint64_t a1, _BYTE *a2)
{
  *a1 = off_102447EE0;
  *(a1 + 12) = 0;
  *(a1 + 8) = 0;
  sub_1003A8A74(a1, a2);
  return a1;
}

void sub_1003A8A74(uint64_t a1, _BYTE *a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = a2[16];
  if (v4)
  {
    if (a2[16])
    {
      v5 = a2[8];
      *(a1 + 16) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 4);
    }

    if ((v4 & 2) != 0)
    {
      v6 = a2[9];
      *(a1 + 16) |= 2u;
      *(a1 + 9) = v6;
    }
  }
}

void sub_1003A8B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003A8B5C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102447EE0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003A8C00(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_1003A8C14(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
        *(this + 1) = v5 + 1;
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
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v16);
        if (!result)
        {
          return result;
        }

        v9 = v16;
        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      *(a1 + 8) = v9 != 0;
      *(a1 + 16) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(this + 1) = v11;
LABEL_22:
        v15 = 0;
        if (v11 >= v7 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v15);
          if (!result)
          {
            return result;
          }

          v12 = v15;
          v13 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          v13 = v11 + 1;
          *(this + 1) = v13;
        }

        *(a1 + 9) = v12 != 0;
        *(a1 + 16) |= 2u;
        if (v13 == v7 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
      v7 = *(this + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1003A8DB8(uint64_t result, BOOL a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 16);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
    v6 = *(v5 + 16);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 9);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_1003A8E24(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = 2 * (*(a1 + 16) & 1) + (*(a1 + 16) & 2u);
  }

  else
  {
    v1 = 0;
  }

  *(a1 + 12) = v1;
  return v1;
}

void sub_1003A8E48(uint64_t a1, _BYTE *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003A8A74(a1, lpsrc);
}

void sub_1003A8ED0(uint64_t a1, _BYTE *a2)
{
  if (a2 != a1)
  {
    (*(*a1 + 32))(a1);

    sub_1003A8A74(a1, a2);
  }
}

void sub_1003A8F54(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      v5 = *(a2 + 8);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        sub_101871FE0();
      }

      *(a1 + 44) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 44);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      if ((v6 - 1) >= 4)
      {
        sub_10187200C();
      }

      *(a1 + 44) |= 2u;
      *(a1 + 12) = v6;
      v4 = *(a2 + 44);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 16);
      *(a1 + 44) |= 4u;
      v8 = *(a1 + 16);
      if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v4 = *(a2 + 44);
      if ((v4 & 8) == 0)
      {
LABEL_14:
        if ((v4 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_22;
      }
    }

    else if ((v4 & 8) == 0)
    {
      goto LABEL_14;
    }

    v9 = *(a2 + 24);
    *(a1 + 44) |= 8u;
    v10 = *(a1 + 24);
    if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    if ((*(a2 + 44) & 0x10) != 0)
    {
LABEL_22:
      v11 = *(a2 + 32);
      *(a1 + 44) |= 0x10u;
      v12 = *(a1 + 32);
      if (v12 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v12, v11);
    }
  }
}

void sub_1003A9158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1003A9170(void *result)
{
  v1 = result[2];
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = result[3];
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  v5 = result[4];
  if (v5 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete();
  }

  return result;
}

void sub_1003A9250(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102447F58;
  sub_1003A9170(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003A92A4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102447F58;
  sub_1003A9170(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003A936C(uint64_t result)
{
  v1 = *(result + 44);
  if (v1)
  {
    *(result + 8) = 0x100000001;
    if ((v1 & 4) != 0)
    {
      v2 = *(result + 16);
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

    if ((*(result + 44) & 8) != 0)
    {
      v3 = *(result + 24);
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

    if ((*(result + 44) & 0x10) != 0)
    {
      v4 = *(result + 32);
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
  }

  *(result + 44) = 0;
  return result;
}

uint64_t sub_1003A9424(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v10 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_39;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v20 = 0;
        v11 = *(this + 1);
        if (v11 >= *(this + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20);
          if (!result)
          {
            return result;
          }

          v12 = v20;
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (v12 - 31 < 0x19 || v12 <= 0xE && ((1 << v12) & 0x76B6) != 0)
        {
          if (v12 - 31 >= 0x19 && (v12 > 0xE || ((1 << v12) & 0x76B6) == 0))
          {
            sub_101871FE0();
          }

          *(a1 + 44) |= 1u;
          *(a1 + 8) = v12;
        }

        v13 = *(this + 1);
        v9 = *(this + 2);
        if (v13 < v9 && *v13 == 16)
        {
          v10 = v13 + 1;
          *(this + 1) = v10;
LABEL_39:
          v19 = 0;
          if (v10 >= v9 || (v14 = *v10, (v14 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v19);
            if (!result)
            {
              return result;
            }

            v14 = v19;
          }

          else
          {
            *(this + 1) = v10 + 1;
          }

          if (v14 - 1 <= 3)
          {
            *(a1 + 44) |= 2u;
            *(a1 + 12) = v14;
          }

          v15 = *(this + 1);
          if (v15 < *(this + 2) && *v15 == 26)
          {
            *(this + 1) = v15 + 1;
LABEL_49:
            *(a1 + 44) |= 4u;
            if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v16 = *(this + 1);
            if (v16 < *(this + 2) && *v16 == 34)
            {
              *(this + 1) = v16 + 1;
              goto LABEL_55;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 2)
        {
          goto LABEL_21;
        }

        goto LABEL_49;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_21;
      }

LABEL_55:
      *(a1 + 44) |= 8u;
      if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v17 = *(this + 1);
      if (v17 < *(this + 2) && *v17 == 42)
      {
        *(this + 1) = v17 + 1;
LABEL_61:
        *(a1 + 44) |= 0x10u;
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

    if (v7 == 5 && v8 == 2)
    {
      goto LABEL_61;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1003A9798(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 44);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 44) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 44);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t sub_1003A985C(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_50;
  }

  if (*(a1 + 44))
  {
    v5 = *(a1 + 8);
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
      v3 = *(a1 + 44);
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
    if ((*(a1 + 44) & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v6 = *(a1 + 12);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 44);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    v9 = *(v8 + 23);
    v10 = v9;
    v11 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v12 = *(v8 + 23);
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
      v9 = *(v8 + 23);
      v11 = *(v8 + 8);
      v3 = *(a1 + 44);
      v10 = *(v8 + 23);
    }

    else
    {
      v13 = 1;
    }

    if (v10 < 0)
    {
      v9 = v11;
    }

    v4 = (v4 + v13 + v9 + 1);
    if ((v3 & 8) == 0)
    {
LABEL_21:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_41;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_21;
  }

  v14 = *(a1 + 24);
  v15 = *(v14 + 23);
  v16 = v15;
  v17 = *(v14 + 8);
  if ((v15 & 0x80u) == 0)
  {
    v18 = *(v14 + 23);
  }

  else
  {
    v18 = v17;
  }

  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
    v15 = *(v14 + 23);
    v17 = *(v14 + 8);
    v3 = *(a1 + 44);
    v16 = *(v14 + 23);
  }

  else
  {
    v19 = 1;
  }

  if (v16 < 0)
  {
    v15 = v17;
  }

  v4 = (v4 + v19 + v15 + 1);
  if ((v3 & 0x10) != 0)
  {
LABEL_41:
    v20 = *(a1 + 32);
    v21 = *(v20 + 23);
    v22 = v21;
    v23 = *(v20 + 8);
    if ((v21 & 0x80u) == 0)
    {
      v24 = *(v20 + 23);
    }

    else
    {
      v24 = v23;
    }

    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2);
      v21 = *(v20 + 23);
      v23 = *(v20 + 8);
      v22 = *(v20 + 23);
    }

    else
    {
      v25 = 1;
    }

    if (v22 < 0)
    {
      v21 = v23;
    }

    v4 = (v4 + v25 + v21 + 1);
  }

LABEL_50:
  *(a1 + 40) = v4;
  return v4;
}

void sub_1003A9A24(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003A8F54(a1, lpsrc);
}

void sub_1003A9AC4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      v5 = *(a2 + 8);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        sub_101872038();
      }

      *(a1 + 44) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 44);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      if ((v6 - 1) >= 2)
      {
        sub_101872064();
      }

      *(a1 + 44) |= 2u;
      *(a1 + 12) = v6;
      v4 = *(a2 + 44);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 16);
      *(a1 + 44) |= 4u;
      v8 = *(a1 + 16);
      if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v4 = *(a2 + 44);
      if ((v4 & 8) == 0)
      {
LABEL_14:
        if ((v4 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_22;
      }
    }

    else if ((v4 & 8) == 0)
    {
      goto LABEL_14;
    }

    v9 = *(a2 + 24);
    *(a1 + 44) |= 8u;
    v10 = *(a1 + 24);
    if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    if ((*(a2 + 44) & 0x10) != 0)
    {
LABEL_22:
      v11 = *(a2 + 32);
      *(a1 + 44) |= 0x10u;
      v12 = *(a1 + 32);
      if (v12 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v12, v11);
    }
  }
}

void sub_1003A9CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003A9CE0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102447FD0;
  sub_1003A9170(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003A9D34(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102447FD0;
  sub_1003A9170(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003A9E00(uint64_t result)
{
  v1 = *(result + 44);
  if (v1)
  {
    *(result + 8) = 0x10000000DLL;
    if ((v1 & 4) != 0)
    {
      v2 = *(result + 16);
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

    if ((*(result + 44) & 8) != 0)
    {
      v3 = *(result + 24);
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

    if ((*(result + 44) & 0x10) != 0)
    {
      v4 = *(result + 32);
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
  }

  *(result + 44) = 0;
  return result;
}

uint64_t sub_1003A9EBC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v10 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_39;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v20 = 0;
        v11 = *(this + 1);
        if (v11 >= *(this + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20);
          if (!result)
          {
            return result;
          }

          v12 = v20;
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (v12 - 31 < 0x19 || v12 <= 0xE && ((1 << v12) & 0x76B6) != 0)
        {
          if (v12 - 31 >= 0x19 && (v12 > 0xE || ((1 << v12) & 0x76B6) == 0))
          {
            sub_101872038();
          }

          *(a1 + 44) |= 1u;
          *(a1 + 8) = v12;
        }

        v13 = *(this + 1);
        v9 = *(this + 2);
        if (v13 < v9 && *v13 == 16)
        {
          v10 = v13 + 1;
          *(this + 1) = v10;
LABEL_39:
          v19 = 0;
          if (v10 >= v9 || (v14 = *v10, (v14 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v19);
            if (!result)
            {
              return result;
            }

            v14 = v19;
          }

          else
          {
            *(this + 1) = v10 + 1;
          }

          if (v14 - 1 <= 1)
          {
            *(a1 + 44) |= 2u;
            *(a1 + 12) = v14;
          }

          v15 = *(this + 1);
          if (v15 < *(this + 2) && *v15 == 26)
          {
            *(this + 1) = v15 + 1;
LABEL_49:
            *(a1 + 44) |= 4u;
            if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v16 = *(this + 1);
            if (v16 < *(this + 2) && *v16 == 34)
            {
              *(this + 1) = v16 + 1;
              goto LABEL_55;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 2)
        {
          goto LABEL_21;
        }

        goto LABEL_49;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_21;
      }

LABEL_55:
      *(a1 + 44) |= 8u;
      if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v17 = *(this + 1);
      if (v17 < *(this + 2) && *v17 == 42)
      {
        *(this + 1) = v17 + 1;
LABEL_61:
        *(a1 + 44) |= 0x10u;
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

    if (v7 == 5 && v8 == 2)
    {
      goto LABEL_61;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1003AA230(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 44);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 44) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 44);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t sub_1003AA2F4(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_50;
  }

  if (*(a1 + 44))
  {
    v5 = *(a1 + 8);
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
      v3 = *(a1 + 44);
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
    if ((*(a1 + 44) & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v6 = *(a1 + 12);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 44);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    v9 = *(v8 + 23);
    v10 = v9;
    v11 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v12 = *(v8 + 23);
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
      v9 = *(v8 + 23);
      v11 = *(v8 + 8);
      v3 = *(a1 + 44);
      v10 = *(v8 + 23);
    }

    else
    {
      v13 = 1;
    }

    if (v10 < 0)
    {
      v9 = v11;
    }

    v4 = (v4 + v13 + v9 + 1);
    if ((v3 & 8) == 0)
    {
LABEL_21:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_41;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_21;
  }

  v14 = *(a1 + 24);
  v15 = *(v14 + 23);
  v16 = v15;
  v17 = *(v14 + 8);
  if ((v15 & 0x80u) == 0)
  {
    v18 = *(v14 + 23);
  }

  else
  {
    v18 = v17;
  }

  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
    v15 = *(v14 + 23);
    v17 = *(v14 + 8);
    v3 = *(a1 + 44);
    v16 = *(v14 + 23);
  }

  else
  {
    v19 = 1;
  }

  if (v16 < 0)
  {
    v15 = v17;
  }

  v4 = (v4 + v19 + v15 + 1);
  if ((v3 & 0x10) != 0)
  {
LABEL_41:
    v20 = *(a1 + 32);
    v21 = *(v20 + 23);
    v22 = v21;
    v23 = *(v20 + 8);
    if ((v21 & 0x80u) == 0)
    {
      v24 = *(v20 + 23);
    }

    else
    {
      v24 = v23;
    }

    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2);
      v21 = *(v20 + 23);
      v23 = *(v20 + 8);
      v22 = *(v20 + 23);
    }

    else
    {
      v25 = 1;
    }

    if (v22 < 0)
    {
      v21 = v23;
    }

    v4 = (v4 + v25 + v21 + 1);
  }

LABEL_50:
  *(a1 + 40) = v4;
  return v4;
}

void sub_1003AA4BC(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003A9AC4(a1, lpsrc);
}

void sub_1003AA55C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v5 = *(a2 + 32);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        sub_101872090();
      }

      *(a1 + 40) |= 1u;
      *(a1 + 32) = v5;
      v4 = *(a2 + 40);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 8);
      *(a1 + 40) |= 2u;
      v7 = *(a1 + 8);
      if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v4 = *(a2 + 40);
      if ((v4 & 4) == 0)
      {
LABEL_11:
        if ((v4 & 8) == 0)
        {
          return;
        }

        goto LABEL_21;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

    *(a1 + 40) |= 4u;
    v8 = *(a1 + 16);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 16);
    if (!v9)
    {
      v9 = *(qword_102635F70 + 16);
    }

    sub_1003A8A74(v8, v9);
    if ((*(a2 + 40) & 8) != 0)
    {
LABEL_21:
      v10 = *(a2 + 24);
      *(a1 + 40) |= 8u;
      v11 = *(a1 + 24);
      if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v11, v10);
    }
  }
}

void sub_1003AA748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1003AA760(void *result)
{
  v1 = result[1];
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = result[3];
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  if (qword_102635F70 != result)
  {
    result = result[2];
    if (result)
    {
      v5 = *(*result + 8);

      return v5();
    }
  }

  return result;
}

void sub_1003AA850(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448048;
  sub_1003AA760(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003AA8A4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448048;
  sub_1003AA760(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003AA970(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    *(result + 32) = 2;
    if ((v1 & 2) != 0)
    {
      v2 = *(result + 8);
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

    v3 = *(result + 40);
    if ((v3 & 4) != 0)
    {
      v4 = *(result + 16);
      if (v4)
      {
        if (*(v4 + 16))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 16) = 0;
        v3 = *(result + 40);
      }
    }

    if ((v3 & 8) != 0)
    {
      v5 = *(result + 24);
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
  }

  *(result + 40) = 0;
  return result;
}

uint64_t sub_1003AAA14(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          v5 = *(this + 1);
          if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
            *(this + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 <= 2)
          {
            break;
          }

          if (v7 == 3)
          {
            if (v8 == 2)
            {
              goto LABEL_41;
            }
          }

          else if (v7 == 4 && v8 == 2)
          {
            goto LABEL_55;
          }

LABEL_20:
          if (v8 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
          {
            return 0;
          }
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_20;
        }

        v24 = 0;
        v9 = *(this + 1);
        if (v9 >= *(this + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24);
          if (!result)
          {
            return result;
          }

          v10 = v24;
        }

        else
        {
          *(this + 1) = v9 + 1;
        }

        if (v10 - 31 < 0x19 || v10 <= 0xE && ((1 << v10) & 0x76B6) != 0)
        {
          if (v10 - 31 >= 0x19 && (v10 > 0xE || ((1 << v10) & 0x76B6) == 0))
          {
            sub_101872090();
          }

          *(a1 + 40) |= 1u;
          *(a1 + 32) = v10;
        }

        v12 = *(this + 1);
        if (v12 < *(this + 2) && *v12 == 18)
        {
          *(this + 1) = v12 + 1;
          goto LABEL_35;
        }
      }

      if (v7 != 2 || v8 != 2)
      {
        goto LABEL_20;
      }

LABEL_35:
      *(a1 + 40) |= 2u;
      if (*(a1 + 8) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v13 = *(this + 1);
    }

    while (v13 >= *(this + 2) || *v13 != 26);
    *(this + 1) = v13 + 1;
LABEL_41:
    *(a1 + 40) |= 4u;
    v14 = *(a1 + 16);
    if (!v14)
    {
      operator new();
    }

    v25 = 0;
    v15 = *(this + 1);
    if (v15 >= *(this + 2) || *v15 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25))
      {
        return 0;
      }
    }

    else
    {
      v25 = *v15;
      *(this + 1) = v15 + 1;
    }

    v16 = *(this + 14);
    v17 = *(this + 15);
    *(this + 14) = v16 + 1;
    if (v16 >= v17)
    {
      return 0;
    }

    v18 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v25);
    if (!sub_1003A8C14(v14, this, v19) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v18);
    v20 = *(this + 14);
    v21 = __OFSUB__(v20, 1);
    v22 = v20 - 1;
    if (v22 < 0 == v21)
    {
      *(this + 14) = v22;
    }

    v23 = *(this + 1);
    if (v23 < *(this + 2) && *v23 == 34)
    {
      *(this + 1) = v23 + 1;
LABEL_55:
      *(a1 + 40) |= 8u;
      if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

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
  }
}

uint64_t sub_1003AADC0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 32), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_8:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(qword_102635F70 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
  if ((*(v5 + 40) & 8) != 0)
  {
LABEL_11:

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return result;
}

uint64_t sub_1003AAE78(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_40;
  }

  if (*(a1 + 40))
  {
    v5 = *(a1 + 32);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 40);
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 40) & 2) == 0)
    {
      goto LABEL_22;
    }
  }

  v6 = *(a1 + 8);
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
    v3 = *(a1 + 40);
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
LABEL_22:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_31;
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    v12 = *(qword_102635F70 + 16);
  }

  if (*(v12 + 16))
  {
    v13 = 2 * (*(v12 + 16) & 1) + (*(v12 + 16) & 2);
  }

  else
  {
    v13 = 0;
  }

  *(v12 + 12) = v13;
  v4 = (v4 + v13 + 2);
  if ((*(a1 + 40) & 8) != 0)
  {
LABEL_31:
    v14 = *(a1 + 24);
    v15 = *(v14 + 23);
    v16 = v15;
    v17 = *(v14 + 8);
    if ((v15 & 0x80u) == 0)
    {
      v18 = *(v14 + 23);
    }

    else
    {
      v18 = v17;
    }

    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
      v15 = *(v14 + 23);
      v17 = *(v14 + 8);
      v16 = *(v14 + 23);
    }

    else
    {
      v19 = 1;
    }

    if (v16 < 0)
    {
      v15 = v17;
    }

    v4 = (v4 + v19 + v15 + 1);
  }

LABEL_40:
  *(a1 + 36) = v4;
  return v4;
}

void sub_1003AAFF0(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    (*(*a1 + 32))(a1);

    sub_1003AA55C(a1, a2);
  }
}

void sub_1003AB074(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 16);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        sub_1018720BC();
      }

      *(a1 + 24) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 24);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 8);
      *(a1 + 24) |= 2u;
      v7 = *(a1 + 8);
      if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
    }
  }
}

void sub_1003AB188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003AB1A0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024480C0;
  sub_10000FCA0(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003AB1F4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024480C0;
  sub_10000FCA0(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003AB2BC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *(result + 16) = 4;
    if ((v1 & 2) != 0)
    {
      v2 = *(result + 8);
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

  *(result + 24) = 0;
  return result;
}

uint64_t sub_1003AB30C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 != 2)
        {
          goto LABEL_13;
        }

LABEL_28:
        *(a1 + 24) |= 2u;
        if (*(a1 + 8) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

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

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        break;
      }

      v12 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v12);
        if (!result)
        {
          return result;
        }

        v9 = v12;
      }

      else
      {
        *(this + 1) = v8 + 1;
      }

      if (v9 - 31 < 0x19 || v9 <= 0xE && ((1 << v9) & 0x76B6) != 0)
      {
        if (v9 - 31 >= 0x19 && (v9 > 0xE || ((1 << v9) & 0x76B6) == 0))
        {
          sub_1018720BC();
        }

        *(a1 + 24) |= 1u;
        *(a1 + 16) = v9;
      }

      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 18)
      {
        *(this + 1) = v10 + 1;
        goto LABEL_28;
      }
    }

LABEL_13:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1003AB508(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = result;
  v5 = *(result + 24);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 16), a2, a4);
    v5 = *(v4 + 24);
  }

  if ((v5 & 2) != 0)
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return result;
}

uint64_t sub_1003AB574(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    if (*(a1 + 24))
    {
      v5 = *(a1 + 16);
      if ((v5 & 0x80000000) != 0)
      {
        v4 = 11;
        if ((v3 & 2) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        if ((*(a1 + 24) & 2) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((*(a1 + 24) & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    v6 = *(a1 + 8);
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

LABEL_22:
  *(a1 + 20) = v4;
  return v4;
}

void sub_1003AB64C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003AB074(a1, lpsrc);
}

void sub_1003AB6EC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 8);
    if (v4 - 31 >= 0x19 && (v4 > 0xE || ((1 << v4) & 0x76B6) == 0))
    {
      sub_1018720E8();
    }

    *(a1 + 16) |= 1u;
    *(a1 + 8) = v4;
  }
}

void sub_1003AB7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003AB7DC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448138;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003AB888(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 5;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_1003AB8A0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v12 = 0;
      v7 = *(this + 1);
      if (v7 >= *(this + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v12);
        if (!result)
        {
          return result;
        }

        v8 = v12;
      }

      else
      {
        *(this + 1) = v7 + 1;
      }

      if (v8 - 31 < 0x19 || (v8 <= 0xE ? (v9 = ((1 << v8) & 0x76B6) == 0) : (v9 = 1), !v9))
      {
        if (v8 - 31 >= 0x19 && (v8 > 0xE || ((1 << v8) & 0x76B6) == 0))
        {
          sub_1018720E8();
        }

        *(a1 + 16) |= 1u;
        *(a1 + 8) = v8;
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

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1003ABA00(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
  }

  return result;
}

uint64_t sub_1003ABA1C(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 16))
  {
    v4 = *(a1 + 8);
    if ((v4 & 0x80000000) != 0)
    {
      result = 11;
    }

    else if (v4 >= 0x80)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4, a2) + 1;
    }

    else
    {
      result = 2;
    }
  }

  else
  {
    result = 0;
  }

  *(a1 + 12) = result;
  return result;
}

void sub_1003ABA78(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003AB6EC(a1, lpsrc);
}

void sub_1003ABB18(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v5 = *(a2 + 32);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        sub_101872114();
      }

      *(a1 + 40) |= 1u;
      *(a1 + 32) = v5;
      v4 = *(a2 + 40);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 8);
      *(a1 + 40) |= 2u;
      v7 = *(a1 + 8);
      if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v4 = *(a2 + 40);
      if ((v4 & 4) == 0)
      {
LABEL_11:
        if ((v4 & 8) == 0)
        {
          return;
        }

        goto LABEL_19;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

    v8 = *(a2 + 16);
    *(a1 + 40) |= 4u;
    v9 = *(a1 + 16);
    if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v9, v8);
    if ((*(a2 + 40) & 8) != 0)
    {
LABEL_19:
      v10 = *(a2 + 24);
      *(a1 + 40) |= 8u;
      v11 = *(a1 + 24);
      if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v11, v10);
    }
  }
}

void sub_1003ABCE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1003ABCF8(void *result)
{
  v1 = result[1];
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = result[2];
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  v5 = result[3];
  if (v5 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete();
  }

  return result;
}

void sub_1003ABDD8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024481B0;
  sub_1003ABCF8(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003ABE2C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024481B0;
  sub_1003ABCF8(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003ABEF8(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    *(result + 32) = 14;
    if ((v1 & 2) != 0)
    {
      v2 = *(result + 8);
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

    if ((*(result + 40) & 4) != 0)
    {
      v3 = *(result + 16);
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

    if ((*(result + 40) & 8) != 0)
    {
      v4 = *(result + 24);
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
  }

  *(result + 40) = 0;
  return result;
}

uint64_t sub_1003ABFB0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 != 3)
        {
          if (v7 == 4 && v8 == 2)
          {
            goto LABEL_47;
          }

          goto LABEL_20;
        }

        if (v8 != 2)
        {
          goto LABEL_20;
        }

LABEL_41:
        *(a1 + 40) |= 4u;
        if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v13 = *(this + 1);
        if (v13 < *(this + 2) && *v13 == 34)
        {
          *(this + 1) = v13 + 1;
LABEL_47:
          *(a1 + 40) |= 8u;
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
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v15 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v15);
        if (!result)
        {
          return result;
        }

        v10 = v15;
      }

      else
      {
        *(this + 1) = v9 + 1;
      }

      if (v10 - 31 < 0x19 || v10 <= 0xE && ((1 << v10) & 0x76B6) != 0)
      {
        if (v10 - 31 >= 0x19 && (v10 > 0xE || ((1 << v10) & 0x76B6) == 0))
        {
          sub_101872114();
        }

        *(a1 + 40) |= 1u;
        *(a1 + 32) = v10;
      }

      v11 = *(this + 1);
      if (v11 < *(this + 2) && *v11 == 18)
      {
        *(this + 1) = v11 + 1;
LABEL_35:
        *(a1 + 40) |= 2u;
        if (*(a1 + 8) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v12 = *(this + 1);
        if (v12 < *(this + 2) && *v12 == 26)
        {
          *(this + 1) = v12 + 1;
          goto LABEL_41;
        }
      }
    }

    if (v7 == 2 && v8 == 2)
    {
      goto LABEL_35;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1003AC29C(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = result;
  v5 = *(result + 40);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 32), a2, a4);
    v5 = *(v4 + 40);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      if ((*(v4 + 40) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v5 = *(v4 + 40);
  if ((v5 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v5 & 8) == 0)
  {
    return result;
  }

LABEL_9:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t sub_1003AC344(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_43;
  }

  if (*(a1 + 40))
  {
    v5 = *(a1 + 32);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 40);
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 40) & 2) == 0)
    {
      goto LABEL_22;
    }
  }

  v6 = *(a1 + 8);
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
    v3 = *(a1 + 40);
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
LABEL_22:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_34;
  }

  v12 = *(a1 + 16);
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
    v3 = *(a1 + 40);
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
  if ((v3 & 8) != 0)
  {
LABEL_34:
    v18 = *(a1 + 24);
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
  }

LABEL_43:
  *(a1 + 36) = v4;
  return v4;
}

void sub_1003AC4D4(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003ABB18(a1, lpsrc);
}

void sub_1003AC574(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 8);
    if (v4 - 31 >= 0x19 && (v4 > 0xE || ((1 << v4) & 0x76B6) == 0))
    {
      sub_101872140();
    }

    *(a1 + 16) |= 1u;
    *(a1 + 8) = v4;
  }
}

void sub_1003AC62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003AC664(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448228;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003AC710(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 7;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_1003AC728(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v12 = 0;
      v7 = *(this + 1);
      if (v7 >= *(this + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v12);
        if (!result)
        {
          return result;
        }

        v8 = v12;
      }

      else
      {
        *(this + 1) = v7 + 1;
      }

      if (v8 - 31 < 0x19 || (v8 <= 0xE ? (v9 = ((1 << v8) & 0x76B6) == 0) : (v9 = 1), !v9))
      {
        if (v8 - 31 >= 0x19 && (v8 > 0xE || ((1 << v8) & 0x76B6) == 0))
        {
          sub_101872140();
        }

        *(a1 + 16) |= 1u;
        *(a1 + 8) = v8;
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

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1003AC888(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
  }

  return result;
}

uint64_t sub_1003AC8A4(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 16))
  {
    v4 = *(a1 + 8);
    if ((v4 & 0x80000000) != 0)
    {
      result = 11;
    }

    else if (v4 >= 0x80)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4, a2) + 1;
    }

    else
    {
      result = 2;
    }
  }

  else
  {
    result = 0;
  }

  *(a1 + 12) = result;
  return result;
}

void sub_1003AC900(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003AC574(a1, lpsrc);
}

void sub_1003AC9A0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v32);
  }

  v4 = *(a2 + 116);
  if (!v4)
  {
    goto LABEL_38;
  }

  if (v4)
  {
    v5 = *(a2 + 64);
    if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
    {
      sub_10187216C();
    }

    *(a1 + 116) |= 1u;
    *(a1 + 64) = v5;
    v4 = *(a2 + 116);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(a2 + 8);
    *(a1 + 116) |= 2u;
    v7 = *(a1 + 8);
    if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v7, v6);
    v4 = *(a2 + 116);
    if ((v4 & 4) == 0)
    {
LABEL_11:
      if ((v4 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_11;
  }

  v8 = *(a2 + 16);
  *(a1 + 116) |= 4u;
  v9 = *(a1 + 16);
  if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v9, v8);
  v4 = *(a2 + 116);
  if ((v4 & 8) == 0)
  {
LABEL_12:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_23:
  v10 = *(a2 + 24);
  *(a1 + 116) |= 8u;
  v11 = *(a1 + 24);
  if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  v4 = *(a2 + 116);
  if ((v4 & 0x10) == 0)
  {
LABEL_13:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_29:
    v14 = *(a2 + 40);
    *(a1 + 116) |= 0x20u;
    v15 = *(a1 + 40);
    if (v15 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v15, v14);
    v4 = *(a2 + 116);
    if ((v4 & 0x40) == 0)
    {
LABEL_15:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    goto LABEL_32;
  }

LABEL_26:
  v12 = *(a2 + 32);
  *(a1 + 116) |= 0x10u;
  v13 = *(a1 + 32);
  if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v13, v12);
  v4 = *(a2 + 116);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_14:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_32:
  v16 = *(a2 + 48);
  *(a1 + 116) |= 0x40u;
  v17 = *(a1 + 48);
  if (v17 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v17, v16);
  v4 = *(a2 + 116);
  if ((v4 & 0x80) != 0)
  {
LABEL_35:
    v18 = *(a2 + 56);
    *(a1 + 116) |= 0x80u;
    v19 = *(a1 + 56);
    if (v19 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v19, v18);
    v4 = *(a2 + 116);
  }

LABEL_38:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v20 = *(a2 + 72);
    *(a1 + 116) |= 0x100u;
    v21 = *(a1 + 72);
    if (v21 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v21, v20);
    v4 = *(a2 + 116);
    if ((v4 & 0x200) == 0)
    {
LABEL_41:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_53;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_41;
  }

  v22 = *(a2 + 80);
  *(a1 + 116) |= 0x200u;
  v23 = *(a1 + 80);
  if (v23 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v23, v22);
  v4 = *(a2 + 116);
  if ((v4 & 0x400) == 0)
  {
LABEL_42:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_54;
  }

LABEL_53:
  v24 = *(a2 + 68);
  *(a1 + 116) |= 0x400u;
  *(a1 + 68) = v24;
  v4 = *(a2 + 116);
  if ((v4 & 0x800) == 0)
  {
LABEL_43:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_55;
  }

LABEL_54:
  v25 = *(a2 + 69);
  *(a1 + 116) |= 0x800u;
  *(a1 + 69) = v25;
  v4 = *(a2 + 116);
  if ((v4 & 0x1000) == 0)
  {
LABEL_44:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_58;
  }

LABEL_55:
  v26 = *(a2 + 88);
  *(a1 + 116) |= 0x1000u;
  v27 = *(a1 + 88);
  if (v27 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v27, v26);
  v4 = *(a2 + 116);
  if ((v4 & 0x2000) == 0)
  {
LABEL_45:
    if ((v4 & 0x4000) == 0)
    {
      return;
    }

    goto LABEL_61;
  }

LABEL_58:
  v28 = *(a2 + 96);
  *(a1 + 116) |= 0x2000u;
  v29 = *(a1 + 96);
  if (v29 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v29, v28);
  if ((*(a2 + 116) & 0x4000) != 0)
  {
LABEL_61:
    v30 = *(a2 + 104);
    *(a1 + 116) |= 0x4000u;
    v31 = *(a1 + 104);
    if (v31 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v31, v30);
  }
}

void sub_1003ACE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1003ACE70(void *result)
{
  v1 = result[1];
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = result[2];
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  v5 = result[3];
  if (v5 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete();
  }

  v7 = result[4];
  if (v7 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    operator delete();
  }

  v9 = result[5];
  if (v9 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v9)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    operator delete();
  }

  v10 = result[6];
  if (v10 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v10)
  {
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    operator delete();
  }

  v11 = result[7];
  if (v11 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    operator delete();
  }

  v12 = result[9];
  if (v12 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    operator delete();
  }

  v13 = result[10];
  if (v13 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    operator delete();
  }

  v14 = result[11];
  if (v14 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v14)
  {
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    operator delete();
  }

  v15 = result[12];
  if (v15 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v15)
  {
    if (*(v15 + 23) < 0)
    {
      operator delete(*v15);
    }

    operator delete();
  }

  v16 = result[13];
  if (v16 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v16)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    operator delete();
  }

  return result;
}

void sub_1003AD0DC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024482A0;
  sub_1003ACE70(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003AD130(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024482A0;
  sub_1003ACE70(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003AD20C(uint64_t result)
{
  v1 = *(result + 116);
  if (v1)
  {
    *(result + 64) = 9;
    if ((v1 & 2) != 0)
    {
      v2 = *(result + 8);
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

    if ((*(result + 116) & 4) != 0)
    {
      v3 = *(result + 16);
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

    if ((*(result + 116) & 8) != 0)
    {
      v4 = *(result + 24);
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

    if ((*(result + 116) & 0x10) != 0)
    {
      v5 = *(result + 32);
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

    if ((*(result + 116) & 0x20) != 0)
    {
      v6 = *(result + 40);
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

    if ((*(result + 116) & 0x40) != 0)
    {
      v7 = *(result + 48);
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
    }

    if ((*(result + 116) & 0x80) != 0)
    {
      v8 = *(result + 56);
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
  }

  v9 = *(result + 116);
  if ((v9 & 0xFF00) != 0)
  {
    if ((v9 & 0x100) != 0)
    {
      v10 = *(result + 72);
      if (v10 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v10 + 23) < 0)
        {
          **v10 = 0;
          *(v10 + 8) = 0;
        }

        else
        {
          *v10 = 0;
          *(v10 + 23) = 0;
        }
      }
    }

    if ((*(result + 117) & 2) != 0)
    {
      v11 = *(result + 80);
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

    *(result + 68) = 0;
    if ((*(result + 117) & 0x10) != 0)
    {
      v12 = *(result + 88);
      if (v12 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v12 + 23) < 0)
        {
          **v12 = 0;
          *(v12 + 8) = 0;
        }

        else
        {
          *v12 = 0;
          *(v12 + 23) = 0;
        }
      }
    }

    if ((*(result + 117) & 0x20) != 0)
    {
      v13 = *(result + 96);
      if (v13 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v13 + 23) < 0)
        {
          **v13 = 0;
          *(v13 + 8) = 0;
        }

        else
        {
          *v13 = 0;
          *(v13 + 23) = 0;
        }
      }
    }

    if ((*(result + 117) & 0x40) != 0)
    {
      v14 = *(result + 104);
      if (v14 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v14 + 23) < 0)
        {
          **v14 = 0;
          *(v14 + 8) = 0;
        }

        else
        {
          *v14 = 0;
          *(v14 + 23) = 0;
        }
      }
    }
  }

  *(result + 116) = 0;
  return result;
}

uint64_t sub_1003AD4CC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (2)
  {
    v5 = *(this + 1);
    if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
      *(this + 1) = v5 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v32 = 0;
        v8 = *(this + 1);
        if (v8 < *(this + 2))
        {
          v9 = *v8;
          if ((v9 & 0x80000000) == 0)
          {
            *(this + 1) = v8 + 1;
LABEL_43:
            if (v9 - 31 < 0x19 || (v9 <= 0xE ? (v14 = ((1 << v9) & 0x76B6) == 0) : (v14 = 1), !v14))
            {
              if (v9 - 31 >= 0x19 && (v9 > 0xE || ((1 << v9) & 0x76B6) == 0))
              {
                sub_10187216C();
              }

              *(a1 + 116) |= 1u;
              *(a1 + 64) = v9;
            }

            v15 = *(this + 1);
            if (v15 < *(this + 2) && *v15 == 18)
            {
              *(this + 1) = v15 + 1;
              goto LABEL_55;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v32);
        if (result)
        {
          v9 = v32;
          goto LABEL_43;
        }

        break;
      case 2u:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

LABEL_55:
        *(a1 + 116) |= 2u;
        if (*(a1 + 8) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v16 = *(this + 1);
        if (v16 >= *(this + 2) || *v16 != 26)
        {
          continue;
        }

        *(this + 1) = v16 + 1;
LABEL_61:
        *(a1 + 116) |= 4u;
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
        if (v17 >= *(this + 2) || *v17 != 34)
        {
          continue;
        }

        *(this + 1) = v17 + 1;
LABEL_67:
        *(a1 + 116) |= 8u;
        if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v18 = *(this + 1);
        if (v18 >= *(this + 2) || *v18 != 42)
        {
          continue;
        }

        *(this + 1) = v18 + 1;
LABEL_73:
        *(a1 + 116) |= 0x10u;
        if (*(a1 + 32) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v19 = *(this + 1);
        if (v19 >= *(this + 2) || *v19 != 50)
        {
          continue;
        }

        *(this + 1) = v19 + 1;
LABEL_79:
        *(a1 + 116) |= 0x20u;
        if (*(a1 + 40) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v20 = *(this + 1);
        if (v20 >= *(this + 2) || *v20 != 58)
        {
          continue;
        }

        *(this + 1) = v20 + 1;
LABEL_85:
        *(a1 + 116) |= 0x40u;
        if (*(a1 + 48) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v21 = *(this + 1);
        if (v21 >= *(this + 2) || *v21 != 66)
        {
          continue;
        }

        *(this + 1) = v21 + 1;
LABEL_91:
        *(a1 + 116) |= 0x80u;
        if (*(a1 + 56) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v22 = *(this + 1);
        if (v22 >= *(this + 2) || *v22 != 74)
        {
          continue;
        }

        *(this + 1) = v22 + 1;
LABEL_97:
        *(a1 + 116) |= 0x100u;
        if (*(a1 + 72) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v23 = *(this + 1);
        if (v23 >= *(this + 2) || *v23 != 82)
        {
          continue;
        }

        *(this + 1) = v23 + 1;
LABEL_103:
        *(a1 + 116) |= 0x200u;
        if (*(a1 + 80) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v24 = *(this + 1);
        v10 = *(this + 2);
        if (v24 >= v10 || *v24 != 88)
        {
          continue;
        }

        v13 = v24 + 1;
        *(this + 1) = v13;
LABEL_109:
        v34 = 0;
        if (v13 >= v10 || (v25 = *v13, (v25 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v34);
          if (!result)
          {
            return result;
          }

          v25 = v34;
          v26 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          v26 = v13 + 1;
          *(this + 1) = v26;
        }

        *(a1 + 68) = v25 != 0;
        *(a1 + 116) |= 0x400u;
        if (v26 >= v10 || *v26 != 96)
        {
          continue;
        }

        v11 = v26 + 1;
        *(this + 1) = v11;
LABEL_117:
        v33 = 0;
        if (v11 >= v10 || (v27 = *v11, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v33);
          if (!result)
          {
            return result;
          }

          v27 = v33;
          v28 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          v28 = v11 + 1;
          *(this + 1) = v28;
        }

        *(a1 + 69) = v27 != 0;
        v12 = *(a1 + 116) | 0x800;
        *(a1 + 116) = v12;
        if (v28 >= v10 || *v28 != 106)
        {
          continue;
        }

        *(this + 1) = v28 + 1;
LABEL_125:
        *(a1 + 116) = v12 | 0x1000;
        if (*(a1 + 88) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v29 = *(this + 1);
        if (v29 >= *(this + 2) || *v29 != 114)
        {
          continue;
        }

        *(this + 1) = v29 + 1;
LABEL_131:
        *(a1 + 116) |= 0x2000u;
        if (*(a1 + 96) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v30 = *(this + 1);
        if (v30 >= *(this + 2) || *v30 != 122)
        {
          continue;
        }

        *(this + 1) = v30 + 1;
LABEL_137:
        *(a1 + 116) |= 0x4000u;
        if (*(a1 + 104) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        if (*(this + 1) != *(this + 2) || !*(this + 11) && *(this + 6) != *(this + 10))
        {
          continue;
        }

        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      case 3u:
        if (v7 == 2)
        {
          goto LABEL_61;
        }

        goto LABEL_38;
      case 4u:
        if (v7 == 2)
        {
          goto LABEL_67;
        }

        goto LABEL_38;
      case 5u:
        if (v7 == 2)
        {
          goto LABEL_73;
        }

        goto LABEL_38;
      case 6u:
        if (v7 == 2)
        {
          goto LABEL_79;
        }

        goto LABEL_38;
      case 7u:
        if (v7 == 2)
        {
          goto LABEL_85;
        }

        goto LABEL_38;
      case 8u:
        if (v7 == 2)
        {
          goto LABEL_91;
        }

        goto LABEL_38;
      case 9u:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        goto LABEL_97;
      case 0xAu:
        if (v7 == 2)
        {
          goto LABEL_103;
        }

        goto LABEL_38;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v13 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_109;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_117;
      case 0xDu:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        v12 = *(a1 + 116);
        goto LABEL_125;
      case 0xEu:
        if (v7 == 2)
        {
          goto LABEL_131;
        }

        goto LABEL_38;
      case 0xFu:
        if (v7 == 2)
        {
          goto LABEL_137;
        }

        goto LABEL_38;
      default:
LABEL_38:
        if (v7 == 4)
        {
          return 1;
        }

        if (wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3))
        {
          continue;
        }

        return 0;
    }

    return result;
  }
}

uint64_t sub_1003ADC78(uint64_t result, char a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 116);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 64), a2, a4);
    v6 = *(v5 + 116);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 116);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 116);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 116);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 116);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 116);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 116);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 116);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 116);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 116);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xB, *(v5 + 68), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xC, *(v5 + 69), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 116) & 0x4000) == 0)
    {
      return result;
    }

    goto LABEL_31;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 116);
  if ((v6 & 0x2000) != 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  if ((v6 & 0x4000) == 0)
  {
    return result;
  }

LABEL_31:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t sub_1003ADE54(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 116);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_83;
  }

  if (v3)
  {
    v5 = *(a1 + 64);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 116);
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_22;
    }
  }

  v6 = *(a1 + 8);
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

  v4 = (v4 + v11 + v7 + 1);
LABEL_22:
  if ((v3 & 4) != 0)
  {
    v12 = *(a1 + 16);
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
      v3 = *(a1 + 116);
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
    if ((v3 & 8) == 0)
    {
LABEL_24:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_47;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_24;
  }

  v18 = *(a1 + 24);
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
    v3 = *(a1 + 116);
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
  if ((v3 & 0x10) == 0)
  {
LABEL_25:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_47:
  v24 = *(a1 + 32);
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
    v3 = *(a1 + 116);
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
  if ((v3 & 0x20) == 0)
  {
LABEL_26:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_65;
  }

LABEL_56:
  v30 = *(a1 + 40);
  v31 = *(v30 + 23);
  v32 = v31;
  v33 = *(v30 + 8);
  if ((v31 & 0x80u) == 0)
  {
    v34 = *(v30 + 23);
  }

  else
  {
    v34 = v33;
  }

  if (v34 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2);
    v31 = *(v30 + 23);
    v33 = *(v30 + 8);
    v3 = *(a1 + 116);
    v32 = *(v30 + 23);
  }

  else
  {
    v35 = 1;
  }

  if (v32 < 0)
  {
    v31 = v33;
  }

  v4 = (v4 + v35 + v31 + 1);
  if ((v3 & 0x40) == 0)
  {
LABEL_27:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_74;
  }

LABEL_65:
  v36 = *(a1 + 48);
  v37 = *(v36 + 23);
  v38 = v37;
  v39 = *(v36 + 8);
  if ((v37 & 0x80u) == 0)
  {
    v40 = *(v36 + 23);
  }

  else
  {
    v40 = v39;
  }

  if (v40 >= 0x80)
  {
    v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40, a2);
    v37 = *(v36 + 23);
    v39 = *(v36 + 8);
    v3 = *(a1 + 116);
    v38 = *(v36 + 23);
  }

  else
  {
    v41 = 1;
  }

  if (v38 < 0)
  {
    v37 = v39;
  }

  v4 = (v4 + v41 + v37 + 1);
  if ((v3 & 0x80) != 0)
  {
LABEL_74:
    v42 = *(a1 + 56);
    v43 = *(v42 + 23);
    v44 = v43;
    v45 = *(v42 + 8);
    if ((v43 & 0x80u) == 0)
    {
      v46 = *(v42 + 23);
    }

    else
    {
      v46 = v45;
    }

    if (v46 >= 0x80)
    {
      v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46, a2);
      v43 = *(v42 + 23);
      v45 = *(v42 + 8);
      v3 = *(a1 + 116);
      v44 = *(v42 + 23);
    }

    else
    {
      v47 = 1;
    }

    if (v44 < 0)
    {
      v43 = v45;
    }

    v4 = (v4 + v47 + v43 + 1);
  }

LABEL_83:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_135;
  }

  if ((v3 & 0x100) != 0)
  {
    v48 = *(a1 + 72);
    v49 = *(v48 + 23);
    v50 = v49;
    v51 = *(v48 + 8);
    if ((v49 & 0x80u) == 0)
    {
      v52 = *(v48 + 23);
    }

    else
    {
      v52 = v51;
    }

    if (v52 >= 0x80)
    {
      v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52, a2);
      v49 = *(v48 + 23);
      v51 = *(v48 + 8);
      v3 = *(a1 + 116);
      v50 = *(v48 + 23);
    }

    else
    {
      v53 = 1;
    }

    if (v50 < 0)
    {
      v49 = v51;
    }

    LODWORD(v4) = v4 + v53 + v49 + 1;
  }

  if ((v3 & 0x200) != 0)
  {
    v54 = *(a1 + 80);
    v55 = *(v54 + 23);
    v56 = v55;
    v57 = *(v54 + 8);
    if ((v55 & 0x80u) == 0)
    {
      v58 = *(v54 + 23);
    }

    else
    {
      v58 = v57;
    }

    if (v58 >= 0x80)
    {
      v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58, a2);
      v55 = *(v54 + 23);
      v57 = *(v54 + 8);
      v3 = *(a1 + 116);
      v56 = *(v54 + 23);
    }

    else
    {
      v59 = 1;
    }

    if (v56 < 0)
    {
      v55 = v57;
    }

    LODWORD(v4) = v4 + v59 + v55 + 1;
  }

  v4 = ((v3 >> 9) & 2) + v4 + ((v3 >> 10) & 2);
  if ((v3 & 0x1000) != 0)
  {
    v60 = *(a1 + 88);
    v61 = *(v60 + 23);
    v62 = v61;
    v63 = *(v60 + 8);
    if ((v61 & 0x80u) == 0)
    {
      v64 = *(v60 + 23);
    }

    else
    {
      v64 = v63;
    }

    if (v64 >= 0x80)
    {
      v65 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64, a2);
      v61 = *(v60 + 23);
      v63 = *(v60 + 8);
      v3 = *(a1 + 116);
      v62 = *(v60 + 23);
    }

    else
    {
      v65 = 1;
    }

    if (v62 < 0)
    {
      v61 = v63;
    }

    v4 = (v4 + v65 + v61 + 1);
    if ((v3 & 0x2000) == 0)
    {
LABEL_106:
      if ((v3 & 0x4000) == 0)
      {
        goto LABEL_135;
      }

      goto LABEL_126;
    }
  }

  else if ((v3 & 0x2000) == 0)
  {
    goto LABEL_106;
  }

  v66 = *(a1 + 96);
  v67 = *(v66 + 23);
  v68 = v67;
  v69 = *(v66 + 8);
  if ((v67 & 0x80u) == 0)
  {
    v70 = *(v66 + 23);
  }

  else
  {
    v70 = v69;
  }

  if (v70 >= 0x80)
  {
    v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70, a2);
    v67 = *(v66 + 23);
    v69 = *(v66 + 8);
    v3 = *(a1 + 116);
    v68 = *(v66 + 23);
  }

  else
  {
    v71 = 1;
  }

  if (v68 < 0)
  {
    v67 = v69;
  }

  v4 = (v4 + v71 + v67 + 1);
  if ((v3 & 0x4000) != 0)
  {
LABEL_126:
    v72 = *(a1 + 104);
    v73 = *(v72 + 23);
    v74 = v73;
    v75 = *(v72 + 8);
    if ((v73 & 0x80u) == 0)
    {
      v76 = *(v72 + 23);
    }

    else
    {
      v76 = v75;
    }

    if (v76 >= 0x80)
    {
      v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v76, a2);
      v73 = *(v72 + 23);
      v75 = *(v72 + 8);
      v74 = *(v72 + 23);
    }

    else
    {
      v77 = 1;
    }

    if (v74 < 0)
    {
      v73 = v75;
    }

    v4 = (v4 + v77 + v73 + 1);
  }

LABEL_135:
  *(a1 + 112) = v4;
  return v4;
}

void sub_1003AE33C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003AC9A0(a1, lpsrc);
}

void sub_1003AE3DC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
  }

  v4 = *(a2 + 84);
  if (!v4)
  {
    goto LABEL_38;
  }

  if (v4)
  {
    v5 = *(a2 + 48);
    if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
    {
      sub_101872198();
    }

    *(a1 + 84) |= 1u;
    *(a1 + 48) = v5;
    v4 = *(a2 + 84);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(a2 + 8);
    *(a1 + 84) |= 2u;
    v7 = *(a1 + 8);
    if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v7, v6);
    v4 = *(a2 + 84);
    if ((v4 & 4) == 0)
    {
LABEL_11:
      if ((v4 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_11;
  }

  v8 = *(a2 + 16);
  *(a1 + 84) |= 4u;
  v9 = *(a1 + 16);
  if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v9, v8);
  v4 = *(a2 + 84);
  if ((v4 & 8) == 0)
  {
LABEL_12:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_23:
  v10 = *(a2 + 24);
  *(a1 + 84) |= 8u;
  v11 = *(a1 + 24);
  if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  v4 = *(a2 + 84);
  if ((v4 & 0x10) == 0)
  {
LABEL_13:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_29:
    v14 = *(a2 + 40);
    *(a1 + 84) |= 0x20u;
    v15 = *(a1 + 40);
    if (v15 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v15, v14);
    v4 = *(a2 + 84);
    if ((v4 & 0x40) == 0)
    {
LABEL_15:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    goto LABEL_32;
  }

LABEL_26:
  v12 = *(a2 + 32);
  *(a1 + 84) |= 0x10u;
  v13 = *(a1 + 32);
  if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v13, v12);
  v4 = *(a2 + 84);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_14:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_32:
  v16 = *(a2 + 56);
  *(a1 + 84) |= 0x40u;
  v17 = *(a1 + 56);
  if (v17 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v17, v16);
  v4 = *(a2 + 84);
  if ((v4 & 0x80) != 0)
  {
LABEL_35:
    v18 = *(a2 + 64);
    *(a1 + 84) |= 0x80u;
    v19 = *(a1 + 64);
    if (v19 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v19, v18);
    v4 = *(a2 + 84);
  }

LABEL_38:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) == 0)
  {
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_41;
    }

LABEL_44:
    v21 = *(a2 + 53);
    *(a1 + 84) |= 0x200u;
    *(a1 + 53) = v21;
    if ((*(a2 + 84) & 0x400) == 0)
    {
      return;
    }

    goto LABEL_45;
  }

  v20 = *(a2 + 52);
  *(a1 + 84) |= 0x100u;
  *(a1 + 52) = v20;
  v4 = *(a2 + 84);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_44;
  }

LABEL_41:
  if ((v4 & 0x400) == 0)
  {
    return;
  }

LABEL_45:
  v22 = *(a2 + 72);
  *(a1 + 84) |= 0x400u;
  v23 = *(a1 + 72);
  if (v23 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v23, v22);
}

void sub_1003AE760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1003AE778(void *result)
{
  v1 = result[1];
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = result[2];
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  v5 = result[3];
  if (v5 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete();
  }

  v7 = result[4];
  if (v7 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    operator delete();
  }

  v9 = result[5];
  if (v9 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v9)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    operator delete();
  }

  v10 = result[7];
  if (v10 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v10)
  {
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    operator delete();
  }

  v11 = result[8];
  if (v11 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    operator delete();
  }

  v12 = result[9];
  if (v12 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    operator delete();
  }

  return result;
}

void sub_1003AE934(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448318;
  sub_1003AE778(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003AE988(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448318;
  sub_1003AE778(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003AEA5C(uint64_t result)
{
  v1 = *(result + 84);
  if (v1)
  {
    *(result + 48) = 10;
    if ((v1 & 2) != 0)
    {
      v2 = *(result + 8);
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

    if ((*(result + 84) & 4) != 0)
    {
      v3 = *(result + 16);
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

    if ((*(result + 84) & 8) != 0)
    {
      v4 = *(result + 24);
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

    if ((*(result + 84) & 0x10) != 0)
    {
      v5 = *(result + 32);
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

    if ((*(result + 84) & 0x20) != 0)
    {
      v6 = *(result + 40);
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

    if ((*(result + 84) & 0x40) != 0)
    {
      v7 = *(result + 56);
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
    }

    if ((*(result + 84) & 0x80) != 0)
    {
      v8 = *(result + 64);
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
  }

  v9 = *(result + 84);
  if ((v9 & 0xFF00) != 0)
  {
    *(result + 52) = 0;
    if ((v9 & 0x400) != 0)
    {
      v10 = *(result + 72);
      if (v10 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v10 + 23) < 0)
        {
          **v10 = 0;
          *(v10 + 8) = 0;
        }

        else
        {
          *v10 = 0;
          *(v10 + 23) = 0;
        }
      }
    }
  }

  *(result + 84) = 0;
  return result;
}

uint64_t sub_1003AEC2C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(this + 1);
          if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
            *(this + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 > 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 2)
          {
            if (v7 != 1)
            {
              if (v7 != 2 || v8 != 2)
              {
                goto LABEL_43;
              }

              goto LABEL_59;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v28 = 0;
            v10 = *(this + 1);
            if (v10 >= *(this + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28);
              if (!result)
              {
                return result;
              }

              v11 = v28;
            }

            else
            {
              *(this + 1) = v10 + 1;
            }

            if (v11 - 31 < 0x19 || v11 <= 0xE && ((1 << v11) & 0x76B6) != 0)
            {
              if (v11 - 31 >= 0x19 && (v11 > 0xE || ((1 << v11) & 0x76B6) == 0))
              {
                sub_101872198();
              }

              *(a1 + 84) |= 1u;
              *(a1 + 48) = v11;
            }

            v15 = *(this + 1);
            if (v15 < *(this + 2) && *v15 == 18)
            {
              *(this + 1) = v15 + 1;
LABEL_59:
              *(a1 + 84) |= 2u;
              if (*(a1 + 8) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
              {
                operator new();
              }

              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
              if (!result)
              {
                return result;
              }

              v16 = *(this + 1);
              if (v16 < *(this + 2) && *v16 == 26)
              {
                *(this + 1) = v16 + 1;
LABEL_65:
                *(a1 + 84) |= 4u;
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
                if (v17 < *(this + 2) && *v17 == 34)
                {
                  *(this + 1) = v17 + 1;
                  goto LABEL_71;
                }
              }
            }
          }

          else
          {
            if (v7 == 3)
            {
              if (v8 != 2)
              {
                goto LABEL_43;
              }

              goto LABEL_65;
            }

            if (v7 != 4)
            {
              if (v7 != 5 || v8 != 2)
              {
                goto LABEL_43;
              }

              goto LABEL_77;
            }

            if (v8 != 2)
            {
              goto LABEL_43;
            }

LABEL_71:
            *(a1 + 84) |= 8u;
            if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v18 = *(this + 1);
            if (v18 < *(this + 2) && *v18 == 42)
            {
              *(this + 1) = v18 + 1;
LABEL_77:
              *(a1 + 84) |= 0x10u;
              if (*(a1 + 32) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
              {
                operator new();
              }

              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
              if (!result)
              {
                return result;
              }

              v19 = *(this + 1);
              if (v19 < *(this + 2) && *v19 == 50)
              {
                *(this + 1) = v19 + 1;
LABEL_83:
                *(a1 + 84) |= 0x20u;
                if (*(a1 + 40) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                {
                  operator new();
                }

                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                if (!result)
                {
                  return result;
                }

                v20 = *(this + 1);
                if (v20 < *(this + 2) && *v20 == 58)
                {
                  *(this + 1) = v20 + 1;
                  goto LABEL_89;
                }
              }
            }
          }
        }

        if (TagFallback >> 3 <= 8)
        {
          break;
        }

        if (v7 == 9)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(this + 1);
            v12 = *(this + 2);
            goto LABEL_101;
          }

          goto LABEL_43;
        }

        if (v7 == 10)
        {
          if ((TagFallback & 7) == 0)
          {
            v13 = *(this + 1);
            v12 = *(this + 2);
            goto LABEL_109;
          }

          goto LABEL_43;
        }

        if (v7 != 11 || v8 != 2)
        {
          goto LABEL_43;
        }

        v9 = *(a1 + 84);
LABEL_117:
        *(a1 + 84) = v9 | 0x400;
        if (*(a1 + 72) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

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

      if (v7 == 6)
      {
        if (v8 != 2)
        {
          goto LABEL_43;
        }

        goto LABEL_83;
      }

      if (v7 != 7)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_43;
      }

LABEL_89:
      *(a1 + 84) |= 0x40u;
      if (*(a1 + 56) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v21 = *(this + 1);
      if (v21 < *(this + 2) && *v21 == 66)
      {
        *(this + 1) = v21 + 1;
LABEL_95:
        *(a1 + 84) |= 0x80u;
        if (*(a1 + 64) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v22 = *(this + 1);
        v12 = *(this + 2);
        if (v22 < v12 && *v22 == 72)
        {
          v14 = v22 + 1;
          *(this + 1) = v14;
LABEL_101:
          v30 = 0;
          if (v14 >= v12 || (v23 = *v14, (v23 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v30);
            if (!result)
            {
              return result;
            }

            v23 = v30;
            v24 = *(this + 1);
            v12 = *(this + 2);
          }

          else
          {
            v24 = v14 + 1;
            *(this + 1) = v24;
          }

          *(a1 + 52) = v23 != 0;
          *(a1 + 84) |= 0x100u;
          if (v24 < v12 && *v24 == 80)
          {
            v13 = v24 + 1;
            *(this + 1) = v13;
LABEL_109:
            v29 = 0;
            if (v13 >= v12 || (v25 = *v13, (v25 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29);
              if (!result)
              {
                return result;
              }

              v25 = v29;
              v26 = *(this + 1);
              v12 = *(this + 2);
            }

            else
            {
              v26 = v13 + 1;
              *(this + 1) = v26;
            }

            *(a1 + 53) = v25 != 0;
            v9 = *(a1 + 84) | 0x200;
            *(a1 + 84) = v9;
            if (v26 < v12 && *v26 == 90)
            {
              *(this + 1) = v26 + 1;
              goto LABEL_117;
            }
          }
        }
      }
    }

    if (v7 == 8 && v8 == 2)
    {
      goto LABEL_95;
    }

LABEL_43:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}