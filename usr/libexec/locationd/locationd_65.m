double sub_100447268(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100446AE8(a1, lpsrc);
}

double sub_100447308(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v5) = *(a2 + 76);
  if (v5)
  {
    if (*(a2 + 76))
    {
      result = *(a2 + 8);
      *(a1 + 76) |= 1u;
      *(a1 + 8) = result;
      v5 = *(a2 + 76);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }
    }

    else if ((*(a2 + 76) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 16);
    *(a1 + 76) |= 2u;
    *(a1 + 16) = result;
    v5 = *(a2 + 76);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    result = *(a2 + 24);
    *(a1 + 76) |= 4u;
    *(a1 + 24) = result;
    v5 = *(a2 + 76);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    result = *(a2 + 32);
    *(a1 + 76) |= 8u;
    *(a1 + 32) = result;
    v5 = *(a2 + 76);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    result = *(a2 + 40);
    *(a1 + 76) |= 0x10u;
    *(a1 + 40) = result;
    v5 = *(a2 + 76);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

LABEL_18:
    result = *(a2 + 48);
    *(a1 + 76) |= 0x20u;
    *(a1 + 48) = result;
    v5 = *(a2 + 76);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

LABEL_19:
    result = *(a2 + 56);
    *(a1 + 76) |= 0x40u;
    *(a1 + 56) = result;
    if ((*(a2 + 76) & 0x80) == 0)
    {
      return result;
    }

LABEL_20:
    *(a1 + 76) |= 0x80u;
    v6 = *(a1 + 64);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 64);
    if (!v7)
    {
      v7 = *(qword_102636E18 + 64);
    }

    return sub_10041ED1C(v6, v7);
  }

  return result;
}

void sub_1004474D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1004474F0(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102453D00;
  if (qword_102636E18 != this)
  {
    v2 = *(this + 8);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_100447580(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1004474F0(a1);

  operator delete();
}

uint64_t sub_100447618(uint64_t result)
{
  v1 = *(result + 76);
  if (v1)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    if (v1 < 0)
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
      }
    }
  }

  *(result + 76) = 0;
  return result;
}

uint64_t sub_10044765C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 4)
        {
          break;
        }

        if (TagFallback >> 3 > 2)
        {
          if (v7 == 3)
          {
            if (v8 == 1)
            {
              goto LABEL_37;
            }
          }

          else if (v7 == 4 && v8 == 1)
          {
            goto LABEL_41;
          }

          goto LABEL_54;
        }

        if (v7 == 1)
        {
          if (v8 != 1)
          {
            goto LABEL_54;
          }

          *v27 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 8) = *v27;
          *(a1 + 76) |= 1u;
          v10 = *(this + 1);
          if (v10 < *(this + 2) && *v10 == 17)
          {
            *(this + 1) = v10 + 1;
LABEL_30:
            *v27 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 16) = *v27;
            *(a1 + 76) |= 2u;
            v11 = *(this + 1);
            if (v11 < *(this + 2) && *v11 == 25)
            {
              *(this + 1) = v11 + 1;
LABEL_37:
              *v27 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 24) = *v27;
              *(a1 + 76) |= 4u;
              v12 = *(this + 1);
              if (v12 < *(this + 2) && *v12 == 33)
              {
                *(this + 1) = v12 + 1;
LABEL_41:
                *v27 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 32) = *v27;
                *(a1 + 76) |= 8u;
                v13 = *(this + 1);
                if (v13 < *(this + 2) && *v13 == 41)
                {
                  *(this + 1) = v13 + 1;
LABEL_45:
                  *v27 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
                  {
                    return 0;
                  }

                  *(a1 + 40) = *v27;
                  *(a1 + 76) |= 0x10u;
                  v14 = *(this + 1);
                  if (v14 < *(this + 2) && *v14 == 49)
                  {
                    *(this + 1) = v14 + 1;
LABEL_49:
                    *v27 = 0;
                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
                    {
                      return 0;
                    }

                    *(a1 + 48) = *v27;
                    *(a1 + 76) |= 0x20u;
                    v15 = *(this + 1);
                    if (v15 < *(this + 2) && *v15 == 57)
                    {
                      *(this + 1) = v15 + 1;
                      goto LABEL_57;
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          if (v7 == 2 && v8 == 1)
          {
            goto LABEL_30;
          }

LABEL_54:
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

      if (TagFallback >> 3 <= 6)
      {
        if (v7 == 5)
        {
          if (v8 == 1)
          {
            goto LABEL_45;
          }
        }

        else if (v7 == 6 && v8 == 1)
        {
          goto LABEL_49;
        }

        goto LABEL_54;
      }

      if (v7 != 7)
      {
        if (v7 == 8 && v8 == 2)
        {
          v9 = *(a1 + 76);
          goto LABEL_61;
        }

        goto LABEL_54;
      }

      if (v8 != 1)
      {
        goto LABEL_54;
      }

LABEL_57:
      *v27 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 56) = *v27;
      v9 = *(a1 + 76) | 0x40;
      *(a1 + 76) = v9;
      v16 = *(this + 1);
    }

    while (v16 >= *(this + 2) || *v16 != 66);
    *(this + 1) = v16 + 1;
LABEL_61:
    *(a1 + 76) = v9 | 0x80;
    v17 = *(a1 + 64);
    if (!v17)
    {
      operator new();
    }

    v27[0] = 0;
    v18 = *(this + 1);
    if (v18 >= *(this + 2) || *v18 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v27))
      {
        return 0;
      }
    }

    else
    {
      v27[0] = *v18;
      *(this + 1) = v18 + 1;
    }

    v19 = *(this + 14);
    v20 = *(this + 15);
    *(this + 14) = v19 + 1;
    if (v19 >= v20)
    {
      return 0;
    }

    v21 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v27[0]);
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

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_100447AD4(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 76);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 76);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 76);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 76);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 76);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 76);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
    if ((*(v5 + 76) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 76);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return result;
  }

LABEL_17:
  v7 = *(v5 + 64);
  if (!v7)
  {
    v7 = *(qword_102636E18 + 64);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v7, a2, a4);
}

uint64_t sub_100447BFC(uint64_t a1)
{
  v1 = *(a1 + 76);
  if (*(a1 + 76))
  {
    LODWORD(v2) = (v1 << 31 >> 31) & 9;
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
      v2 = (v2 + 9);
    }

    else
    {
      v2 = v2;
    }

    if ((v1 & 0x80) != 0)
    {
      v3 = *(a1 + 64);
      if (!v3)
      {
        v3 = *(qword_102636E18 + 64);
      }

      v4 = *(v3 + 36);
      v5 = (v4 << 31 >> 31) & 9;
      if ((v4 & 2) != 0)
      {
        v5 += 9;
      }

      if ((v4 & 4) != 0)
      {
        v5 += 9;
      }

      if (*(v3 + 36))
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      *(v3 + 32) = v6;
      v2 = (v2 + v6 + 2);
    }
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 72) = v2;
  return v2;
}

double sub_100447CC0(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100447308(a1, lpsrc);
}

double sub_100447D60(uint64_t a1, uint64_t a2)
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
      v6 = *(qword_102636E20 + 8);
    }

    return sub_100447308(v5, v6);
  }

  return result;
}

void sub_100447E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100447E6C(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102453D78;
  if (qword_102636E20 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_100447EFC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100447E6C(a1);

  operator delete();
}

uint64_t sub_100447F34(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636E20;
  if (!qword_102636E20)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636E20;
  }

  return result;
}

uint64_t sub_100447FB0(uint64_t result)
{
  v1 = result;
  if (*(result + 20))
  {
    result = *(result + 8);
    if (result)
    {
      result = sub_100447618(result);
    }
  }

  *(v1 + 20) = 0;
  return result;
}

uint64_t sub_100447FE8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
      if (!sub_10044765C(v7, this, v12) || *(this + 36) != 1)
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

uint64_t sub_1004481C0(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 20))
  {
    v5 = *(result + 8);
    if (!v5)
    {
      v5 = *(qword_102636E20 + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v5, a2, a4);
  }

  return result;
}

uint64_t sub_1004481EC(uint64_t a1)
{
  if (*(a1 + 20))
  {
    v3 = *(a1 + 8);
    if (!v3)
    {
      v3 = *(qword_102636E20 + 8);
    }

    v4 = sub_100447BFC(v3);
    v6 = v4;
    if (v4 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4, v5);
    }

    else
    {
      v7 = 1;
    }

    result = (v6 + v7 + 1);
  }

  else
  {
    result = 0;
  }

  *(a1 + 16) = result;
  return result;
}

double sub_10044825C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100447D60(a1, lpsrc);
}

void sub_1004482FC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(a2 + 56);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 8);
    *(a1 + 56) |= 1u;
    *(a1 + 8) = v8;
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

  v9 = *(a2 + 16);
  *(a1 + 56) |= 2u;
  v10 = *(a1 + 16);
  if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v10, v9);
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
  v11 = *(a2 + 24);
  *(a1 + 56) |= 4u;
  *(a1 + 24) = v11;
  v4 = *(a2 + 56);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_25:
  v12 = *(a2 + 28);
  if (v12 >= 4)
  {
    sub_101882CB8();
  }

  *(a1 + 56) |= 8u;
  *(a1 + 28) = v12;
  v4 = *(a2 + 56);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    v14 = *(a2 + 36);
    *(a1 + 56) |= 0x20u;
    *(a1 + 36) = v14;
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

    goto LABEL_29;
  }

LABEL_27:
  v13 = *(a2 + 32);
  *(a1 + 56) |= 0x10u;
  *(a1 + 32) = v13;
  v4 = *(a2 + 56);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_29:
  v15 = *(a2 + 40);
  *(a1 + 56) |= 0x40u;
  *(a1 + 40) = v15;
  v4 = *(a2 + 56);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 41);
    *(a1 + 56) |= 0x80u;
    *(a1 + 41) = v5;
    v4 = *(a2 + 56);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 44);
      if (v6 >= 4)
      {
        sub_101882CE4();
      }

      *(a1 + 56) |= 0x100u;
      *(a1 + 44) = v6;
      v4 = *(a2 + 56);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 48);
      *(a1 + 56) |= 0x200u;
      *(a1 + 48) = v7;
    }
  }
}

void sub_100448510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100448528(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102453DF0;
  sub_1002AC6F0(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

uint64_t sub_1004485E0(uint64_t result)
{
  v1 = *(result + 56);
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

    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    v1 = *(result + 56);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 44) = 0;
    *(result + 48) = 0;
  }

  *(result + 56) = 0;
  return result;
}

uint64_t sub_100448648(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 > 5)
        {
          if (TagFallback >> 3 <= 7)
          {
            if (v7 == 6)
            {
              if (v8 == 5)
              {
                goto LABEL_77;
              }
            }

            else if (v7 == 7 && (TagFallback & 7) == 0)
            {
              v15 = *(this + 1);
              v14 = *(this + 2);
              goto LABEL_81;
            }
          }

          else if (v7 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v23 = *(this + 1);
              v14 = *(this + 2);
              goto LABEL_89;
            }
          }

          else if (v7 == 9)
          {
            if ((TagFallback & 7) == 0)
            {
              v25 = *(this + 1);
              v14 = *(this + 2);
              goto LABEL_97;
            }
          }

          else if (v7 == 10 && (TagFallback & 7) == 0)
          {
            v12 = *(this + 1);
            v11 = *(this + 2);
            goto LABEL_107;
          }

          goto LABEL_50;
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 2)
          {
            goto LABEL_50;
          }

          v13 = *(a1 + 56);
          goto LABEL_32;
        }

        if (v8 != 1)
        {
          goto LABEL_50;
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v13 = *(a1 + 56) | 1;
        *(a1 + 56) = v13;
        v17 = *(this + 1);
        if (v17 < *(this + 2) && *v17 == 18)
        {
          *(this + 1) = v17 + 1;
LABEL_32:
          *(a1 + 56) = v13 | 2;
          if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v19 = *(this + 1);
          v18 = *(this + 2);
          if (v19 < v18 && *v19 == 24)
          {
            v20 = v19 + 1;
            *(this + 1) = v20;
LABEL_42:
            v39 = 0;
            if (v20 >= v18 || (v21 = *v20, (v21 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v39);
              if (!result)
              {
                return result;
              }

              v21 = v39;
              v22 = *(this + 1);
              v18 = *(this + 2);
            }

            else
            {
              v22 = v20 + 1;
              *(this + 1) = v22;
            }

            *(a1 + 24) = -(v21 & 1) ^ (v21 >> 1);
            *(a1 + 56) |= 4u;
            if (v22 < v18 && *v22 == 32)
            {
              v24 = v22 + 1;
              *(this + 1) = v24;
              goto LABEL_59;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v20 = *(this + 1);
        v18 = *(this + 2);
        goto LABEL_42;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_50;
      }

      v24 = *(this + 1);
      v18 = *(this + 2);
LABEL_59:
      v39 = 0;
      if (v24 >= v18 || (v26 = *v24, (v26 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v39);
        if (!result)
        {
          return result;
        }

        v26 = v39;
      }

      else
      {
        *(this + 1) = v24 + 1;
      }

      if (v26 <= 3)
      {
        *(a1 + 56) |= 8u;
        *(a1 + 28) = v26;
      }

      v27 = *(this + 1);
      v9 = *(this + 2);
      if (v27 < v9 && *v27 == 40)
      {
        v10 = v27 + 1;
        *(this + 1) = v10;
LABEL_69:
        v39 = 0;
        if (v10 >= v9 || (v28 = *v10, (v28 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v39);
          if (!result)
          {
            return result;
          }

          v28 = v39;
          v29 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v29 = v10 + 1;
          *(this + 1) = v29;
        }

        *(a1 + 32) = v28;
        *(a1 + 56) |= 0x10u;
        if (v29 < v9 && *v29 == 53)
        {
          *(this + 1) = v29 + 1;
LABEL_77:
          v39 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v39) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 36) = v39;
          *(a1 + 56) |= 0x20u;
          v30 = *(this + 1);
          v14 = *(this + 2);
          if (v30 < v14 && *v30 == 56)
          {
            v15 = v30 + 1;
            *(this + 1) = v15;
LABEL_81:
            v39 = 0;
            if (v15 >= v14 || (v31 = *v15, (v31 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v39);
              if (!result)
              {
                return result;
              }

              v31 = v39;
              v32 = *(this + 1);
              v14 = *(this + 2);
            }

            else
            {
              v32 = v15 + 1;
              *(this + 1) = v32;
            }

            *(a1 + 40) = v31 != 0;
            *(a1 + 56) |= 0x40u;
            if (v32 < v14 && *v32 == 64)
            {
              v23 = v32 + 1;
              *(this + 1) = v23;
LABEL_89:
              v39 = 0;
              if (v23 >= v14 || (v33 = *v23, (v33 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v39);
                if (!result)
                {
                  return result;
                }

                v33 = v39;
                v34 = *(this + 1);
                v14 = *(this + 2);
              }

              else
              {
                v34 = v23 + 1;
                *(this + 1) = v34;
              }

              *(a1 + 41) = v33 != 0;
              *(a1 + 56) |= 0x80u;
              if (v34 < v14 && *v34 == 72)
              {
                v25 = v34 + 1;
                *(this + 1) = v25;
LABEL_97:
                v39 = 0;
                if (v25 >= v14 || (v35 = *v25, (v35 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v39);
                  if (!result)
                  {
                    return result;
                  }

                  v35 = v39;
                }

                else
                {
                  *(this + 1) = v25 + 1;
                }

                if (v35 <= 3)
                {
                  *(a1 + 56) |= 0x100u;
                  *(a1 + 44) = v35;
                }

                v36 = *(this + 1);
                v11 = *(this + 2);
                if (v36 < v11 && *v36 == 80)
                {
                  v12 = v36 + 1;
                  *(this + 1) = v12;
LABEL_107:
                  v39 = 0;
                  if (v12 >= v11 || (v37 = *v12, (v37 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v39);
                    if (!result)
                    {
                      return result;
                    }

                    v37 = v39;
                    v38 = *(this + 1);
                    v11 = *(this + 2);
                  }

                  else
                  {
                    v38 = v12 + 1;
                    *(this + 1) = v38;
                  }

                  *(a1 + 48) = v37;
                  *(a1 + 56) |= 0x200u;
                  if (v38 == v11 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_69;
    }

LABEL_50:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

void sub_100448BB8(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1004482FC(a1, lpsrc);
}

void sub_100448C58(uint64_t a1, uint64_t a2)
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
        v7 = *(qword_102636E30 + 8);
      }

      sub_1004482FC(v6, v7);
    }
  }
}

void sub_100448D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100448D8C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636E30;
  if (!qword_102636E30)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636E30;
  }

  return result;
}

uint64_t sub_100448E0C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2)
  {
    *(result + 16) = 0;
    if ((v2 & 2) != 0)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_1004485E0(result);
      }
    }
  }

  *(v1 + 24) = 0;
  return result;
}

uint64_t sub_100448E4C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          v12 = *(a1 + 24);
          goto LABEL_22;
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

      v23 = 0;
      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23);
        if (!result)
        {
          return result;
        }

        v10 = v23;
        v11 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        v11 = v9 + 1;
        *(this + 1) = v11;
      }

      *(a1 + 16) = v10 != 0;
      v12 = *(a1 + 24) | 1;
      *(a1 + 24) = v12;
    }

    while (v11 >= v8 || *v11 != 18);
    *(this + 1) = v11 + 1;
LABEL_22:
    *(a1 + 24) = v12 | 2;
    v14 = *(a1 + 8);
    if (!v14)
    {
      operator new();
    }

    v24 = 0;
    v15 = *(this + 1);
    if (v15 >= *(this + 2) || *v15 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24))
      {
        return 0;
      }
    }

    else
    {
      v24 = *v15;
      *(this + 1) = v15 + 1;
    }

    v16 = *(this + 14);
    v17 = *(this + 15);
    *(this + 14) = v16 + 1;
    if (v16 >= v17)
    {
      return 0;
    }

    v18 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v24);
    if (!sub_100448648(v14, this, v19) || *(this + 36) != 1)
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

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

void sub_1004490B8(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100448C58(a1, lpsrc);
}

double sub_100449158(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), *(a2 + 24) + *(a1 + 24));
  LODWORD(v5) = *(a2 + 24);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
      }

      v7 = *(*(a2 + 16) + 8 * v6);
      v8 = *(a1 + 28);
      v9 = *(a1 + 24);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 32))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v8 + 1);
          v8 = *(a1 + 28);
        }

        *(a1 + 28) = v8 + 1;
        operator new();
      }

      v10 = *(a1 + 16);
      *(a1 + 24) = v9 + 1;
      sub_1004482FC(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 24);
    }

    while (v6 < v5);
  }

  if (*(a2 + 44))
  {
    *(a1 + 44) |= 1u;
    v11 = *(a1 + 8);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 8);
    if (!v12)
    {
      v12 = *(qword_102636E38 + 8);
    }

    return sub_10041ED1C(v11, v12);
  }

  return result;
}

void sub_100449398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004493BC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636E38;
  if (!qword_102636E38)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636E38;
  }

  return result;
}

uint64_t sub_100449440(uint64_t a1)
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

uint64_t sub_100449490(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (!sub_100448648(v21, this, v26) || *(this + 36) != 1)
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

double sub_100449808(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100449158(a1, lpsrc);
}

void sub_1004498A8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  v4 = *(a2 + 56);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    *(a1 + 56) |= 1u;
    v7 = *(a1 + 8);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 8);
    if (!v8)
    {
      v8 = *(qword_102636E40 + 8);
    }

    sub_10041ED1C(v7, v8);
    v4 = *(a2 + 56);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 16);
  *(a1 + 56) |= 2u;
  *(a1 + 16) = v9;
  v4 = *(a2 + 56);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_25:
  v10 = *(a2 + 20);
  if (v10 >= 0xF)
  {
    sub_101882D10();
  }

  *(a1 + 56) |= 4u;
  *(a1 + 20) = v10;
  v4 = *(a2 + 56);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_27:
  v11 = *(a2 + 40);
  if (v11 >= 0xF)
  {
    sub_101882D3C();
  }

  *(a1 + 56) |= 8u;
  *(a1 + 40) = v11;
  v4 = *(a2 + 56);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_30:
    *(a1 + 56) |= 0x20u;
    v13 = *(a1 + 24);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 24);
    if (!v14)
    {
      v14 = *(qword_102636E40 + 24);
    }

    sub_100448C58(v13, v14);
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

    goto LABEL_35;
  }

LABEL_29:
  v12 = *(a2 + 44);
  *(a1 + 56) |= 0x10u;
  *(a1 + 44) = v12;
  v4 = *(a2 + 56);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_30;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_35:
  *(a1 + 56) |= 0x40u;
  v15 = *(a1 + 32);
  if (!v15)
  {
    operator new();
  }

  v16 = *(a2 + 32);
  if (!v16)
  {
    v16 = *(qword_102636E40 + 32);
  }

  sub_100449158(v15, v16);
  v4 = *(a2 + 56);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 45);
    *(a1 + 56) |= 0x80u;
    *(a1 + 45) = v5;
    v4 = *(a2 + 56);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v17 = *(a2 + 46);
    *(a1 + 56) |= 0x100u;
    *(a1 + 46) = v17;
    v4 = *(a2 + 56);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        return;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v18 = *(a2 + 47);
  *(a1 + 56) |= 0x200u;
  *(a1 + 47) = v18;
  if ((*(a2 + 56) & 0x400) != 0)
  {
LABEL_17:
    v6 = *(a2 + 48);
    *(a1 + 56) |= 0x400u;
    *(a1 + 48) = v6;
  }
}

void sub_100449BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100449BC8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102453F58;
  sub_1002E6F4C(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

uint64_t sub_100449C1C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636E40;
  if (!qword_102636E40)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636E40;
  }

  return result;
}

uint64_t sub_100449CA8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 56);
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
        v2 = *(result + 56);
      }
    }

    *(result + 16) = 0;
    *(result + 40) = 0;
    *(result + 44) = 0;
    if ((v2 & 0x20) != 0)
    {
      result = *(result + 24);
      if (result)
      {
        result = sub_100448E0C(result);
        v2 = *(v1 + 56);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      result = *(v1 + 32);
      if (result)
      {
        result = sub_100449440(result);
        v2 = *(v1 + 56);
      }
    }

    *(v1 + 45) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 46) = 0;
    *(v1 + 48) = 0;
  }

  *(v1 + 56) = 0;
  return result;
}

uint64_t sub_100449D44(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
            if (v7 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_45;
            }

            v15 = *(this + 1);
            v14 = *(this + 2);
            goto LABEL_58;
          }

          if (v8 != 2)
          {
            goto LABEL_45;
          }

          *(a1 + 56) |= 1u;
          v16 = *(a1 + 8);
          if (!v16)
          {
            operator new();
          }

          v67 = 0;
          v17 = *(this + 1);
          if (v17 >= *(this + 2) || *v17 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v67))
            {
              return 0;
            }
          }

          else
          {
            v67 = *v17;
            *(this + 1) = v17 + 1;
          }

          v24 = *(this + 14);
          v25 = *(this + 15);
          *(this + 14) = v24 + 1;
          if (v24 >= v25)
          {
            return 0;
          }

          v26 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v67);
          if (!sub_10041EEC4(v16, this, v27) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v26);
          v28 = *(this + 14);
          v29 = __OFSUB__(v28, 1);
          v30 = v28 - 1;
          if (v30 < 0 == v29)
          {
            *(this + 14) = v30;
          }

          v31 = *(this + 1);
          v14 = *(this + 2);
          if (v31 < v14 && *v31 == 16)
          {
            v15 = v31 + 1;
            *(this + 1) = v15;
LABEL_58:
            v67 = 0;
            if (v15 >= v14 || (v32 = *v15, (v32 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v67);
              if (!result)
              {
                return result;
              }

              v32 = v67;
              v33 = *(this + 1);
              v14 = *(this + 2);
            }

            else
            {
              v33 = v15 + 1;
              *(this + 1) = v33;
            }

            *(a1 + 16) = v32;
            *(a1 + 56) |= 2u;
            if (v33 < v14 && *v33 == 24)
            {
              v21 = v33 + 1;
              *(this + 1) = v21;
LABEL_66:
              v67 = 0;
              if (v21 >= v14 || (v35 = *v21, (v35 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v67);
                if (!result)
                {
                  return result;
                }

                v35 = v67;
              }

              else
              {
                *(this + 1) = v21 + 1;
              }

              if (v35 <= 0xE)
              {
                *(a1 + 56) |= 4u;
                *(a1 + 20) = v35;
              }

              v36 = *(this + 1);
              v18 = *(this + 2);
              if (v36 < v18 && *v36 == 32)
              {
                v19 = v36 + 1;
                *(this + 1) = v19;
                goto LABEL_76;
              }
            }
          }
        }

        else
        {
          if (v7 == 3)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_45;
            }

            v21 = *(this + 1);
            v14 = *(this + 2);
            goto LABEL_66;
          }

          if (v7 != 4)
          {
            if (v7 != 5 || (TagFallback & 7) != 0)
            {
              goto LABEL_45;
            }

            v12 = *(this + 1);
            v11 = *(this + 2);
            goto LABEL_86;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_45;
          }

          v19 = *(this + 1);
          v18 = *(this + 2);
LABEL_76:
          v67 = 0;
          if (v19 >= v18 || (v37 = *v19, (v37 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v67);
            if (!result)
            {
              return result;
            }

            v37 = v67;
          }

          else
          {
            *(this + 1) = v19 + 1;
          }

          if (v37 <= 0xE)
          {
            *(a1 + 56) |= 8u;
            *(a1 + 40) = v37;
          }

          v38 = *(this + 1);
          v11 = *(this + 2);
          if (v38 < v11 && *v38 == 40)
          {
            v12 = v38 + 1;
            *(this + 1) = v12;
LABEL_86:
            v67 = 0;
            if (v12 >= v11 || (v39 = *v12, (v39 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v67);
              if (!result)
              {
                return result;
              }

              v39 = v67;
              v40 = *(this + 1);
              v11 = *(this + 2);
            }

            else
            {
              v40 = v12 + 1;
              *(this + 1) = v40;
            }

            *(a1 + 44) = v39 != 0;
            v22 = *(a1 + 56) | 0x10;
            *(a1 + 56) = v22;
            if (v40 < v11 && *v40 == 50)
            {
              *(this + 1) = v40 + 1;
LABEL_94:
              *(a1 + 56) = v22 | 0x20;
              v41 = *(a1 + 24);
              if (!v41)
              {
                operator new();
              }

              v67 = 0;
              v42 = *(this + 1);
              if (v42 >= *(this + 2) || *v42 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v67))
                {
                  return 0;
                }
              }

              else
              {
                v67 = *v42;
                *(this + 1) = v42 + 1;
              }

              v43 = *(this + 14);
              v44 = *(this + 15);
              *(this + 14) = v43 + 1;
              if (v43 >= v44)
              {
                return 0;
              }

              v45 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v67);
              if (!sub_100448E4C(v41, this, v46) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v45);
              v47 = *(this + 14);
              v29 = __OFSUB__(v47, 1);
              v48 = v47 - 1;
              if (v48 < 0 == v29)
              {
                *(this + 14) = v48;
              }

              v49 = *(this + 1);
              if (v49 < *(this + 2) && *v49 == 58)
              {
                *(this + 1) = v49 + 1;
                goto LABEL_108;
              }
            }
          }
        }
      }

      if (TagFallback >> 3 > 8)
      {
        if (v7 == 9)
        {
          if ((TagFallback & 7) == 0)
          {
            v23 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_130;
          }
        }

        else if (v7 == 10)
        {
          if ((TagFallback & 7) == 0)
          {
            v20 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_138;
          }
        }

        else if (v7 == 11 && (TagFallback & 7) == 0)
        {
          v13 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_146;
        }

        goto LABEL_45;
      }

      if (v7 == 6)
      {
        if (v8 != 2)
        {
          goto LABEL_45;
        }

        v22 = *(a1 + 56);
        goto LABEL_94;
      }

      if (v7 == 7)
      {
        break;
      }

      if (v7 == 8 && (TagFallback & 7) == 0)
      {
        v10 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_122;
      }

LABEL_45:
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
      goto LABEL_45;
    }

LABEL_108:
    *(a1 + 56) |= 0x40u;
    v50 = *(a1 + 32);
    if (!v50)
    {
      operator new();
    }

    v67 = 0;
    v51 = *(this + 1);
    if (v51 >= *(this + 2) || *v51 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v67))
      {
        return 0;
      }
    }

    else
    {
      v67 = *v51;
      *(this + 1) = v51 + 1;
    }

    v52 = *(this + 14);
    v53 = *(this + 15);
    *(this + 14) = v52 + 1;
    if (v52 >= v53)
    {
      return 0;
    }

    v54 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v67);
    if (!sub_100449490(v50, this, v55) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v54);
    v56 = *(this + 14);
    v29 = __OFSUB__(v56, 1);
    v57 = v56 - 1;
    if (v57 < 0 == v29)
    {
      *(this + 14) = v57;
    }

    v58 = *(this + 1);
    v9 = *(this + 2);
    if (v58 < v9 && *v58 == 64)
    {
      v10 = v58 + 1;
      *(this + 1) = v10;
LABEL_122:
      v67 = 0;
      if (v10 >= v9 || (v59 = *v10, (v59 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v67);
        if (!result)
        {
          return result;
        }

        v59 = v67;
        v60 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        v60 = v10 + 1;
        *(this + 1) = v60;
      }

      *(a1 + 45) = v59 != 0;
      *(a1 + 56) |= 0x80u;
      if (v60 < v9 && *v60 == 72)
      {
        v23 = v60 + 1;
        *(this + 1) = v23;
LABEL_130:
        v67 = 0;
        if (v23 >= v9 || (v61 = *v23, (v61 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v67);
          if (!result)
          {
            return result;
          }

          v61 = v67;
          v62 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v62 = v23 + 1;
          *(this + 1) = v62;
        }

        *(a1 + 46) = v61 != 0;
        *(a1 + 56) |= 0x100u;
        if (v62 < v9 && *v62 == 80)
        {
          v20 = v62 + 1;
          *(this + 1) = v20;
LABEL_138:
          v67 = 0;
          if (v20 >= v9 || (v63 = *v20, (v63 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v67);
            if (!result)
            {
              return result;
            }

            v63 = v67;
            v64 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            v64 = v20 + 1;
            *(this + 1) = v64;
          }

          *(a1 + 47) = v63 != 0;
          *(a1 + 56) |= 0x200u;
          if (v64 < v9 && *v64 == 88)
          {
            v13 = v64 + 1;
            *(this + 1) = v13;
LABEL_146:
            v67 = 0;
            if (v13 >= v9 || (v65 = *v13, (v65 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v67);
              if (!result)
              {
                return result;
              }

              v65 = v67;
              v66 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              v66 = v13 + 1;
              *(this + 1) = v66;
            }

            *(a1 + 48) = v65 != 0;
            *(a1 + 56) |= 0x400u;
            if (v66 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

void sub_10044A584(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1004498A8(a1, lpsrc);
}

void sub_10044A624(uint64_t a1, uint64_t a2)
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
      *(a1 + 36) |= 1u;
      v5 = *(a1 + 8);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 8);
      if (!v6)
      {
        v6 = *(qword_102636E48 + 8);
      }

      sub_10041ED1C(v5, v6);
      v4 = *(a2 + 36);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 24);
      if (v7 >= 4)
      {
        sub_101882D68();
      }

      *(a1 + 36) |= 2u;
      *(a1 + 24) = v7;
      v4 = *(a2 + 36);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 16);
      *(a1 + 36) |= 4u;
      *(a1 + 16) = v8;
      v4 = *(a2 + 36);
    }

    if ((v4 & 8) != 0)
    {
      v9 = *(a2 + 28);
      if (v9 >= 4)
      {
        sub_101882D94();
      }

      *(a1 + 36) |= 8u;
      *(a1 + 28) = v9;
    }
  }
}

void sub_10044A77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10044A798(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636E48;
  if (!qword_102636E48)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636E48;
  }

  return result;
}

uint64_t sub_10044A81C(uint64_t result)
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

uint64_t sub_10044A850(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (v7 == 4 && (TagFallback & 7) == 0)
          {
            v12 = *(this + 1);
            v11 = *(this + 2);
            goto LABEL_48;
          }

          goto LABEL_22;
        }

        if (v8 != 1)
        {
          goto LABEL_22;
        }

LABEL_44:
        *v28 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v28;
        *(a1 + 36) |= 4u;
        v26 = *(this + 1);
        v11 = *(this + 2);
        if (v26 < v11 && *v26 == 32)
        {
          v12 = v26 + 1;
          *(this + 1) = v12;
LABEL_48:
          v28[0] = 0;
          if (v12 >= v11 || (v27 = *v12, (v27 & 0x80000000) != 0))
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
            *(this + 1) = v12 + 1;
          }

          if (v27 <= 3)
          {
            *(a1 + 36) |= 8u;
            *(a1 + 28) = v27;
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

      if (v7 == 1)
      {
        break;
      }

      if (v7 == 2 && (TagFallback & 7) == 0)
      {
        v10 = *(this + 1);
        v9 = *(this + 2);
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

    *(a1 + 36) |= 1u;
    v13 = *(a1 + 8);
    if (!v13)
    {
      operator new();
    }

    v28[0] = 0;
    v14 = *(this + 1);
    if (v14 >= *(this + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v28))
      {
        return 0;
      }
    }

    else
    {
      v28[0] = *v14;
      *(this + 1) = v14 + 1;
    }

    v15 = *(this + 14);
    v16 = *(this + 15);
    *(this + 14) = v15 + 1;
    if (v15 >= v16)
    {
      return 0;
    }

    v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v28[0]);
    if (!sub_10041EEC4(v13, this, v18) || *(this + 36) != 1)
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
    v9 = *(this + 2);
    if (v22 < v9 && *v22 == 16)
    {
      v10 = v22 + 1;
      *(this + 1) = v10;
LABEL_34:
      v28[0] = 0;
      if (v10 >= v9 || (v23 = *v10, (v23 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v28);
        if (!result)
        {
          return result;
        }

        v23 = v28[0];
      }

      else
      {
        *(this + 1) = v10 + 1;
      }

      if (v23 <= 3)
      {
        *(a1 + 36) |= 2u;
        *(a1 + 24) = v23;
      }

      v25 = *(this + 1);
      if (v25 < *(this + 2) && *v25 == 25)
      {
        *(this + 1) = v25 + 1;
        goto LABEL_44;
      }
    }
  }
}

void sub_10044AB8C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10044A624(a1, lpsrc);
}

double sub_10044AC2C(uint64_t a1, uint64_t a2)
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

void sub_10044ACD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10044AD10(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102454048;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10044ADB0(uint64_t result)
{
  if (*(result + 28))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_10044ADC4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

uint64_t sub_10044AF20(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 28);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v6, a3);
  }

  return result;
}

uint64_t sub_10044AF8C(uint64_t a1)
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

double sub_10044AFB8(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10044AC2C(a1, lpsrc);
}

double sub_10044B058(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  sub_1004564A4((a1 + 8), a2 + 8);
  v5 = *(a2 + 88);
  if ((v5 & 0x1FE) != 0)
  {
    if ((v5 & 2) != 0)
    {
      result = *(a2 + 32);
      *(a1 + 88) |= 2u;
      *(a1 + 32) = result;
      v5 = *(a2 + 88);
      if ((v5 & 4) == 0)
      {
LABEL_6:
        if ((v5 & 8) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }
    }

    else if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 40);
    *(a1 + 88) |= 4u;
    *(a1 + 40) = result;
    v5 = *(a2 + 88);
    if ((v5 & 8) == 0)
    {
LABEL_7:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    v6 = *(a2 + 80);
    *(a1 + 88) |= 8u;
    *(a1 + 80) = v6;
    v5 = *(a2 + 88);
    if ((v5 & 0x10) == 0)
    {
LABEL_8:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    result = *(a2 + 48);
    *(a1 + 88) |= 0x10u;
    *(a1 + 48) = result;
    v5 = *(a2 + 88);
    if ((v5 & 0x20) == 0)
    {
LABEL_9:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    result = *(a2 + 56);
    *(a1 + 88) |= 0x20u;
    *(a1 + 56) = result;
    v5 = *(a2 + 88);
    if ((v5 & 0x40) == 0)
    {
LABEL_10:
      if ((v5 & 0x80) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }

LABEL_18:
    result = *(a2 + 64);
    *(a1 + 88) |= 0x40u;
    *(a1 + 64) = result;
    if ((*(a2 + 88) & 0x80) == 0)
    {
      return result;
    }

LABEL_11:
    result = *(a2 + 72);
    *(a1 + 88) |= 0x80u;
    *(a1 + 72) = result;
  }

  return result;
}

void sub_10044B1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10044B1D4(uint64_t *a1)
{
  *a1 = off_1024540C0;
  sub_100027438(a1 + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10044B230(uint64_t *a1)
{
  sub_10044B1D4(a1);

  operator delete();
}

uint64_t sub_10044B2CC(uint64_t a1)
{
  if ((*(a1 + 88) & 0x1FE) != 0)
  {
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 32) = 0u;
  }

  result = sub_1003C79DC(a1 + 8);
  *(a1 + 88) = 0;
  return result;
}

uint64_t sub_10044B314(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
              goto LABEL_68;
            }
          }

          else if (v7 == 6 && v8 == 1)
          {
            goto LABEL_72;
          }

          goto LABEL_60;
        }

        if (v7 == 7)
        {
          if (v8 != 1)
          {
            goto LABEL_60;
          }

LABEL_76:
          *v33 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v33) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 64) = *v33;
          *(a1 + 88) |= 0x40u;
          v32 = *(this + 1);
          if (v32 < *(this + 2) && *v32 == 65)
          {
            *(this + 1) = v32 + 1;
            goto LABEL_80;
          }
        }

        else
        {
          if (v7 != 8 || v8 != 1)
          {
            goto LABEL_60;
          }

LABEL_80:
          *v33 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v33) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 72) = *v33;
          *(a1 + 88) |= 0x80u;
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
        break;
      }

      if (v7 == 1)
      {
        if (v8 == 2)
        {
          while (1)
          {
            v12 = *(a1 + 20);
            v13 = *(a1 + 16);
            if (v13 >= v12)
            {
              if (v12 == *(a1 + 24))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 8), v12 + 1);
                v12 = *(a1 + 20);
              }

              *(a1 + 20) = v12 + 1;
              operator new();
            }

            v14 = *(a1 + 8);
            *(a1 + 16) = v13 + 1;
            v15 = *(v14 + 8 * v13);
            v33[0] = 0;
            v16 = *(this + 1);
            if (v16 >= *(this + 2) || *v16 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v33))
              {
                return 0;
              }
            }

            else
            {
              v33[0] = *v16;
              *(this + 1) = v16 + 1;
            }

            v17 = *(this + 14);
            v18 = *(this + 15);
            *(this + 14) = v17 + 1;
            if (v17 >= v18)
            {
              return 0;
            }

            v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v33[0]);
            if (!sub_10044ADC4(v15, this, v20) || *(this + 36) != 1)
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
            if (v24 >= *(this + 2))
            {
              goto LABEL_1;
            }

            v25 = *v24;
            if (v25 != 10)
            {
              if (v25 != 17)
              {
                goto LABEL_1;
              }

              *(this + 1) = v24 + 1;
              goto LABEL_11;
            }

            *(this + 1) = v24 + 1;
          }
        }

        goto LABEL_60;
      }

      if (v7 != 2 || v8 != 1)
      {
        goto LABEL_60;
      }

LABEL_11:
      *v33 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v33) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 32) = *v33;
      *(a1 + 88) |= 2u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 25)
      {
        *(this + 1) = v9 + 1;
LABEL_52:
        *v33 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v33) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = *v33;
        *(a1 + 88) |= 4u;
        v26 = *(this + 1);
        v10 = *(this + 2);
        if (v26 < v10 && *v26 == 32)
        {
          v11 = v26 + 1;
          *(this + 1) = v11;
LABEL_56:
          v33[0] = 0;
          if (v11 >= v10 || (v27 = *v11, (v27 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v33);
            if (!result)
            {
              return result;
            }

            v27 = v33[0];
            v28 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            v28 = v11 + 1;
            *(this + 1) = v28;
          }

          *(a1 + 80) = v27 != 0;
          *(a1 + 88) |= 8u;
          if (v28 < v10 && *v28 == 41)
          {
            *(this + 1) = v28 + 1;
LABEL_68:
            *v33 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v33) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 48) = *v33;
            *(a1 + 88) |= 0x10u;
            v30 = *(this + 1);
            if (v30 < *(this + 2) && *v30 == 49)
            {
              *(this + 1) = v30 + 1;
LABEL_72:
              *v33 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v33) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 56) = *v33;
              *(a1 + 88) |= 0x20u;
              v31 = *(this + 1);
              if (v31 < *(this + 2) && *v31 == 57)
              {
                *(this + 1) = v31 + 1;
                goto LABEL_76;
              }
            }
          }
        }
      }
    }

    if (v7 == 3)
    {
      if (v8 == 1)
      {
        goto LABEL_52;
      }
    }

    else if (v7 == 4 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_56;
    }

LABEL_60:
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

uint64_t sub_10044B7FC(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  v7 = *(v5 + 88);
  if ((v7 & 2) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 32), a3);
    v7 = *(v5 + 88);
    if ((v7 & 4) == 0)
    {
LABEL_6:
      if ((v7 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_6;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 40), a3);
  v7 = *(v5 + 88);
  if ((v7 & 8) == 0)
  {
LABEL_7:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 80), a2, a4);
  v7 = *(v5 + 88);
  if ((v7 & 0x10) == 0)
  {
LABEL_8:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 48), a3);
  v7 = *(v5 + 88);
  if ((v7 & 0x20) == 0)
  {
LABEL_9:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 64), a3);
    if ((*(v5 + 88) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_18;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 56), a3);
  v7 = *(v5 + 88);
  if ((v7 & 0x40) != 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  if ((v7 & 0x80) == 0)
  {
    return result;
  }

LABEL_18:
  v8 = *(v5 + 72);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, v8, a3);
}

uint64_t sub_10044B938(uint64_t a1)
{
  v1 = *(a1 + 88);
  if ((v1 & 0x1FE) != 0)
  {
    v2 = ((v1 << 30) >> 31) & 9;
    if ((v1 & 4) != 0)
    {
      v2 += 9;
    }

    v3 = v2 + ((v1 >> 2) & 2);
    if ((v1 & 0x10) != 0)
    {
      v3 += 9;
    }

    if ((v1 & 0x20) != 0)
    {
      v3 += 9;
    }

    if ((v1 & 0x40) != 0)
    {
      v3 += 9;
    }

    if ((v1 & 0x80) != 0)
    {
      v4 = v3 + 9;
    }

    else
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 16);
  v6 = (v5 + v4);
  if (v5 >= 1)
  {
    v7 = *(a1 + 8);
    do
    {
      v8 = *(*v7 + 28);
      if (*(*v7 + 28))
      {
        if ((v8 & 2) != 0)
        {
          v8 = ((v8 << 31 >> 31) & 9) + 9;
        }

        else
        {
          v8 = (v8 << 31 >> 31) & 9;
        }
      }

      *(*v7 + 24) = v8;
      v6 = (v6 + v8 + 1);
      v7 += 8;
      --v5;
    }

    while (v5);
  }

  *(a1 + 84) = v6;
  return v6;
}

double sub_10044B9FC(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10044B058(a1, lpsrc);
}

void sub_10044BA9C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
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
      sub_10044B058(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 16);
    }

    while (v5 < v4);
  }

  v10 = *(a2 + 52);
  if ((v10 & 0x1FE) != 0)
  {
    if ((v10 & 2) != 0)
    {
      v11 = *(a2 + 32);
      *(a1 + 52) |= 2u;
      *(a1 + 32) = v11;
      v10 = *(a2 + 52);
    }

    if ((v10 & 4) != 0)
    {
      v12 = *(a2 + 40);
      *(a1 + 52) |= 4u;
      *(a1 + 40) = v12;
    }
  }
}

void sub_10044BCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10044BCC4(uint64_t *a1)
{
  *a1 = off_102454138;
  sub_100027438(a1 + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10044BD20(uint64_t *a1)
{
  sub_10044BCC4(a1);

  operator delete();
}

uint64_t sub_10044BDB0(uint64_t a1)
{
  if ((*(a1 + 52) & 0x1FE) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  result = sub_1003C79DC(a1 + 8);
  *(a1 + 52) = 0;
  return result;
}

uint64_t sub_10044BDEC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v27 = *(this + 1);
        v21 = *(this + 2);
LABEL_45:
        if (v27 >= v21 || (v29 = *v27, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 40));
          if (!result)
          {
            return result;
          }

          v30 = *(this + 1);
          v21 = *(this + 2);
        }

        else
        {
          *(a1 + 40) = v29;
          v30 = v27 + 1;
          *(this + 1) = v30;
        }

        *(a1 + 52) |= 4u;
        if (v30 == v21 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_36;
      }

      v24 = *(this + 1);
      v21 = *(this + 2);
LABEL_32:
      if (v24 >= v21 || (v25 = *v24, v25 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
        if (!result)
        {
          return result;
        }

        v26 = *(this + 1);
        v21 = *(this + 2);
      }

      else
      {
        *(a1 + 32) = v25;
        v26 = v24 + 1;
        *(this + 1) = v26;
      }

      *(a1 + 52) |= 2u;
      if (v26 < v21 && *v26 == 24)
      {
        v27 = v26 + 1;
        *(this + 1) = v27;
        goto LABEL_45;
      }
    }

    if (v7 == 1 && v8 == 2)
    {
      while (1)
      {
        v9 = *(a1 + 20);
        v10 = *(a1 + 16);
        if (v10 >= v9)
        {
          if (v9 == *(a1 + 24))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 8), v9 + 1);
            v9 = *(a1 + 20);
          }

          *(a1 + 20) = v9 + 1;
          operator new();
        }

        v11 = *(a1 + 8);
        *(a1 + 16) = v10 + 1;
        v12 = *(v11 + 8 * v10);
        v31 = 0;
        v13 = *(this + 1);
        if (v13 >= *(this + 2) || *v13 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31))
          {
            return 0;
          }
        }

        else
        {
          v31 = *v13;
          *(this + 1) = v13 + 1;
        }

        v14 = *(this + 14);
        v15 = *(this + 15);
        *(this + 14) = v14 + 1;
        if (v14 >= v15)
        {
          return 0;
        }

        v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v31);
        if (!sub_10044B314(v12, this, v17) || *(this + 36) != 1)
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

        v22 = *(this + 1);
        v21 = *(this + 2);
        if (v22 >= v21)
        {
          goto LABEL_1;
        }

        v23 = *v22;
        if (v23 != 10)
        {
          if (v23 != 16)
          {
            goto LABEL_1;
          }

          v24 = (v22 + 1);
          *(this + 1) = v24;
          goto LABEL_32;
        }

        *(this + 1) = v22 + 1;
      }
    }

LABEL_36:
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

uint64_t sub_10044C110(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  v7 = *(v5 + 52);
  if ((v7 & 2) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 32), a2, a4);
    v7 = *(v5 + 52);
  }

  if ((v7 & 4) != 0)
  {
    v8 = *(v5 + 40);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v8, a2, a4);
  }

  return result;
}

uint64_t sub_10044C1BC(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 52);
  if ((v3 & 0x1FE) == 0)
  {
    v4 = 0;
    goto LABEL_8;
  }

  if ((v3 & 2) != 0)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32), a2) + 1;
    if ((*(a1 + 52) & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if ((v3 & 4) != 0)
  {
LABEL_7:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 40), a2) + 1;
  }

LABEL_8:
  v5 = *(a1 + 16);
  v6 = (v5 + v4);
  if (v5 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = sub_10044B938(*(*(a1 + 8) + 8 * v7));
      v10 = v8;
      if (v8 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, v9);
      }

      else
      {
        v11 = 1;
      }

      v6 = (v10 + v6 + v11);
      ++v7;
    }

    while (v7 < *(a1 + 16));
  }

  *(a1 + 48) = v6;
  return v6;
}

void sub_10044C288(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10044BA9C(a1, lpsrc);
}

double sub_10044C328(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  sub_1004565B8((a1 + 16), a2 + 16);
  v5 = *(a2 + 48);
  if (v5)
  {
    sub_1003C7898(a1 + 40, *(a1 + 48) + v5);
    memcpy((*(a1 + 40) + 8 * *(a1 + 48)), *(a2 + 40), 8 * *(a2 + 48));
    *(a1 + 48) += *(a2 + 48);
  }

  LOBYTE(v6) = *(a2 + 68);
  if (v6)
  {
    if (*(a2 + 68))
    {
      *(a1 + 68) |= 1u;
      v7 = *(a1 + 8);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 8);
      if (!v8)
      {
        v8 = *(qword_102636E68 + 8);
      }

      result = sub_10041ED1C(v7, v8);
      v6 = *(a2 + 68);
    }

    if ((v6 & 8) != 0)
    {
      *(a1 + 68) |= 8u;
      v9 = *(a1 + 56);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 56);
      if (!v10)
      {
        v10 = *(qword_102636E68 + 56);
      }

      return sub_10044AC2C(v9, v10);
    }
  }

  return result;
}

void sub_10044C4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10044C4EC(uint64_t *a1)
{
  *a1 = off_1024541B0;
  sub_10044C568(a1);
  if (a1[5])
  {
    operator delete[]();
  }

  sub_100027438(a1 + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void *sub_10044C568(void *result)
{
  if (qword_102636E68 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[7];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_10044C60C(uint64_t *a1)
{
  sub_10044C4EC(a1);

  operator delete();
}

uint64_t sub_10044C644(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636E68;
  if (!qword_102636E68)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636E68;
  }

  return result;
}

uint64_t sub_10044C6D0(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 68);
  if (v2)
  {
    if (*(a1 + 68))
    {
      v3 = *(a1 + 8);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(a1 + 68);
      }
    }

    if ((v2 & 8) != 0)
    {
      v4 = *(a1 + 56);
      if (v4)
      {
        if (*(v4 + 28))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        *(v4 + 28) = 0;
      }
    }
  }

  result = sub_1003C79DC(a1 + 16);
  *(a1 + 48) = 0;
  *(a1 + 68) = 0;
  return result;
}

uint64_t sub_10044C748(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, unsigned int a3)
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
          if ((TagFallback & 7) == 0)
          {
            v13 = *(this + 1);
            v12 = *(this + 2);
            goto LABEL_56;
          }

          if (v8 == 2)
          {
            result = sub_10044CD7C(this, a1 + 40);
            if (!result)
            {
              return result;
            }

            goto LABEL_74;
          }

          goto LABEL_23;
        }

        if (v7 != 4 || v8 != 2)
        {
          goto LABEL_23;
        }

LABEL_77:
        *(a1 + 68) |= 8u;
        v44 = *(a1 + 56);
        if (!v44)
        {
          operator new();
        }

        v53[0] = 0;
        v45 = *(this + 1);
        if (v45 >= *(this + 2) || *v45 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v53))
          {
            return 0;
          }
        }

        else
        {
          v53[0] = *v45;
          *(this + 1) = v45 + 1;
        }

        v46 = *(this + 14);
        v47 = *(this + 15);
        *(this + 14) = v46 + 1;
        if (v46 >= v47)
        {
          return 0;
        }

        v48 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v53[0]);
        if (!sub_10044ADC4(v44, this, v49) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v48);
        v50 = *(this + 14);
        v19 = __OFSUB__(v50, 1);
        v51 = v50 - 1;
        if (v51 < 0 == v19)
        {
          *(this + 14) = v51;
        }

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

      if (v8 != 2)
      {
        goto LABEL_23;
      }

      *(a1 + 68) |= 1u;
      v9 = *(a1 + 8);
      if (!v9)
      {
        operator new();
      }

      v53[0] = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v53))
        {
          return 0;
        }
      }

      else
      {
        v53[0] = *v10;
        *(this + 1) = v10 + 1;
      }

      v14 = *(this + 14);
      v15 = *(this + 15);
      *(this + 14) = v14 + 1;
      if (v14 >= v15)
      {
        return 0;
      }

      v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v53[0]);
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
      if (v21 < *(this + 2) && *v21 == 18)
      {
        while (2)
        {
          *(this + 1) = v21 + 1;
LABEL_38:
          v22 = *(a1 + 28);
          v23 = *(a1 + 24);
          if (v23 >= v22)
          {
            if (v22 == *(a1 + 32))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v22 + 1);
              v22 = *(a1 + 28);
            }

            *(a1 + 28) = v22 + 1;
            operator new();
          }

          v24 = *(a1 + 16);
          *(a1 + 24) = v23 + 1;
          v25 = *(v24 + 8 * v23);
          v53[0] = 0;
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v53))
            {
              return 0;
            }
          }

          else
          {
            v53[0] = *v26;
            *(this + 1) = v26 + 1;
          }

          v27 = *(this + 14);
          v28 = *(this + 15);
          *(this + 14) = v27 + 1;
          if (v27 >= v28)
          {
            return 0;
          }

          v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v53[0]);
          if (!sub_10044BDEC(v25, this, v30) || *(this + 36) != 1)
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

          v21 = *(this + 1);
          v12 = *(this + 2);
          if (v21 < v12)
          {
            v33 = *v21;
            if (v33 == 18)
            {
              continue;
            }

            while (v33 == 24)
            {
              v13 = v21 + 1;
              *(this + 1) = v13;
LABEL_56:
              v52 = 0;
              if (v13 >= v12 || (*v13 & 0x8000000000000000) != 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v52))
                {
                  return 0;
                }
              }

              else
              {
                v52 = *v13;
                *(this + 1) = v13 + 1;
              }

              v34 = *(a1 + 48);
              v35 = *(a1 + 52);
              if (v34 == v35)
              {
                sub_1003C7898(a1 + 40, v34 + 1);
                v34 = *(a1 + 48);
                v35 = *(a1 + 52);
              }

              v36 = v52;
              v37 = *(a1 + 40);
              v38 = v34 + 1;
              *(a1 + 48) = v34 + 1;
              *(v37 + 8 * v34) = v36;
              if (v35 - (v34 + 1) >= 1)
              {
                v39 = v35 - v34;
                do
                {
                  v40 = *(this + 1);
                  v41 = *(this + 2);
                  if (v40 >= v41 || *v40 != 24)
                  {
                    break;
                  }

                  *(this + 1) = v40 + 1;
                  if ((v40 + 1) >= v41 || (v40[1] & 0x8000000000000000) != 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v52))
                    {
                      return 0;
                    }

                    v38 = *(a1 + 48);
                  }

                  else
                  {
                    v52 = v40[1];
                    *(this + 1) = v40 + 2;
                  }

                  if (v38 >= *(a1 + 52))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v53);
                    v38 = *(a1 + 48);
                  }

                  v42 = v52;
                  v43 = *(a1 + 40);
                  *(a1 + 48) = v38 + 1;
                  *(v43 + 8 * v38) = v42;
                  --v39;
                  ++v38;
                }

                while (v39 > 1);
              }

LABEL_74:
              v21 = *(this + 1);
              v12 = *(this + 2);
              if (v21 >= v12)
              {
                break;
              }

              v33 = *v21;
              if (v33 == 34)
              {
                *(this + 1) = v21 + 1;
                goto LABEL_77;
              }
            }
          }

          break;
        }
      }
    }

    if (v7 == 2 && v8 == 2)
    {
      goto LABEL_38;
    }

LABEL_23:
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

void sub_10044CD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10044CD7C(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2)
{
  v13 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || (v5 = *v4, (v5 & 0x80000000) != 0))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v13);
    if (!result)
    {
      return result;
    }

    v5 = v13;
  }

  else
  {
    v13 = *v4;
    *(this + 1) = v4 + 1;
  }

  v7 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v5);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v12 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || (*v8 & 0x8000000000000000) != 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v12);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v12 = *v8;
        *(this + 1) = v8 + 1;
      }

      v9 = *(a2 + 8);
      if (v9 == *(a2 + 12))
      {
        sub_1003C7898(a2, v9 + 1);
        v9 = *(a2 + 8);
      }

      v10 = v12;
      v11 = *a2;
      *(a2 + 8) = v9 + 1;
      *(v11 + 8 * v9) = v10;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v7);
  return 1;
}

uint64_t sub_10044CE90(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 68))
  {
    v6 = *(result + 8);
    if (!v6)
    {
      v6 = *(qword_102636E68 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  if (*(v5 + 48) >= 1)
  {
    v8 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(*(v5 + 40) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 48));
  }

  if ((*(v5 + 68) & 8) != 0)
  {
    v9 = *(v5 + 56);
    if (!v9)
    {
      v9 = *(qword_102636E68 + 56);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  }

  return result;
}

uint64_t sub_10044CF90(uint64_t a1, unint64_t a2)
{
  if (!*(a1 + 68))
  {
    v3 = 0;
    goto LABEL_22;
  }

  if ((*(a1 + 68) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 68) & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    v4 = *(qword_102636E68 + 8);
  }

  v5 = *(v4 + 36);
  if (*(v4 + 36))
  {
    v6 = (v5 << 31 >> 31) & 9;
    if ((v5 & 2) != 0)
    {
      v6 += 9;
    }

    if ((v5 & 4) != 0)
    {
      v5 = v6 + 9;
    }

    else
    {
      v5 = v6;
    }
  }

  *(v4 + 32) = v5;
  v3 = v5 + 2;
  if ((*(a1 + 68) & 8) != 0)
  {
LABEL_15:
    v7 = *(a1 + 56);
    if (!v7)
    {
      v7 = *(qword_102636E68 + 56);
    }

    v8 = *(v7 + 28);
    if (*(v7 + 28))
    {
      if ((v8 & 2) != 0)
      {
        v8 = ((v8 << 31 >> 31) & 9) + 9;
      }

      else
      {
        v8 = (v8 << 31 >> 31) & 9;
      }
    }

    *(v7 + 24) = v8;
    v3 += v8 + 2;
  }

LABEL_22:
  v9 = *(a1 + 24);
  v10 = v9 + v3;
  if (v9 >= 1)
  {
    v11 = 0;
    do
    {
      v12 = sub_10044C1BC(*(*(a1 + 16) + 8 * v11), a2);
      v13 = v12;
      if (v12 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
      }

      else
      {
        v14 = 1;
      }

      v10 += v13 + v14;
      ++v11;
    }

    while (v11 < *(a1 + 24));
  }

  LODWORD(v15) = *(a1 + 48);
  if (v15 < 1)
  {
    v17 = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v17 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(a1 + 40) + 8 * v16++), a2);
      v15 = *(a1 + 48);
    }

    while (v16 < v15);
  }

  result = (v17 + v10 + v15);
  *(a1 + 64) = result;
  return result;
}

double sub_10044D104(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10044C328(a1, lpsrc);
}

void sub_10044D1A4(_DWORD *a1, _DWORD *a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  sub_1004564A4((a1 + 2), (a2 + 2));
  v4 = a2[13];
  if ((v4 & 0x1FE) != 0)
  {
    if ((v4 & 2) != 0)
    {
      v5 = a2[8];
      if (v5 >= 4)
      {
        sub_101882DC0();
      }

      a1[13] |= 2u;
      a1[8] = v5;
      v4 = a2[13];
    }

    if ((v4 & 4) != 0)
    {
      v7 = a2[9];
      a1[13] |= 4u;
      a1[9] = v7;
      v4 = a2[13];
      if ((v4 & 8) == 0)
      {
LABEL_9:
        if ((v4 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_10;
      }
    }

    else if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    v8 = a2[10];
    a1[13] |= 8u;
    a1[10] = v8;
    if ((a2[13] & 0x10) != 0)
    {
LABEL_10:
      v6 = a2[11];
      a1[13] |= 0x10u;
      a1[11] = v6;
    }
  }
}

void sub_10044D2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10044D2C8(uint64_t *a1)
{
  *a1 = off_102454228;
  sub_100027438(a1 + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10044D324(uint64_t *a1)
{
  sub_10044D2C8(a1);

  operator delete();
}

uint64_t sub_10044D3B4(uint64_t a1)
{
  if ((*(a1 + 52) & 0x1FE) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  result = sub_1003C79DC(a1 + 8);
  *(a1 + 52) = 0;
  return result;
}

uint64_t sub_10044D3F0(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 == 1)
        {
          if (v8 == 2)
          {
            while (1)
            {
              v16 = a1[5];
              v17 = a1[4];
              if (v17 >= v16)
              {
                if (v16 == a1[6])
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2), v16 + 1);
                  v16 = a1[5];
                }

                a1[5] = v16 + 1;
                operator new();
              }

              v18 = *(a1 + 1);
              a1[4] = v17 + 1;
              v19 = *(v18 + 8 * v17);
              v39 = 0;
              v20 = *(this + 1);
              if (v20 >= *(this + 2) || *v20 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v39))
                {
                  return 0;
                }
              }

              else
              {
                v39 = *v20;
                *(this + 1) = v20 + 1;
              }

              v21 = *(this + 14);
              v22 = *(this + 15);
              *(this + 14) = v21 + 1;
              if (v21 >= v22)
              {
                return 0;
              }

              v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v39);
              if (!sub_10044ADC4(v19, this, v24) || *(this + 36) != 1)
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
              v11 = *(this + 2);
              if (v28 >= v11)
              {
                goto LABEL_1;
              }

              v29 = *v28;
              if (v29 != 10)
              {
                if (v29 != 16)
                {
                  goto LABEL_1;
                }

                v12 = (v28 + 1);
                *(this + 1) = v12;
                goto LABEL_16;
              }

              *(this + 1) = v28 + 1;
            }
          }

          goto LABEL_24;
        }

        if (v7 != 2 || (TagFallback & 7) != 0)
        {
          goto LABEL_24;
        }

        v12 = *(this + 1);
        v11 = *(this + 2);
LABEL_16:
        v38 = 0;
        if (v12 >= v11 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v38);
          if (!result)
          {
            return result;
          }

          v13 = v38;
        }

        else
        {
          *(this + 1) = v12 + 1;
        }

        if (v13 <= 3)
        {
          a1[13] |= 2u;
          a1[8] = v13;
        }

        v31 = *(this + 1);
        v9 = *(this + 2);
        if (v31 < v9 && *v31 == 24)
        {
          v14 = v31 + 1;
          *(this + 1) = v14;
LABEL_53:
          if (v14 >= v9 || (v32 = *v14, v32 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 9);
            if (!result)
            {
              return result;
            }

            v33 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            a1[9] = v32;
            v33 = v14 + 1;
            *(this + 1) = v33;
          }

          a1[13] |= 4u;
          if (v33 < v9 && *v33 == 32)
          {
            v15 = v33 + 1;
            *(this + 1) = v15;
            goto LABEL_61;
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_24;
        }

        v14 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_53;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_24;
      }

      v15 = *(this + 1);
      v9 = *(this + 2);
LABEL_61:
      if (v15 >= v9 || (v34 = *v15, v34 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 10);
        if (!result)
        {
          return result;
        }

        v35 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        a1[10] = v34;
        v35 = v15 + 1;
        *(this + 1) = v35;
      }

      a1[13] |= 8u;
      if (v35 < v9 && *v35 == 40)
      {
        v10 = v35 + 1;
        *(this + 1) = v10;
LABEL_69:
        if (v10 >= v9 || (v36 = *v10, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 11);
          if (!result)
          {
            return result;
          }

          v37 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          a1[11] = v36;
          v37 = v10 + 1;
          *(this + 1) = v37;
        }

        a1[13] |= 0x10u;
        if (v37 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
      goto LABEL_69;
    }

LABEL_24:
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

uint64_t sub_10044D7F0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  v7 = *(v5 + 52);
  if ((v7 & 2) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 32), a2, a4);
    v7 = *(v5 + 52);
    if ((v7 & 4) == 0)
    {
LABEL_6:
      if ((v7 & 8) == 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 40), a2, a4);
      if ((*(v5 + 52) & 0x10) == 0)
      {
        return result;
      }

      goto LABEL_12;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_6;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 36), a2, a4);
  v7 = *(v5 + 52);
  if ((v7 & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((v7 & 0x10) == 0)
  {
    return result;
  }

LABEL_12:
  v8 = *(v5 + 44);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v8, a2, a4);
}

uint64_t sub_10044D8D8(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 52);
  if ((v3 & 0x1FE) == 0)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if ((v3 & 2) != 0)
  {
    v5 = *(a1 + 32);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 4) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 52);
      if ((v3 & 4) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 4) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 4) == 0)
    {
      goto LABEL_17;
    }
  }

  v6 = *(a1 + 36);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 52);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_17:
  if ((v3 & 8) == 0)
  {
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v8 = *(a1 + 40);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    v3 = *(a1 + 52);
  }

  else
  {
    v9 = 2;
  }

  v4 += v9;
  if ((v3 & 0x10) != 0)
  {
LABEL_24:
    v10 = *(a1 + 44);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
  }

LABEL_28:
  v12 = *(a1 + 16);
  result = (v12 + v4);
  if (v12 >= 1)
  {
    v14 = *(a1 + 8);
    do
    {
      v15 = *(*v14 + 28);
      if (*(*v14 + 28))
      {
        if ((v15 & 2) != 0)
        {
          v15 = ((v15 << 31 >> 31) & 9) + 9;
        }

        else
        {
          v15 = (v15 << 31 >> 31) & 9;
        }
      }

      *(*v14 + 24) = v15;
      result = (result + v15 + 1);
      v14 += 8;
      --v12;
    }

    while (v12);
  }

  *(a1 + 48) = result;
  return result;
}

void sub_10044DA20(_DWORD *a1, _DWORD *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10044D1A4(a1, lpsrc);
}

double sub_10044DAC0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  sub_1004564A4((a1 + 40), a2 + 40);
  LOBYTE(v5) = *(a2 + 68);
  if (v5)
  {
    if (*(a2 + 68))
    {
      result = *(a2 + 8);
      *(a1 + 68) |= 1u;
      *(a1 + 8) = result;
      v5 = *(a2 + 68);
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

    else if ((*(a2 + 68) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 16);
    *(a1 + 68) |= 2u;
    *(a1 + 16) = result;
    v5 = *(a2 + 68);
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
    *(a1 + 68) |= 4u;
    *(a1 + 24) = result;
    if ((*(a2 + 68) & 8) == 0)
    {
      return result;
    }

LABEL_8:
    result = *(a2 + 32);
    *(a1 + 68) |= 8u;
    *(a1 + 32) = result;
  }

  return result;
}

void sub_10044DBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10044DBD8(uint64_t *a1)
{
  *a1 = off_1024542A0;
  sub_100027438(a1 + 5);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10044DC34(uint64_t *a1)
{
  sub_10044DBD8(a1);

  operator delete();
}

uint64_t sub_10044DCCC(uint64_t a1)
{
  if (*(a1 + 68))
  {
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
  }

  result = sub_1003C79DC(a1 + 40);
  *(a1 + 68) = 0;
  return result;
}

uint64_t sub_10044DD0C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (v8 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_32;
        }

        if (v7 == 4)
        {
          if (v8 != 1)
          {
            goto LABEL_21;
          }

LABEL_36:
          *v27 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = *v27;
          *(a1 + 68) |= 8u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 42)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 2)
          {
            goto LABEL_21;
          }

          while (1)
          {
            v13 = *(a1 + 52);
            v14 = *(a1 + 48);
            if (v14 >= v13)
            {
              if (v13 == *(a1 + 56))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40), v13 + 1);
                v13 = *(a1 + 52);
              }

              *(a1 + 52) = v13 + 1;
              operator new();
            }

            v15 = *(a1 + 40);
            *(a1 + 48) = v14 + 1;
            v16 = *(v15 + 8 * v14);
            v27[0] = 0;
            v17 = *(this + 1);
            if (v17 >= *(this + 2) || *v17 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v27))
              {
                return 0;
              }
            }

            else
            {
              v27[0] = *v17;
              *(this + 1) = v17 + 1;
            }

            v18 = *(this + 14);
            v19 = *(this + 15);
            *(this + 14) = v18 + 1;
            if (v18 >= v19)
            {
              return 0;
            }

            v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v27[0]);
            if (!sub_10044ADC4(v16, this, v21) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v20);
            v22 = *(this + 14);
            v23 = __OFSUB__(v22, 1);
            v24 = v22 - 1;
            if (v24 < 0 == v23)
            {
              *(this + 14) = v24;
            }

            v12 = *(this + 1);
            v25 = *(this + 2);
            if (v12 >= v25 || *v12 != 42)
            {
              break;
            }

LABEL_39:
            *(this + 1) = v12 + 1;
          }

          if (v12 == v25 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
        goto LABEL_21;
      }

      *v27 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = *v27;
      *(a1 + 68) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
      {
        *(this + 1) = v9 + 1;
LABEL_28:
        *v27 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v27;
        *(a1 + 68) |= 2u;
        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 25)
        {
          *(this + 1) = v10 + 1;
LABEL_32:
          *v27 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = *v27;
          *(a1 + 68) |= 4u;
          v11 = *(this + 1);
          if (v11 < *(this + 2) && *v11 == 33)
          {
            *(this + 1) = v11 + 1;
            goto LABEL_36;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_28;
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

uint64_t sub_10044E0B0(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 68);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 68);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 68);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  if ((*(v5 + 68) & 8) != 0)
  {
LABEL_5:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  }

LABEL_6:
  if (*(v5 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, *(*(v5 + 40) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 48));
  }

  return result;
}

uint64_t sub_10044E180(uint64_t a1)
{
  v1 = *(a1 + 68);
  if (*(a1 + 68))
  {
    v2 = (v1 << 31 >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 8) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  v3 = *(a1 + 48);
  v4 = (v3 + v1);
  if (v3 >= 1)
  {
    v5 = *(a1 + 40);
    do
    {
      v6 = *(*v5 + 28);
      if (*(*v5 + 28))
      {
        if ((v6 & 2) != 0)
        {
          v6 = ((v6 << 31 >> 31) & 9) + 9;
        }

        else
        {
          v6 = (v6 << 31 >> 31) & 9;
        }
      }

      *(*v5 + 24) = v6;
      v4 = (v4 + v6 + 1);
      v5 += 8;
      --v3;
    }

    while (v3);
  }

  *(a1 + 64) = v4;
  return v4;
}

double sub_10044E214(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10044DAC0(a1, lpsrc);
}

void sub_10044E2B4(uint64_t a1, _BYTE *a2)
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

void sub_10044E360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10044E398(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102454318;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10044E43C(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_10044E450(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

uint64_t sub_10044E5F4(uint64_t result, BOOL a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_10044E660(uint64_t a1)
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

void sub_10044E684(uint64_t a1, _BYTE *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10044E2B4(a1, lpsrc);
}

void sub_10044E724(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  sub_1004566D8((a1 + 16), a2 + 16);
  LOBYTE(v4) = *(a2 + 76);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 76))
  {
    *(a1 + 76) |= 1u;
    v6 = *(a1 + 8);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 8);
    if (!v7)
    {
      v7 = *(qword_102636E80 + 8);
    }

    sub_10044DAC0(v6, v7);
    v4 = *(a2 + 76);
    if ((v4 & 4) == 0)
    {
LABEL_6:
      if ((v4 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((*(a2 + 76) & 4) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 40);
  *(a1 + 76) |= 4u;
  *(a1 + 40) = v8;
  v4 = *(a2 + 76);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    v10 = *(a2 + 52);
    *(a1 + 76) |= 0x10u;
    *(a1 + 52) = v10;
    v4 = *(a2 + 76);
    if ((v4 & 0x20) == 0)
    {
LABEL_9:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_18:
  v9 = *(a2 + 48);
  if (v9 >= 4)
  {
    sub_101882DEC();
  }

  *(a1 + 76) |= 8u;
  *(a1 + 48) = v9;
  v4 = *(a2 + 76);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_9;
  }

LABEL_21:
  *(a1 + 76) |= 0x20u;
  v11 = *(a1 + 56);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 56);
  if (!v12)
  {
    v12 = *(qword_102636E80 + 56);
  }

  sub_10044E2B4(v11, v12);
  if ((*(a2 + 76) & 0x40) != 0)
  {
LABEL_10:
    v5 = *(a2 + 64);
    *(a1 + 76) |= 0x40u;
    *(a1 + 64) = v5;
  }
}

void sub_10044E930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10044E948(uint64_t *a1)
{
  *a1 = off_102454390;
  v2 = a1 + 2;
  sub_10044E9AC(a1);
  sub_100027438(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void *sub_10044E9AC(void *result)
{
  if (qword_102636E80 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[7];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_10044EA50(uint64_t *a1)
{
  sub_10044E948(a1);

  operator delete();
}

uint64_t sub_10044EAE8(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 76);
  if (v2)
  {
    if (*(a1 + 76))
    {
      v3 = *(a1 + 8);
      if (v3)
      {
        if (*(v3 + 68))
        {
          *(v3 + 24) = 0u;
          *(v3 + 8) = 0u;
        }

        sub_1003C79DC(v3 + 40);
        *(v3 + 68) = 0;
        v2 = *(a1 + 76);
      }
    }

    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    if ((v2 & 0x20) != 0)
    {
      v4 = *(a1 + 56);
      if (v4)
      {
        if (*(v4 + 16))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 16) = 0;
      }
    }

    *(a1 + 64) = 0;
  }

  result = sub_1003C79DC(a1 + 16);
  *(a1 + 76) = 0;
  return result;
}

uint64_t sub_10044EB70(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
            if (v7 != 6)
            {
              if (v7 == 7 && (TagFallback & 7) == 0)
              {
                v14 = *(this + 1);
                v13 = *(this + 2);
                goto LABEL_102;
              }

              goto LABEL_32;
            }

            if (v8 != 2)
            {
              goto LABEL_32;
            }

            v18 = *(a1 + 76);
LABEL_88:
            *(a1 + 76) = v18 | 0x20;
            v46 = *(a1 + 56);
            if (!v46)
            {
              operator new();
            }

            v57 = 0;
            v47 = *(this + 1);
            if (v47 >= *(this + 2) || *v47 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v57))
              {
                return 0;
              }
            }

            else
            {
              v57 = *v47;
              *(this + 1) = v47 + 1;
            }

            v48 = *(this + 14);
            v49 = *(this + 15);
            *(this + 14) = v48 + 1;
            if (v48 >= v49)
            {
              return 0;
            }

            v50 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v57);
            if (!sub_10044E450(v46, this, v51) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v50);
            v52 = *(this + 14);
            v24 = __OFSUB__(v52, 1);
            v53 = v52 - 1;
            if (v53 < 0 == v24)
            {
              *(this + 14) = v53;
            }

            v54 = *(this + 1);
            v13 = *(this + 2);
            if (v54 < v13 && *v54 == 56)
            {
              v14 = v54 + 1;
              *(this + 1) = v14;
LABEL_102:
              if (v14 >= v13 || (v55 = *v14, v55 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 64));
                if (!result)
                {
                  return result;
                }

                v56 = *(this + 1);
                v13 = *(this + 2);
              }

              else
              {
                *(a1 + 64) = v55;
                v56 = v14 + 1;
                *(this + 1) = v56;
              }

              *(a1 + 76) |= 0x40u;
              if (v56 == v13 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
            if (v7 != 4)
            {
              if (v7 == 5 && (TagFallback & 7) == 0)
              {
                v10 = *(this + 1);
                v9 = *(this + 2);
                goto LABEL_80;
              }

              goto LABEL_32;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_32;
            }

            v17 = *(this + 1);
            v11 = *(this + 2);
LABEL_70:
            v57 = 0;
            if (v17 >= v11 || (v42 = *v17, (v42 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v57);
              if (!result)
              {
                return result;
              }

              v42 = v57;
            }

            else
            {
              *(this + 1) = v17 + 1;
            }

            if (v42 <= 3)
            {
              *(a1 + 76) |= 8u;
              *(a1 + 48) = v42;
            }

            v43 = *(this + 1);
            v9 = *(this + 2);
            if (v43 < v9 && *v43 == 40)
            {
              v10 = v43 + 1;
              *(this + 1) = v10;
LABEL_80:
              if (v10 >= v9 || (v44 = *v10, v44 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 52));
                if (!result)
                {
                  return result;
                }

                v45 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                *(a1 + 52) = v44;
                v45 = v10 + 1;
                *(this + 1) = v45;
              }

              v18 = *(a1 + 76) | 0x10;
              *(a1 + 76) = v18;
              if (v45 < v9 && *v45 == 50)
              {
                *(this + 1) = v45 + 1;
                goto LABEL_88;
              }
            }
          }
        }

        if (v7 != 1)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_32;
        }

        *(a1 + 76) |= 1u;
        v15 = *(a1 + 8);
        if (!v15)
        {
          operator new();
        }

        v57 = 0;
        v16 = *(this + 1);
        if (v16 >= *(this + 2) || *v16 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v57))
          {
            return 0;
          }
        }

        else
        {
          v57 = *v16;
          *(this + 1) = v16 + 1;
        }

        v19 = *(this + 14);
        v20 = *(this + 15);
        *(this + 14) = v19 + 1;
        if (v19 >= v20)
        {
          return 0;
        }

        v21 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v57);
        if (!sub_10044DD0C(v15, this, v22) || *(this + 36) != 1)
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
        if (v26 < *(this + 2) && *v26 == 18)
        {
          while (1)
          {
            *(this + 1) = v26 + 1;
LABEL_44:
            v27 = *(a1 + 28);
            v28 = *(a1 + 24);
            if (v28 >= v27)
            {
              if (v27 == *(a1 + 32))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v27 + 1);
                v27 = *(a1 + 28);
              }

              *(a1 + 28) = v27 + 1;
              operator new();
            }

            v29 = *(a1 + 16);
            *(a1 + 24) = v28 + 1;
            v30 = *(v29 + 8 * v28);
            v57 = 0;
            v31 = *(this + 1);
            if (v31 >= *(this + 2) || *v31 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v57))
              {
                return 0;
              }
            }

            else
            {
              v57 = *v31;
              *(this + 1) = v31 + 1;
            }

            v32 = *(this + 14);
            v33 = *(this + 15);
            *(this + 14) = v32 + 1;
            if (v32 >= v33)
            {
              return 0;
            }

            v34 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v57);
            if (!sub_10044D3F0(v30, this, v35) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v34);
            v36 = *(this + 14);
            v24 = __OFSUB__(v36, 1);
            v37 = v36 - 1;
            if (v37 < 0 == v24)
            {
              *(this + 14) = v37;
            }

            v26 = *(this + 1);
            v11 = *(this + 2);
            if (v26 >= v11)
            {
              break;
            }

            v38 = *v26;
            if (v38 != 18)
            {
              if (v38 != 24)
              {
                goto LABEL_1;
              }

              v12 = v26 + 1;
              *(this + 1) = v12;
              goto LABEL_62;
            }
          }
        }
      }

      if (v7 == 2)
      {
        if (v8 != 2)
        {
          break;
        }

        goto LABEL_44;
      }

      if (v7 != 3 || (TagFallback & 7) != 0)
      {
        break;
      }

      v12 = *(this + 1);
      v11 = *(this + 2);
LABEL_62:
      if (v12 >= v11 || (v39 = *v12, v39 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 40));
        if (!result)
        {
          return result;
        }

        v40 = *(this + 1);
        v11 = *(this + 2);
      }

      else
      {
        *(a1 + 40) = v39;
        v40 = v12 + 1;
        *(this + 1) = v40;
      }

      *(a1 + 76) |= 4u;
      if (v40 < v11 && *v40 == 32)
      {
        v17 = v40 + 1;
        *(this + 1) = v17;
        goto LABEL_70;
      }
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

uint64_t sub_10044F1D8(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 76))
  {
    v6 = *(result + 8);
    if (!v6)
    {
      v6 = *(qword_102636E80 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  v8 = *(v5 + 76);
  if ((v8 & 4) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 40), a2, a4);
    v8 = *(v5 + 76);
    if ((v8 & 8) == 0)
    {
LABEL_10:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }
  }

  else if ((v8 & 8) == 0)
  {
    goto LABEL_10;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 48), a2, a4);
  v8 = *(v5 + 76);
  if ((v8 & 0x10) == 0)
  {
LABEL_11:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 52), a2, a4);
  v8 = *(v5 + 76);
  if ((v8 & 0x20) == 0)
  {
LABEL_12:
    if ((v8 & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_20;
  }

LABEL_17:
  v9 = *(v5 + 56);
  if (!v9)
  {
    v9 = *(qword_102636E80 + 56);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  if ((*(v5 + 76) & 0x40) != 0)
  {
LABEL_20:
    v10 = *(v5 + 64);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(7, v10, a2, a4);
  }

  return result;
}

uint64_t sub_10044F314(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 76);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_18;
  }

  if ((*(a1 + 76) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 76) & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 40), a2) + 1;
    v3 = *(a1 + 76);
    goto LABEL_13;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v5 = *(qword_102636E80 + 8);
  }

  v6 = sub_10044E180(v5);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
  }

  else
  {
    v8 = 1;
  }

  v4 = v7 + v8 + 1;
  v3 = *(a1 + 76);
  if ((v3 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if ((v3 & 8) != 0)
  {
    v16 = *(a1 + 48);
    if ((v16 & 0x80000000) != 0)
    {
      v17 = 11;
    }

    else if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
      v3 = *(a1 + 76);
    }

    else
    {
      v17 = 2;
    }

    v4 += v17;
    if ((v3 & 0x10) == 0)
    {
LABEL_15:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_35;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_15;
  }

  v18 = *(a1 + 52);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
    v3 = *(a1 + 76);
  }

  else
  {
    v19 = 2;
  }

  v4 += v19;
  if ((v3 & 0x20) == 0)
  {
LABEL_16:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_35:
  v20 = *(a1 + 56);
  if (!v20)
  {
    v20 = *(qword_102636E80 + 56);
  }

  if (*(v20 + 16))
  {
    v21 = 2 * (*(v20 + 16) & 1) + (*(v20 + 16) & 2);
  }

  else
  {
    v21 = 0;
  }

  *(v20 + 12) = v21;
  v4 += v21 + 2;
  if ((*(a1 + 76) & 0x40) != 0)
  {
LABEL_17:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 64), a2) + 1;
  }

LABEL_18:
  v9 = *(a1 + 24);
  v10 = (v9 + v4);
  if (v9 >= 1)
  {
    v11 = 0;
    do
    {
      v12 = sub_10044D8D8(*(*(a1 + 16) + 8 * v11), a2);
      v13 = v12;
      if (v12 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
      }

      else
      {
        v14 = 1;
      }

      v10 = (v13 + v10 + v14);
      ++v11;
    }

    while (v11 < *(a1 + 24));
  }

  *(a1 + 72) = v10;
  return v10;
}

void sub_10044F4D0(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10044E724(a1, lpsrc);
}

void sub_10044F570(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  sub_1004567F8((a1 + 16), a2 + 16);
  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
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
        v6 = *(qword_102636E90 + 8);
      }

      sub_10041ED1C(v5, v6);
      v4 = *(a2 + 48);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 40);
      *(a1 + 48) |= 4u;
      *(a1 + 40) = v7;
    }
  }
}

void sub_10044F684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10044F69C(uint64_t *a1)
{
  *a1 = off_102454408;
  if (qword_102636E90 != a1)
  {
    v2 = a1[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  sub_100027438(a1 + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10044F738(uint64_t *a1)
{
  sub_10044F69C(a1);

  operator delete();
}

uint64_t sub_10044F770(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636E90;
  if (!qword_102636E90)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636E90;
  }

  return result;
}

uint64_t sub_10044F7F8(uint64_t a1)
{
  if (*(a1 + 48))
  {
    if (*(a1 + 48))
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

    *(a1 + 40) = 0;
  }

  result = sub_1003C79DC(a1 + 16);
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_10044F850(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        break;
      }

      if (v7 == 2)
      {
        if (v8 != 2)
        {
          goto LABEL_18;
        }

LABEL_31:
        v21 = *(a1 + 28);
        v22 = *(a1 + 24);
        if (v22 >= v21)
        {
          if (v21 == *(a1 + 32))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v21 + 1);
            v21 = *(a1 + 28);
          }

          *(a1 + 28) = v21 + 1;
          operator new();
        }

        v23 = *(a1 + 16);
        *(a1 + 24) = v22 + 1;
        v24 = *(v23 + 8 * v22);
        v38 = 0;
        v25 = *(this + 1);
        if (v25 >= *(this + 2) || *v25 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v38))
          {
            return 0;
          }
        }

        else
        {
          v38 = *v25;
          *(this + 1) = v25 + 1;
        }

        v26 = *(this + 14);
        v27 = *(this + 15);
        *(this + 14) = v26 + 1;
        if (v26 >= v27)
        {
          return 0;
        }

        v28 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v38);
        if (!sub_10044EB70(v24, this, v29) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v28);
        v30 = *(this + 14);
        v18 = __OFSUB__(v30, 1);
        v31 = v30 - 1;
        if (v31 < 0 == v18)
        {
          *(this + 14) = v31;
        }

        v20 = *(this + 1);
        v11 = *(this + 2);
        if (v20 < v11)
        {
          v32 = *v20;
          if (v32 == 18)
          {
            goto LABEL_52;
          }

          if (v32 == 24)
          {
            v12 = v20 + 1;
            *(this + 1) = v12;
LABEL_49:
            v36 = 0;
            if (v12 >= v11 || (v33 = *v12, (v33 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v36);
              if (!result)
              {
                return result;
              }

              v33 = v36;
              v34 = *(this + 1);
              v11 = *(this + 2);
            }

            else
            {
              v34 = v12 + 1;
              *(this + 1) = v34;
            }

            *(a1 + 40) = v33 != 0;
            *(a1 + 48) |= 4u;
            if (v34 == v11 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }
      }

      else
      {
        if (v7 != 1 || v8 != 2)
        {
          goto LABEL_18;
        }

        *(a1 + 48) |= 1u;
        v9 = *(a1 + 8);
        if (!v9)
        {
          operator new();
        }

        v37 = 0;
        v10 = *(this + 1);
        if (v10 >= *(this + 2) || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v37))
          {
            return 0;
          }
        }

        else
        {
          v37 = *v10;
          *(this + 1) = v10 + 1;
        }

        v13 = *(this + 14);
        v14 = *(this + 15);
        *(this + 14) = v13 + 1;
        if (v13 >= v14)
        {
          return 0;
        }

        v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v37);
        if (!sub_10041EEC4(v9, this, v16) || *(this + 36) != 1)
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
LABEL_52:
          *(this + 1) = v20 + 1;
          goto LABEL_31;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v12 = *(this + 1);
      v11 = *(this + 2);
      goto LABEL_49;
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

uint64_t sub_10044FC34(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 48))
  {
    v6 = *(result + 8);
    if (!v6)
    {
      v6 = *(qword_102636E90 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  if ((*(v5 + 48) & 4) != 0)
  {
    v8 = *(v5 + 40);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, v8, a2, a4);
  }

  return result;
}

uint64_t sub_10044FCF0(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    if (v3)
    {
      v6 = *(a1 + 8);
      if (!v6)
      {
        v6 = *(qword_102636E90 + 8);
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
      v3 = *(a1 + 48);
    }

    else
    {
      v4 = 0;
    }

    v5 = ((v3 >> 1) & 2) + v4;
  }

  else
  {
    v5 = 0;
  }

  v9 = *(a1 + 24);
  v10 = v9 + v5;
  if (v9 >= 1)
  {
    v11 = 0;
    do
    {
      v12 = sub_10044F314(*(*(a1 + 16) + 8 * v11), a2);
      v13 = v12;
      if (v12 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
      }

      else
      {
        v14 = 1;
      }

      v10 = (v13 + v10 + v14);
      ++v11;
    }

    while (v11 < *(a1 + 24));
  }

  *(a1 + 44) = v10;
  return v10;
}

void sub_10044FDEC(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10044F570(a1, lpsrc);
}

void sub_10044FE8C(_DWORD *a1, uint64_t a2)
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
      if (v5 >= 4)
      {
        sub_101882E18();
      }

      a1[5] |= 1u;
      a1[2] = v5;
      v4 = *(a2 + 20);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      if (v6 >= 4)
      {
        sub_101882E44();
      }

      a1[5] |= 2u;
      a1[3] = v6;
    }
  }
}

void sub_10044FF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10044FF88(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102454480;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100450028(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_10045003C(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      if (v8 <= 3)
      {
        a1[5] |= 1u;
        a1[2] = v8;
      }

      v11 = *(this + 1);
      v9 = *(this + 2);
      if (v11 < v9 && *v11 == 16)
      {
        v10 = v11 + 1;
        *(this + 1) = v10;
LABEL_24:
        v14 = 0;
        if (v10 >= v9 || (v12 = *v10, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v14);
          if (!result)
          {
            return result;
          }

          v12 = v14;
        }

        else
        {
          *(this + 1) = v10 + 1;
        }

        if (v12 <= 3)
        {
          a1[5] |= 2u;
          a1[3] = v12;
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

uint64_t sub_1004501E0(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 20);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_10045024C(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 20);
  if (v3)
  {
    if (*(a1 + 20))
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
        if ((*(a1 + 20) & 2) == 0)
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
      if ((*(a1 + 20) & 2) == 0)
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
    }

    else
    {
      v7 = 2;
    }

    v4 = (v7 + v4);
  }

  else
  {
    v4 = 0;
  }

LABEL_19:
  *(a1 + 16) = v4;
  return v4;
}

void sub_1004502F8(_DWORD *a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10044FE8C(a1, lpsrc);
}

void sub_100450398(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      *(a1 + 36) |= 1u;
      v5 = *(a1 + 8);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 8);
      if (!v6)
      {
        v6 = *(qword_102636EA0 + 8);
      }

      sub_10041ED1C(v5, v6);
      v4 = *(a2 + 36);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 16);
      if (v7 >= 4)
      {
        sub_101882E70();
      }

      *(a1 + 36) |= 2u;
      *(a1 + 16) = v7;
      v4 = *(a2 + 36);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 20);
      if (v8 >= 4)
      {
        sub_101882E9C();
      }

      *(a1 + 36) |= 4u;
      *(a1 + 20) = v8;
      v4 = *(a2 + 36);
    }

    if ((v4 & 8) != 0)
    {
      v9 = *(a2 + 24);
      if (v9 >= 4)
      {
        sub_101882EC8();
      }

      *(a1 + 36) |= 8u;
      *(a1 + 24) = v9;
      v4 = *(a2 + 36);
    }

    if ((v4 & 0x10) != 0)
    {
      v11 = *(a2 + 28);
      *(a1 + 36) |= 0x10u;
      *(a1 + 28) = v11;
      v4 = *(a2 + 36);
      if ((v4 & 0x20) == 0)
      {
LABEL_21:
        if ((v4 & 0x40) == 0)
        {
          return;
        }

        goto LABEL_22;
      }
    }

    else if ((v4 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(a2 + 29);
    *(a1 + 36) |= 0x20u;
    *(a1 + 29) = v12;
    if ((*(a2 + 36) & 0x40) != 0)
    {
LABEL_22:
      v10 = *(a2 + 30);
      *(a1 + 36) |= 0x40u;
      *(a1 + 30) = v10;
    }
  }
}

void sub_10045055C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100450574(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024544F8;
  if (qword_102636EA0 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_100450604(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100450574(a1);

  operator delete();
}

uint64_t sub_100450690(uint64_t result)
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

    *(result + 23) = 0;
    *(result + 16) = 0;
  }

  *(result + 36) = 0;
  return result;
}

uint64_t sub_1004506C8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
            if ((TagFallback & 7) == 0)
            {
              v18 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_83;
            }
          }

          else if (v7 == 7 && (TagFallback & 7) == 0)
          {
            v13 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_91;
          }

          goto LABEL_32;
        }

        if (v7 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_32;
          }

          v17 = *(this + 1);
          v16 = *(this + 2);
LABEL_65:
          v42 = 0;
          if (v17 >= v16 || (v34 = *v17, (v34 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42);
            if (!result)
            {
              return result;
            }

            v34 = v42;
          }

          else
          {
            *(this + 1) = v17 + 1;
          }

          if (v34 <= 3)
          {
            *(a1 + 36) |= 8u;
            *(a1 + 24) = v34;
          }

          v35 = *(this + 1);
          v9 = *(this + 2);
          if (v35 < v9 && *v35 == 40)
          {
            v10 = v35 + 1;
            *(this + 1) = v10;
LABEL_75:
            v42 = 0;
            if (v10 >= v9 || (v36 = *v10, (v36 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42);
              if (!result)
              {
                return result;
              }

              v36 = v42;
              v37 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              v37 = v10 + 1;
              *(this + 1) = v37;
            }

            *(a1 + 28) = v36 != 0;
            *(a1 + 36) |= 0x10u;
            if (v37 < v9 && *v37 == 48)
            {
              v18 = v37 + 1;
              *(this + 1) = v18;
LABEL_83:
              v42 = 0;
              if (v18 >= v9 || (v38 = *v18, (v38 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42);
                if (!result)
                {
                  return result;
                }

                v38 = v42;
                v39 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                v39 = v18 + 1;
                *(this + 1) = v39;
              }

              *(a1 + 29) = v38 != 0;
              *(a1 + 36) |= 0x20u;
              if (v39 < v9 && *v39 == 56)
              {
                v13 = v39 + 1;
                *(this + 1) = v13;
LABEL_91:
                v42 = 0;
                if (v13 >= v9 || (v40 = *v13, (v40 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42);
                  if (!result)
                  {
                    return result;
                  }

                  v40 = v42;
                  v41 = *(this + 1);
                  v9 = *(this + 2);
                }

                else
                {
                  v41 = v13 + 1;
                  *(this + 1) = v41;
                }

                *(a1 + 30) = v40 != 0;
                *(a1 + 36) |= 0x40u;
                if (v41 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
          if (v7 == 5 && (TagFallback & 7) == 0)
          {
            v10 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_75;
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
        if (v7 != 3 || (TagFallback & 7) != 0)
        {
          goto LABEL_32;
        }

        v12 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_55;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_32;
      }

      v20 = *(this + 1);
      v19 = *(this + 2);
LABEL_45:
      v42 = 0;
      if (v20 >= v19 || (v29 = *v20, (v29 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42);
        if (!result)
        {
          return result;
        }

        v29 = v42;
      }

      else
      {
        *(this + 1) = v20 + 1;
      }

      if (v29 <= 3)
      {
        *(a1 + 36) |= 2u;
        *(a1 + 16) = v29;
      }

      v31 = *(this + 1);
      v11 = *(this + 2);
      if (v31 < v11 && *v31 == 24)
      {
        v12 = v31 + 1;
        *(this + 1) = v12;
LABEL_55:
        v42 = 0;
        if (v12 >= v11 || (v32 = *v12, (v32 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42);
          if (!result)
          {
            return result;
          }

          v32 = v42;
        }

        else
        {
          *(this + 1) = v12 + 1;
        }

        if (v32 <= 3)
        {
          *(a1 + 36) |= 4u;
          *(a1 + 20) = v32;
        }

        v33 = *(this + 1);
        v16 = *(this + 2);
        if (v33 < v16 && *v33 == 32)
        {
          v17 = v33 + 1;
          *(this + 1) = v17;
          goto LABEL_65;
        }
      }
    }

    if (v8 != 2)
    {
      goto LABEL_32;
    }

    *(a1 + 36) |= 1u;
    v14 = *(a1 + 8);
    if (!v14)
    {
      operator new();
    }

    v42 = 0;
    v15 = *(this + 1);
    if (v15 >= *(this + 2) || *v15 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42))
      {
        return 0;
      }
    }

    else
    {
      v42 = *v15;
      *(this + 1) = v15 + 1;
    }

    v21 = *(this + 14);
    v22 = *(this + 15);
    *(this + 14) = v21 + 1;
    if (v21 >= v22)
    {
      return 0;
    }

    v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v42);
    if (!sub_10041EEC4(v14, this, v24) || *(this + 36) != 1)
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
    v19 = *(this + 2);
    if (v28 < v19 && *v28 == 16)
    {
      v20 = v28 + 1;
      *(this + 1) = v20;
      goto LABEL_45;
    }
  }
}

uint64_t sub_100450BB4(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636EA0 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 36);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 36);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 36);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 29), a2, a4);
    if ((*(v5 + 36) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 36);
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
  v8 = *(v5 + 30);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, v8, a2, a4);
}

uint64_t sub_100450CC0(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 36);
  if (v3)
  {
    if (v3)
    {
      v6 = *(a1 + 8);
      if (!v6)
      {
        v6 = *(qword_102636EA0 + 8);
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
      v3 = *(a1 + 36);
      if ((v3 & 2) == 0)
      {
LABEL_21:
        if ((v3 & 4) != 0)
        {
          v11 = *(a1 + 20);
          if ((v11 & 0x80000000) != 0)
          {
            v12 = 11;
          }

          else if (v11 >= 0x80)
          {
            v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
            v3 = *(a1 + 36);
          }

          else
          {
            v12 = 2;
          }

          v4 += v12;
          if ((v3 & 8) == 0)
          {
            goto LABEL_36;
          }
        }

        else if ((v3 & 8) == 0)
        {
LABEL_36:
          result = ((v3 >> 3) & 2) + v4 + ((v3 >> 4) & 2) + ((v3 >> 5) & 2);
          goto LABEL_37;
        }

        v13 = *(a1 + 24);
        if ((v13 & 0x80000000) != 0)
        {
          v14 = 11;
        }

        else if (v13 >= 0x80)
        {
          v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
          v3 = *(a1 + 36);
        }

        else
        {
          v14 = 2;
        }

        v4 += v14;
        goto LABEL_36;
      }
    }

    else
    {
      v4 = 0;
      if ((v3 & 2) == 0)
      {
        goto LABEL_21;
      }
    }

    v9 = *(a1 + 16);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      v3 = *(a1 + 36);
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
    goto LABEL_21;
  }

  result = 0;
LABEL_37:
  *(a1 + 32) = result;
  return result;
}

void sub_100450E1C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100450398(a1, lpsrc);
}

void sub_100450EBC(uint64_t a1, uint64_t a2)
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

  if ((*(a2 + 40) & 1) == 0)
  {
    if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    v7 = *(a2 + 32);
    *(a1 + 40) |= 2u;
    *(a1 + 32) = v7;
    v4 = *(a2 + 40);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_20;
    }

    goto LABEL_15;
  }

  *(a1 + 40) |= 1u;
  v5 = *(a1 + 8);
  if (!v5)
  {
    operator new();
  }

  v6 = *(a2 + 8);
  if (!v6)
  {
    v6 = *(qword_102636EA8 + 8);
  }

  sub_10041ED1C(v5, v6);
  v4 = *(a2 + 40);
  if ((v4 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v4 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_15:
  *(a1 + 40) |= 4u;
  v8 = *(a1 + 16);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 16);
  if (!v9)
  {
    v9 = *(qword_102636EA8 + 16);
  }

  sub_10044FE8C(v8, v9);
  if ((*(a2 + 40) & 8) != 0)
  {
LABEL_20:
    *(a1 + 40) |= 8u;
    v10 = *(a1 + 24);
    if (!v10)
    {
      operator new();
    }

    v11 = *(a2 + 24);
    if (!v11)
    {
      v11 = *(qword_102636EA8 + 24);
    }

    sub_100450398(v10, v11);
  }
}

void sub_1004510BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1004510D4(void *result)
{
  if (qword_102636EA8 != result)
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

    result = v1[3];
    if (result)
    {
      v4 = *(*result + 8);

      return v4();
    }
  }

  return result;
}

void sub_1004511A0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102454570;
  sub_1004510D4(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1004511F4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102454570;
  sub_1004510D4(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10045125C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636EA8;
  if (!qword_102636EA8)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636EA8;
  }

  return result;
}

uint64_t sub_1004512E4(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 40);
  if (v2)
  {
    if (*(result + 40))
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
        v2 = *(result + 40);
      }
    }

    *(result + 32) = 0;
    if ((v2 & 4) != 0)
    {
      v4 = *(result + 16);
      if (v4)
      {
        if (*(v4 + 20))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 20) = 0;
        v2 = *(result + 40);
      }
    }

    if ((v2 & 8) != 0)
    {
      result = *(result + 24);
      if (result)
      {
        result = sub_100450690(result);
      }
    }
  }

  *(v1 + 40) = 0;
  return result;
}

uint64_t sub_100451368(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (v8 != 2)
          {
            goto LABEL_22;
          }

          v13 = *(a1 + 40);
LABEL_43:
          *(a1 + 40) = v13 | 4;
          v25 = *(a1 + 16);
          if (!v25)
          {
            operator new();
          }

          v42 = 0;
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42))
            {
              return 0;
            }
          }

          else
          {
            v42 = *v26;
            *(this + 1) = v26 + 1;
          }

          v27 = *(this + 14);
          v28 = *(this + 15);
          *(this + 14) = v27 + 1;
          if (v27 >= v28)
          {
            return 0;
          }

          v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v42);
          if (!sub_10045003C(v25, this, v30) || *(this + 36) != 1)
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

          v33 = *(this + 1);
          if (v33 < *(this + 2) && *v33 == 34)
          {
            *(this + 1) = v33 + 1;
            goto LABEL_57;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 2)
          {
            goto LABEL_22;
          }

LABEL_57:
          *(a1 + 40) |= 8u;
          v34 = *(a1 + 24);
          if (!v34)
          {
            operator new();
          }

          v42 = 0;
          v35 = *(this + 1);
          if (v35 >= *(this + 2) || *v35 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42))
            {
              return 0;
            }
          }

          else
          {
            v42 = *v35;
            *(this + 1) = v35 + 1;
          }

          v36 = *(this + 14);
          v37 = *(this + 15);
          *(this + 14) = v36 + 1;
          if (v36 >= v37)
          {
            return 0;
          }

          v38 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v42);
          if (!sub_1004506C8(v34, this, v39) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v38);
          v40 = *(this + 14);
          v19 = __OFSUB__(v40, 1);
          v41 = v40 - 1;
          if (v41 < 0 == v19)
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

      if (v8 != 2)
      {
        goto LABEL_22;
      }

      *(a1 + 40) |= 1u;
      v11 = *(a1 + 8);
      if (!v11)
      {
        operator new();
      }

      v42 = 0;
      v12 = *(this + 1);
      if (v12 >= *(this + 2) || *v12 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42))
        {
          return 0;
        }
      }

      else
      {
        v42 = *v12;
        *(this + 1) = v12 + 1;
      }

      v14 = *(this + 14);
      v15 = *(this + 15);
      *(this + 14) = v14 + 1;
      if (v14 >= v15)
      {
        return 0;
      }

      v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v42);
      if (!sub_10041EEC4(v11, this, v17) || *(this + 36) != 1)
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
      v9 = *(this + 2);
      if (v21 < v9 && *v21 == 16)
      {
        v10 = v21 + 1;
        *(this + 1) = v10;
LABEL_35:
        v42 = 0;
        if (v10 >= v9 || (v22 = *v10, (v22 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42);
          if (!result)
          {
            return result;
          }

          v22 = v42;
          v23 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v23 = v10 + 1;
          *(this + 1) = v23;
        }

        *(a1 + 32) = v22;
        v13 = *(a1 + 40) | 2;
        *(a1 + 40) = v13;
        if (v23 < v9 && *v23 == 26)
        {
          *(this + 1) = v23 + 1;
          goto LABEL_43;
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
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
}

uint64_t sub_100451814(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636EA8 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 32), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_10:
  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102636EA8 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  if ((*(v5 + 40) & 8) != 0)
  {
LABEL_13:
    v9 = *(v5 + 24);
    if (!v9)
    {
      v9 = *(qword_102636EA8 + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  }

  return result;
}

uint64_t sub_1004518EC(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_36;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 40) & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v5 = *(qword_102636EA8 + 8);
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
  v3 = *(a1 + 40);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v8 = *(a1 + 32);
    if ((v8 & 0x80000000) != 0)
    {
      v9 = 11;
    }

    else if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(a1 + 40);
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
  }

LABEL_21:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  v10 = *(a1 + 16);
  if (!v10)
  {
    v10 = *(qword_102636EA8 + 16);
  }

  v11 = sub_10045024C(v10, a2);
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
  if ((*(a1 + 40) & 8) != 0)
  {
LABEL_30:
    v14 = *(a1 + 24);
    if (!v14)
    {
      v14 = *(qword_102636EA8 + 24);
    }

    v15 = sub_100450CC0(v14, a2);
    v17 = v15;
    if (v15 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, v16);
    }

    else
    {
      v18 = 1;
    }

    v4 = (v4 + v17 + v18 + 1);
  }

LABEL_36:
  *(a1 + 36) = v4;
  return v4;
}