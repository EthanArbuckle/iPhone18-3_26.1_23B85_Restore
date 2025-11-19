void sub_100451A50(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100450EBC(a1, lpsrc);
}

void sub_100451AF0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 8);
      if (v5 >= 5)
      {
        sub_101882EF4();
      }

      *(a1 + 36) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 36);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      if (v6 >= 3)
      {
        sub_101882F20();
      }

      *(a1 + 36) |= 2u;
      *(a1 + 12) = v6;
      v4 = *(a2 + 36);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 16);
      *(a1 + 36) |= 4u;
      v8 = *(a1 + 16);
      if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v4 = *(a2 + 36);
    }

    if ((v4 & 8) != 0)
    {
      v9 = *(a2 + 24);
      *(a1 + 36) |= 8u;
      v10 = *(a1 + 24);
      if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v10, v9);
    }
  }
}

void sub_100451C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100451C84(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = *(result + 24);
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  return result;
}

void sub_100451D38(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024545E8;
  sub_100451C84(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_100451D8C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024545E8;
  sub_100451C84(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100451E54(uint64_t result)
{
  v1 = *(result + 36);
  if (v1)
  {
    *(result + 8) = 0;
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

    if ((*(result + 36) & 8) != 0)
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
  }

  *(result + 36) = 0;
  return result;
}

uint64_t sub_100451ED4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
            goto LABEL_46;
          }

          goto LABEL_20;
        }

        if (v8 != 2)
        {
          goto LABEL_20;
        }

LABEL_40:
        *(a1 + 36) |= 4u;
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
LABEL_46:
          *(a1 + 36) |= 8u;
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

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v19 = 0;
      v11 = *(this + 1);
      if (v11 >= *(this + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v19);
        if (!result)
        {
          return result;
        }

        v12 = v19;
      }

      else
      {
        *(this + 1) = v11 + 1;
      }

      if (v12 <= 4)
      {
        *(a1 + 36) |= 1u;
        *(a1 + 8) = v12;
      }

      v13 = *(this + 1);
      v9 = *(this + 2);
      if (v13 < v9 && *v13 == 16)
      {
        v10 = v13 + 1;
        *(this + 1) = v10;
LABEL_30:
        v18 = 0;
        if (v10 >= v9 || (v14 = *v10, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v18);
          if (!result)
          {
            return result;
          }

          v14 = v18;
        }

        else
        {
          *(this + 1) = v10 + 1;
        }

        if (v14 <= 2)
        {
          *(a1 + 36) |= 2u;
          *(a1 + 12) = v14;
        }

        v15 = *(this + 1);
        if (v15 < *(this + 2) && *v15 == 26)
        {
          *(this + 1) = v15 + 1;
          goto LABEL_40;
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_30;
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

uint64_t sub_100452184(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      if ((*(v5 + 36) & 8) == 0)
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_9:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t sub_10045222C(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_40;
  }

  if (*(a1 + 36))
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
      v3 = *(a1 + 36);
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
    if ((*(a1 + 36) & 2) == 0)
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
    v3 = *(a1 + 36);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_19:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_31;
  }

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
    v3 = *(a1 + 36);
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
  if ((v3 & 8) != 0)
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
  *(a1 + 32) = v4;
  return v4;
}

void sub_100452398(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100451AF0(a1, lpsrc);
}

double sub_100452438(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  LOBYTE(v5) = *(a2 + 68);
  if (!v5)
  {
    return result;
  }

  if (*(a2 + 68))
  {
    *(a1 + 68) |= 1u;
    v6 = *(a1 + 8);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 8);
    if (!v7)
    {
      v7 = *(qword_102636EB8 + 8);
    }

    result = sub_10041ED1C(v6, v7);
    v5 = *(a2 + 68);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }
  }

  else if ((*(a2 + 68) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(a1 + 68) |= 2u;
  v8 = *(a1 + 16);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 16);
  if (!v9)
  {
    v9 = *(qword_102636EB8 + 16);
  }

  result = sub_10041ED1C(v8, v9);
  v5 = *(a2 + 68);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_23:
  *(a1 + 68) |= 4u;
  v10 = *(a1 + 24);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 24);
  if (!v11)
  {
    v11 = *(qword_102636EB8 + 24);
  }

  result = sub_10041ED1C(v10, v11);
  v5 = *(a2 + 68);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_33:
    *(a1 + 68) |= 0x10u;
    v14 = *(a1 + 40);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 40);
    if (!v15)
    {
      v15 = *(qword_102636EB8 + 40);
    }

    sub_100451AF0(v14, v15);
    v5 = *(a2 + 68);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_28:
  *(a1 + 68) |= 8u;
  v12 = *(a1 + 32);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 32);
  if (!v13)
  {
    v13 = *(qword_102636EB8 + 32);
  }

  result = sub_10041ED1C(v12, v13);
  v5 = *(a2 + 68);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_33;
  }

LABEL_9:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_38:
  *(a1 + 68) |= 0x20u;
  v16 = *(a1 + 48);
  if (!v16)
  {
    operator new();
  }

  v17 = *(a2 + 48);
  if (!v17)
  {
    v17 = *(qword_102636EB8 + 48);
  }

  result = sub_1004212C4(v16, v17);
  if ((*(a2 + 68) & 0x40) != 0)
  {
LABEL_11:
    result = *(a2 + 56);
    *(a1 + 68) |= 0x40u;
    *(a1 + 56) = result;
  }

  return result;
}

void sub_1004527B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1004527D0(void *result)
{
  if (qword_102636EB8 != result)
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

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    result = v1[6];
    if (result)
    {
      v7 = *(*result + 8);

      return v7();
    }
  }

  return result;
}

void sub_100452920(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102454660;
  sub_1004527D0(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_100452974(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102454660;
  sub_1004527D0(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1004529DC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636EB8;
  if (!qword_102636EB8)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636EB8;
  }

  return result;
}

uint64_t sub_100452A68(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 68);
  if (v2)
  {
    if (*(result + 68))
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
        v2 = *(result + 68);
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
        v2 = *(result + 68);
      }
    }

    if ((v2 & 4) != 0)
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
        v2 = *(result + 68);
      }
    }

    if ((v2 & 8) != 0)
    {
      v6 = *(result + 32);
      if (v6)
      {
        if (*(v6 + 36))
        {
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
        }

        *(v6 + 36) = 0;
        v2 = *(result + 68);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      result = *(result + 40);
      if (result)
      {
        result = sub_100451E54(result);
        v2 = *(v1 + 68);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      v7 = *(v1 + 48);
      if (v7)
      {
        if (*(v7 + 28))
        {
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
        }

        *(v7 + 28) = 0;
      }
    }

    *(v1 + 56) = 0;
  }

  *(v1 + 68) = 0;
  return result;
}

uint64_t sub_100452B58(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (TagFallback >> 3 > 3)
          {
            break;
          }

          if (v7 == 1)
          {
            if (v8 != 2)
            {
              goto LABEL_32;
            }

            *(a1 + 68) |= 1u;
            v9 = *(a1 + 8);
            if (!v9)
            {
              operator new();
            }

            v65[0] = 0;
            v10 = *(this + 1);
            if (v10 >= *(this + 2) || *v10 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v65))
              {
                return 0;
              }
            }

            else
            {
              v65[0] = *v10;
              *(this + 1) = v10 + 1;
            }

            v11 = *(this + 14);
            v12 = *(this + 15);
            *(this + 14) = v11 + 1;
            if (v11 >= v12)
            {
              return 0;
            }

            v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v65[0]);
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
            if (v18 < *(this + 2) && *v18 == 18)
            {
              *(this + 1) = v18 + 1;
              goto LABEL_44;
            }
          }

          else
          {
            if (v7 != 2)
            {
              if (v7 != 3 || v8 != 2)
              {
                goto LABEL_32;
              }

              goto LABEL_58;
            }

            if (v8 != 2)
            {
              goto LABEL_32;
            }

LABEL_44:
            *(a1 + 68) |= 2u;
            v19 = *(a1 + 16);
            if (!v19)
            {
              operator new();
            }

            v65[0] = 0;
            v20 = *(this + 1);
            if (v20 >= *(this + 2) || *v20 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v65))
              {
                return 0;
              }
            }

            else
            {
              v65[0] = *v20;
              *(this + 1) = v20 + 1;
            }

            v21 = *(this + 14);
            v22 = *(this + 15);
            *(this + 14) = v21 + 1;
            if (v21 >= v22)
            {
              return 0;
            }

            v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v65[0]);
            if (!sub_10041EEC4(v19, this, v24) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v23);
            v25 = *(this + 14);
            v16 = __OFSUB__(v25, 1);
            v26 = v25 - 1;
            if (v26 < 0 == v16)
            {
              *(this + 14) = v26;
            }

            v27 = *(this + 1);
            if (v27 < *(this + 2) && *v27 == 26)
            {
              *(this + 1) = v27 + 1;
LABEL_58:
              *(a1 + 68) |= 4u;
              v28 = *(a1 + 24);
              if (!v28)
              {
                operator new();
              }

              v65[0] = 0;
              v29 = *(this + 1);
              if (v29 >= *(this + 2) || *v29 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v65))
                {
                  return 0;
                }
              }

              else
              {
                v65[0] = *v29;
                *(this + 1) = v29 + 1;
              }

              v30 = *(this + 14);
              v31 = *(this + 15);
              *(this + 14) = v30 + 1;
              if (v30 >= v31)
              {
                return 0;
              }

              v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v65[0]);
              if (!sub_10041EEC4(v28, this, v33) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v32);
              v34 = *(this + 14);
              v16 = __OFSUB__(v34, 1);
              v35 = v34 - 1;
              if (v35 < 0 == v16)
              {
                *(this + 14) = v35;
              }

              v36 = *(this + 1);
              if (v36 < *(this + 2) && *v36 == 34)
              {
                *(this + 1) = v36 + 1;
                goto LABEL_72;
              }
            }
          }
        }

        if (TagFallback >> 3 <= 5)
        {
          break;
        }

        if (v7 == 6)
        {
          if (v8 == 2)
          {
            goto LABEL_100;
          }

          goto LABEL_32;
        }

        if (v7 != 7 || v8 != 1)
        {
          goto LABEL_32;
        }

LABEL_114:
        *v65 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v65) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 56) = *v65;
        *(a1 + 68) |= 0x40u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_32;
      }

LABEL_72:
      *(a1 + 68) |= 8u;
      v37 = *(a1 + 32);
      if (!v37)
      {
        operator new();
      }

      v65[0] = 0;
      v38 = *(this + 1);
      if (v38 >= *(this + 2) || *v38 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v65))
        {
          return 0;
        }
      }

      else
      {
        v65[0] = *v38;
        *(this + 1) = v38 + 1;
      }

      v39 = *(this + 14);
      v40 = *(this + 15);
      *(this + 14) = v39 + 1;
      if (v39 >= v40)
      {
        return 0;
      }

      v41 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v65[0]);
      if (!sub_10041EEC4(v37, this, v42) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v41);
      v43 = *(this + 14);
      v16 = __OFSUB__(v43, 1);
      v44 = v43 - 1;
      if (v44 < 0 == v16)
      {
        *(this + 14) = v44;
      }

      v45 = *(this + 1);
      if (v45 < *(this + 2) && *v45 == 42)
      {
        *(this + 1) = v45 + 1;
LABEL_86:
        *(a1 + 68) |= 0x10u;
        v46 = *(a1 + 40);
        if (!v46)
        {
          operator new();
        }

        v65[0] = 0;
        v47 = *(this + 1);
        if (v47 >= *(this + 2) || *v47 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v65))
          {
            return 0;
          }
        }

        else
        {
          v65[0] = *v47;
          *(this + 1) = v47 + 1;
        }

        v48 = *(this + 14);
        v49 = *(this + 15);
        *(this + 14) = v48 + 1;
        if (v48 >= v49)
        {
          return 0;
        }

        v50 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v65[0]);
        if (!sub_100451ED4(v46, this, v51) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v50);
        v52 = *(this + 14);
        v16 = __OFSUB__(v52, 1);
        v53 = v52 - 1;
        if (v53 < 0 == v16)
        {
          *(this + 14) = v53;
        }

        v54 = *(this + 1);
        if (v54 < *(this + 2) && *v54 == 50)
        {
          *(this + 1) = v54 + 1;
LABEL_100:
          *(a1 + 68) |= 0x20u;
          v55 = *(a1 + 48);
          if (!v55)
          {
            operator new();
          }

          v65[0] = 0;
          v56 = *(this + 1);
          if (v56 >= *(this + 2) || *v56 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v65))
            {
              return 0;
            }
          }

          else
          {
            v65[0] = *v56;
            *(this + 1) = v56 + 1;
          }

          v57 = *(this + 14);
          v58 = *(this + 15);
          *(this + 14) = v57 + 1;
          if (v57 >= v58)
          {
            return 0;
          }

          v59 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v65[0]);
          if (!sub_100421408(v55, this, v60) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v59);
          v61 = *(this + 14);
          v16 = __OFSUB__(v61, 1);
          v62 = v61 - 1;
          if (v62 < 0 == v16)
          {
            *(this + 14) = v62;
          }

          v63 = *(this + 1);
          if (v63 < *(this + 2) && *v63 == 57)
          {
            *(this + 1) = v63 + 1;
            goto LABEL_114;
          }
        }
      }
    }

    if (v7 == 5 && v8 == 2)
    {
      goto LABEL_86;
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

uint64_t sub_100453340(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 68);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636EB8 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 68);
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

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102636EB8 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_15:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(qword_102636EB8 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_18:
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(qword_102636EB8 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_21:
  v11 = *(v5 + 40);
  if (!v11)
  {
    v11 = *(qword_102636EB8 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v11, a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_24:
  v12 = *(v5 + 48);
  if (!v12)
  {
    v12 = *(qword_102636EB8 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v12, a2, a4);
  if ((*(v5 + 68) & 0x40) != 0)
  {
LABEL_27:
    v13 = *(v5 + 56);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, v13, a3);
  }

  return result;
}

uint64_t sub_10045349C(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 68);
  if (!v3)
  {
    result = 0;
    goto LABEL_63;
  }

  if ((*(a1 + 68) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 68) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    v6 = *(qword_102636EB8 + 8);
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
  v3 = *(a1 + 68);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v9 = *(a1 + 16);
    if (!v9)
    {
      v9 = *(qword_102636EB8 + 16);
    }

    v10 = *(v9 + 36);
    if (*(v9 + 36))
    {
      v11 = (v10 << 31 >> 31) & 9;
      if ((v10 & 2) != 0)
      {
        v11 += 9;
      }

      if ((v10 & 4) != 0)
      {
        v10 = v11 + 9;
      }

      else
      {
        v10 = v11;
      }
    }

    *(v9 + 32) = v10;
    v4 += v10 + 2;
    v3 = *(a1 + 68);
  }

LABEL_24:
  if ((v3 & 4) != 0)
  {
    v12 = *(a1 + 24);
    if (!v12)
    {
      v12 = *(qword_102636EB8 + 24);
    }

    v13 = *(v12 + 36);
    if (*(v12 + 36))
    {
      v14 = (v13 << 31 >> 31) & 9;
      if ((v13 & 2) != 0)
      {
        v14 += 9;
      }

      if ((v13 & 4) != 0)
      {
        v13 = v14 + 9;
      }

      else
      {
        v13 = v14;
      }
    }

    *(v12 + 32) = v13;
    v4 += v13 + 2;
    v3 = *(a1 + 68);
    if ((v3 & 8) == 0)
    {
LABEL_26:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_27;
      }

LABEL_47:
      v18 = *(a1 + 40);
      if (!v18)
      {
        v18 = *(qword_102636EB8 + 40);
      }

      v19 = sub_10045222C(v18, a2);
      v21 = v19;
      if (v19 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, v20);
      }

      else
      {
        v22 = 1;
      }

      v4 += v21 + v22 + 1;
      v3 = *(a1 + 68);
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_53;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_26;
  }

  v15 = *(a1 + 32);
  if (!v15)
  {
    v15 = *(qword_102636EB8 + 32);
  }

  v16 = *(v15 + 36);
  if (*(v15 + 36))
  {
    v17 = (v16 << 31 >> 31) & 9;
    if ((v16 & 2) != 0)
    {
      v17 += 9;
    }

    if ((v16 & 4) != 0)
    {
      v16 = v17 + 9;
    }

    else
    {
      v16 = v17;
    }
  }

  *(v15 + 32) = v16;
  v4 += v16 + 2;
  v3 = *(a1 + 68);
  if ((v3 & 0x10) != 0)
  {
    goto LABEL_47;
  }

LABEL_27:
  if ((v3 & 0x20) != 0)
  {
LABEL_53:
    v23 = *(a1 + 48);
    if (!v23)
    {
      v23 = *(qword_102636EB8 + 48);
    }

    v24 = *(v23 + 28);
    if (*(v23 + 28))
    {
      if ((v24 & 2) != 0)
      {
        v24 = ((v24 << 31 >> 31) & 9) + 9;
      }

      else
      {
        v24 = (v24 << 31 >> 31) & 9;
      }
    }

    *(v23 + 24) = v24;
    v4 += v24 + 2;
    v3 = *(a1 + 68);
  }

LABEL_60:
  if ((v3 & 0x40) != 0)
  {
    result = v4 + 9;
  }

  else
  {
    result = v4;
  }

LABEL_63:
  *(a1 + 64) = result;
  return result;
}

double sub_1004536DC(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100452438(a1, lpsrc);
}

float sub_10045377C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v5) = *(a2 + 56);
  if (v5)
  {
    if (*(a2 + 56))
    {
      v4 = *(a2 + 8);
      *(a1 + 56) |= 1u;
      *(a1 + 8) = v4;
      v5 = *(a2 + 56);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }
    }

    else if ((*(a2 + 56) & 2) == 0)
    {
      goto LABEL_6;
    }

    v4 = *(a2 + 16);
    *(a1 + 56) |= 2u;
    *(a1 + 16) = v4;
    v5 = *(a2 + 56);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }

LABEL_20:
    v8 = *(a2 + 24);
    if (v8 >= 3)
    {
      sub_101882F4C();
    }

    *(a1 + 56) |= 4u;
    *(a1 + 24) = v8;
    v5 = *(a2 + 56);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
LABEL_10:
        if ((v5 & 0x20) != 0)
        {
          v6 = *(a2 + 40);
          if (v6 >= 4)
          {
            sub_101882FA4();
          }

          *(a1 + 56) |= 0x20u;
          *(a1 + 40) = v6;
          v5 = *(a2 + 56);
        }

        if ((v5 & 0x40) != 0)
        {
          v7 = *(a2 + 44);
          *(a1 + 56) |= 0x40u;
          *(a1 + 44) = v7;
          v5 = *(a2 + 56);
        }

        if ((v5 & 0x80) != 0)
        {
          LODWORD(v4) = *(a2 + 48);
          *(a1 + 56) |= 0x80u;
          *(a1 + 48) = v4;
        }

        return *&v4;
      }

LABEL_9:
      v4 = *(a2 + 32);
      *(a1 + 56) |= 0x10u;
      *(a1 + 32) = v4;
      v5 = *(a2 + 56);
      goto LABEL_10;
    }

LABEL_22:
    v9 = *(a2 + 28);
    if (v9 >= 4)
    {
      sub_101882F78();
    }

    *(a1 + 56) |= 8u;
    *(a1 + 28) = v9;
    v5 = *(a2 + 56);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return *&v4;
}

void sub_100453908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100453940(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636EC0;
  if (!qword_102636EC0)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636EC0;
  }

  return result;
}

uint64_t sub_1004539D0(uint64_t result)
{
  if (*(result + 56))
  {
    *(result + 48) = 0;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 37) = 0;
  }

  *(result + 56) = 0;
  return result;
}

uint64_t sub_1004539F4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (TagFallback >> 3 <= 4)
          {
            break;
          }

          if (TagFallback >> 3 <= 6)
          {
            if (v7 == 5)
            {
              if (v8 == 1)
              {
                goto LABEL_63;
              }
            }

            else if (v7 == 6 && (TagFallback & 7) == 0)
            {
              v10 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_67;
            }

            goto LABEL_42;
          }

          if (v7 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(this + 1);
              v18 = *(this + 2);
              goto LABEL_77;
            }

            goto LABEL_42;
          }

          if (v7 != 8 || v8 != 5)
          {
            goto LABEL_42;
          }

LABEL_85:
          v29[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v29) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 48) = v29[0];
          *(a1 + 56) |= 0x80u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }

        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 != 3)
        {
          if (v7 == 4 && (TagFallback & 7) == 0)
          {
            v12 = *(this + 1);
            v11 = *(this + 2);
            goto LABEL_53;
          }

          goto LABEL_42;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v16 = *(this + 1);
        v14 = *(this + 2);
LABEL_38:
        v29[0] = 0;
        if (v16 >= v14 || (v17 = *v16, (v17 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v29);
          if (!result)
          {
            return result;
          }

          v17 = v29[0];
        }

        else
        {
          *(this + 1) = v16 + 1;
        }

        if (v17 <= 2)
        {
          *(a1 + 56) |= 4u;
          *(a1 + 24) = v17;
        }

        v21 = *(this + 1);
        v11 = *(this + 2);
        if (v21 < v11 && *v21 == 32)
        {
          v12 = v21 + 1;
          *(this + 1) = v12;
LABEL_53:
          v29[0] = 0;
          if (v12 >= v11 || (v22 = *v12, (v22 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v29);
            if (!result)
            {
              return result;
            }

            v22 = v29[0];
          }

          else
          {
            *(this + 1) = v12 + 1;
          }

          if (v22 <= 3)
          {
            *(a1 + 56) |= 8u;
            *(a1 + 28) = v22;
          }

          v23 = *(this + 1);
          if (v23 < *(this + 2) && *v23 == 41)
          {
            *(this + 1) = v23 + 1;
LABEL_63:
            *v29 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v29) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 32) = *v29;
            *(a1 + 56) |= 0x10u;
            v24 = *(this + 1);
            v9 = *(this + 2);
            if (v24 < v9 && *v24 == 48)
            {
              v10 = v24 + 1;
              *(this + 1) = v10;
LABEL_67:
              v29[0] = 0;
              if (v10 >= v9 || (v25 = *v10, (v25 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v29);
                if (!result)
                {
                  return result;
                }

                v25 = v29[0];
              }

              else
              {
                *(this + 1) = v10 + 1;
              }

              if (v25 <= 3)
              {
                *(a1 + 56) |= 0x20u;
                *(a1 + 40) = v25;
              }

              v26 = *(this + 1);
              v18 = *(this + 2);
              if (v26 < v18 && *v26 == 56)
              {
                v19 = v26 + 1;
                *(this + 1) = v19;
LABEL_77:
                v29[0] = 0;
                if (v19 >= v18 || (v27 = *v19, (v27 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v29);
                  if (!result)
                  {
                    return result;
                  }

                  v27 = v29[0];
                  v28 = *(this + 1);
                  v18 = *(this + 2);
                }

                else
                {
                  v28 = v19 + 1;
                  *(this + 1) = v28;
                }

                *(a1 + 44) = v27 != 0;
                *(a1 + 56) |= 0x40u;
                if (v28 < v18 && *v28 == 69)
                {
                  *(this + 1) = v28 + 1;
                  goto LABEL_85;
                }
              }
            }
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_42;
      }

      *v29 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v29) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = *v29;
      *(a1 + 56) |= 1u;
      v13 = *(this + 1);
      if (v13 < *(this + 2) && *v13 == 17)
      {
        *(this + 1) = v13 + 1;
LABEL_30:
        *v29 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v29) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v29;
        *(a1 + 56) |= 2u;
        v15 = *(this + 1);
        v14 = *(this + 2);
        if (v15 < v14 && *v15 == 24)
        {
          v16 = v15 + 1;
          *(this + 1) = v16;
          goto LABEL_38;
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_30;
    }

LABEL_42:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

float sub_100453E20(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10045377C(a1, lpsrc);
}

void sub_100453EC0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v27);
  }

  v4 = *(a2 + 92);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v11 = *(a2 + 8);
    *(a1 + 92) |= 1u;
    *(a1 + 8) = v11;
    v4 = *(a2 + 92);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_38;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(a2 + 16);
  *(a1 + 92) |= 2u;
  *(a1 + 16) = v12;
  v4 = *(a2 + 92);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  v13 = *(a2 + 24);
  *(a1 + 92) |= 4u;
  *(a1 + 24) = v13;
  v4 = *(a2 + 92);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  v14 = *(a2 + 28);
  *(a1 + 92) |= 8u;
  *(a1 + 28) = v14;
  v4 = *(a2 + 92);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_41:
    v16 = *(a2 + 36);
    *(a1 + 92) |= 0x20u;
    *(a1 + 36) = v16;
    v4 = *(a2 + 92);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_40:
  v15 = *(a2 + 32);
  *(a1 + 92) |= 0x10u;
  *(a1 + 32) = v15;
  v4 = *(a2 + 92);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_41;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_42:
  v17 = *(a2 + 40);
  *(a1 + 92) |= 0x40u;
  *(a1 + 40) = v17;
  v4 = *(a2 + 92);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 44);
    *(a1 + 92) |= 0x80u;
    *(a1 + 44) = v5;
    v4 = *(a2 + 92);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_24;
  }

  if ((v4 & 0x100) != 0)
  {
    v18 = *(a2 + 48);
    *(a1 + 92) |= 0x100u;
    *(a1 + 48) = v18;
    v4 = *(a2 + 92);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_46;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v19 = *(a2 + 52);
  *(a1 + 92) |= 0x200u;
  *(a1 + 52) = v19;
  v4 = *(a2 + 92);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  v20 = *(a2 + 56);
  *(a1 + 92) |= 0x400u;
  *(a1 + 56) = v20;
  v4 = *(a2 + 92);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  v21 = *(a2 + 60);
  *(a1 + 92) |= 0x800u;
  *(a1 + 60) = v21;
  v4 = *(a2 + 92);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  v22 = *(a2 + 64);
  *(a1 + 92) |= 0x1000u;
  *(a1 + 64) = v22;
  v4 = *(a2 + 92);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_49:
  v23 = *(a2 + 68);
  if (v23 >= 3)
  {
    sub_101882FD0();
  }

  *(a1 + 92) |= 0x2000u;
  *(a1 + 68) = v23;
  v4 = *(a2 + 92);
  if ((v4 & 0x4000) == 0)
  {
    goto LABEL_22;
  }

LABEL_21:
  v6 = *(a2 + 72);
  *(a1 + 92) |= 0x4000u;
  *(a1 + 72) = v6;
  v4 = *(a2 + 92);
LABEL_22:
  if ((v4 & 0x8000) != 0)
  {
    v7 = *(a2 + 73);
    *(a1 + 92) |= 0x8000u;
    *(a1 + 73) = v7;
    v4 = *(a2 + 92);
  }

LABEL_24:
  if ((v4 & 0xFF0000) == 0)
  {
    return;
  }

  if ((v4 & 0x10000) != 0)
  {
    v8 = *(a2 + 74);
    *(a1 + 92) |= 0x10000u;
    *(a1 + 74) = v8;
    v4 = *(a2 + 92);
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = *(a2 + 76);
    if (v9 >= 4)
    {
      sub_101882FFC();
    }

    *(a1 + 92) |= 0x20000u;
    *(a1 + 76) = v9;
    v4 = *(a2 + 92);
  }

  if ((v4 & 0x40000) != 0)
  {
    v24 = *(a2 + 80);
    *(a1 + 92) |= 0x40000u;
    *(a1 + 80) = v24;
    v4 = *(a2 + 92);
    if ((v4 & 0x80000) == 0)
    {
LABEL_32:
      if ((v4 & 0x100000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_54;
    }
  }

  else if ((v4 & 0x80000) == 0)
  {
    goto LABEL_32;
  }

  v25 = *(a2 + 75);
  *(a1 + 92) |= 0x80000u;
  *(a1 + 75) = v25;
  v4 = *(a2 + 92);
  if ((v4 & 0x100000) == 0)
  {
LABEL_33:
    if ((v4 & 0x200000) == 0)
    {
      return;
    }

    goto LABEL_34;
  }

LABEL_54:
  v26 = *(a2 + 84);
  *(a1 + 92) |= 0x100000u;
  *(a1 + 84) = v26;
  if ((*(a2 + 92) & 0x200000) != 0)
  {
LABEL_34:
    v10 = *(a2 + 85);
    *(a1 + 92) |= 0x200000u;
    *(a1 + 85) = v10;
  }
}

void sub_100454214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004542B0(uint64_t result)
{
  v1 = *(result + 92);
  if (v1)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 72) = 0;
    *(result + 64) = 0;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(result + 82) = 0;
    *(result + 74) = 0;
  }

  *(result + 92) = 0;
  return result;
}

uint64_t sub_1004542F8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (v7 != 1)
        {
          goto LABEL_100;
        }

        *v50 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v50) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = *v50;
        *(a1 + 92) |= 1u;
        v8 = *(this + 1);
        if (v8 >= *(this + 2) || *v8 != 17)
        {
          continue;
        }

        *(this + 1) = v8 + 1;
        goto LABEL_33;
      case 2u:
        if (v7 != 1)
        {
          goto LABEL_100;
        }

LABEL_33:
        *v50 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v50) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v50;
        *(a1 + 92) |= 2u;
        v13 = *(this + 1);
        if (v13 >= *(this + 2) || *v13 != 29)
        {
          continue;
        }

        *(this + 1) = v13 + 1;
LABEL_37:
        v50[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v50) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v50[0];
        *(a1 + 92) |= 4u;
        v14 = *(this + 1);
        if (v14 >= *(this + 2) || *v14 != 37)
        {
          continue;
        }

        *(this + 1) = v14 + 1;
LABEL_41:
        v50[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v50) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 28) = v50[0];
        *(a1 + 92) |= 8u;
        v15 = *(this + 1);
        if (v15 >= *(this + 2) || *v15 != 45)
        {
          continue;
        }

        *(this + 1) = v15 + 1;
LABEL_45:
        v50[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v50) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = v50[0];
        *(a1 + 92) |= 0x10u;
        v16 = *(this + 1);
        if (v16 >= *(this + 2) || *v16 != 53)
        {
          continue;
        }

        *(this + 1) = v16 + 1;
LABEL_54:
        v50[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v50) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 36) = v50[0];
        *(a1 + 92) |= 0x20u;
        v20 = *(this + 1);
        if (v20 >= *(this + 2) || *v20 != 61)
        {
          continue;
        }

        *(this + 1) = v20 + 1;
LABEL_63:
        v50[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v50) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = v50[0];
        *(a1 + 92) |= 0x40u;
        v24 = *(this + 1);
        if (v24 >= *(this + 2) || *v24 != 69)
        {
          continue;
        }

        *(this + 1) = v24 + 1;
LABEL_67:
        v50[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v50) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 44) = v50[0];
        *(a1 + 92) |= 0x80u;
        v25 = *(this + 1);
        if (v25 >= *(this + 2) || *v25 != 77)
        {
          continue;
        }

        *(this + 1) = v25 + 1;
LABEL_76:
        v50[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v50) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = v50[0];
        *(a1 + 92) |= 0x100u;
        v26 = *(this + 1);
        if (v26 >= *(this + 2) || *v26 != 85)
        {
          continue;
        }

        *(this + 1) = v26 + 1;
LABEL_80:
        v50[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v50) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 52) = v50[0];
        *(a1 + 92) |= 0x200u;
        v27 = *(this + 1);
        if (v27 >= *(this + 2) || *v27 != 93)
        {
          continue;
        }

        *(this + 1) = v27 + 1;
LABEL_84:
        v50[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v50) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 56) = v50[0];
        *(a1 + 92) |= 0x400u;
        v28 = *(this + 1);
        if (v28 >= *(this + 2) || *v28 != 101)
        {
          continue;
        }

        *(this + 1) = v28 + 1;
LABEL_88:
        v50[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v50) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 60) = v50[0];
        *(a1 + 92) |= 0x800u;
        v29 = *(this + 1);
        if (v29 >= *(this + 2) || *v29 != 109)
        {
          continue;
        }

        *(this + 1) = v29 + 1;
LABEL_92:
        v50[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v50) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = v50[0];
        *(a1 + 92) |= 0x1000u;
        v30 = *(this + 1);
        v22 = *(this + 2);
        if (v30 >= v22 || *v30 != 112)
        {
          continue;
        }

        v23 = v30 + 1;
        *(this + 1) = v23;
LABEL_96:
        v50[0] = 0;
        if (v23 >= v22 || (v31 = *v23, (v31 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v50);
          if (!result)
          {
            return result;
          }

          v31 = v50[0];
        }

        else
        {
          *(this + 1) = v23 + 1;
        }

        if (v31 <= 2)
        {
          *(a1 + 92) |= 0x2000u;
          *(a1 + 68) = v31;
        }

        v34 = *(this + 1);
        v9 = *(this + 2);
        if (v34 >= v9 || *v34 != 120)
        {
          continue;
        }

        v11 = v34 + 1;
        *(this + 1) = v11;
LABEL_111:
        v50[0] = 0;
        if (v11 >= v9 || (v35 = *v11, (v35 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v50);
          if (!result)
          {
            return result;
          }

          v35 = v50[0];
          v36 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v36 = (v11 + 1);
          *(this + 1) = v36;
        }

        *(a1 + 72) = v35 != 0;
        *(a1 + 92) |= 0x4000u;
        if (v9 - v36 < 2 || *v36 != 128 || v36[1] != 1)
        {
          continue;
        }

        v12 = (v36 + 2);
        *(this + 1) = v12;
LABEL_120:
        v50[0] = 0;
        if (v12 >= v9 || (v37 = *v12, (v37 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v50);
          if (!result)
          {
            return result;
          }

          v37 = v50[0];
          v38 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v38 = (v12 + 1);
          *(this + 1) = v38;
        }

        *(a1 + 73) = v37 != 0;
        *(a1 + 92) |= 0x8000u;
        if (v9 - v38 < 2 || *v38 != 136 || v38[1] != 1)
        {
          continue;
        }

        v10 = (v38 + 2);
        *(this + 1) = v10;
LABEL_129:
        v50[0] = 0;
        if (v10 >= v9 || (v39 = *v10, (v39 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v50);
          if (!result)
          {
            return result;
          }

          v39 = v50[0];
          v40 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v40 = (v10 + 1);
          *(this + 1) = v40;
        }

        *(a1 + 74) = v39 != 0;
        *(a1 + 92) |= 0x10000u;
        if (v9 - v40 < 2 || *v40 != 144 || v40[1] != 1)
        {
          continue;
        }

        v17 = (v40 + 2);
        *(this + 1) = v17;
LABEL_138:
        v50[0] = 0;
        if (v17 >= v9 || (v41 = *v17, (v41 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v50);
          if (!result)
          {
            return result;
          }

          v41 = v50[0];
        }

        else
        {
          *(this + 1) = v17 + 1;
        }

        if (v41 <= 3)
        {
          *(a1 + 92) |= 0x20000u;
          *(a1 + 76) = v41;
        }

        v42 = *(this + 1);
        if (*(this + 4) - v42 < 2 || *v42 != 157 || v42[1] != 1)
        {
          continue;
        }

        *(this + 1) = v42 + 2;
LABEL_149:
        v50[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v50))
        {
          *(a1 + 80) = v50[0];
          *(a1 + 92) |= 0x40000u;
          v43 = *(this + 1);
          v18 = *(this + 2);
          if (v18 - v43 >= 2 && *v43 == 160 && v43[1] == 1)
          {
            v32 = (v43 + 2);
            *(this + 1) = v32;
LABEL_154:
            v50[0] = 0;
            if (v32 >= v18 || (v44 = *v32, (v44 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v50);
              if (!result)
              {
                return result;
              }

              v44 = v50[0];
              v45 = *(this + 1);
              v18 = *(this + 2);
            }

            else
            {
              v45 = (v32 + 1);
              *(this + 1) = v45;
            }

            *(a1 + 75) = v44 != 0;
            *(a1 + 92) |= 0x80000u;
            if (v18 - v45 >= 2 && *v45 == 168 && v45[1] == 1)
            {
              v19 = (v45 + 2);
              *(this + 1) = v19;
LABEL_163:
              v50[0] = 0;
              if (v19 >= v18 || (v46 = *v19, (v46 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v50);
                if (!result)
                {
                  return result;
                }

                v46 = v50[0];
                v47 = *(this + 1);
                v18 = *(this + 2);
              }

              else
              {
                v47 = (v19 + 1);
                *(this + 1) = v47;
              }

              *(a1 + 84) = v46 != 0;
              *(a1 + 92) |= 0x100000u;
              if (v18 - v47 >= 2 && *v47 == 176 && v47[1] == 1)
              {
                v21 = (v47 + 2);
                *(this + 1) = v21;
LABEL_172:
                v50[0] = 0;
                if (v21 >= v18 || (v48 = *v21, (v48 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v50);
                  if (!result)
                  {
                    return result;
                  }

                  v48 = v50[0];
                  v49 = *(this + 1);
                  v18 = *(this + 2);
                }

                else
                {
                  v49 = v21 + 1;
                  *(this + 1) = v49;
                }

                *(a1 + 85) = v48 != 0;
                *(a1 + 92) |= 0x200000u;
                if (v49 == v18 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
        if (v7 == 5)
        {
          goto LABEL_37;
        }

        goto LABEL_100;
      case 4u:
        if (v7 == 5)
        {
          goto LABEL_41;
        }

        goto LABEL_100;
      case 5u:
        if (v7 == 5)
        {
          goto LABEL_45;
        }

        goto LABEL_100;
      case 6u:
        if (v7 == 5)
        {
          goto LABEL_54;
        }

        goto LABEL_100;
      case 7u:
        if (v7 == 5)
        {
          goto LABEL_63;
        }

        goto LABEL_100;
      case 8u:
        if (v7 == 5)
        {
          goto LABEL_67;
        }

        goto LABEL_100;
      case 9u:
        if (v7 == 5)
        {
          goto LABEL_76;
        }

        goto LABEL_100;
      case 0xAu:
        if (v7 == 5)
        {
          goto LABEL_80;
        }

        goto LABEL_100;
      case 0xBu:
        if (v7 == 5)
        {
          goto LABEL_84;
        }

        goto LABEL_100;
      case 0xCu:
        if (v7 == 5)
        {
          goto LABEL_88;
        }

        goto LABEL_100;
      case 0xDu:
        if (v7 == 5)
        {
          goto LABEL_92;
        }

        goto LABEL_100;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_100;
        }

        v23 = *(this + 1);
        v22 = *(this + 2);
        goto LABEL_96;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_100;
        }

        v11 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_111;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_100;
        }

        v12 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_120;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_100;
        }

        v10 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_129;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_100;
        }

        v17 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_138;
      case 0x13u:
        if (v7 == 5)
        {
          goto LABEL_149;
        }

        goto LABEL_100;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_100;
        }

        v32 = *(this + 1);
        v18 = *(this + 2);
        goto LABEL_154;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_100;
        }

        v19 = *(this + 1);
        v18 = *(this + 2);
        goto LABEL_163;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_100;
        }

        v21 = *(this + 1);
        v18 = *(this + 2);
        goto LABEL_172;
      default:
LABEL_100:
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

void sub_100454C94(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100453EC0(a1, lpsrc);
}

void sub_100454D34(uint64_t a1, uint64_t a2)
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
      v6 = *(a2 + 8);
      *(a1 + 36) |= 1u;
      *(a1 + 8) = v6;
      v4 = *(a2 + 36);
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

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 16);
    *(a1 + 36) |= 2u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 36);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    v8 = *(a2 + 24);
    *(a1 + 36) |= 4u;
    *(a1 + 24) = v8;
    v4 = *(a2 + 36);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_14:
    v9 = *(a2 + 28);
    *(a1 + 36) |= 8u;
    *(a1 + 28) = v9;
    if ((*(a2 + 36) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 29);
    *(a1 + 36) |= 0x10u;
    *(a1 + 29) = v5;
  }
}

void sub_100454E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100454E80(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024547C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100454ED4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636ED0;
  if (!qword_102636ED0)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636ED0;
  }

  return result;
}

uint64_t sub_100454F58(uint64_t result)
{
  if (*(result + 36))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 22) = 0;
  }

  *(result + 36) = 0;
  return result;
}

uint64_t sub_100454F70(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_28;
        }

        if (v8 != 1)
        {
          goto LABEL_21;
        }

        *v22 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v22) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = *v22;
        *(a1 + 36) |= 1u;
        v13 = *(this + 1);
        if (v13 < *(this + 2) && *v13 == 17)
        {
          *(this + 1) = v13 + 1;
LABEL_28:
          *v22 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v22) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 16) = *v22;
          *(a1 + 36) |= 2u;
          v14 = *(this + 1);
          v9 = *(this + 2);
          if (v14 < v9 && *v14 == 24)
          {
            v11 = v14 + 1;
            *(this + 1) = v11;
LABEL_32:
            v22[0] = 0;
            if (v11 >= v9 || (v15 = *v11, (v15 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v22);
              if (!result)
              {
                return result;
              }

              v15 = v22[0];
              v16 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              v16 = v11 + 1;
              *(this + 1) = v16;
            }

            *(a1 + 24) = v15;
            *(a1 + 36) |= 4u;
            if (v16 < v9 && *v16 == 32)
            {
              v12 = v16 + 1;
              *(this + 1) = v12;
              goto LABEL_40;
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

        v11 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_32;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v12 = *(this + 1);
      v9 = *(this + 2);
LABEL_40:
      v22[0] = 0;
      if (v12 >= v9 || (v18 = *v12, (v18 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v22);
        if (!result)
        {
          return result;
        }

        v18 = v22[0];
        v19 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        v19 = v12 + 1;
        *(this + 1) = v19;
      }

      *(a1 + 28) = v18 != 0;
      *(a1 + 36) |= 8u;
      if (v19 < v9 && *v19 == 40)
      {
        v10 = v19 + 1;
        *(this + 1) = v10;
LABEL_48:
        v22[0] = 0;
        if (v10 >= v9 || (v20 = *v10, (v20 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v22);
          if (!result)
          {
            return result;
          }

          v20 = v22[0];
          v21 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v21 = v10 + 1;
          *(this + 1) = v21;
        }

        *(a1 + 29) = v20 != 0;
        *(a1 + 36) |= 0x10u;
        if (v21 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
      goto LABEL_48;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_10045524C(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 36);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 36);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 28), a2, a4);
    if ((*(v5 + 36) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 36);
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
  v7 = *(v5 + 29);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

uint64_t sub_100455310(unsigned int *a1, unsigned int a2)
{
  v3 = a1[9];
  if (v3)
  {
    if ((v3 & 2) != 0)
    {
      v4 = (((v3 << 31) >> 31) & 9) + 9;
    }

    else
    {
      v4 = ((v3 << 31) >> 31) & 9;
    }

    if ((v3 & 4) != 0)
    {
      v5 = a1[6];
      if ((v5 & 0x80000000) != 0)
      {
        v6 = 11;
      }

      else if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        v3 = a1[9];
      }

      else
      {
        v6 = 2;
      }

      v4 += v6;
    }

    result = ((v3 >> 2) & 2) + ((v3 >> 3) & 2) + v4;
  }

  else
  {
    result = 0;
  }

  a1[8] = result;
  return result;
}

void sub_1004553AC(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100454D34(a1, lpsrc);
}

double sub_10045544C(uint64_t a1, uint64_t a2)
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
        v7 = *(qword_102636ED8 + 8);
      }

      sub_100421630(v6, v7);
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

void sub_1004555A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1004555C0(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102454840;
  if (qword_102636ED8 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_100455650(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1004555C0(a1);

  operator delete();
}

uint64_t sub_1004556DC(uint64_t result)
{
  v1 = result;
  if (*(result + 36))
  {
    if (*(result + 36))
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_100421BA4(result);
      }
    }

    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
  }

  *(v1 + 36) = 0;
  return result;
}

uint64_t sub_10045571C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
    if (!sub_100421C44(v9, this, v14) || *(this + 36) != 1)
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

uint64_t sub_1004559E0(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    v7 = *(qword_102636ED8 + 8);
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

uint64_t sub_100455A7C(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (v3)
  {
    if (*(a1 + 36))
    {
      v6 = *(a1 + 8);
      if (!v6)
      {
        v6 = *(qword_102636ED8 + 8);
      }

      v7 = sub_1001F4208(v6, a2);
      v9 = v7;
      if (v7 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, v8);
      }

      else
      {
        v10 = 1;
      }

      v4 = v9 + v10 + 1;
      v3 = *(a1 + 36);
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

  *(a1 + 32) = result;
  return result;
}

double sub_100455B14(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10045544C(a1, lpsrc);
}

void sub_100455BCC(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
      sub_10041F11C(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void sub_100455CE4(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
      sub_10041FC84(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void sub_100455DFC(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
      sub_1004207EC(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void sub_100455F10(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
      sub_1004230CC(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void sub_10045602C(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
      sub_100436DC0(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void sub_10045614C(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
      sub_10043C090(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void sub_100456264(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
      sub_1004433CC(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void sub_100456380(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
      sub_100445B40(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void sub_1004564A4(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
      sub_10044AC2C(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void sub_1004565B8(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
      sub_10044BA9C(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void sub_1004566D8(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
      sub_10044D1A4(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void sub_1004567F8(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
      sub_10044E724(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

uint64_t sub_100456924(uint64_t a1, float *a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return sub_10045737C(v2, a2);
}

uint64_t sub_100456934(uint64_t result)
{
  v1 = result - 8;
  if (!result)
  {
    v1 = 0;
  }

  *(v1 + 104) = 0;
  *(v1 + 100) = 0;
  *(v1 + 564) = 0;
  return result;
}

double sub_100456968(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  *&result = sub_100457A78(v2, a2).n128_u64[0];
  return result;
}

uint64_t sub_100456978(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return sub_1004577AC(v2, a2);
}

uint64_t sub_100456988(uint64_t result)
{
  v1 = result - 8;
  if (!result)
  {
    v1 = 0;
  }

  *(v1 + 104) = 0;
  *(v1 + 100) = 0;
  *(v1 + 564) = 0;
  return result;
}

uint64_t sub_1004569AC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return sub_10045781C(v2, a2);
}

double sub_1004569BC(uint64_t a1)
{
  *(a1 + 8) = &unk_102455160;
  *(a1 + 16) = 9;
  *(a1 + 24) = 512;
  *a1 = off_102455248;
  *(a1 + 28) = 1;
  *(a1 + 44) = 0xC00000000;
  *(a1 + 40) = 1031798784;
  *(a1 + 100) = 0;
  *(a1 + 108) = 0;
  *(a1 + 112) = off_10247E150;
  *(a1 + 120) = xmmword_101C783F0;
  *(a1 + 136) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 1;
  *(a1 + 196) = 75;
  *(a1 + 188) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0xC08F380000000000;
  *(a1 + 528) = 0xC08F380000000000;
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 552) = 0;
  *(a1 + 576) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 584) = 0xC08F380000000000;
  *(a1 + 592) = 0xC08F380000000000;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0;
  *(a1 + 616) = 0;
  *&result = 0x3C00000000;
  *(a1 + 624) = 0x3C00000000;
  *(a1 + 872) = 0x3C00000000;
  return result;
}

uint64_t sub_100456AC4(uint64_t a1, double *a2)
{
  *buf = 7;
  *&buf[8] = 8;
  v44 = 0;
  v45 = 0;
  __p = 0;
  sub_1004579D4(&__p, buf, &buf[12], 3uLL);
  v4 = sub_10090303C(a1 + 112, a2);
  if (v4)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_101883028();
    }

    v5 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 24);
      *buf = 67240192;
      *&buf[4] = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "HRStop detect in indoor cycle model during state,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101883050(buf);
      v7 = *(a1 + 24);
      LODWORD(v70[0]) = 67240192;
      DWORD1(v70[0]) = v7;
      v8 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual CLWorkoutPredictor_Type::WorkoutStopDetectionEvent CLStationaryCycleStopModel::update(const CLWorkoutPredictorInputs &)", "%s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  else
  {
    v73 = 0;
    v70[0] = xmmword_101C78400;
    memset(&v70[1], 0, 96);
    v71 = 0u;
    memset(v72, 0, sizeof(v72));
    v74 = xmmword_101C78400;
    v75 = 0;
    v76 = 0;
    memset(v77, 0, sizeof(v77));
    v78 = 0;
    v80 = 0;
    v81 = 0;
    v79 = 0u;
    v82 = xmmword_101C78400;
    v83 = 0;
    v84 = 0;
    v85 = 0xFFEFFFFFFFFFFFFFLL;
    v96 = 0;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    memset(v95, 0, sizeof(v95));
    v97 = 0u;
    v98 = 0xFFEFFFFFFFFFFFFFLL;
    v99 = 0;
    v100 = 0;
    v105 = 0;
    v106 = 0;
    v111 = 0;
    v103 = 0u;
    memset(v104, 0, sizeof(v104));
    v101 = 0u;
    v102 = 0u;
    v109 = 0;
    v107 = 0u;
    v108 = 0u;
    memset(v110, 0, sizeof(v110));
    v112 = 0xFFEFFFFFFFFFFFFFLL;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0xFFEFFFFFFFFFFFFFLL;
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0xFFEFFFFFFFFFFFFFLL;
    v139 = 0;
    v140 = 0;
    v141 = 0;
    v142 = 0;
    v143 = 0xFFEFFFFFFFFFFFFFLL;
    v144 = 0u;
    v145 = 0x80000000800000;
    v146 = 0u;
    v147 = xmmword_101C78410;
    v148 = 0x80000000800000;
    v149 = 0u;
    v150 = 0u;
    v151 = 0;
    v152 = 0xFFEFFFFFFFFFFFFFLL;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v159 = 0;
    v160 = 0xFFEFFFFFFFFFFFFFLL;
    v161 = 0;
    v162 = 0;
    v163 = 0xFFEFFFFFFFFFFFFFLL;
    v164 = 7;
    v165 = 0xFFEFFFFFFFFFFFFFLL;
    v166 = 0;
    v168 = 0;
    v167 = 0u;
    if (sub_1000C2B7C(a2, &__p, v70))
    {
      v9 = *(&v144 + 1) * 57.296;
      v10 = *(a1 + 46);
      v11 = *(a1 + 48);
      v12 = *(a1 + 44);
      if (v12 + v10 >= v11)
      {
        v13 = *(a1 + 48);
      }

      else
      {
        v13 = 0;
      }

      *(a1 + 4 * (v12 + v10 - v13) + 52) = v9;
      if (v11 <= v10)
      {
        v14 = v12 + 1;
        if (v14 >= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = 0;
        }

        *(a1 + 44) = v14 - v15;
      }

      else
      {
        LOWORD(v10) = v10 + 1;
        *(a1 + 46) = v10;
        LODWORD(v10) = v10;
      }

      *(a1 + 28) = 1;
      if (v11 == v10)
      {
        v16 = DWORD2(v126);
        if (DWORD2(v126))
        {
          v16 = *(a1 + 572) + 1;
        }

        *(a1 + 572) = v16;
        if (sub_101112144((a1 + 624), a1 + 512, v9))
        {
          v4 = 12;
          goto LABEL_43;
        }

        v39 = 0;
        *v40 = 0;
        *&v40[8] = vdupq_n_s64(0xC08F380000000000);
        v40[24] = 0;
        *&v40[32] = 0;
        v40[40] = 0;
        v41 = 0;
        v42 = 0.0;
        if (*(a1 + 28) == 1)
        {
          sub_100457CE4(a1 + 28);
        }

        v17 = *(a1 + 36);
        v18 = sqrtf(v17);
        v19 = v17 <= 0.0;
        v20 = 0.0;
        if (!v19)
        {
          v20 = v18;
        }

        v21 = *&v146;
        if (*&v146 >= *&v144)
        {
          v21 = *&v144;
        }

        *&v39 = v20;
        *(&v39 + 1) = v21 * 57.296;
        v22 = *(a1 + 528);
        *v40 = *(a1 + 512);
        *&v40[16] = v22;
        *&v40[25] = *(a1 + 537);
        LODWORD(v41) = DWORD1(v71);
        HIDWORD(v41) = *(a1 + 572);
        v42 = *(&v147 + 2) * 57.296;
        sub_1000CE87C(a1 + 8, 0, &v39);
        v23 = *(a1 + 24);
        if (qword_1025D43F0 != -1)
        {
          sub_101883028();
        }

        v24 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_INFO))
        {
          v25 = -999.0;
          v26 = *(a1 + 104);
          if (*&v40[8] != -999.0 && *&v40[16] != -999.0)
          {
            v25 = *&v40[16] - *&v40[8];
          }

          v27 = *(a1 + 100);
          v28 = *(a1 + 572);
          v29 = *(a1 + 568);
          v30 = *(a1 + 564);
          *buf = 67111936;
          *&buf[4] = v23;
          *&buf[8] = 1024;
          *&buf[10] = v26;
          *&buf[14] = 2048;
          v170 = *&v39;
          v171 = 2048;
          v172 = *(&v39 + 1);
          v173 = 2048;
          v174 = *v40;
          v175 = 1024;
          v176 = v40[24];
          v177 = 2048;
          v178 = *&v41;
          v179 = 2048;
          v180 = v25;
          v181 = 1024;
          v182 = v27;
          v183 = 1024;
          v184 = v28;
          v185 = 1024;
          v186 = v29;
          v187 = 2048;
          v188 = v30;
          _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "IndoorCycleStop,state,%d,headingCnt,%d,longStd,%f,shortStd,%f,exertionDelta,%f,exertionLow,%d,vm,%f,fromBaseline,%f,inLikely,%d,steps,%d,combinedCnt,%d,deltaH,%f", buf, 0x62u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D43F0 != -1)
          {
            sub_101883028();
          }

          v32 = -999.0;
          v33 = *(a1 + 104);
          if (*&v40[8] != -999.0 && *&v40[16] != -999.0)
          {
            v32 = *&v40[16] - *&v40[8];
          }

          v34 = *(a1 + 100);
          v35 = *(a1 + 572);
          v36 = *(a1 + 568);
          v37 = *(a1 + 564);
          v46 = 67111936;
          v47 = v23;
          v48 = 1024;
          v49 = v33;
          v50 = 2048;
          v51 = *&v39;
          v52 = 2048;
          v53 = *(&v39 + 1);
          v54 = 2048;
          v55 = *v40;
          v56 = 1024;
          v57 = v40[24];
          v58 = 2048;
          v59 = *&v41;
          v60 = 2048;
          v61 = v32;
          v62 = 1024;
          v63 = v34;
          v64 = 1024;
          v65 = v35;
          v66 = 1024;
          v67 = v36;
          v68 = 2048;
          v69 = v37;
          v38 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "virtual CLWorkoutPredictor_Type::WorkoutStopDetectionEvent CLStationaryCycleStopModel::update(const CLWorkoutPredictorInputs &)", "%s\n", v38);
          if (v38 != buf)
          {
            free(v38);
          }
        }

        if (*(a1 + 24) == 4)
        {
          v4 = 1;
          goto LABEL_43;
        }
      }
    }

    else
    {
      HIBYTE(v170) = 15;
      strcpy(buf, "IndoorCycleStop");
      sub_100F9942C(a2, buf, &__p);
      if (SHIBYTE(v170) < 0)
      {
        operator delete(*buf);
      }
    }

    v4 = 0;
  }

LABEL_43:
  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

  return v4;
}

void sub_100457324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10045737C(uint64_t result, float *a2)
{
  if (*a2 <= 30.0)
  {
    v4 = *(result + 108);
    *(result + 108) = v4 + 1;
    if (v4 >= 70)
    {
      *&v5[1] = v2;
      v6 = v3;
      return sub_1000CE87C(result + 8, 1, v5);
    }
  }

  else
  {
    *(result + 108) = 0;
  }

  return result;
}

uint64_t sub_1004573D8(uint64_t a1, uint64_t a2)
{
  v2 = *a2 > 30.0 && *(a2 + 4) > 5.0;
  v3 = *(a2 + 16);
  v4 = 0;
  if (v3 != -999.0)
  {
    v5 = *(a2 + 24);
    if (v5 != -999.0)
    {
      v6 = v5 - v3;
      if (v6 != -999.0 && v6 <= -5.0)
      {
        if (*(a2 + 8) <= -0.75)
        {
          v4 = 1;
        }

        else
        {
          v4 = *(a2 + 32);
        }
      }
    }
  }

  v8 = *(a1 + 568) + ((v2 | v4) & 1 | (*(a2 + 60) > 11) | (*(a2 + 56) < 0.1));
  *(a1 + 568) = v8;
  v9 = *(a1 + 100);
  v10 = *(a1 + 104) + v2;
  *(a1 + 104) = v10;
  v11 = *(a1 + 564);
  v13 = fminf(fmaxf(180.0 / v11, 1.0) * 11.719, 46.875) >= v8 || v9 < 24;
  if (v10 > 0 || v11 > 180.0)
  {
    if (v3 == -999.0)
    {
      goto LABEL_35;
    }

    v14 = *(a2 + 24);
  }

  else
  {
    if (v3 == -999.0 || (v14 = *(a2 + 24), v14 == -999.0))
    {
      v13 = 1;
      goto LABEL_35;
    }

    v15 = v14 - v3 == -999.0;
    if (v14 - v3 > -20.0)
    {
      v15 = 1;
    }

    v13 |= v15;
  }

  if (v14 != -999.0)
  {
    v16 = v14 - v3;
    if (v16 != -999.0)
    {
      if (v9 >= 24)
      {
        v17 = v16;
        v18 = v16 <= -20.0;
        if (fmaxf((v17 * 1.5) + 60.0, 1.0) >= v10)
        {
          v18 = 0;
        }

        goto LABEL_38;
      }

LABEL_36:
      v19 = 0;
      v18 = 0;
      return (v18 | ~v13) & !v19;
    }
  }

LABEL_35:
  if (v9 < 24)
  {
    goto LABEL_36;
  }

  v18 = 0;
  v14 = *(a2 + 24);
LABEL_38:
  if (v14 == -999.0)
  {
    v19 = 0;
  }

  else
  {
    v19 = v14 > 75.0;
    v20 = *(a1 + 592);
    if (v20 != -999.0)
    {
      v19 = fmin(v20 + 10.0, 75.0) < v14;
    }
  }

  return (v18 | ~v13) & !v19;
}

BOOL sub_1004575F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == -999.0)
  {
    v4 = 0;
  }

  else
  {
    v3 = *(a2 + 24);
    v4 = v3 != -999.0;
    v5 = v3 - v2;
    if (v5 == -999.0)
    {
      v4 = 0;
    }

    if (v5 > -40.0)
    {
      v4 = 0;
    }
  }

  v6 = *(a1 + 100);
  if (v6 >= 71)
  {
    if (*(a1 + 564) >= 180.0)
    {
      v4 = 1;
    }

    if (!v4)
    {
      v7 = *(a1 + 24) != 3;
LABEL_16:
      v8 = *(a2 + 4);
      goto LABEL_17;
    }

LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  if (v6 >= 6)
  {
    goto LABEL_15;
  }

  v8 = *(a2 + 4);
  v7 = v8 < 1.5;
LABEL_17:
  if (v8 >= 5.0 || *(a2 + 60) || *(a2 + 56) <= 0.5 || *(a2 + 64) >= 20.0)
  {
    if (v8 > 5.0 || *(a2 + 56) < 0.5)
    {
      *(a1 + 108) = 0;
    }
  }

  else
  {
    ++*(a1 + 108);
  }

  return v7 || *(a1 + 108) > 17;
}

uint64_t sub_100457710(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 560);
  if (*(result + 46))
  {
    result = sub_100457AE8((result + 44), *(result + 46) - 1);
    v5 = *result;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = vabds_f32(v4, v5);
  if (*(v3 + 564) >= v6)
  {
    v6 = *(v3 + 564);
  }

  *(v3 + 564) = v6;
  ++*(v3 + 100);
  if (*(v3 + 592) == -999.0)
  {
    v7 = *(a2 + 8);
    v8 = *(a2 + 24);
    *(v3 + 601) = *(a2 + 33);
    *(v3 + 576) = v7;
    *(v3 + 592) = v8;
  }

  return result;
}

uint64_t sub_1004577AC(uint64_t a1, uint64_t a2)
{
  sub_100457710(a1, a2);
  if (sub_1004573D8(a1, a2))
  {
    v4 = a1 + 8;
    v5 = &v9;
    v6 = 3;
  }

  else
  {
    result = sub_1004575F8(a1, a2);
    if (!result)
    {
      return result;
    }

    v4 = a1 + 8;
    v5 = &v8;
    v6 = 2;
  }

  return sub_1000CE87C(v4, v6, v5);
}

uint64_t sub_10045781C(uint64_t a1, uint64_t a2)
{
  sub_100457710(a1, a2);
  if (*(a1 + 100) >= 51)
  {
    v4 = a1 + 8;
    v5 = &v14;
    v6 = 4;
    return sub_1000CE87C(v4, v6, v5);
  }

  v7 = *(a2 + 16);
  if (v7 == -999.0)
  {
    v11 = 0;
  }

  else
  {
    v8 = *(a2 + 24);
    v9 = v8 != -999.0;
    v10 = v8 - v7;
    if (v10 == -999.0)
    {
      v9 = 0;
    }

    v11 = v10 <= -20.0 && v9;
  }

  result = sub_1004575F8(a1, a2);
  if (!v11 && result)
  {
    v4 = a1 + 8;
    v5 = &v13;
    v6 = 2;
    return sub_1000CE87C(v4, v6, v5);
  }

  return result;
}

void *sub_1004578D4(void *a1)
{
  *a1 = off_102455248;
  a1[14] = off_10247E150;
  v2 = a1[19];
  if (v2)
  {
    a1[20] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_100457944(void *a1)
{
  *a1 = off_102455248;
  a1[14] = off_10247E150;
  v2 = a1[19];
  if (v2)
  {
    a1[20] = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_1004579D4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10038EBB4(result, a4);
  }

  return result;
}

void sub_100457A2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_100457A78(uint64_t a1, uint64_t a2)
{
  *(a1 + 104) = 0;
  *(a1 + 100) = 0;
  *(a1 + 564) = 0;
  if (*(a1 + 46))
  {
    v4 = *sub_100457AE8((a1 + 44), 0);
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 560) = v4;
  result = *(a2 + 8);
  v6 = *(a2 + 24);
  *(a1 + 601) = *(a2 + 33);
  *(a1 + 576) = result;
  *(a1 + 592) = v6;
  return result;
}

uint64_t sub_100457AE8(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_1024552E0);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_1024552E0);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<float>::operator[](const size_t) const [T = float]", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[2 * (v4 - v5) + 4];
}

uint64_t sub_100457CE4(uint64_t result)
{
  v1 = result;
  if (*(result + 18))
  {
    v2 = 0;
    v3 = 0.0;
    do
    {
      result = sub_100457AE8((v1 + 16), v2);
      v3 = v3 + *result;
      ++v2;
      v4 = *(v1 + 18);
    }

    while (v2 < v4);
    *(v1 + 4) = v3 / v4;
    v5 = 0.0;
    if (v4 >= 3)
    {
      v6 = 0;
      v7 = 0.0;
      do
      {
        result = sub_100457AE8((v1 + 16), v6);
        v7 = v7 + ((*result - *(v1 + 4)) * (*result - *(v1 + 4)));
        ++v6;
        v8 = *(v1 + 18);
      }

      while (v6 < v8);
      v5 = v7 / v8;
    }
  }

  else
  {
    *(result + 4) = 0;
    v5 = 0.0;
  }

  *(v1 + 8) = v5;
  *v1 = 0;
  return result;
}

uint64_t sub_100457DA8(uint64_t a1)
{
  v2 = sub_1012F7A10(a1);
  *v2 = off_102455310;
  *(v2 + 16) = 1065353216;
  v3 = (v2 + 16);
  v4 = sub_100011660();
  sub_100185AC0(v4, &v6);
  sub_1004FBE40(v6, "WalkModelMetsScale", v3);
  if (v7)
  {
    sub_100008080(v7);
  }

  return a1;
}

void sub_100457E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100457EB0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1004582A8(v6, a3);
  sub_1006E94E4(a1, a2, v6);
  sub_100458228(v6);
  *a1 = off_102455390;
  return a1;
}

void sub_100457F4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100458228(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100457F6C(uint64_t result, double a2)
{
  v2 = a2 + -240.0 + 60.0;
  if (v2 < *(result + 40))
  {
    v2 = *(result + 40);
  }

  *(result + 40) = v2;
  return result;
}

void sub_100457F98()
{
  v3 = 0;
  v1 = 0;
  v2 = 0;
  v0 = 0;
  operator new();
}

void sub_10045815C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_100458490(va);
  _Unwind_Resume(a1);
}

void *sub_100458178(void *a1)
{
  *a1 = off_1024553F0;
  sub_100458228((a1 + 1));
  return a1;
}

void sub_1004581BC(void *a1)
{
  *a1 = off_1024553F0;
  sub_100458228((a1 + 1));

  operator delete();
}

uint64_t sub_100458228(uint64_t a1)
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

uint64_t sub_1004582A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

__n128 sub_1004583BC(uint64_t a1, uint64_t a2)
{
  *a2 = off_102455428;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

double sub_1004583F4(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = *a3;
  v4 = *(a1 + 16);
  **(a1 + 8) = **(a1 + 8) + *(a2 + 16) * *a3;
  if (!*(a2 + 28))
  {
    v3 = 0.0;
  }

  result = *v4 + v3;
  *v4 = result;
  **(a1 + 24) = (**(a1 + 24) | *(a2 + 29)) & 1;
  return result;
}

uint64_t sub_100458444(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100458490(uint64_t a1)
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

uint64_t sub_100458510(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 112);
  if (*(a1 + 2136) == v2)
  {
    return 0;
  }

  v4 = v2 == 1 || *(a2 + 120) > 0.0 && v2 == 0;
  v6 = v2 < 2 && v4;
  if (*(a2 + 16))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a2 + 96) == 19;
  }

  if (v7)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10045856C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2136);
  if (v2 != *(a2 + 112))
  {
    return 0;
  }

  v3 = v2 == 1 || *(a2 + 120) > 0.0 && v2 == 0;
  v6 = v2 < 2 && v3;
  if (*(a2 + 16))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a2 + 96) == 19;
  }

  if (v7)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004585C8(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, char a4, float a5, double a6)
{
  *(a1 + 1008) = a5;
  *(a1 + 2136) = a3;
  *(a1 + 1012) = a4;
  *(a1 + 1013) = 0;
  sub_10107A19C((a1 + 2144));
  if (uuid_compare(a2, (a1 + 1014)))
  {
    sub_100458DE4(a1);
  }

  uuid_copy((a1 + 1014), a2);
  *(a1 + 992) = a6;
  if (*(a1 + 1048) + 60.0 < a6)
  {
    uuid_parse("00000000-0000-0000-0000-000000000000", (a1 + 1030));
    *(a1 + 1048) = 0;
  }

  if (*(a1 + 2136) != 1)
  {
    v9 = 0;
    v10 = 984;
    do
    {
      *(a1 + v10) = 0;
      v11 = a1 + v9;
      v12 = a1 + v9 + 200;
      *(v11 + 248) = *(&unk_101C78688 + v9 + 48);
      *(v12 + 64) = *(&unk_101C78688 + v9 + 64);
      *(v12 + 80) = *(&unk_101C78688 + v9 + 80);
      *(v12 + 96) = *(&unk_101C78688 + v9 + 96);
      *(v11 + 200) = *(&unk_101C78688 + v9);
      *(v11 + 216) = *(&unk_101C78688 + v9 + 16);
      *(v11 + 232) = *(&unk_101C78688 + v9 + 32);
      *(v11 + 232) = *(a1 + 1008);
      uuid_copy(v12, (a1 + 1030));
      uuid_copy((a1 + v9 + 216), (a1 + 1014));
      v9 += 112;
      ++v10;
    }

    while (v9 != 784);
  }

  *(a1 + 1068) = 0;

  return sub_10045AA20(a1);
}

uint64_t sub_100458720(int64x2_t *a1, uint64_t a2)
{
  if (!a1[133].i64[1])
  {
    sub_10045B3B0(a1);
  }

  a1[62] = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  a1[63].i32[0] = 1102504264;
  a1[63].i16[2] = 0;
  a1[137].i64[0] = 0x7FEFFFFFFFFFFFFFLL;
  v4 = *(a2 + 120);
  result = sub_1004585C8(a1, (a2 + 64), *(a2 + 112), 1, v4, *(a2 + 216));
  a1[136].i32[0] = 3;
  return result;
}

void sub_1004587A0(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, float a4)
{
  if ((*(a1 + 1012) & 1) == 0)
  {
    *(a1 + 1008) = a4;
    *(a1 + 2136) = a3;
    uuid_copy((a1 + 1014), a2);
    v5 = 0;
    *(a1 + 1012) = 1;
    do
    {
      *(a1 + v5 + 232) = *(a1 + 1008);
      uuid_copy((a1 + v5 + 216), (a1 + 1014));
      v5 += 112;
    }

    while (v5 != 784);
    v6 = *(a1 + 192);
    if (v6)
    {
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      v7 = *(a1 + 184);
      v8 = *(a1 + 160);
      v9 = (v8 + 8 * (v7 / 0x1A));
      if (*(a1 + 168) == v8)
      {
        v11 = 0;
        v14 = 0;
        v13 = (v8 + ((((v7 + v6) * 0x4EC4EC4EC4EC4EC5uLL) >> 64) & 0x7FFFFFFFFFFFFFF8));
      }

      else
      {
        v10 = *(v8 + 8 * (v7 / 0x1A));
        v11 = &v10[152 * (v7 % 0x1A)];
        v12 = v7 + v6;
        v13 = (v8 + 8 * (v12 / 0x1A));
        v14 = *v13 + 152 * (v12 % 0x1A);
        if (v11 != v14)
        {
          while (*v11 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v11 += 152;
            if (v11 - v10 == 3952)
            {
              v15 = v9[1];
              ++v9;
              v10 = v15;
              v11 = v15;
            }

            if (v11 == v14)
            {
              v11 = (*v13 + 152 * (v12 % 0x1A));
              break;
            }
          }
        }
      }

      *&v46 = &v31;
      sub_10045E914(v9, v11, v13, v14, &v46);
      v16 = *(a1 + 184) + *(a1 + 192);
      v17 = *(a1 + 160);
      v18 = (v17 + 8 * (v16 / 0x1A));
      if (*(a1 + 168) == v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = (*v18 + 152 * (v16 % 0x1A));
      }

      sub_1000C8D14((a1 + 152), v9, v11, v18, v19);
      v55 = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      v20 = 0.0;
      if (sub_100D27F8C((a1 + 1072), &v46) == 100)
      {
        v21 = *&v49 + 2.22044605e-16;
        if (*(a1 + 992) >= *&v49 + 2.22044605e-16)
        {
          v21 = *(a1 + 992);
        }

        v42 = v52;
        v43 = v53;
        v44 = v54;
        v36 = v48;
        v39 = *(&v49 + 1);
        v45 = v55;
        v40 = v50;
        v41 = v51;
        *buf_8 = *(&v46 + 1);
        *&buf_8[8] = v47;
        buf = 0x7FFFFFFFFFFFFFFFLL;
        v37 = v21;
        v38 = v21;
        v39 = *(a1 + 1000);
        LODWORD(v42) = 4;
        *(&v41 + 1) = *(a1 + 1008);
        *&v44 = 0;
        uuid_copy(buf_8, (a1 + 1014));
        sub_10045A4E4(a1, &buf);
        v20 = *(&v50 + 1);
        if (*(&v33 + 1))
        {
          *&v33 = v33 + 1;
          --*(&v33 + 1);
          if (v33 >= 0x34)
          {
            operator delete(**(&v31 + 1));
            *(&v31 + 1) += 8;
            *&v33 = v33 - 26;
          }
        }
      }

      if (*(&v33 + 1))
      {
        v22 = (*(&v31 + 1) + 8 * (v33 / 0x1A));
        v23 = *v22 + 152 * (v33 % 0x1A);
        if (SHIDWORD(v52) <= *(v23 + 108))
        {
          if (v32 != *(&v31 + 1))
          {
            v28 = *(*(&v31 + 1) + 8 * ((v33 + *(&v33 + 1)) / 0x1AuLL)) + 152 * ((v33 + *(&v33 + 1)) % 0x1AuLL);
            while (v23 != v28)
            {
              if (!*(a1 + 2136) && (*(v23 + 96) - 1) <= 1)
              {
                v29 = *(a1 + 1008);
                *(v23 + 88) = v29;
                v20 = v20 + v29;
                *(v23 + 72) = v20;
              }

              uuid_copy((v23 + 8), (a1 + 1014));
              sub_10045A4E4(a1, v23);
              v23 += 152;
              if (v23 - *v22 == 3952)
              {
                v30 = v22[1];
                ++v22;
                v23 = v30;
              }
            }
          }
        }

        else
        {
          if (qword_1025D4240 != -1)
          {
            sub_1018830D0();
          }

          v24 = qword_1025D4248;
          if (os_log_type_enabled(qword_1025D4248, OS_LOG_TYPE_FAULT))
          {
            v25 = *(*(*(&v31 + 1) + 8 * (v33 / 0x1A)) + 152 * (v33 % 0x1A) + 108);
            buf = 68289538;
            *buf_8 = 2082;
            *&buf_8[2] = "";
            *&buf_8[10] = 1026;
            *&buf_8[12] = HIDWORD(v52);
            *&buf_8[16] = 1026;
            *&buf_8[18] = v25;
            _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unexpected lap counts, skipping in-memory laps., persisted laps:%{public}d, in-memory laps:%{public}d}", &buf, 0x1Eu);
            if (qword_1025D4240 != -1)
            {
              sub_1018830D0();
            }
          }

          v26 = qword_1025D4248;
          if (os_signpost_enabled(qword_1025D4248))
          {
            v27 = *(*(*(&v31 + 1) + 8 * (v33 / 0x1A)) + 152 * (v33 % 0x1A) + 108);
            buf = 68289538;
            *buf_8 = 2082;
            *&buf_8[2] = "";
            *&buf_8[10] = 1026;
            *&buf_8[12] = HIDWORD(v52);
            *&buf_8[16] = 1026;
            *&buf_8[18] = v27;
            _os_signpost_emit_with_name_impl(dword_100000000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unexpected lap counts, skipping in-memory laps.", "{msg%{public}.0s:Unexpected lap counts, skipping in-memory laps., persisted laps:%{public}d, in-memory laps:%{public}d}", &buf, 0x1Eu);
          }
        }
      }

      sub_100106180(&v31);
    }
  }
}

void sub_100458D18(int64x2_t *a1)
{
  if (!a1[133].i64[1])
  {
    sub_10045B3B0(a1);
  }

  a1[62] = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  a1[63].i32[0] = 1102504264;
  a1[63].i16[2] = 0;
  a1[137].i64[0] = 0x7FEFFFFFFFFFFFFFLL;
  a1[136].i32[0] = 6;
  v2 = a1[10].i64[0];
  v3 = a1[10].i64[1];
  a1[12].i64[0] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[10].i64[1];
      v2 = (a1[10].i64[0] + 8);
      a1[10].i64[0] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 13;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v6 = 26;
  }

  a1[11].i64[1] = v6;
LABEL_10:

  sub_100458DE4(a1);
}

void sub_100458DE4(void *a1)
{
  v2 = a1[8];
  v3 = a1[9];
  a1[12] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[9];
      v2 = (a1[8] + 8);
      a1[8] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 85;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 170;
  }

  a1[11] = v6;
LABEL_8:
  a1[132] = 0;
  v7 = a1[14];
  v8 = a1[15];
  a1[18] = 0;
  v9 = (v8 - v7) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v10 = a1[15];
      v7 = (a1[14] + 8);
      a1[14] = v7;
      v9 = (v10 - v7) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v11 = 85;
    goto LABEL_14;
  }

  if (v9 == 2)
  {
    v11 = 170;
LABEL_14:
    a1[17] = v11;
  }

  a1[5] = a1[4];
}

uint64_t sub_100458ECC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(a1 + 2176) = 0;
  *(a1 + 2184) = a3;
  v6 = *(a2 + 176);
  v48[10] = *(a2 + 160);
  v48[11] = v6;
  v48[12] = *(a2 + 192);
  v49 = *(a2 + 208);
  v7 = *(a2 + 112);
  v48[6] = *(a2 + 96);
  v48[7] = v7;
  v8 = *(a2 + 144);
  v48[8] = *(a2 + 128);
  v48[9] = v8;
  v9 = *(a2 + 48);
  v48[2] = *(a2 + 32);
  v48[3] = v9;
  v10 = *(a2 + 80);
  v48[4] = *(a2 + 64);
  v48[5] = v10;
  v11 = *(a2 + 16);
  v48[0] = *a2;
  v48[1] = v11;
  v51 = a4;
  v50 = a3;
  sub_1000CE87C(a1 + 8, 1, v48);
  if (*(a2 + 96) != 19 && !*(a1 + 2176))
  {
    return 0;
  }

  memset(out, 0, 37);
  memset(v46, 0, 37);
  uuid_unparse((a2 + 64), out);
  uuid_unparse((a2 + 80), v46);
  if (qword_1025D4240 != -1)
  {
    sub_1018830D0();
  }

  v12 = qword_1025D4248;
  if (os_log_type_enabled(qword_1025D4248, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 2176);
    v14 = sub_100459264(v13);
    v15 = *(a1 + 2136);
    v16 = *(a1 + 1008);
    v17 = *(a2 + 112);
    v18 = *(a2 + 120);
    v19 = *(a1 + 24);
    v20 = *(a2 + 16);
    v21 = *(a2 + 96);
    *buf = 136448770;
    v25 = v14;
    v26 = 2082;
    v27 = out;
    v28 = 2082;
    v29 = v46;
    v30 = 1026;
    v31 = v13;
    v32 = 2050;
    v33 = v15;
    v34 = 2050;
    v35 = v17;
    v36 = 2050;
    v37 = v16;
    v38 = 2050;
    v39 = v18;
    v40 = 1024;
    v41 = v19;
    v42 = 2048;
    v43 = v20;
    v44 = 2048;
    v45 = v21;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "SwimDataStoreEvent,%{public}s,sessionId,%{public}s,overviewId,%{public}s,updateType,%{public}d,swimLocation,%{public}ld,swimLocationEvent,%{public}ld,poolLength,%{public}f,poolLengthEvent,%{public}f,state,%d,workoutEvent,%ld,workoutType,%ld", buf, 0x68u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4240 != -1)
    {
      sub_1018830D0();
    }

    sub_100459264(*(a1 + 2176));
    v23 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLSwimDataStore::SessionUpdate CLSwimDataStore::feedWorkoutEvent(const CLMotionStateMediator_Type::WorkoutEvent &, CFAbsoluteTime, CLMotionTypeTimestamp)", "%s\n", v23);
    if (v23 != buf)
    {
      free(v23);
    }
  }

  return *(a1 + 2176);
}

const char *sub_100459264(int a1)
{
  if ((a1 - 1) > 5)
  {
    return "None";
  }

  else
  {
    return off_102455760[a1 - 1];
  }
}

uint64_t sub_1004592BC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a2 + 120);
  result = sub_1004585C8(v2, (a2 + 64), *(a2 + 112), 0, v3, *(a2 + 216));
  *(v2 + 2176) = 1;
  return result;
}

uint64_t sub_10045930C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 112);
  v3 = v2 == 1 || *(a2 + 120) > 0.0 && v2 == 0;
  v5 = v2 < 2 && v3;
  if (*(a2 + 16))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a2 + 96) == 19;
  }

  if (v6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100459354(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a2 + 120);
  result = sub_1004585C8(v2, (a2 + 64), *(a2 + 112), 1, v3, *(a2 + 216));
  *(v2 + 2176) = 2;
  return result;
}

uint64_t sub_1004593A4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return sub_100458510(v2, a2);
}

uint64_t sub_1004593B4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = (a1 - 8);
  }

  else
  {
    v2 = 0;
  }

  return sub_100458720(v2, a2);
}

uint64_t sub_1004593C4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return sub_10045856C(v2, a2);
}

void sub_1004593D4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a2 + 120);
  sub_1004587A0(v2, (a2 + 64), *(a2 + 112), v3);
  *(v2 + 2176) = 4;
}

int64x2_t sub_100459440(uint64_t a1)
{
  if (a1)
  {
    v1 = (a1 - 8);
  }

  else
  {
    v1 = 0;
  }

  if (!v1[133].i64[1])
  {
    sub_10045B3B0(v1);
  }

  result = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v1[62] = result;
  v1[63].i32[0] = 1102504264;
  v1[63].i16[2] = 0;
  v1[137].i64[0] = 0x7FEFFFFFFFFFFFFFLL;
  v1[136].i32[0] = 5;
  return result;
}

void sub_1004594C8(uint64_t a1)
{
  if (a1)
  {
    sub_100458D18((a1 - 8));
  }

  else
  {
    sub_100458D18(0);
  }
}

uint64_t sub_1004594D8(uint64_t a1)
{
  *(a1 + 8) = &unk_1024554A8;
  *(a1 + 16) = 7;
  *(a1 + 24) = 512;
  *a1 = off_102455560;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 992) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  *(a1 + 1008) = 1102504264;
  *(a1 + 1012) = 0;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = -1082130432;
  *(a1 + 1068) = 0;
  sub_100D26664(a1 + 1072);
  sub_100C5E66C(a1 + 1560);
  sub_101212CA8(a1 + 1664, a1);
  *(a1 + 2120) = 0u;
  sub_10107A19C((a1 + 2144));
  *(a1 + 2192) = 0x7FEFFFFFFFFFFFFFLL;
  memcpy((a1 + 200), &unk_101C78688, 0x310uLL);
  *(a1 + 984) = 0;
  *(a1 + 988) = 0;
  *(a1 + 990) = 0;
  uuid_parse("00000000-0000-0000-0000-000000000000", (a1 + 1030));
  uuid_parse("00000000-0000-0000-0000-000000000000", (a1 + 1014));
  return a1;
}

void sub_100459604(_Unwind_Exception *a1)
{
  sub_100D26668(v1 + 134);
  sub_100106180(v1 + 19);
  sub_1000F8B58(v1 + 13);
  sub_1000F8B58(v1 + 7);
  v4 = *v2;
  if (*v2)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10045965C(uint64_t a1)
{
  *a1 = off_102455560;
  *(a1 + 1560) = off_1024556A0;
  sub_1003C93BC(a1 + 1624, *(a1 + 1632));
  sub_10045E1B0((a1 + 1576));
  sub_100D26668(a1 + 1072);
  sub_100106180((a1 + 152));
  sub_1000F8B58((a1 + 104));
  sub_1000F8B58((a1 + 56));
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_100459704(uint64_t a1)
{
  sub_10045965C(a1);

  operator delete();
}

__n128 sub_1004597C4@<Q0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v2 = &unk_101C78688 + 112 * a1;
  v3 = *(v2 + 5);
  *(a2 + 64) = *(v2 + 4);
  *(a2 + 80) = v3;
  *(a2 + 96) = *(v2 + 6);
  v4 = *(v2 + 1);
  *a2 = *v2;
  *(a2 + 16) = v4;
  result = *(v2 + 3);
  *(a2 + 32) = *(v2 + 2);
  *(a2 + 48) = result;
  return result;
}

BOOL sub_1004597F8(uint64_t a1)
{
  __p = 0;
  v72 = 0;
  v73 = 0;
  v68 = sub_100D274C8(a1 + 1072);
  v2 = *(a1 + 160);
  v3 = *(a1 + 168);
  *(a1 + 192) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 168);
      v2 = (*(a1 + 160) + 8);
      *(a1 + 160) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 13;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v6 = 26;
LABEL_7:
    *(a1 + 184) = v6;
  }

  *(a1 + 1069) = 0;
  for (i = __p; i != v72; i += 152)
  {
    sub_10045DCB0((a1 + 152), i);
  }

  if (v68 == 100)
  {
    if (__p == v72)
    {
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v8 = *(v72 - 12);
      v9 = *(v72 - 2);
    }

    *(a1 + 1056) = v8;
    *(a1 + 1060) = v9;
    sub_100D266E8(a1 + 1072, buf);
    v12 = *(a1 + 32);
    if (v12)
    {
      *(a1 + 40) = v12;
      operator delete(v12);
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
    }

    v13 = *buf;
    *(a1 + 32) = *buf;
    v14 = *&buf[8];
    *(a1 + 40) = *&buf[8];
    v15 = v14;
    if (v13 != v14)
    {
      do
      {
        memset(v105, 0, sizeof(v105));
        memset(out, 0, sizeof(out));
        uuid_unparse(v13, out);
        v16 = v13 + 16;
        uuid_unparse((v13 + 16), v105);
        if (qword_1025D4240 != -1)
        {
          sub_1018830D0();
        }

        v17 = qword_1025D4248;
        if (os_log_type_enabled(qword_1025D4248, OS_LOG_TYPE_DEBUG))
        {
          v18 = *(v13 + 40);
          v19 = *(v13 + 32);
          v21 = *(v13 + 48);
          v20 = *(v13 + 56);
          v22 = *(v13 + 72);
          v23 = *(v13 + 80);
          v24 = *(v13 + 64);
          v25 = *(v13 + 88);
          v26 = *(v13 + 96);
          v27 = *(v13 + 104);
          *buf = 136317954;
          *&buf[4] = out;
          *&buf[12] = 1024;
          *&buf[14] = v18;
          *&buf[18] = 2048;
          *&buf[20] = v19;
          *&buf[28] = 2048;
          *&buf[30] = v20;
          *&buf[38] = 2048;
          *&buf[40] = v21;
          *&buf[48] = 2048;
          *&buf[50] = v22;
          v92 = 2048;
          v93 = v23;
          v94 = 2048;
          v95 = v25;
          v96 = 1024;
          v97 = v24;
          v98 = 2048;
          v99 = v26;
          v100 = 2048;
          v101 = v27;
          v102 = 2080;
          v103 = v105;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "Historical-Distributions, loiUuid, %s, style, %d, poolLength, %f, median, %f, mean, %f, stddev, %f, min, %f, max, %f, samples, %d, prctile10, %f, prctile90, %f, uuid, %s", buf, 0x72u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018830F8(buf);
          v28 = *(v13 + 40);
          v29 = *(v13 + 32);
          v31 = *(v13 + 48);
          v30 = *(v13 + 56);
          v32 = *(v13 + 72);
          v33 = *(v13 + 80);
          v34 = *(v13 + 64);
          v35 = *(v13 + 88);
          v36 = *(v13 + 96);
          v37 = *(v13 + 104);
          *__s = 136317954;
          *&__s[4] = out;
          *&__s[12] = 1024;
          *&__s[14] = v28;
          *&__s[18] = 2048;
          *&__s[20] = v29;
          *&__s[28] = 2048;
          *&__s[30] = v30;
          v75 = 2048;
          v76 = v31;
          v77 = 2048;
          v78 = v32;
          v79 = 2048;
          v80 = v33;
          v81 = 2048;
          v82 = v35;
          v83 = 1024;
          v84 = v34;
          v85 = 2048;
          v86 = v36;
          v87 = 2048;
          v88 = v37;
          v89 = 2080;
          v90 = v105;
          v38 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLSwimDataStore::reloadStateFromPersistentStore()", "%s\n", v38);
          if (v38 != buf)
          {
            free(v38);
          }
        }

        v15 = *(a1 + 40);
        v13 = v16 + 96;
      }

      while (v16 + 96 != v15);
      v13 = *(a1 + 32);
    }

    memset(out, 0, 24);
    v70[0] = 0;
    v70[1] = 0;
    v69 = v70;
    if (v13 == v15)
    {
      memset(__s, 0, 24);
    }

    else
    {
      do
      {
        memset(__s, 0, 37);
        uuid_unparse((v13 + 16), __s);
        v39 = strlen(__s);
        if (v39 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_100061080();
        }

        v40 = v39;
        if (v39 >= 0x17)
        {
          operator new();
        }

        buf[23] = v39;
        if (v39)
        {
          memcpy(buf, __s, v39);
        }

        buf[v40] = 0;
        if (out[23] < 0)
        {
          operator delete(*out);
        }

        *out = *buf;
        *&out[16] = *&buf[16];
        v41 = sub_10045EF04(&v69, out);
        if (v70 == v41)
        {
          memset(v105, 0, 28);
          *&v105[4 * *(v13 + 40)] = *(v13 + 64);
          if (out[23] < 0)
          {
            sub_100007244(buf, *out, *&out[8]);
          }

          else
          {
            *buf = *out;
            *&buf[16] = *&out[16];
          }

          *&buf[24] = *v105;
          *&buf[36] = *&v105[12];
          sub_10045EF84(&v69, buf);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          v42 = v41 + 4 * *(v13 + 40);
          v43 = *(v13 + 64);
          if (v43 <= *(v42 + 14))
          {
            v43 = *(v42 + 14);
          }

          *(v42 + 14) = v43;
        }

        v13 += 112;
      }

      while (v13 != *(a1 + 40));
      v44 = v69;
      memset(__s, 0, 24);
      if (v69 != v70)
      {
        v45 = 0;
        do
        {
          v46 = 0;
          for (j = 56; j != 84; j += 4)
          {
            v46 += *(v44 + j);
          }

          v48 = v46;
          if (v45 >= *&__s[16])
          {
            v49 = *__s;
            v50 = v45 - *__s;
            v51 = (v45 - *__s) >> 2;
            v52 = v51 + 1;
            if ((v51 + 1) >> 62)
            {
              sub_10028C64C();
            }

            v53 = *&__s[16] - *__s;
            if ((*&__s[16] - *__s) >> 1 > v52)
            {
              v52 = v53 >> 1;
            }

            if (v53 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v54 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v54 = v52;
            }

            if (v54)
            {
              sub_1000B85D0(__s, v54);
            }

            v55 = (v45 - *__s) >> 2;
            v56 = (4 * v51);
            v57 = (4 * v51 - 4 * v55);
            *v56 = v48;
            v45 = v56 + 1;
            memcpy(v57, v49, v50);
            v58 = *__s;
            *__s = v57;
            *&__s[8] = v45;
            *&__s[16] = 0;
            if (v58)
            {
              operator delete(v58);
            }
          }

          else
          {
            *v45++ = v48;
          }

          *&__s[8] = v45;
          v59 = v44[1];
          if (v59)
          {
            do
            {
              v60 = v59;
              v59 = *v59;
            }

            while (v59);
          }

          else
          {
            do
            {
              v60 = v44[2];
              v61 = *v60 == v44;
              v44 = v60;
            }

            while (!v61);
          }

          v44 = v60;
        }

        while (v60 != v70);
        if (*__s != v45)
        {
          sub_100CFD224(buf, __s);
          v62 = sub_100CFD21C(buf);
          *(a1 + 1064) = LODWORD(v62);
          if (*&buf[24])
          {
            *&buf[32] = *&buf[24];
            operator delete(*&buf[24]);
          }

          goto LABEL_80;
        }
      }
    }

    *(a1 + 1064) = -1082130432;
LABEL_80:
    if (qword_1025D4240 != -1)
    {
      sub_1018830D0();
    }

    v63 = qword_1025D4248;
    if (os_log_type_enabled(qword_1025D4248, OS_LOG_TYPE_DEBUG))
    {
      v64 = *(a1 + 1064);
      *buf = 134218240;
      *&buf[4] = v64;
      *&buf[12] = 2048;
      *&buf[14] = (*&__s[8] - *__s) >> 2;
      _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_DEBUG, "Historical median turns per session, median, %f, Nsessions, %lu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018830F8(buf);
      v66 = *(a1 + 1064);
      *v105 = 134218240;
      *&v105[4] = v66;
      *&v105[12] = 2048;
      *&v105[14] = (*&__s[8] - *__s) >> 2;
      v67 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLSwimDataStore::reloadStateFromPersistentStore()", "%s\n", v67);
      if (v67 != buf)
      {
        free(v67);
      }
    }

    if (*__s)
    {
      *&__s[8] = *__s;
      operator delete(*__s);
    }

    sub_10001AF44(&v69, v70[0]);
    if (out[23] < 0)
    {
      operator delete(*out);
    }

    goto LABEL_89;
  }

  if (qword_1025D4240 != -1)
  {
    sub_1018830D0();
  }

  v10 = qword_1025D4248;
  if (os_log_type_enabled(qword_1025D4248, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v68;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "Did not successfully load state from db! CMError, %d", buf, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018830F8(buf);
    *__s = 67109120;
    *&__s[4] = v68;
    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLSwimDataStore::reloadStateFromPersistentStore()", "%s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

LABEL_89:
  if (__p)
  {
    v72 = __p;
    operator delete(__p);
  }

  return v68 == 100;
}

void sub_10045A1AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, char *a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44)
{
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  sub_10001AF44(&a15, a16);
  if (*(v44 - 185) < 0)
  {
    operator delete(*(v44 - 208));
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10045A26C(uint64_t a1)
{
  if (*(a1 + 1068) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 992);
  if (v2 < 0.0)
  {
    return 0;
  }

  v3 = *(a1 + 1000);
  if (v3 < 0.0)
  {
    return 0;
  }

  memset(v8, 0, sizeof(v8));
  v5 = *(a1 + 192);
  if (v5)
  {
    sub_10045A458(a1, *(*(a1 + 160) + 8 * ((v5 + *(a1 + 184) - 1) / 0x1AuLL)) + 152 * ((v5 + *(a1 + 184) - 1) % 0x1AuLL), v8);
  }

  else
  {
    memset(&v8[40], 0, 32);
    if (v2 < 2.22044605e-16)
    {
      v2 = 2.22044605e-16;
    }

    memset(&v8[72], 0, 80);
    memset(&v8[8], 0, 32);
    *v8 = 0x7FFFFFFFFFFFFFFFLL;
    *&v8[40] = v2;
    *&v8[48] = v2;
    *&v8[56] = v3;
    *&v8[96] = 4;
    *&v8[88] = *(a1 + 1008);
    *&v8[128] = 0uLL;
    uuid_copy(&v8[8], (a1 + 1014));
  }

  sub_10045A4E4(a1, v8);
  sub_100A5E464((a1 + 2120), v8);
  if (qword_1025D4240 != -1)
  {
    sub_1018830D0();
  }

  v6 = qword_1025D4248;
  if (os_log_type_enabled(qword_1025D4248, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Set first session entry", v7, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10188313C();
  }

  return 1;
}

void sub_10045A458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 48) + 2.22044605e-16;
  if (*(a1 + 992) >= v3)
  {
    v3 = *(a1 + 992);
  }

  v4 = *(a2 + 16);
  *a3 = *a2;
  v6 = *(a2 + 64);
  v5 = *(a2 + 80);
  v7 = *(a2 + 32);
  *(a3 + 48) = *(a2 + 48);
  *(a3 + 64) = v6;
  *(a3 + 16) = v4;
  *(a3 + 32) = v7;
  *(a3 + 80) = v5;
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 128);
  *(a3 + 144) = *(a2 + 144);
  *(a3 + 112) = v9;
  *(a3 + 128) = v10;
  *(a3 + 96) = v8;
  *a3 = 0x7FFFFFFFFFFFFFFFLL;
  *(a3 + 40) = v3;
  *(a3 + 48) = v3;
  *(a3 + 56) = *(a1 + 1000);
  *(a3 + 96) = 4;
  *(a3 + 88) = *(a1 + 1008);
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  uuid_copy((a3 + 8), (a1 + 1014));
}

void sub_10045A4E4(uint64_t a1, uint64_t a2)
{
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  sub_10045D958(a1, a2, &v18);
  memset(out, 0, 37);
  uuid_unparse(&v18 + 8, out);
  if (*(a1 + 1012))
  {
    if (qword_1025D4240 != -1)
    {
      sub_1018830D0();
    }

    v3 = qword_1025D4248;
    if (os_log_type_enabled(qword_1025D4248, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134221826;
      *&buf[4] = *(&v20 + 1);
      *&buf[12] = 2048;
      *&buf[14] = v21;
      *&buf[22] = 2048;
      *&buf[24] = *(&v21 + 1);
      *&buf[32] = 2048;
      *&buf[34] = *(&v22 + 1);
      *&buf[42] = 2048;
      *&buf[44] = v23;
      *&buf[52] = 2048;
      *&buf[54] = *(&v23 + 1);
      *&buf[62] = 1024;
      LODWORD(v13) = v24;
      WORD2(v13) = 1024;
      *(&v13 + 6) = DWORD1(v24);
      WORD5(v13) = 1024;
      HIDWORD(v13) = DWORD2(v24);
      LOWORD(v14[0]) = 1024;
      *(v14 + 2) = HIDWORD(v24);
      WORD3(v14[0]) = 1024;
      DWORD2(v14[0]) = DWORD2(v25);
      WORD6(v14[0]) = 2048;
      *(v14 + 14) = v26;
      WORD3(v14[1]) = 2048;
      *(&v14[1] + 1) = *(&v26 + 1);
      LOWORD(v14[2]) = 2048;
      *(&v14[2] + 2) = *&v21 - *(&v20 + 1);
      WORD5(v14[2]) = 2080;
      *(&v14[2] + 12) = out;
      WORD2(v14[3]) = 1024;
      *(&v14[3] + 6) = v27;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Persisting Swim Entry,startTime,%f,endTime,%f,timestamp,%f,distance,%f,distanceTimestamp,%f,poolLength,%f,type,%d,style,%d,strokes,%d,laps,%d,segment,%d,SWOLF,%f,segmentSWOLF,%f,lapTime,%f,uuid,%s,kickCount,%d", buf, 0x8Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101883398();
    }

    if (*(&v20 + 1) <= *&v21)
    {
      v14[1] = v24;
      v14[2] = v25;
      v14[3] = v26;
      v15 = v27;
      *&buf[32] = v20;
      *&buf[48] = v21;
      v13 = v22;
      v14[0] = v23;
      *buf = v18;
      *&buf[16] = v19;
      __p = 0;
      v10 = 0;
      v11 = 0;
      sub_10045EBE0(&__p, buf, &v16, 1uLL);
      sub_100D28474((a1 + 1072), &__p);
      if (__p)
      {
        v10 = __p;
        operator delete(__p);
      }

      v15 = 0;
      memset(v14, 0, sizeof(v14));
      v13 = 0u;
      memset(buf, 0, sizeof(buf));
      if (sub_100D27F8C((a1 + 1072), buf) == 100)
      {
        v6 = *(a1 + 192);
        if (v6 >= 0xC9)
        {
          do
          {
            *(a1 + 192) = v6 - 1;
            ++*(a1 + 184);
            sub_1001FD668(a1 + 152, 1);
            v6 = *(a1 + 192);
          }

          while (v6 > 0xC8);
        }

        sub_10045DCB0((a1 + 152), buf);
        *(a1 + 1013) = 1;
      }

      else
      {
        if (qword_1025D4240 != -1)
        {
          sub_1018830D0();
        }

        v7 = qword_1025D4248;
        if (os_log_type_enabled(qword_1025D4248, OS_LOG_TYPE_FAULT))
        {
          *v8 = 0;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Failure to store lap due to database inaccessibility.", v8, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101883508();
        }
      }
    }

    else
    {
      if (qword_1025D4240 != -1)
      {
        sub_1018830D0();
      }

      v4 = qword_1025D4248;
      if (os_log_type_enabled(qword_1025D4248, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218240;
        *&buf[4] = *(&v20 + 1);
        *&buf[12] = 2048;
        *&buf[14] = v21;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Failure to store lap due to time rollback, startTime, %f, > endTime, %f", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018835FC();
      }
    }
  }

  else
  {
    sub_10045DCB0((a1 + 152), &v18);
    if (qword_1025D4240 != -1)
    {
      sub_1018830D0();
    }

    v5 = qword_1025D4248;
    if (os_log_type_enabled(qword_1025D4248, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134221826;
      *&buf[4] = *(&v20 + 1);
      *&buf[12] = 2048;
      *&buf[14] = v21;
      *&buf[22] = 2048;
      *&buf[24] = *(&v21 + 1);
      *&buf[32] = 2048;
      *&buf[34] = *(&v22 + 1);
      *&buf[42] = 2048;
      *&buf[44] = v23;
      *&buf[52] = 2048;
      *&buf[54] = *(&v23 + 1);
      *&buf[62] = 1024;
      LODWORD(v13) = v24;
      WORD2(v13) = 1024;
      *(&v13 + 6) = DWORD1(v24);
      WORD5(v13) = 1024;
      HIDWORD(v13) = DWORD2(v24);
      LOWORD(v14[0]) = 1024;
      *(v14 + 2) = HIDWORD(v24);
      WORD3(v14[0]) = 1024;
      DWORD2(v14[0]) = DWORD2(v25);
      WORD6(v14[0]) = 2048;
      *(v14 + 14) = v26;
      WORD3(v14[1]) = 2048;
      *(&v14[1] + 1) = *(&v26 + 1);
      LOWORD(v14[2]) = 2048;
      *(&v14[2] + 2) = *&v21 - *(&v20 + 1);
      WORD5(v14[2]) = 2080;
      *(&v14[2] + 12) = out;
      WORD2(v14[3]) = 1024;
      *(&v14[3] + 6) = v27;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Deferring Swim Entry,startTime,%f,endTime,%f,timestamp,%f,distance,%f,distanceTimestamp,%f,poolLength,%f,type,%d,style,%d,strokes,%d,laps,%d,segment,%d,SWOLF,%f,segmentSWOLF,%f,lapTime,%f,uuid,%s,kickCount,%d", buf, 0x8Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101883228();
    }
  }
}

void sub_10045A9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10045AA20(uint64_t a1)
{
  if ((*(a1 + 1068) & 1) == 0)
  {
    result = sub_1004597F8(a1);
    if (!result)
    {
      return result;
    }

    *(a1 + 1068) = 1;
  }

  if (*(a1 + 1069))
  {
    return 1;
  }

  if (sub_10045A26C(a1))
  {
    result = 1;
    *(a1 + 1069) = 1;
  }

  else
  {
    if (qword_1025D4240 != -1)
    {
      sub_101883700();
    }

    v3 = qword_1025D4248;
    if (os_log_type_enabled(qword_1025D4248, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Cannot yet set first swim session entry", v4, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101883714();
      return 0;
    }
  }

  return result;
}

void sub_10045AB08(uint64_t a1, void *a2)
{
  if (qword_1025D4240 != -1)
  {
    sub_101883700();
  }

  v4 = qword_1025D4248;
  if (os_log_type_enabled(qword_1025D4248, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v48) = [a2 count];
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Got %d swimming LOIs.", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101883800(a2);
  }

  if ([a2 count] >= 1)
  {
    if ((*(a1 + 1068) & 1) == 0 && sub_1004597F8(a1))
    {
      *(a1 + 1068) = 1;
    }

    memset(uu, 0, sizeof(uu));
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [a2 reverseObjectEnumerator];
    v31 = [obj countByEnumeratingWithState:&v34 objects:v49 count:16];
    if (!v31)
    {
      goto LABEL_62;
    }

    v5 = 0;
    v30 = *v35;
    do
    {
      v6 = 0;
      do
      {
        if (*v35 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [objc_msgSend(*(*(&v34 + 1) + 8 * v6) "UUIDString")];
        v8 = strlen(v7);
        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_100061080();
        }

        v9 = v8;
        if (v8 >= 0x17)
        {
          operator new();
        }

        v33 = v8;
        if (v8)
        {
          memmove(&__dst, v7, v8);
        }

        *(&__dst + v9) = 0;
        if (qword_1025D4240 != -1)
        {
          sub_1018830D0();
        }

        v10 = qword_1025D4248;
        if (os_log_type_enabled(qword_1025D4248, OS_LOG_TYPE_DEBUG))
        {
          if (v33 >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          *buf = 136315138;
          v48 = p_dst;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "Checking swimming LOI with id '%s'.", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018830F8(buf);
          v24 = v33 >= 0 ? &__dst : __dst;
          *uu2 = 136315138;
          *&uu2[4] = v24;
          v25 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLSwimDataStore::setCurrentLOI(NSArray *)", "%s\n", v25);
          if (v25 != buf)
          {
            free(v25);
          }
        }

        if (v33 >= 0)
        {
          v12 = &__dst;
        }

        else
        {
          v12 = __dst;
        }

        uuid_parse(v12, uu);
        v13 = *(a1 + 32);
        v14 = *(a1 + 40);
        while (v13 != v14)
        {
          v15 = *v13;
          v16 = v13[1];
          v42 = v13[2];
          *uu2 = v15;
          v41 = v16;
          v17 = v13[3];
          v18 = v13[4];
          v19 = v13[6];
          v45 = v13[5];
          v46 = v19;
          v43 = v17;
          v44 = v18;
          if (!uuid_compare(uu, uu2))
          {
            if (qword_1025D4240 != -1)
            {
              sub_1018830D0();
            }

            v20 = qword_1025D4248;
            if (os_log_type_enabled(qword_1025D4248, OS_LOG_TYPE_DEBUG))
            {
              if (v33 >= 0)
              {
                v21 = &__dst;
              }

              else
              {
                v21 = __dst;
              }

              *buf = 136315138;
              v48 = v21;
              _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "Found swimming distributions for LOI with id '%s'.", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018830F8(buf);
              if (v33 >= 0)
              {
                v22 = &__dst;
              }

              else
              {
                v22 = __dst;
              }

              v38 = 136315138;
              v39 = v22;
              v23 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLSwimDataStore::setCurrentLOI(NSArray *)", "%s\n", v23);
              if (v23 != buf)
              {
                free(v23);
              }
            }

            uuid_copy((a1 + 1030), uu);
            v5 = 1;
          }

          v13 += 7;
        }

        if (v33 < 0)
        {
          operator delete(__dst);
        }

        v6 = v6 + 1;
      }

      while (v6 != v31);
      v26 = [obj countByEnumeratingWithState:&v34 objects:v49 count:16];
      v31 = v26;
    }

    while (v26);
    if ((v5 & 1) == 0)
    {
LABEL_62:
      uuid_copy((a1 + 1030), uu);
    }

    *(a1 + 1048) = CFAbsoluteTimeGetCurrent();
    v27 = (a1 + 200);
    v28 = 784;
    do
    {
      uuid_copy(v27, (a1 + 1030));
      v27 += 112;
      v28 -= 112;
    }

    while (v28);
  }
}

void sub_10045B07C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10045B0AC(uint64_t a1, double a2, double a3)
{
  if (*(a1 + 2136) == 1)
  {
    sub_10045B0C0(a1, a2, a3);
  }

  else
  {
    sub_10045B300(a1);
  }
}

void sub_10045B0C0(uint64_t a1, double a2, double a3)
{
  if (((*(*a1 + 176))(a1) & 1) == 0 && sub_10045AA20(a1))
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    memset(v16, 0, sizeof(v16));
    uuid_copy(v16 + 8, (a1 + 1014));
    v6 = *(a1 + 192);
    if (v6)
    {
      v7 = *(*(a1 + 160) + 8 * ((v6 + *(a1 + 184) - 1) / 0x1AuLL)) + 152 * ((v6 + *(a1 + 184) - 1) % 0x1AuLL);
      v8 = *(v7 + 56);
      *(&v17 + 1) = *(v7 + 48);
      v9 = (*(*a1 + 136))(a1, *(a1 + 96), v8, a3);
      v10 = *(a1 + 192) + *(a1 + 184) - 1;
      v11 = *(*(*(a1 + 160) + 8 * (v10 / 0x1A)) + 152 * (v10 % 0x1A) + 108);
    }

    else
    {
      *(&v17 + 1) = *(a1 + 992);
      v9 = sub_10107A1D0(a1 + 2144);
      v11 = 0;
    }

    DWORD1(v21) = v9;
    HIDWORD(v21) = v11;
    *&v18 = a2;
    *(&v18 + 1) = a3;
    *&v19 = 0;
    *(&v19 + 1) = sub_100A5E470(a1 + 2120);
    v20 = *&a2;
    LODWORD(v21) = 3;
    DWORD2(v21) = (*(*a1 + 128))(a1, a3);
    if (*(a1 + 96))
    {
      v12 = sub_10045CBF8(a1, v14, a3);
      v13 = v15;
      if (!v12)
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = *(a1 + 1060);
    }

    LODWORD(v24) = v13;
    DWORD2(v22) = 0;
    v23 = COERCE_UNSIGNED_INT64(sub_100A5ECA0(v16, a1));
    sub_10045A4E4(a1, v16);
  }
}

void sub_10045B300(uint64_t a1)
{
  if ((*(*a1 + 120))(a1, v2))
  {
    v4 = sub_100A5EDBC(v3++, a1);
    v2[24] = 5;
    sub_10045A4E4(a1, v2);
  }
}

uint64_t sub_10045B3B0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 984;
  v4 = result + 200;
  do
  {
    if (*(v3 + v2) == 1 && *(v4 + 40) != 6)
    {
      result = sub_100D26A7C(v1 + 1072);
    }

    ++v2;
    v4 += 112;
  }

  while (v2 != 7);
  return result;
}

uint64_t sub_10045B418(uint64_t a1, unsigned int a2, char a3, double a4)
{
  v8 = sub_10045AA20(a1);
  if (v8)
  {
    sub_100C5E778(a1 + 1560, a4);
    v14 = 0;
    v13.n128_f64[0] = a4;
    v9 = *(a1 + 1056) + 1;
    *(a1 + 1056) = v9;
    v13.n128_u64[1] = __PAIR64__(v9, a2);
    LOBYTE(v14) = a3;
    v10 = *(a1 + 1060);
    if (a2 == 6)
    {
      *(a1 + 1060) = ++v10;
    }

    HIDWORD(v14) = v10;
    v11 = *(a1 + 96);
    if (v11 >= 0x1F5)
    {
      ++*(a1 + 88);
      *(a1 + 96) = v11 - 1;
      sub_10027E208(a1 + 56, 1);
    }

    sub_10045B4E0((a1 + 56), &v13);
  }

  return v8;
}

__n128 sub_10045B4E0(void *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 170 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10045F398(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  result = *a2;
  v8[1].n128_u64[0] = a2[1].n128_u64[0];
  *v8 = result;
  ++a1[5];
  return result;
}

uint64_t sub_10045B590(void *a1, __n128 *a2, double a3)
{
  v6 = sub_10045AA20(a1);
  if (v6)
  {
    if (a1[267])
    {
      sub_101883914();
    }

    a2->n128_f64[0] = a3;
    a2[1].n128_u32[0] = *(a1 + 252);
    v7 = a1[18];
    if (v7)
    {
      v8 = (*(a1[14] + 8 * ((v7 + a1[17] - 1) / 0xAAuLL)) + 24 * ((v7 + a1[17] - 1) % 0xAAuLL));
    }

    else
    {
      v9 = a1[24];
      if (v9)
      {
        v8 = (*(a1[20] + 8 * ((v9 + a1[23] - 1) / 0x1AuLL)) + 152 * ((v9 + a1[23] - 1) % 0x1AuLL) + 56);
      }

      else
      {
        v8 = (a1 + 125);
      }
    }

    a2->n128_u32[2] = (*(*a1 + 136))(a1, a1[12], *v8, a3);
    a2->n128_u32[3] = (*(*a1 + 128))(a1, a3);
    v10 = a1[18];
    if (v10 >= 0xC9)
    {
      ++a1[17];
      a1[18] = v10 - 1;
      sub_10027E208((a1 + 13), 1);
    }

    sub_10045B71C(a1 + 13, a2);
  }

  return v6;
}

__n128 sub_10045B71C(void *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 170 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10045F56C(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  result = *a2;
  v8[1].n128_u64[0] = a2[1].n128_u64[0];
  *v8 = result;
  ++a1[5];
  return result;
}

uint64_t sub_10045B7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return sub_100D281D8((a1 + 1072), a2, a3);
}

void sub_10045B800(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10045B824(void *a1, uint64_t a2)
{
  v2 = a1[24];
  if (v2)
  {
    v3 = *(a1[20] + 8 * ((v2 + a1[23] - 1) / 0x1AuLL)) + 152 * ((v2 + a1[23] - 1) % 0x1AuLL);
    v4 = *(v3 + 80);
    v6 = *(v3 + 32);
    v5 = *(v3 + 48);
    *(a2 + 64) = *(v3 + 64);
    *(a2 + 80) = v4;
    *(a2 + 32) = v6;
    *(a2 + 48) = v5;
    v8 = *(v3 + 112);
    v7 = *(v3 + 128);
    v9 = *(v3 + 96);
    *(a2 + 144) = *(v3 + 144);
    *(a2 + 112) = v8;
    *(a2 + 128) = v7;
    *(a2 + 96) = v9;
    v10 = *(v3 + 16);
    *a2 = *v3;
    *(a2 + 16) = v10;
  }

  return v2 != 0;
}

void sub_10045B8A4(uint64_t a1)
{
  memset(dst, 0, sizeof(dst));
  uuid_copy(dst, (a1 + 1014));
  operator new();
}

void sub_10045B988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10045F88C(va);
  _Unwind_Resume(a1);
}

void sub_10045B9A4(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v5 = a2;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v8 = a1[23];
  v9 = v8 + a1[24];
  v10 = a1[20];
  v11 = a1[21];
  v12 = (v10 + 8 * (v9 / 0x1A));
  if (v11 == v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v12 + 152 * (v9 % 0x1A);
  }

  v67 = a2;
  while (1)
  {
    v14 = v11 == v10 ? 0 : *(v10 + 8 * (v8 / 0x1A)) + 152 * (v8 % 0x1A);
    if (v14 == v13 || v5 >= 1 && v67 <= (*(a4 + 8) - *a4) >> 4)
    {
      break;
    }

    v15 = *v12;
    v16 = v13 - *v12;
    v17 = 0x86BCA1AF286BCA1BLL * (v16 >> 3);
    v18 = v16 < 153 ? v12[-((26 - v17) / 0x1A)] + 152 * (26 * ((26 - v17) / 0x1A) - (26 - v17)) + 3800 : v12[(v17 - 1) / 0x1A] + 152 * ((v17 - 1) % 0x1A);
    v19 = v11 == v10 ? 0 : *(v10 + 8 * (v8 / 0x1A)) + 152 * (v8 % 0x1A);
    if (v19 == v18)
    {
      break;
    }

    if (v13 == v15)
    {
      v21 = *(v12 - 1);
      v15 = v13;
      if ((*(v21 + 3896) - 1) >= 2)
      {
        goto LABEL_65;
      }

      v20 = v21 + 3952;
    }

    else
    {
      v20 = v13;
      if ((*(v13 - 56) - 1) >= 2)
      {
        goto LABEL_65;
      }
    }

    v22 = *(v4 + 24);
    if (!v22)
    {
      sub_1000CF05C();
    }

    v23 = (*(*v22 + 48))(v22, v20 - 152);
    v15 = *v12;
    if (v23)
    {
      v24 = 0x86BCA1AF286BCA1BLL * ((v13 - v15) >> 3);
      if ((v13 - v15) < 153)
      {
        v30 = 26 - v24;
        v31 = (26 - v24) / 0x1A;
        v27 = &v12[-v31];
        v28 = *v27;
        v29 = *v27 + 152 * (26 * v31 - v30) + 3800;
      }

      else
      {
        v25 = v24 - 1;
        v26 = (v24 - 1) / 0x1A;
        v27 = &v12[v26];
        v28 = *v27;
        v29 = *v27 + 152 * (v25 - 26 * v26);
      }

      v32 = a1[20];
      while (1)
      {
        v33 = a1[21] == v32 ? 0 : *(v32 + 8 * (a1[23] / 0x1AuLL)) + 152 * (a1[23] % 0x1AuLL);
        if (v33 == v29)
        {
          break;
        }

        if (v29 == v28)
        {
          v37 = *(v27 - 1);
          v38 = *(v37 + 3896);
          v61 = v38 > 4;
          v39 = (1 << v38) & 0x16;
          if (!v61 && v39 != 0)
          {
LABEL_46:
            if (v13 == v15)
            {
              v43 = *(v12 - 1);
              v41 = (v43 + 3888);
              v42 = v43 + 3952;
            }

            else
            {
              v41 = (v13 - 64);
              v42 = v13;
            }

            if (v29 == v28)
            {
              v29 = *(v27 - 1) + 3952;
            }

            v44 = *v41;
            v45 = *(v42 - 48) - *(v29 - 48);
            v46 = *(a4 + 8);
            v47 = *(a4 + 16);
            if (v46 >= v47)
            {
              v49 = (v46 - *a4) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                sub_10028C64C();
              }

              v51 = v47 - *a4;
              if (v51 >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v52 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v52 = v50;
              }

              if (v52)
              {
                sub_1000D758C(a4, v52);
              }

              v53 = 16 * v49;
              *v53 = v44;
              *(v53 + 8) = v45;
              *(v53 + 12) = 0;
              v48 = 16 * v49 + 16;
              v54 = *(a4 + 8) - *a4;
              v55 = v53 - v54;
              memcpy((v53 - v54), *a4, v54);
              v56 = *a4;
              *a4 = v55;
              *(a4 + 8) = v48;
              *(a4 + 16) = 0;
              if (v56)
              {
                operator delete(v56);
              }

              v4 = a3;
            }

            else
            {
              *v46 = v44;
              v48 = v46 + 16;
              *(v46 + 8) = v45;
              *(v46 + 12) = 0;
            }

            v5 = a2;
            *(a4 + 8) = v48;
            v15 = *v12;
            break;
          }

          v29 = v37 + 3952;
          v28 = *--v27;
        }

        else
        {
          v34 = *(v29 - 56);
          v61 = v34 > 4;
          v35 = (1 << v34) & 0x16;
          if (!v61 && v35 != 0)
          {
            goto LABEL_46;
          }
        }

        v29 -= 152;
      }
    }

LABEL_65:
    if (v13 == v15)
    {
      v57 = *--v12;
      v13 = v57 + 3952;
    }

    v13 -= 152;
    v8 = a1[23];
    v10 = a1[20];
    v11 = a1[21];
  }

  v58 = *a4;
  v59 = *(a4 + 8);
  v60 = (v59 - 16);
  v61 = *a4 != v59 && v60 > v58;
  if (v61)
  {
    v62 = v58 + 16;
    do
    {
      v63 = *(v62 - 1);
      *(v62 - 1) = *v60;
      *v60 = v63;
      v60 -= 16;
      v64 = v62 >= v60;
      v62 += 16;
    }

    while (!v64);
  }
}

void sub_10045BE0C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10045BE34(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = *(a1 + 184) + *(a1 + 192);
  v7 = *(a1 + 160);
  v8 = *(a1 + 168);
  v9 = (v7 + 8 * (v6 / 0x1A));
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v9 + 152 * (v6 % 0x1A);
  }

  while (1)
  {
    v11 = v8 == v7 ? 0 : *(v7 + 8 * (*(a1 + 184) / 0x1AuLL)) + 152 * (*(a1 + 184) % 0x1AuLL);
    if (v11 == v10)
    {
      break;
    }

    if (v10 == *v9)
    {
      v13 = *(v9 - 1);
      if (*(v13 + 3920) < a2)
      {
        break;
      }

      v12 = v13 + 3952;
    }

    else
    {
      v12 = v10;
      if (*(v10 - 32) < a2)
      {
        break;
      }
    }

    if (uuid_compare((v12 - 144), (a1 + 1014)))
    {
      break;
    }

    v14 = *v9;
    v15 = v10 - *v9;
    v16 = 0x86BCA1AF286BCA1BLL * (v15 >> 3);
    v17 = v16 - 1;
    v18 = v15 < 153 ? v9[-((26 - v16) / 0x1A)] + 152 * (v16 - 26 + 26 * ((26 - v16) / 0x1A)) + 3800 : v9[v17 / 0x1A] + 152 * (v17 % 0x1A);
    v19 = *(a1 + 160);
    v20 = *(a1 + 168) == v19 ? 0 : *(v19 + 8 * (*(a1 + 184) / 0x1AuLL)) + 152 * (*(a1 + 184) % 0x1AuLL);
    if (v20 == v18)
    {
      break;
    }

    if (v10 == v14)
    {
      v23 = *(v9 - 1);
      v22 = v10;
      if (*(v23 + 3920) != a2)
      {
        goto LABEL_54;
      }

      v21 = v23 + 3952;
    }

    else
    {
      v21 = v10;
      if (*(v10 - 32) != a2)
      {
        v22 = *v9;
        goto LABEL_54;
      }
    }

    v24 = *(v21 - 56) - 1;
    v22 = *v9;
    if (v24 <= 1)
    {
      if (v15 < 153)
      {
        v28 = 26 - v16;
        v29 = (26 - v16) / 0x1A;
        v25 = &v9[-v29];
        v26 = *v25;
        v27 = *v25 + 152 * (26 * v29 - v28) + 3800;
      }

      else
      {
        v25 = &v9[v17 / 0x1A];
        v26 = *v25;
        v27 = *v25 + 152 * (v17 % 0x1A);
      }

      if (v10 == v14)
      {
        v33 = *(v9 - 1);
        v30 = (v33 + 3840);
        v31 = (v33 + 3848);
        v32 = v33 + 3952;
      }

      else
      {
        v30 = (v10 - 112);
        v31 = (v10 - 104);
        v32 = v10;
      }

      v34 = v27;
      if (v27 == v26)
      {
        v34 = *(v25 - 1) + 3952;
      }

      if (v10 == v14)
      {
        v37 = *(v9 - 1);
        v35 = (v37 + 3900);
        v36 = v37 + 3952;
      }

      else
      {
        v35 = (v10 - 52);
        v36 = v10;
      }

      if (v27 == v26)
      {
        v27 = *(v25 - 1) + 3952;
      }

      v38 = v10;
      if (v10 == v14)
      {
        v38 = *(v9 - 1) + 3952;
      }

      v39 = *v30;
      v40 = *v31;
      v41 = *(v32 - 80) - *(v34 - 80);
      v42 = *v35;
      v43 = *(v36 - 48) - *(v27 - 48);
      v44 = *(v38 - 24);
      v45 = a3[1];
      v46 = a3[2];
      if (v45 >= v46)
      {
        v48 = *a3;
        v49 = v45 - *a3;
        v50 = 0xCCCCCCCCCCCCCCCDLL * (v49 >> 3) + 1;
        if (v50 > 0x666666666666666)
        {
          sub_10028C64C();
        }

        v51 = 0xCCCCCCCCCCCCCCCDLL * ((v46 - v48) >> 3);
        if (2 * v51 > v50)
        {
          v50 = 2 * v51;
        }

        if (v51 >= 0x333333333333333)
        {
          v50 = 0x666666666666666;
        }

        if (v50)
        {
          sub_10045EA08(a3, v50);
        }

        v52 = 8 * (v49 >> 3);
        *v52 = v39;
        *(v52 + 8) = v40;
        *(v52 + 16) = v41;
        *(v52 + 24) = v42;
        *(v52 + 28) = v43;
        *(v52 + 32) = v44;
        v47 = v52 + 40;
        v53 = v52 - v49;
        memcpy((v52 - v49), v48, v49);
        v54 = *a3;
        *a3 = v53;
        a3[1] = v47;
        a3[2] = 0;
        if (v54)
        {
          operator delete(v54);
        }
      }

      else
      {
        *v45 = v39;
        *(v45 + 1) = v40;
        *(v45 + 2) = v41;
        *(v45 + 6) = v42;
        *(v45 + 7) = v43;
        v47 = (v45 + 40);
        *(v45 + 4) = v44;
      }

      a3[1] = v47;
      v22 = *v9;
    }

LABEL_54:
    if (v10 == v22)
    {
      v55 = *--v9;
      v10 = v55 + 3952;
    }

    v10 -= 152;
    v7 = *(a1 + 160);
    v8 = *(a1 + 168);
  }

  v56 = *a3;
  v57 = a3[1];
  v58 = v57 - 40;
  if (*a3 != v57 && v58 > v56)
  {
    v60 = v56 + 40;
    do
    {
      v61 = *(v60 - 40);
      v62 = *(v60 - 24);
      v63 = *(v60 - 1);
      v64 = *(v58 + 32);
      v65 = *(v58 + 16);
      *(v60 - 40) = *v58;
      *(v60 - 24) = v65;
      *(v60 - 1) = v64;
      *(v58 + 32) = v63;
      *v58 = v61;
      *(v58 + 16) = v62;
      v58 -= 40;
      v66 = v60 >= v58;
      v60 += 40;
    }

    while (!v66);
  }
}

void sub_10045C2BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10045C2E0(void *a1, int a2, void *a3, _DWORD *a4)
{
  v4 = a1[8];
  if (a1[9] == v4)
  {
    return 0;
  }

  v5 = a1[11];
  v6 = (v4 + 8 * (v5 / 0xAA));
  v7 = *v6;
  v8 = *v6 + 24 * (v5 % 0xAA);
  v9 = *(v4 + 8 * ((a1[12] + v5) / 0xAA)) + 24 * ((a1[12] + v5) % 0xAA);
  if (v8 != v9)
  {
    while (*(v8 + 12) < a2)
    {
      v8 += 24;
      if (v8 - v7 == 4080)
      {
        v10 = v6[1];
        ++v6;
        v7 = v10;
        v8 = v10;
      }

      if (v8 == v9)
      {
        return 0;
      }
    }
  }

  if (v8 == v9)
  {
    return 0;
  }

  *a3 = *v8;
  *a4 = *(v8 + 12);
  return 1;
}

uint64_t sub_10045C390(void *a1)
{
  v1 = a1[24];
  if (v1)
  {
    return *(*(a1[20] + 8 * ((v1 + a1[23] - 1) / 0x1AuLL)) + 152 * ((v1 + a1[23] - 1) % 0x1AuLL) + 108);
  }

  else
  {
    return 0;
  }
}

double sub_10045C3E4(void *a1)
{
  if (!a1[24])
  {
    return 0.0;
  }

  if ((*(*a1 + 176))(a1))
  {
    v2 = a1[24] + a1[23] - 1;
    return *(*(a1[20] + 8 * (v2 / 0x1A)) + 152 * (v2 % 0x1A) + 72);
  }

  else
  {

    return sub_100A5E470((a1 + 265));
  }
}

void sub_10045C49C(void *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v7 = a1[17];
  v8 = v7 + a1[18];
  v9 = a1[14];
  v10 = a1[15];
  v11 = (v9 + 8 * (v8 / 0xAA));
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = *v11 + 24 * (v8 % 0xAA);
  }

  v13 = 0;
  v14 = a3;
  v49 = a3;
  v48 = a3;
  while (1)
  {
    v15 = v10 == v9 ? 0 : *(v9 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA);
    if (v15 == v12)
    {
      break;
    }

    v16 = *v11;
    v17 = v12 - *v11;
    v18 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 3);
    v19 = v18 - 1;
    v20 = v17 < 25 ? v11[-((170 - v18) / 0xAA)] + 24 * (v18 - 170 + 170 * ((170 - v18) / 0xAA)) + 4056 : v11[v19 / 0xAA] + 24 * (v19 % 0xAA);
    v21 = v10 == v9 ? 0 : *(v9 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA);
    if (v21 == v20 || a3 >= 1 && v14 <= (v13 - *a4) >> 4)
    {
      break;
    }

    if (a2 == 5)
    {
      goto LABEL_22;
    }

    v22 = v12;
    if (v12 == v16)
    {
      v22 = *(v11 - 1) + 4080;
    }

    if (*(v22 - 16) == a2)
    {
LABEL_22:
      v23 = v12;
      if (v12 == v16)
      {
        v23 = *(v11 - 1) + 4080;
      }

      if (v17 < 25)
      {
        v27 = 170 - v18;
        v28 = (170 - v18) / 0xAA;
        v24 = -v28;
        v25 = v11[-v28];
        v26 = v25 + 24 * (170 * v28 - v27) + 4056;
      }

      else
      {
        v24 = v19 / 0xAA;
        v25 = v11[v19 / 0xAA];
        v26 = v25 + 24 * (v19 % 0xAA);
      }

      if (v26 == v25)
      {
        v26 = v11[v24 - 1] + 4080;
      }

      v29 = *(v23 - 12) - *(v26 - 12);
      if (v29 >= 1)
      {
        v30 = v12;
        if (v12 == v16)
        {
          v30 = *(v11 - 1) + 4080;
        }

        v31 = *(v30 - 8);
        v32 = *(a4 + 16);
        if (v13 >= v32)
        {
          v33 = (v13 - *a4) >> 4;
          if ((v33 + 1) >> 60)
          {
            sub_10028C64C();
          }

          v34 = v32 - *a4;
          v35 = v34 >> 3;
          if (v34 >> 3 <= (v33 + 1))
          {
            v35 = v33 + 1;
          }

          if (v34 >= 0x7FFFFFFFFFFFFFF0)
          {
            v36 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v36 = v35;
          }

          if (v36)
          {
            sub_1000D758C(a4, v36);
          }

          v37 = 16 * v33;
          *v37 = v31;
          *(v37 + 8) = v29;
          *(v37 + 12) = 0;
          v13 = 16 * v33 + 16;
          v38 = *(a4 + 8) - *a4;
          v39 = v37 - v38;
          memcpy((v37 - v38), *a4, v38);
          v40 = *a4;
          *a4 = v39;
          *(a4 + 8) = v13;
          *(a4 + 16) = 0;
          if (v40)
          {
            operator delete(v40);
          }

          a3 = v49;
          v14 = v48;
        }

        else
        {
          *v13 = v31;
          *(v13 + 8) = v29;
          *(v13 + 12) = 0;
          v13 += 16;
        }

        *(a4 + 8) = v13;
        v16 = *v11;
      }
    }

    if (v12 == v16)
    {
      v41 = *--v11;
      v12 = v41 + 4080;
    }

    v12 -= 24;
    v7 = a1[17];
    v9 = a1[14];
    v10 = a1[15];
  }

  v42 = *a4;
  v43 = (v13 - 16);
  if (*a4 != v13 && v43 > v42)
  {
    v45 = v42 + 16;
    do
    {
      v46 = *(v45 - 1);
      *(v45 - 1) = *v43;
      *v43 = v46;
      v43 -= 16;
      v47 = v45 >= v43;
      v45 += 16;
    }

    while (!v47);
  }
}

void sub_10045C810(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10045C830(void *a1, int a2)
{
  v2 = a1[14];
  if (a1[15] == v2)
  {
    return 0;
  }

  v3 = a1[17];
  v4 = (v2 + 8 * (v3 / 0xAA));
  v5 = *v4;
  v6 = *v4 + 24 * (v3 % 0xAA);
  v7 = *(v2 + 8 * ((a1[18] + v3) / 0xAA)) + 24 * ((a1[18] + v3) % 0xAA);
  if (v6 == v7)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    if (*(v6 + 8) == a2)
    {
      result = (result + 1);
    }

    else
    {
      result = result;
    }

    v6 += 24;
    if (v6 - v5 == 4080)
    {
      v9 = v4[1];
      ++v4;
      v5 = v9;
      v6 = v9;
    }
  }

  while (v6 != v7);
  return result;
}

__n128 sub_10045C8E4(uint64_t a1, int a2, __int128 *a3)
{
  if (*(a3 + 10) != a2)
  {
    sub_101883A8C();
  }

  *(a1 + a2 + 984) = 1;
  v3 = a1 + 112 * a2;
  v4 = *a3;
  v5 = a3[1];
  *(v3 + 232) = a3[2];
  *(v3 + 216) = v5;
  *(v3 + 200) = v4;
  result = a3[3];
  v7 = a3[4];
  v8 = a3[6];
  *(v3 + 280) = a3[5];
  *(v3 + 296) = v8;
  *(v3 + 264) = v7;
  *(v3 + 248) = result;
  return result;
}

__n128 sub_10045C944@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a1 + 112 * a2;
  v4 = *(v3 + 248);
  v5 = *(v3 + 216);
  *a3 = *(v3 + 200);
  *(a3 + 16) = v5;
  *(a3 + 32) = *(v3 + 232);
  *(a3 + 48) = v4;
  v6 = *(v3 + 280);
  *(a3 + 64) = *(v3 + 264);
  *(a3 + 80) = v6;
  result = *(v3 + 296);
  *(a3 + 96) = result;
  return result;
}

uint64_t sub_10045C97C@<X0>(uint64_t a1@<X0>, int a2@<W1>, const unsigned __int8 *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_10045EA60(a4, *(a1 + 32), *(a1 + 40), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 40) - *(a1 + 32)) >> 4));
  memset(uu, 0, sizeof(uu));
  uuid_parse("00000000-0000-0000-0000-000000000000", uu);
  result = uuid_compare(a3, uu);
  v8 = *a4;
  if (result)
  {
    v9 = a4[1];
    v23 = *a3;
    if (v8 != v9)
    {
      while (*(v8 + 40) == a2)
      {
        result = uuid_compare(v8, &v23);
        if (result)
        {
          break;
        }

        v8 += 112;
        if (v8 == v9)
        {
          v8 = v9;
          goto LABEL_14;
        }
      }

      if (v8 != v9)
      {
        for (i = (v8 + 112); i != v9; i += 112)
        {
          if (*(i + 10) == a2)
          {
            result = uuid_compare(i, &v23);
            if (!result)
            {
              v11 = *i;
              v12 = *(i + 2);
              *(v8 + 16) = *(i + 1);
              *(v8 + 32) = v12;
              *v8 = v11;
              v13 = *(i + 3);
              v14 = *(i + 4);
              v15 = *(i + 6);
              *(v8 + 80) = *(i + 5);
              *(v8 + 96) = v15;
              *(v8 + 48) = v13;
              *(v8 + 64) = v14;
              v8 += 112;
            }
          }
        }
      }
    }

LABEL_14:
    if (v8 != *a4)
    {
      v16 = a4[1];
      goto LABEL_27;
    }

    v8 = *a4;
  }

  v16 = a4[1];
  if (v8 != v16)
  {
    while (*(v8 + 40) == a2)
    {
      v8 += 112;
      if (v8 == v16)
      {
        return result;
      }
    }

    if (v8 != v16)
    {
      for (j = (v8 + 112); j != v16; j += 7)
      {
        if (*(j + 10) == a2)
        {
          v18 = *j;
          v19 = j[2];
          *(v8 + 16) = j[1];
          *(v8 + 32) = v19;
          *v8 = v18;
          v20 = j[3];
          v21 = j[4];
          v22 = j[6];
          *(v8 + 80) = j[5];
          *(v8 + 96) = v22;
          *(v8 + 48) = v20;
          *(v8 + 64) = v21;
          v8 += 112;
        }
      }
    }
  }

LABEL_27:
  if (v8 != v16)
  {
    a4[1] = v8;
  }

  return result;
}

void sub_10045CBA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10045CBCC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v4 != v3)
  {
    return sub_10045C97C(a1, a2, (a1 + 1030), a3);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return sub_10045EA60(a3, v4, v3, 0);
}

uint64_t sub_10045CBF8(void *a1, uint64_t a2, double a3)
{
  v3 = a1[12];
  if (!v3)
  {
    return 0;
  }

  v4 = a1[11];
  v5 = v4 + v3;
  v6 = (v4 + v3) / 0xAA;
  v7 = a1[8];
  v8 = (v7 + 8 * v6);
  if (a1[9] == v7)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v9 = *(v7 + 8 * v6);
    v10 = v9 + 24 * (v5 - 170 * v6);
    v11 = *(v7 + 8 * (v4 / 0xAA)) + 24 * (v4 % 0xAA);
    if (v10 != v11)
    {
      v12 = (v7 + 8 * v6);
      do
      {
        if (v10 == v9)
        {
          v13 = *--v12;
          v9 = v13;
          if (*(v13 + 4056) <= a3)
          {
            break;
          }

          v10 = v9 + 4080;
          v8 = v12;
        }

        else if (*(v10 - 24) <= a3)
        {
          break;
        }

        v10 -= 24;
      }

      while (v11 != v10);
    }
  }

  if (v11 == v10)
  {
    return 0;
  }

  if (v10 == *v8)
  {
    v10 = *(v8 - 1) + 4080;
  }

  v15 = *(v10 - 24);
  *(a2 + 16) = *(v10 - 8);
  *a2 = v15;
  return 1;
}

uint64_t sub_10045CCE0(uint64_t a1, double a2)
{
  if (!*(a1 + 96))
  {
    return *(a1 + 1056);
  }

  if (sub_10045CBF8(a1, v3, a2))
  {
    return v4;
  }

  return 0;
}

__n128 sub_10045CD24@<Q0>(void *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = a1[11] + a1[12];
  v7 = a1[8];
  v8 = a1[9];
  v9 = (v7 + 8 * (v6 / 0xAA));
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v9 + 24 * (v6 % 0xAA);
  }

  v11 = 0;
  while (1)
  {
    v12 = v8 == v7 ? 0 : *(v7 + 8 * (a1[11] / 0xAAuLL)) + 24 * (a1[11] % 0xAAuLL);
    if (v12 == v10)
    {
      break;
    }

    if (v10 == *v9)
    {
      v15 = *(v9 - 1);
      result.n128_u64[0] = *(v15 + 4056);
      if (result.n128_f64[0] <= *a2)
      {
        break;
      }

      v14 = v15 + 4080;
    }

    else
    {
      result.n128_u64[0] = *(v10 - 24);
      v14 = v10;
      if (result.n128_f64[0] <= *a2)
      {
        break;
      }
    }

    v16 = (v14 - 24);
    v17 = *(a3 + 16);
    if (v11 >= v17)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a3) >> 3);
      v19 = v18 + 1;
      if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_10028C64C();
      }

      v20 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *a3) >> 3);
      if (2 * v20 > v19)
      {
        v19 = 2 * v20;
      }

      if (v20 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        sub_10045EB88(a3, v21);
      }

      v22 = 24 * v18;
      v23 = *v16;
      *(v22 + 16) = v16[1].n128_u64[0];
      *v22 = v23;
      v11 = (24 * v18 + 24);
      v24 = *(a3 + 8) - *a3;
      v25 = v22 - v24;
      memcpy((v22 - v24), *a3, v24);
      v26 = *a3;
      *a3 = v25;
      *(a3 + 8) = v11;
      *(a3 + 16) = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      result = *v16;
      v11[1].n128_u64[0] = v16[1].n128_u64[0];
      *v11 = result;
      v11 = (v11 + 24);
    }

    *(a3 + 8) = v11;
    if (v10 == *v9)
    {
      v27 = *--v9;
      v10 = v27 + 4080;
    }

    v10 -= 24;
    v7 = a1[8];
    v8 = a1[9];
  }

  v28 = *a3;
  v29 = &v11[-2].n128_i8[8];
  if (*a3 != v11 && v29 > v28)
  {
    v31 = v28 + 24;
    do
    {
      result = *(v31 - 24);
      v32 = *(v31 - 1);
      v33 = *(v29 + 2);
      *(v31 - 24) = *v29;
      *(v31 - 1) = v33;
      *(v29 + 2) = v32;
      *v29 = result;
      v29 -= 24;
      v34 = v31 >= v29;
      v31 += 24;
    }

    while (!v34);
  }

  return result;
}

void sub_10045CF94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10045CFB4(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = a1[11] + a1[12];
  v9 = a1[8];
  v10 = a1[9];
  v11 = (v9 + 8 * (v8 / 0xAA));
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = *v11 + 24 * (v8 % 0xAA);
  }

  v13 = 0;
  while (1)
  {
    v14 = v10 == v9 ? 0 : *(v9 + 8 * (a1[11] / 0xAAuLL)) + 24 * (a1[11] % 0xAAuLL);
    if (v14 == v12)
    {
      break;
    }

    v15 = *v11;
    if (v12 == *v11)
    {
      v18 = *(v11 - 1);
      v19 = *(v18 + 4056);
      if (v19 < a3)
      {
        break;
      }

      if (v19 > a4)
      {
        v15 = v12;
        goto LABEL_30;
      }

      v17 = v18 + 4080;
LABEL_17:
      v20 = v17 - 24;
      v21 = *(a2 + 16);
      if (v13 >= v21)
      {
        v23 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a2) >> 3);
        v24 = v23 + 1;
        if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_10028C64C();
        }

        v25 = 0xAAAAAAAAAAAAAAABLL * ((v21 - *a2) >> 3);
        if (2 * v25 > v24)
        {
          v24 = 2 * v25;
        }

        if (v25 >= 0x555555555555555)
        {
          v26 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          sub_10045EB88(a2, v26);
        }

        v27 = 24 * v23;
        v28 = *v20;
        *(v27 + 16) = *(v20 + 16);
        *v27 = v28;
        v13 = 24 * v23 + 24;
        v29 = *(a2 + 8) - *a2;
        v30 = v27 - v29;
        memcpy((v27 - v29), *a2, v29);
        v31 = *a2;
        *a2 = v30;
        *(a2 + 8) = v13;
        *(a2 + 16) = 0;
        if (v31)
        {
          operator delete(v31);
        }
      }

      else
      {
        v22 = *v20;
        *(v13 + 16) = *(v17 - 8);
        *v13 = v22;
        v13 += 24;
      }

      *(a2 + 8) = v13;
      v15 = *v11;
      goto LABEL_30;
    }

    v16 = *(v12 - 24);
    if (v16 < a3)
    {
      break;
    }

    v17 = v12;
    if (v16 <= a4)
    {
      goto LABEL_17;
    }

LABEL_30:
    if (v12 == v15)
    {
      v32 = *--v11;
      v12 = v32 + 4080;
    }

    v12 -= 24;
    v9 = a1[8];
    v10 = a1[9];
  }

  v33 = *a2;
  v34 = v13 - 24;
  if (*a2 != v13 && v34 > v33)
  {
    v36 = v33 + 24;
    do
    {
      v37 = *(v36 - 24);
      v38 = *(v36 - 1);
      v39 = *(v34 + 16);
      *(v36 - 24) = *v34;
      *(v36 - 1) = v39;
      *(v34 + 16) = v38;
      *v34 = v37;
      v34 -= 24;
      v40 = v36 >= v34;
      v36 += 24;
    }

    while (!v40);
  }
}

void sub_10045D240(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10045D260(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_10045AA20(a1);
  if (v6)
  {
    if (*(a1 + 2136))
    {
      sub_101883C04();
    }

    v36 = 0x7FFFFFFFFFFFFFFFLL;
    memset(v37, 0, sizeof(v37));
    v8 = *a2;
    v7 = *(a2 + 8);
    v9 = a3 - v7;
    v10 = v7 < a3;
    v11 = 0.0;
    if (!v10)
    {
      v9 = 0.0;
    }

    v12 = *(a1 + 2184);
    v13 = v12 - v9;
    if (v8 < a3)
    {
      v11 = a3 - v8;
    }

    v14 = v12 - v11;
    v38 = v12 - v9;
    v39 = v12 - v11;
    v40 = v8;
    v50 = 0;
    v41 = 0;
    v15 = *(a1 + 192);
    v16 = *(a1 + 1008);
    if (v15)
    {
      v17 = *(*(*(a1 + 160) + 8 * ((v15 + *(a1 + 184) - 1) / 0x1AuLL)) + 152 * ((v15 + *(a1 + 184) - 1) % 0x1AuLL) + 72) + v16;
    }

    else
    {
      v17 = *(a1 + 1008);
    }

    v42 = v17;
    v43 = v14;
    v44 = v16;
    v45 = 0;
    v46 = (*(*a1 + 128))(a1, v8);
    v18 = *(a1 + 192);
    if (v18)
    {
      v19 = *(*(*(a1 + 160) + 8 * ((v18 + *(a1 + 184) - 1) / 0x1AuLL)) + 152 * ((v18 + *(a1 + 184) - 1) % 0x1AuLL) + 108) + 1;
    }

    else
    {
      v19 = 1;
    }

    v47 = v19;
    v48 = 0u;
    v49 = 0u;
    if (*(a1 + 96))
    {
      v20 = sub_10045CBF8(a1, &v26, *a2);
      v21 = DWORD1(v27);
      if (!v20)
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = *(a1 + 1060);
    }

    LODWORD(v50) = v21;
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    if ((*(*a1 + 120))(a1, &v26))
    {
      DWORD2(v48) = DWORD2(v33);
      v22 = DWORD2(v33) + 1;
    }

    else
    {
      v22 = 1;
    }

    if (*(a2 + 20) == 1)
    {
      sub_10045B300(a1);
      DWORD2(v48) = v22;
    }

    v23 = *(a2 + 16);
    if (v23)
    {
      if (v23 != 1)
      {
LABEL_27:
        HIDWORD(v45) = (*(*a1 + 136))(a1, *(a1 + 96), v8 - vabdd_f64(v14, v13), v8);
        uuid_copy(v37, (a1 + 1014));
        *&v49 = sub_100A5EB0C(&v36, a1);
        sub_10045A4E4(a1, &v36);
        sub_101212FB8((a1 + 1664));
        return v6;
      }

      v24 = 2;
    }

    else
    {
      v24 = 1;
    }

    LODWORD(v45) = v24;
    goto LABEL_27;
  }

  return v6;
}

uint64_t sub_10045D584(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  result = sub_10045AA20(a1);
  if (result)
  {
    if (*(a1 + 1013) == 1)
    {
      v11 = *(a1 + 1008);
      v12 = (*(*a1 + 128))(a1, a3);
      v13 = sub_100C5E758(a1 + 1560, a3);
      v14 = *(a1 + 1064);
      v15 = (*(*a1 + 136))(a1, *(a1 + 96), a3 - a5, a3);
      if (*(a1 + 96))
      {
        v16 = sub_10045CBF8(a1, v25, a3);
        v17 = v25[5];
        if (!v16)
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = *(a1 + 1060);
      }

      v18 = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 40) = a4 - a5;
      *(a2 + 48) = a4;
      *(a2 + 64) = 0;
      *(a2 + 72) = 0;
      *(a2 + 56) = 0;
      *(a2 + 80) = a4;
      *(a2 + 88) = v11;
      *(a2 + 96) = 0;
      *(a2 + 104) = v12;
      *(a2 + 108) = 0;
      *(a2 + 112) = v13;
      *(a2 + 116) = v14;
      *(a2 + 120) = 0;
      *(a2 + 124) = v15;
      *(a2 + 128) = 0;
      *(a2 + 136) = 0;
      *(a2 + 144) = v17;
      if (v13 > 0.0)
      {
        v18 = (*(*a1 + 136))(a1, *(a1 + 1640), 0.0, a3);
      }

      *(a2 + 100) = v18;
      v19 = *(a1 + 192);
      if (v19)
      {
        v20 = *(*(a1 + 160) + 8 * ((v19 + *(a1 + 184) - 1) / 0x1AuLL)) + 152 * ((v19 + *(a1 + 184) - 1) % 0x1AuLL);
        LODWORD(v19) = *(v20 + 120);
        v21 = *(v20 + 108);
      }

      else
      {
        v21 = 0;
      }

      *(a2 + 120) = v19;
      *(a2 + 108) = v21;
      if ((*(*a1 + 176))(a1))
      {
        v22 = *(a1 + 192);
        if (v22)
        {
          v23 = *(*(*(a1 + 160) + 8 * ((v22 + *(a1 + 184) - 1) / 0x1AuLL)) + 152 * ((v22 + *(a1 + 184) - 1) % 0x1AuLL) + 72);
        }

        else
        {
          v23 = 0.0;
        }

        (*(*a1 + 120))(a1, v25);
        v24 = v23 + sub_101212D20(a1 + 1664, v26);
        if (v23 + *(a1 + 1008) + -2.0 < v24)
        {
          v24 = v23 + *(a1 + 1008) + -2.0;
        }
      }

      else
      {
        v24 = sub_100A5E470(a1 + 2120);
      }

      *(a2 + 72) = v24;
      uuid_copy((a2 + 8), (a1 + 1014));
      uuid_parse("00000000-0000-0000-0000-000000000000", (a2 + 24));
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_10045D8C8(uint64_t a1, double a2, double a3)
{
  if (((*(*a1 + 176))(a1) & 1) == 0 && sub_100A5E9A0(a1))
  {

    sub_10045B0C0(a1, a2, a3);
  }
}

__n128 sub_10045D958@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (a1 + 992);
  v6 = *(a1 + 992);
  v7 = (a1 + 2192);
  v8 = *(a1 + 2192);
  if (v6 >= v8)
  {
    if (qword_1025D4240 != -1)
    {
      sub_101883700();
    }

    v13 = qword_1025D4248;
    if (os_log_type_enabled(qword_1025D4248, OS_LOG_TYPE_ERROR))
    {
      v14 = *v5;
      v15 = *v7;
      *buf = 134218240;
      v27 = v14;
      v28 = 2048;
      v29 = v15;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "Session start time should be > session end time, not alterting timestamps, sessionStart, %f, sessionEnd, %f", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101883D7C();
    }
  }

  else
  {
    v9 = v6 + 0.1;
    if (*(a2 + 40) >= v9)
    {
      v9 = *(a2 + 40);
    }

    v10 = v8 + -0.1;
    if (v10 >= *(a2 + 48))
    {
      v10 = *(a2 + 48);
    }

    if (v9 < v10)
    {
      v11 = *(a2 + 16);
      *a3 = *a2;
      *(a3 + 16) = v11;
      *(a3 + 32) = *(a2 + 32);
      *(a3 + 40) = v9;
      *(a3 + 48) = v10;
      *(a3 + 88) = *(a2 + 88);
      *(a3 + 104) = *(a2 + 104);
      *(a3 + 120) = *(a2 + 120);
      *(a3 + 136) = *(a2 + 136);
      *(a3 + 56) = *(a2 + 56);
      result = *(a2 + 72);
      *(a3 + 72) = result;
      return result;
    }

    if (qword_1025D4240 != -1)
    {
      sub_101883700();
    }

    v16 = qword_1025D4248;
    if (os_log_type_enabled(qword_1025D4248, OS_LOG_TYPE_ERROR))
    {
      v17 = *v5;
      v18 = *v7;
      v19 = *(a2 + 40);
      v20 = *(a2 + 48);
      *buf = 134218752;
      v27 = v17;
      v28 = 2048;
      v29 = v18;
      v30 = 2048;
      v31 = v19;
      v32 = 2048;
      v33 = v20;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "sanitizing entry resulted in startTime > endTime, not altering timestamps, sessionStart, %f, sessionEnd, %f, entryStart, %f, entryEnd, %f", buf, 0x2Au);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4240 != -1)
      {
        sub_1018830D0();
      }

      v25 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "CLSwimEntry CLSwimDataStore::sanitizeEntryStartEndTimes(const CLSwimEntry &)", "%s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  v21 = *(a2 + 112);
  *(a3 + 96) = *(a2 + 96);
  *(a3 + 112) = v21;
  *(a3 + 128) = *(a2 + 128);
  *(a3 + 144) = *(a2 + 144);
  v22 = *(a2 + 48);
  *(a3 + 32) = *(a2 + 32);
  *(a3 + 48) = v22;
  v23 = *(a2 + 80);
  *(a3 + 64) = *(a2 + 64);
  *(a3 + 80) = v23;
  result = *a2;
  v24 = *(a2 + 16);
  *a3 = *a2;
  *(a3 + 16) = v24;
  return result;
}

__n128 sub_10045DCB0(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 26 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10045ED30(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x1A)) + 152 * (v7 % 0x1A);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  v12 = *(a2 + 80);
  *(v8 + 64) = *(a2 + 64);
  *(v8 + 80) = v12;
  *(v8 + 32) = v10;
  *(v8 + 48) = v11;
  result = *(a2 + 96);
  v14 = *(a2 + 112);
  v15 = *(a2 + 128);
  *(v8 + 144) = *(a2 + 144);
  *(v8 + 112) = v14;
  *(v8 + 128) = v15;
  *(v8 + 96) = result;
  ++a1[5];
  return result;
}