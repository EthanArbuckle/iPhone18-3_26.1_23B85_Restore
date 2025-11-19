void sub_100429CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100429CF4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636CA0;
  if (!qword_102636CA0)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636CA0;
  }

  return result;
}

uint64_t sub_100429D80(uint64_t a1)
{
  sub_1003C79DC(a1 + 8);
  result = sub_1003C79DC(a1 + 32);
  *(a1 + 60) = 0;
  return result;
}

uint64_t sub_100429DB4(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_1:
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
          goto LABEL_30;
        }

        while (1)
        {
          v22 = a1[11];
          v23 = a1[10];
          if (v23 >= v22)
          {
            if (v22 == a1[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 8), v22 + 1);
              v22 = a1[11];
            }

            a1[11] = v22 + 1;
            sub_10030E448();
          }

          v24 = *(a1 + 4);
          a1[10] = v23 + 1;
          v25 = *(v24 + 8 * v23);
          v36 = 0;
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v36))
            {
              return 0;
            }
          }

          else
          {
            v36 = *v26;
            *(this + 1) = v26 + 1;
          }

          v27 = *(this + 14);
          v28 = *(this + 15);
          *(this + 14) = v27 + 1;
          if (v27 >= v28)
          {
            return 0;
          }

          v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v36);
          if (!sub_100424974(v25, this, v30) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v29);
          v31 = *(this + 14);
          v18 = __OFSUB__(v31, 1);
          v32 = v31 - 1;
          if (v32 < 0 == v18)
          {
            *(this + 14) = v32;
          }

          v20 = *(this + 1);
          v33 = *(this + 2);
          if (v20 >= v33 || *v20 != 18)
          {
            break;
          }

LABEL_49:
          *(this + 1) = v20 + 1;
        }

        if (v20 == v33 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v7 != 2)
      {
        break;
      }

      while (1)
      {
        v8 = a1[5];
        v9 = a1[4];
        if (v9 >= v8)
        {
          if (v8 == a1[6])
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2), v8 + 1);
            v8 = a1[5];
          }

          a1[5] = v8 + 1;
          operator new();
        }

        v10 = *(a1 + 1);
        a1[4] = v9 + 1;
        v11 = *(v10 + 8 * v9);
        v35 = 0;
        v12 = *(this + 1);
        if (v12 >= *(this + 2) || *v12 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35))
          {
            return 0;
          }
        }

        else
        {
          v35 = *v12;
          *(this + 1) = v12 + 1;
        }

        v13 = *(this + 14);
        v14 = *(this + 15);
        *(this + 14) = v13 + 1;
        if (v13 >= v14)
        {
          return 0;
        }

        v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v35);
        if (!sub_100421C44(v11, this, v16) || *(this + 36) != 1)
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

        v20 = *(this + 1);
        if (v20 >= *(this + 2))
        {
          break;
        }

        v21 = *v20;
        if (v21 != 10)
        {
          if (v21 != 18)
          {
            goto LABEL_1;
          }

          goto LABEL_49;
        }

        *(this + 1) = v20 + 1;
      }
    }

LABEL_30:
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

void sub_10042A160(_DWORD *a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100429AD8(a1, lpsrc);
}

void sub_10042A1E8(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  LODWORD(v4) = *(a2 + 8);
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

      v6 = *(*a2 + 8 * v5);
      v7 = *(a1 + 3);
      v8 = *(a1 + 2);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v7 + 1);
          v7 = *(a1 + 3);
        }

        *(a1 + 3) = v7 + 1;
        sub_10030E448();
      }

      v9 = *a1;
      *(a1 + 2) = v8 + 1;
      sub_100423C54(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }
}

void sub_10042A310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10042A340(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 8);
      if (v5 >= 3)
      {
        sub_101882688();
      }

      *(a1 + 28) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 28);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 16);
      *(a1 + 28) |= 2u;
      *(a1 + 16) = v6;
      v4 = *(a2 + 28);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 12);
      if (v7 >= 5)
      {
        sub_1018826B4();
      }

      *(a1 + 28) |= 4u;
      *(a1 + 12) = v7;
      v4 = *(a2 + 28);
    }

    if ((v4 & 8) != 0)
    {
      v8 = *(a2 + 20);
      *(a1 + 28) |= 8u;
      *(a1 + 20) = v8;
      v4 = *(a2 + 28);
    }

    if ((v4 & 0x10) != 0)
    {
      v9 = *(a2 + 17);
      *(a1 + 28) |= 0x10u;
      *(a1 + 17) = v9;
    }
  }
}

void sub_10042A458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10042A490(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636CA8;
  if (!qword_102636CA8)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636CA8;
  }

  return result;
}

uint64_t sub_10042A518(uint64_t result)
{
  if (*(result + 28))
  {
    *(result + 8) = dword_100000000;
    *(result + 16) = 0;
    *(result + 20) = 0;
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_10042A538(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

          v11 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_34;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v26 = 0;
        v14 = *(this + 1);
        if (v14 >= *(this + 2) || (v15 = *v14, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26);
          if (!result)
          {
            return result;
          }

          v15 = v26;
        }

        else
        {
          *(this + 1) = v14 + 1;
        }

        if (v15 <= 2)
        {
          *(a1 + 28) |= 1u;
          *(a1 + 8) = v15;
        }

        v16 = *(this + 1);
        v10 = *(this + 2);
        if (v16 < v10 && *v16 == 16)
        {
          v11 = v16 + 1;
          *(this + 1) = v11;
LABEL_34:
          v26 = 0;
          if (v11 >= v10 || (v17 = *v11, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26);
            if (!result)
            {
              return result;
            }

            v17 = v26;
            v18 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            v18 = v11 + 1;
            *(this + 1) = v18;
          }

          *(a1 + 16) = v17 != 0;
          *(a1 + 28) |= 2u;
          if (v18 < v10 && *v18 == 24)
          {
            v12 = v18 + 1;
            *(this + 1) = v12;
LABEL_42:
            v26 = 0;
            if (v12 >= v10 || (v19 = *v12, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26);
              if (!result)
              {
                return result;
              }

              v19 = v26;
            }

            else
            {
              *(this + 1) = v12 + 1;
            }

            if (v19 <= 4)
            {
              *(a1 + 28) |= 4u;
              *(a1 + 12) = v19;
            }

            v20 = *(this + 1);
            v8 = *(this + 2);
            if (v20 < v8 && *v20 == 32)
            {
              v13 = v20 + 1;
              *(this + 1) = v13;
              goto LABEL_52;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v12 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_42;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v13 = *(this + 1);
      v8 = *(this + 2);
LABEL_52:
      if (v13 >= v8 || (v21 = *v13, v21 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
        if (!result)
        {
          return result;
        }

        v22 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 20) = v21;
        v22 = v13 + 1;
        *(this + 1) = v22;
      }

      *(a1 + 28) |= 8u;
      if (v22 < v8 && *v22 == 40)
      {
        v9 = v22 + 1;
        *(this + 1) = v9;
LABEL_60:
        v26 = 0;
        if (v9 >= v8 || (v23 = *v9, (v23 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26);
          if (!result)
          {
            return result;
          }

          v23 = v26;
          v24 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v24 = v9 + 1;
          *(this + 1) = v24;
        }

        *(a1 + 17) = v23 != 0;
        *(a1 + 28) |= 0x10u;
        if (v24 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_60;
    }

LABEL_21:
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

void sub_10042A854(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10042A340(a1, lpsrc);
}

void sub_10042A8F4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 8);
    *(a1 + 16) |= 1u;
    *(a1 + 8) = v4;
  }
}

void sub_10042A980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10042A9B8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024527E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10042AA0C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636CB0;
  if (!qword_102636CB0)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636CB0;
  }

  return result;
}

uint64_t sub_10042AA8C(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_10042AAA0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
      v8 = *(this + 1);
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v12);
        if (!result)
        {
          return result;
        }

        v9 = v12;
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
      if (v10 == v7 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

uint64_t sub_10042ABB8(uint64_t result, BOOL a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
  }

  return result;
}

uint64_t sub_10042ABD4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = 2 * (*(a1 + 16) & 1u);
  }

  else
  {
    v1 = 0;
  }

  *(a1 + 12) = v1;
  return v1;
}

void sub_10042ABF0(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10042A8F4(a1, lpsrc);
}

double sub_10042AC90(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 24);
  if (v5)
  {
    if (*(a2 + 24))
    {
      v6 = *(a2 + 16);
      if (v6 >= 3)
      {
        sub_1018826E0();
      }

      *(a1 + 24) |= 1u;
      *(a1 + 16) = v6;
      v5 = *(a2 + 24);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 8);
      *(a1 + 24) |= 2u;
      *(a1 + 8) = result;
    }
  }

  return result;
}

void sub_10042AD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10042AD80(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452860;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10042ADD4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636CB8;
  if (!qword_102636CB8)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636CB8;
  }

  return result;
}

uint64_t sub_10042AE54(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 16) = 0;
    *(result + 8) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_10042AE6C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v13 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v13);
        if (!result)
        {
          return result;
        }

        v9 = v13;
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
      if (v11 < *(this + 2) && *v11 == 17)
      {
        *(this + 1) = v11 + 1;
LABEL_23:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v12) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = v12;
        *(a1 + 24) |= 2u;
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
      goto LABEL_23;
    }

LABEL_13:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_10042AFE8(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v7, a3);
  }

  return result;
}

uint64_t sub_10042B054(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 24);
  if (v3)
  {
    if (*(a1 + 24))
    {
      v6 = *(a1 + 16);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(a1 + 24);
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
      result = v4 + 9;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  *(a1 + 20) = result;
  return result;
}

double sub_10042B0CC(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10042AC90(a1, lpsrc);
}

void sub_10042B178(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v23);
  }

  v4 = *(a2 + 92);
  if (!v4)
  {
    goto LABEL_21;
  }

  if (v4)
  {
    v5 = *(a2 + 8);
    if ((sub_1000D1A24(v5) & 1) == 0)
    {
      sub_10188270C();
    }

    *(a1 + 92) |= 1u;
    *(a1 + 8) = v5;
    v4 = *(a2 + 92);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(a2 + 12);
    if (v6 >= 4)
    {
      sub_101882738();
    }

    *(a1 + 92) |= 2u;
    *(a1 + 12) = v6;
    v4 = *(a2 + 92);
  }

  if ((v4 & 4) != 0)
  {
    v7 = *(a2 + 16);
    if (v7 >= 3)
    {
      sub_101882764();
    }

    *(a1 + 92) |= 4u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 92);
  }

  if ((v4 & 8) != 0)
  {
    v8 = *(a2 + 20);
    if (v8 >= 4)
    {
      sub_101882790();
    }

    *(a1 + 92) |= 8u;
    *(a1 + 20) = v8;
    v4 = *(a2 + 92);
  }

  if ((v4 & 0x10) == 0)
  {
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_18;
    }

LABEL_53:
    v21 = *(a2 + 24);
    *(a1 + 92) |= 0x20u;
    *(a1 + 24) = v21;
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

    goto LABEL_54;
  }

  v20 = *(a2 + 28);
  *(a1 + 92) |= 0x10u;
  *(a1 + 28) = v20;
  v4 = *(a2 + 92);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_18:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_54:
  v22 = *(a2 + 32);
  *(a1 + 92) |= 0x40u;
  *(a1 + 32) = v22;
  v4 = *(a2 + 92);
  if ((v4 & 0x80) != 0)
  {
LABEL_20:
    v9 = *(a2 + 29);
    *(a1 + 92) |= 0x80u;
    *(a1 + 29) = v9;
    v4 = *(a2 + 92);
  }

LABEL_21:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v10 = *(a2 + 48);
    if (v10 >= 4)
    {
      sub_1018827BC();
    }

    *(a1 + 92) |= 0x100u;
    *(a1 + 48) = v10;
    v4 = *(a2 + 92);
  }

  if ((v4 & 0x200) != 0)
  {
    v11 = *(a2 + 40);
    *(a1 + 92) |= 0x200u;
    *(a1 + 40) = v11;
    v4 = *(a2 + 92);
    if ((v4 & 0x400) == 0)
    {
LABEL_27:
      if ((v4 & 0x800) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_35;
    }
  }

  else if ((v4 & 0x400) == 0)
  {
    goto LABEL_27;
  }

  v12 = *(a2 + 56);
  *(a1 + 92) |= 0x400u;
  *(a1 + 56) = v12;
  v4 = *(a2 + 92);
  if ((v4 & 0x800) == 0)
  {
LABEL_28:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_37;
  }

LABEL_35:
  v13 = *(a2 + 52);
  if ((sub_1000D1A24(v13) & 1) == 0)
  {
    sub_1018827E8();
  }

  *(a1 + 92) |= 0x800u;
  *(a1 + 52) = v13;
  v4 = *(a2 + 92);
  if ((v4 & 0x1000) == 0)
  {
LABEL_29:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_39;
  }

LABEL_37:
  v14 = *(a2 + 72);
  if (v14 >= 4)
  {
    sub_101882814();
  }

  *(a1 + 92) |= 0x1000u;
  *(a1 + 72) = v14;
  v4 = *(a2 + 92);
  if ((v4 & 0x2000) == 0)
  {
LABEL_30:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_44;
  }

LABEL_39:
  *(a1 + 92) |= 0x2000u;
  v15 = *(a1 + 64);
  if (!v15)
  {
    operator new();
  }

  v16 = *(a2 + 64);
  if (!v16)
  {
    v16 = *(qword_102636CC0 + 64);
  }

  sub_10041ED1C(v15, v16);
  v4 = *(a2 + 92);
  if ((v4 & 0x4000) == 0)
  {
LABEL_31:
    if ((v4 & 0x8000) == 0)
    {
      return;
    }

    goto LABEL_49;
  }

LABEL_44:
  *(a1 + 92) |= 0x4000u;
  v17 = *(a1 + 80);
  if (!v17)
  {
    operator new();
  }

  v18 = *(a2 + 80);
  if (!v18)
  {
    v18 = *(qword_102636CC0 + 80);
  }

  sub_10041ED1C(v17, v18);
  if ((*(a2 + 92) & 0x8000) != 0)
  {
LABEL_49:
    v19 = *(a2 + 76);
    if (v19 >= 6)
    {
      sub_101882840();
    }

    *(a1 + 92) |= 0x8000u;
    *(a1 + 76) = v19;
  }
}

void sub_10042B50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10042B524(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024528D8;
  sub_1000DB298(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

uint64_t sub_10042B578(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636CC0;
  if (!qword_102636CC0)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636CC0;
  }

  return result;
}

uint64_t sub_10042B604(uint64_t result)
{
  v1 = *(result + 92);
  if (v1)
  {
    *(result + 32) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 22) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 72) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 40) = 0;
    if ((v1 & 0x2000) != 0)
    {
      v2 = *(result + 64);
      if (v2)
      {
        if (*(v2 + 36))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 36) = 0;
        v1 = *(result + 92);
      }
    }

    if ((v1 & 0x4000) != 0)
    {
      v3 = *(result + 80);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
      }
    }

    *(result + 76) = 0;
  }

  *(result + 92) = 0;
  return result;
}

uint64_t sub_10042B680(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          goto LABEL_40;
        }

        v69[0] = 0;
        v8 = *(this + 1);
        if (v8 >= *(this + 2) || (v9 = *v8, v9 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v69);
          if (!result)
          {
            return result;
          }

          v9 = v69[0];
        }

        else
        {
          *(this + 1) = v8 + 1;
        }

        if (sub_1000D1A24(v9))
        {
          *(a1 + 92) |= 1u;
          *(a1 + 8) = v9;
        }

        v28 = *(this + 1);
        v24 = *(this + 2);
        if (v28 < v24 && *v28 == 16)
        {
          v25 = v28 + 1;
          *(this + 1) = v25;
          goto LABEL_51;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v25 = *(this + 1);
        v24 = *(this + 2);
LABEL_51:
        v69[0] = 0;
        if (v25 >= v24 || (v29 = *v25, (v29 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v69);
          if (!result)
          {
            return result;
          }

          v29 = v69[0];
        }

        else
        {
          *(this + 1) = v25 + 1;
        }

        if (v29 <= 3)
        {
          *(a1 + 92) |= 2u;
          *(a1 + 12) = v29;
        }

        v30 = *(this + 1);
        v16 = *(this + 2);
        if (v30 >= v16 || *v30 != 24)
        {
          continue;
        }

        v17 = v30 + 1;
        *(this + 1) = v17;
LABEL_61:
        v69[0] = 0;
        if (v17 >= v16 || (v31 = *v17, (v31 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v69);
          if (!result)
          {
            return result;
          }

          v31 = v69[0];
        }

        else
        {
          *(this + 1) = v17 + 1;
        }

        if (v31 <= 2)
        {
          *(a1 + 92) |= 4u;
          *(a1 + 16) = v31;
        }

        v32 = *(this + 1);
        v20 = *(this + 2);
        if (v32 >= v20 || *v32 != 32)
        {
          continue;
        }

        v21 = v32 + 1;
        *(this + 1) = v21;
LABEL_71:
        v69[0] = 0;
        if (v21 >= v20 || (v33 = *v21, (v33 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v69);
          if (!result)
          {
            return result;
          }

          v33 = v69[0];
        }

        else
        {
          *(this + 1) = v21 + 1;
        }

        if (v33 <= 3)
        {
          *(a1 + 92) |= 8u;
          *(a1 + 20) = v33;
        }

        v34 = *(this + 1);
        v12 = *(this + 2);
        if (v34 >= v12 || *v34 != 40)
        {
          continue;
        }

        v13 = v34 + 1;
        *(this + 1) = v13;
LABEL_81:
        v69[0] = 0;
        if (v13 >= v12 || (v35 = *v13, (v35 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v69);
          if (!result)
          {
            return result;
          }

          v35 = v69[0];
          v36 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          v36 = v13 + 1;
          *(this + 1) = v36;
        }

        *(a1 + 28) = v35 != 0;
        *(a1 + 92) |= 0x10u;
        if (v36 >= v12 || *v36 != 53)
        {
          continue;
        }

        *(this + 1) = v36 + 1;
LABEL_89:
        v69[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v69) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v69[0];
        *(a1 + 92) |= 0x20u;
        v37 = *(this + 1);
        if (v37 >= *(this + 2) || *v37 != 57)
        {
          continue;
        }

        *(this + 1) = v37 + 1;
LABEL_93:
        *v69 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v69) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v69;
        *(a1 + 92) |= 0x40u;
        v38 = *(this + 1);
        v22 = *(this + 2);
        if (v38 >= v22 || *v38 != 64)
        {
          continue;
        }

        v23 = v38 + 1;
        *(this + 1) = v23;
LABEL_97:
        v69[0] = 0;
        if (v23 >= v22 || (v39 = *v23, (v39 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v69);
          if (!result)
          {
            return result;
          }

          v39 = v69[0];
          v40 = *(this + 1);
          v22 = *(this + 2);
        }

        else
        {
          v40 = v23 + 1;
          *(this + 1) = v40;
        }

        *(a1 + 29) = v39 != 0;
        *(a1 + 92) |= 0x80u;
        if (v40 >= v22 || *v40 != 72)
        {
          continue;
        }

        v26 = v40 + 1;
        *(this + 1) = v26;
LABEL_105:
        v69[0] = 0;
        if (v26 >= v22 || (v41 = *v26, (v41 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v69);
          if (!result)
          {
            return result;
          }

          v41 = v69[0];
        }

        else
        {
          *(this + 1) = v26 + 1;
        }

        if (v41 <= 3)
        {
          *(a1 + 92) |= 0x100u;
          *(a1 + 48) = v41;
        }

        v42 = *(this + 1);
        if (v42 >= *(this + 2) || *v42 != 81)
        {
          continue;
        }

        *(this + 1) = v42 + 1;
LABEL_115:
        *v69 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v69) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = *v69;
        *(a1 + 92) |= 0x200u;
        v43 = *(this + 1);
        if (v43 >= *(this + 2) || *v43 != 89)
        {
          continue;
        }

        *(this + 1) = v43 + 1;
LABEL_119:
        *v69 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v69) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 56) = *v69;
        *(a1 + 92) |= 0x400u;
        v44 = *(this + 1);
        v10 = *(this + 2);
        if (v44 >= v10 || *v44 != 96)
        {
          continue;
        }

        v11 = v44 + 1;
        *(this + 1) = v11;
LABEL_123:
        v69[0] = 0;
        if (v11 >= v10 || (v45 = *v11, v45 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v69);
          if (!result)
          {
            return result;
          }

          v45 = v69[0];
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (sub_1000D1A24(v45))
        {
          *(a1 + 92) |= 0x800u;
          *(a1 + 52) = v45;
        }

        v46 = *(this + 1);
        v14 = *(this + 2);
        if (v46 >= v14 || *v46 != 104)
        {
          continue;
        }

        v15 = v46 + 1;
        *(this + 1) = v15;
LABEL_133:
        v69[0] = 0;
        if (v15 >= v14 || (v47 = *v15, (v47 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v69);
          if (!result)
          {
            return result;
          }

          v47 = v69[0];
        }

        else
        {
          *(this + 1) = v15 + 1;
        }

        if (v47 <= 3)
        {
          *(a1 + 92) |= 0x1000u;
          *(a1 + 72) = v47;
        }

        v48 = *(this + 1);
        if (v48 >= *(this + 2) || *v48 != 114)
        {
          continue;
        }

        *(this + 1) = v48 + 1;
LABEL_143:
        *(a1 + 92) |= 0x2000u;
        v49 = *(a1 + 64);
        if (!v49)
        {
          operator new();
        }

        v69[0] = 0;
        v50 = *(this + 1);
        if (v50 >= *(this + 2) || *v50 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v69))
          {
            return 0;
          }
        }

        else
        {
          v69[0] = *v50;
          *(this + 1) = v50 + 1;
        }

        v51 = *(this + 14);
        v52 = *(this + 15);
        *(this + 14) = v51 + 1;
        if (v51 >= v52)
        {
          return 0;
        }

        v53 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v69[0]);
        if (!sub_10041EEC4(v49, this, v54) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v53);
        v55 = *(this + 14);
        v56 = __OFSUB__(v55, 1);
        v57 = v55 - 1;
        if (v57 < 0 == v56)
        {
          *(this + 14) = v57;
        }

        v58 = *(this + 1);
        if (v58 >= *(this + 2) || *v58 != 122)
        {
          continue;
        }

        *(this + 1) = v58 + 1;
LABEL_157:
        *(a1 + 92) |= 0x4000u;
        v59 = *(a1 + 80);
        if (!v59)
        {
          operator new();
        }

        v69[0] = 0;
        v60 = *(this + 1);
        if (v60 >= *(this + 2) || *v60 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v69))
          {
            return 0;
          }
        }

        else
        {
          v69[0] = *v60;
          *(this + 1) = v60 + 1;
        }

        v61 = *(this + 14);
        v62 = *(this + 15);
        *(this + 14) = v61 + 1;
        if (v61 < v62)
        {
          v63 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v69[0]);
          if (sub_10041EEC4(v59, this, v64))
          {
            if (*(this + 36) == 1)
            {
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v63);
              v65 = *(this + 14);
              v56 = __OFSUB__(v65, 1);
              v66 = v65 - 1;
              if (v66 < 0 == v56)
              {
                *(this + 14) = v66;
              }

              v67 = *(this + 1);
              v18 = *(this + 2);
              if (v18 - v67 > 1 && *v67 == 128 && v67[1] == 1)
              {
                v19 = (v67 + 2);
                *(this + 1) = v19;
LABEL_172:
                v69[0] = 0;
                if (v19 >= v18 || (v68 = *v19, (v68 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v69);
                  if (!result)
                  {
                    return result;
                  }

                  v68 = v69[0];
                }

                else
                {
                  *(this + 1) = v19 + 1;
                }

                if (v68 <= 5)
                {
                  *(a1 + 92) |= 0x8000u;
                  *(a1 + 76) = v68;
                }

                if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
                {
                  *(this + 8) = 0;
                  result = 1;
                  *(this + 36) = 1;
                  return result;
                }
              }

              continue;
            }
          }
        }

        return 0;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v17 = *(this + 1);
        v16 = *(this + 2);
        goto LABEL_61;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v21 = *(this + 1);
        v20 = *(this + 2);
        goto LABEL_71;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_81;
      case 6u:
        if (v7 == 5)
        {
          goto LABEL_89;
        }

        goto LABEL_40;
      case 7u:
        if (v7 == 1)
        {
          goto LABEL_93;
        }

        goto LABEL_40;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v23 = *(this + 1);
        v22 = *(this + 2);
        goto LABEL_97;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v26 = *(this + 1);
        v22 = *(this + 2);
        goto LABEL_105;
      case 0xAu:
        if (v7 == 1)
        {
          goto LABEL_115;
        }

        goto LABEL_40;
      case 0xBu:
        if (v7 == 1)
        {
          goto LABEL_119;
        }

        goto LABEL_40;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_123;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v15 = *(this + 1);
        v14 = *(this + 2);
        goto LABEL_133;
      case 0xEu:
        if (v7 == 2)
        {
          goto LABEL_143;
        }

        goto LABEL_40;
      case 0xFu:
        if (v7 == 2)
        {
          goto LABEL_157;
        }

        goto LABEL_40;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v19 = *(this + 1);
        v18 = *(this + 2);
        goto LABEL_172;
      default:
LABEL_40:
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

void sub_10042BFA8(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10042B178(a1, lpsrc);
}

void sub_10042C048(uint64_t a1, uint64_t a2)
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
      *(a1 + 32) |= 1u;
      v5 = *(a1 + 8);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 8);
      if (!v6)
      {
        v6 = *(qword_102636CC8 + 8);
      }

      sub_10041ED1C(v5, v6);
      v4 = *(a2 + 32);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 24);
    *(a1 + 32) |= 2u;
    *(a1 + 24) = v7;
    if ((*(a2 + 32) & 4) == 0)
    {
      return;
    }

LABEL_14:
    *(a1 + 32) |= 4u;
    v8 = *(a1 + 16);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 16);
    if (!v9)
    {
      v9 = *(qword_102636CC8 + 16);
    }

    sub_10042B178(v8, v9);
  }
}

void sub_10042C1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_10042C1F4(void *result)
{
  if (qword_102636CC8 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[2];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_10042C294(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452950;
  sub_10042C1F4(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10042C2E8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452950;
  sub_10042C1F4(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10042C350(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636CC8;
  if (!qword_102636CC8)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636CC8;
  }

  return result;
}

uint64_t sub_10042C3D0(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 32);
  if (v2)
  {
    if (*(result + 32))
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
        v2 = *(result + 32);
      }
    }

    *(result + 24) = 0;
    if ((v2 & 4) != 0)
    {
      result = *(result + 16);
      if (result)
      {
        result = sub_10042B604(result);
      }
    }
  }

  *(v1 + 32) = 0;
  return result;
}

uint64_t sub_10042C434(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (v8 == 2)
        {
          v13 = *(a1 + 32);
          goto LABEL_39;
        }

        goto LABEL_18;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 2)
      {
        goto LABEL_18;
      }

      *(a1 + 32) |= 1u;
      v9 = *(a1 + 8);
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

      v14 = *(this + 14);
      v15 = *(this + 15);
      *(this + 14) = v14 + 1;
      if (v14 >= v15)
      {
        return 0;
      }

      v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v34);
      if (!sub_10041EEC4(v9, this, v17) || *(this + 36) != 1)
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

      v21 = *(this + 1);
      v11 = *(this + 2);
      if (v21 < v11 && *v21 == 16)
      {
        v12 = v21 + 1;
        *(this + 1) = v12;
LABEL_31:
        v33 = 0;
        if (v12 >= v11 || (v22 = *v12, (v22 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v33);
          if (!result)
          {
            return result;
          }

          v22 = v33;
          v23 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          v23 = v12 + 1;
          *(this + 1) = v23;
        }

        *(a1 + 24) = v22;
        v13 = *(a1 + 32) | 2;
        *(a1 + 32) = v13;
        if (v23 < v11 && *v23 == 26)
        {
          *(this + 1) = v23 + 1;
LABEL_39:
          *(a1 + 32) = v13 | 4;
          v25 = *(a1 + 16);
          if (!v25)
          {
            operator new();
          }

          v35 = 0;
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35))
            {
              return 0;
            }
          }

          else
          {
            v35 = *v26;
            *(this + 1) = v26 + 1;
          }

          v27 = *(this + 14);
          v28 = *(this + 15);
          *(this + 14) = v27 + 1;
          if (v27 >= v28)
          {
            return 0;
          }

          v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v35);
          if (!sub_10042B680(v25, this, v30) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v29);
          v31 = *(this + 14);
          v19 = __OFSUB__(v31, 1);
          v32 = v31 - 1;
          if (v32 < 0 == v19)
          {
            *(this + 14) = v32;
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

    if ((TagFallback & 7) == 0)
    {
      v12 = *(this + 1);
      v11 = *(this + 2);
      goto LABEL_31;
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
}

uint64_t sub_10042C7B8(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 24), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  v7 = *(result + 8);
  if (!v7)
  {
    v7 = *(qword_102636CC8 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
  v6 = *(v5 + 32);
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
  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102636CC8 + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
}

uint64_t sub_10042C864(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if (*(a1 + 32))
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      v5 = *(qword_102636CC8 + 8);
    }

    v6 = *(v5 + 36);
    if (*(v5 + 36))
    {
      v7 = (v6 << 31 >> 31) & 9;
      if ((v6 & 2) != 0)
      {
        v7 += 9;
      }

      if ((v6 & 4) != 0)
      {
        v6 = v7 + 9;
      }

      else
      {
        v6 = v7;
      }
    }

    *(v5 + 32) = v6;
    v4 = (v6 + 2);
    v3 = *(a1 + 32);
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  v8 = *(a1 + 24);
  if ((v8 & 0x80000000) != 0)
  {
    v9 = 11;
  }

  else if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    v3 = *(a1 + 32);
  }

  else
  {
    v9 = 2;
  }

  v4 = (v9 + v4);
LABEL_21:
  if ((v3 & 4) != 0)
  {
    v10 = *(a1 + 16);
    if (!v10)
    {
      v10 = *(qword_102636CC8 + 16);
    }

    v11 = sub_1000D45F8(v10, a2);
    v13 = v11;
    if (v11 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, v12);
    }

    else
    {
      v14 = 1;
    }

    v4 = (v4 + v13 + v14 + 1);
  }

LABEL_28:
  *(a1 + 28) = v4;
  return v4;
}

void sub_10042C978(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10042C048(a1, lpsrc);
}

void sub_10042CA18(uint64_t a1, uint64_t a2)
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
      v5 = *(a2 + 16);
      if ((sub_1000D1A24(v5) & 1) == 0)
      {
        sub_10188286C();
      }

      *(a1 + 36) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 36);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 8);
      *(a1 + 36) |= 2u;
      *(a1 + 8) = v6;
      v4 = *(a2 + 36);
      if ((v4 & 4) == 0)
      {
LABEL_9:
        if ((v4 & 8) == 0)
        {
          return;
        }

        goto LABEL_17;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    *(a1 + 36) |= 4u;
    v7 = *(a1 + 24);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 24);
    if (!v8)
    {
      v8 = *(qword_102636CD0 + 24);
    }

    sub_10041ED1C(v7, v8);
    if ((*(a2 + 36) & 8) != 0)
    {
LABEL_17:
      v9 = *(a2 + 20);
      if ((sub_1000D1A24(v9) & 1) == 0)
      {
        sub_101882898();
      }

      *(a1 + 36) |= 8u;
      *(a1 + 20) = v9;
    }
  }
}

void sub_10042CB8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10042CBA4(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024529C8;
  if (qword_102636CD0 != this)
  {
    v2 = *(this + 3);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_10042CC34(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10042CBA4(a1);

  operator delete();
}

uint64_t sub_10042CC6C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636CD0;
  if (!qword_102636CD0)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636CD0;
  }

  return result;
}

uint64_t sub_10042CCF0(uint64_t result)
{
  v1 = *(result + 36);
  if (v1)
  {
    *(result + 16) = 0;
    *(result + 8) = 0;
    if ((v1 & 4) != 0)
    {
      v2 = *(result + 24);
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

    *(result + 20) = 0;
  }

  *(result + 36) = 0;
  return result;
}

uint64_t sub_10042CD2C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
              v13 = *(a1 + 36);
              goto LABEL_35;
            }
          }

          else if (v7 == 4 && (TagFallback & 7) == 0)
          {
            v10 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_49;
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

        v28[0] = 0;
        v11 = *(this + 1);
        if (v11 >= *(this + 2) || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v28);
          if (!result)
          {
            return result;
          }

          v12 = v28[0];
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (sub_1000D1A24(v12))
        {
          *(a1 + 36) |= 1u;
          *(a1 + 16) = v12;
        }

        v15 = *(this + 1);
        if (v15 < *(this + 2) && *v15 == 17)
        {
          *(this + 1) = v15 + 1;
          goto LABEL_31;
        }
      }

      if (v7 != 2 || v8 != 1)
      {
        goto LABEL_20;
      }

LABEL_31:
      *v28 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = *v28;
      v13 = *(a1 + 36) | 2;
      *(a1 + 36) = v13;
      v16 = *(this + 1);
    }

    while (v16 >= *(this + 2) || *v16 != 26);
    *(this + 1) = v16 + 1;
LABEL_35:
    *(a1 + 36) = v13 | 4;
    v17 = *(a1 + 24);
    if (!v17)
    {
      operator new();
    }

    v28[0] = 0;
    v18 = *(this + 1);
    if (v18 >= *(this + 2) || *v18 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v28))
      {
        return 0;
      }
    }

    else
    {
      v28[0] = *v18;
      *(this + 1) = v18 + 1;
    }

    v19 = *(this + 14);
    v20 = *(this + 15);
    *(this + 14) = v19 + 1;
    if (v19 >= v20)
    {
      return 0;
    }

    v21 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v28[0]);
    if (!sub_10041EEC4(v17, this, v22) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v21);
    v23 = *(this + 14);
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v25 < 0 == v24)
    {
      *(this + 14) = v25;
    }

    v26 = *(this + 1);
    v9 = *(this + 2);
    if (v26 < v9 && *v26 == 32)
    {
      v10 = v26 + 1;
      *(this + 1) = v10;
LABEL_49:
      v28[0] = 0;
      if (v10 >= v9 || (v27 = *v10, v27 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v28);
        if (!result)
        {
          return result;
        }

        v27 = v28[0];
      }

      else
      {
        *(this + 1) = v10 + 1;
      }

      if (sub_1000D1A24(v27))
      {
        *(a1 + 36) |= 8u;
        *(a1 + 20) = v27;
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

uint64_t sub_10042D074(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 16), a2, a4);
    v6 = *(v5 + 36);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
  v6 = *(v5 + 36);
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
  v7 = *(v5 + 24);
  if (!v7)
  {
    v7 = *(qword_102636CD0 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
  if ((*(v5 + 36) & 8) != 0)
  {
LABEL_11:
    v8 = *(v5 + 20);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, v8, a2, a4);
  }

  return result;
}

uint64_t sub_10042D12C(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (v3)
  {
    if (*(a1 + 36))
    {
      v6 = *(a1 + 16);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(a1 + 36);
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
      v7 = *(a1 + 24);
      if (!v7)
      {
        v7 = *(qword_102636CD0 + 24);
      }

      v8 = *(v7 + 36);
      if (*(v7 + 36))
      {
        v9 = (v8 << 31 >> 31) & 9;
        if ((v8 & 2) != 0)
        {
          v9 += 9;
        }

        if ((v8 & 4) != 0)
        {
          v8 = v9 + 9;
        }

        else
        {
          v8 = v9;
        }
      }

      *(v7 + 32) = v8;
      v5 = (v5 + v8 + 2);
      v3 = *(a1 + 36);
    }

    if ((v3 & 8) != 0)
    {
      v10 = *(a1 + 20);
      if ((v10 & 0x80000000) != 0)
      {
        v11 = 11;
      }

      else if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
      }

      else
      {
        v11 = 2;
      }

      v5 = (v11 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 32) = v5;
  return v5;
}

void sub_10042D22C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10042CA18(a1, lpsrc);
}

void sub_10042D2CC(uint64_t a1, uint64_t a2)
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
      *(a1 + 32) |= 1u;
      v5 = *(a1 + 8);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 8);
      if (!v6)
      {
        v6 = *(qword_102636CD8 + 8);
      }

      sub_10041ED1C(v5, v6);
      v4 = *(a2 + 32);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 24);
    *(a1 + 32) |= 2u;
    *(a1 + 24) = v7;
    if ((*(a2 + 32) & 4) == 0)
    {
      return;
    }

LABEL_14:
    *(a1 + 32) |= 4u;
    v8 = *(a1 + 16);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 16);
    if (!v9)
    {
      v9 = *(qword_102636CD8 + 16);
    }

    sub_10042CA18(v8, v9);
  }
}

void sub_10042D458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_10042D470(void *result)
{
  if (qword_102636CD8 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[2];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_10042D510(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452A40;
  sub_10042D470(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10042D564(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452A40;
  sub_10042D470(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10042D5CC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636CD8;
  if (!qword_102636CD8)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636CD8;
  }

  return result;
}

uint64_t sub_10042D64C(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 32);
  if (v2)
  {
    if (*(result + 32))
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
        v2 = *(result + 32);
      }
    }

    *(result + 24) = 0;
    if ((v2 & 4) != 0)
    {
      result = *(result + 16);
      if (result)
      {
        result = sub_10042CCF0(result);
      }
    }
  }

  *(v1 + 32) = 0;
  return result;
}

uint64_t sub_10042D6B0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (v8 == 2)
        {
          v13 = *(a1 + 32);
          goto LABEL_39;
        }

        goto LABEL_18;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 2)
      {
        goto LABEL_18;
      }

      *(a1 + 32) |= 1u;
      v9 = *(a1 + 8);
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

      v14 = *(this + 14);
      v15 = *(this + 15);
      *(this + 14) = v14 + 1;
      if (v14 >= v15)
      {
        return 0;
      }

      v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v34);
      if (!sub_10041EEC4(v9, this, v17) || *(this + 36) != 1)
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

      v21 = *(this + 1);
      v11 = *(this + 2);
      if (v21 < v11 && *v21 == 16)
      {
        v12 = v21 + 1;
        *(this + 1) = v12;
LABEL_31:
        v33 = 0;
        if (v12 >= v11 || (v22 = *v12, (v22 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v33);
          if (!result)
          {
            return result;
          }

          v22 = v33;
          v23 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          v23 = v12 + 1;
          *(this + 1) = v23;
        }

        *(a1 + 24) = v22;
        v13 = *(a1 + 32) | 2;
        *(a1 + 32) = v13;
        if (v23 < v11 && *v23 == 26)
        {
          *(this + 1) = v23 + 1;
LABEL_39:
          *(a1 + 32) = v13 | 4;
          v25 = *(a1 + 16);
          if (!v25)
          {
            operator new();
          }

          v35 = 0;
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35))
            {
              return 0;
            }
          }

          else
          {
            v35 = *v26;
            *(this + 1) = v26 + 1;
          }

          v27 = *(this + 14);
          v28 = *(this + 15);
          *(this + 14) = v27 + 1;
          if (v27 >= v28)
          {
            return 0;
          }

          v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v35);
          if (!sub_10042CD2C(v25, this, v30) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v29);
          v31 = *(this + 14);
          v19 = __OFSUB__(v31, 1);
          v32 = v31 - 1;
          if (v32 < 0 == v19)
          {
            *(this + 14) = v32;
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

    if ((TagFallback & 7) == 0)
    {
      v12 = *(this + 1);
      v11 = *(this + 2);
      goto LABEL_31;
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
}

uint64_t sub_10042DA2C(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 24), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  v7 = *(result + 8);
  if (!v7)
  {
    v7 = *(qword_102636CD8 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
  v6 = *(v5 + 32);
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
  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102636CD8 + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
}

uint64_t sub_10042DAD8(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if (*(a1 + 32))
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      v5 = *(qword_102636CD8 + 8);
    }

    v6 = *(v5 + 36);
    if (*(v5 + 36))
    {
      v7 = (v6 << 31 >> 31) & 9;
      if ((v6 & 2) != 0)
      {
        v7 += 9;
      }

      if ((v6 & 4) != 0)
      {
        v6 = v7 + 9;
      }

      else
      {
        v6 = v7;
      }
    }

    *(v5 + 32) = v6;
    v4 = (v6 + 2);
    v3 = *(a1 + 32);
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  v8 = *(a1 + 24);
  if ((v8 & 0x80000000) != 0)
  {
    v9 = 11;
  }

  else if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    v3 = *(a1 + 32);
  }

  else
  {
    v9 = 2;
  }

  v4 = (v9 + v4);
LABEL_21:
  if ((v3 & 4) != 0)
  {
    v10 = *(a1 + 16);
    if (!v10)
    {
      v10 = *(qword_102636CD8 + 16);
    }

    v11 = sub_10042D12C(v10, a2);
    v13 = v11;
    if (v11 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, v12);
    }

    else
    {
      v14 = 1;
    }

    v4 = (v4 + v13 + v14 + 1);
  }

LABEL_28:
  *(a1 + 28) = v4;
  return v4;
}

void sub_10042DBEC(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10042D2CC(a1, lpsrc);
}

void sub_10042DC98(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 40))
  {
    v5 = *(a2 + 8);
    *(a1 + 40) |= 1u;
    v6 = *(a1 + 8);
    if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v6, v5);
    v4 = *(a2 + 40);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = *(a2 + 24);
      if (v9 >= 0x45)
      {
        sub_1018828C4();
      }

      *(a1 + 40) |= 4u;
      *(a1 + 24) = v9;
      v4 = *(a2 + 40);
      if ((v4 & 8) == 0)
      {
LABEL_8:
        if ((v4 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  else if ((*(a2 + 40) & 2) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(a2 + 16);
  *(a1 + 40) |= 2u;
  v8 = *(a1 + 16);
  if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v8, v7);
  v4 = *(a2 + 40);
  if ((v4 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v4 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_18:
  v10 = *(a2 + 28);
  if (v10 >= 5)
  {
    sub_1018828F0();
  }

  *(a1 + 40) |= 8u;
  *(a1 + 28) = v10;
  if ((*(a2 + 40) & 0x10) != 0)
  {
LABEL_20:
    v11 = *(a2 + 32);
    if (v11 >= 3)
    {
      sub_10188291C();
    }

    *(a1 + 40) |= 0x10u;
    *(a1 + 32) = v11;
  }
}

void sub_10042DE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10042DE60(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452AB8;
  sub_1003B2CF4(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10042DEB4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452AB8;
  sub_1003B2CF4(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10042DF78(uint64_t result)
{
  if (*(result + 40))
  {
    if (*(result + 40))
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

    if ((*(result + 40) & 2) != 0)
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

    *(result + 24) = 0;
    *(result + 32) = 0;
  }

  *(result + 40) = 0;
  return result;
}

uint64_t sub_10042DFFC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (v7 != 2 || v8 != 2)
          {
            goto LABEL_21;
          }

          goto LABEL_30;
        }

        if (v8 != 2)
        {
          goto LABEL_21;
        }

        *(a1 + 40) |= 1u;
        if (*(a1 + 8) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v15 = *(this + 1);
        if (v15 < *(this + 2) && *v15 == 18)
        {
          *(this + 1) = v15 + 1;
LABEL_30:
          *(a1 + 40) |= 2u;
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
          v11 = *(this + 2);
          if (v16 < v11 && *v16 == 24)
          {
            v12 = v16 + 1;
            *(this + 1) = v12;
LABEL_36:
            v25 = 0;
            if (v12 >= v11 || (v17 = *v12, (v17 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25);
              if (!result)
              {
                return result;
              }

              v17 = v25;
            }

            else
            {
              *(this + 1) = v12 + 1;
            }

            if (v17 <= 0x44)
            {
              *(a1 + 40) |= 4u;
              *(a1 + 24) = v17;
            }

            v18 = *(this + 1);
            v13 = *(this + 2);
            if (v18 < v13 && *v18 == 32)
            {
              v14 = v18 + 1;
              *(this + 1) = v14;
              goto LABEL_46;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v12 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_36;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v14 = *(this + 1);
      v13 = *(this + 2);
LABEL_46:
      v24 = 0;
      if (v14 >= v13 || (v19 = *v14, (v19 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24);
        if (!result)
        {
          return result;
        }

        v19 = v24;
      }

      else
      {
        *(this + 1) = v14 + 1;
      }

      if (v19 <= 4)
      {
        *(a1 + 40) |= 8u;
        *(a1 + 28) = v19;
      }

      v20 = *(this + 1);
      v9 = *(this + 2);
      if (v20 < v9 && *v20 == 40)
      {
        v10 = v20 + 1;
        *(this + 1) = v10;
LABEL_56:
        v23 = 0;
        if (v10 >= v9 || (v21 = *v10, (v21 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23);
          if (!result)
          {
            return result;
          }

          v21 = v23;
        }

        else
        {
          *(this + 1) = v10 + 1;
        }

        if (v21 <= 2)
        {
          *(a1 + 40) |= 0x10u;
          *(a1 + 32) = v21;
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

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_56;
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

int *sub_10042E330(int *result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[10];
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = v5[10];
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = v5[10];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, v5[7], a2, a4);
    if ((v5[10] & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v5[6], a2, a4);
  v6 = v5[10];
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
  v7 = v5[8];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v7, a2, a4);
}

uint64_t sub_10042E3F4(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_46;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 40) & 2) == 0)
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
    v3 = *(a1 + 40);
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
  }

LABEL_24:
  if ((v3 & 4) != 0)
  {
    v18 = *(a1 + 24);
    if ((v18 & 0x80000000) != 0)
    {
      v19 = 11;
    }

    else if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
      v3 = *(a1 + 40);
    }

    else
    {
      v19 = 2;
    }

    v4 = (v19 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_26:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_40;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_26;
  }

  v20 = *(a1 + 28);
  if ((v20 & 0x80000000) != 0)
  {
    v21 = 11;
  }

  else if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 1;
    v3 = *(a1 + 40);
  }

  else
  {
    v21 = 2;
  }

  v4 = (v21 + v4);
  if ((v3 & 0x10) != 0)
  {
LABEL_40:
    v22 = *(a1 + 32);
    if ((v22 & 0x80000000) != 0)
    {
      v23 = 11;
    }

    else if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 1;
    }

    else
    {
      v23 = 2;
    }

    v4 = (v23 + v4);
  }

LABEL_46:
  *(a1 + 36) = v4;
  return v4;
}

void sub_10042E590(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10042DC98(a1, lpsrc);
}

void sub_10042E63C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 48))
  {
    *(a1 + 48) |= 1u;
    v5 = *(a1 + 8);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 8);
    if (!v6)
    {
      v6 = *(qword_102636CE8 + 8);
    }

    sub_10041ED1C(v5, v6);
    v4 = *(a2 + 48);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_20:
      v9 = *(a2 + 40);
      if (v9 >= 0x13)
      {
        sub_101882948();
      }

      *(a1 + 48) |= 4u;
      *(a1 + 40) = v9;
      v4 = *(a2 + 48);
      if ((v4 & 8) == 0)
      {
LABEL_8:
        if ((v4 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_27;
      }

      goto LABEL_22;
    }
  }

  else if ((*(a2 + 48) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(a1 + 48) |= 2u;
  v7 = *(a1 + 16);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 16);
  if (!v8)
  {
    v8 = *(qword_102636CE8 + 16);
  }

  sub_10041ED1C(v7, v8);
  v4 = *(a2 + 48);
  if ((v4 & 4) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  if ((v4 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_22:
  *(a1 + 48) |= 8u;
  v10 = *(a1 + 24);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 24);
  if (!v11)
  {
    v11 = *(qword_102636CE8 + 24);
  }

  sub_10041ED1C(v10, v11);
  if ((*(a2 + 48) & 0x10) != 0)
  {
LABEL_27:
    *(a1 + 48) |= 0x10u;
    v12 = *(a1 + 32);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 32);
    if (!v13)
    {
      v13 = *(qword_102636CE8 + 32);
    }

    sub_10042DC98(v12, v13);
  }
}

void sub_10042E8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_10042E8EC(void *result)
{
  if (qword_102636CE8 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    result = v1[4];
    if (result)
    {
      v5 = *(*result + 8);

      return v5();
    }
  }

  return result;
}

void sub_10042E9E4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452B30;
  sub_10042E8EC(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10042EA38(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452B30;
  sub_10042E8EC(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10042EAA0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636CE8;
  if (!qword_102636CE8)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636CE8;
  }

  return result;
}

uint64_t sub_10042EB28(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 48);
  if (v2)
  {
    if (*(result + 48))
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
        v2 = *(result + 48);
      }
    }

    if ((v2 & 2) != 0)
    {
      v4 = *(result + 16);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
        v2 = *(result + 48);
      }
    }

    *(result + 40) = 0;
    if ((v2 & 8) != 0)
    {
      v5 = *(result + 24);
      if (v5)
      {
        if (*(v5 + 36))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
        }

        *(v5 + 36) = 0;
        v2 = *(result + 48);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      result = *(result + 32);
      if (result)
      {
        result = sub_10042DF78(result);
      }
    }
  }

  *(v1 + 48) = 0;
  return result;
}

uint64_t sub_10042EBD4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v10 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_52;
        }

        if (v7 == 4)
        {
          if (v8 != 2)
          {
            goto LABEL_21;
          }

LABEL_62:
          *(a1 + 48) |= 8u;
          v33 = *(a1 + 24);
          if (!v33)
          {
            operator new();
          }

          v50 = 0;
          v34 = *(this + 1);
          if (v34 >= *(this + 2) || *v34 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50))
            {
              return 0;
            }
          }

          else
          {
            v50 = *v34;
            *(this + 1) = v34 + 1;
          }

          v35 = *(this + 14);
          v36 = *(this + 15);
          *(this + 14) = v35 + 1;
          if (v35 >= v36)
          {
            return 0;
          }

          v37 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v50);
          if (!sub_10041EEC4(v33, this, v38) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v37);
          v39 = *(this + 14);
          v18 = __OFSUB__(v39, 1);
          v40 = v39 - 1;
          if (v40 < 0 == v18)
          {
            *(this + 14) = v40;
          }

          v41 = *(this + 1);
          if (v41 < *(this + 2) && *v41 == 42)
          {
            *(this + 1) = v41 + 1;
            goto LABEL_76;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 2)
          {
            goto LABEL_21;
          }

LABEL_76:
          *(a1 + 48) |= 0x10u;
          v42 = *(a1 + 32);
          if (!v42)
          {
            operator new();
          }

          v50 = 0;
          v43 = *(this + 1);
          if (v43 >= *(this + 2) || *v43 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50))
            {
              return 0;
            }
          }

          else
          {
            v50 = *v43;
            *(this + 1) = v43 + 1;
          }

          v44 = *(this + 14);
          v45 = *(this + 15);
          *(this + 14) = v44 + 1;
          if (v44 >= v45)
          {
            return 0;
          }

          v46 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v50);
          if (!sub_10042DFFC(v42, this, v47) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v46);
          v48 = *(this + 14);
          v18 = __OFSUB__(v48, 1);
          v49 = v48 - 1;
          if (v49 < 0 == v18)
          {
            *(this + 14) = v49;
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

      if (v8 != 2)
      {
        goto LABEL_21;
      }

      *(a1 + 48) |= 1u;
      v11 = *(a1 + 8);
      if (!v11)
      {
        operator new();
      }

      v50 = 0;
      v12 = *(this + 1);
      if (v12 >= *(this + 2) || *v12 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50))
        {
          return 0;
        }
      }

      else
      {
        v50 = *v12;
        *(this + 1) = v12 + 1;
      }

      v13 = *(this + 14);
      v14 = *(this + 15);
      *(this + 14) = v13 + 1;
      if (v13 >= v14)
      {
        return 0;
      }

      v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v50);
      if (!sub_10041EEC4(v11, this, v16) || *(this + 36) != 1)
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

      v20 = *(this + 1);
      if (v20 < *(this + 2) && *v20 == 18)
      {
        *(this + 1) = v20 + 1;
LABEL_38:
        *(a1 + 48) |= 2u;
        v21 = *(a1 + 16);
        if (!v21)
        {
          operator new();
        }

        v50 = 0;
        v22 = *(this + 1);
        if (v22 >= *(this + 2) || *v22 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50))
          {
            return 0;
          }
        }

        else
        {
          v50 = *v22;
          *(this + 1) = v22 + 1;
        }

        v23 = *(this + 14);
        v24 = *(this + 15);
        *(this + 14) = v23 + 1;
        if (v23 >= v24)
        {
          return 0;
        }

        v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v50);
        if (!sub_10041EEC4(v21, this, v26) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v25);
        v27 = *(this + 14);
        v18 = __OFSUB__(v27, 1);
        v28 = v27 - 1;
        if (v28 < 0 == v18)
        {
          *(this + 14) = v28;
        }

        v29 = *(this + 1);
        v9 = *(this + 2);
        if (v29 < v9 && *v29 == 24)
        {
          v10 = v29 + 1;
          *(this + 1) = v10;
LABEL_52:
          v50 = 0;
          if (v10 >= v9 || (v30 = *v10, (v30 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
            if (!result)
            {
              return result;
            }

            v30 = v50;
          }

          else
          {
            *(this + 1) = v10 + 1;
          }

          if (v30 <= 0x12)
          {
            *(a1 + 48) |= 4u;
            *(a1 + 40) = v30;
          }

          v32 = *(this + 1);
          if (v32 < *(this + 2) && *v32 == 34)
          {
            *(this + 1) = v32 + 1;
            goto LABEL_62;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 2)
    {
      goto LABEL_38;
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

uint64_t sub_10042F1A0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636CE8 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 48);
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

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102636CE8 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 48);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 40), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_14:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(qword_102636CE8 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  if ((*(v5 + 48) & 0x10) != 0)
  {
LABEL_17:
    v10 = *(v5 + 32);
    if (!v10)
    {
      v10 = *(qword_102636CE8 + 32);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  }

  return result;
}

uint64_t sub_10042F2A4(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_49;
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 48) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v5 = *(qword_102636CE8 + 8);
  }

  v6 = *(v5 + 36);
  if (*(v5 + 36))
  {
    v7 = (v6 << 31 >> 31) & 9;
    if ((v6 & 2) != 0)
    {
      v7 += 9;
    }

    if ((v6 & 4) != 0)
    {
      v6 = v7 + 9;
    }

    else
    {
      v6 = v7;
    }
  }

  *(v5 + 32) = v6;
  v4 = (v6 + 2);
  v3 = *(a1 + 48);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v8 = *(a1 + 16);
    if (!v8)
    {
      v8 = *(qword_102636CE8 + 16);
    }

    v9 = *(v8 + 36);
    if (*(v8 + 36))
    {
      v10 = (v9 << 31 >> 31) & 9;
      if ((v9 & 2) != 0)
      {
        v10 += 9;
      }

      if ((v9 & 4) != 0)
      {
        v9 = v10 + 9;
      }

      else
      {
        v9 = v10;
      }
    }

    *(v8 + 32) = v9;
    v4 = (v4 + v9 + 2);
    v3 = *(a1 + 48);
  }

LABEL_24:
  if ((v3 & 4) != 0)
  {
    v11 = *(a1 + 40);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
      v3 = *(a1 + 48);
    }

    else
    {
      v12 = 2;
    }

    v4 = (v12 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_26:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_43;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_26;
  }

  v13 = *(a1 + 24);
  if (!v13)
  {
    v13 = *(qword_102636CE8 + 24);
  }

  v14 = *(v13 + 36);
  if (*(v13 + 36))
  {
    v15 = (v14 << 31 >> 31) & 9;
    if ((v14 & 2) != 0)
    {
      v15 += 9;
    }

    if ((v14 & 4) != 0)
    {
      v14 = v15 + 9;
    }

    else
    {
      v14 = v15;
    }
  }

  *(v13 + 32) = v14;
  v4 = (v4 + v14 + 2);
  if ((*(a1 + 48) & 0x10) != 0)
  {
LABEL_43:
    v16 = *(a1 + 32);
    if (!v16)
    {
      v16 = *(qword_102636CE8 + 32);
    }

    v17 = sub_10042E3F4(v16, a2);
    v19 = v17;
    if (v17 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, v18);
    }

    else
    {
      v20 = 1;
    }

    v4 = (v4 + v19 + v20 + 1);
  }

LABEL_49:
  *(a1 + 44) = v4;
  return v4;
}

void sub_10042F46C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10042E63C(a1, lpsrc);
}

void sub_10042F50C(uint64_t a1, uint64_t a2)
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
      *(a1 + 32) |= 1u;
      v5 = *(a1 + 8);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 8);
      if (!v6)
      {
        v6 = *(qword_102636CF0 + 8);
      }

      sub_10041ED1C(v5, v6);
      v4 = *(a2 + 32);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 24);
    *(a1 + 32) |= 2u;
    *(a1 + 24) = v7;
    if ((*(a2 + 32) & 4) == 0)
    {
      return;
    }

LABEL_14:
    *(a1 + 32) |= 4u;
    v8 = *(a1 + 16);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 16);
    if (!v9)
    {
      v9 = *(qword_102636CF0 + 16);
    }

    sub_10042E63C(v8, v9);
  }
}

void sub_10042F69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_10042F6B4(void *result)
{
  if (qword_102636CF0 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[2];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_10042F754(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452BA8;
  sub_10042F6B4(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10042F7A8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452BA8;
  sub_10042F6B4(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10042F810(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636CF0;
  if (!qword_102636CF0)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636CF0;
  }

  return result;
}

uint64_t sub_10042F890(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 32);
  if (v2)
  {
    if (*(result + 32))
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
        v2 = *(result + 32);
      }
    }

    *(result + 24) = 0;
    if ((v2 & 4) != 0)
    {
      result = *(result + 16);
      if (result)
      {
        result = sub_10042EB28(result);
      }
    }
  }

  *(v1 + 32) = 0;
  return result;
}

uint64_t sub_10042F8F4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (v8 == 2)
        {
          v13 = *(a1 + 32);
          goto LABEL_39;
        }

        goto LABEL_18;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 2)
      {
        goto LABEL_18;
      }

      *(a1 + 32) |= 1u;
      v9 = *(a1 + 8);
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

      v14 = *(this + 14);
      v15 = *(this + 15);
      *(this + 14) = v14 + 1;
      if (v14 >= v15)
      {
        return 0;
      }

      v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v34);
      if (!sub_10041EEC4(v9, this, v17) || *(this + 36) != 1)
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

      v21 = *(this + 1);
      v11 = *(this + 2);
      if (v21 < v11 && *v21 == 16)
      {
        v12 = v21 + 1;
        *(this + 1) = v12;
LABEL_31:
        v33 = 0;
        if (v12 >= v11 || (v22 = *v12, (v22 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v33);
          if (!result)
          {
            return result;
          }

          v22 = v33;
          v23 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          v23 = v12 + 1;
          *(this + 1) = v23;
        }

        *(a1 + 24) = v22;
        v13 = *(a1 + 32) | 2;
        *(a1 + 32) = v13;
        if (v23 < v11 && *v23 == 26)
        {
          *(this + 1) = v23 + 1;
LABEL_39:
          *(a1 + 32) = v13 | 4;
          v25 = *(a1 + 16);
          if (!v25)
          {
            operator new();
          }

          v35 = 0;
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35))
            {
              return 0;
            }
          }

          else
          {
            v35 = *v26;
            *(this + 1) = v26 + 1;
          }

          v27 = *(this + 14);
          v28 = *(this + 15);
          *(this + 14) = v27 + 1;
          if (v27 >= v28)
          {
            return 0;
          }

          v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v35);
          if (!sub_10042EBD4(v25, this, v30) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v29);
          v31 = *(this + 14);
          v19 = __OFSUB__(v31, 1);
          v32 = v31 - 1;
          if (v32 < 0 == v19)
          {
            *(this + 14) = v32;
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

    if ((TagFallback & 7) == 0)
    {
      v12 = *(this + 1);
      v11 = *(this + 2);
      goto LABEL_31;
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
}

uint64_t sub_10042FC74(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 24), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  v7 = *(result + 8);
  if (!v7)
  {
    v7 = *(qword_102636CF0 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
  v6 = *(v5 + 32);
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
  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102636CF0 + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
}

uint64_t sub_10042FD20(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if (*(a1 + 32))
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      v5 = *(qword_102636CF0 + 8);
    }

    v6 = *(v5 + 36);
    if (*(v5 + 36))
    {
      v7 = (v6 << 31 >> 31) & 9;
      if ((v6 & 2) != 0)
      {
        v7 += 9;
      }

      if ((v6 & 4) != 0)
      {
        v6 = v7 + 9;
      }

      else
      {
        v6 = v7;
      }
    }

    *(v5 + 32) = v6;
    v4 = (v6 + 2);
    v3 = *(a1 + 32);
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  v8 = *(a1 + 24);
  if ((v8 & 0x80000000) != 0)
  {
    v9 = 11;
  }

  else if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    v3 = *(a1 + 32);
  }

  else
  {
    v9 = 2;
  }

  v4 = (v9 + v4);
LABEL_21:
  if ((v3 & 4) != 0)
  {
    v10 = *(a1 + 16);
    if (!v10)
    {
      v10 = *(qword_102636CF0 + 16);
    }

    v11 = sub_10042F2A4(v10, a2);
    v13 = v11;
    if (v11 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, v12);
    }

    else
    {
      v14 = 1;
    }

    v4 = (v4 + v13 + v14 + 1);
  }

LABEL_28:
  *(a1 + 28) = v4;
  return v4;
}

void sub_10042FE34(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10042F50C(a1, lpsrc);
}

void sub_10042FED4(uint64_t a1, uint64_t a2)
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
          return;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 32) |= 2u;
    v7 = *(a1 + 16);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 16);
    if (!v8)
    {
      v8 = *(qword_102636CF8 + 16);
    }

    sub_10042B178(v7, v8);
    if ((*(a2 + 32) & 4) != 0)
    {
LABEL_7:
      v5 = *(a2 + 24);
      *(a1 + 32) |= 4u;
      *(a1 + 24) = v5;
    }
  }
}

void sub_10043000C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100430028(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636CF8;
  if (!qword_102636CF8)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636CF8;
  }

  return result;
}

uint64_t sub_1004300AC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2)
  {
    *(result + 8) = 0;
    if ((v2 & 2) != 0)
    {
      result = *(result + 16);
      if (result)
      {
        result = sub_10042B604(result);
      }
    }

    *(v1 + 24) = 0;
  }

  *(v1 + 32) = 0;
  return result;
}

uint64_t sub_1004300F0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        if ((TagFallback & 7) == 0)
        {
          v14 = *(this + 1);
          v13 = *(this + 2);
          goto LABEL_35;
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

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 1)
      {
        goto LABEL_22;
      }

      *v26 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v26) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = *v26;
      v9 = *(a1 + 32) | 1;
      *(a1 + 32) = v9;
      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 18)
      {
        *(this + 1) = v10 + 1;
        goto LABEL_16;
      }
    }

    if (v8 != 2)
    {
      goto LABEL_22;
    }

    v9 = *(a1 + 32);
LABEL_16:
    *(a1 + 32) = v9 | 2;
    v11 = *(a1 + 16);
    if (!v11)
    {
      operator new();
    }

    v26[0] = 0;
    v12 = *(this + 1);
    if (v12 >= *(this + 2) || *v12 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26))
      {
        return 0;
      }
    }

    else
    {
      v26[0] = *v12;
      *(this + 1) = v12 + 1;
    }

    v15 = *(this + 14);
    v16 = *(this + 15);
    *(this + 14) = v15 + 1;
    if (v15 >= v16)
    {
      return 0;
    }

    v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v26[0]);
    if (!sub_10042B680(v11, this, v18) || *(this + 36) != 1)
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
    v13 = *(this + 2);
    if (v22 < v13 && *v22 == 24)
    {
      v14 = v22 + 1;
      *(this + 1) = v14;
LABEL_35:
      v26[0] = 0;
      if (v14 >= v13 || (v23 = *v14, (v23 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26);
        if (!result)
        {
          return result;
        }

        v23 = v26[0];
        v24 = *(this + 1);
        v13 = *(this + 2);
      }

      else
      {
        v24 = v14 + 1;
        *(this + 1) = v24;
      }

      *(a1 + 24) = v23 != 0;
      *(a1 + 32) |= 4u;
      if (v24 == v13 && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }
  }
}

void sub_1004303B0(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10042FED4(a1, lpsrc);
}

float sub_10043045C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v5 = *(a2 + 56);
  if (!v5)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    v6 = *(a2 + 8);
    if (v6 >= 3)
    {
      sub_101882974();
    }

    *(a1 + 56) |= 1u;
    *(a1 + 8) = v6;
    v5 = *(a2 + 56);
  }

  if ((v5 & 2) != 0)
  {
    result = *(a2 + 12);
    *(a1 + 56) |= 2u;
    *(a1 + 12) = result;
    v5 = *(a2 + 56);
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_9;
  }

  result = *(a2 + 16);
  *(a1 + 56) |= 4u;
  *(a1 + 16) = result;
  v5 = *(a2 + 56);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = *(a2 + 20);
  *(a1 + 56) |= 8u;
  *(a1 + 20) = result;
  v5 = *(a2 + 56);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_28:
    result = *(a2 + 28);
    *(a1 + 56) |= 0x20u;
    *(a1 + 28) = result;
    v5 = *(a2 + 56);
    if ((v5 & 0x40) == 0)
    {
LABEL_13:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_27:
  result = *(a2 + 24);
  *(a1 + 56) |= 0x10u;
  *(a1 + 24) = result;
  v5 = *(a2 + 56);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_12:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_29:
  result = *(a2 + 32);
  *(a1 + 56) |= 0x40u;
  *(a1 + 32) = result;
  v5 = *(a2 + 56);
  if ((v5 & 0x80) != 0)
  {
LABEL_14:
    result = *(a2 + 36);
    *(a1 + 56) |= 0x80u;
    *(a1 + 36) = result;
    v5 = *(a2 + 56);
  }

LABEL_15:
  if ((v5 & 0xFF00) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      result = *(a2 + 40);
      *(a1 + 56) |= 0x100u;
      *(a1 + 40) = result;
      v5 = *(a2 + 56);
    }

    if ((v5 & 0x200) != 0)
    {
      v7 = *(a2 + 44);
      if (v7 >= 8)
      {
        sub_1018829A0();
      }

      *(a1 + 56) |= 0x200u;
      *(a1 + 44) = v7;
      v5 = *(a2 + 56);
    }

    if ((v5 & 0x400) != 0)
    {
      result = *(a2 + 48);
      *(a1 + 56) |= 0x400u;
      *(a1 + 48) = result;
    }
  }

  return result;
}

void sub_100430644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10043067C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452C98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10043072C(uint64_t result)
{
  v1 = *(result + 56);
  if (v1)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 40) = 0;
    *(result + 48) = 0;
  }

  *(result + 56) = 0;
  return result;
}

uint64_t sub_10043075C(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
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
              if (v7 != 2 || v8 != 5)
              {
                goto LABEL_43;
              }

              goto LABEL_53;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v25 = 0;
            v9 = *(this + 1);
            if (v9 >= *(this + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25);
              if (!result)
              {
                return result;
              }

              v10 = v25;
            }

            else
            {
              *(this + 1) = v9 + 1;
            }

            if (v10 <= 2)
            {
              a1[14] |= 1u;
              a1[2] = v10;
            }

            v14 = *(this + 1);
            if (v14 < *(this + 2) && *v14 == 21)
            {
              *(this + 1) = v14 + 1;
LABEL_53:
              v25 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
              {
                return 0;
              }

              a1[3] = v25;
              a1[14] |= 2u;
              v15 = *(this + 1);
              if (v15 < *(this + 2) && *v15 == 29)
              {
                *(this + 1) = v15 + 1;
LABEL_57:
                v25 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
                {
                  return 0;
                }

                a1[4] = v25;
                a1[14] |= 4u;
                v16 = *(this + 1);
                if (v16 < *(this + 2) && *v16 == 37)
                {
                  *(this + 1) = v16 + 1;
                  goto LABEL_61;
                }
              }
            }
          }

          else
          {
            if (v7 == 3)
            {
              if (v8 != 5)
              {
                goto LABEL_43;
              }

              goto LABEL_57;
            }

            if (v7 != 4)
            {
              if (v7 != 5 || v8 != 5)
              {
                goto LABEL_43;
              }

              goto LABEL_65;
            }

            if (v8 != 5)
            {
              goto LABEL_43;
            }

LABEL_61:
            v25 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
            {
              return 0;
            }

            a1[5] = v25;
            a1[14] |= 8u;
            v17 = *(this + 1);
            if (v17 < *(this + 2) && *v17 == 45)
            {
              *(this + 1) = v17 + 1;
LABEL_65:
              v25 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
              {
                return 0;
              }

              a1[6] = v25;
              a1[14] |= 0x10u;
              v18 = *(this + 1);
              if (v18 < *(this + 2) && *v18 == 53)
              {
                *(this + 1) = v18 + 1;
LABEL_69:
                v25 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
                {
                  return 0;
                }

                a1[7] = v25;
                a1[14] |= 0x20u;
                v19 = *(this + 1);
                if (v19 < *(this + 2) && *v19 == 61)
                {
                  *(this + 1) = v19 + 1;
                  goto LABEL_73;
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
          if (v8 != 5)
          {
            goto LABEL_43;
          }

LABEL_81:
          v25 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
          {
            return 0;
          }

          a1[10] = v25;
          a1[14] |= 0x100u;
          v22 = *(this + 1);
          v11 = *(this + 2);
          if (v22 < v11 && *v22 == 80)
          {
            v12 = v22 + 1;
            *(this + 1) = v12;
LABEL_85:
            v25 = 0;
            if (v12 >= v11 || (v23 = *v12, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25);
              if (!result)
              {
                return result;
              }

              v23 = v25;
            }

            else
            {
              *(this + 1) = v12 + 1;
            }

            if (v23 <= 7)
            {
              a1[14] |= 0x200u;
              a1[11] = v23;
            }

            v24 = *(this + 1);
            if (v24 < *(this + 2) && *v24 == 93)
            {
              *(this + 1) = v24 + 1;
              goto LABEL_95;
            }
          }
        }

        else
        {
          if (v7 == 10)
          {
            if ((TagFallback & 7) == 0)
            {
              v12 = *(this + 1);
              v11 = *(this + 2);
              goto LABEL_85;
            }

            goto LABEL_43;
          }

          if (v7 != 11 || v8 != 5)
          {
            goto LABEL_43;
          }

LABEL_95:
          v25 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
          {
            return 0;
          }

          a1[12] = v25;
          a1[14] |= 0x400u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (v7 == 6)
      {
        if (v8 != 5)
        {
          goto LABEL_43;
        }

        goto LABEL_69;
      }

      if (v7 != 7)
      {
        break;
      }

      if (v8 != 5)
      {
        goto LABEL_43;
      }

LABEL_73:
      v25 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
      {
        return 0;
      }

      a1[8] = v25;
      a1[14] |= 0x40u;
      v20 = *(this + 1);
      if (v20 < *(this + 2) && *v20 == 69)
      {
        *(this + 1) = v20 + 1;
LABEL_77:
        v25 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
        {
          return 0;
        }

        a1[9] = v25;
        a1[14] |= 0x80u;
        v21 = *(this + 1);
        if (v21 < *(this + 2) && *v21 == 77)
        {
          *(this + 1) = v21 + 1;
          goto LABEL_81;
        }
      }
    }

    if (v7 == 8 && v8 == 5)
    {
      goto LABEL_77;
    }

LABEL_43:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_100430C50(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 56);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 56);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 12), a3);
  v6 = *(v5 + 56);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 16), a3);
  v6 = *(v5 + 56);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 20), a3);
  v6 = *(v5 + 56);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 24), a3);
  v6 = *(v5 + 56);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 28), a3);
  v6 = *(v5 + 56);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 32), a3);
  v6 = *(v5 + 56);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 36), a3);
  v6 = *(v5 + 56);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 44), a2, a4);
    if ((*(v5 + 56) & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, a2, *(v5 + 40), a3);
  v6 = *(v5 + 56);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v6 & 0x400) == 0)
  {
    return result;
  }

LABEL_23:
  v7 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xB, a2, v7, a3);
}

uint64_t sub_100430DBC(unsigned int *a1, unsigned int a2)
{
  v3 = a1[14];
  if (v3)
  {
    if (v3)
    {
      v6 = a1[2];
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = a1[14];
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
      v4 += 5;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x20) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x40) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x80) != 0)
    {
      result = v4 + 5;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v7 = result + 5;
    }

    else
    {
      v7 = result;
    }

    if ((v3 & 0x200) != 0)
    {
      v8 = a1[11];
      if ((v8 & 0x80000000) != 0)
      {
        v9 = 11;
      }

      else if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
        v3 = a1[14];
      }

      else
      {
        v9 = 2;
      }

      v7 += v9;
    }

    if ((v3 & 0x400) != 0)
    {
      result = v7 + 5;
    }

    else
    {
      result = v7;
    }
  }

  a1[13] = result;
  return result;
}

float sub_100430ED4(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10043045C(a1, lpsrc);
}

float sub_100430F74(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
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
        v7 = *(qword_102636D08 + 8);
      }

      v4 = sub_10041ED1C(v6, v7);
      v5 = *(a2 + 32);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return *&v4;
        }

LABEL_14:
        *(a1 + 32) |= 4u;
        v9 = *(a1 + 16);
        if (!v9)
        {
          operator new();
        }

        v10 = *(a2 + 16);
        if (!v10)
        {
          v10 = *(qword_102636D08 + 16);
        }

        *&v4 = sub_10043045C(v9, v10);
        return *&v4;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 24);
    *(a1 + 32) |= 2u;
    *(a1 + 24) = v8;
    if ((*(a2 + 32) & 4) == 0)
    {
      return *&v4;
    }

    goto LABEL_14;
  }

  return *&v4;
}

void sub_100431108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_100431120(void *result)
{
  if (qword_102636D08 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[2];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_1004311C0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452D10;
  sub_100431120(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_100431214(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452D10;
  sub_100431120(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10043127C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636D08;
  if (!qword_102636D08)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636D08;
  }

  return result;
}

uint64_t sub_1004312FC(uint64_t result)
{
  LOBYTE(v1) = *(result + 32);
  if (v1)
  {
    if (*(result + 32))
    {
      v2 = *(result + 8);
      if (v2)
      {
        if (*(v2 + 36))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 36) = 0;
        v1 = *(result + 32);
      }
    }

    *(result + 24) = 0;
    if ((v1 & 4) != 0)
    {
      v3 = *(result + 16);
      if (v3)
      {
        v4 = *(v3 + 56);
        if (v4)
        {
          *(v3 + 24) = 0u;
          *(v3 + 8) = 0u;
        }

        if ((v4 & 0xFF00) != 0)
        {
          *(v3 + 40) = 0;
          *(v3 + 48) = 0;
        }

        *(v3 + 56) = 0;
      }
    }
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_10043136C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (v8 == 2)
        {
          v13 = *(a1 + 32);
          goto LABEL_39;
        }

        goto LABEL_18;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 2)
      {
        goto LABEL_18;
      }

      *(a1 + 32) |= 1u;
      v9 = *(a1 + 8);
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

      v14 = *(this + 14);
      v15 = *(this + 15);
      *(this + 14) = v14 + 1;
      if (v14 >= v15)
      {
        return 0;
      }

      v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v34);
      if (!sub_10041EEC4(v9, this, v17) || *(this + 36) != 1)
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

      v21 = *(this + 1);
      v11 = *(this + 2);
      if (v21 < v11 && *v21 == 16)
      {
        v12 = v21 + 1;
        *(this + 1) = v12;
LABEL_31:
        v33 = 0;
        if (v12 >= v11 || (v22 = *v12, (v22 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v33);
          if (!result)
          {
            return result;
          }

          v22 = v33;
          v23 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          v23 = v12 + 1;
          *(this + 1) = v23;
        }

        *(a1 + 24) = v22;
        v13 = *(a1 + 32) | 2;
        *(a1 + 32) = v13;
        if (v23 < v11 && *v23 == 26)
        {
          *(this + 1) = v23 + 1;
LABEL_39:
          *(a1 + 32) = v13 | 4;
          v25 = *(a1 + 16);
          if (!v25)
          {
            operator new();
          }

          v35 = 0;
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35))
            {
              return 0;
            }
          }

          else
          {
            v35 = *v26;
            *(this + 1) = v26 + 1;
          }

          v27 = *(this + 14);
          v28 = *(this + 15);
          *(this + 14) = v27 + 1;
          if (v27 >= v28)
          {
            return 0;
          }

          v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v35);
          if (!sub_10043075C(v25, this, v30) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v29);
          v31 = *(this + 14);
          v19 = __OFSUB__(v31, 1);
          v32 = v31 - 1;
          if (v32 < 0 == v19)
          {
            *(this + 14) = v32;
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

    if ((TagFallback & 7) == 0)
    {
      v12 = *(this + 1);
      v11 = *(this + 2);
      goto LABEL_31;
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
}

uint64_t sub_1004316F0(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 24), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  v7 = *(result + 8);
  if (!v7)
  {
    v7 = *(qword_102636D08 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
  v6 = *(v5 + 32);
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
  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102636D08 + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
}

uint64_t sub_10043179C(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if (*(a1 + 32))
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      v5 = *(qword_102636D08 + 8);
    }

    v6 = *(v5 + 36);
    if (*(v5 + 36))
    {
      v7 = (v6 << 31 >> 31) & 9;
      if ((v6 & 2) != 0)
      {
        v7 += 9;
      }

      if ((v6 & 4) != 0)
      {
        v6 = v7 + 9;
      }

      else
      {
        v6 = v7;
      }
    }

    *(v5 + 32) = v6;
    v4 = (v6 + 2);
    v3 = *(a1 + 32);
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  v8 = *(a1 + 24);
  if ((v8 & 0x80000000) != 0)
  {
    v9 = 11;
  }

  else if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    v3 = *(a1 + 32);
  }

  else
  {
    v9 = 2;
  }

  v4 = (v9 + v4);
LABEL_21:
  if ((v3 & 4) != 0)
  {
    v10 = *(a1 + 16);
    if (!v10)
    {
      v10 = *(qword_102636D08 + 16);
    }

    v11 = sub_100430DBC(v10, a2);
    v13 = v11;
    if (v11 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, v12);
    }

    else
    {
      v14 = 1;
    }

    v4 = (v4 + v13 + v14 + 1);
  }

LABEL_28:
  *(a1 + 28) = v4;
  return v4;
}

float sub_1004318B0(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100430F74(a1, lpsrc);
}

double sub_100431950(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (*(a2 + 20))
  {
    *(a1 + 20) |= 1u;
    v5 = *(a1 + 8);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 8);
    if (!v6)
    {
      v6 = *(qword_102636D10 + 8);
    }

    return sub_10041ED1C(v5, v6);
  }

  return result;
}

void sub_100431A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100431A54(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636D10;
  if (!qword_102636D10)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636D10;
  }

  return result;
}

uint64_t sub_100431AD0(uint64_t result)
{
  if (*(result + 20))
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

  *(result + 20) = 0;
  return result;
}

uint64_t sub_100431AFC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      if (TagFallback != 10)
      {
        break;
      }

      *(a1 + 20) |= 1u;
      v7 = *(a1 + 8);
      if (!v7)
      {
        operator new();
      }

      v17 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || *v8 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v17))
        {
          return 0;
        }
      }

      else
      {
        v17 = *v8;
        *(this + 1) = v8 + 1;
      }

      v9 = *(this + 14);
      v10 = *(this + 15);
      *(this + 14) = v9 + 1;
      if (v9 >= v10)
      {
        return 0;
      }

      v11 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v17);
      if (!sub_10041EEC4(v7, this, v12) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v11);
      v13 = *(this + 14);
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v15 < 0 == v14)
      {
        *(this + 14) = v15;
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

double sub_100431CC8(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100431950(a1, lpsrc);
}

float sub_100431D68(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v5) = *(a2 + 52);
  if (!v5)
  {
    return *&v4;
  }

  if (*(a2 + 52))
  {
    *(a1 + 52) |= 1u;
    v7 = *(a1 + 8);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 8);
    if (!v8)
    {
      v8 = *(qword_102636D18 + 8);
    }

    v4 = sub_10041ED1C(v7, v8);
    v5 = *(a2 + 52);
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

  else if ((*(a2 + 52) & 2) == 0)
  {
    goto LABEL_6;
  }

  v4 = *(a2 + 16);
  *(a1 + 52) |= 2u;
  *(a1 + 16) = v4;
  v5 = *(a2 + 52);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v4 = *(a2 + 24);
  *(a1 + 52) |= 4u;
  *(a1 + 24) = v4;
  v5 = *(a2 + 52);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  LODWORD(v4) = *(a2 + 32);
  *(a1 + 52) |= 8u;
  *(a1 + 32) = LODWORD(v4);
  v5 = *(a2 + 52);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    LODWORD(v4) = *(a2 + 40);
    *(a1 + 52) |= 0x20u;
    *(a1 + 40) = LODWORD(v4);
    if ((*(a2 + 52) & 0x40) != 0)
    {
      goto LABEL_11;
    }

    return *&v4;
  }

LABEL_21:
  LODWORD(v4) = *(a2 + 36);
  *(a1 + 52) |= 0x10u;
  *(a1 + 36) = LODWORD(v4);
  v5 = *(a2 + 52);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v5 & 0x40) != 0)
  {
LABEL_11:
    v6 = *(a2 + 44);
    *(a1 + 52) |= 0x40u;
    *(a1 + 44) = v6;
  }

  return *&v4;
}

void sub_100431F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100431F30(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102452E00;
  if (qword_102636D18 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_100431FC0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100431F30(a1);

  operator delete();
}

uint64_t sub_100431FF8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636D18;
  if (!qword_102636D18)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636D18;
  }

  return result;
}

uint64_t sub_100432080(uint64_t result)
{
  if (*(result + 52))
  {
    if (*(result + 52))
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

    *(result + 16) = 0u;
    *(result + 32) = 0u;
  }

  *(result + 52) = 0;
  return result;
}

uint64_t sub_1004320B8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        if (TagFallback >> 3 > 5)
        {
          if (v7 == 6)
          {
            if (v8 == 5)
            {
              goto LABEL_60;
            }
          }

          else if (v7 == 7 && (TagFallback & 7) == 0)
          {
            v10 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_64;
          }

          goto LABEL_32;
        }

        if (v7 == 4)
        {
          if (v8 != 5)
          {
            goto LABEL_32;
          }

LABEL_52:
          v29[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v29) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v29[0];
          *(a1 + 52) |= 8u;
          v23 = *(this + 1);
          if (v23 < *(this + 2) && *v23 == 45)
          {
            *(this + 1) = v23 + 1;
LABEL_56:
            v29[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v29) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 36) = v29[0];
            *(a1 + 52) |= 0x10u;
            v24 = *(this + 1);
            if (v24 < *(this + 2) && *v24 == 53)
            {
              *(this + 1) = v24 + 1;
LABEL_60:
              v29[0] = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v29) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 40) = v29[0];
              *(a1 + 52) |= 0x20u;
              v25 = *(this + 1);
              v9 = *(this + 2);
              if (v25 < v9 && *v25 == 56)
              {
                v10 = v25 + 1;
                *(this + 1) = v10;
LABEL_64:
                v29[0] = 0;
                if (v10 >= v9 || (v26 = *v10, (v26 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v29);
                  if (!result)
                  {
                    return result;
                  }

                  v26 = v29[0];
                  v27 = *(this + 1);
                  v9 = *(this + 2);
                }

                else
                {
                  v27 = v10 + 1;
                  *(this + 1) = v27;
                }

                *(a1 + 44) = v26;
                *(a1 + 52) |= 0x40u;
                if (v27 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
          if (v7 == 5 && v8 == 5)
          {
            goto LABEL_56;
          }

LABEL_32:
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

      if (v7 == 1)
      {
        break;
      }

      if (v7 != 2)
      {
        if (v7 != 3 || v8 != 1)
        {
          goto LABEL_32;
        }

        goto LABEL_48;
      }

      if (v8 != 1)
      {
        goto LABEL_32;
      }

LABEL_44:
      *v29 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v29) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = *v29;
      *(a1 + 52) |= 2u;
      v21 = *(this + 1);
      if (v21 < *(this + 2) && *v21 == 25)
      {
        *(this + 1) = v21 + 1;
LABEL_48:
        *v29 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v29) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v29;
        *(a1 + 52) |= 4u;
        v22 = *(this + 1);
        if (v22 < *(this + 2) && *v22 == 37)
        {
          *(this + 1) = v22 + 1;
          goto LABEL_52;
        }
      }
    }

    if (v8 != 2)
    {
      goto LABEL_32;
    }

    *(a1 + 52) |= 1u;
    v11 = *(a1 + 8);
    if (!v11)
    {
      operator new();
    }

    v29[0] = 0;
    v12 = *(this + 1);
    if (v12 >= *(this + 2) || *v12 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v29))
      {
        return 0;
      }
    }

    else
    {
      v29[0] = *v12;
      *(this + 1) = v12 + 1;
    }

    v13 = *(this + 14);
    v14 = *(this + 15);
    *(this + 14) = v13 + 1;
    if (v13 >= v14)
    {
      return 0;
    }

    v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v29[0]);
    if (!sub_10041EEC4(v11, this, v16) || *(this + 36) != 1)
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

    v20 = *(this + 1);
    if (v20 < *(this + 2) && *v20 == 17)
    {
      *(this + 1) = v20 + 1;
      goto LABEL_44;
    }
  }
}

uint64_t sub_1004324E4(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 52);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636D18 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 52);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 52);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 52);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 52);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 40), a3);
    if ((*(v5 + 52) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 36), a3);
  v6 = *(v5 + 52);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return result;
  }

LABEL_17:
  v8 = *(v5 + 44);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, v8, a2, a4);
}

uint64_t sub_1004325F0(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 52);
  if (v3)
  {
    if (*(a1 + 52))
    {
      v6 = *(a1 + 8);
      if (!v6)
      {
        v6 = *(qword_102636D18 + 8);
      }

      v7 = *(v6 + 36);
      if (*(v6 + 36))
      {
        v8 = (v7 << 31 >> 31) & 9;
        if ((v7 & 2) != 0)
        {
          v8 += 9;
        }

        if ((v7 & 4) != 0)
        {
          v7 = v8 + 9;
        }

        else
        {
          v7 = v8;
        }
      }

      *(v6 + 32) = v7;
      v4 = v7 + 2;
      v3 = *(a1 + 52);
    }

    else
    {
      v4 = 0;
    }

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
      v4 += 5;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x20) != 0)
    {
      v5 = v4 + 5;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 0x40) != 0)
    {
      v9 = *(a1 + 44);
      if ((v9 & 0x80000000) != 0)
      {
        v10 = 11;
      }

      else if (v9 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      }

      else
      {
        v10 = 2;
      }

      v5 = (v10 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 48) = v5;
  return v5;
}

float sub_1004326EC(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100431D68(a1, lpsrc);
}

void sub_10043278C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  v4 = *(a2 + 96);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    *(a1 + 96) |= 1u;
    v7 = *(a1 + 8);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 8);
    if (!v8)
    {
      v8 = *(qword_102636D20 + 8);
    }

    sub_10041ED1C(v7, v8);
    v4 = *(a2 + 96);
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
  *(a1 + 96) |= 2u;
  *(a1 + 16) = v9;
  v4 = *(a2 + 96);
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
  *(a1 + 96) |= 4u;
  *(a1 + 24) = v10;
  v4 = *(a2 + 96);
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
  *(a1 + 96) |= 8u;
  *(a1 + 32) = v11;
  v4 = *(a2 + 96);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_31:
    v13 = *(a2 + 48);
    *(a1 + 96) |= 0x20u;
    *(a1 + 48) = v13;
    v4 = *(a2 + 96);
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
  *(a1 + 96) |= 0x10u;
  *(a1 + 40) = v12;
  v4 = *(a2 + 96);
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
  v14 = *(a2 + 56);
  *(a1 + 96) |= 0x40u;
  *(a1 + 56) = v14;
  v4 = *(a2 + 96);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 64);
    *(a1 + 96) |= 0x80u;
    *(a1 + 64) = v5;
    v4 = *(a2 + 96);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v15 = *(a2 + 72);
    *(a1 + 96) |= 0x100u;
    *(a1 + 72) = v15;
    v4 = *(a2 + 96);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_36;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(a2 + 80);
  *(a1 + 96) |= 0x200u;
  *(a1 + 80) = v16;
  v4 = *(a2 + 96);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  v17 = *(a2 + 88);
  *(a1 + 96) |= 0x400u;
  *(a1 + 88) = v17;
  v4 = *(a2 + 96);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  v18 = *(a2 + 89);
  *(a1 + 96) |= 0x800u;
  *(a1 + 89) = v18;
  v4 = *(a2 + 96);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

LABEL_38:
  v19 = *(a2 + 90);
  *(a1 + 96) |= 0x1000u;
  *(a1 + 90) = v19;
  if ((*(a2 + 96) & 0x2000) == 0)
  {
    return;
  }

LABEL_20:
  v6 = *(a2 + 91);
  *(a1 + 96) |= 0x2000u;
  *(a1 + 91) = v6;
}

void sub_100432A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100432A40(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102452E78;
  if (qword_102636D20 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_100432AD0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100432A40(a1);

  operator delete();
}

uint64_t sub_100432B6C(uint64_t result)
{
  v1 = *(result + 96);
  if (v1)
  {
    if (v1)
    {
      v2 = *(result + 8);
      if (v2)
      {
        if (*(v2 + 36))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 36) = 0;
        v1 = *(result + 96);
      }
    }

    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 16) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
  }

  *(result + 96) = 0;
  return result;
}

uint64_t sub_100432BC4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        *(a1 + 96) |= 1u;
        v8 = *(a1 + 8);
        if (!v8)
        {
          operator new();
        }

        v41[0] = 0;
        v9 = *(this + 1);
        if (v9 >= *(this + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v41))
          {
            return 0;
          }
        }

        else
        {
          v41[0] = *v9;
          *(this + 1) = v9 + 1;
        }

        v15 = *(this + 14);
        v16 = *(this + 15);
        *(this + 14) = v15 + 1;
        if (v15 >= v16)
        {
          return 0;
        }

        v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v41[0]);
        if (!sub_10041EEC4(v8, this, v18) || *(this + 36) != 1)
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
        if (v22 >= *(this + 2) || *v22 != 17)
        {
          continue;
        }

        *(this + 1) = v22 + 1;
        goto LABEL_50;
      case 2u:
        if (v7 != 1)
        {
          goto LABEL_38;
        }

LABEL_50:
        *v41 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v41) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v41;
        *(a1 + 96) |= 2u;
        v23 = *(this + 1);
        if (v23 >= *(this + 2) || *v23 != 25)
        {
          continue;
        }

        *(this + 1) = v23 + 1;
LABEL_54:
        *v41 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v41) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v41;
        *(a1 + 96) |= 4u;
        v24 = *(this + 1);
        if (v24 >= *(this + 2) || *v24 != 33)
        {
          continue;
        }

        *(this + 1) = v24 + 1;
LABEL_58:
        *v41 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v41) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v41;
        *(a1 + 96) |= 8u;
        v25 = *(this + 1);
        if (v25 >= *(this + 2) || *v25 != 41)
        {
          continue;
        }

        *(this + 1) = v25 + 1;
LABEL_62:
        *v41 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v41) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = *v41;
        *(a1 + 96) |= 0x10u;
        v26 = *(this + 1);
        if (v26 >= *(this + 2) || *v26 != 49)
        {
          continue;
        }

        *(this + 1) = v26 + 1;
LABEL_66:
        *v41 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v41) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = *v41;
        *(a1 + 96) |= 0x20u;
        v27 = *(this + 1);
        if (v27 >= *(this + 2) || *v27 != 57)
        {
          continue;
        }

        *(this + 1) = v27 + 1;
LABEL_70:
        *v41 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v41) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 56) = *v41;
        *(a1 + 96) |= 0x40u;
        v28 = *(this + 1);
        if (v28 >= *(this + 2) || *v28 != 65)
        {
          continue;
        }

        *(this + 1) = v28 + 1;
LABEL_74:
        *v41 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v41) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = *v41;
        *(a1 + 96) |= 0x80u;
        v29 = *(this + 1);
        if (v29 >= *(this + 2) || *v29 != 73)
        {
          continue;
        }

        *(this + 1) = v29 + 1;
LABEL_78:
        *v41 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v41) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 72) = *v41;
        *(a1 + 96) |= 0x100u;
        v30 = *(this + 1);
        if (v30 >= *(this + 2) || *v30 != 81)
        {
          continue;
        }

        *(this + 1) = v30 + 1;
LABEL_82:
        *v41 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v41))
        {
          *(a1 + 80) = *v41;
          *(a1 + 96) |= 0x200u;
          v31 = *(this + 1);
          v10 = *(this + 2);
          if (v31 < v10 && *v31 == 88)
          {
            v14 = v31 + 1;
            *(this + 1) = v14;
LABEL_86:
            v41[0] = 0;
            if (v14 >= v10 || (v32 = *v14, (v32 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v41);
              if (!result)
              {
                return result;
              }

              v32 = v41[0];
              v33 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              v33 = v14 + 1;
              *(this + 1) = v33;
            }

            *(a1 + 88) = v32 != 0;
            *(a1 + 96) |= 0x400u;
            if (v33 < v10 && *v33 == 96)
            {
              v11 = v33 + 1;
              *(this + 1) = v11;
LABEL_94:
              v41[0] = 0;
              if (v11 >= v10 || (v35 = *v11, (v35 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v41);
                if (!result)
                {
                  return result;
                }

                v35 = v41[0];
                v36 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                v36 = v11 + 1;
                *(this + 1) = v36;
              }

              *(a1 + 89) = v35 != 0;
              *(a1 + 96) |= 0x800u;
              if (v36 < v10 && *v36 == 104)
              {
                v12 = v36 + 1;
                *(this + 1) = v12;
LABEL_102:
                v41[0] = 0;
                if (v12 >= v10 || (v37 = *v12, (v37 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v41);
                  if (!result)
                  {
                    return result;
                  }

                  v37 = v41[0];
                  v38 = *(this + 1);
                  v10 = *(this + 2);
                }

                else
                {
                  v38 = v12 + 1;
                  *(this + 1) = v38;
                }

                *(a1 + 90) = v37 != 0;
                *(a1 + 96) |= 0x1000u;
                if (v38 < v10 && *v38 == 112)
                {
                  v13 = v38 + 1;
                  *(this + 1) = v13;
LABEL_110:
                  v41[0] = 0;
                  if (v13 >= v10 || (v39 = *v13, (v39 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v41);
                    if (!result)
                    {
                      return result;
                    }

                    v39 = v41[0];
                    v40 = *(this + 1);
                    v10 = *(this + 2);
                  }

                  else
                  {
                    v40 = v13 + 1;
                    *(this + 1) = v40;
                  }

                  *(a1 + 91) = v39 != 0;
                  *(a1 + 96) |= 0x2000u;
                  if (v40 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

          continue;
        }

        return 0;
      case 3u:
        if (v7 == 1)
        {
          goto LABEL_54;
        }

        goto LABEL_38;
      case 4u:
        if (v7 == 1)
        {
          goto LABEL_58;
        }

        goto LABEL_38;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_62;
        }

        goto LABEL_38;
      case 6u:
        if (v7 == 1)
        {
          goto LABEL_66;
        }

        goto LABEL_38;
      case 7u:
        if (v7 == 1)
        {
          goto LABEL_70;
        }

        goto LABEL_38;
      case 8u:
        if (v7 == 1)
        {
          goto LABEL_74;
        }

        goto LABEL_38;
      case 9u:
        if (v7 != 1)
        {
          goto LABEL_38;
        }

        goto LABEL_78;
      case 0xAu:
        if (v7 == 1)
        {
          goto LABEL_82;
        }

        goto LABEL_38;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v14 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_86;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_94;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v12 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_102;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v13 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_110;
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

uint64_t sub_100433294(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 96);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636D20 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 96);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 96);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
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

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 96);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 96);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 96);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 96);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 80), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xB, *(v5 + 88), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_30:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xD, *(v5 + 90), a2, a4);
    if ((*(v5 + 96) & 0x2000) == 0)
    {
      return result;
    }

    goto LABEL_31;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xC, *(v5 + 89), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_30;
  }

LABEL_14:
  if ((v6 & 0x2000) == 0)
  {
    return result;
  }

LABEL_31:
  v8 = *(v5 + 91);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xE, v8, a2, a4);
}

uint64_t sub_100433464(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    if (v1)
    {
      v2 = *(a1 + 8);
      if (!v2)
      {
        v2 = *(qword_102636D20 + 8);
      }

      v3 = *(v2 + 36);
      if (*(v2 + 36))
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

      *(v2 + 32) = v3;
      LODWORD(v2) = v3 + 2;
      v1 = *(a1 + 96);
    }

    else
    {
      LODWORD(v2) = 0;
    }

    if ((v1 & 2) != 0)
    {
      LODWORD(v2) = v2 + 9;
    }

    if ((v1 & 4) != 0)
    {
      LODWORD(v2) = v2 + 9;
    }

    if ((v1 & 8) != 0)
    {
      LODWORD(v2) = v2 + 9;
    }

    if ((v1 & 0x10) != 0)
    {
      LODWORD(v2) = v2 + 9;
    }

    if ((v1 & 0x20) != 0)
    {
      LODWORD(v2) = v2 + 9;
    }

    if ((v1 & 0x40) != 0)
    {
      LODWORD(v2) = v2 + 9;
    }

    if ((v1 & 0x80) != 0)
    {
      v2 = (v2 + 9);
    }

    else
    {
      v2 = v2;
    }
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    if ((v1 & 0x100) != 0)
    {
      LODWORD(v2) = v2 + 9;
    }

    if ((v1 & 0x200) != 0)
    {
      LODWORD(v2) = v2 + 9;
    }

    v5.i64[0] = 0x200000002;
    v5.i64[1] = 0x200000002;
    v2 = (vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v1), xmmword_101C77200), v5)) + v2);
  }

  *(a1 + 92) = v2;
  return v2;
}

void sub_100433574(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10043278C(a1, lpsrc);
}

void sub_100433614(uint64_t a1, uint64_t a2)
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
      *(a1 + 32) |= 1u;
      v5 = *(a1 + 8);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 8);
      if (!v6)
      {
        v6 = *(qword_102636D28 + 8);
      }

      sub_10041ED1C(v5, v6);
      v4 = *(a2 + 32);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 24);
    *(a1 + 32) |= 2u;
    *(a1 + 24) = v7;
    if ((*(a2 + 32) & 4) == 0)
    {
      return;
    }

LABEL_14:
    *(a1 + 32) |= 4u;
    v8 = *(a1 + 16);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 16);
    if (!v9)
    {
      v9 = *(qword_102636D28 + 16);
    }

    sub_10043278C(v8, v9);
  }
}

void sub_1004337B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1004337C8(void *result)
{
  if (qword_102636D28 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[2];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_100433868(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452EF0;
  sub_1004337C8(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1004338BC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452EF0;
  sub_1004337C8(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100433924(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636D28;
  if (!qword_102636D28)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636D28;
  }

  return result;
}

uint64_t sub_1004339A4(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 32);
  if (v2)
  {
    if (*(result + 32))
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
        v2 = *(result + 32);
      }
    }

    *(result + 24) = 0;
    if ((v2 & 4) != 0)
    {
      result = *(result + 16);
      if (result)
      {
        result = sub_100432B6C(result);
      }
    }
  }

  *(v1 + 32) = 0;
  return result;
}

uint64_t sub_100433A08(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (v8 == 2)
        {
          v13 = *(a1 + 32);
          goto LABEL_39;
        }

        goto LABEL_18;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 2)
      {
        goto LABEL_18;
      }

      *(a1 + 32) |= 1u;
      v9 = *(a1 + 8);
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

      v14 = *(this + 14);
      v15 = *(this + 15);
      *(this + 14) = v14 + 1;
      if (v14 >= v15)
      {
        return 0;
      }

      v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v34);
      if (!sub_10041EEC4(v9, this, v17) || *(this + 36) != 1)
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

      v21 = *(this + 1);
      v11 = *(this + 2);
      if (v21 < v11 && *v21 == 16)
      {
        v12 = v21 + 1;
        *(this + 1) = v12;
LABEL_31:
        v33 = 0;
        if (v12 >= v11 || (v22 = *v12, (v22 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v33);
          if (!result)
          {
            return result;
          }

          v22 = v33;
          v23 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          v23 = v12 + 1;
          *(this + 1) = v23;
        }

        *(a1 + 24) = v22;
        v13 = *(a1 + 32) | 2;
        *(a1 + 32) = v13;
        if (v23 < v11 && *v23 == 26)
        {
          *(this + 1) = v23 + 1;
LABEL_39:
          *(a1 + 32) = v13 | 4;
          v25 = *(a1 + 16);
          if (!v25)
          {
            operator new();
          }

          v35 = 0;
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35))
            {
              return 0;
            }
          }

          else
          {
            v35 = *v26;
            *(this + 1) = v26 + 1;
          }

          v27 = *(this + 14);
          v28 = *(this + 15);
          *(this + 14) = v27 + 1;
          if (v27 >= v28)
          {
            return 0;
          }

          v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v35);
          if (!sub_100432BC4(v25, this, v30) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v29);
          v31 = *(this + 14);
          v19 = __OFSUB__(v31, 1);
          v32 = v31 - 1;
          if (v32 < 0 == v19)
          {
            *(this + 14) = v32;
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

    if ((TagFallback & 7) == 0)
    {
      v12 = *(this + 1);
      v11 = *(this + 2);
      goto LABEL_31;
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
}