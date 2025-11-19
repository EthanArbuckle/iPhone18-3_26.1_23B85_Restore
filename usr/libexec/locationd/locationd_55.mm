uint64_t sub_1003C459C(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
  }

  return result;
}

uint64_t sub_1003C45B8(uint64_t a1, unsigned int a2)
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

void sub_1003C4614(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003BFAF4(a1, lpsrc);
}

void sub_1003C46D4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024490B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003C4780(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          sub_101872744();
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

uint64_t sub_1003C48E0(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
  }

  return result;
}

uint64_t sub_1003C48FC(uint64_t a1, unsigned int a2)
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

void sub_1003C4958(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003BFBC4(a1, lpsrc);
}

void sub_1003C49F8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 16);
      *(a1 + 24) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 24);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 8);
      *(a1 + 24) |= 2u;
      *(a1 + 8) = v6;
    }
  }
}

void sub_1003C4AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003C4ADC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102449128;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003C4B80(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 16) = 0;
    *(result + 8) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_1003C4B98(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      v8 = *(this + 1);
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v9;
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      *(a1 + 24) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(this + 1) = v11;
LABEL_22:
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
          if (!result)
          {
            return result;
          }

          v13 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          *(a1 + 8) = v12;
          v13 = v11 + 1;
          *(this + 1) = v13;
        }

        *(a1 + 24) |= 2u;
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

uint64_t sub_1003C4D14(uint64_t result, unint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_1003C4D80(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    if ((*(a1 + 24) & 1) == 0)
    {
      v4 = 0;
      if ((*(a1 + 24) & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v5 = *(a1 + 16);
    if (v5 < 0x80)
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
    if ((*(a1 + 24) & 2) != 0)
    {
LABEL_10:
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_11:
  *(a1 + 20) = v4;
  return v4;
}

void sub_1003C4E00(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003C49F8(a1, lpsrc);
}

void sub_1003C4EA0(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  sub_1003C7C3C((a1 + 2), a2 + 8);
  if (*(a2 + 40))
  {
    v4 = *(a2 + 32);
    if (v4 >= 3)
    {
      sub_1018727C8();
    }

    a1[10] |= 1u;
    a1[8] = v4;
  }
}

void sub_1003C4F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003C4F5C(uint64_t *a1)
{
  *a1 = off_1024491A0;
  sub_100027438(a1 + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003C4FB8(uint64_t *a1)
{
  sub_1003C4F5C(a1);

  operator delete();
}

uint64_t sub_1003C5048(uint64_t a1)
{
  if (*(a1 + 40))
  {
    *(a1 + 32) = 0;
  }

  result = sub_1003C79DC(a1 + 8);
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_1003C5080(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v25 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25);
        if (!result)
        {
          return result;
        }

        v9 = v25;
      }

      else
      {
        *(this + 1) = v8 + 1;
      }

      if (v9 <= 2)
      {
        a1[10] |= 1u;
        a1[8] = v9;
      }

      v11 = *(this + 1);
      if (v11 < *(this + 2) && *v11 == 18)
      {
        do
        {
          *(this + 1) = v11 + 1;
LABEL_23:
          v12 = a1[5];
          v13 = a1[4];
          if (v13 >= v12)
          {
            if (v12 == a1[6])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2), v12 + 1);
              v12 = a1[5];
            }

            a1[5] = v12 + 1;
            operator new();
          }

          v14 = *(a1 + 1);
          a1[4] = v13 + 1;
          v15 = *(v14 + 8 * v13);
          v26 = 0;
          v16 = *(this + 1);
          if (v16 >= *(this + 2) || *v16 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26))
            {
              return 0;
            }
          }

          else
          {
            v26 = *v16;
            *(this + 1) = v16 + 1;
          }

          v17 = *(this + 14);
          v18 = *(this + 15);
          *(this + 14) = v17 + 1;
          if (v17 >= v18)
          {
            return 0;
          }

          v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v26);
          if (!sub_1003C4B98(v15, this, v20) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v19);
          v21 = *(this + 14);
          v22 = __OFSUB__(v21, 1);
          v23 = v21 - 1;
          if (v23 < 0 == v22)
          {
            *(this + 14) = v23;
          }

          v11 = *(this + 1);
          v24 = *(this + 2);
        }

        while (v11 < v24 && *v11 == 18);
        if (v11 == v24 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
      goto LABEL_23;
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

uint64_t sub_1003C5334(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 40))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 32), a2, a4);
  }

  if (*(v5 + 16) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return result;
}

uint64_t sub_1003C53AC(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 32);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
    }

    else if (v4 >= 0x80)
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

  v5 = *(a1 + 16);
  v6 = (v5 + v3);
  if (v5 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = sub_1003C4D80(*(*(a1 + 8) + 8 * v7), a2);
      v9 = v8;
      if (v8 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
      }

      else
      {
        v10 = 1;
      }

      v6 = (v9 + v6 + v10);
      ++v7;
    }

    while (v7 < *(a1 + 16));
  }

  *(a1 + 36) = v6;
  return v6;
}

void sub_1003C5468(_DWORD *a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003C4EA0(a1, lpsrc);
}

void sub_1003C5508(uint64_t a1, uint64_t a2)
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
      if (v5 >= 3)
      {
        sub_1018727F4();
      }

      *(a1 + 24) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 24);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 24) |= 2u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        v7 = *(qword_1026360A0 + 8);
      }

      sub_1003A391C(v6, v7);
    }
  }
}

void sub_1003C561C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003C5634(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102449218;
  if (qword_1026360A0 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_1003C56C4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1003C5634(a1);

  operator delete();
}

uint64_t sub_1003C5754(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2)
  {
    *(result + 16) = 1;
    if ((v2 & 2) != 0)
    {
      v3 = *(result + 8);
      if (v3)
      {
        result = sub_1003C79DC(v3 + 8);
        *(v3 + 36) = 0;
      }
    }
  }

  *(v1 + 24) = 0;
  return result;
}

uint64_t sub_1003C57A0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    do
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

        if (v7 == 2)
        {
          goto LABEL_23;
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

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v21 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21);
        if (!result)
        {
          return result;
        }

        v9 = v21;
      }

      else
      {
        *(this + 1) = v8 + 1;
      }

      if (v9 <= 2)
      {
        *(a1 + 24) |= 1u;
        *(a1 + 16) = v9;
      }

      v11 = *(this + 1);
    }

    while (v11 >= *(this + 2) || *v11 != 18);
    *(this + 1) = v11 + 1;
LABEL_23:
    *(a1 + 24) |= 2u;
    v12 = *(a1 + 8);
    if (!v12)
    {
      operator new();
    }

    v22 = 0;
    v13 = *(this + 1);
    if (v13 >= *(this + 2) || *v13 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22))
      {
        return 0;
      }
    }

    else
    {
      v22 = *v13;
      *(this + 1) = v13 + 1;
    }

    v14 = *(this + 14);
    v15 = *(this + 15);
    *(this + 14) = v14 + 1;
    if (v14 >= v15)
    {
      return 0;
    }

    v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v22);
    if (!sub_1003A3C10(v12, this, v17) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v16);
    v18 = *(this + 14);
    v19 = __OFSUB__(v18, 1);
    v20 = v18 - 1;
    if (v20 < 0 == v19)
    {
      *(this + 14) = v20;
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

uint64_t sub_1003C59F8(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);
    if (!v7)
    {
      v7 = *(qword_1026360A0 + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_1003C5A74(uint64_t a1, unsigned int a2)
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
          goto LABEL_19;
        }
      }

      else if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        if ((*(a1 + 24) & 2) == 0)
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
      if ((*(a1 + 24) & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    v6 = *(a1 + 8);
    if (!v6)
    {
      v6 = *(qword_1026360A0 + 8);
    }

    v7 = sub_1003A3EA8(v6, a2);
    v9 = v7;
    if (v7 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, v8);
    }

    else
    {
      v10 = 1;
    }

    v4 = (v4 + v9 + v10 + 1);
  }

  else
  {
    v4 = 0;
  }

LABEL_19:
  *(a1 + 20) = v4;
  return v4;
}

void sub_1003C5B3C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003C5508(a1, lpsrc);
}

void sub_1003C5BDC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 24);
      if (v5 >= 3)
      {
        sub_101872820();
      }

      *(a1 + 32) |= 1u;
      *(a1 + 24) = v5;
      v4 = *(a2 + 32);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 32) |= 2u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        v7 = *(qword_1026360A8 + 8);
      }

      sub_1003A4E80(v6, v7);
      v4 = *(a2 + 32);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 16);
      *(a1 + 32) |= 4u;
      v9 = *(a1 + 16);
      if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v9, v8);
    }
  }
}

void sub_1003C5D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1003C5D60(void *result)
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

  if (qword_1026360A8 != result)
  {
    result = result[1];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_1003C5E14(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102449290;
  sub_1003C5D60(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003C5E68(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102449290;
  sub_1003C5D60(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003C5F34(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 32);
  if (v2)
  {
    *(result + 24) = 2;
    if ((v2 & 2) != 0)
    {
      v3 = *(result + 8);
      if (v3)
      {
        result = sub_1003C79DC(v3 + 8);
        *(v3 + 36) = 0;
        v2 = *(v1 + 32);
      }
    }

    if ((v2 & 4) != 0)
    {
      v4 = *(v1 + 16);
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

  *(v1 + 32) = 0;
  return result;
}

uint64_t sub_1003C5FBC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if (v8 != 2)
          {
            goto LABEL_16;
          }

LABEL_40:
          *(a1 + 32) |= 4u;
          if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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

        if (v7 == 2)
        {
          break;
        }

        if (v7 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_16;
        }

        v23 = 0;
        v9 = *(this + 1);
        if (v9 >= *(this + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23);
          if (!result)
          {
            return result;
          }

          v10 = v23;
        }

        else
        {
          *(this + 1) = v9 + 1;
        }

        if (v10 <= 2)
        {
          *(a1 + 32) |= 1u;
          *(a1 + 24) = v10;
        }

        v12 = *(this + 1);
        if (v12 < *(this + 2) && *v12 == 18)
        {
          *(this + 1) = v12 + 1;
          goto LABEL_26;
        }
      }

      if (v8 == 2)
      {
        break;
      }

LABEL_16:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
      {
        return 0;
      }
    }

LABEL_26:
    *(a1 + 32) |= 2u;
    v13 = *(a1 + 8);
    if (!v13)
    {
      operator new();
    }

    v24 = 0;
    v14 = *(this + 1);
    if (v14 >= *(this + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24))
      {
        return 0;
      }
    }

    else
    {
      v24 = *v14;
      *(this + 1) = v14 + 1;
    }

    v15 = *(this + 14);
    v16 = *(this + 15);
    *(this + 14) = v15 + 1;
    if (v15 >= v16)
    {
      return 0;
    }

    v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v24);
    if (!sub_1003A5174(v13, this, v18) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v17);
    v19 = *(this + 14);
    v20 = __OFSUB__(v19, 1);
    v21 = v19 - 1;
    if (v21 < 0 == v20)
    {
      *(this + 14) = v21;
    }

    v22 = *(this + 1);
    if (v22 < *(this + 2) && *v22 == 26)
    {
      *(this + 1) = v22 + 1;
      goto LABEL_40;
    }
  }
}

uint64_t sub_1003C62A8(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 24), a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 8);
  if (!v7)
  {
    v7 = *(qword_1026360A8 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  if ((*(v5 + 32) & 4) != 0)
  {
LABEL_9:

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  return result;
}

uint64_t sub_1003C6344(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_29;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_19;
    }

LABEL_13:
    v6 = *(a1 + 8);
    if (!v6)
    {
      v6 = *(qword_1026360A8 + 8);
    }

    v7 = sub_1003A540C(v6, a2);
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
    v3 = *(a1 + 32);
    goto LABEL_19;
  }

  v5 = *(a1 + 24);
  if ((v5 & 0x80000000) != 0)
  {
    v4 = 11;
    if ((v3 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 32);
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v4 = 2;
    if ((v3 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_19:
  if ((v3 & 4) != 0)
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 23);
    v12 = v11;
    v13 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v14 = *(v10 + 23);
    }

    else
    {
      v14 = v13;
    }

    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
      v11 = *(v10 + 23);
      v13 = *(v10 + 8);
      v12 = *(v10 + 23);
    }

    else
    {
      v15 = 1;
    }

    if (v12 < 0)
    {
      v11 = v13;
    }

    v4 = (v4 + v15 + v11 + 1);
  }

LABEL_29:
  *(a1 + 28) = v4;
  return v4;
}

void sub_1003C6464(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003C5BDC(a1, lpsrc);
}

void sub_1003C6504(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 48))
  {
    v5 = *(a2 + 40);
    if (v5 >= 3)
    {
      sub_10187284C();
    }

    *(a1 + 48) |= 1u;
    *(a1 + 40) = v5;
    v4 = *(a2 + 48);
  }

  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    *(a1 + 48) |= 4u;
    v7 = *(a1 + 16);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 16);
    if (!v8)
    {
      v8 = *(qword_1026360B0 + 16);
    }

    sub_1003C4EA0(v7, v8);
    v4 = *(a2 + 48);
    if ((v4 & 8) == 0)
    {
LABEL_10:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_23;
    }

    goto LABEL_18;
  }

  v6 = *(a2 + 8);
  *(a1 + 48) |= 2u;
  *(a1 + 8) = v6;
  v4 = *(a2 + 48);
  if ((v4 & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if ((v4 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_18:
  *(a1 + 48) |= 8u;
  v9 = *(a1 + 24);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 24);
  if (!v10)
  {
    v10 = *(qword_1026360B0 + 24);
  }

  sub_1003C5508(v9, v10);
  if ((*(a2 + 48) & 0x10) != 0)
  {
LABEL_23:
    *(a1 + 48) |= 0x10u;
    v11 = *(a1 + 32);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 32);
    if (!v12)
    {
      v12 = *(qword_1026360B0 + 32);
    }

    sub_1003C5BDC(v11, v12);
  }
}

void sub_1003C674C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1003C6764(void *result)
{
  if (qword_1026360B0 != result)
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

void sub_1003C6830(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102449308;
  sub_1003C6764(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003C6884(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102449308;
  sub_1003C6764(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003C6944(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 48);
  if (v2)
  {
    *(result + 40) = 0;
    *(result + 8) = 0;
    if ((v2 & 4) != 0)
    {
      v3 = *(result + 16);
      if (v3)
      {
        if (*(v3 + 40))
        {
          *(v3 + 32) = 0;
        }

        result = sub_1003C79DC(v3 + 8);
        *(v3 + 40) = 0;
        v2 = *(v1 + 48);
      }
    }

    if ((v2 & 8) != 0)
    {
      result = *(v1 + 24);
      if (result)
      {
        result = sub_1003C5754(result);
        v2 = *(v1 + 48);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      result = *(v1 + 32);
      if (result)
      {
        result = sub_1003C5F34(result);
      }
    }
  }

  *(v1 + 48) = 0;
  return result;
}

uint64_t sub_1003C69C4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 <= 3)
        {
          break;
        }

        if (v7 == 4)
        {
          if (v8 != 2)
          {
            goto LABEL_21;
          }

          v9 = *(a1 + 48);
          goto LABEL_38;
        }

        if (v7 == 5)
        {
          if (v8 != 2)
          {
            goto LABEL_21;
          }

LABEL_52:
          *(a1 + 48) |= 8u;
          v25 = *(a1 + 24);
          if (!v25)
          {
            operator new();
          }

          v42[0] = 0;
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v42))
            {
              return 0;
            }
          }

          else
          {
            v42[0] = *v26;
            *(this + 1) = v26 + 1;
          }

          v27 = *(this + 14);
          v28 = *(this + 15);
          *(this + 14) = v27 + 1;
          if (v27 >= v28)
          {
            return 0;
          }

          v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v42[0]);
          if (!sub_1003C57A0(v25, this, v30) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v29);
          v31 = *(this + 14);
          v22 = __OFSUB__(v31, 1);
          v32 = v31 - 1;
          if (v32 < 0 == v22)
          {
            *(this + 14) = v32;
          }

          v33 = *(this + 1);
          if (v33 < *(this + 2) && *v33 == 50)
          {
            *(this + 1) = v33 + 1;
            goto LABEL_66;
          }
        }

        else
        {
          if (v7 != 6 || v8 != 2)
          {
            goto LABEL_21;
          }

LABEL_66:
          *(a1 + 48) |= 0x10u;
          v34 = *(a1 + 32);
          if (!v34)
          {
            operator new();
          }

          v42[0] = 0;
          v35 = *(this + 1);
          if (v35 >= *(this + 2) || *v35 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v42))
            {
              return 0;
            }
          }

          else
          {
            v42[0] = *v35;
            *(this + 1) = v35 + 1;
          }

          v36 = *(this + 14);
          v37 = *(this + 15);
          *(this + 14) = v36 + 1;
          if (v36 >= v37)
          {
            return 0;
          }

          v38 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v42[0]);
          if (!sub_1003C5FBC(v34, this, v39) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v38);
          v40 = *(this + 14);
          v22 = __OFSUB__(v40, 1);
          v41 = v40 - 1;
          if (v41 < 0 == v22)
          {
            *(this + 14) = v41;
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
        goto LABEL_21;
      }

      v42[0] = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v42);
        if (!result)
        {
          return result;
        }

        v11 = v42[0];
      }

      else
      {
        *(this + 1) = v10 + 1;
      }

      if (v11 <= 2)
      {
        *(a1 + 48) |= 1u;
        *(a1 + 40) = v11;
      }

      v13 = *(this + 1);
      if (v13 < *(this + 2) && *v13 == 17)
      {
        *(this + 1) = v13 + 1;
LABEL_34:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = *v42;
        v9 = *(a1 + 48) | 2;
        *(a1 + 48) = v9;
        v14 = *(this + 1);
        if (v14 < *(this + 2) && *v14 == 34)
        {
          *(this + 1) = v14 + 1;
LABEL_38:
          *(a1 + 48) = v9 | 4;
          v15 = *(a1 + 16);
          if (!v15)
          {
            operator new();
          }

          v42[0] = 0;
          v16 = *(this + 1);
          if (v16 >= *(this + 2) || *v16 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v42))
            {
              return 0;
            }
          }

          else
          {
            v42[0] = *v16;
            *(this + 1) = v16 + 1;
          }

          v17 = *(this + 14);
          v18 = *(this + 15);
          *(this + 14) = v17 + 1;
          if (v17 >= v18)
          {
            return 0;
          }

          v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v42[0]);
          if (!sub_1003C5080(v15, this, v20) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v19);
          v21 = *(this + 14);
          v22 = __OFSUB__(v21, 1);
          v23 = v21 - 1;
          if (v23 < 0 == v22)
          {
            *(this + 14) = v23;
          }

          v24 = *(this + 1);
          if (v24 < *(this + 2) && *v24 == 42)
          {
            *(this + 1) = v24 + 1;
            goto LABEL_52;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_34;
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

uint64_t sub_1003C6EFC(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_9:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(qword_1026360B0 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_12:
  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(qword_1026360B0 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2, a4);
  if ((*(v5 + 48) & 0x10) != 0)
  {
LABEL_15:
    v9 = *(v5 + 32);
    if (!v9)
    {
      v9 = *(qword_1026360B0 + 32);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  }

  return result;
}

uint64_t sub_1003C6FF0(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 48);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_35;
  }

  if (*(a1 + 48))
  {
    v6 = *(a1 + 40);
    if ((v6 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(a1 + 48);
    }

    else
    {
      v4 = 2;
    }
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
    v7 = *(a1 + 16);
    if (!v7)
    {
      v7 = *(qword_1026360B0 + 16);
    }

    v8 = sub_1003C53AC(v7, a2);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
    }

    else
    {
      v10 = 1;
    }

    v5 = (v5 + v9 + v10 + 1);
    v3 = *(a1 + 48);
    if ((v3 & 8) == 0)
    {
LABEL_15:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_29;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_15;
  }

  v11 = *(a1 + 24);
  if (!v11)
  {
    v11 = *(qword_1026360B0 + 24);
  }

  v12 = sub_1003C5A74(v11, a2);
  v13 = v12;
  if (v12 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
  }

  else
  {
    v14 = 1;
  }

  v5 = (v5 + v13 + v14 + 1);
  if ((*(a1 + 48) & 0x10) != 0)
  {
LABEL_29:
    v15 = *(a1 + 32);
    if (!v15)
    {
      v15 = *(qword_1026360B0 + 32);
    }

    v16 = sub_1003C6344(v15, a2);
    v18 = v16;
    if (v16 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, v17);
    }

    else
    {
      v19 = 1;
    }

    v5 = (v5 + v18 + v19 + 1);
  }

LABEL_35:
  *(a1 + 44) = v5;
  return v5;
}

void sub_1003C7154(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003C6504(a1, lpsrc);
}

void sub_1003C71F4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 8);
      *(a1 + 28) |= 1u;
      v6 = *(a1 + 8);
      if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 28);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 16);
      *(a1 + 28) |= 2u;
      v8 = *(a1 + 16);
      if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
    }
  }
}

void sub_1003C7318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003C7330(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102449380;
  sub_1003B2CF4(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003C7384(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102449380;
  sub_1003B2CF4(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003C7440(uint64_t result)
{
  if (*(result + 28))
  {
    if (*(result + 28))
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

    if ((*(result + 28) & 2) != 0)
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
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_1003C74BC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        goto LABEL_16;
      }

      *(a1 + 28) |= 1u;
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
      if (v9 < *(this + 2) && *v9 == 18)
      {
        *(this + 1) = v9 + 1;
LABEL_19:
        *(a1 + 28) |= 2u;
        if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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

    if (v7 == 2)
    {
      goto LABEL_19;
    }

LABEL_16:
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

uint64_t sub_1003C7660(uint64_t result)
{
  v1 = result;
  v2 = *(result + 28);
  if (v2)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    v2 = *(v1 + 28);
  }

  if ((v2 & 2) != 0)
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return result;
}

uint64_t sub_1003C76CC(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_24;
  }

  if ((*(a1 + 28) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 28) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v5 = *(a1 + 8);
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
    v3 = *(a1 + 28);
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
  *(a1 + 24) = v4;
  return v4;
}

void sub_1003C77C0(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003C71F4(a1, lpsrc);
}

uint64_t sub_1003C7898(uint64_t result, int a2)
{
  v2 = *(result + 12);
  if (v2 < a2)
  {
    v3 = 2 * v2;
    if (v3 <= a2)
    {
      v3 = a2;
    }

    if (v3 <= 4)
    {
      v3 = 4;
    }

    *(result + 12) = v3;
    operator new[]();
  }

  return result;
}

uint64_t sub_1003C7948(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_1003C79C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003C79DC(uint64_t result)
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

uint64_t sub_1003C7A4C(uint64_t result)
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

uint64_t sub_1003C7A9C(int *a1)
{
  if (a1[3] >= 1)
  {
    v2 = 0;
    do
    {
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

void sub_1003C7B1C(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_1003C7948(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v6 + 1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      sub_1003A552C(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void sub_1003C7C3C(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_1003C7948(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v6 + 1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      sub_1003C49F8(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

uint64_t sub_1003C7D58()
{
  sub_10001CAF4(&v5);
  v4 = 0;
  v0 = CFStringCreateWithCStringNoCopy(0, "MicroLocationsAnalyticsSendEventEnabled", 0x8000100u, kCFAllocatorNull);
  v1 = sub_10001CBC0(v5, v0, &v4);
  CFRelease(v0);
  v2 = v4;
  if (v6)
  {
    sub_100008080(v6);
  }

  return v2 | ((v1 & 1) == 0);
}

void sub_1003C7DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003C7E04()
{
  if (sub_1003C7D58())
  {
    std::operator+<char>();
    v0 = std::string::append(&v4, ".triggers", 9uLL);
    v1 = *&v0->__r_.__value_.__l.__data_;
    v6 = v0->__r_.__value_.__r.__words[2];
    *buf = v1;
    v0->__r_.__value_.__l.__size_ = 0;
    v0->__r_.__value_.__r.__words[2] = 0;
    v0->__r_.__value_.__r.__words[0] = 0;
    if (v6 >= 0)
    {
      v2 = buf;
    }

    else
    {
      v2 = *buf;
    }

    [NSString stringWithUTF8String:v2];
    AnalyticsSendEventLazy();
    if (SHIBYTE(v6) < 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (qword_1025D46D0 != -1)
    {
      sub_101872878();
    }

    v3 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "CLMicroLocationCoreAnalyticsPublishHelper, sendTriggerEvent, not sending event because sending to CoreAnalytics is disabled", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187288C();
    }
  }
}

void sub_1003C8050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_1003C8084(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = *(a1 + 32);
  if (*(v3 + 23) < 0)
  {
    v3 = *v3;
  }

  [v2 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", v3), @"loiType"}];
  v4 = sub_1003CC894(*(a1 + 48));
  v5 = *(a1 + 40);
  if (*(v5 + 23) >= 0)
  {
    v6 = *(v5 + 23);
  }

  else
  {
    v6 = v5[1];
  }

  sub_100070148(&__p, v6 + 12);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(v5 + 23) >= 0)
    {
      v8 = v5;
    }

    else
    {
      v8 = *v5;
    }

    memmove(p_p, v8, v6);
  }

  strcpy(p_p + v6, "TriggerEvent");
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &__p;
  }

  else
  {
    v9 = __p.__r_.__value_.__r.__words[0];
  }

  [v2 setObject:v4 forKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v9)}];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = *(a1 + 40);
  if (*(v10 + 23) >= 0)
  {
    v11 = *(v10 + 23);
  }

  else
  {
    v11 = v10[1];
  }

  sub_100070148(&__p, v11 + 17);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &__p;
  }

  else
  {
    v12 = __p.__r_.__value_.__r.__words[0];
  }

  if (v11)
  {
    if (*(v10 + 23) >= 0)
    {
      v13 = v10;
    }

    else
    {
      v13 = *v10;
    }

    memmove(v12, v13, v11);
  }

  strcpy(v12 + v11, "TriggerEventCount");
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  [v2 setObject:&off_10254E8B8 forKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v14)}];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v15 = *(a1 + 56);
  if (*(v15 + 23) < 0)
  {
    v15 = *v15;
  }

  v16 = [NSString stringWithUTF8String:v15];
  v17 = *(a1 + 40);
  if (*(v17 + 23) >= 0)
  {
    v18 = *(v17 + 23);
  }

  else
  {
    v18 = v17[1];
  }

  sub_100070148(&__p, v18 + 7);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__r_.__value_.__r.__words[0];
  }

  if (v18)
  {
    if (*(v17 + 23) >= 0)
    {
      v20 = v17;
    }

    else
    {
      v20 = *v17;
    }

    memmove(v19, v20, v18);
  }

  strcpy(v19 + v18, "Verdict");
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &__p;
  }

  else
  {
    v21 = __p.__r_.__value_.__r.__words[0];
  }

  [v2 setObject:v16 forKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v21)}];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_100398AB4(*(a1 + 64), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &__p;
  }

  else
  {
    v22 = __p.__r_.__value_.__r.__words[0];
  }

  [v2 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", v22), @"clientId"}];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 72))
  {
    v23 = "On";
  }

  else
  {
    v23 = "Off";
  }

  [v2 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", v23), @"displayState"}];
  [v2 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", *(a1 + 73)), @"isForcedLocalizationApp"}];
  return v2;
}

void sub_1003C8410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003C8468(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_1003C8498(a1, a2 - v3, a3);
  }
}

void sub_1003C8498(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_101C652A0)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_10028C64C();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      sub_1000B9708(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_101C652A0)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void sub_1003C8668(uint64_t a1, unint64_t a2, int *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 2)
  {
    if (a2)
    {
      v12 = 0;
      v13 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = v6 + 4 * a2;
      v17 = *a3;
      v18 = v14 + 4;
      v19 = (v6 + 8);
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_101C652A0)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_101C65490)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_10028C64C();
    }

    v9 = v7 >> 2;
    v10 = v5 - *a1;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      sub_1000B85D0(a1, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = 4 * v9 + 4 * a2;
    v25 = *a3;
    v26 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_101C652A0)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_101C65490)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = *(a1 + 8) - *a1;
    v33 = v23 - v32;
    memcpy((v23 - v32), *a1, v32);
    v34 = *a1;
    *a1 = v33;
    *(a1 + 8) = v24;
    *(a1 + 16) = 0;
    if (v34)
    {

      operator delete(v34);
    }
  }
}

void sub_1003C88B0(void *a1@<X1>, _BYTE *a2@<X2>, double *a3@<X3>, _BYTE *a4@<X8>)
{
  if ([objc_msgSend(a1 "bundleId")])
  {
    v8 = *a3;
    sub_10039A218(v15);
    sub_1003C8C10(v15, 0, 0, 3u, v19, v8);
    buf[0] = 0;
    sub_1003C0494(v22, v19);
    *a4 = buf[0];
    sub_1003C0494((a4 + 8), v22);
  }

  else
  {
    v9 = [objc_msgSend(a1 launchReason];
    v18 |= 8u;
    if (v17 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    sub_100006044(v17, v9);
    v18 |= 4u;
    if (!v16)
    {
      operator new();
    }

    sub_1003A8ED0(v16, a2);
    if (qword_1025D46D0 != -1)
    {
      sub_1018729A4();
    }

    v10 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v17;
      if (SHIBYTE(v17->__r_.__value_.__r.__words[2]) < 0)
      {
        v11 = v17->__r_.__value_.__r.__words[0];
      }

      v12 = v18 | 4;
      v18 |= 4u;
      if (!v16)
      {
        operator new();
      }

      v13 = *(v16 + 8);
      v18 = v12;
      v14 = *(v16 + 9);
      *buf = 68289794;
      v21 = 0;
      v22[0] = 34;
      v22[1] = 8;
      v23 = "";
      v24 = 2082;
      v25 = v11;
      v26 = 1026;
      v27 = v13;
      v28 = 1026;
      v29 = v14;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:appLaunch, launchReason:%{public, location:escape_only}s, islongformvideo:%{public}hhd, is MR allowed app:%{public}hhd}", buf, 0x28u);
    }

    sub_1003C8C10(v15, 0, 0, 3u, v19, *a3);
    buf[0] = 1;
    sub_1003C0494(v22, v19);
    *a4 = buf[0];
    sub_1003C0494((a4 + 8), v22);
  }

  sub_1003C0708(v22);
  sub_1003C0708(v19);
  sub_1003AA850(v15);
}

void sub_1003C8C10(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  sub_10039A380(a5);
  v12 = *(a1 + 32);
  if (!sub_10039A928(v12))
  {
    v14 = "::CLMicroLocationProto::EventType_IsValid(value)";
    v15 = 19803;
    v16 = "set_eventtype";
    goto LABEL_6;
  }

  v13 = *(a5 + 128);
  *(a5 + 72) = v12;
  *(a5 + 8) = a6;
  *(a5 + 77) = a2;
  *(a5 + 128) = v13 | 0x2803;
  *(a5 + 76) = a3;
  if ((sub_10039A8F8(a4) & 1) == 0)
  {
    v14 = "::CLMicroLocationProto::ConfidenceLevel_IsValid(value)";
    v15 = 20312;
    v16 = "set_confidencelevel";
LABEL_6:
    __assert_rtn(v16, "microlocation.pb.h", v15, v14);
  }

  *(a5 + 128) |= 0x4000u;
  *(a5 + 120) = a4;
  sub_1003CC3A4(a5, a1);
}

uint64_t sub_1003C8D3C(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      sub_1003C8DF8(&v2, a2);
    }

    sub_10028C64C();
  }

  return result;
}

void sub_1003C8DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003C8DF8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    sub_1000B9708(a1, v2);
  }

  sub_10028C64C();
}

void sub_1003C8E3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  sub_1003C8EE0(&v18, &v16, &v14, &v13);
}

void sub_1003C8EE0(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  sub_1003C8F70(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void sub_1003C8F70(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

const void **sub_1003C9040(void *a1, const void **a2)
{
  v4 = sub_100007070(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_1003C92A0();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100019DF4(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1003C927C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1003C9358(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003C933C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1003C9358(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1003C9358(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_1003C93BC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1003C93BC(a1, *a2);
    sub_1003C93BC(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *sub_1003C9410(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1003C94DC(uint64_t a1)
{
  sub_1003C9518(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1003C9518(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_1003C9564(uint64_t a1, void *a2, _BYTE *a3, double *a4, __n128 a5)
{
  sub_10038EC34(a1 + 8, a2, a3, a4, v12, a5);
  if (v12[0] == 1)
  {
    v7 = *(a1 + 144);
    v11 = 0;
    sub_10038DF5C(&v11);
    *&v15 = sub_10038DEE4(&v11);
    *(&v15 + 1) = v8;
    v9 = v14;
    if (!v14)
    {
      v9 = *(qword_102636050 + 80);
    }

    sub_1003C96A4(&v15, v9, v16, *a4);
    sub_1003931E4(v7, v16);
    sub_1003BAF40(&v17);
    sub_10038E924(&v11);
    sub_1003C9730(a1, v13);
  }

  return sub_1003C0708(v13);
}

void sub_1003C96A4(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  sub_10039A310(v8);
  sub_1003CC56C(v8, a2);
  sub_1003CF2F0(a3, a1, *(a2 + 16), v8, a4);
  sub_1003BAF40(v8);
}

uint64_t sub_1003C9730(uint64_t a1, uint64_t a2)
{
  v4 = sub_1003C9BE4(a1, a2);
  v5 = sub_1003CA2E4(a1, a2);
  if ((*(a2 + 128) & 4) == 0)
  {
    goto LABEL_5;
  }

  v6 = *(a2 + 16);
  if (!v6)
  {
    v6 = *(qword_102636050 + 16);
  }

  if ((*(v6 + 44) & 4) != 0)
  {
    v11 = *(v6 + 16);
    if (*(v11 + 23) < 0)
    {
      sub_100007244(&__dst, *v11, *(v11 + 1));
    }

    else
    {
      v12 = *v11;
      __dst.__r_.__value_.__r.__words[2] = *(v11 + 2);
      *&__dst.__r_.__value_.__l.__data_ = v12;
    }
  }

  else
  {
LABEL_5:
    sub_10000EC00(&__dst, "");
  }

  sub_10000EC00(&__str, "localization");
  sub_10000EC00(v17, "home");
  if (v4)
  {
    v7 = "success";
  }

  else
  {
    v7 = "fail";
  }

  sub_10000EC00(__p, v7);
  sub_1003CCBA8((a1 + 90));
  sub_1003C7E04();
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if ((*(a2 + 129) & 4) == 0)
  {
    goto LABEL_19;
  }

  v8 = *(a2 + 88);
  if (!v8)
  {
    v8 = *(qword_102636050 + 88);
  }

  if ((*(v8 + 44) & 4) != 0)
  {
    v13 = *(v8 + 16);
    if (*(v13 + 23) < 0)
    {
      sub_100007244(&__str, *v13, *(v13 + 1));
    }

    else
    {
      v14 = *v13;
      __str.__r_.__value_.__r.__words[2] = *(v13 + 2);
      *&__str.__r_.__value_.__l.__data_ = v14;
    }
  }

  else
  {
LABEL_19:
    sub_10000EC00(&__str, "");
  }

  std::string::operator=(&__dst, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_10000EC00(&__str, "recording");
  sub_10000EC00(v17, "home");
  if (v5)
  {
    v9 = "success";
  }

  else
  {
    v9 = "fail";
  }

  sub_10000EC00(__p, v9);
  sub_1003CCBA8((a1 + 90));
  sub_1003C7E04();
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v4 | v5;
}

void sub_1003C999C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003C9A18(uint64_t a1, void *a2, _BYTE *a3, double *a4)
{
  sub_1003C88B0(a2, a3, a4, v11);
  if (v11[0] == 1)
  {
    v6 = *(a1 + 144);
    v10 = 0;
    sub_10038DF5C(&v10);
    *&v14 = sub_10038DEE4(&v10);
    *(&v14 + 1) = v7;
    v8 = v13;
    if (!v13)
    {
      v8 = *(qword_102636050 + 24);
    }

    sub_1003C9B58(&v14, v8, v15, *a4);
    sub_1003931E4(v6, v15);
    sub_1003BAF40(&v16);
    sub_10038E924(&v10);
    sub_1003C9730(a1, v12);
  }

  return sub_1003C0708(v12);
}

void sub_1003C9B58(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  sub_10039A310(v8);
  sub_1003CC4D4(v8, a2);
  sub_1003CF2F0(a3, a1, *(a2 + 32), v8, a4);
  sub_1003BAF40(v8);
}

uint64_t sub_1003C9BE4(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 128) + 96))(*(a1 + 128));
  v5 = sub_1003CE018(a1 + 96, a2, v4);
  v6 = *(a2 + 8);
  v25 = v6;
  if (!v5)
  {
    return 0;
  }

  v7 = sub_1003CE718(a1 + 96);
  v9 = v8;
  sub_10001CAF4(buf);
  LODWORD(v30) = 0;
  v10 = CFStringCreateWithCStringNoCopy(0, "MicroLocationsLocalizingThrottleDuration", 0x8000100u, kCFAllocatorNull);
  v11 = sub_1004FB850(*buf, v10, &v30);
  CFRelease(v10);
  v12 = v30;
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  v13 = 300.0;
  if (v11)
  {
    v13 = v12;
  }

  if (sub_1003CE5A0(v6, v13, a1 + 96, v5, v7, v9))
  {
    if (qword_1025D46D0 != -1)
    {
      sub_1018729CC();
    }

    v14 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Legacy throttled request", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018729F4();
    }

    sub_10039A2D8(&v30);
    v32 |= 2u;
    v15 = v31;
    if (v31 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    if (*(v31 + 23) < 0)
    {
      *(v31 + 8) = 0;
      v15 = *v15;
    }

    else
    {
      *(v31 + 23) = 0;
    }

    *v15 = 0;
    v21 = *(a1 + 144);
    LODWORD(v27[0]) = 0;
    sub_10038DF5C(v27);
    *&__p = sub_10038DEE4(v27);
    *(&__p + 1) = v22;
    Current_2 = j__CFAbsoluteTimeGetCurrent_2();
    sub_1003CA684(&__p, &v30, buf, Current_2);
    sub_1003931E4(v21, buf);
    sub_1003BAF40((&v29 + 2));
    sub_10038E924(v27);
    sub_1003B7CD0(&v30);
    return 0;
  }

  if (*(a1 + 184) == 1)
  {
    *buf = 0;
    sub_10038DF5C(buf);
    v27[0] = sub_10038DEE4(buf);
    v27[1] = v16;
    sub_10038E924(buf);
    if (qword_1025D46D0 != -1)
    {
      sub_1018729CC();
    }

    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 184))
      {
        operator new();
      }

      sub_100173BA0();
    }

    if ((*(a1 + 184) & 1) == 0)
    {
      sub_100173BA0();
    }

    v17 = (*(**(a1 + 128) + 56))(*(a1 + 128), *(a1 + 168), *(a1 + 176), v27, &v25, v5 == 1);
    v18 = v17;
    v19 = (a1 + 201);
    if ((*(a1 + 201) & 1) == 0)
    {
      if (!v17)
      {
        return v18;
      }

LABEL_35:
      sub_1003CE6E0(a1 + 96, &v25);
      return 1;
    }

LABEL_28:
    *buf = 0;
    sub_10038DF5C(buf);
    v30 = sub_10038DEE4(buf);
    *&v31 = v20;
    sub_10038E924(buf);
    if (qword_1025D46D0 != -1)
    {
      sub_1018729CC();
    }

    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      if (*v19)
      {
        operator new();
      }

      sub_100173BA0();
    }

    if ((*v19 & 1) == 0)
    {
      sub_100173BA0();
    }

    if (((v18 | (*(**(a1 + 128) + 56))(*(a1 + 128), *(a1 + 185), *(a1 + 193), &v30, &v25, v5 == 1)) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_35;
  }

  v18 = 0;
  v19 = (a1 + 201);
  if (*(a1 + 201) == 1)
  {
    goto LABEL_28;
  }

  return v18;
}

void sub_1003CA22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18)
{
  operator delete(v19);
  operator delete(v18);
  _Unwind_Resume(a1);
}

uint64_t sub_1003CA2E4(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 128) + 96))(*(a1 + 128));
  v5 = sub_1003CE018(a1 + 96, a2, v4);
  v6 = *(a2 + 8);
  v31 = v6;
  if (*(a1 + 184) != 1)
  {
    return 0;
  }

  v7 = HIDWORD(v5);
  v8 = *(a1 + 201) != 1 || v7 == 0;
  if (v8 || (*(a1 + 202) & 1) != 0)
  {
    return 0;
  }

  sub_10001CAF4(&v33);
  v32 = 0;
  v9 = CFStringCreateWithCStringNoCopy(0, "MicroLocationsRecordingThrottleDuration", 0x8000100u, kCFAllocatorNull);
  v10 = sub_1004FB850(v33, v9, &v32);
  CFRelease(v9);
  v11 = v32;
  if (v34)
  {
    sub_100008080(v34);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1200;
  }

  if (*(a1 + 204) == 1)
  {
    sub_10001CAF4(&v33);
    v32 = 0;
    v13 = CFStringCreateWithCStringNoCopy(0, "MicroLocationsRecordingThrottleDurationUnstableModel", 0x8000100u, kCFAllocatorNull);
    v14 = sub_1004FB850(v33, v13, &v32);
    CFRelease(v13);
    v12 = v32;
    if (v34)
    {
      sub_100008080(v34);
    }

    if (!v14)
    {
      v12 = 60;
    }
  }

  v15 = sub_1003CE724(a1 + 96);
  if (sub_1003CE5A0(v6, v12, a1 + 96, v7, v15, v16))
  {
    return 0;
  }

  if ((*(a2 + 129) & 4) == 0)
  {
    goto LABEL_26;
  }

  v18 = *(a2 + 88);
  if (!v18)
  {
    v18 = *(qword_102636050 + 88);
  }

  if (*(v18 + 44) & 8) != 0 && (sub_1003CBFA8(*(v18 + 24), &v33), (v35))
  {
    v19 = v33;
    v20 = v34;
  }

  else
  {
LABEL_26:
    LODWORD(v33) = 0;
    sub_10038DF5C(&v33);
    v19 = sub_10038DEE4(&v33);
    v20 = v21;
    sub_10038E924(&v33);
  }

  if (*(a1 + 184) == 1)
  {
    v22 = *(a1 + 128);
    v23 = *(a1 + 168);
    v24 = *(a1 + 176);
    v32 = 0;
    sub_10038DF5C(&v32);
    v25 = sub_10038DEE4(&v32);
    LOBYTE(v33) = 0;
    v35 = 0;
    v27 = (*(*v22 + 64))(v22, v23, v24, v25, v26, &v33, &v31);
    sub_10038E924(&v32);
    if ((*(a1 + 201) & 1) == 0)
    {
      if (v27)
      {
        goto LABEL_33;
      }

      return 0;
    }

LABEL_32:
    v28 = *(a1 + 193);
    v29 = *(a1 + 185);
    v30 = *(a1 + 128);
    LOBYTE(v33) = 0;
    v35 = 0;
    if ((v27 | (*(*v30 + 64))(v30, v29, v28, v19, v20, &v33, &v31)))
    {
LABEL_33:
      sub_1003CE6FC(a1 + 96, &v31);
      return 1;
    }

    return 0;
  }

  v27 = 0;
  result = 0;
  if (*(a1 + 201) == 1)
  {
    goto LABEL_32;
  }

  return result;
}

void sub_1003CA63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10038E924(va);
  _Unwind_Resume(a1);
}

void sub_1003CA684(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  sub_10039A310(v8);
  sub_1003CC604(v8, a2);
  sub_1003CF2F0(a3, a1, *(a2 + 16), v8, a4);
  sub_1003BAF40(v8);
}

id sub_1003CA7D0(uint64_t a1)
{
  result = objc_alloc_init(*(a1 + 32));
  qword_102655FE0 = result;
  return result;
}

void sub_1003CA878(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4D80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D4D80))
  {
    sub_1003CAA20(&xmmword_1025D4D68);
    __cxa_atexit(&std::string::~string, &xmmword_1025D4D68, dword_100000000);
    __cxa_guard_release(&qword_1025D4D80);
  }

  if (byte_1025D4D7F < 0)
  {
    sub_100007244(a1, xmmword_1025D4D68, *(&xmmword_1025D4D68 + 1));
  }

  else
  {
    *a1 = xmmword_1025D4D68;
    *(a1 + 16) = unk_1025D4D78;
  }
}

void sub_1003CA94C(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4DA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D4DA0))
  {
    sub_1003950F4(&xmmword_1025D4D88);
    __cxa_atexit(&std::string::~string, &xmmword_1025D4D88, dword_100000000);
    __cxa_guard_release(&qword_1025D4DA0);
  }

  if (byte_1025D4D9F < 0)
  {
    sub_100007244(a1, xmmword_1025D4D88, *(&xmmword_1025D4D88 + 1));
  }

  else
  {
    *a1 = xmmword_1025D4D88;
    *(a1 + 16) = unk_1025D4D98;
  }
}

double sub_1003CAA20@<D0>(std::string *a1@<X8>)
{
  memset(&v3, 0, sizeof(v3));
  sub_1003CAA84(&v3);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_1003CAA68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003CAA84(std::string *a1)
{
  sub_1003CAADC(a1);
  sub_1003CABB4(a1);
  sub_1003CAC98(a1);
  sub_1003CAD7C(a1);
  sub_1003CAE60(a1);

  return sub_10038C868(a1);
}

uint64_t sub_1003CAADC(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 0;
  v7.__r_.__value_.__s.__data_[0] = 0;
  v2 = std::string::append(&v7, "RecordingUUID", 0xDuLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003CAB80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003CABB4(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "ScanCFTimestamp", 0xFuLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003CAC64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003CAC98(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "ScanMCTimestamp", 0xFuLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003CAD48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003CAD7C(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "Data", 4uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003CAE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003CAE60(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "Flags", 5uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003CAF10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003CB158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 25) < 0)
  {
    operator delete(*(v40 - 48));
  }

  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003CB204(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

uint64_t sub_1003CB2B8()
{
  v7 = 0;
  v8 = &v7;
  v9 = 0;
  sub_1003CB204(&v8, 7uLL);
  qword_1026360C0 = v7;
  byte_1026360C8 = 0;
  qword_102656008 = off_102447338;
  __asm { FMOV            V0.2D, #1.0 }

  v6 = _Q0;
  *algn_102656010 = _Q0;
  qword_102656020 = 0x4008000000000000;
  __cxa_atexit(nullsub_34, &qword_102656008, dword_100000000);
  *algn_102656030 = v6;
  qword_102656040 = 0x3FF0000000000000;
  qword_102656028 = off_102449B10;
  return __cxa_atexit(nullsub_34, &qword_102656028, dword_100000000);
}

void **sub_1003CB3B0(void **result, uint64_t a2)
{
  if (a2 < 0)
  {
    v7 = *result;
    do
    {
      v8 = *v7;
      if (*v7)
      {
        do
        {
          v4 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v4 = v7[2];
          v5 = *v4 == v7;
          v7 = v4;
        }

        while (v5);
      }

      v7 = v4;
    }

    while (!__CFADD__(a2++, 1));
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = *result;
    do
    {
      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (a2-- > 1);
  }

  *result = v4;
  return result;
}

void sub_1003CB43C(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4DC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D4DC0))
  {
    sub_1003CB5E4(&xmmword_1025D4DA8);
    __cxa_atexit(&std::string::~string, &xmmword_1025D4DA8, dword_100000000);
    __cxa_guard_release(&qword_1025D4DC0);
  }

  if (byte_1025D4DBF < 0)
  {
    sub_100007244(a1, xmmword_1025D4DA8, *(&xmmword_1025D4DA8 + 1));
  }

  else
  {
    *a1 = xmmword_1025D4DA8;
    *(a1 + 16) = unk_1025D4DB8;
  }
}

void sub_1003CB510(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4DE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D4DE0))
  {
    sub_1003CBB10(&xmmword_1025D4DC8);
    __cxa_atexit(&std::string::~string, &xmmword_1025D4DC8, dword_100000000);
    __cxa_guard_release(&qword_1025D4DE0);
  }

  if (byte_1025D4DDF < 0)
  {
    sub_100007244(a1, xmmword_1025D4DC8, *(&xmmword_1025D4DC8 + 1));
  }

  else
  {
    *a1 = xmmword_1025D4DC8;
    *(a1 + 16) = unk_1025D4DD8;
  }
}

double sub_1003CB5E4@<D0>(std::string *a1@<X8>)
{
  memset(&v3, 0, sizeof(v3));
  sub_1003CB648(&v3);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_1003CB62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003CB648(std::string *a1)
{
  sub_1003CB6A8(a1);
  sub_1003CB780(a1);
  sub_1003CB864(a1);
  sub_10038C5BC(a1);
  sub_1003CB948(a1);
  sub_10038C868(a1);

  return sub_1003CBA2C(a1);
}

uint64_t sub_1003CB6A8(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 0;
  v7.__r_.__value_.__s.__data_[0] = 0;
  v2 = std::string::append(&v7, "ServiceUUID", 0xBuLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003CB74C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003CB780(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "LastActiveTimestamp", 0x13uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003CB830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003CB864(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "ServiceType", 0xBuLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003CB914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003CB948(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "LocationTypes", 0xDuLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003CB9F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003CBA2C(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "UserId", 6uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003CBADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_1003CBB10@<D0>(std::string *a1@<X8>)
{
  sub_10000EC00(&v11, "VALUES (");
  v2 = 7;
  do
  {
    if (v2 == 7)
    {
      *(&v8.__r_.__value_.__s + 23) = 0;
      v8.__r_.__value_.__s.__data_[0] = 0;
    }

    else
    {
      *(&v8.__r_.__value_.__s + 23) = 2;
      strcpy(&v8, ", ");
    }

    v3 = std::string::append(&v8, "?", 1uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v10 = v3->__r_.__value_.__r.__words[2];
    *__p = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (v10 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if (v10 >= 0)
    {
      v6 = HIBYTE(v10);
    }

    else
    {
      v6 = __p[1];
    }

    std::string::append(&v11, v5, v6);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    --v2;
  }

  while (v2);
  std::string::append(&v11, ")", 1uLL);
  result = *&v11.__r_.__value_.__l.__data_;
  *a1 = v11;
  return result;
}

void sub_1003CBC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003CBE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 25) < 0)
  {
    operator delete(*(v40 - 48));
  }

  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003CBF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  result = sub_10038B978(&v7, v4, &v4[v3]);
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = 1;
  return result;
}

uint64_t **sub_1003CBFA8@<X0>(uint64_t **result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 23);
  if (v2 < 0)
  {
    if (result[1] != 16)
    {
LABEL_7:
      v3 = 0;
      *a2 = 0;
      goto LABEL_8;
    }

    result = *result;
  }

  else if (v2 != 16)
  {
    goto LABEL_7;
  }

  *a2 = *result;
  v3 = 1;
LABEL_8:
  a2[16] = v3;
  return result;
}

void sub_1003CBFEC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 68) == 1)
  {
    sub_10039A1AC(v14);
    v15 = *a1;
    v4 = *(a1 + 2);
    v21 |= 6u;
    v16 = v4;
    if (*(a1 + 55) < 0)
    {
      sub_100007244(__p, a1[4], a1[5]);
    }

    else
    {
      *__p = *(a1 + 2);
      v23 = a1[6];
    }

    sub_1003CBF30(__p, &v24);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    if (v25 == 1)
    {
      v21 |= 0x10u;
      v5 = v18;
      if (v18 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      if (*(v18 + 23) < 0)
      {
        v18[1] = 16;
        v5 = *v5;
      }

      else
      {
        *(v18 + 23) = 16;
      }

      *v5 = v24;
      *(v5 + 16) = 0;
      v21 |= 8u;
      v8 = v17;
      if (!v17)
      {
        operator new();
      }

      v9 = *(a1 + 4);
      v17[6] |= 1u;
      v8[2] = v9;
      v21 |= 8u;
      v10 = *(a1 + 5);
      v8[6] |= 2u;
      v8[3] = v10;
      v21 |= 8u;
      v11 = *(a1 + 56);
      v12 = *(a1 + 6);
      v8[6] |= 4u;
      v8[4] = v12;
      if (!sub_10039C25C(v11))
      {
        __assert_rtn("set_devicetype", "microlocation.pb.h", 9831, "::CLMicroLocationProto::UwbRange_DeviceType_IsValid(value)");
      }

      v19 = v11;
      v21 |= 0xE0u;
      v20 = *(a1 + 60);
      sub_10039C528(a2, v14);
      v7 = 1;
    }

    else
    {
      if (qword_1025D46D0 != -1)
      {
        sub_101872B18();
      }

      v6 = qword_1025D46D8;
      if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "Invalid UwbRange IDS UUID", __p, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101872B40(__p);
        v13 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "static std::optional<CLMicroLocationProto::UwbRange> CLMicroLocationProtobufHelper::protobufFromNative(const CLHomeNearbyObjectInternal &)", "%s\n", v13);
        if (v13 != __p)
        {
          free(v13);
        }
      }

      v7 = 0;
      *a2 = 0;
    }

    a2[64] = v7;
    sub_10039C5E0(v14);
  }

  else
  {
    *a2 = 0;
    a2[64] = 0;
  }
}

void sub_1003CC3A4(uint64_t a1, uint64_t a2)
{
  *(a1 + 128) |= 8u;
  v2 = *(a1 + 24);
  if (!v2)
  {
    operator new();
  }

  sub_1003AAFF0(v2, a2);
}

void sub_1003CC43C(uint64_t a1, uint64_t a2)
{
  *(a1 + 128) |= 0x200u;
  v2 = *(a1 + 80);
  if (!v2)
  {
    operator new();
  }

  sub_1003B0EC0(v2, a2);
}

void sub_1003CC4D4(uint64_t a1, uint64_t a2)
{
  *(a1 + 292) |= 2u;
  v2 = *(a1 + 16);
  if (!v2)
  {
    operator new();
  }

  sub_1003AAFF0(v2, a2);
}

void sub_1003CC56C(uint64_t a1, uint64_t a2)
{
  *(a1 + 292) |= 0x80u;
  v2 = *(a1 + 64);
  if (!v2)
  {
    operator new();
  }

  sub_1003B0EC0(v2, a2);
}

void sub_1003CC604(uint64_t a1, uint64_t a2)
{
  *(a1 + 292) |= 0x2000000u;
  v2 = *(a1 + 208);
  if (!v2)
  {
    operator new();
  }

  sub_1003B8204(v2, a2);
}

void sub_1003CC69C(void *a1, const void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = [a1 UTF8String];
  if (v6 != v7)
  {
    v9 = v8;
    v10 = strlen(v8);
    while (1)
    {
      v11 = *(v6 + 23);
      if (v11 < 0)
      {
        if (v10 == v6[1])
        {
          if (v10 == -1)
          {
            sub_1003CC9DC();
          }

          v12 = *v6;
LABEL_9:
          if (!memcmp(v12, v9, v10))
          {
            break;
          }
        }
      }

      else
      {
        v12 = v6;
        if (v10 == v11)
        {
          goto LABEL_9;
        }
      }

      v6 += 3;
      if (v6 == v7)
      {
        v6 = v7;
        break;
      }
    }
  }

  v13 = v6 != a2[1];
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003CC7C8;
  block[3] = &unk_102449B48;
  v16 = v13;
  block[4] = a1;
  block[5] = a3;
  dispatch_async(global_queue, block);
}

void sub_1003CC7C8(uint64_t a1)
{
  sub_10039A1F0(v7);
  if (objc_opt_class())
  {
    v2 = [+[AVSystemController sharedAVSystemController](AVSystemController "sharedAVSystemController")];
    v3 = v8 | 1;
    v7[8] = v2;
  }

  else
  {
    v3 = v8;
  }

  v4 = *(a1 + 48);
  v8 = v3 | 2;
  v7[9] = v4;
  v5 = *(a1 + 40);
  sub_1003A8B38(v6, v7);
  (*(v5 + 16))(v5, v6);
  sub_1003A8B3C(v6);
  sub_1003A8B3C(v7);
}

void sub_1003CC870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_1003A8B3C(&a9);
  sub_1003A8B3C(&a12);
  _Unwind_Resume(a1);
}

const __CFString *sub_1003CC894(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 > 9)
  {
    if (v1 > 13)
    {
      switch(v1)
      {
        case 14:
          return @"truthLabelDonation";
        case 42:
          return @"RequestObservation";
        case 43:
          return @"RequestPrediction";
      }
    }

    else
    {
      switch(v1)
      {
        case 10:
          return @"homekitScene";
        case 12:
          return @"nowPlaying";
        case 13:
          return @"recordingRequest";
      }
    }
  }

  else if (v1 > 4)
  {
    switch(v1)
    {
      case 5:
        return @"batteryChargerConnected";
      case 7:
        return @"forcedRecording";
      case 9:
        return @"homekitAccessory";
    }
  }

  else
  {
    switch(v1)
    {
      case 1:
        return @"receivedEventAction";
      case 2:
        return @"appLaunch";
      case 4:
        return @"backlightOn";
    }
  }

  return @"triggerInvalid";
}

uint64_t sub_1003CC9F4()
{
  sub_10000EC00(byte_1026360D0, "com.apple.magicalmoments");
  __cxa_atexit(&std::string::~string, byte_1026360D0, dword_100000000);
  sub_10000EC00(byte_1026360E8, "com.apple.microlocation.semisupervised");
  __cxa_atexit(&std::string::~string, byte_1026360E8, dword_100000000);
  sub_10000EC00(&qword_102636100, "com.apple.microlocation.homeloi");
  __cxa_atexit(&std::string::~string, &qword_102636100, dword_100000000);
  sub_10000EC00(byte_102636118, "com.apple.microlocation.similarity");

  return __cxa_atexit(&std::string::~string, byte_102636118, dword_100000000);
}

uint64_t sub_1003CCADC@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = sub_100070148(a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t sub_1003CCBB0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

id sub_1003CCF28(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 32) & 1) == 0)
  {
    [*(v2 + 16) startSessionForClient:?];
    if (qword_1025D46D0 != -1)
    {
      sub_101872B84();
    }

    v3 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
    {
      v14 = 68289026;
      v15 = 2082;
      v16 = "";
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Requested PDR fence without an active session! Starting Motion Session}", &v14, 0x12u);
      if (qword_1025D46D0 != -1)
      {
        sub_101872B98();
      }
    }

    v4 = qword_1025D46D8;
    if (os_signpost_enabled(qword_1025D46D8))
    {
      v14 = 68289026;
      v15 = 2082;
      v16 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Requested PDR fence without an active session! Starting Motion Session", "{msg%{public}.0s:Requested PDR fence without an active session! Starting Motion Session}", &v14, 0x12u);
    }

    *(*(a1 + 32) + 32) = 1;
    v2 = *(a1 + 32);
  }

  v5 = qword_1025D46D0;
  if (*(v2 + 77) == 1)
  {
    if (qword_1025D46D0 != -1)
    {
      sub_101872B98();
    }

    v6 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "Fence is already active, setting fence again", &v14, 2u);
    }

    v7 = sub_10000A100(121, 0);
    v5 = qword_1025D46D0;
    if (v7)
    {
      sub_101872BC0(qword_1025D46D0, &v14);
      v5 = v14;
    }
  }

  if (v5 != -1)
  {
    sub_101872B98();
  }

  v8 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 72);
    LODWORD(v10) = *(v10 + 77);
    v14 = 68289538;
    v15 = 2082;
    v16 = "";
    v17 = 2050;
    v18 = v11;
    v19 = 1026;
    v20 = v10;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Setting PDR fence, fence size in m:%{public}.2f, previous fence state:%{public}hhd}", &v14, 0x22u);
  }

  v12 = *(a1 + 32);
  LODWORD(v9) = *(v12 + 72);
  result = [*(v12 + 16) setFence:*(v12 + 40) forClient:v9 withRadius:?];
  *(*(a1 + 32) + 77) = 1;
  return result;
}

void sub_1003CD250(uint64_t a1)
{
  if (*(*(a1 + 32) + 77))
  {
    if (qword_1025D46D0 != -1)
    {
      sub_101872B84();
    }

    v2 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Clearing PDR fence -- will not receive any more fence breach notifications", v4, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101872CC8();
    }

    [*(*(a1 + 32) + 16) clearFence:*(*(a1 + 32) + 40) forClient:?];
    *(*(a1 + 32) + 77) = 0;
  }

  else
  {
    if (qword_1025D46D0 != -1)
    {
      sub_101872B84();
    }

    v3 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "No fence active -- ignoring request to clear fence", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101872DA4();
    }
  }
}

void sub_1003CD3EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 32) & 1) == 0)
  {
    [*(v1 + 16) startSessionForClient:?];
    if (qword_1025D46D0 != -1)
    {
      sub_101872B84();
    }

    v3 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_INFO))
    {
      v4[0] = 68289026;
      v4[1] = 0;
      v5 = 2082;
      v6 = "";
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Starting Motion Session}", v4, 0x12u);
    }

    *(*(a1 + 32) + 32) = 1;
  }
}

void sub_1003CD554(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 32) == 1)
  {
    [*(v1 + 16) endSessionForClient:?];
    if (qword_1025D46D0 != -1)
    {
      sub_101872B84();
    }

    v3 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_INFO))
    {
      v4[0] = 68289026;
      v4[1] = 0;
      v5 = 2082;
      v6 = "";
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Ending Motion Session}", v4, 0x12u);
    }

    *(*(a1 + 32) + 32) = 0;
  }
}

void sub_1003CD828(uint64_t a1)
{
  if (qword_1025D46D0 != -1)
  {
    sub_101872B84();
  }

  v2 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 40) UTF8String];
    __p = 68289282;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Breached PDR fence, fenceId:%{public, location:escape_only}s}", &__p, 0x1Cu);
  }

  v4 = *(*(a1 + 32) + 48);
  Current_2 = j__CFAbsoluteTimeGetCurrent_2();
  sub_10000EC00(&__p, [*(*(a1 + 32) + 40) UTF8String]);
  (*(v4 + 16))(v4, &__p, Current_2);
  if (SBYTE3(v10) < 0)
  {
    operator delete(__p);
  }
}

void sub_1003CD960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1003CDDB4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = CFGetTypeID(a1);
  if (v4 != CFStringGetTypeID())
  {
    sub_101872F68();
  }

  v5 = [a1 UTF8String];

  return sub_10000EC00(a2, v5);
}

uint64_t sub_1003CDE18(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10152C1DC(a1, a2);
  }

  else
  {
    sub_10152C17C(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1003CDE58(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100386A38(result, a4);
  }

  return result;
}

void sub_1003CDEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001E56E8(&a9);
  _Unwind_Resume(a1);
}

_BYTE *sub_1003CDEE0(uint64_t a1, char **a2, char **a3, _BYTE *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_10000EC00(v4, *v6++);
      v4 = v11 + 24;
      v11 += 24;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_100386B44(v8);
  return v4;
}

void sub_1003CDF84(uint64_t a1)
{
  if (*a1)
  {
    sub_1001E573C(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

BOOL sub_1003CDFC4()
{
  v1 = qword_1025D46D8;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

BOOL sub_1003CDFE4()
{
  v2 = *(v0 + 1752);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

BOOL sub_1003CE000()
{
  v2 = *(v0 + 1752);

  return os_signpost_enabled(v2);
}

uint64_t sub_1003CE018(uint64_t a1, uint64_t a2, int a3)
{
  v4 = 0;
  v5 = *(a2 + 72);
  if (v5 <= 6)
  {
    if (v5 > 3)
    {
      if (v5 == 4)
      {
        v6 = 0;
        v4 = 3;
        return v6 | v4;
      }

      v6 = 0;
      if (v5 != 5)
      {
        return v6 | v4;
      }

      goto LABEL_31;
    }

    if (v5 == 1)
    {
      if ((*(a2 + 128) & 4) != 0)
      {
        v13 = *(a2 + 16);
        if (!v13)
        {
          v13 = *(qword_102636050 + 16);
        }

        if ((*(v13 + 44) & 2) != 0)
        {
          v6 = 0;
          if (*(v13 + 12) == 3)
          {
            v4 = 1;
          }

          else
          {
            v4 = 2;
          }

          return v6 | v4;
        }
      }

      goto LABEL_31;
    }

    v6 = 0;
    if (v5 == 2)
    {
      sub_10001CAF4(&v45);
      v51 = 0;
      v9 = CFStringCreateWithCStringNoCopy(0, "MicroLocationsAppLaunchReasonRecordingAllowedList", 0x8000100u, kCFAllocatorNull);
      v10 = sub_1004FC4F4(v45, v9, &v51);
      CFRelease(v9);
      if (v10)
      {
        sub_1003CE730(v51, &v48);
      }

      else
      {
        v48 = 0;
        v49 = 0;
        v50 = 0;
      }

      if (v46)
      {
        sub_100008080(v46);
      }

      v16 = v48;
      v15 = v49;
      v17 = *(a2 + 24);
      if (!v17)
      {
        v17 = *(qword_102636050 + 24);
      }

      if (v48 != v49)
      {
        v18 = *(v17 + 24);
        v19 = *(v18 + 23);
        if (v19 >= 0)
        {
          v20 = *(v18 + 23);
        }

        else
        {
          v20 = v18[1];
        }

        if (v19 >= 0)
        {
          v21 = v18;
        }

        else
        {
          v21 = *v18;
        }

        while (1)
        {
          v22 = *(v16 + 23);
          v23 = v22;
          if ((v22 & 0x80u) != 0)
          {
            v22 = *(v16 + 8);
          }

          if (v22 == v20)
          {
            v24 = v23 >= 0 ? v16 : *v16;
            if (!memcmp(v24, v21, v20))
            {
              break;
            }
          }

          v16 += 24;
          if (v16 == v15)
          {
            v16 = v15;
            break;
          }
        }
      }

      if (v16 == v15)
      {
        v6 = 0;
      }

      else
      {
        v6 = 0x300000000;
      }

      sub_10001CAF4(&v51);
      v53 = 0;
      v25 = CFStringCreateWithCStringNoCopy(0, "MicroLocationsAppLaunchLocalizationReasonDenyList", 0x8000100u, kCFAllocatorNull);
      v26 = sub_1004FC4F4(v51, v25, &v53);
      CFRelease(v25);
      if (v26)
      {
        sub_1003CE844(v53, &v45);
      }

      else
      {
        v45 = 0;
        v46 = 0;
        v47 = 0;
        sub_1003CDE58(&v45, &off_102449CD0, &stru_102449CD8, 1uLL);
      }

      if (v52)
      {
        sub_100008080(v52);
      }

      v28 = &v45->__vftable;
      v27 = v46;
      v29 = *(a2 + 24);
      v30 = v29;
      if (!v29)
      {
        v30 = *(qword_102636050 + 24);
      }

      if (v45 != v46)
      {
        v31 = *(v30 + 24);
        v32 = *(v31 + 23);
        if (v32 >= 0)
        {
          v33 = *(v31 + 23);
        }

        else
        {
          v33 = v31[1];
        }

        if (v32 >= 0)
        {
          v34 = v31;
        }

        else
        {
          v34 = *v31;
        }

        while (1)
        {
          v35 = *(v28 + 23);
          v36 = v35;
          if (v35 < 0)
          {
            v35 = v28[1];
          }

          if (v35 == v33)
          {
            v37 = v36 >= 0 ? v28 : *v28;
            if (!memcmp(v37, v34, v33))
            {
              break;
            }
          }

          v28 += 3;
          if (v28 == v27)
          {
            v28 = &v27->__vftable;
            break;
          }
        }
      }

      v38 = v29;
      if (!v29)
      {
        v38 = *(qword_102636050 + 24);
      }

      v39 = *(v38 + 16);
      if (!v39)
      {
        v39 = *(qword_102635F70 + 16);
      }

      if (*(v39 + 8))
      {
        goto LABEL_102;
      }

      if (!v29)
      {
        v29 = *(qword_102636050 + 24);
      }

      v40 = *(v29 + 16);
      if (!v40)
      {
        v40 = *(qword_102635F70 + 16);
      }

      v4 = 0;
      if (*(v40 + 9) == 1 && a3 && v28 == v27)
      {
LABEL_102:
        sub_10001CAF4(&v51);
        LOBYTE(v53) = 0;
        v41 = CFStringCreateWithCStringNoCopy(0, "MicroLocationsForceLocalizeOnAllowedApps", 0x8000100u, kCFAllocatorNull);
        v42 = sub_10001CBC0(v51, v41, &v53);
        CFRelease(v41);
        v43 = v53;
        if (v52)
        {
          sub_100008080(v52);
        }

        if ((v42 & v43) != 0)
        {
          v4 = 1;
        }

        else
        {
          v4 = 2;
        }
      }

      v51 = &v45;
      sub_1001E56E8(&v51);
      v45 = &v48;
      sub_1001E56E8(&v45);
    }
  }

  else
  {
    if (v5 > 9)
    {
      if (v5 != 10)
      {
        if (v5 != 12)
        {
          v6 = 0;
          if (v5 == 13)
          {
            v7 = *(a2 + 88);
            if (!v7)
            {
              v7 = *(qword_102636050 + 88);
            }

            v4 = 0;
            if (*(v7 + 12) == 2)
            {
              v6 = 0x200000000;
            }

            else
            {
              v6 = 0x300000000;
            }
          }

          return v6 | v4;
        }

LABEL_31:
        v6 = 0;
        v4 = 2;
        return v6 | v4;
      }

      v14 = *(a2 + 64);
      if (!v14)
      {
        v14 = *(qword_102636050 + 64);
      }

      if (*(v14 + 52))
      {
        v4 = 2;
      }

      else
      {
        v4 = 0;
      }

      v12 = *(v14 + 53);
LABEL_39:
      if (v12)
      {
        v6 = 0x300000000;
      }

      else
      {
        v6 = 0;
      }

      return v6 | v4;
    }

    if (v5 == 7)
    {
      v4 = 0;
      v6 = dword_100000000;
      return v6 | v4;
    }

    v6 = 0;
    if (v5 == 9)
    {
      v11 = *(a2 + 56);
      if (!v11)
      {
        v11 = *(qword_102636050 + 56);
      }

      if (*(v11 + 68))
      {
        v4 = 2;
      }

      else
      {
        v4 = 0;
      }

      v12 = *(v11 + 69);
      goto LABEL_39;
    }
  }

  return v6 | v4;
}

void sub_1003CE524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void ***a18)
{
  if (a17)
  {
    sub_100008080(a17);
  }

  a18 = &a10;
  sub_1001E56E8(&a18);
  a10 = &a13;
  sub_1001E56E8(&a10);
  _Unwind_Resume(a1);
}

BOOL sub_1003CE5A0(double a1, double a2, uint64_t a3, int a4, uint64_t a5, char a6)
{
  v9 = a1 - *&a5;
  v10 = a1 - *&a5 < a2;
  if ((a6 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = a4 == 3 && v10;
  if (qword_1025D46D0 != -1)
  {
    sub_1018730D8();
  }

  v12 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *&v9;
    v16 = 2082;
    v15[0] = 68290050;
    if ((a6 & 1) == 0)
    {
      v13 = 0xBFF0000000000000;
    }

    v15[1] = 0;
    v17 = "";
    v18 = 1026;
    v19 = a4;
    v20 = 2050;
    v21 = v13;
    v22 = 2050;
    v23 = a2;
    v24 = 1026;
    v25 = v11;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:isThrottle, type:%{public}d, time since last allowed timestamp(sec):%{public}.2f, throttle duration(sec):%{public}.2f, isThrottle:%{public}hhd}", v15, 0x32u);
  }

  return v11;
}

uint64_t sub_1003CE6E0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if ((*(result + 8) & 1) == 0)
  {
    *(result + 8) = 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1003CE6FC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if ((*(result + 24) & 1) == 0)
  {
    *(result + 24) = 1;
  }

  *(result + 16) = v2;
  return result;
}

void sub_1003CE730(const __CFArray *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0uLL;
  v5 = 0;
  v7.length = CFArrayGetCount(a1);
  v7.location = 0;
  CFArrayApplyFunction(a1, v7, sub_1003CE7DC, &v4);
  *a2 = v4;
  *(a2 + 16) = v5;
  v5 = 0;
  v4 = 0uLL;
  v6 = &v4;
  sub_1001E56E8(&v6);
}

void sub_1003CE7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1001E56E8(&a12);
  _Unwind_Resume(a1);
}

void sub_1003CE7DC(void *a1, void *a2)
{
  sub_1003CDDB4(a1, __p);
  sub_1003CDE18(a2, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003CE828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003CE844(const __CFArray *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0uLL;
  v5 = 0;
  v7.length = CFArrayGetCount(a1);
  v7.location = 0;
  CFArrayApplyFunction(a1, v7, sub_1003CE8F0, &v4);
  *a2 = v4;
  *(a2 + 16) = v5;
  v5 = 0;
  v4 = 0uLL;
  v6 = &v4;
  sub_1001E56E8(&v6);
}

void sub_1003CE8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1001E56E8(&a12);
  _Unwind_Resume(a1);
}

void sub_1003CE8F0(void *a1, void *a2)
{
  sub_1003CDDB4(a1, __p);
  sub_1003CDE18(a2, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003CE93C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003CE988(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4E60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D4E60))
  {
    sub_1003CEAD4(&xmmword_1025D4E48);
    __cxa_atexit(&std::string::~string, &xmmword_1025D4E48, dword_100000000);
    __cxa_guard_release(&qword_1025D4E60);
  }

  if (byte_1025D4E5F < 0)
  {
    sub_100007244(a1, xmmword_1025D4E48, *(&xmmword_1025D4E48 + 1));
  }

  else
  {
    *a1 = xmmword_1025D4E48;
    *(a1 + 16) = unk_1025D4E58;
  }
}

void sub_1003CEA5C(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4E80, memory_order_acquire) & 1) == 0)
  {
    v4 = a1;
    sub_1018730EC();
    a1 = v4;
  }

  if (byte_1025D4E7F < 0)
  {
    v2 = *aValues_20;
    v3 = *&aValues_20[8];

    sub_100007244(a1, v2, v3);
  }

  else
  {
    *a1 = *aValues_20;
    *(a1 + 16) = *&aValues_20[16];
  }
}

double sub_1003CEAD4@<D0>(std::string *a1@<X8>)
{
  memset(&v3, 0, sizeof(v3));
  sub_1003CEB38(&v3);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_1003CEB1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003CEB38(std::string *a1)
{
  sub_100393EB4(a1);
  sub_1003CEB80(a1);
  sub_100395714(a1);

  return sub_100393F8C(a1);
}

uint64_t sub_1003CEB80(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "ServiceId", 9uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003CEC30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003CEE78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 25) < 0)
  {
    operator delete(*(v40 - 48));
  }

  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003CEF24()
{
  sub_10001CAF4(&v5);
  v4 = 0;
  v0 = CFStringCreateWithCStringNoCopy(0, "MicroLocationsAnalyticsSendEventEnabled", 0x8000100u, kCFAllocatorNull);
  v1 = sub_10001CBC0(v5, v0, &v4);
  CFRelease(v0);
  v2 = v4;
  if (v6)
  {
    sub_100008080(v6);
  }

  return v2 | ((v1 & 1) == 0);
}

void sub_1003CEFB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003CEFD0(uint64_t a1)
{
  if (qword_1025D46D0 != -1)
  {
    sub_101873154();
  }

  v2 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v5 = a1;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "Microlocation error report: %@", buf, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101873168(a1);
  }

  result = sub_1003CEF24();
  if (result)
  {
    return AnalyticsSendEventLazy();
  }

  return result;
}

NSDictionary *sub_1003CF104(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = @"errorType";
  v4 = v1;
  return [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
}

void sub_1003CF1A4(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4EA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D4EA0))
  {
    sub_1003D03F4(&xmmword_1025D4E88);
    __cxa_atexit(&std::string::~string, &xmmword_1025D4E88, dword_100000000);
    __cxa_guard_release(&qword_1025D4EA0);
  }

  if (byte_1025D4E9F < 0)
  {
    sub_100007244(a1, xmmword_1025D4E88, *(&xmmword_1025D4E88 + 1));
  }

  else
  {
    *a1 = xmmword_1025D4E88;
    *(a1 + 16) = unk_1025D4E98;
  }
}

void sub_1003CF278(char *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4EC0, memory_order_acquire) & 1) == 0)
  {
    v4 = a1;
    sub_101873278();
    a1 = v4;
  }

  if (byte_1025D4EBF < 0)
  {
    v2 = *aValues_21;
    v3 = *&aValues_21[8];

    sub_100007244(a1, v2, v3);
  }

  else
  {
    strcpy(a1, "VALUES (?, ?, ?, ?, ?)");
    a1[23] = byte_1025D4EBF;
  }
}

uint64_t sub_1003CF2F0(uint64_t a1, _OWORD *a2, int a3, uint64_t a4, double a5)
{
  *a1 = *a2;
  *(a1 + 16) = a5;
  *(a1 + 24) = a3;
  sub_1003BA8F0(a1 + 32, a4);
  return a1;
}

void sub_1003CF330(uint64_t a1)
{
  v2 = sub_100023B68(*a1);
  *(a1 + 8) = v2;
  if (v2)
  {
    sub_1003CF560(a1);
    sub_100608EC8(*a1, "MicroLocationLoggedEvents", &off_102449D80, 0, 0);
    v3 = sub_10060A6D8(*a1, "MicroLocationLoggedEvents");
    *(a1 + 8) = v3;
    if (v3)
    {
      if (qword_1025D46D0 != -1)
      {
        sub_1018732E0();
      }

      v4 = qword_1025D46D8;
      if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
      {
        v7 = 136380675;
        v8 = "MicroLocationLoggedEvents";
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Sucessfully created table if necessary: %{private}s", &v7, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018734DC();
      }
    }

    else
    {
      if (qword_1025D46D0 != -1)
      {
        sub_1018732E0();
      }

      v6 = qword_1025D46D8;
      if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
      {
        v7 = 136446210;
        v8 = "MicroLocationLoggedEvents";
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "Failed to create table: %{public}s", &v7, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018733CC();
      }
    }
  }

  else
  {
    if (qword_1025D46D0 != -1)
    {
      sub_1018732E0();
    }

    v5 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#Warning Database is not connected so we can't intialize our table", &v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018732F4();
    }
  }
}

uint64_t sub_1003CF530(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  sub_1003CF330(a1);
  return a1;
}

BOOL sub_1003CF560(uint64_t *a1)
{
  result = sub_10060A6D8(*a1, "MicroLocationLoggedEvents");
  if (result)
  {
    v3 = *a1;

    return sub_10038B1EC(v3, &off_102449D80, 5, "MicroLocationLoggedEvents");
  }

  return result;
}

uint64_t sub_1003CF5C8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v1 = *a1;
    if (byte_10265608F >= 0)
    {
      v2 = &xmmword_102656078;
    }

    else
    {
      v2 = xmmword_102656078;
    }

    sub_1000388D8(v1, v2);
  }

  if (qword_1025D46D0 != -1)
  {
    sub_1018732E0();
  }

  v3 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#Warning Table is not valid so we can't insert or replace", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018735E0();
  }

  return 0;
}

void sub_1003CFBB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, std::bad_cast a27)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a24)
  {
    (*(*a24 + 8))(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003CFC58(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8))
  {
    *(&v36.__r_.__value_.__s + 23) = 12;
    strcpy(&v36, "DELETE FROM ");
    v4 = std::string::append(&v36, "MicroLocationLoggedEvents", 0x19uLL);
    v5 = *&v4->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v37, " WHERE ", 7uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v38, "ReceivedTimestamp", 0x11uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v39, " IN (", 5uLL);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v40, "SELECT ", 7uLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v41, "ReceivedTimestamp", 0x11uLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v42, " FROM ", 6uLL);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v43, "MicroLocationLoggedEvents", 0x19uLL);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v44, " ORDER BY ", 0xAuLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = std::string::append(&v45, "ReceivedTimestamp", 0x11uLL);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v46, " LIMIT ", 7uLL);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v47.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v47.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v35, a2);
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v35;
    }

    else
    {
      v26 = v35.__r_.__value_.__r.__words[0];
    }

    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v35.__r_.__value_.__l.__size_;
    }

    v28 = std::string::append(&v47, v26, size);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = std::string::append(&v50, ")", 1uLL);
    v31 = *&v30->__r_.__value_.__l.__data_;
    v49 = v30->__r_.__value_.__r.__words[2];
    *__p = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (v49 >= 0)
    {
      v32 = __p;
    }

    else
    {
      v32 = __p[0];
    }

    sub_1000388D8(*a1, v32);
  }

  if (qword_1025D46D0 != -1)
  {
    sub_1018732E0();
  }

  v33 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v50.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "#Warning Table is not valid so we can't deleteOldestRows", &v50, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101873728();
  }

  return 0;
}

void sub_1003D021C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, int a63)
{
  if (v66)
  {
    (*(*v66 + 8))(v66);
  }

  if (a66 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_1003D03F4@<D0>(std::string *a1@<X8>)
{
  memset(&v3, 0, sizeof(v3));
  sub_1003D0458(&v3);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_1003D043C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D0458(std::string *a1)
{
  sub_1003D04A8(a1);
  sub_10038C784(a1);
  sub_1003D0580(a1);
  sub_1003D0664(a1);

  return sub_10038C868(a1);
}

uint64_t sub_1003D04A8(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 0;
  v7.__r_.__value_.__s.__data_[0] = 0;
  v2 = std::string::append(&v7, "EventUUID", 9uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D054C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D0580(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "EventType", 9uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D0630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D0664(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "Event", 5uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D0714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003D095C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 25) < 0)
  {
    operator delete(*(v40 - 48));
  }

  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003D0A08()
{
  exception = __cxa_allocate_exception(8uLL);
}

float *sub_1003D0A58(float *a1, float *a2)
{
  v2 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 > v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 <= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 > v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

float *sub_1003D0B08(float *a1, float *a2, double a3)
{
  *&a3 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (*&a3 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (*&a3 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (*&a3 > v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = (a2 - 1) - v7;
  if (v10 < 505)
  {
    v11 = 0;
    v41 = v10 >> 2;
    v39 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_lane_s32(*&a3, 0);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(4uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = xmmword_101C652A0;
      v18 = xmmword_101C65490;
      v19 = 0uLL;
      do
      {
        v20 = vmvnq_s8(vcgtq_f32(*(v7 + v12), v13));
        v21.i64[0] = v20.u32[2];
        v21.i64[1] = v20.u32[3];
        v22 = vandq_s8(v21, v14);
        v21.i64[0] = v20.u32[0];
        v21.i64[1] = v20.u32[1];
        v19 = vorrq_s8(vshlq_u64(v22, v18), v19);
        v16 = vorrq_s8(vshlq_u64(vandq_s8(v21, v14), v17), v16);
        v18 = vaddq_s64(v18, v15);
        v17 = vaddq_s64(v17, v15);
        v12 += 16;
      }

      while (v12 != 256);
      v23 = vorrq_s8(v16, v19);
      v12 = vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v24 = 0uLL;
    v25 = 0x3FFFFFFFFFFFFFFDLL;
    v26 = xmmword_101C652A0;
    v27 = xmmword_101C65490;
    v28 = 0uLL;
    do
    {
      v29 = vrev64q_s32(*&v9[v25]);
      v30 = vcgtq_f32(vextq_s8(v29, v29, 8uLL), v13);
      v31.i64[0] = v30.u32[2];
      v31.i64[1] = v30.u32[3];
      v32 = vdupq_n_s64(1uLL);
      v33 = vandq_s8(v31, v32);
      v31.i64[0] = v30.u32[0];
      v31.i64[1] = v30.u32[1];
      v28 = vorrq_s8(vshlq_u64(v33, v27), v28);
      v24 = vorrq_s8(vshlq_u64(vandq_s8(v31, v32), v26), v24);
      v34 = vdupq_n_s64(4uLL);
      v27 = vaddq_s64(v27, v34);
      v26 = vaddq_s64(v26, v34);
      v25 -= 4;
    }

    while (v25 != -67);
    v35 = vorrq_s8(v24, v28);
    v11 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v36 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v37 = &v9[-__clz(__rbit64(v11))];
        v38 = v7[v36];
        v7[v36] = *v37;
        *v37 = v38;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v39 = v11 == 0;
    if (v11)
    {
      v40 = 0;
    }

    else
    {
      v40 = -256;
    }

    v9 = (v9 + v40);
  }

  while (v9 - v7 > 504);
  v41 = v9 - v7;
  if (!(v12 | v11))
  {
LABEL_36:
    v45 = v41 + 1;
    v42 = (v41 + 1) / 2;
    v43 = v45 - v45 / 2;
    goto LABEL_37;
  }

  v42 = v41 - 63;
  v43 = 64;
  v44 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v42 >= 1)
    {
      v47 = 0;
      v11 = 0;
      v48 = v9;
      do
      {
        v49 = *v48--;
        v11 |= (v49 > *&a3) << v47++;
      }

      while (v42 != v47);
      goto LABEL_46;
    }

    if (v12)
    {
      v57 = 0;
    }

    else
    {
      v57 = v44;
    }

    v53 = &v7[v57];
LABEL_62:
    if (v12)
    {
      v9 -= v42;
      goto LABEL_64;
    }

    goto LABEL_68;
  }

LABEL_37:
  if (v42 < 1)
  {
    v12 = 0;
  }

  else
  {
    v46 = 0;
    v12 = 0;
    do
    {
      v12 |= (v7[v46] <= *&a3) << v46;
      ++v46;
    }

    while (v42 != v46);
  }

  v44 = v42;
  v42 = v43;
  if (v39)
  {
    goto LABEL_43;
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v50 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v51 = &v9[-__clz(__rbit64(v11))];
      v52 = v7[v50];
      v7[v50] = *v51;
      *v51 = v52;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v44 = 0;
  }

  v53 = &v7[v44];
  if (!v11)
  {
    goto LABEL_62;
  }

  if (v12)
  {
    do
    {
LABEL_64:
      v58 = __clz(v12) ^ 0x3F;
      v59 = &v53[v58];
      if (v9 != v59)
      {
        v60 = *v59;
        *v59 = *v9;
        *v9 = v60;
      }

      v12 &= ~(-1 << v58);
      --v9;
    }

    while (v12);
    v53 = v9 + 1;
  }

  else
  {
    do
    {
      v54 = __clz(v11) ^ 0x3F;
      v55 = &v9[-v54];
      if (v53 != v55)
      {
        v56 = *v55;
        *v55 = *v53;
        *v53 = v56;
      }

      v11 &= ~(-1 << v54);
      ++v53;
    }

    while (v11);
  }

LABEL_68:
  v61 = v53 - 1;
  if (v53 - 1 != a1)
  {
    *a1 = *v61;
  }

  *v61 = *&a3;
  return v53 - 1;
}

BOOL sub_1003D0ED4(float *a1, float *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 > v26)
        {
          v27 = *(a1 + 1);
        }

        else
        {
          v27 = *(a2 - 1);
        }

        if (v25 > v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        *(a1 + 1) = v27;
        v28 = *(a2 - 1);
        if (v28 > *a1)
        {
          v29 = *(a2 - 1);
        }

        else
        {
          v29 = *a1;
        }

        if (v28 > *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 <= v30)
        {
          v31 = a1[1];
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 > v47)
        {
          v49 = *a1;
        }

        else
        {
          v49 = a1[2];
        }

        if (*a1 <= v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 > v50)
        {
          v51 = v48;
        }

        else
        {
          v51 = *(a2 - 1);
        }

        if (v48 <= v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 > v51)
        {
          v53 = *a1;
        }

        else
        {
          v53 = v51;
        }

        if (*a1 > v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 > v55)
        {
          v56 = a1[2];
        }

        else
        {
          v56 = *(a2 - 1);
        }

        if (v54 > v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 > v56)
        {
          v58 = a1[1];
        }

        else
        {
          v58 = v56;
        }

        if (v57 > v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 > v6)
        {
          v7 = *a1;
        }

        else
        {
          v7 = a1[1];
        }

        if (*a1 > v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 > v9)
        {
          v10 = *(a1 + 3);
        }

        else
        {
          v10 = *(a2 - 1);
        }

        if (v8 > v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        *(a1 + 3) = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 > v12)
        {
          v13 = *(a2 - 1);
        }

        else
        {
          v13 = a1[2];
        }

        if (v11 > v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = *(a1 + 2);
        v14 = a1[3];
        v16 = a1[1];
        if (v13 <= v14)
        {
          v15 = *(a1 + 3);
          v14 = v13;
        }

        *(a1 + 2) = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 > v17)
        {
          v18 = v16;
        }

        else
        {
          v18 = *(a2 - 1);
        }

        if (v16 <= v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 > *a1)
        {
          v22 = a1[3];
        }

        else
        {
          v22 = *a1;
        }

        if (v20 > *a1)
        {
          v20 = *a1;
        }

        if (v22 <= v21)
        {
          v19 = a1[2];
          v21 = v22;
        }

        if (v20 > v18)
        {
          v23 = v20;
        }

        else
        {
          v23 = v18;
        }

        if (v20 > v18)
        {
          v20 = v18;
        }

        if (v23 <= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 > v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 > *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v32 = a1 + 2;
  v33 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 > v33)
  {
    v36 = a1[1];
  }

  else
  {
    v36 = a1[2];
  }

  if (v34 <= v33)
  {
    v33 = a1[1];
  }

  if (v33 > v35)
  {
    v37 = v33;
  }

  else
  {
    v37 = *a1;
  }

  if (v33 > v35)
  {
    v33 = *a1;
  }

  *v32 = v33;
  if (v37 > v36)
  {
    v38 = v35;
  }

  else
  {
    v38 = v36;
  }

  if (v37 > v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 12; ; i += 4)
  {
    v42 = *v39;
    v43 = *v32;
    if (*v39 > *v32)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v43 = *(a1 + v44 - 8);
        v44 -= 4;
        if (v42 <= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_85;
        }
      }

      v46 = a1;
LABEL_85:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v32 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

float *sub_1003D1168(float *a1, float *a2, float *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_1003D1328(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 > *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          sub_1003D1328(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = v16;
          v18 = &v16[v14];
          v16 = v18 + 1;
          v19 = 2 * v14;
          v14 = (2 * v14) | 1;
          v20 = v19 + 2;
          if (v20 < v8)
          {
            v22 = v18[2];
            v21 = v18 + 2;
            if (*(v21 - 1) > v22)
            {
              v16 = v21;
              v14 = v20;
            }
          }

          *v17 = *v16;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v16 != --v6)
        {
          *v16 = *v6;
          *v6 = v15;
          v23 = (v16 - a1 + 4) >> 2;
          v24 = v23 < 2;
          v25 = v23 - 2;
          if (v24)
          {
            goto LABEL_22;
          }

          v26 = v25 >> 1;
          v27 = &a1[v26];
          v28 = *v27;
          v15 = *v16;
          if (*v27 <= *v16)
          {
            goto LABEL_22;
          }

          do
          {
            *v16 = v28;
            v16 = v27;
            if (!v26)
            {
              break;
            }

            v26 = (v26 - 1) >> 1;
            v27 = &a1[v26];
            v28 = *v27;
          }

          while (*v27 > v15);
        }

        *v16 = v15;
LABEL_22:
        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_1003D1328(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && *v8 > v8[1])
      {
        ++v8;
        v7 = v9;
      }

      v10 = *v8;
      v11 = *a4;
      if (*v8 <= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v12 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 4 * v7);
          v13 = v12 + 2;
          if (v13 < a3 && *v8 > v8[1])
          {
            ++v8;
            v7 = v13;
          }

          v10 = *v8;
        }

        while (*v8 <= v11);
        *a4 = v11;
      }
    }
  }

  return result;
}

uint64_t sub_1003D13E4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_1003D1464(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4EE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D4EE0))
  {
    sub_1003D160C(&xmmword_1025D4EC8);
    __cxa_atexit(&std::string::~string, &xmmword_1025D4EC8, dword_100000000);
    __cxa_guard_release(&qword_1025D4EE0);
  }

  if (byte_1025D4EDF < 0)
  {
    sub_100007244(a1, xmmword_1025D4EC8, *(&xmmword_1025D4EC8 + 1));
  }

  else
  {
    *a1 = xmmword_1025D4EC8;
    *(a1 + 16) = unk_1025D4ED8;
  }
}

void sub_1003D1538(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4F00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D4F00))
  {
    sub_1003D1C24(&xmmword_1025D4EE8);
    __cxa_atexit(&std::string::~string, &xmmword_1025D4EE8, dword_100000000);
    __cxa_guard_release(&qword_1025D4F00);
  }

  if (byte_1025D4EFF < 0)
  {
    sub_100007244(a1, xmmword_1025D4EE8, *(&xmmword_1025D4EE8 + 1));
  }

  else
  {
    *a1 = xmmword_1025D4EE8;
    *(a1 + 16) = unk_1025D4EF8;
  }
}

double sub_1003D160C@<D0>(std::string *a1@<X8>)
{
  memset(&v3, 0, sizeof(v3));
  sub_1003D1670(&v3);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_1003D1654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D1670(std::string *a1)
{
  sub_1003D16D8(a1);
  sub_1003957F8(a1);
  sub_1003D17B0(a1);
  sub_1003D1894(a1);
  sub_1003D1978(a1);
  sub_1003D1A5C(a1);
  sub_1003D1B40(a1);

  return sub_10038C868(a1);
}

uint64_t sub_1003D16D8(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 0;
  v7.__r_.__value_.__s.__data_[0] = 0;
  v2 = std::string::append(&v7, "LoiType", 7uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D177C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D17B0(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "Timestamp", 9uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D1860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D1894(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "IsAssociated", 0xCuLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D1944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D1978(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "MacAddress", 0xAuLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D1A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D1A5C(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "Band", 4uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D1B0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D1B40(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "Channel", 7uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D1BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_1003D1C24@<D0>(std::string *a1@<X8>)
{
  sub_10000EC00(&v11, "VALUES (");
  v2 = 8;
  do
  {
    if (v2 == 8)
    {
      *(&v8.__r_.__value_.__s + 23) = 0;
      v8.__r_.__value_.__s.__data_[0] = 0;
    }

    else
    {
      *(&v8.__r_.__value_.__s + 23) = 2;
      strcpy(&v8, ", ");
    }

    v3 = std::string::append(&v8, "?", 1uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v10 = v3->__r_.__value_.__r.__words[2];
    *__p = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (v10 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if (v10 >= 0)
    {
      v6 = HIBYTE(v10);
    }

    else
    {
      v6 = __p[1];
    }

    std::string::append(&v11, v5, v6);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    --v2;
  }

  while (v2);
  std::string::append(&v11, ")", 1uLL);
  result = *&v11.__r_.__value_.__l.__data_;
  *a1 = v11;
  return result;
}

void sub_1003D1D38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003D1F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 25) < 0)
  {
    operator delete(*(v40 - 48));
  }

  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003D2044(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4F20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D4F20))
  {
    sub_1003D21EC(&xmmword_1025D4F08);
    __cxa_atexit(&std::string::~string, &xmmword_1025D4F08, dword_100000000);
    __cxa_guard_release(&qword_1025D4F20);
  }

  if (byte_1025D4F1F < 0)
  {
    sub_100007244(a1, xmmword_1025D4F08, *(&xmmword_1025D4F08 + 1));
  }

  else
  {
    *a1 = xmmword_1025D4F08;
    *(a1 + 16) = unk_1025D4F18;
  }
}

void sub_1003D2118(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4F40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D4F40))
  {
    sub_1003D2488(&xmmword_1025D4F28);
    __cxa_atexit(&std::string::~string, &xmmword_1025D4F28, dword_100000000);
    __cxa_guard_release(&qword_1025D4F40);
  }

  if (byte_1025D4F3F < 0)
  {
    sub_100007244(a1, xmmword_1025D4F28, *(&xmmword_1025D4F28 + 1));
  }

  else
  {
    *a1 = xmmword_1025D4F28;
    *(a1 + 16) = unk_1025D4F38;
  }
}

double sub_1003D21EC@<D0>(std::string *a1@<X8>)
{
  memset(&v3, 0, sizeof(v3));
  sub_1003D2250(&v3);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_1003D2234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D2250(std::string *a1)
{
  sub_1003CAADC(a1);
  sub_1003D22C0(a1);
  sub_100392B60(a1);
  sub_10038C784(a1);
  sub_1003D0580(a1);
  sub_1003D0664(a1);
  sub_10038C868(a1);
  sub_1003D23A4(a1);

  return sub_100392D28(a1);
}

uint64_t sub_1003D22C0(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "RecordingTimestamp", 0x12uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D2370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D23A4(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "TriggerUUID", 0xBuLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D2454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_1003D2488@<D0>(std::string *a1@<X8>)
{
  sub_10000EC00(&v11, "VALUES (");
  v2 = 9;
  do
  {
    if (v2 == 9)
    {
      *(&v8.__r_.__value_.__s + 23) = 0;
      v8.__r_.__value_.__s.__data_[0] = 0;
    }

    else
    {
      *(&v8.__r_.__value_.__s + 23) = 2;
      strcpy(&v8, ", ");
    }

    v3 = std::string::append(&v8, "?", 1uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v10 = v3->__r_.__value_.__r.__words[2];
    *__p = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (v10 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if (v10 >= 0)
    {
      v6 = HIBYTE(v10);
    }

    else
    {
      v6 = __p[1];
    }

    std::string::append(&v11, v5, v6);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    --v2;
  }

  while (v2);
  std::string::append(&v11, ")", 1uLL);
  result = *&v11.__r_.__value_.__l.__data_;
  *a1 = v11;
  return result;
}

void sub_1003D259C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003D27FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 25) < 0)
  {
    operator delete(*(v40 - 48));
  }

  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003D28A8(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4F60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D4F60))
  {
    sub_1003D2C68(&xmmword_1025D4F48);
    __cxa_atexit(&std::string::~string, &xmmword_1025D4F48, dword_100000000);
    __cxa_guard_release(&qword_1025D4F60);
  }

  if (byte_1025D4F5F < 0)
  {
    sub_100007244(a1, xmmword_1025D4F48, *(&xmmword_1025D4F48 + 1));
  }

  else
  {
    *a1 = xmmword_1025D4F48;
    *(a1 + 16) = unk_1025D4F58;
  }
}

void sub_1003D297C(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4F80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D4F80))
  {
    sub_1003CBB10(&xmmword_1025D4F68);
    __cxa_atexit(&std::string::~string, &xmmword_1025D4F68, dword_100000000);
    __cxa_guard_release(&qword_1025D4F80);
  }

  if (byte_1025D4F7F < 0)
  {
    sub_100007244(a1, xmmword_1025D4F68, *(&xmmword_1025D4F68 + 1));
  }

  else
  {
    *a1 = xmmword_1025D4F68;
    *(a1 + 16) = unk_1025D4F78;
  }
}

void sub_1003D2A50(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1003D2AA8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_1003D2AF8(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1003D2AF8(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_1003D2B50(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        sub_1003D2AF8(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

char *sub_1003D2BD4(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100007244(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  return __dst;
}

void sub_1003D2C4C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}