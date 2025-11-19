float sub_10041F604(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10041F11C(a1, lpsrc);
}

double sub_10041F6A4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  sub_100455BCC((a1 + 16), a2 + 16);
  if (*(a2 + 44))
  {
    *(a1 + 44) |= 1u;
    v5 = *(a1 + 8);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 8);
    if (!v6)
    {
      v6 = *(qword_102636C08 + 8);
    }

    return sub_10041ED1C(v5, v6);
  }

  return result;
}

void sub_10041F798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10041F7B4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636C08;
  if (!qword_102636C08)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636C08;
  }

  return result;
}

uint64_t sub_10041F838(uint64_t a1)
{
  if (*(a1 + 44))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      if (*(v2 + 36))
      {
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
      }

      *(v2 + 36) = 0;
    }
  }

  result = sub_1003C79DC(a1 + 16);
  *(a1 + 44) = 0;
  return result;
}

uint64_t sub_10041F888(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        goto LABEL_15;
      }

      *(a1 + 44) |= 1u;
      v8 = *(a1 + 8);
      if (!v8)
      {
        operator new();
      }

      v31 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31))
        {
          return 0;
        }
      }

      else
      {
        v31 = *v9;
        *(this + 1) = v9 + 1;
      }

      v10 = *(this + 14);
      v11 = *(this + 15);
      *(this + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v31);
      if (!sub_10041EEC4(v8, this, v13) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v12);
      v14 = *(this + 14);
      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v16 < 0 == v15)
      {
        *(this + 14) = v16;
      }

      v17 = *(this + 1);
      if (v17 < *(this + 2) && *v17 == 18)
      {
        do
        {
          *(this + 1) = v17 + 1;
LABEL_27:
          v18 = *(a1 + 28);
          v19 = *(a1 + 24);
          if (v19 >= v18)
          {
            if (v18 == *(a1 + 32))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v18 + 1);
              v18 = *(a1 + 28);
            }

            *(a1 + 28) = v18 + 1;
            operator new();
          }

          v20 = *(a1 + 16);
          *(a1 + 24) = v19 + 1;
          v21 = *(v20 + 8 * v19);
          v32 = 0;
          v22 = *(this + 1);
          if (v22 >= *(this + 2) || *v22 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v32))
            {
              return 0;
            }
          }

          else
          {
            v32 = *v22;
            *(this + 1) = v22 + 1;
          }

          v23 = *(this + 14);
          v24 = *(this + 15);
          *(this + 14) = v23 + 1;
          if (v23 >= v24)
          {
            return 0;
          }

          v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v32);
          if (!sub_10041F310(v21, this, v26) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v25);
          v27 = *(this + 14);
          v15 = __OFSUB__(v27, 1);
          v28 = v27 - 1;
          if (v28 < 0 == v15)
          {
            *(this + 14) = v28;
          }

          v17 = *(this + 1);
          v29 = *(this + 2);
        }

        while (v17 < v29 && *v17 == 18);
        if (v17 == v29 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
      goto LABEL_27;
    }

LABEL_15:
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

double sub_10041FBE4(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10041F6A4(a1, lpsrc);
}

float sub_10041FC84(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (!v5)
  {
    return *&v4;
  }

  if (*(a2 + 32))
  {
    *(a1 + 32) |= 1u;
    v6 = *(a1 + 8);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 8);
    if (!v7)
    {
      v7 = *(qword_102636C10 + 8);
    }

    v4 = sub_10041ED1C(v6, v7);
    v5 = *(a2 + 32);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_16:
      LODWORD(v4) = *(a2 + 20);
      *(a1 + 32) |= 4u;
      *(a1 + 20) = LODWORD(v4);
      if ((*(a2 + 32) & 8) != 0)
      {
        goto LABEL_8;
      }

      return *&v4;
    }
  }

  else if ((*(a2 + 32) & 2) == 0)
  {
    goto LABEL_6;
  }

  LODWORD(v4) = *(a2 + 16);
  *(a1 + 32) |= 2u;
  *(a1 + 16) = LODWORD(v4);
  v5 = *(a2 + 32);
  if ((v5 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v5 & 8) != 0)
  {
LABEL_8:
    LODWORD(v4) = *(a2 + 24);
    *(a1 + 32) |= 8u;
    *(a1 + 24) = LODWORD(v4);
  }

  return *&v4;
}

void sub_10041FDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10041FE40(uint64_t result)
{
  if (*(result + 32))
  {
    if (*(result + 32))
    {
      v1 = *(result + 8);
      if (v1)
      {
        if (*(v1 + 36))
        {
          *(v1 + 8) = 0;
          *(v1 + 16) = 0;
          *(v1 + 24) = 0;
        }

        *(v1 + 36) = 0;
      }
    }

    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_10041FE78(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        if (v7 == 3)
        {
          if (v8 != 5)
          {
            goto LABEL_22;
          }

LABEL_38:
          v22 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v22) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 20) = v22;
          *(a1 + 32) |= 4u;
          v20 = *(this + 1);
          if (v20 < *(this + 2) && *v20 == 37)
          {
            *(this + 1) = v20 + 1;
            goto LABEL_42;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 5)
          {
            goto LABEL_22;
          }

LABEL_42:
          v22 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v22) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v22;
          *(a1 + 32) |= 8u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (v7 == 1)
      {
        break;
      }

      if (v7 == 2 && v8 == 5)
      {
        goto LABEL_34;
      }

LABEL_22:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
      {
        return 0;
      }
    }

    if (v8 != 2)
    {
      goto LABEL_22;
    }

    *(a1 + 32) |= 1u;
    v9 = *(a1 + 8);
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
    if (!sub_10041EEC4(v9, this, v14) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v13);
    v15 = *(this + 14);
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (v17 < 0 == v16)
    {
      *(this + 14) = v17;
    }

    v18 = *(this + 1);
    if (v18 < *(this + 2) && *v18 == 21)
    {
      *(this + 1) = v18 + 1;
LABEL_34:
      v22 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v22) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v22;
      *(a1 + 32) |= 2u;
      v19 = *(this + 1);
      if (v19 < *(this + 2) && *v19 == 29)
      {
        *(this + 1) = v19 + 1;
        goto LABEL_38;
      }
    }
  }
}

float sub_10042016C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10041FC84(a1, lpsrc);
}

double sub_10042020C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  sub_100455CE4((a1 + 16), a2 + 16);
  if (*(a2 + 44))
  {
    *(a1 + 44) |= 1u;
    v5 = *(a1 + 8);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 8);
    if (!v6)
    {
      v6 = *(qword_102636C18 + 8);
    }

    return sub_10041ED1C(v5, v6);
  }

  return result;
}

void sub_100420300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10042031C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636C18;
  if (!qword_102636C18)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636C18;
  }

  return result;
}

uint64_t sub_1004203A0(uint64_t a1)
{
  if (*(a1 + 44))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      if (*(v2 + 36))
      {
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
      }

      *(v2 + 36) = 0;
    }
  }

  result = sub_1003C79DC(a1 + 16);
  *(a1 + 44) = 0;
  return result;
}

uint64_t sub_1004203F0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        goto LABEL_15;
      }

      *(a1 + 44) |= 1u;
      v8 = *(a1 + 8);
      if (!v8)
      {
        operator new();
      }

      v31 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31))
        {
          return 0;
        }
      }

      else
      {
        v31 = *v9;
        *(this + 1) = v9 + 1;
      }

      v10 = *(this + 14);
      v11 = *(this + 15);
      *(this + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v31);
      if (!sub_10041EEC4(v8, this, v13) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v12);
      v14 = *(this + 14);
      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v16 < 0 == v15)
      {
        *(this + 14) = v16;
      }

      v17 = *(this + 1);
      if (v17 < *(this + 2) && *v17 == 18)
      {
        do
        {
          *(this + 1) = v17 + 1;
LABEL_27:
          v18 = *(a1 + 28);
          v19 = *(a1 + 24);
          if (v19 >= v18)
          {
            if (v18 == *(a1 + 32))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v18 + 1);
              v18 = *(a1 + 28);
            }

            *(a1 + 28) = v18 + 1;
            operator new();
          }

          v20 = *(a1 + 16);
          *(a1 + 24) = v19 + 1;
          v21 = *(v20 + 8 * v19);
          v32 = 0;
          v22 = *(this + 1);
          if (v22 >= *(this + 2) || *v22 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v32))
            {
              return 0;
            }
          }

          else
          {
            v32 = *v22;
            *(this + 1) = v22 + 1;
          }

          v23 = *(this + 14);
          v24 = *(this + 15);
          *(this + 14) = v23 + 1;
          if (v23 >= v24)
          {
            return 0;
          }

          v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v32);
          if (!sub_10041FE78(v21, this, v26) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v25);
          v27 = *(this + 14);
          v15 = __OFSUB__(v27, 1);
          v28 = v27 - 1;
          if (v28 < 0 == v15)
          {
            *(this + 14) = v28;
          }

          v17 = *(this + 1);
          v29 = *(this + 2);
        }

        while (v17 < v29 && *v17 == 18);
        if (v17 == v29 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
      goto LABEL_27;
    }

LABEL_15:
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

double sub_10042074C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10042020C(a1, lpsrc);
}

float sub_1004207EC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (!v5)
  {
    return *&v4;
  }

  if ((*(a2 + 28) & 1) == 0)
  {
    if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    LODWORD(v4) = *(a2 + 16);
    *(a1 + 28) |= 2u;
    *(a1 + 16) = LODWORD(v4);
    if ((*(a2 + 28) & 4) != 0)
    {
      goto LABEL_7;
    }

    return *&v4;
  }

  *(a1 + 28) |= 1u;
  v6 = *(a1 + 8);
  if (!v6)
  {
    operator new();
  }

  v7 = *(a2 + 8);
  if (!v7)
  {
    v7 = *(qword_102636C20 + 8);
  }

  v4 = sub_10041ED1C(v6, v7);
  v5 = *(a2 + 28);
  if ((v5 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v5 & 4) != 0)
  {
LABEL_7:
    LODWORD(v4) = *(a2 + 20);
    *(a1 + 28) |= 4u;
    *(a1 + 20) = LODWORD(v4);
  }

  return *&v4;
}

void sub_10042091C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100420984(uint64_t result)
{
  if (*(result + 28))
  {
    if (*(result + 28))
    {
      v1 = *(result + 8);
      if (v1)
      {
        if (*(v1 + 36))
        {
          *(v1 + 8) = 0;
          *(v1 + 16) = 0;
          *(v1 + 24) = 0;
        }

        *(v1 + 36) = 0;
      }
    }

    *(result + 16) = 0;
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_1004209B8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
      if (TagFallback >> 3 == 3)
      {
        if (v8 == 5)
        {
          goto LABEL_34;
        }

        goto LABEL_18;
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 == 5)
      {
        goto LABEL_30;
      }

LABEL_18:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
      {
        return 0;
      }
    }

    if (v7 != 1 || v8 != 2)
    {
      goto LABEL_18;
    }

    *(a1 + 28) |= 1u;
    v9 = *(a1 + 8);
    if (!v9)
    {
      operator new();
    }

    v23 = 0;
    v10 = *(this + 1);
    if (v10 >= *(this + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23))
      {
        return 0;
      }
    }

    else
    {
      v23 = *v10;
      *(this + 1) = v10 + 1;
    }

    v11 = *(this + 14);
    v12 = *(this + 15);
    *(this + 14) = v11 + 1;
    if (v11 >= v12)
    {
      return 0;
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v23);
    if (!sub_10041EEC4(v9, this, v14) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v13);
    v15 = *(this + 14);
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (v17 < 0 == v16)
    {
      *(this + 14) = v17;
    }

    v18 = *(this + 1);
    if (v18 < *(this + 2) && *v18 == 21)
    {
      *(this + 1) = v18 + 1;
LABEL_30:
      v22 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v22) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v22;
      *(a1 + 28) |= 2u;
      v19 = *(this + 1);
      if (v19 < *(this + 2) && *v19 == 29)
      {
        *(this + 1) = v19 + 1;
LABEL_34:
        v21 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v21) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 20) = v21;
        *(a1 + 28) |= 4u;
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

float sub_100420C48(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_1004207EC(a1, lpsrc);
}

double sub_100420CE8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  sub_100455DFC((a1 + 16), a2 + 16);
  if (*(a2 + 44))
  {
    *(a1 + 44) |= 1u;
    v5 = *(a1 + 8);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 8);
    if (!v6)
    {
      v6 = *(qword_102636C28 + 8);
    }

    return sub_10041ED1C(v5, v6);
  }

  return result;
}

void sub_100420DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100420DF8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636C28;
  if (!qword_102636C28)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636C28;
  }

  return result;
}

uint64_t sub_100420E7C(uint64_t a1)
{
  if (*(a1 + 44))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      if (*(v2 + 36))
      {
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
      }

      *(v2 + 36) = 0;
    }
  }

  result = sub_1003C79DC(a1 + 16);
  *(a1 + 44) = 0;
  return result;
}

uint64_t sub_100420ECC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        goto LABEL_15;
      }

      *(a1 + 44) |= 1u;
      v8 = *(a1 + 8);
      if (!v8)
      {
        operator new();
      }

      v31 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31))
        {
          return 0;
        }
      }

      else
      {
        v31 = *v9;
        *(this + 1) = v9 + 1;
      }

      v10 = *(this + 14);
      v11 = *(this + 15);
      *(this + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v31);
      if (!sub_10041EEC4(v8, this, v13) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v12);
      v14 = *(this + 14);
      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v16 < 0 == v15)
      {
        *(this + 14) = v16;
      }

      v17 = *(this + 1);
      if (v17 < *(this + 2) && *v17 == 18)
      {
        do
        {
          *(this + 1) = v17 + 1;
LABEL_27:
          v18 = *(a1 + 28);
          v19 = *(a1 + 24);
          if (v19 >= v18)
          {
            if (v18 == *(a1 + 32))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v18 + 1);
              v18 = *(a1 + 28);
            }

            *(a1 + 28) = v18 + 1;
            operator new();
          }

          v20 = *(a1 + 16);
          *(a1 + 24) = v19 + 1;
          v21 = *(v20 + 8 * v19);
          v32 = 0;
          v22 = *(this + 1);
          if (v22 >= *(this + 2) || *v22 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v32))
            {
              return 0;
            }
          }

          else
          {
            v32 = *v22;
            *(this + 1) = v22 + 1;
          }

          v23 = *(this + 14);
          v24 = *(this + 15);
          *(this + 14) = v23 + 1;
          if (v23 >= v24)
          {
            return 0;
          }

          v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v32);
          if (!sub_1004209B8(v21, this, v26) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v25);
          v27 = *(this + 14);
          v15 = __OFSUB__(v27, 1);
          v28 = v27 - 1;
          if (v28 < 0 == v15)
          {
            *(this + 14) = v28;
          }

          v17 = *(this + 1);
          v29 = *(this + 2);
        }

        while (v17 < v29 && *v17 == 18);
        if (v17 == v29 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
      goto LABEL_27;
    }

LABEL_15:
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

double sub_100421224(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100420CE8(a1, lpsrc);
}

double sub_1004212C4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      result = *(a2 + 8);
      *(a1 + 28) |= 1u;
      *(a1 + 8) = result;
      v5 = *(a2 + 28);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 16);
      *(a1 + 28) |= 2u;
      *(a1 + 16) = result;
    }
  }

  return result;
}

void sub_100421370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004213F4(uint64_t result)
{
  if (*(result + 28))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_100421408(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 != 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v10 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v10) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v10;
        *(a1 + 28) |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v7 != 1)
      {
        break;
      }

      v10 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v10) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = v10;
      *(a1 + 28) |= 1u;
      v8 = *(this + 1);
      if (v8 < *(this + 2) && *v8 == 17)
      {
        *(this + 1) = v8 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_100421564(uint64_t a1)
{
  v1 = *(a1 + 28);
  if (*(a1 + 28))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 24) = v1;
  return v1;
}

double sub_100421590(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_1004212C4(a1, lpsrc);
}

void sub_100421630(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v29);
  }

  v4 = *(a2 + 152);
  if (!v4)
  {
    goto LABEL_16;
  }

  if (v4)
  {
    v5 = *(a2 + 48);
    if (v5 >= 3 && v5 != 0xFFFF)
    {
      sub_1018822EC();
    }

    *(a1 + 152) |= 1u;
    *(a1 + 48) = v5;
    v4 = *(a2 + 152);
  }

  if ((v4 & 2) != 0)
  {
    *(a1 + 152) |= 2u;
    v22 = *(a1 + 8);
    if (!v22)
    {
      operator new();
    }

    v23 = *(a2 + 8);
    if (!v23)
    {
      v23 = *(qword_102636C38 + 8);
    }

    sub_1004212C4(v22, v23);
    v4 = *(a2 + 152);
    if ((v4 & 4) == 0)
    {
LABEL_10:
      if ((v4 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_65;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_10;
  }

  v24 = *(a2 + 16);
  *(a1 + 152) |= 4u;
  *(a1 + 16) = v24;
  v4 = *(a2 + 152);
  if ((v4 & 8) == 0)
  {
LABEL_11:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_66;
  }

LABEL_65:
  v25 = *(a2 + 24);
  *(a1 + 152) |= 8u;
  *(a1 + 24) = v25;
  v4 = *(a2 + 152);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_67:
    v27 = *(a2 + 40);
    *(a1 + 152) |= 0x20u;
    *(a1 + 40) = v27;
    v4 = *(a2 + 152);
    if ((v4 & 0x40) == 0)
    {
LABEL_14:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    goto LABEL_68;
  }

LABEL_66:
  v26 = *(a2 + 32);
  *(a1 + 152) |= 0x10u;
  *(a1 + 32) = v26;
  v4 = *(a2 + 152);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_67;
  }

LABEL_13:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_68:
  v28 = *(a2 + 56);
  *(a1 + 152) |= 0x40u;
  *(a1 + 56) = v28;
  v4 = *(a2 + 152);
  if ((v4 & 0x80) != 0)
  {
LABEL_15:
    v6 = *(a2 + 64);
    *(a1 + 152) |= 0x80u;
    *(a1 + 64) = v6;
    v4 = *(a2 + 152);
  }

LABEL_16:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_26;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 72);
    *(a1 + 152) |= 0x100u;
    *(a1 + 72) = v14;
    v4 = *(a2 + 152);
    if ((v4 & 0x200) == 0)
    {
LABEL_19:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_48;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_19;
  }

  v15 = *(a2 + 80);
  *(a1 + 152) |= 0x200u;
  *(a1 + 80) = v15;
  v4 = *(a2 + 152);
  if ((v4 & 0x400) == 0)
  {
LABEL_20:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  v16 = *(a2 + 52);
  *(a1 + 152) |= 0x400u;
  *(a1 + 52) = v16;
  v4 = *(a2 + 152);
  if ((v4 & 0x800) == 0)
  {
LABEL_21:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  v17 = *(a2 + 88);
  *(a1 + 152) |= 0x800u;
  *(a1 + 88) = v17;
  v4 = *(a2 + 152);
  if ((v4 & 0x1000) == 0)
  {
LABEL_22:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_50:
  v18 = *(a2 + 104);
  if (v18 >= 0xE)
  {
    sub_101882318();
  }

  *(a1 + 152) |= 0x1000u;
  *(a1 + 104) = v18;
  v4 = *(a2 + 152);
  if ((v4 & 0x2000) == 0)
  {
LABEL_23:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_52:
  *(a1 + 152) |= 0x2000u;
  v19 = *(a1 + 96);
  if (!v19)
  {
    operator new();
  }

  v20 = *(a2 + 96);
  if (!v20)
  {
    v20 = *(qword_102636C38 + 96);
  }

  sub_1004212C4(v19, v20);
  v4 = *(a2 + 152);
  if ((v4 & 0x4000) == 0)
  {
LABEL_24:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_57:
  v21 = *(a2 + 112);
  *(a1 + 152) |= 0x4000u;
  *(a1 + 112) = v21;
  v4 = *(a2 + 152);
  if ((v4 & 0x8000) != 0)
  {
LABEL_25:
    v7 = *(a2 + 108);
    *(a1 + 152) |= 0x8000u;
    *(a1 + 108) = v7;
    v4 = *(a2 + 152);
  }

LABEL_26:
  if ((v4 & 0xFF0000) != 0)
  {
    if ((v4 & 0x10000) != 0)
    {
      v8 = *(a2 + 120);
      if (((v8 - 25) > 0x32 || ((1 << (v8 - 25)) & 0x4000002000001) == 0) && (v8 + 1) >= 2)
      {
        sub_101882344();
      }

      *(a1 + 152) |= 0x10000u;
      *(a1 + 120) = v8;
      v4 = *(a2 + 152);
    }

    if ((v4 & 0x20000) != 0)
    {
      v9 = *(a2 + 124);
      if (v9 >= 3)
      {
        sub_101882370();
      }

      *(a1 + 152) |= 0x20000u;
      *(a1 + 124) = v9;
      v4 = *(a2 + 152);
    }

    if ((v4 & 0x40000) != 0)
    {
      v10 = *(a2 + 128);
      if (v10 >= 3)
      {
        sub_10188239C();
      }

      *(a1 + 152) |= 0x40000u;
      *(a1 + 128) = v10;
      v4 = *(a2 + 152);
    }

    if ((v4 & 0x80000) != 0)
    {
      v11 = *(a2 + 132);
      if ((v11 + 1) >= 8)
      {
        sub_1018823C8();
      }

      *(a1 + 152) |= 0x80000u;
      *(a1 + 132) = v11;
      v4 = *(a2 + 152);
    }

    if ((v4 & 0x100000) != 0)
    {
      v12 = *(a2 + 136);
      *(a1 + 152) |= 0x100000u;
      *(a1 + 136) = v12;
      v4 = *(a2 + 152);
    }

    if ((v4 & 0x200000) != 0)
    {
      v13 = *(a2 + 144);
      *(a1 + 152) |= 0x200000u;
      *(a1 + 144) = v13;
    }
  }
}

void sub_100421A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100421AA0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024520E0;
  sub_1001F4D60(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

uint64_t sub_100421AF4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636C38;
  if (!qword_102636C38)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636C38;
  }

  return result;
}

uint64_t sub_100421BA4(uint64_t result)
{
  v1 = *(result + 152);
  if (v1)
  {
    *(result + 48) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(result + 8);
      if (v2)
      {
        if (*(v2 + 28))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 28) = 0;
        v1 = *(result + 152);
      }
    }

    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *(result + 56) = 0;
    *(result + 64) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 52) = 0;
    *(result + 104) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 72) = 0;
    if ((v1 & 0x2000) != 0)
    {
      v3 = *(result + 96);
      if (v3)
      {
        if (*(v3 + 28))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 28) = 0;
        v1 = *(result + 152);
      }
    }

    *(result + 112) = 0;
    *(result + 108) = 0;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(result + 120) = xmmword_101C771D0;
    *(result + 136) = 0;
    *(result + 144) = 0;
  }

  *(result + 152) = 0;
  return result;
}

uint64_t sub_100421C44(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          goto LABEL_52;
        }

        v76[0] = 0;
        v8 = *(this + 1);
        if (v8 >= *(this + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v76);
          if (!result)
          {
            return result;
          }

          v9 = v76[0];
        }

        else
        {
          *(this + 1) = v8 + 1;
        }

        if (v9 < 3 || v9 == 0xFFFF)
        {
          *(a1 + 152) |= 1u;
          *(a1 + 48) = v9;
        }

        v27 = *(this + 1);
        if (v27 < *(this + 2) && *v27 == 18)
        {
          *(this + 1) = v27 + 1;
          goto LABEL_67;
        }

        continue;
      case 2u:
        if (v7 != 2)
        {
          goto LABEL_52;
        }

LABEL_67:
        *(a1 + 152) |= 2u;
        v28 = *(a1 + 8);
        if (!v28)
        {
          operator new();
        }

        v76[0] = 0;
        v29 = *(this + 1);
        if (v29 >= *(this + 2) || *v29 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v76))
          {
            return 0;
          }
        }

        else
        {
          v76[0] = *v29;
          *(this + 1) = v29 + 1;
        }

        v30 = *(this + 14);
        v31 = *(this + 15);
        *(this + 14) = v30 + 1;
        if (v30 >= v31)
        {
          return 0;
        }

        v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v76[0]);
        if (!sub_100421408(v28, this, v33) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v32);
        v34 = *(this + 14);
        v35 = __OFSUB__(v34, 1);
        v36 = v34 - 1;
        if (v36 < 0 == v35)
        {
          *(this + 14) = v36;
        }

        v37 = *(this + 1);
        if (v37 >= *(this + 2) || *v37 != 25)
        {
          continue;
        }

        *(this + 1) = v37 + 1;
LABEL_81:
        *v76 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v76) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v76;
        *(a1 + 152) |= 4u;
        v38 = *(this + 1);
        if (v38 >= *(this + 2) || *v38 != 33)
        {
          continue;
        }

        *(this + 1) = v38 + 1;
LABEL_85:
        *v76 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v76) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v76;
        *(a1 + 152) |= 8u;
        v39 = *(this + 1);
        if (v39 >= *(this + 2) || *v39 != 41)
        {
          continue;
        }

        *(this + 1) = v39 + 1;
LABEL_89:
        *v76 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v76) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v76;
        *(a1 + 152) |= 0x10u;
        v40 = *(this + 1);
        if (v40 >= *(this + 2) || *v40 != 49)
        {
          continue;
        }

        *(this + 1) = v40 + 1;
LABEL_93:
        *v76 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v76) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = *v76;
        *(a1 + 152) |= 0x20u;
        v41 = *(this + 1);
        if (v41 >= *(this + 2) || *v41 != 57)
        {
          continue;
        }

        *(this + 1) = v41 + 1;
LABEL_97:
        *v76 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v76) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 56) = *v76;
        *(a1 + 152) |= 0x40u;
        v42 = *(this + 1);
        if (v42 >= *(this + 2) || *v42 != 65)
        {
          continue;
        }

        *(this + 1) = v42 + 1;
LABEL_101:
        *v76 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v76) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = *v76;
        *(a1 + 152) |= 0x80u;
        v43 = *(this + 1);
        if (v43 >= *(this + 2) || *v43 != 73)
        {
          continue;
        }

        *(this + 1) = v43 + 1;
LABEL_105:
        *v76 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v76) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 72) = *v76;
        *(a1 + 152) |= 0x100u;
        v44 = *(this + 1);
        if (v44 >= *(this + 2) || *v44 != 81)
        {
          continue;
        }

        *(this + 1) = v44 + 1;
LABEL_109:
        *v76 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v76) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 80) = *v76;
        *(a1 + 152) |= 0x200u;
        v45 = *(this + 1);
        v21 = *(this + 2);
        if (v45 >= v21 || *v45 != 88)
        {
          continue;
        }

        v22 = v45 + 1;
        *(this + 1) = v22;
LABEL_113:
        v76[0] = 0;
        if (v22 >= v21 || (v46 = *v22, (v46 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v76);
          if (!result)
          {
            return result;
          }

          v46 = v76[0];
          v47 = *(this + 1);
          v21 = *(this + 2);
        }

        else
        {
          v47 = v22 + 1;
          *(this + 1) = v47;
        }

        *(a1 + 52) = v46;
        *(a1 + 152) |= 0x400u;
        if (v47 >= v21 || *v47 != 97)
        {
          continue;
        }

        *(this + 1) = v47 + 1;
LABEL_121:
        *v76 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v76) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 88) = *v76;
        *(a1 + 152) |= 0x800u;
        v48 = *(this + 1);
        v12 = *(this + 2);
        if (v48 >= v12 || *v48 != 104)
        {
          continue;
        }

        v13 = v48 + 1;
        *(this + 1) = v13;
LABEL_125:
        v76[0] = 0;
        if (v13 >= v12 || (v49 = *v13, (v49 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v76);
          if (!result)
          {
            return result;
          }

          v49 = v76[0];
        }

        else
        {
          *(this + 1) = v13 + 1;
        }

        if (v49 <= 0xD)
        {
          *(a1 + 152) |= 0x1000u;
          *(a1 + 104) = v49;
        }

        v50 = *(this + 1);
        if (v50 >= *(this + 2) || *v50 != 114)
        {
          continue;
        }

        *(this + 1) = v50 + 1;
LABEL_135:
        *(a1 + 152) |= 0x2000u;
        v51 = *(a1 + 96);
        if (!v51)
        {
          operator new();
        }

        v76[0] = 0;
        v52 = *(this + 1);
        if (v52 >= *(this + 2) || *v52 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v76))
          {
            return 0;
          }
        }

        else
        {
          v76[0] = *v52;
          *(this + 1) = v52 + 1;
        }

        v53 = *(this + 14);
        v54 = *(this + 15);
        *(this + 14) = v53 + 1;
        if (v53 >= v54)
        {
          return 0;
        }

        v55 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v76[0]);
        if (!sub_100421408(v51, this, v56) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v55);
        v57 = *(this + 14);
        v35 = __OFSUB__(v57, 1);
        v58 = v57 - 1;
        if (v58 < 0 == v35)
        {
          *(this + 14) = v58;
        }

        v59 = *(this + 1);
        if (v59 >= *(this + 2) || *v59 != 121)
        {
          continue;
        }

        *(this + 1) = v59 + 1;
LABEL_149:
        *v76 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v76) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 112) = *v76;
        *(a1 + 152) |= 0x4000u;
        v60 = *(this + 1);
        v10 = *(this + 2);
        if (v10 - v60 < 2 || *v60 != 128 || v60[1] != 1)
        {
          continue;
        }

        v14 = (v60 + 2);
        *(this + 1) = v14;
LABEL_154:
        v76[0] = 0;
        if (v14 >= v10 || (v61 = *v14, (v61 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v76);
          if (!result)
          {
            return result;
          }

          v61 = v76[0];
          v62 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          v62 = (v14 + 1);
          *(this + 1) = v62;
        }

        *(a1 + 108) = v61;
        *(a1 + 152) |= 0x8000u;
        if (v10 - v62 < 2 || *v62 != 136 || v62[1] != 1)
        {
          continue;
        }

        v11 = (v62 + 2);
        *(this + 1) = v11;
LABEL_163:
        v76[0] = 0;
        if (v11 >= v10 || (v63 = *v11, (v63 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v76);
          if (!result)
          {
            return result;
          }

          v63 = v76[0];
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (v63 - 25 <= 0x32 && ((1 << (v63 - 25)) & 0x4000002000001) != 0 || v63 + 1 < 2)
        {
          *(a1 + 152) |= 0x10000u;
          *(a1 + 120) = v63;
        }

        v66 = *(this + 1);
        v15 = *(this + 2);
        if (v15 - v66 < 2 || *v66 != 144 || v66[1] != 1)
        {
          continue;
        }

        v16 = (v66 + 2);
        *(this + 1) = v16;
LABEL_180:
        v76[0] = 0;
        if (v16 >= v15 || (v67 = *v16, (v67 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v76);
          if (!result)
          {
            return result;
          }

          v67 = v76[0];
        }

        else
        {
          *(this + 1) = v16 + 1;
        }

        if (v67 <= 2)
        {
          *(a1 + 152) |= 0x20000u;
          *(a1 + 124) = v67;
        }

        v68 = *(this + 1);
        v19 = *(this + 2);
        if (v19 - v68 < 2 || *v68 != 152 || v68[1] != 1)
        {
          continue;
        }

        v20 = (v68 + 2);
        *(this + 1) = v20;
LABEL_191:
        v76[0] = 0;
        if (v20 >= v19 || (v69 = *v20, (v69 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v76);
          if (!result)
          {
            return result;
          }

          v69 = v76[0];
        }

        else
        {
          *(this + 1) = v20 + 1;
        }

        if (v69 <= 2)
        {
          *(a1 + 152) |= 0x40000u;
          *(a1 + 128) = v69;
        }

        v70 = *(this + 1);
        v23 = *(this + 2);
        if (v23 - v70 < 2 || *v70 != 160 || v70[1] != 1)
        {
          continue;
        }

        v24 = (v70 + 2);
        *(this + 1) = v24;
LABEL_202:
        v76[0] = 0;
        if (v24 >= v23 || (v71 = *v24, (v71 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v76);
          if (!result)
          {
            return result;
          }

          v71 = v76[0];
        }

        else
        {
          *(this + 1) = v24 + 1;
        }

        if (v71 + 1 <= 7)
        {
          *(a1 + 152) |= 0x80000u;
          *(a1 + 132) = v71;
        }

        v72 = *(this + 1);
        if (*(this + 4) - v72 < 2 || *v72 != 169 || v72[1] != 1)
        {
          continue;
        }

        *(this + 1) = v72 + 2;
LABEL_213:
        *v76 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v76))
        {
          *(a1 + 136) = *v76;
          *(a1 + 152) |= 0x100000u;
          v73 = *(this + 1);
          v17 = *(this + 2);
          if (v17 - v73 >= 2 && *v73 == 176 && v73[1] == 1)
          {
            v18 = (v73 + 2);
            *(this + 1) = v18;
LABEL_218:
            v76[0] = 0;
            if (v18 >= v17 || (v74 = *v18, (v74 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v76);
              if (!result)
              {
                return result;
              }

              v74 = v76[0];
              v75 = *(this + 1);
              v17 = *(this + 2);
            }

            else
            {
              v75 = v18 + 1;
              *(this + 1) = v75;
            }

            *(a1 + 144) = v74 != 0;
            *(a1 + 152) |= 0x200000u;
            if (v75 == v17 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if (v7 == 1)
        {
          goto LABEL_81;
        }

        goto LABEL_52;
      case 4u:
        if (v7 == 1)
        {
          goto LABEL_85;
        }

        goto LABEL_52;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_89;
        }

        goto LABEL_52;
      case 6u:
        if (v7 == 1)
        {
          goto LABEL_93;
        }

        goto LABEL_52;
      case 7u:
        if (v7 == 1)
        {
          goto LABEL_97;
        }

        goto LABEL_52;
      case 8u:
        if (v7 == 1)
        {
          goto LABEL_101;
        }

        goto LABEL_52;
      case 9u:
        if (v7 == 1)
        {
          goto LABEL_105;
        }

        goto LABEL_52;
      case 0xAu:
        if (v7 == 1)
        {
          goto LABEL_109;
        }

        goto LABEL_52;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v22 = *(this + 1);
        v21 = *(this + 2);
        goto LABEL_113;
      case 0xCu:
        if (v7 == 1)
        {
          goto LABEL_121;
        }

        goto LABEL_52;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_125;
      case 0xEu:
        if (v7 == 2)
        {
          goto LABEL_135;
        }

        goto LABEL_52;
      case 0xFu:
        if (v7 == 1)
        {
          goto LABEL_149;
        }

        goto LABEL_52;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v14 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_154;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_163;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v16 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_180;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v20 = *(this + 1);
        v19 = *(this + 2);
        goto LABEL_191;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v24 = *(this + 1);
        v23 = *(this + 2);
        goto LABEL_202;
      case 0x15u:
        if (v7 == 1)
        {
          goto LABEL_213;
        }

        goto LABEL_52;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v18 = *(this + 1);
        v17 = *(this + 2);
        goto LABEL_218;
      default:
LABEL_52:
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
  }
}

void sub_1004227B8(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100421630(a1, lpsrc);
}

void sub_100422840(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    (*(*a1 + 32))(a1);

    sub_100421630(a1, a2);
  }
}

void sub_1004228C4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 8);
      *(a1 + 32) |= 1u;
      *(a1 + 8) = v6;
      v4 = *(a2 + 32);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 16);
    *(a1 + 32) |= 2u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_12:
    v8 = *(a2 + 24);
    *(a1 + 32) |= 4u;
    *(a1 + 24) = v8;
    if ((*(a2 + 32) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 25);
    *(a1 + 32) |= 8u;
    *(a1 + 25) = v5;
  }
}

void sub_1004229B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100422A44(uint64_t result)
{
  if (*(result + 32))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_100422A5C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        if (v7 != 3)
        {
          if (v7 == 4 && (TagFallback & 7) == 0)
          {
            v10 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_37;
          }

          goto LABEL_25;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_25;
        }

        v13 = *(this + 1);
        v9 = *(this + 2);
LABEL_29:
        v19[0] = 0;
        if (v13 >= v9 || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v19);
          if (!result)
          {
            return result;
          }

          v14 = v19[0];
          v15 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v15 = v13 + 1;
          *(this + 1) = v15;
        }

        *(a1 + 24) = v14 != 0;
        *(a1 + 32) |= 4u;
        if (v15 < v9 && *v15 == 32)
        {
          v10 = v15 + 1;
          *(this + 1) = v10;
LABEL_37:
          v19[0] = 0;
          if (v10 >= v9 || (v17 = *v10, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v19);
            if (!result)
            {
              return result;
            }

            v17 = v19[0];
            v18 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            v18 = v10 + 1;
            *(this + 1) = v18;
          }

          *(a1 + 25) = v17 != 0;
          *(a1 + 32) |= 8u;
          if (v18 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

      if (v8 != 1)
      {
        goto LABEL_25;
      }

      *v19 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v19) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = *v19;
      *(a1 + 32) |= 1u;
      v11 = *(this + 1);
      if (v11 < *(this + 2) && *v11 == 17)
      {
        *(this + 1) = v11 + 1;
LABEL_20:
        *v19 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v19) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v19;
        *(a1 + 32) |= 2u;
        v12 = *(this + 1);
        v9 = *(this + 2);
        if (v12 < v9 && *v12 == 24)
        {
          v13 = v12 + 1;
          *(this + 1) = v13;
          goto LABEL_29;
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_20;
    }

LABEL_25:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

void sub_100422CC0(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1004228C4(a1, lpsrc);
}

double sub_100422D60(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      result = *(a2 + 8);
      *(a1 + 28) |= 1u;
      *(a1 + 8) = result;
      v5 = *(a2 + 28);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 16);
      *(a1 + 28) |= 2u;
      *(a1 + 16) = result;
    }
  }

  return result;
}

void sub_100422E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100422E90(uint64_t result)
{
  if (*(result + 28))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_100422EA4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 != 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v10 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v10) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v10;
        *(a1 + 28) |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v7 != 1)
      {
        break;
      }

      v10 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v10) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = v10;
      *(a1 + 28) |= 1u;
      v8 = *(this + 1);
      if (v8 < *(this + 2) && *v8 == 17)
      {
        *(this + 1) = v8 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_100423000(uint64_t a1)
{
  v1 = *(a1 + 28);
  if (*(a1 + 28))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 24) = v1;
  return v1;
}

double sub_10042302C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100422D60(a1, lpsrc);
}

void sub_1004230CC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 40))
  {
    v5 = *(a2 + 8);
    if (v5 >= 7)
    {
      sub_1018823F4();
    }

    *(a1 + 40) |= 1u;
    *(a1 + 8) = v5;
    v4 = *(a2 + 40);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 12);
    *(a1 + 40) |= 2u;
    *(a1 + 12) = v7;
    v4 = *(a2 + 40);
    if ((v4 & 4) == 0)
    {
LABEL_9:
      if ((v4 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_9;
  }

  v8 = *(a2 + 16);
  *(a1 + 40) |= 4u;
  *(a1 + 16) = v8;
  v4 = *(a2 + 40);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 20);
  *(a1 + 40) |= 8u;
  *(a1 + 20) = v9;
  v4 = *(a2 + 40);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    v11 = *(a2 + 28);
    *(a1 + 40) |= 0x20u;
    *(a1 + 28) = v11;
    v4 = *(a2 + 40);
    if ((v4 & 0x40) == 0)
    {
LABEL_13:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_14;
    }

    goto LABEL_21;
  }

LABEL_19:
  v10 = *(a2 + 24);
  *(a1 + 40) |= 0x10u;
  *(a1 + 24) = v10;
  v4 = *(a2 + 40);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_21:
  v12 = *(a2 + 32);
  *(a1 + 40) |= 0x40u;
  *(a1 + 32) = v12;
  if ((*(a2 + 40) & 0x80) != 0)
  {
LABEL_14:
    v6 = *(a2 + 33);
    *(a1 + 40) |= 0x80u;
    *(a1 + 33) = v6;
  }
}

void sub_100423248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004232D4(uint64_t result)
{
  if (*(result + 40))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
  }

  *(result + 40) = 0;
  return result;
}

uint64_t sub_1004232F0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 > 4)
      {
        if (TagFallback >> 3 > 6)
        {
          if (v7 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(this + 1);
              v11 = *(this + 2);
              goto LABEL_69;
            }
          }

          else if (v7 == 8 && (TagFallback & 7) == 0)
          {
            v12 = *(this + 1);
            v11 = *(this + 2);
            goto LABEL_77;
          }
        }

        else if (v7 == 5)
        {
          if (v8 == 5)
          {
            goto LABEL_61;
          }
        }

        else if (v7 == 6 && v8 == 5)
        {
          goto LABEL_65;
        }

        goto LABEL_34;
      }

      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if (v8 == 5)
          {
            goto LABEL_53;
          }
        }

        else if (v7 == 4 && v8 == 5)
        {
          goto LABEL_57;
        }

        goto LABEL_34;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_34;
      }

      v28 = 0;
      v13 = *(this + 1);
      if (v13 >= *(this + 2) || (v14 = *v13, (v14 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28);
        if (!result)
        {
          return result;
        }

        v14 = v28;
      }

      else
      {
        *(this + 1) = v13 + 1;
      }

      if (v14 <= 6)
      {
        *(a1 + 40) |= 1u;
        *(a1 + 8) = v14;
      }

      v17 = *(this + 1);
      v9 = *(this + 2);
      if (v17 < v9 && *v17 == 16)
      {
        v10 = v17 + 1;
        *(this + 1) = v10;
LABEL_45:
        v28 = 0;
        if (v10 >= v9 || (v18 = *v10, (v18 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28);
          if (!result)
          {
            return result;
          }

          v18 = v28;
          v19 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v19 = v10 + 1;
          *(this + 1) = v19;
        }

        *(a1 + 12) = v18;
        *(a1 + 40) |= 2u;
        if (v19 < v9 && *v19 == 29)
        {
          *(this + 1) = v19 + 1;
LABEL_53:
          v28 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v28) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 16) = v28;
          *(a1 + 40) |= 4u;
          v20 = *(this + 1);
          if (v20 < *(this + 2) && *v20 == 37)
          {
            *(this + 1) = v20 + 1;
LABEL_57:
            v28 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v28) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 20) = v28;
            *(a1 + 40) |= 8u;
            v21 = *(this + 1);
            if (v21 < *(this + 2) && *v21 == 45)
            {
              *(this + 1) = v21 + 1;
LABEL_61:
              v28 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v28) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 24) = v28;
              *(a1 + 40) |= 0x10u;
              v22 = *(this + 1);
              if (v22 < *(this + 2) && *v22 == 53)
              {
                *(this + 1) = v22 + 1;
LABEL_65:
                v28 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v28) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 28) = v28;
                *(a1 + 40) |= 0x20u;
                v23 = *(this + 1);
                v11 = *(this + 2);
                if (v23 < v11 && *v23 == 56)
                {
                  v15 = v23 + 1;
                  *(this + 1) = v15;
LABEL_69:
                  v28 = 0;
                  if (v15 >= v11 || (v24 = *v15, (v24 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28);
                    if (!result)
                    {
                      return result;
                    }

                    v24 = v28;
                    v25 = *(this + 1);
                    v11 = *(this + 2);
                  }

                  else
                  {
                    v25 = v15 + 1;
                    *(this + 1) = v25;
                  }

                  *(a1 + 32) = v24 != 0;
                  *(a1 + 40) |= 0x40u;
                  if (v25 < v11 && *v25 == 64)
                  {
                    v12 = v25 + 1;
                    *(this + 1) = v12;
LABEL_77:
                    v28 = 0;
                    if (v12 >= v11 || (v26 = *v12, (v26 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28);
                      if (!result)
                      {
                        return result;
                      }

                      v26 = v28;
                      v27 = *(this + 1);
                      v11 = *(this + 2);
                    }

                    else
                    {
                      v27 = v12 + 1;
                      *(this + 1) = v27;
                    }

                    *(a1 + 33) = v26 != 0;
                    *(a1 + 40) |= 0x80u;
                    if (v27 == v11 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_45;
    }

LABEL_34:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

void sub_100423714(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1004230CC(a1, lpsrc);
}

void sub_1004237B4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v5 = *(a2 + 8);
      *(a1 + 40) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 40);
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

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 16);
    *(a1 + 40) |= 2u;
    *(a1 + 16) = v6;
    v4 = *(a2 + 40);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

LABEL_12:
      v8 = *(a2 + 32);
      if ((v8 + 1) >= 4)
      {
        sub_101882420();
      }

      *(a1 + 40) |= 8u;
      *(a1 + 32) = v8;
      return;
    }

LABEL_11:
    v7 = *(a2 + 24);
    *(a1 + 40) |= 4u;
    *(a1 + 24) = v7;
    if ((*(a2 + 40) & 8) == 0)
    {
      return;
    }

    goto LABEL_12;
  }
}

void sub_1004238B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100423950(uint64_t result)
{
  if (*(result + 40))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = -1;
  }

  *(result + 40) = 0;
  return result;
}

uint64_t sub_100423970(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if (v8 == 1)
          {
            goto LABEL_28;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_32;
        }

        goto LABEL_25;
      }

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_25;
      }

      *v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v16) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = *v16;
      *(a1 + 40) |= 1u;
      v11 = *(this + 1);
      if (v11 < *(this + 2) && *v11 == 17)
      {
        *(this + 1) = v11 + 1;
LABEL_20:
        *v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v16) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v16;
        *(a1 + 40) |= 2u;
        v12 = *(this + 1);
        if (v12 < *(this + 2) && *v12 == 25)
        {
          *(this + 1) = v12 + 1;
LABEL_28:
          *v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v16) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = *v16;
          *(a1 + 40) |= 4u;
          v13 = *(this + 1);
          v9 = *(this + 2);
          if (v13 < v9 && *v13 == 32)
          {
            v10 = v13 + 1;
            *(this + 1) = v10;
LABEL_32:
            v16[0] = 0;
            if (v10 >= v9 || (v14 = *v10, (v14 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v16);
              if (!result)
              {
                return result;
              }

              v14 = v16[0];
            }

            else
            {
              *(this + 1) = v10 + 1;
            }

            if (v14 + 1 <= 3)
            {
              *(a1 + 40) |= 8u;
              *(a1 + 32) = v14;
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

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_20;
    }

LABEL_25:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

void sub_100423BB4(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1004237B4(a1, lpsrc);
}

void sub_100423C54(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v69);
  }

  sub_100455F10((a1 + 288), a2 + 288);
  v4 = *(a2 + 368);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 8);
    *(a1 + 368) |= 1u;
    *(a1 + 8) = v8;
    v4 = *(a2 + 368);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_28;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 16);
  *(a1 + 368) |= 2u;
  *(a1 + 16) = v9;
  v4 = *(a2 + 368);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  v10 = *(a2 + 24);
  *(a1 + 368) |= 4u;
  *(a1 + 24) = v10;
  v4 = *(a2 + 368);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  v11 = *(a2 + 32);
  *(a1 + 368) |= 8u;
  *(a1 + 32) = v11;
  v4 = *(a2 + 368);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_31:
    v13 = *(a2 + 48);
    *(a1 + 368) |= 0x20u;
    *(a1 + 48) = v13;
    v4 = *(a2 + 368);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_30:
  v12 = *(a2 + 40);
  *(a1 + 368) |= 0x10u;
  *(a1 + 40) = v12;
  v4 = *(a2 + 368);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_32:
  v14 = *(a2 + 52);
  *(a1 + 368) |= 0x40u;
  *(a1 + 52) = v14;
  v4 = *(a2 + 368);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 56);
    *(a1 + 368) |= 0x80u;
    *(a1 + 56) = v5;
    v4 = *(a2 + 368);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_48;
  }

  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 112);
    *(a1 + 368) |= 0x100u;
    *(a1 + 112) = v6;
    v4 = *(a2 + 368);
  }

  if ((v4 & 0x200) != 0)
  {
    v7 = *(a2 + 60);
    if (v7 >= 4)
    {
      sub_10188244C();
    }

    *(a1 + 368) |= 0x200u;
    *(a1 + 60) = v7;
    v4 = *(a2 + 368);
  }

  if ((v4 & 0x400) != 0)
  {
    *(a1 + 368) |= 0x400u;
    v15 = *(a1 + 64);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a2 + 64);
    if (!v16)
    {
      v16 = *(qword_102636C58 + 64);
    }

    sub_1004212C4(v15, v16);
    v4 = *(a2 + 368);
    if ((v4 & 0x800) == 0)
    {
LABEL_21:
      if ((v4 & 0x1000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_40;
    }
  }

  else if ((v4 & 0x800) == 0)
  {
    goto LABEL_21;
  }

  v17 = *(a2 + 72);
  *(a1 + 368) |= 0x800u;
  *(a1 + 72) = v17;
  v4 = *(a2 + 368);
  if ((v4 & 0x1000) == 0)
  {
LABEL_22:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_41;
  }

LABEL_40:
  v18 = *(a2 + 80);
  *(a1 + 368) |= 0x1000u;
  *(a1 + 80) = v18;
  v4 = *(a2 + 368);
  if ((v4 & 0x2000) == 0)
  {
LABEL_23:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_42;
  }

LABEL_41:
  v19 = *(a2 + 84);
  *(a1 + 368) |= 0x2000u;
  *(a1 + 84) = v19;
  v4 = *(a2 + 368);
  if ((v4 & 0x4000) == 0)
  {
LABEL_24:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_43;
  }

LABEL_42:
  v20 = *(a2 + 113);
  *(a1 + 368) |= 0x4000u;
  *(a1 + 113) = v20;
  v4 = *(a2 + 368);
  if ((v4 & 0x8000) == 0)
  {
    goto LABEL_48;
  }

LABEL_43:
  *(a1 + 368) |= 0x8000u;
  v21 = *(a1 + 88);
  if (!v21)
  {
    operator new();
  }

  v22 = *(a2 + 88);
  if (!v22)
  {
    v22 = *(qword_102636C58 + 88);
  }

  sub_100422D60(v21, v22);
  v4 = *(a2 + 368);
LABEL_48:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_65;
  }

  if ((v4 & 0x10000) != 0)
  {
    v23 = *(a2 + 96);
    if ((v23 + 1) >= 4)
    {
      sub_101882478();
    }

    *(a1 + 368) |= 0x10000u;
    *(a1 + 96) = v23;
    v4 = *(a2 + 368);
  }

  if ((v4 & 0x20000) != 0)
  {
    v29 = *(a2 + 100);
    *(a1 + 368) |= 0x20000u;
    *(a1 + 100) = v29;
    v4 = *(a2 + 368);
    if ((v4 & 0x40000) == 0)
    {
LABEL_54:
      if ((v4 & 0x80000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_99;
    }
  }

  else if ((v4 & 0x40000) == 0)
  {
    goto LABEL_54;
  }

  *(a1 + 368) |= 0x40000u;
  v30 = *(a1 + 104);
  if (!v30)
  {
    operator new();
  }

  v31 = *(a2 + 104);
  if (!v31)
  {
    v31 = *(qword_102636C58 + 104);
  }

  sub_1004212C4(v30, v31);
  v4 = *(a2 + 368);
  if ((v4 & 0x80000) == 0)
  {
LABEL_55:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_100;
  }

LABEL_99:
  v32 = *(a2 + 120);
  *(a1 + 368) |= 0x80000u;
  *(a1 + 120) = v32;
  v4 = *(a2 + 368);
  if ((v4 & 0x100000) == 0)
  {
LABEL_56:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_101;
  }

LABEL_100:
  v33 = *(a2 + 128);
  *(a1 + 368) |= 0x100000u;
  *(a1 + 128) = v33;
  v4 = *(a2 + 368);
  if ((v4 & 0x200000) == 0)
  {
LABEL_57:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

LABEL_101:
  v34 = *(a2 + 116);
  if (v34 >= 3)
  {
    sub_1018824A4();
  }

  *(a1 + 368) |= 0x200000u;
  *(a1 + 116) = v34;
  v4 = *(a2 + 368);
  if ((v4 & 0x400000) == 0)
  {
    goto LABEL_59;
  }

LABEL_58:
  v24 = *(a2 + 114);
  *(a1 + 368) |= 0x400000u;
  *(a1 + 114) = v24;
  v4 = *(a2 + 368);
LABEL_59:
  if ((v4 & 0x800000) != 0)
  {
    *(a1 + 368) |= 0x800000u;
    v25 = *(a1 + 136);
    if (!v25)
    {
      operator new();
    }

    v26 = *(a2 + 136);
    if (!v26)
    {
      v26 = *(qword_102636C58 + 136);
    }

    sub_1004228C4(v25, v26);
    v4 = *(a2 + 368);
  }

LABEL_65:
  if (!HIBYTE(v4))
  {
    goto LABEL_74;
  }

  if ((v4 & 0x1000000) != 0)
  {
    v61 = *(a2 + 144);
    *(a1 + 368) |= 0x1000000u;
    *(a1 + 144) = v61;
    v4 = *(a2 + 368);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_68:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_160;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_68;
  }

  v62 = *(a2 + 152);
  *(a1 + 368) |= 0x2000000u;
  *(a1 + 152) = v62;
  v4 = *(a2 + 368);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_69:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_161;
  }

LABEL_160:
  v63 = *(a2 + 160);
  *(a1 + 368) |= 0x4000000u;
  *(a1 + 160) = v63;
  v4 = *(a2 + 368);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_70:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_162;
  }

LABEL_161:
  v64 = *(a2 + 168);
  *(a1 + 368) |= 0x8000000u;
  *(a1 + 168) = v64;
  v4 = *(a2 + 368);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_71:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_163;
  }

LABEL_162:
  v65 = *(a2 + 176);
  *(a1 + 368) |= 0x10000000u;
  *(a1 + 176) = v65;
  v4 = *(a2 + 368);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_72:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_73;
    }

LABEL_164:
    v67 = *(a2 + 115);
    *(a1 + 368) |= 0x40000000u;
    *(a1 + 115) = v67;
    if ((*(a2 + 368) & 0x80000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_165;
  }

LABEL_163:
  v66 = *(a2 + 184);
  *(a1 + 368) |= 0x20000000u;
  *(a1 + 184) = v66;
  v4 = *(a2 + 368);
  if ((v4 & 0x40000000) != 0)
  {
    goto LABEL_164;
  }

LABEL_73:
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_74;
  }

LABEL_165:
  v68 = *(a2 + 192);
  *(a1 + 368) |= 0x80000000;
  *(a1 + 192) = v68;
LABEL_74:
  v27 = *(a2 + 372);
  if (!v27)
  {
    goto LABEL_84;
  }

  if (v27)
  {
    v35 = *(a2 + 200);
    *(a1 + 372) |= 1u;
    *(a1 + 200) = v35;
    v27 = *(a2 + 372);
    if ((v27 & 2) == 0)
    {
LABEL_77:
      if ((v27 & 4) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_106;
    }
  }

  else if ((v27 & 2) == 0)
  {
    goto LABEL_77;
  }

  v36 = *(a2 + 276);
  *(a1 + 372) |= 2u;
  *(a1 + 276) = v36;
  v27 = *(a2 + 372);
  if ((v27 & 4) == 0)
  {
LABEL_78:
    if ((v27 & 8) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_111;
  }

LABEL_106:
  *(a1 + 372) |= 4u;
  v37 = *(a1 + 208);
  if (!v37)
  {
    operator new();
  }

  v38 = *(a2 + 208);
  if (!v38)
  {
    v38 = *(qword_102636C58 + 208);
  }

  sub_1004212C4(v37, v38);
  v27 = *(a2 + 372);
  if ((v27 & 8) == 0)
  {
LABEL_79:
    if ((v27 & 0x10) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_112;
  }

LABEL_111:
  v39 = *(a2 + 216);
  *(a1 + 372) |= 8u;
  *(a1 + 216) = v39;
  v27 = *(a2 + 372);
  if ((v27 & 0x10) == 0)
  {
LABEL_80:
    if ((v27 & 0x20) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_114;
  }

LABEL_112:
  v40 = *(a2 + 272);
  if (v40 >= 3)
  {
    sub_1018824D0();
  }

  *(a1 + 372) |= 0x10u;
  *(a1 + 272) = v40;
  v27 = *(a2 + 372);
  if ((v27 & 0x20) == 0)
  {
LABEL_81:
    if ((v27 & 0x40) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_115;
  }

LABEL_114:
  v41 = *(a2 + 224);
  *(a1 + 372) |= 0x20u;
  *(a1 + 224) = v41;
  v27 = *(a2 + 372);
  if ((v27 & 0x40) == 0)
  {
LABEL_82:
    if ((v27 & 0x80) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

LABEL_115:
  v42 = *(a2 + 232);
  *(a1 + 372) |= 0x40u;
  *(a1 + 232) = v42;
  v27 = *(a2 + 372);
  if ((v27 & 0x80) != 0)
  {
LABEL_83:
    v28 = *(a2 + 240);
    *(a1 + 372) |= 0x80u;
    *(a1 + 240) = v28;
    v27 = *(a2 + 372);
  }

LABEL_84:
  if ((v27 & 0xFF00) == 0)
  {
    goto LABEL_129;
  }

  if ((v27 & 0x100) != 0)
  {
    v43 = *(a2 + 248);
    *(a1 + 372) |= 0x100u;
    *(a1 + 248) = v43;
    v27 = *(a2 + 372);
    if ((v27 & 0x200) == 0)
    {
LABEL_87:
      if ((v27 & 0x400) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_119;
    }
  }

  else if ((v27 & 0x200) == 0)
  {
    goto LABEL_87;
  }

  v44 = *(a2 + 256);
  *(a1 + 372) |= 0x200u;
  *(a1 + 256) = v44;
  v27 = *(a2 + 372);
  if ((v27 & 0x400) == 0)
  {
LABEL_88:
    if ((v27 & 0x800) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_120;
  }

LABEL_119:
  v45 = *(a2 + 277);
  *(a1 + 372) |= 0x400u;
  *(a1 + 277) = v45;
  v27 = *(a2 + 372);
  if ((v27 & 0x800) == 0)
  {
LABEL_89:
    if ((v27 & 0x1000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_121;
  }

LABEL_120:
  v46 = *(a2 + 264);
  *(a1 + 372) |= 0x800u;
  *(a1 + 264) = v46;
  v27 = *(a2 + 372);
  if ((v27 & 0x1000) == 0)
  {
LABEL_90:
    if ((v27 & 0x4000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_122;
  }

LABEL_121:
  v47 = *(a2 + 280);
  *(a1 + 372) |= 0x1000u;
  *(a1 + 280) = v47;
  v27 = *(a2 + 372);
  if ((v27 & 0x4000) == 0)
  {
LABEL_91:
    if ((v27 & 0x8000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_124;
  }

LABEL_122:
  v48 = *(a2 + 320);
  if (v48 >= 3)
  {
    sub_1018824FC();
  }

  *(a1 + 372) |= 0x4000u;
  *(a1 + 320) = v48;
  v27 = *(a2 + 372);
  if ((v27 & 0x8000) != 0)
  {
LABEL_124:
    *(a1 + 372) |= 0x8000u;
    v49 = *(a1 + 312);
    if (!v49)
    {
      operator new();
    }

    v50 = *(a2 + 312);
    if (!v50)
    {
      v50 = *(qword_102636C58 + 312);
    }

    sub_1004237B4(v49, v50);
    v27 = *(a2 + 372);
  }

LABEL_129:
  if ((v27 & 0xFF0000) == 0)
  {
    goto LABEL_146;
  }

  if ((v27 & 0x10000) != 0)
  {
    v51 = *(a2 + 324);
    if (v51 >= 3)
    {
      sub_101882528();
    }

    *(a1 + 372) |= 0x10000u;
    *(a1 + 324) = v51;
    v27 = *(a2 + 372);
  }

  if ((v27 & 0x20000) != 0)
  {
    v58 = *(a2 + 328);
    *(a1 + 372) |= 0x20000u;
    *(a1 + 328) = v58;
    v27 = *(a2 + 372);
    if ((v27 & 0x40000) == 0)
    {
LABEL_135:
      if ((v27 & 0x80000) == 0)
      {
        goto LABEL_136;
      }

LABEL_155:
      v60 = *(a2 + 344);
      if (v60 >= 4)
      {
        sub_101882554();
      }

      *(a1 + 372) |= 0x80000u;
      *(a1 + 344) = v60;
      v27 = *(a2 + 372);
      if ((v27 & 0x100000) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_137;
    }
  }

  else if ((v27 & 0x40000) == 0)
  {
    goto LABEL_135;
  }

  v59 = *(a2 + 336);
  *(a1 + 372) |= 0x40000u;
  *(a1 + 336) = v59;
  v27 = *(a2 + 372);
  if ((v27 & 0x80000) != 0)
  {
    goto LABEL_155;
  }

LABEL_136:
  if ((v27 & 0x100000) != 0)
  {
LABEL_137:
    v52 = *(a2 + 278);
    *(a1 + 372) |= 0x100000u;
    *(a1 + 278) = v52;
    v27 = *(a2 + 372);
  }

LABEL_138:
  if ((v27 & 0x200000) != 0)
  {
    v53 = *(a2 + 348);
    if (v53 >= 3)
    {
      sub_101882580();
    }

    *(a1 + 372) |= 0x200000u;
    *(a1 + 348) = v53;
    v27 = *(a2 + 372);
  }

  if ((v27 & 0x400000) != 0)
  {
    v54 = *(a2 + 352);
    if (v54 >= 5)
    {
      sub_1018825AC();
    }

    *(a1 + 372) |= 0x400000u;
    *(a1 + 352) = v54;
    v27 = *(a2 + 372);
  }

  if ((v27 & 0x800000) != 0)
  {
    v55 = *(a2 + 279);
    *(a1 + 372) |= 0x800000u;
    *(a1 + 279) = v55;
    v27 = *(a2 + 372);
  }

LABEL_146:
  if (HIBYTE(v27))
  {
    if ((v27 & 0x1000000) != 0)
    {
      v56 = *(a2 + 356);
      *(a1 + 372) |= 0x1000000u;
      *(a1 + 356) = v56;
      v27 = *(a2 + 372);
    }

    if ((v27 & 0x2000000) != 0)
    {
      v57 = *(a2 + 360);
      if (v57 >= 5)
      {
        sub_1018825D8();
      }

      *(a1 + 372) |= 0x2000000u;
      *(a1 + 360) = v57;
    }
  }
}

void sub_100424698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004246B4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636C58;
  if (!qword_102636C58)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636C58;
  }

  return result;
}

uint64_t sub_10042479C(uint64_t a1)
{
  v2 = *(a1 + 368);
  if (v2)
  {
    *(a1 + 56) = 0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(a1 + 112) = 0;
    *(a1 + 60) = 0;
    if ((v2 & 0x400) != 0)
    {
      v3 = *(a1 + 64);
      if (v3)
      {
        if (*(v3 + 28))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 28) = 0;
        v2 = *(a1 + 368);
      }
    }

    *(a1 + 113) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    if ((v2 & 0x8000) != 0)
    {
      v4 = *(a1 + 88);
      if (v4)
      {
        if (*(v4 + 28))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        *(v4 + 28) = 0;
        v2 = *(a1 + 368);
      }
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(a1 + 96) = 0xFFFFFFFFLL;
    if ((v2 & 0x40000) != 0)
    {
      v5 = *(a1 + 104);
      if (v5)
      {
        if (*(v5 + 28))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *(v5 + 28) = 0;
        v2 = *(a1 + 368);
      }
    }

    *(a1 + 114) = 0;
    *(a1 + 124) = 0;
    *(a1 + 116) = 0;
    *(a1 + 132) = 0;
    if ((v2 & 0x800000) != 0)
    {
      v6 = *(a1 + 136);
      if (v6)
      {
        if (*(v6 + 32))
        {
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
        }

        *(v6 + 32) = 0;
        v2 = *(a1 + 368);
      }
    }
  }

  if (HIBYTE(v2))
  {
    *(a1 + 115) = 0;
    *(a1 + 144) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 192) = 0;
  }

  v7 = *(a1 + 372);
  if (v7)
  {
    *(a1 + 200) = 0;
    *(a1 + 276) = 0;
    if ((v7 & 4) != 0)
    {
      v8 = *(a1 + 208);
      if (v8)
      {
        if (*(v8 + 28))
        {
          *(v8 + 8) = 0;
          *(v8 + 16) = 0;
        }

        *(v8 + 28) = 0;
        v7 = *(a1 + 372);
      }
    }

    *(a1 + 272) = 0;
    *(a1 + 216) = 0u;
    *(a1 + 232) = 0u;
  }

  if ((v7 & 0xFF00) != 0)
  {
    *(a1 + 277) = 0;
    *(a1 + 280) = 0;
    *(a1 + 320) = 0;
    *(a1 + 256) = 0;
    *(a1 + 264) = 0;
    *(a1 + 248) = 0;
    if ((v7 & 0x8000) != 0)
    {
      v9 = *(a1 + 312);
      if (v9)
      {
        if (*(v9 + 40))
        {
          *(v9 + 8) = 0;
          *(v9 + 16) = 0;
          *(v9 + 24) = 0;
          *(v9 + 32) = -1;
        }

        *(v9 + 40) = 0;
        v7 = *(a1 + 372);
      }
    }
  }

  if ((v7 & 0xFF0000) != 0)
  {
    *(a1 + 278) = 0;
    *(a1 + 324) = 0u;
    *(a1 + 340) = 0u;
  }

  if (HIBYTE(v7))
  {
    *(a1 + 356) = 0;
    *(a1 + 360) = 0;
  }

  result = sub_1003C79DC(a1 + 288);
  *(a1 + 368) = 0;
  return result;
}

uint64_t sub_100424974(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (v7 != 1)
        {
          goto LABEL_153;
        }

        *v187 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = *v187;
        *(a1 + 368) |= 1u;
        v8 = *(this + 1);
        if (v8 >= *(this + 2) || *v8 != 17)
        {
          continue;
        }

        *(this + 1) = v8 + 1;
        goto LABEL_67;
      case 2u:
        if (v7 != 1)
        {
          goto LABEL_153;
        }

LABEL_67:
        *v187 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v187;
        *(a1 + 368) |= 2u;
        v28 = *(this + 1);
        if (v28 >= *(this + 2) || *v28 != 25)
        {
          continue;
        }

        *(this + 1) = v28 + 1;
LABEL_71:
        *v187 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v187;
        *(a1 + 368) |= 4u;
        v29 = *(this + 1);
        if (v29 >= *(this + 2) || *v29 != 33)
        {
          continue;
        }

        *(this + 1) = v29 + 1;
LABEL_75:
        *v187 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v187;
        *(a1 + 368) |= 8u;
        v30 = *(this + 1);
        if (v30 >= *(this + 2) || *v30 != 41)
        {
          continue;
        }

        *(this + 1) = v30 + 1;
LABEL_79:
        *v187 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = *v187;
        *(a1 + 368) |= 0x10u;
        v31 = *(this + 1);
        if (v31 >= *(this + 2) || *v31 != 53)
        {
          continue;
        }

        *(this + 1) = v31 + 1;
LABEL_92:
        v187[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = v187[0];
        *(a1 + 368) |= 0x20u;
        v32 = *(this + 1);
        if (v32 >= *(this + 2) || *v32 != 61)
        {
          continue;
        }

        *(this + 1) = v32 + 1;
LABEL_101:
        v187[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 52) = v187[0];
        *(a1 + 368) |= 0x40u;
        v36 = *(this + 1);
        if (v36 >= *(this + 2) || *v36 != 69)
        {
          continue;
        }

        *(this + 1) = v36 + 1;
LABEL_105:
        v187[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 56) = v187[0];
        *(a1 + 368) |= 0x80u;
        v37 = *(this + 1);
        v25 = *(this + 2);
        if (v37 >= v25 || *v37 != 72)
        {
          continue;
        }

        v38 = v37 + 1;
        *(this + 1) = v38;
LABEL_115:
        v187[0] = 0;
        if (v38 >= v25 || (v40 = *v38, (v40 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187);
          if (!result)
          {
            return result;
          }

          v40 = v187[0];
          v41 = *(this + 1);
          v25 = *(this + 2);
        }

        else
        {
          v41 = v38 + 1;
          *(this + 1) = v41;
        }

        *(a1 + 112) = v40 != 0;
        *(a1 + 368) |= 0x100u;
        if (v41 >= v25 || *v41 != 80)
        {
          continue;
        }

        v26 = v41 + 1;
        *(this + 1) = v26;
LABEL_162:
        v187[0] = 0;
        if (v26 >= v25 || (v59 = *v26, (v59 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187);
          if (!result)
          {
            return result;
          }

          v59 = v187[0];
        }

        else
        {
          *(this + 1) = v26 + 1;
        }

        if (v59 <= 3)
        {
          *(a1 + 368) |= 0x200u;
          *(a1 + 60) = v59;
        }

        v60 = *(this + 1);
        if (v60 >= *(this + 2) || *v60 != 90)
        {
          continue;
        }

        *(this + 1) = v60 + 1;
LABEL_172:
        *(a1 + 368) |= 0x400u;
        v61 = *(a1 + 64);
        if (!v61)
        {
          operator new();
        }

        v187[0] = 0;
        v62 = *(this + 1);
        if (v62 >= *(this + 2) || *v62 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187))
          {
            return 0;
          }
        }

        else
        {
          v187[0] = *v62;
          *(this + 1) = v62 + 1;
        }

        v63 = *(this + 14);
        v64 = *(this + 15);
        *(this + 14) = v63 + 1;
        if (v63 >= v64)
        {
          return 0;
        }

        v65 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v187[0]);
        if (!sub_100421408(v61, this, v66) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v65);
        v67 = *(this + 14);
        v68 = __OFSUB__(v67, 1);
        v69 = v67 - 1;
        if (v69 < 0 == v68)
        {
          *(this + 14) = v69;
        }

        v70 = *(this + 1);
        if (v70 >= *(this + 2) || *v70 != 97)
        {
          continue;
        }

        *(this + 1) = v70 + 1;
LABEL_186:
        *v187 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 72) = *v187;
        *(a1 + 368) |= 0x800u;
        v71 = *(this + 1);
        v18 = *(this + 2);
        if (v71 >= v18 || *v71 != 104)
        {
          continue;
        }

        v24 = v71 + 1;
        *(this + 1) = v24;
LABEL_190:
        v187[0] = 0;
        if (v24 >= v18 || (v72 = *v24, (v72 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187);
          if (!result)
          {
            return result;
          }

          v72 = v187[0];
          v73 = *(this + 1);
          v18 = *(this + 2);
        }

        else
        {
          v73 = v24 + 1;
          *(this + 1) = v73;
        }

        *(a1 + 80) = v72;
        *(a1 + 368) |= 0x1000u;
        if (v73 >= v18 || *v73 != 112)
        {
          continue;
        }

        v35 = v73 + 1;
        *(this + 1) = v35;
LABEL_198:
        v187[0] = 0;
        if (v35 >= v18 || (v74 = *v35, (v74 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187);
          if (!result)
          {
            return result;
          }

          v74 = v187[0];
          v75 = *(this + 1);
          v18 = *(this + 2);
        }

        else
        {
          v75 = v35 + 1;
          *(this + 1) = v75;
        }

        *(a1 + 84) = v74;
        *(a1 + 368) |= 0x2000u;
        if (v75 >= v18 || *v75 != 120)
        {
          continue;
        }

        v19 = v75 + 1;
        *(this + 1) = v19;
LABEL_206:
        v187[0] = 0;
        if (v19 >= v18 || (v76 = *v19, (v76 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187);
          if (!result)
          {
            return result;
          }

          v76 = v187[0];
          v77 = *(this + 1);
          v18 = *(this + 2);
        }

        else
        {
          v77 = (v19 + 1);
          *(this + 1) = v77;
        }

        *(a1 + 113) = v76 != 0;
        v27 = *(a1 + 368) | 0x4000;
        *(a1 + 368) = v27;
        if (v18 - v77 < 2 || *v77 != 130 || v77[1] != 1)
        {
          continue;
        }

        *(this + 1) = v77 + 2;
LABEL_215:
        *(a1 + 368) = v27 | 0x8000;
        v78 = *(a1 + 88);
        if (!v78)
        {
          operator new();
        }

        v187[0] = 0;
        v79 = *(this + 1);
        if (v79 >= *(this + 2) || *v79 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187))
          {
            return 0;
          }
        }

        else
        {
          v187[0] = *v79;
          *(this + 1) = v79 + 1;
        }

        v80 = *(this + 14);
        v81 = *(this + 15);
        *(this + 14) = v80 + 1;
        if (v80 >= v81)
        {
          return 0;
        }

        v82 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v187[0]);
        if (!sub_100422EA4(v78, this, v83) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v82);
        v84 = *(this + 14);
        v68 = __OFSUB__(v84, 1);
        v85 = v84 - 1;
        if (v85 < 0 == v68)
        {
          *(this + 14) = v85;
        }

        v86 = *(this + 1);
        v16 = *(this + 2);
        if (v16 - v86 <= 1 || *v86 != 136 || v86[1] != 1)
        {
          continue;
        }

        v17 = (v86 + 2);
        *(this + 1) = v17;
LABEL_230:
        v187[0] = 0;
        if (v17 >= v16 || (v87 = *v17, (v87 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187);
          if (!result)
          {
            return result;
          }

          v87 = v187[0];
        }

        else
        {
          *(this + 1) = v17 + 1;
        }

        if (v87 + 1 <= 3)
        {
          *(a1 + 368) |= 0x10000u;
          *(a1 + 96) = v87;
        }

        v88 = *(this + 1);
        if (*(this + 4) - v88 < 2 || *v88 != 149 || v88[1] != 1)
        {
          continue;
        }

        *(this + 1) = v88 + 2;
LABEL_241:
        v187[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 100) = v187[0];
        v39 = *(a1 + 368) | 0x20000;
        *(a1 + 368) = v39;
        v89 = *(this + 1);
        if (*(this + 4) - v89 < 2 || *v89 != 154 || v89[1] != 1)
        {
          continue;
        }

        *(this + 1) = v89 + 2;
LABEL_246:
        *(a1 + 368) = v39 | 0x40000;
        v90 = *(a1 + 104);
        if (!v90)
        {
          operator new();
        }

        v187[0] = 0;
        v91 = *(this + 1);
        if (v91 >= *(this + 2) || *v91 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187))
          {
            return 0;
          }
        }

        else
        {
          v187[0] = *v91;
          *(this + 1) = v91 + 1;
        }

        v92 = *(this + 14);
        v93 = *(this + 15);
        *(this + 14) = v92 + 1;
        if (v92 >= v93)
        {
          return 0;
        }

        v94 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v187[0]);
        if (!sub_100421408(v90, this, v95) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v94);
        v96 = *(this + 14);
        v68 = __OFSUB__(v96, 1);
        v97 = v96 - 1;
        if (v97 < 0 == v68)
        {
          *(this + 14) = v97;
        }

        v98 = *(this + 1);
        if (*(this + 4) - v98 <= 1 || *v98 != 161 || v98[1] != 1)
        {
          continue;
        }

        *(this + 1) = v98 + 2;
LABEL_261:
        *v187 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 120) = *v187;
        *(a1 + 368) |= 0x80000u;
        v99 = *(this + 1);
        if (*(this + 4) - v99 < 2 || *v99 != 169 || v99[1] != 1)
        {
          continue;
        }

        *(this + 1) = v99 + 2;
LABEL_266:
        *v187 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 128) = *v187;
        *(a1 + 368) |= 0x100000u;
        v100 = *(this + 1);
        v33 = *(this + 2);
        if (v33 - v100 < 2 || *v100 != 176 || v100[1] != 1)
        {
          continue;
        }

        v34 = (v100 + 2);
        *(this + 1) = v34;
LABEL_271:
        v187[0] = 0;
        if (v34 >= v33 || (v101 = *v34, (v101 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187);
          if (!result)
          {
            return result;
          }

          v101 = v187[0];
        }

        else
        {
          *(this + 1) = v34 + 1;
        }

        if (v101 <= 2)
        {
          *(a1 + 368) |= 0x200000u;
          *(a1 + 116) = v101;
        }

        v102 = *(this + 1);
        v44 = *(this + 2);
        if (v44 - v102 < 2 || *v102 != 184 || v102[1] != 1)
        {
          continue;
        }

        v45 = (v102 + 2);
        *(this + 1) = v45;
LABEL_282:
        v187[0] = 0;
        if (v45 >= v44 || (v103 = *v45, (v103 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187);
          if (!result)
          {
            return result;
          }

          v103 = v187[0];
          v104 = *(this + 1);
          v44 = *(this + 2);
        }

        else
        {
          v104 = (v45 + 1);
          *(this + 1) = v104;
        }

        *(a1 + 114) = v103 != 0;
        v49 = *(a1 + 368) | 0x400000;
        *(a1 + 368) = v49;
        if (v44 - v104 < 2 || *v104 != 194 || v104[1] != 1)
        {
          continue;
        }

        *(this + 1) = v104 + 2;
LABEL_291:
        *(a1 + 368) = v49 | 0x800000;
        v105 = *(a1 + 136);
        if (!v105)
        {
          operator new();
        }

        v187[0] = 0;
        v106 = *(this + 1);
        if (v106 >= *(this + 2) || *v106 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187))
          {
            return 0;
          }
        }

        else
        {
          v187[0] = *v106;
          *(this + 1) = v106 + 1;
        }

        v107 = *(this + 14);
        v108 = *(this + 15);
        *(this + 14) = v107 + 1;
        if (v107 >= v108)
        {
          return 0;
        }

        v109 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v187[0]);
        if (!sub_100422A5C(v105, this, v110) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v109);
        v111 = *(this + 14);
        v68 = __OFSUB__(v111, 1);
        v112 = v111 - 1;
        if (v112 < 0 == v68)
        {
          *(this + 14) = v112;
        }

        v113 = *(this + 1);
        if (*(this + 4) - v113 <= 1 || *v113 != 201 || v113[1] != 1)
        {
          continue;
        }

        *(this + 1) = v113 + 2;
LABEL_306:
        *v187 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 144) = *v187;
        *(a1 + 368) |= 0x1000000u;
        v114 = *(this + 1);
        if (*(this + 4) - v114 < 2 || *v114 != 209 || v114[1] != 1)
        {
          continue;
        }

        *(this + 1) = v114 + 2;
LABEL_311:
        *v187 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 152) = *v187;
        *(a1 + 368) |= 0x2000000u;
        v115 = *(this + 1);
        if (*(this + 4) - v115 < 2 || *v115 != 217 || v115[1] != 1)
        {
          continue;
        }

        *(this + 1) = v115 + 2;
LABEL_316:
        *v187 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 160) = *v187;
        *(a1 + 368) |= 0x4000000u;
        v116 = *(this + 1);
        if (*(this + 4) - v116 < 2 || *v116 != 225 || v116[1] != 1)
        {
          continue;
        }

        *(this + 1) = v116 + 2;
LABEL_321:
        *v187 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 168) = *v187;
        *(a1 + 368) |= 0x8000000u;
        v117 = *(this + 1);
        if (*(this + 4) - v117 < 2 || *v117 != 233 || v117[1] != 1)
        {
          continue;
        }

        *(this + 1) = v117 + 2;
LABEL_326:
        *v187 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 176) = *v187;
        *(a1 + 368) |= 0x10000000u;
        v118 = *(this + 1);
        if (*(this + 4) - v118 < 2 || *v118 != 241 || v118[1] != 1)
        {
          continue;
        }

        *(this + 1) = v118 + 2;
LABEL_331:
        *v187 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 184) = *v187;
        *(a1 + 368) |= 0x20000000u;
        v119 = *(this + 1);
        v42 = *(this + 2);
        if (v42 - v119 < 2 || *v119 != 248 || v119[1] != 1)
        {
          continue;
        }

        v43 = (v119 + 2);
        *(this + 1) = v43;
LABEL_336:
        v187[0] = 0;
        if (v43 >= v42 || (v120 = *v43, (v120 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187);
          if (!result)
          {
            return result;
          }

          v120 = v187[0];
          v121 = *(this + 1);
          v42 = *(this + 2);
        }

        else
        {
          v121 = (v43 + 1);
          *(this + 1) = v121;
        }

        *(a1 + 115) = v120 != 0;
        *(a1 + 368) |= 0x40000000u;
        if (v42 - v121 < 2 || *v121 != 129 || v121[1] != 2)
        {
          continue;
        }

        *(this + 1) = v121 + 2;
LABEL_345:
        *v187 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 192) = *v187;
        *(a1 + 368) |= 0x80000000;
        v122 = *(this + 1);
        if (*(this + 4) - v122 < 2 || *v122 != 137 || v122[1] != 2)
        {
          continue;
        }

        *(this + 1) = v122 + 2;
LABEL_350:
        *v187 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 200) = *v187;
        *(a1 + 372) |= 1u;
        v123 = *(this + 1);
        v20 = *(this + 2);
        if (v20 - v123 < 2 || *v123 != 144 || v123[1] != 2)
        {
          continue;
        }

        v21 = (v123 + 2);
        *(this + 1) = v21;
LABEL_355:
        v187[0] = 0;
        if (v21 >= v20 || (v124 = *v21, (v124 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187);
          if (!result)
          {
            return result;
          }

          v124 = v187[0];
          v125 = *(this + 1);
          v20 = *(this + 2);
        }

        else
        {
          v125 = (v21 + 1);
          *(this + 1) = v125;
        }

        *(a1 + 276) = v124 != 0;
        v15 = *(a1 + 372) | 2;
        *(a1 + 372) = v15;
        if (v20 - v125 < 2 || *v125 != 154 || v125[1] != 2)
        {
          continue;
        }

        *(this + 1) = v125 + 2;
LABEL_364:
        *(a1 + 372) = v15 | 4;
        v126 = *(a1 + 208);
        if (!v126)
        {
          operator new();
        }

        v187[0] = 0;
        v127 = *(this + 1);
        if (v127 >= *(this + 2) || *v127 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187))
          {
            return 0;
          }
        }

        else
        {
          v187[0] = *v127;
          *(this + 1) = v127 + 1;
        }

        v128 = *(this + 14);
        v129 = *(this + 15);
        *(this + 14) = v128 + 1;
        if (v128 >= v129)
        {
          return 0;
        }

        v130 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v187[0]);
        if (!sub_100421408(v126, this, v131) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v130);
        v132 = *(this + 14);
        v68 = __OFSUB__(v132, 1);
        v133 = v132 - 1;
        if (v133 < 0 == v68)
        {
          *(this + 14) = v133;
        }

        v134 = *(this + 1);
        if (*(this + 4) - v134 <= 1 || *v134 != 161 || v134[1] != 2)
        {
          continue;
        }

        *(this + 1) = v134 + 2;
LABEL_379:
        *v187 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 216) = *v187;
        *(a1 + 372) |= 8u;
        v135 = *(this + 1);
        v13 = *(this + 2);
        if (v13 - v135 < 2 || *v135 != 168 || v135[1] != 2)
        {
          continue;
        }

        v14 = (v135 + 2);
        *(this + 1) = v14;
LABEL_384:
        v187[0] = 0;
        if (v14 >= v13 || (v136 = *v14, (v136 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187);
          if (!result)
          {
            return result;
          }

          v136 = v187[0];
        }

        else
        {
          *(this + 1) = v14 + 1;
        }

        if (v136 <= 2)
        {
          *(a1 + 372) |= 0x10u;
          *(a1 + 272) = v136;
        }

        v137 = *(this + 1);
        if (*(this + 4) - v137 < 2 || *v137 != 177 || v137[1] != 2)
        {
          continue;
        }

        *(this + 1) = v137 + 2;
LABEL_395:
        *v187 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 224) = *v187;
        *(a1 + 372) |= 0x20u;
        v138 = *(this + 1);
        if (*(this + 4) - v138 < 2 || *v138 != 185 || v138[1] != 2)
        {
          continue;
        }

        *(this + 1) = v138 + 2;
LABEL_400:
        *v187 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 232) = *v187;
        *(a1 + 372) |= 0x40u;
        v139 = *(this + 1);
        if (*(this + 4) - v139 < 2 || *v139 != 193 || v139[1] != 2)
        {
          continue;
        }

        *(this + 1) = v139 + 2;
LABEL_405:
        *v187 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 240) = *v187;
        *(a1 + 372) |= 0x80u;
        v140 = *(this + 1);
        if (*(this + 4) - v140 < 2 || *v140 != 201 || v140[1] != 2)
        {
          continue;
        }

        *(this + 1) = v140 + 2;
LABEL_410:
        *v187 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 248) = *v187;
        *(a1 + 372) |= 0x100u;
        v141 = *(this + 1);
        if (*(this + 4) - v141 < 2 || *v141 != 209 || v141[1] != 2)
        {
          continue;
        }

        *(this + 1) = v141 + 2;
LABEL_415:
        *v187 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 256) = *v187;
        *(a1 + 372) |= 0x200u;
        v142 = *(this + 1);
        v47 = *(this + 2);
        if (v47 - v142 < 2 || *v142 != 216 || v142[1] != 2)
        {
          continue;
        }

        v48 = (v142 + 2);
        *(this + 1) = v48;
LABEL_420:
        v187[0] = 0;
        if (v48 >= v47 || (v143 = *v48, (v143 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187);
          if (!result)
          {
            return result;
          }

          v143 = v187[0];
          v144 = *(this + 1);
          v47 = *(this + 2);
        }

        else
        {
          v144 = (v48 + 1);
          *(this + 1) = v144;
        }

        *(a1 + 277) = v143 != 0;
        *(a1 + 372) |= 0x400u;
        if (v47 - v144 < 2 || *v144 != 225 || v144[1] != 2)
        {
          continue;
        }

        *(this + 1) = v144 + 2;
LABEL_429:
        *v187 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 264) = *v187;
        *(a1 + 372) |= 0x800u;
        v145 = *(this + 1);
        if (*(this + 4) - v145 < 2 || *v145 != 233 || v145[1] != 2)
        {
          continue;
        }

        *(this + 1) = v145 + 2;
LABEL_434:
        *v187 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 280) = *v187;
        *(a1 + 372) |= 0x1000u;
        v146 = *(this + 1);
        if (*(this + 4) - v146 < 2 || *v146 != 242 || v146[1] != 2)
        {
          continue;
        }

        while (1)
        {
          *(this + 1) = v146 + 2;
LABEL_439:
          v147 = *(a1 + 296);
          v148 = *(a1 + 300);
          if (v147 >= v148)
          {
            if (v148 == *(a1 + 304))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 288), v148 + 1);
              v148 = *(a1 + 300);
            }

            *(a1 + 300) = v148 + 1;
            operator new();
          }

          v149 = *(a1 + 288);
          *(a1 + 296) = v147 + 1;
          v150 = *(v149 + 8 * v147);
          v187[0] = 0;
          v151 = *(this + 1);
          if (v151 >= *(this + 2) || *v151 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187))
            {
              return 0;
            }
          }

          else
          {
            v187[0] = *v151;
            *(this + 1) = v151 + 1;
          }

          v152 = *(this + 14);
          v153 = *(this + 15);
          *(this + 14) = v152 + 1;
          if (v152 >= v153)
          {
            return 0;
          }

          v154 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v187[0]);
          if (!sub_1004232F0(v150, this, v155) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v154);
          v156 = *(this + 14);
          v68 = __OFSUB__(v156, 1);
          v157 = v156 - 1;
          if (v157 < 0 == v68)
          {
            *(this + 14) = v157;
          }

          v146 = *(this + 1);
          v55 = *(this + 2);
          if (v55 - v146 <= 1)
          {
            goto LABEL_1;
          }

          v158 = *v146;
          if (v158 == 248)
          {
            break;
          }

          if (v158 != 242 || v146[1] != 2)
          {
            goto LABEL_1;
          }
        }

        if (v146[1] != 2)
        {
          continue;
        }

        v54 = (v146 + 2);
        *(this + 1) = v54;
LABEL_460:
        v187[0] = 0;
        if (v54 >= v55 || (v159 = *v54, (v159 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187);
          if (!result)
          {
            return result;
          }

          v159 = v187[0];
        }

        else
        {
          *(this + 1) = v54 + 1;
        }

        if (v159 <= 2)
        {
          *(a1 + 372) |= 0x4000u;
          *(a1 + 320) = v159;
        }

        v160 = *(this + 1);
        if (*(this + 4) - v160 < 2 || *v160 != 130 || v160[1] != 3)
        {
          continue;
        }

        *(this + 1) = v160 + 2;
LABEL_471:
        *(a1 + 372) |= 0x8000u;
        v161 = *(a1 + 312);
        if (!v161)
        {
          operator new();
        }

        v187[0] = 0;
        v162 = *(this + 1);
        if (v162 >= *(this + 2) || *v162 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187))
          {
            return 0;
          }
        }

        else
        {
          v187[0] = *v162;
          *(this + 1) = v162 + 1;
        }

        v163 = *(this + 14);
        v164 = *(this + 15);
        *(this + 14) = v163 + 1;
        if (v163 >= v164)
        {
          return 0;
        }

        v165 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v187[0]);
        if (!sub_100423970(v161, this, v166) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v165);
        v167 = *(this + 14);
        v68 = __OFSUB__(v167, 1);
        v168 = v167 - 1;
        if (v168 < 0 == v68)
        {
          *(this + 14) = v168;
        }

        v169 = *(this + 1);
        v22 = *(this + 2);
        if (v22 - v169 <= 1 || *v169 != 136 || v169[1] != 3)
        {
          continue;
        }

        v23 = (v169 + 2);
        *(this + 1) = v23;
LABEL_486:
        v187[0] = 0;
        if (v23 >= v22 || (v170 = *v23, (v170 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187);
          if (!result)
          {
            return result;
          }

          v170 = v187[0];
        }

        else
        {
          *(this + 1) = v23 + 1;
        }

        if (v170 <= 2)
        {
          *(a1 + 372) |= 0x10000u;
          *(a1 + 324) = v170;
        }

        v171 = *(this + 1);
        if (*(this + 4) - v171 < 2 || *v171 != 145 || v171[1] != 3)
        {
          continue;
        }

        *(this + 1) = v171 + 2;
LABEL_497:
        *v187 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v187) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 328) = *v187;
        *(a1 + 372) |= 0x20000u;
        v172 = *(this + 1);
        if (*(this + 4) - v172 < 2 || *v172 != 153 || v172[1] != 3)
        {
          continue;
        }

        *(this + 1) = v172 + 2;
LABEL_502:
        *v187 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v187))
        {
          *(a1 + 336) = *v187;
          *(a1 + 372) |= 0x40000u;
          v173 = *(this + 1);
          v56 = *(this + 2);
          if (v56 - v173 >= 2 && *v173 == 160 && v173[1] == 3)
          {
            v57 = (v173 + 2);
            *(this + 1) = v57;
LABEL_507:
            v187[0] = 0;
            if (v57 >= v56 || (v174 = *v57, (v174 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187);
              if (!result)
              {
                return result;
              }

              v174 = v187[0];
            }

            else
            {
              *(this + 1) = v57 + 1;
            }

            if (v174 <= 3)
            {
              *(a1 + 372) |= 0x80000u;
              *(a1 + 344) = v174;
            }

            v175 = *(this + 1);
            v9 = *(this + 2);
            if (v9 - v175 >= 2 && *v175 == 168 && v175[1] == 3)
            {
              v53 = (v175 + 2);
              *(this + 1) = v53;
LABEL_518:
              v187[0] = 0;
              if (v53 >= v9 || (v176 = *v53, (v176 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187);
                if (!result)
                {
                  return result;
                }

                v176 = v187[0];
                v177 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                v177 = (v53 + 1);
                *(this + 1) = v177;
              }

              *(a1 + 278) = v176 != 0;
              *(a1 + 372) |= 0x100000u;
              if (v9 - v177 >= 2 && *v177 == 176 && v177[1] == 3)
              {
                v10 = (v177 + 2);
                *(this + 1) = v10;
LABEL_527:
                v187[0] = 0;
                if (v10 >= v9 || (v178 = *v10, (v178 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187);
                  if (!result)
                  {
                    return result;
                  }

                  v178 = v187[0];
                }

                else
                {
                  *(this + 1) = v10 + 1;
                }

                if (v178 <= 2)
                {
                  *(a1 + 372) |= 0x200000u;
                  *(a1 + 348) = v178;
                }

                v179 = *(this + 1);
                v50 = *(this + 2);
                if (v50 - v179 >= 2 && *v179 == 184 && v179[1] == 3)
                {
                  v51 = (v179 + 2);
                  *(this + 1) = v51;
LABEL_538:
                  v187[0] = 0;
                  if (v51 >= v50 || (v180 = *v51, (v180 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187);
                    if (!result)
                    {
                      return result;
                    }

                    v180 = v187[0];
                  }

                  else
                  {
                    *(this + 1) = v51 + 1;
                  }

                  if (v180 <= 4)
                  {
                    *(a1 + 372) |= 0x400000u;
                    *(a1 + 352) = v180;
                  }

                  v181 = *(this + 1);
                  v11 = *(this + 2);
                  if (v11 - v181 >= 2 && *v181 == 192 && v181[1] == 3)
                  {
                    v52 = (v181 + 2);
                    *(this + 1) = v52;
LABEL_549:
                    v187[0] = 0;
                    if (v52 >= v11 || (v182 = *v52, (v182 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187);
                      if (!result)
                      {
                        return result;
                      }

                      v182 = v187[0];
                      v183 = *(this + 1);
                      v11 = *(this + 2);
                    }

                    else
                    {
                      v183 = (v52 + 1);
                      *(this + 1) = v183;
                    }

                    *(a1 + 279) = v182 != 0;
                    *(a1 + 372) |= 0x800000u;
                    if (v11 - v183 >= 2 && *v183 == 200 && v183[1] == 3)
                    {
                      v12 = (v183 + 2);
                      *(this + 1) = v12;
LABEL_558:
                      v187[0] = 0;
                      if (v12 >= v11 || (v184 = *v12, (v184 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187);
                        if (!result)
                        {
                          return result;
                        }

                        v184 = v187[0];
                        v185 = *(this + 1);
                        v11 = *(this + 2);
                      }

                      else
                      {
                        v185 = (v12 + 1);
                        *(this + 1) = v185;
                      }

                      *(a1 + 356) = v184 != 0;
                      *(a1 + 372) |= 0x1000000u;
                      if (v11 - v185 >= 2 && *v185 == 208 && v185[1] == 3)
                      {
                        v46 = (v185 + 2);
                        *(this + 1) = v46;
LABEL_567:
                        v187[0] = 0;
                        if (v46 >= v11 || (v186 = *v46, (v186 & 0x80000000) != 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v187);
                          if (!result)
                          {
                            return result;
                          }

                          v186 = v187[0];
                        }

                        else
                        {
                          *(this + 1) = v46 + 1;
                        }

                        if (v186 <= 4)
                        {
                          *(a1 + 372) |= 0x2000000u;
                          *(a1 + 360) = v186;
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

        return 0;
      case 3u:
        if (v7 == 1)
        {
          goto LABEL_71;
        }

        goto LABEL_153;
      case 4u:
        if (v7 == 1)
        {
          goto LABEL_75;
        }

        goto LABEL_153;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_79;
        }

        goto LABEL_153;
      case 6u:
        if (v7 == 5)
        {
          goto LABEL_92;
        }

        goto LABEL_153;
      case 7u:
        if (v7 == 5)
        {
          goto LABEL_101;
        }

        goto LABEL_153;
      case 8u:
        if (v7 == 5)
        {
          goto LABEL_105;
        }

        goto LABEL_153;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_153;
        }

        v38 = *(this + 1);
        v25 = *(this + 2);
        goto LABEL_115;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_153;
        }

        v26 = *(this + 1);
        v25 = *(this + 2);
        goto LABEL_162;
      case 0xBu:
        if (v7 == 2)
        {
          goto LABEL_172;
        }

        goto LABEL_153;
      case 0xCu:
        if (v7 == 1)
        {
          goto LABEL_186;
        }

        goto LABEL_153;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_153;
        }

        v24 = *(this + 1);
        v18 = *(this + 2);
        goto LABEL_190;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_153;
        }

        v35 = *(this + 1);
        v18 = *(this + 2);
        goto LABEL_198;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_153;
        }

        v19 = *(this + 1);
        v18 = *(this + 2);
        goto LABEL_206;
      case 0x10u:
        if (v7 != 2)
        {
          goto LABEL_153;
        }

        v27 = *(a1 + 368);
        goto LABEL_215;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_153;
        }

        v17 = *(this + 1);
        v16 = *(this + 2);
        goto LABEL_230;
      case 0x12u:
        if (v7 == 5)
        {
          goto LABEL_241;
        }

        goto LABEL_153;
      case 0x13u:
        if (v7 != 2)
        {
          goto LABEL_153;
        }

        v39 = *(a1 + 368);
        goto LABEL_246;
      case 0x14u:
        if (v7 == 1)
        {
          goto LABEL_261;
        }

        goto LABEL_153;
      case 0x15u:
        if (v7 == 1)
        {
          goto LABEL_266;
        }

        goto LABEL_153;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_153;
        }

        v34 = *(this + 1);
        v33 = *(this + 2);
        goto LABEL_271;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_153;
        }

        v45 = *(this + 1);
        v44 = *(this + 2);
        goto LABEL_282;
      case 0x18u:
        if (v7 != 2)
        {
          goto LABEL_153;
        }

        v49 = *(a1 + 368);
        goto LABEL_291;
      case 0x19u:
        if (v7 == 1)
        {
          goto LABEL_306;
        }

        goto LABEL_153;
      case 0x1Au:
        if (v7 == 1)
        {
          goto LABEL_311;
        }

        goto LABEL_153;
      case 0x1Bu:
        if (v7 == 1)
        {
          goto LABEL_316;
        }

        goto LABEL_153;
      case 0x1Cu:
        if (v7 == 1)
        {
          goto LABEL_321;
        }

        goto LABEL_153;
      case 0x1Du:
        if (v7 == 1)
        {
          goto LABEL_326;
        }

        goto LABEL_153;
      case 0x1Eu:
        if (v7 == 1)
        {
          goto LABEL_331;
        }

        goto LABEL_153;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_153;
        }

        v43 = *(this + 1);
        v42 = *(this + 2);
        goto LABEL_336;
      case 0x20u:
        if (v7 == 1)
        {
          goto LABEL_345;
        }

        goto LABEL_153;
      case 0x21u:
        if (v7 == 1)
        {
          goto LABEL_350;
        }

        goto LABEL_153;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_153;
        }

        v21 = *(this + 1);
        v20 = *(this + 2);
        goto LABEL_355;
      case 0x23u:
        if (v7 != 2)
        {
          goto LABEL_153;
        }

        v15 = *(a1 + 372);
        goto LABEL_364;
      case 0x24u:
        if (v7 == 1)
        {
          goto LABEL_379;
        }

        goto LABEL_153;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_153;
        }

        v14 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_384;
      case 0x26u:
        if (v7 == 1)
        {
          goto LABEL_395;
        }

        goto LABEL_153;
      case 0x27u:
        if (v7 == 1)
        {
          goto LABEL_400;
        }

        goto LABEL_153;
      case 0x28u:
        if (v7 == 1)
        {
          goto LABEL_405;
        }

        goto LABEL_153;
      case 0x29u:
        if (v7 == 1)
        {
          goto LABEL_410;
        }

        goto LABEL_153;
      case 0x2Au:
        if (v7 == 1)
        {
          goto LABEL_415;
        }

        goto LABEL_153;
      case 0x2Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_153;
        }

        v48 = *(this + 1);
        v47 = *(this + 2);
        goto LABEL_420;
      case 0x2Cu:
        if (v7 == 1)
        {
          goto LABEL_429;
        }

        goto LABEL_153;
      case 0x2Du:
        if (v7 == 1)
        {
          goto LABEL_434;
        }

        goto LABEL_153;
      case 0x2Eu:
        if (v7 == 2)
        {
          goto LABEL_439;
        }

        goto LABEL_153;
      case 0x2Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_153;
        }

        v54 = *(this + 1);
        v55 = *(this + 2);
        goto LABEL_460;
      case 0x30u:
        if (v7 == 2)
        {
          goto LABEL_471;
        }

        goto LABEL_153;
      case 0x31u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_153;
        }

        v23 = *(this + 1);
        v22 = *(this + 2);
        goto LABEL_486;
      case 0x32u:
        if (v7 == 1)
        {
          goto LABEL_497;
        }

        goto LABEL_153;
      case 0x33u:
        if (v7 == 1)
        {
          goto LABEL_502;
        }

        goto LABEL_153;
      case 0x34u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_153;
        }

        v57 = *(this + 1);
        v56 = *(this + 2);
        goto LABEL_507;
      case 0x35u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_153;
        }

        v53 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_518;
      case 0x36u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_153;
        }

        v10 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_527;
      case 0x37u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_153;
        }

        v51 = *(this + 1);
        v50 = *(this + 2);
        goto LABEL_538;
      case 0x38u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_153;
        }

        v52 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_549;
      case 0x39u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_153;
        }

        v12 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_558;
      case 0x3Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_153;
        }

        v46 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_567;
      default:
LABEL_153:
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
  }
}

void sub_100426908(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100423C54(a1, lpsrc);
}

void sub_100426990(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    (*(*a1 + 32))(a1);

    sub_100423C54(a1, a2);
  }
}

void sub_100426A14(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 8);
      if (v5 >= 0xE)
      {
        sub_101882604();
      }

      *(a1 + 20) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 20);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      *(a1 + 20) |= 2u;
      *(a1 + 12) = v6;
    }
  }
}

void sub_100426ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100426B04(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636C68;
  if (!qword_102636C68)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636C68;
  }

  return result;
}

uint64_t sub_100426B88(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
    *(result + 12) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_100426BA0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      v15 = 0;
      v7 = *(this + 1);
      if (v7 >= *(this + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v15);
        if (!result)
        {
          return result;
        }

        v8 = v15;
      }

      else
      {
        *(this + 1) = v7 + 1;
      }

      if (v8 <= 0xD)
      {
        *(a1 + 20) |= 1u;
        *(a1 + 8) = v8;
      }

      v11 = *(this + 1);
      v9 = *(this + 2);
      if (v11 < v9 && *v11 == 16)
      {
        v10 = v11 + 1;
        *(this + 1) = v10;
LABEL_24:
        v16 = 0;
        if (v10 >= v9 || (v12 = *v10, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v16);
          if (!result)
          {
            return result;
          }

          v12 = v16;
          v13 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v13 = v10 + 1;
          *(this + 1) = v13;
        }

        *(a1 + 12) = v12 != 0;
        *(a1 + 20) |= 2u;
        if (v13 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_24;
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

void sub_100426D44(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100426A14(a1, lpsrc);
}

double sub_100426DE4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (v5)
  {
    if (*(a2 + 44))
    {
      result = *(a2 + 8);
      *(a1 + 44) |= 1u;
      *(a1 + 8) = result;
      v5 = *(a2 + 44);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 16);
    *(a1 + 44) |= 2u;
    *(a1 + 16) = result;
    v5 = *(a2 + 44);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

LABEL_12:
    result = *(a2 + 24);
    *(a1 + 44) |= 4u;
    *(a1 + 24) = result;
    if ((*(a2 + 44) & 8) == 0)
    {
      return result;
    }

LABEL_8:
    result = *(a2 + 32);
    *(a1 + 44) |= 8u;
    *(a1 + 32) = result;
  }

  return result;
}

void sub_100426ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100426F10(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636C70;
  if (!qword_102636C70)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636C70;
  }

  return result;
}

uint64_t sub_100426F98(uint64_t result)
{
  if (*(result + 44))
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  *(result + 44) = 0;
  return result;
}

uint64_t sub_100426FB4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (v8 == 1)
          {
            goto LABEL_28;
          }

          goto LABEL_25;
        }

        if (v7 != 4 || v8 != 1)
        {
          goto LABEL_25;
        }

LABEL_32:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = v13;
        *(a1 + 44) |= 8u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_25;
      }

      v13 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = v13;
      *(a1 + 44) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
      {
        *(this + 1) = v9 + 1;
LABEL_20:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v13;
        *(a1 + 44) |= 2u;
        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 25)
        {
          *(this + 1) = v10 + 1;
LABEL_28:
          v13 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v13;
          *(a1 + 44) |= 4u;
          v11 = *(this + 1);
          if (v11 < *(this + 2) && *v11 == 33)
          {
            *(this + 1) = v11 + 1;
            goto LABEL_32;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_20;
    }

LABEL_25:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

double sub_1004271D0(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100426DE4(a1, lpsrc);
}

double sub_100427270(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      result = *(a2 + 8);
      *(a1 + 28) |= 1u;
      *(a1 + 8) = result;
      v5 = *(a2 + 28);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 16);
      *(a1 + 28) |= 2u;
      *(a1 + 16) = result;
    }
  }

  return result;
}

void sub_10042731C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100427354(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636C78;
  if (!qword_102636C78)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636C78;
  }

  return result;
}

uint64_t sub_1004273D0(uint64_t result)
{
  if (*(result + 28))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_1004273E4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 != 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v10 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v10) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v10;
        *(a1 + 28) |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v7 != 1)
      {
        break;
      }

      v10 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v10) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = v10;
      *(a1 + 28) |= 1u;
      v8 = *(this + 1);
      if (v8 < *(this + 2) && *v8 == 17)
      {
        *(this + 1) = v8 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

double sub_100427540(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100427270(a1, lpsrc);
}

void sub_1004275E0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 8);
      *(a1 + 28) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 28);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 16);
      *(a1 + 28) |= 2u;
      v7 = *(a1 + 16);
      if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
    }
  }
}

void sub_1004276C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1004276E0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452518;
  sub_1002AC6F0(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

uint64_t sub_100427788(uint64_t result)
{
  v1 = *(result + 28);
  if (v1)
  {
    *(result + 8) = 0;
    if ((v1 & 2) != 0)
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

uint64_t sub_1004277D4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v7 != 1)
      {
        goto LABEL_14;
      }

      v11 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v11) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = v11;
      v8 = *(a1 + 28) | 1;
      *(a1 + 28) = v8;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 18)
      {
        *(this + 1) = v9 + 1;
LABEL_18:
        *(a1 + 28) = v8 | 2;
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
      v8 = *(a1 + 28);
      goto LABEL_18;
    }

LABEL_14:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

void sub_100427968(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1004275E0(a1, lpsrc);
}

double sub_100427A08(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      result = *(a2 + 8);
      *(a1 + 36) |= 1u;
      *(a1 + 8) = result;
      v5 = *(a2 + 36);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 16);
    *(a1 + 36) |= 2u;
    *(a1 + 16) = result;
    if ((*(a2 + 36) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 24);
    *(a1 + 36) |= 4u;
    *(a1 + 24) = result;
  }

  return result;
}

void sub_100427ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100427B14(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636C88;
  if (!qword_102636C88)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636C88;
  }

  return result;
}

uint64_t sub_100427B98(uint64_t result)
{
  if (*(result + 36))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 36) = 0;
  return result;
}

uint64_t sub_100427BB0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v8 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v12) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v12;
        *(a1 + 36) |= 4u;
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

      if (v7 != 1 || v8 != 1)
      {
        goto LABEL_20;
      }

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v12) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = v12;
      *(a1 + 36) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
      {
        *(this + 1) = v9 + 1;
LABEL_15:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v12) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v12;
        *(a1 + 36) |= 2u;
        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 25)
        {
          *(this + 1) = v10 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v8 == 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

double sub_100427D68(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100427A08(a1, lpsrc);
}

double sub_100427E08(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      *(a1 + 36) |= 1u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        v7 = *(qword_102636C90 + 8);
      }

      result = sub_10041ED1C(v6, v7);
      v5 = *(a2 + 36);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 16);
    *(a1 + 36) |= 2u;
    *(a1 + 16) = result;
    if ((*(a2 + 36) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 24);
    *(a1 + 36) |= 4u;
    *(a1 + 24) = result;
  }

  return result;
}

void sub_100427F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100427F50(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102452608;
  if (qword_102636C90 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_100427FE0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100427F50(a1);

  operator delete();
}

uint64_t sub_100428018(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636C90;
  if (!qword_102636C90)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636C90;
  }

  return result;
}

uint64_t sub_10042809C(uint64_t result)
{
  if (*(result + 36))
  {
    if (*(result + 36))
    {
      v1 = *(result + 8);
      if (v1)
      {
        if (*(v1 + 36))
        {
          *(v1 + 8) = 0;
          *(v1 + 16) = 0;
          *(v1 + 24) = 0;
        }

        *(v1 + 36) = 0;
      }
    }

    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 36) = 0;
  return result;
}

uint64_t sub_1004280D0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
      if (TagFallback >> 3 == 3)
      {
        if (v8 == 1)
        {
          goto LABEL_34;
        }

        goto LABEL_18;
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 == 1)
      {
        goto LABEL_30;
      }

LABEL_18:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
      {
        return 0;
      }
    }

    if (v7 != 1 || v8 != 2)
    {
      goto LABEL_18;
    }

    *(a1 + 36) |= 1u;
    v9 = *(a1 + 8);
    if (!v9)
    {
      operator new();
    }

    v21[0] = 0;
    v10 = *(this + 1);
    if (v10 >= *(this + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v21))
      {
        return 0;
      }
    }

    else
    {
      v21[0] = *v10;
      *(this + 1) = v10 + 1;
    }

    v11 = *(this + 14);
    v12 = *(this + 15);
    *(this + 14) = v11 + 1;
    if (v11 >= v12)
    {
      return 0;
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v21[0]);
    if (!sub_10041EEC4(v9, this, v14) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v13);
    v15 = *(this + 14);
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (v17 < 0 == v16)
    {
      *(this + 14) = v17;
    }

    v18 = *(this + 1);
    if (v18 < *(this + 2) && *v18 == 17)
    {
      *(this + 1) = v18 + 1;
LABEL_30:
      *v21 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v21) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = *v21;
      *(a1 + 36) |= 2u;
      v19 = *(this + 1);
      if (v19 < *(this + 2) && *v19 == 25)
      {
        *(this + 1) = v19 + 1;
LABEL_34:
        *v21 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v21) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v21;
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
  }
}

uint64_t sub_100428360(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
    if ((*(v5 + 36) & 4) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  v7 = *(result + 8);
  if (!v7)
  {
    v7 = *(qword_102636C90 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_9:
  v8 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v8, a3);
}

uint64_t sub_1004283FC(uint64_t a1)
{
  v1 = *(a1 + 36);
  if (*(a1 + 36))
  {
    if (v1)
    {
      v1 = *(a1 + 8);
      if (!v1)
      {
        v1 = *(qword_102636C90 + 8);
      }

      v3 = *(v1 + 36);
      if (*(v1 + 36))
      {
        v4 = (v3 << 31 >> 31) & 9;
        if ((v3 & 2) != 0)
        {
          v4 += 9;
        }

        if ((v3 & 4) != 0)
        {
          v3 = v4 + 9;
        }

        else
        {
          v3 = v4;
        }
      }

      *(v1 + 32) = v3;
      v2 = v3 + 2;
      LODWORD(v1) = *(a1 + 36);
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 32) = v1;
  return v1;
}

double sub_100428480(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100427E08(a1, lpsrc);
}

double sub_100428520(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v27);
  }

  v5 = *(a2 + 100);
  if (v5)
  {
    if (v5)
    {
      *(a1 + 100) |= 1u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        v7 = *(qword_102636C98 + 8);
      }

      result = sub_10041ED1C(v6, v7);
      v5 = *(a2 + 100);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_19;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 40);
    *(a1 + 100) |= 2u;
    *(a1 + 40) = v8;
    v5 = *(a2 + 100);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

LABEL_19:
    *(a1 + 100) |= 4u;
    v9 = *(a1 + 16);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 16);
    if (!v10)
    {
      v10 = *(qword_102636C98 + 16);
    }

    sub_100421630(v9, v10);
    v5 = *(a2 + 100);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_29;
    }

LABEL_24:
    *(a1 + 100) |= 8u;
    v11 = *(a1 + 24);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 24);
    if (!v12)
    {
      v12 = *(qword_102636C98 + 24);
    }

    sub_100423C54(v11, v12);
    v5 = *(a2 + 100);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_34;
    }

LABEL_29:
    *(a1 + 100) |= 0x10u;
    v13 = *(a1 + 32);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 32);
    if (!v14)
    {
      v14 = *(qword_102636C98 + 32);
    }

    sub_100426A14(v13, v14);
    v5 = *(a2 + 100);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_35;
    }

LABEL_34:
    v15 = *(a2 + 72);
    *(a1 + 100) |= 0x20u;
    *(a1 + 72) = v15;
    v5 = *(a2 + 100);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

LABEL_35:
    result = *(a2 + 48);
    *(a1 + 100) |= 0x40u;
    *(a1 + 48) = result;
    v5 = *(a2 + 100);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_38;
    }

LABEL_36:
    v16 = *(a2 + 44);
    if (v16 >= 3)
    {
      sub_101882630();
    }

    *(a1 + 100) |= 0x80u;
    *(a1 + 44) = v16;
    v5 = *(a2 + 100);
  }

LABEL_38:
  if ((v5 & 0xFF00) == 0)
  {
    return result;
  }

  if ((v5 & 0x100) != 0)
  {
    *(a1 + 100) |= 0x100u;
    v18 = *(a1 + 56);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 56);
    if (!v19)
    {
      v19 = *(qword_102636C98 + 56);
    }

    result = sub_100426DE4(v18, v19);
    v5 = *(a2 + 100);
    if ((v5 & 0x200) == 0)
    {
LABEL_41:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_57;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_41;
  }

  *(a1 + 100) |= 0x200u;
  v20 = *(a1 + 64);
  if (!v20)
  {
    operator new();
  }

  v21 = *(a2 + 64);
  if (!v21)
  {
    v21 = *(qword_102636C98 + 64);
  }

  result = sub_100427270(v20, v21);
  v5 = *(a2 + 100);
  if ((v5 & 0x400) == 0)
  {
LABEL_42:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_62;
  }

LABEL_57:
  *(a1 + 100) |= 0x400u;
  v22 = *(a1 + 80);
  if (!v22)
  {
    operator new();
  }

  v23 = *(a2 + 80);
  if (!v23)
  {
    v23 = *(qword_102636C98 + 80);
  }

  sub_1004275E0(v22, v23);
  v5 = *(a2 + 100);
  if ((v5 & 0x800) == 0)
  {
LABEL_43:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_64;
  }

LABEL_62:
  v24 = *(a2 + 76);
  if (v24 >= 3)
  {
    sub_10188265C();
  }

  *(a1 + 100) |= 0x800u;
  *(a1 + 76) = v24;
  v5 = *(a2 + 100);
  if ((v5 & 0x1000) == 0)
  {
LABEL_44:
    if ((v5 & 0x2000) == 0)
    {
      return result;
    }

    goto LABEL_45;
  }

LABEL_64:
  *(a1 + 100) |= 0x1000u;
  v25 = *(a1 + 88);
  if (!v25)
  {
    operator new();
  }

  v26 = *(a2 + 88);
  if (!v26)
  {
    v26 = *(qword_102636C98 + 88);
  }

  result = sub_100427A08(v25, v26);
  if ((*(a2 + 100) & 0x2000) != 0)
  {
LABEL_45:
    v17 = *(a2 + 73);
    *(a1 + 100) |= 0x2000u;
    *(a1 + 73) = v17;
  }

  return result;
}

void sub_100428AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100428AFC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452680;
  sub_100220920(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

uint64_t sub_100428B50(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636C98;
  if (!qword_102636C98)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636C98;
  }

  return result;
}

uint64_t sub_100428BF0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 100);
  if (v2)
  {
    if (v2)
    {
      v3 = *(result + 8);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(result + 100);
      }
    }

    *(result + 40) = 0;
    if ((v2 & 4) != 0)
    {
      result = *(result + 16);
      if (result)
      {
        result = sub_100421BA4(result);
        v2 = *(v1 + 100);
      }
    }

    if ((v2 & 8) != 0)
    {
      result = *(v1 + 24);
      if (result)
      {
        result = sub_10042479C(result);
        v2 = *(v1 + 100);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v4 = *(v1 + 32);
      if (v4)
      {
        if (*(v4 + 20))
        {
          *(v4 + 8) = 0;
          *(v4 + 12) = 0;
        }

        *(v4 + 20) = 0;
        v2 = *(v1 + 100);
      }
    }

    *(v1 + 72) = 0;
    *(v1 + 48) = 0;
    *(v1 + 44) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v5 = *(v1 + 56);
      if (v5)
      {
        if (*(v5 + 44))
        {
          *(v5 + 24) = 0u;
          *(v5 + 8) = 0u;
        }

        *(v5 + 44) = 0;
        v2 = *(v1 + 100);
      }
    }

    if ((v2 & 0x200) != 0)
    {
      v6 = *(v1 + 64);
      if (v6)
      {
        if (*(v6 + 28))
        {
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
        }

        *(v6 + 28) = 0;
        v2 = *(v1 + 100);
      }
    }

    if ((v2 & 0x400) != 0)
    {
      result = *(v1 + 80);
      if (result)
      {
        result = sub_100427788(result);
        v2 = *(v1 + 100);
      }
    }

    *(v1 + 76) = 0;
    if ((v2 & 0x1000) != 0)
    {
      v7 = *(v1 + 88);
      if (v7)
      {
        if (*(v7 + 36))
        {
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
          *(v7 + 24) = 0;
        }

        *(v7 + 36) = 0;
      }
    }

    *(v1 + 73) = 0;
  }

  *(v1 + 100) = 0;
  return result;
}

uint64_t sub_100428D2C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    v5 = *(this + 1);
    if (v5 < *(this + 2))
    {
      TagFallback = *v5;
      if ((TagFallback & 0x80000000) == 0)
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
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
    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        *(a1 + 100) |= 1u;
        v8 = *(a1 + 8);
        if (!v8)
        {
          operator new();
        }

        v104[0] = 0;
        v9 = *(this + 1);
        if (v9 >= *(this + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v104))
          {
            return 0;
          }
        }

        else
        {
          v104[0] = *v9;
          *(this + 1) = v9 + 1;
        }

        v21 = *(this + 14);
        v22 = *(this + 15);
        *(this + 14) = v21 + 1;
        if (v21 >= v22)
        {
          return 0;
        }

        v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v104[0]);
        if (!sub_10041EEC4(v8, this, v24) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v23);
        v25 = *(this + 14);
        v26 = __OFSUB__(v25, 1);
        v27 = v25 - 1;
        if (v27 < 0 == v26)
        {
          *(this + 14) = v27;
        }

        v28 = *(this + 1);
        v15 = *(this + 2);
        if (v28 >= v15 || *v28 != 16)
        {
          continue;
        }

        v16 = v28 + 1;
        *(this + 1) = v16;
        goto LABEL_50;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v16 = *(this + 1);
        v15 = *(this + 2);
LABEL_50:
        v104[0] = 0;
        if (v16 >= v15 || (v29 = *v16, (v29 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v104);
          if (!result)
          {
            return result;
          }

          v29 = v104[0];
          v30 = *(this + 1);
          v15 = *(this + 2);
        }

        else
        {
          v30 = v16 + 1;
          *(this + 1) = v30;
        }

        *(a1 + 40) = v29;
        v12 = *(a1 + 100) | 2;
        *(a1 + 100) = v12;
        if (v30 >= v15 || *v30 != 26)
        {
          continue;
        }

        *(this + 1) = v30 + 1;
LABEL_58:
        *(a1 + 100) = v12 | 4;
        v32 = *(a1 + 16);
        if (!v32)
        {
          operator new();
        }

        v104[0] = 0;
        v33 = *(this + 1);
        if (v33 >= *(this + 2) || *v33 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v104))
          {
            return 0;
          }
        }

        else
        {
          v104[0] = *v33;
          *(this + 1) = v33 + 1;
        }

        v34 = *(this + 14);
        v35 = *(this + 15);
        *(this + 14) = v34 + 1;
        if (v34 >= v35)
        {
          return 0;
        }

        v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v104[0]);
        if (!sub_100421C44(v32, this, v37) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v36);
        v38 = *(this + 14);
        v26 = __OFSUB__(v38, 1);
        v39 = v38 - 1;
        if (v39 < 0 == v26)
        {
          *(this + 14) = v39;
        }

        v40 = *(this + 1);
        if (v40 >= *(this + 2) || *v40 != 34)
        {
          continue;
        }

        *(this + 1) = v40 + 1;
LABEL_72:
        *(a1 + 100) |= 8u;
        v41 = *(a1 + 24);
        if (!v41)
        {
          operator new();
        }

        v104[0] = 0;
        v42 = *(this + 1);
        if (v42 >= *(this + 2) || *v42 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v104))
          {
            return 0;
          }
        }

        else
        {
          v104[0] = *v42;
          *(this + 1) = v42 + 1;
        }

        v43 = *(this + 14);
        v44 = *(this + 15);
        *(this + 14) = v43 + 1;
        if (v43 >= v44)
        {
          return 0;
        }

        v45 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v104[0]);
        if (!sub_100424974(v41, this, v46) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v45);
        v47 = *(this + 14);
        v26 = __OFSUB__(v47, 1);
        v48 = v47 - 1;
        if (v48 < 0 == v26)
        {
          *(this + 14) = v48;
        }

        v49 = *(this + 1);
        if (v49 >= *(this + 2) || *v49 != 42)
        {
          continue;
        }

        *(this + 1) = v49 + 1;
LABEL_86:
        *(a1 + 100) |= 0x10u;
        v50 = *(a1 + 32);
        if (!v50)
        {
          operator new();
        }

        v104[0] = 0;
        v51 = *(this + 1);
        if (v51 >= *(this + 2) || *v51 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v104))
          {
            return 0;
          }
        }

        else
        {
          v104[0] = *v51;
          *(this + 1) = v51 + 1;
        }

        v52 = *(this + 14);
        v53 = *(this + 15);
        *(this + 14) = v52 + 1;
        if (v52 >= v53)
        {
          return 0;
        }

        v54 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v104[0]);
        if (!sub_100426BA0(v50, this, v55) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v54);
        v56 = *(this + 14);
        v26 = __OFSUB__(v56, 1);
        v57 = v56 - 1;
        if (v57 < 0 == v26)
        {
          *(this + 14) = v57;
        }

        v58 = *(this + 1);
        v17 = *(this + 2);
        if (v58 >= v17 || *v58 != 48)
        {
          continue;
        }

        v18 = v58 + 1;
        *(this + 1) = v18;
LABEL_100:
        v104[0] = 0;
        if (v18 >= v17 || (v59 = *v18, (v59 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v104);
          if (!result)
          {
            return result;
          }

          v59 = v104[0];
          v60 = *(this + 1);
          v17 = *(this + 2);
        }

        else
        {
          v60 = v18 + 1;
          *(this + 1) = v60;
        }

        *(a1 + 72) = v59 != 0;
        *(a1 + 100) |= 0x20u;
        if (v60 >= v17 || *v60 != 57)
        {
          continue;
        }

        *(this + 1) = v60 + 1;
LABEL_108:
        *v104 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v104) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = *v104;
        *(a1 + 100) |= 0x40u;
        v61 = *(this + 1);
        v13 = *(this + 2);
        if (v61 >= v13 || *v61 != 64)
        {
          continue;
        }

        v14 = v61 + 1;
        *(this + 1) = v14;
LABEL_112:
        v104[0] = 0;
        if (v14 >= v13 || (v62 = *v14, (v62 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v104);
          if (!result)
          {
            return result;
          }

          v62 = v104[0];
        }

        else
        {
          *(this + 1) = v14 + 1;
        }

        if (v62 <= 2)
        {
          *(a1 + 100) |= 0x80u;
          *(a1 + 44) = v62;
        }

        v63 = *(this + 1);
        if (v63 >= *(this + 2) || *v63 != 74)
        {
          continue;
        }

        *(this + 1) = v63 + 1;
LABEL_122:
        *(a1 + 100) |= 0x100u;
        v64 = *(a1 + 56);
        if (!v64)
        {
          operator new();
        }

        v104[0] = 0;
        v65 = *(this + 1);
        if (v65 >= *(this + 2) || *v65 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v104))
          {
            return 0;
          }
        }

        else
        {
          v104[0] = *v65;
          *(this + 1) = v65 + 1;
        }

        v66 = *(this + 14);
        v67 = *(this + 15);
        *(this + 14) = v66 + 1;
        if (v66 >= v67)
        {
          return 0;
        }

        v68 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v104[0]);
        if (!sub_100426FB4(v64, this, v69) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v68);
        v70 = *(this + 14);
        v26 = __OFSUB__(v70, 1);
        v71 = v70 - 1;
        if (v71 < 0 == v26)
        {
          *(this + 14) = v71;
        }

        v72 = *(this + 1);
        if (v72 >= *(this + 2) || *v72 != 82)
        {
          continue;
        }

        *(this + 1) = v72 + 1;
LABEL_136:
        *(a1 + 100) |= 0x200u;
        v73 = *(a1 + 64);
        if (!v73)
        {
          operator new();
        }

        v104[0] = 0;
        v74 = *(this + 1);
        if (v74 >= *(this + 2) || *v74 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v104))
          {
            return 0;
          }
        }

        else
        {
          v104[0] = *v74;
          *(this + 1) = v74 + 1;
        }

        v75 = *(this + 14);
        v76 = *(this + 15);
        *(this + 14) = v75 + 1;
        if (v75 >= v76)
        {
          return 0;
        }

        v77 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v104[0]);
        if (!sub_1004273E4(v73, this, v78) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v77);
        v79 = *(this + 14);
        v26 = __OFSUB__(v79, 1);
        v80 = v79 - 1;
        if (v80 < 0 == v26)
        {
          *(this + 14) = v80;
        }

        v81 = *(this + 1);
        if (v81 >= *(this + 2) || *v81 != 90)
        {
          continue;
        }

        *(this + 1) = v81 + 1;
LABEL_150:
        *(a1 + 100) |= 0x400u;
        v82 = *(a1 + 80);
        if (!v82)
        {
          operator new();
        }

        v104[0] = 0;
        v83 = *(this + 1);
        if (v83 >= *(this + 2) || *v83 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v104))
          {
            return 0;
          }
        }

        else
        {
          v104[0] = *v83;
          *(this + 1) = v83 + 1;
        }

        v84 = *(this + 14);
        v85 = *(this + 15);
        *(this + 14) = v84 + 1;
        if (v84 >= v85)
        {
          return 0;
        }

        v86 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v104[0]);
        if (!sub_1004277D4(v82, this, v87) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v86);
        v88 = *(this + 14);
        v26 = __OFSUB__(v88, 1);
        v89 = v88 - 1;
        if (v89 < 0 == v26)
        {
          *(this + 14) = v89;
        }

        v90 = *(this + 1);
        v10 = *(this + 2);
        if (v90 >= v10 || *v90 != 96)
        {
          continue;
        }

        v11 = v90 + 1;
        *(this + 1) = v11;
LABEL_164:
        v104[0] = 0;
        if (v11 >= v10 || (v91 = *v11, (v91 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v104);
          if (!result)
          {
            return result;
          }

          v91 = v104[0];
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (v91 <= 2)
        {
          *(a1 + 100) |= 0x800u;
          *(a1 + 76) = v91;
        }

        v92 = *(this + 1);
        if (v92 >= *(this + 2) || *v92 != 106)
        {
          continue;
        }

        *(this + 1) = v92 + 1;
LABEL_174:
        *(a1 + 100) |= 0x1000u;
        v93 = *(a1 + 88);
        if (!v93)
        {
          operator new();
        }

        v104[0] = 0;
        v94 = *(this + 1);
        if (v94 >= *(this + 2) || *v94 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v104))
          {
            return 0;
          }
        }

        else
        {
          v104[0] = *v94;
          *(this + 1) = v94 + 1;
        }

        v95 = *(this + 14);
        v96 = *(this + 15);
        *(this + 14) = v95 + 1;
        if (v95 >= v96)
        {
          return 0;
        }

        v97 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v104[0]);
        if (!sub_100427BB0(v93, this, v98) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v97);
        v99 = *(this + 14);
        v26 = __OFSUB__(v99, 1);
        v100 = v99 - 1;
        if (v100 < 0 == v26)
        {
          *(this + 14) = v100;
        }

        v101 = *(this + 1);
        v19 = *(this + 2);
        if (v101 < v19 && *v101 == 112)
        {
          v20 = v101 + 1;
          *(this + 1) = v20;
LABEL_188:
          v104[0] = 0;
          if (v20 >= v19 || (v102 = *v20, (v102 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v104);
            if (!result)
            {
              return result;
            }

            v102 = v104[0];
            v103 = *(this + 1);
            v19 = *(this + 2);
          }

          else
          {
            v103 = v20 + 1;
            *(this + 1) = v103;
          }

          *(a1 + 73) = v102 != 0;
          *(a1 + 100) |= 0x2000u;
          if (v103 == v19 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }

        break;
      case 3u:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        v12 = *(a1 + 100);
        goto LABEL_58;
      case 4u:
        if (v7 == 2)
        {
          goto LABEL_72;
        }

        goto LABEL_38;
      case 5u:
        if (v7 == 2)
        {
          goto LABEL_86;
        }

        goto LABEL_38;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v18 = *(this + 1);
        v17 = *(this + 2);
        goto LABEL_100;
      case 7u:
        if (v7 == 1)
        {
          goto LABEL_108;
        }

        goto LABEL_38;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v14 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_112;
      case 9u:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        goto LABEL_122;
      case 0xAu:
        if (v7 == 2)
        {
          goto LABEL_136;
        }

        goto LABEL_38;
      case 0xBu:
        if (v7 == 2)
        {
          goto LABEL_150;
        }

        goto LABEL_38;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_164;
      case 0xDu:
        if (v7 == 2)
        {
          goto LABEL_174;
        }

        goto LABEL_38;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v20 = *(this + 1);
        v19 = *(this + 2);
        goto LABEL_188;
      default:
LABEL_38:
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
  }
}

double sub_100429A38(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100428520(a1, lpsrc);
}

void sub_100429AD8(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2), *(a2 + 16) + a1[4]);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
      }

      v6 = *(*(a2 + 8) + 8 * v5);
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
      sub_100421630(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 16);
    }

    while (v5 < v4);
  }

  sub_10042A1E8((a1 + 8), a2 + 32);
}