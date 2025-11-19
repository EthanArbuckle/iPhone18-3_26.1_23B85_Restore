uint64_t sub_100143E94(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10014379C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100143F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100143F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100143F9C(uint64_t result, uint64_t a2)
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

uint64_t sub_100144030()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CDF0;
}

void sub_1001440C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001440D4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
    a2 = v3;
    a1 = v2;
  }

  v4 = *(a2 + 44);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 24);
    *(a1 + 44) |= 1u;
    *(a1 + 24) = v8;
    v4 = *(a2 + 44);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 25);
  *(a1 + 44) |= 2u;
  *(a1 + 25) = v9;
  v4 = *(a2 + 44);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 16);
  *(a1 + 44) |= 4u;
  *(a1 + 16) = v10;
  v4 = *(a2 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v11 = *(a2 + 20);
  *(a1 + 44) |= 8u;
  *(a1 + 20) = v11;
  v4 = *(a2 + 44);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v13 = *(a2 + 26);
    *(a1 + 44) |= 0x20u;
    *(a1 + 26) = v13;
    v4 = *(a2 + 44);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_20:
  v12 = *(a2 + 28);
  *(a1 + 44) |= 0x10u;
  *(a1 + 28) = v12;
  v4 = *(a2 + 44);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  v14 = *(a2 + 27);
  *(a1 + 44) |= 0x40u;
  *(a1 + 27) = v14;
  v4 = *(a2 + 44);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 32);
    *(a1 + 44) |= 0x80u;
    *(a1 + 32) = v5;
    v4 = *(a2 + 44);
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 36);
    *(a1 + 44) |= 0x100u;
    *(a1 + 36) = v6;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10014427C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100144290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001442A4(uint64_t a1)
{
  *a1 = off_10043E0C0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1001442F8(uint64_t a1)
{
  *a1 = off_10043E0C0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001443F4(uint64_t a1)
{
  v1 = *(a1 + 44);
  if (v1)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 36) = 0;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 9) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100144428(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
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
                if (v8 != 4 || v9 != 5)
                {
                  goto LABEL_44;
                }

                v29 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v29) & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_62;
              }

              if (v9 != 5)
              {
                goto LABEL_44;
              }

              v29 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v29) & 1) == 0)
              {
                return 0;
              }

LABEL_59:
              *(a1 + 16) = v29;
              *(a1 + 44) |= 4u;
              v21 = *(this + 1);
              if (v21 < *(this + 2) && *v21 == 37)
              {
                *(this + 1) = v21 + 1;
                v29 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v29) & 1) == 0)
                {
                  return 0;
                }

LABEL_62:
                *(a1 + 20) = v29;
                *(a1 + 44) |= 8u;
                v22 = *(this + 1);
                if (v22 < *(this + 2) && *v22 == 45)
                {
                  *(this + 1) = v22 + 1;
                  v29 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v29) & 1) == 0)
                  {
                    return 0;
                  }

LABEL_65:
                  *(a1 + 28) = v29;
                  *(a1 + 44) |= 0x10u;
                  v23 = *(this + 1);
                  v12 = *(this + 2);
                  if (v23 < v12 && *v23 == 48)
                  {
                    v13 = v23 + 1;
                    *(this + 1) = v13;
                    v29 = 0;
                    if (v13 >= v12)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_68;
                  }
                }
              }
            }

            else if (v8 == 1)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_44;
              }

              v29 = 0;
              v14 = *(this + 1);
              v10 = *(this + 2);
              if (v14 >= v10 || (v15 = *v14, (v15 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29);
                if (!result)
                {
                  return result;
                }

                v15 = v29;
                v16 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                v16 = v14 + 1;
                *(this + 1) = v16;
              }

              *(a1 + 24) = v15 != 0;
              *(a1 + 44) |= 1u;
              if (v16 < v10 && *v16 == 16)
              {
                v11 = v16 + 1;
                *(this + 1) = v11;
                v29 = 0;
                if (v11 >= v10)
                {
                  goto LABEL_54;
                }

                goto LABEL_52;
              }
            }

            else
            {
              if (v8 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_44;
              }

              v11 = *(this + 1);
              v10 = *(this + 2);
              v29 = 0;
              if (v11 >= v10)
              {
LABEL_54:
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29);
                if (!result)
                {
                  return result;
                }

                v19 = v29;
                v20 = *(this + 1);
                v10 = *(this + 2);
                goto LABEL_56;
              }

LABEL_52:
              v19 = *v11;
              if ((v19 & 0x80000000) != 0)
              {
                goto LABEL_54;
              }

              v20 = v11 + 1;
              *(this + 1) = v20;
LABEL_56:
              *(a1 + 25) = v19 != 0;
              *(a1 + 44) |= 2u;
              if (v20 < v10 && *v20 == 29)
              {
                *(this + 1) = v20 + 1;
                v29 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v29) & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_59;
              }
            }
          }

          if (TagFallback >> 3 > 6)
          {
            break;
          }

          if (v8 == 5)
          {
            if (v9 != 5)
            {
              goto LABEL_44;
            }

            v29 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v29) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_65;
          }

          if (v8 != 6 || (TagFallback & 7) != 0)
          {
            goto LABEL_44;
          }

          v13 = *(this + 1);
          v12 = *(this + 2);
          v29 = 0;
          if (v13 >= v12)
          {
LABEL_70:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29);
            if (!result)
            {
              return result;
            }

            v24 = v29;
            v25 = *(this + 1);
            v12 = *(this + 2);
            goto LABEL_72;
          }

LABEL_68:
          v24 = *v13;
          if ((v24 & 0x80000000) != 0)
          {
            goto LABEL_70;
          }

          v25 = v13 + 1;
          *(this + 1) = v25;
LABEL_72:
          *(a1 + 26) = v24 != 0;
          *(a1 + 44) |= 0x20u;
          if (v25 < v12 && *v25 == 56)
          {
            v17 = v25 + 1;
            *(this + 1) = v17;
            v29 = 0;
            if (v17 >= v12)
            {
              goto LABEL_77;
            }

            goto LABEL_75;
          }
        }

        if (v8 != 7)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v17 = *(this + 1);
        v12 = *(this + 2);
        v29 = 0;
        if (v17 >= v12)
        {
LABEL_77:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29);
          if (!result)
          {
            return result;
          }

          v26 = v29;
          v27 = *(this + 1);
          v12 = *(this + 2);
          goto LABEL_79;
        }

LABEL_75:
        v26 = *v17;
        if ((v26 & 0x80000000) != 0)
        {
          goto LABEL_77;
        }

        v27 = v17 + 1;
        *(this + 1) = v27;
LABEL_79:
        *(a1 + 27) = v26 != 0;
        *(a1 + 44) |= 0x40u;
        if (v27 < v12 && *v27 == 69)
        {
          *(this + 1) = v27 + 1;
          goto LABEL_82;
        }
      }

      if (v8 != 8)
      {
        break;
      }

      if (v9 != 5)
      {
        goto LABEL_44;
      }

LABEL_82:
      v29 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v29) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 32) = v29;
      *(a1 + 44) |= 0x80u;
      v28 = *(this + 1);
      if (v28 < *(this + 2) && *v28 == 77)
      {
        *(this + 1) = v28 + 1;
        v29 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v29) & 1) == 0)
        {
          return 0;
        }

LABEL_86:
        *(a1 + 36) = v29;
        *(a1 + 44) |= 0x100u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 9 && v9 == 5)
    {
      v29 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v29) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_86;
    }

LABEL_44:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_10014493C(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 24), a2, a4);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 25), a2, a4);
  v6 = *(v5 + 44);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 16), a3);
  v6 = *(v5 + 44);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 20), a3);
  v6 = *(v5 + 44);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 28), a3);
  v6 = *(v5 + 44);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 26), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 27), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 32), a3);
  if ((*(v5 + 44) & 0x100) == 0)
  {
LABEL_10:
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, a2, *(v5 + 36), a3);
  v10 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v10;
  if (!v10)
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

uint64_t sub_100144A9C(uint64_t a1, _BYTE *a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 44);
  if (v3)
  {
    v7 = *(a1 + 24);
    *a2 = 8;
    a2[1] = v7;
    a2 += 2;
    v3 = *(a1 + 44);
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

  v8 = *(a1 + 25);
  *a2 = 16;
  a2[1] = v8;
  a2 += 2;
  v3 = *(a1 + 44);
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
  v9 = *(a1 + 16);
  *a2 = 29;
  *(a2 + 1) = v9;
  a2 += 5;
  v3 = *(a1 + 44);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v10 = *(a1 + 20);
  *a2 = 37;
  *(a2 + 1) = v10;
  a2 += 5;
  v3 = *(a1 + 44);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v11 = *(a1 + 28);
  *a2 = 45;
  *(a2 + 1) = v11;
  a2 += 5;
  v3 = *(a1 + 44);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v12 = *(a1 + 26);
  *a2 = 48;
  a2[1] = v12;
  a2 += 2;
  v3 = *(a1 + 44);
  if ((v3 & 0x40) == 0)
  {
LABEL_8:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v13 = *(a1 + 27);
  *a2 = 56;
  a2[1] = v13;
  a2 += 2;
  v3 = *(a1 + 44);
  if ((v3 & 0x80) == 0)
  {
LABEL_9:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v15 = *(a1 + 36);
    *a2 = 77;
    *(a2 + 1) = v15;
    a2 += 5;
    v16 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v16;
    if (!v16)
    {
      return a2;
    }

    goto LABEL_21;
  }

LABEL_19:
  v14 = *(a1 + 32);
  *a2 = 69;
  *(a2 + 1) = v14;
  a2 += 5;
  if ((*(a1 + 44) & 0x100) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_21:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_100144C5C(_DWORD *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[11];
  if (v3)
  {
    v4 = 2 * (v3 & 1) + (v3 & 2);
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

    v5 = ((v3 >> 5) & 2) + ((v3 >> 4) & 2) + v4;
    if ((v3 & 0x80) != 0)
    {
      v5 += 5;
    }

    if ((v3 & 0x100) != 0)
    {
      v6 = v5 + 5;
    }

    else
    {
      v6 = v5;
    }

    v7 = (a1 + 2);
    v8 = *(a1 + 1);
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if ((v3 & 0x100) != 0)
    {
      v6 = 5;
    }

    else
    {
      v6 = 0;
    }

    v7 = (a1 + 2);
    v8 = *(a1 + 1);
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  if (*v8 == v8[1])
  {
LABEL_14:
    a1[10] = v6;
    return v6;
  }

  v10 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v7, a2) + v6;
  a1[10] = v10;
  return v10;
}

uint64_t sub_100144D40(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1001440D4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100144E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100144E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100144E48(uint64_t result, uint64_t a2)
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

uint64_t sub_100144EDC()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CE00;
}

void sub_100144F6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100144F80(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
  }

  if (*(a2 + 48))
  {
    v7 = *(a2 + 16);
    a1[12] |= 1u;
    a1[4] = v7;
    v4 = *(a2 + 48);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else if ((*(a2 + 48) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 20);
  a1[12] |= 2u;
  a1[5] = v8;
  v4 = *(a2 + 48);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = *(a2 + 24);
  a1[12] |= 4u;
  a1[6] = v9;
  v4 = *(a2 + 48);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = *(a2 + 28);
  a1[12] |= 8u;
  a1[7] = v10;
  v4 = *(a2 + 48);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    v12 = *(a2 + 36);
    a1[12] |= 0x20u;
    a1[9] = v12;
    if ((*(a2 + 48) & 0x40) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
    }

    goto LABEL_11;
  }

LABEL_17:
  v11 = *(a2 + 32);
  a1[12] |= 0x10u;
  a1[8] = v11;
  v4 = *(a2 + 48);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((v4 & 0x40) != 0)
  {
LABEL_11:
    v5 = *(a2 + 40);
    a1[12] |= 0x40u;
    a1[10] = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_1001450E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001450FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100145110(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043E170;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  sub_100144F80(a1, a2);
  return a1;
}

void sub_100145180(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

void sub_1001451B0(uint64_t a1)
{
  *a1 = off_10043E170;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100145204(uint64_t a1)
{
  *a1 = off_10043E170;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100145304(uint64_t a1)
{
  if (*(a1 + 48))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 40) = 0;
    *(a1 + 32) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 10) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10014532C(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
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
            if (v9 != 5)
            {
              goto LABEL_36;
            }

            v25 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
            {
              return 0;
            }

            a1[4] = v25;
            a1[12] |= 1u;
            v12 = *(this + 1);
            if (v12 < *(this + 2) && *v12 == 21)
            {
              *(this + 1) = v12 + 1;
LABEL_39:
              v25 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
              {
                return 0;
              }

              a1[5] = v25;
              a1[12] |= 2u;
              v15 = *(this + 1);
              if (v15 < *(this + 2) && *v15 == 29)
              {
                *(this + 1) = v15 + 1;
                v25 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_43;
              }
            }
          }

          else
          {
            if (v8 == 2)
            {
              if (v9 != 5)
              {
                goto LABEL_36;
              }

              goto LABEL_39;
            }

            if (v8 != 3 || v9 != 5)
            {
              goto LABEL_36;
            }

            v25 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
            {
              return 0;
            }

LABEL_43:
            a1[6] = v25;
            a1[12] |= 4u;
            v16 = *(this + 1);
            v10 = *(this + 2);
            if (v16 < v10 && *v16 == 32)
            {
              v13 = v16 + 1;
              *(this + 1) = v13;
              if (v13 < v10)
              {
                goto LABEL_46;
              }

LABEL_49:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 7);
              if (!result)
              {
                return result;
              }

              v18 = *(this + 1);
              v10 = *(this + 2);
              a1[12] |= 8u;
              if (v18 < v10)
              {
                goto LABEL_51;
              }
            }
          }
        }

        if (TagFallback >> 3 > 5)
        {
          break;
        }

        if (v8 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_36;
          }

          v13 = *(this + 1);
          v10 = *(this + 2);
          if (v13 >= v10)
          {
            goto LABEL_49;
          }

LABEL_46:
          v17 = *v13;
          if ((v17 & 0x80000000) != 0)
          {
            goto LABEL_49;
          }

          a1[7] = v17;
          v18 = v13 + 1;
          *(this + 1) = v18;
          a1[12] |= 8u;
          if (v18 < v10)
          {
LABEL_51:
            if (*v18 == 40)
            {
              v11 = v18 + 1;
              *(this + 1) = v11;
              if (v11 < v10)
              {
                goto LABEL_53;
              }

LABEL_56:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 8);
              if (!result)
              {
                return result;
              }

              v21 = *(this + 1);
              v10 = *(this + 2);
              a1[12] |= 0x10u;
              if (v21 < v10)
              {
                goto LABEL_58;
              }
            }
          }
        }

        else
        {
          if (v8 != 5 || (TagFallback & 7) != 0)
          {
            goto LABEL_36;
          }

          v11 = *(this + 1);
          v10 = *(this + 2);
          if (v11 >= v10)
          {
            goto LABEL_56;
          }

LABEL_53:
          v20 = *v11;
          if ((v20 & 0x80000000) != 0)
          {
            goto LABEL_56;
          }

          a1[8] = v20;
          v21 = v11 + 1;
          *(this + 1) = v21;
          a1[12] |= 0x10u;
          if (v21 < v10)
          {
LABEL_58:
            if (*v21 == 48)
            {
              v14 = v21 + 1;
              *(this + 1) = v14;
              if (v14 < v10)
              {
                goto LABEL_60;
              }

LABEL_63:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 9);
              if (!result)
              {
                return result;
              }

              v23 = *(this + 1);
              v24 = *(this + 2);
              a1[12] |= 0x20u;
              if (v23 < v24)
              {
                goto LABEL_65;
              }
            }
          }
        }
      }

      if (v8 != 6)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_36;
      }

      v14 = *(this + 1);
      v10 = *(this + 2);
      if (v14 >= v10)
      {
        goto LABEL_63;
      }

LABEL_60:
      v22 = *v14;
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      a1[9] = v22;
      v23 = v14 + 1;
      *(this + 1) = v23;
      a1[12] |= 0x20u;
      if (v23 < v10)
      {
LABEL_65:
        if (*v23 == 61)
        {
          *(this + 1) = v23 + 1;
          v25 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
          {
            return 0;
          }

LABEL_67:
          a1[10] = v25;
          a1[12] |= 0x40u;
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

    if (v8 == 7 && v9 == 5)
    {
      v25 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_67;
    }

LABEL_36:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_100145738(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 16), a3);
    v6 = *(v5 + 48);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 20), a3);
  v6 = *(v5 + 48);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 48);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 48);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 36), a2, a4);
  if ((*(v5 + 48) & 0x40) == 0)
  {
LABEL_8:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 40), a3);
  v10 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_17:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

uint64_t sub_100145860(wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *(this + 12);
  if (v4)
  {
    v8 = *(this + 4);
    *a2 = 13;
    *(a2 + 1) = v8;
    a2 += 5;
    v4 = *(this + 12);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(this + 5);
  *a2 = 21;
  *(a2 + 1) = v9;
  a2 += 5;
  v4 = *(this + 12);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_13:
    v11 = *(this + 7);
    *a2 = 32;
    if (v11 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, a2 + 1, a3);
      if ((*(this + 48) & 0x10) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *(a2 + 1) = v11;
      a2 += 2;
      if ((*(this + 48) & 0x10) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_6:
    if ((*(this + 48) & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_21:
    v13 = *(this + 9);
    *a2 = 48;
    if (v13 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, a2 + 1, a3);
      if ((*(this + 48) & 0x40) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *(a2 + 1) = v13;
      a2 += 2;
      if ((*(this + 48) & 0x40) != 0)
      {
        goto LABEL_25;
      }
    }

LABEL_8:
    v7 = *(this + 1);
    v6 = (this + 8);
    v5 = v7;
    if (!v7)
    {
      return a2;
    }

    goto LABEL_26;
  }

LABEL_12:
  v10 = *(this + 6);
  *a2 = 29;
  *(a2 + 1) = v10;
  a2 += 5;
  if ((*(this + 12) & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((*(this + 48) & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_17:
  v12 = *(this + 8);
  *a2 = 40;
  if (v12 > 0x7F)
  {
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, a2 + 1, a3);
    if ((*(this + 48) & 0x20) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(a2 + 1) = v12;
    a2 += 2;
    if ((*(this + 48) & 0x20) != 0)
    {
      goto LABEL_21;
    }
  }

LABEL_7:
  if ((*(this + 48) & 0x40) == 0)
  {
    goto LABEL_8;
  }

LABEL_25:
  v14 = *(this + 10);
  *a2 = 61;
  *(a2 + 1) = v14;
  a2 += 5;
  v15 = *(this + 1);
  v6 = (this + 8);
  v5 = v15;
  if (!v15)
  {
    return a2;
  }

LABEL_26:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v6, a2, a3);
}

uint64_t sub_100145A78(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 48);
  if (*(a1 + 48))
  {
    v4 = (v3 << 31 >> 31) & 5;
    if ((v3 & 2) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 4) != 0)
    {
      LODWORD(v5) = v4 + 5;
    }

    else
    {
      LODWORD(v5) = v4;
    }

    if ((v3 & 8) == 0)
    {
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_9;
      }

LABEL_17:
      v11 = *(a1 + 32);
      if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
        v3 = *(a1 + 48);
        LODWORD(v5) = v12 + 1 + v5;
        if ((v3 & 0x20) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        LODWORD(v5) = v5 + 2;
        if ((v3 & 0x20) == 0)
        {
          goto LABEL_25;
        }
      }

LABEL_21:
      v13 = *(a1 + 36);
      if (v13 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
        v3 = *(a1 + 48);
      }

      else
      {
        v14 = 2;
      }

      LODWORD(v5) = v14 + v5;
LABEL_25:
      if ((v3 & 0x40) != 0)
      {
        v5 = (v5 + 5);
      }

      else
      {
        v5 = v5;
      }

      v6 = (a1 + 8);
      v7 = *(a1 + 8);
      if (!v7)
      {
        goto LABEL_12;
      }

      goto LABEL_29;
    }

    v9 = *(a1 + 28);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
      v3 = *(a1 + 48);
      LODWORD(v5) = v10 + 1 + v5;
      if ((v3 & 0x10) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      LODWORD(v5) = v5 + 2;
      if ((v3 & 0x10) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_9:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v5 = 0;
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (!v7)
  {
LABEL_12:
    *(a1 + 44) = v5;
    return v5;
  }

LABEL_29:
  if (*v7 == v7[1])
  {
    goto LABEL_12;
  }

  v15 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 44) = v15;
  return v15;
}

uint64_t sub_100145BB0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100144F80(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100145C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100145CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100145CB8(uint64_t result, uint64_t a2)
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

uint64_t sub_100145D4C()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CE10;
}

void sub_100145DDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100145DF0(_DWORD *a1, uint64_t a2)
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

void sub_100145ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100145EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100145F00(uint64_t a1)
{
  *a1 = off_10043E220;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100145F54(uint64_t a1)
{
  *a1 = off_10043E220;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100146050(uint64_t a1)
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

uint64_t sub_100146074(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

uint64_t sub_100146248(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t sub_100146300(_DWORD *a1, uint64_t a2, unsigned __int8 *a3)
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

uint64_t sub_1001463D0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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

uint64_t sub_100146444(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100145DF0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100146524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100146538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014654C(uint64_t result, uint64_t a2)
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

uint64_t sub_1001465E0()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CE20;
}

void sub_100146670(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100146684(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 44);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
  }

  if (*(a2 + 44))
  {
    v7 = *(a2 + 16);
    a1[11] |= 1u;
    a1[4] = v7;
    v4 = *(a2 + 44);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a2 + 44) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 20);
  a1[11] |= 2u;
  a1[5] = v8;
  v4 = *(a2 + 44);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = *(a2 + 24);
  a1[11] |= 4u;
  a1[6] = v9;
  v4 = *(a2 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v11 = *(a2 + 32);
    a1[11] |= 0x10u;
    a1[8] = v11;
    if ((*(a2 + 44) & 0x20) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
    }

    goto LABEL_10;
  }

LABEL_15:
  v10 = *(a2 + 28);
  a1[11] |= 8u;
  a1[7] = v10;
  v4 = *(a2 + 44);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v4 & 0x20) != 0)
  {
LABEL_10:
    v5 = *(a2 + 36);
    a1[11] |= 0x20u;
    a1[9] = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_1001467CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001467E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001467F4(uint64_t a1)
{
  *a1 = off_10043E2D0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100146848(uint64_t a1)
{
  *a1 = off_10043E2D0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100146944(uint64_t a1)
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

uint64_t sub_100146968(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
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
            if (v9 != 5)
            {
              goto LABEL_39;
            }

            v23 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v23) & 1) == 0)
            {
              return 0;
            }

            a1[4] = v23;
            a1[11] |= 1u;
            v12 = *(this + 1);
            if (v12 < *(this + 2) && *v12 == 21)
            {
              *(this + 1) = v12 + 1;
              goto LABEL_28;
            }
          }

          else if (v8 == 2)
          {
            if (v9 != 5)
            {
              goto LABEL_39;
            }

LABEL_28:
            v23 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v23) & 1) == 0)
            {
              return 0;
            }

            a1[9] = v23;
            a1[11] |= 0x20u;
            v13 = *(this + 1);
            if (v13 < *(this + 2) && *v13 == 29)
            {
              *(this + 1) = v13 + 1;
              v23 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v23) & 1) == 0)
              {
                return 0;
              }

              goto LABEL_32;
            }
          }

          else
          {
            if (v8 != 3 || v9 != 5)
            {
              goto LABEL_39;
            }

            v23 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v23) & 1) == 0)
            {
              return 0;
            }

LABEL_32:
            a1[5] = v23;
            a1[11] |= 2u;
            v14 = *(this + 1);
            if (v14 < *(this + 2) && *v14 == 37)
            {
              *(this + 1) = v14 + 1;
              v23 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v23) & 1) == 0)
              {
                return 0;
              }

              goto LABEL_35;
            }
          }
        }

        if (v8 != 4)
        {
          break;
        }

        if (v9 != 5)
        {
          goto LABEL_39;
        }

        v23 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v23) & 1) == 0)
        {
          return 0;
        }

LABEL_35:
        a1[6] = v23;
        a1[11] |= 4u;
        v16 = *(this + 1);
        v15 = *(this + 2);
        if (v16 < v15 && *v16 == 40)
        {
          v17 = v16 + 1;
          *(this + 1) = v17;
LABEL_43:
          v23 = 0;
          if (v17 >= v15 || (v18 = *v17, (v18 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23);
            if (!result)
            {
              return result;
            }

            v18 = v23;
            if (v23 <= 3)
            {
LABEL_46:
              a1[11] |= 8u;
              a1[7] = v18;
              goto LABEL_50;
            }
          }

          else
          {
            *(this + 1) = v17 + 1;
            if (v18 <= 3)
            {
              goto LABEL_46;
            }
          }

          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 2), 5, v18);
LABEL_50:
          v21 = *(this + 1);
          v20 = *(this + 2);
          if (v21 < v20 && *v21 == 48)
          {
            v11 = v21 + 1;
            *(this + 1) = v11;
            v23 = 0;
            if (v11 >= v20)
            {
              goto LABEL_57;
            }

LABEL_53:
            v22 = *v11;
            if ((v22 & 0x80000000) != 0)
            {
              goto LABEL_57;
            }

            *(this + 1) = v11 + 1;
            if (v22 > 1)
            {
              goto LABEL_59;
            }

LABEL_55:
            a1[11] |= 0x10u;
            a1[8] = v22;
            if (*(this + 1) == *(this + 2))
            {
LABEL_60:
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

      if (v8 == 5)
      {
        break;
      }

      if (v8 != 6 || (TagFallback & 7) != 0)
      {
        goto LABEL_39;
      }

      v11 = *(this + 1);
      v10 = *(this + 2);
      v23 = 0;
      if (v11 < v10)
      {
        goto LABEL_53;
      }

LABEL_57:
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23);
      if (!result)
      {
        return result;
      }

      v22 = v23;
      if (v23 <= 1)
      {
        goto LABEL_55;
      }

LABEL_59:
      wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 2), 6, v22);
      if (*(this + 1) == *(this + 2))
      {
        goto LABEL_60;
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v17 = *(this + 1);
      v15 = *(this + 2);
      goto LABEL_43;
    }

LABEL_39:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_100146D10(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 16), a3);
    v6 = *(v5 + 44);
    if ((v6 & 0x20) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 36), a3);
  v6 = *(v5 + 44);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 24), a3);
  v6 = *(v5 + 44);
  if ((v6 & 8) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 28), a2, a4);
  if ((*(v5 + 44) & 0x10) == 0)
  {
LABEL_7:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 32), a2, a4);
  v10 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_15:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

uint64_t sub_100146E1C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *(this + 11);
  if (v4)
  {
    v8 = *(this + 4);
    *a2 = 13;
    *(a2 + 1) = v8;
    a2 += 5;
    v4 = *(this + 11);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(this + 9);
  *a2 = 21;
  *(a2 + 1) = v9;
  a2 += 5;
  v4 = *(this + 11);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v10 = *(this + 5);
  *a2 = 29;
  *(a2 + 1) = v10;
  a2 += 5;
  v4 = *(this + 11);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    v12 = *(this + 7);
    *a2 = 40;
    if ((v12 & 0x80000000) != 0)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v12, a2 + 1, a3);
      if ((*(this + 44) & 0x10) != 0)
      {
        goto LABEL_20;
      }
    }

    else if (v12 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, a2 + 1, a3);
      if ((*(this + 44) & 0x10) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *(a2 + 1) = v12;
      a2 += 2;
      if ((*(this + 44) & 0x10) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_7:
    v7 = *(this + 1);
    v6 = (this + 8);
    v5 = v7;
    if (!v7)
    {
      return a2;
    }

    goto LABEL_27;
  }

LABEL_12:
  v11 = *(this + 6);
  *a2 = 37;
  *(a2 + 1) = v11;
  a2 += 5;
  if ((*(this + 11) & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((*(this + 44) & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_20:
  v13 = *(this + 8);
  *a2 = 48;
  if ((v13 & 0x80000000) != 0)
  {
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v13, a2 + 1, a3);
    v15 = *(this + 1);
    v6 = (this + 8);
    v5 = v15;
    if (!v15)
    {
      return a2;
    }
  }

  else if (v13 > 0x7F)
  {
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, a2 + 1, a3);
    v16 = *(this + 1);
    v6 = (this + 8);
    v5 = v16;
    if (!v16)
    {
      return a2;
    }
  }

  else
  {
    *(a2 + 1) = v13;
    a2 += 2;
    v14 = *(this + 1);
    v6 = (this + 8);
    v5 = v14;
    if (!v14)
    {
      return a2;
    }
  }

LABEL_27:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v6, a2, a3);
}

uint64_t sub_100147020(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 44);
  if (*(a1 + 44))
  {
    v4 = (v3 << 31 >> 31) & 5;
    if ((v3 & 2) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 4) != 0)
    {
      LODWORD(v5) = v4 + 5;
    }

    else
    {
      LODWORD(v5) = v4;
    }

    if ((v3 & 8) != 0)
    {
      v6 = *(a1 + 28);
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

      LODWORD(v5) = v7 + v5;
    }

    if ((v3 & 0x10) != 0)
    {
      v11 = *(a1 + 32);
      if ((v11 & 0x80000000) != 0)
      {
        v12 = 11;
      }

      else if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
        v3 = *(a1 + 44);
      }

      else
      {
        v12 = 2;
      }

      LODWORD(v5) = v12 + v5;
    }

    if ((v3 & 0x20) != 0)
    {
      v5 = (v5 + 5);
    }

    else
    {
      v5 = v5;
    }

    v8 = (a1 + 8);
    v9 = *(a1 + 8);
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0;
    v8 = (a1 + 8);
    v9 = *(a1 + 8);
    if (!v9)
    {
LABEL_12:
      *(a1 + 40) = v5;
      return v5;
    }
  }

  if (*v9 == v9[1])
  {
    goto LABEL_12;
  }

  v13 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v8, a2) + v5;
  *(a1 + 40) = v13;
  return v13;
}

uint64_t sub_10014712C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100146684(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10014720C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100147220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100147234(uint64_t result, uint64_t a2)
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

uint64_t sub_1001472C8()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CE30;
}

void sub_100147358(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014736C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
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
    v5 = *(a2 + 16);
    *(a1 + 44) |= 1u;
    *(a1 + 16) = v5;
    v4 = *(a2 + 44);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_7;
  }

  v6 = *(a2 + 20);
  *(a1 + 44) |= 2u;
  *(a1 + 20) = v6;
  v4 = *(a2 + 44);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v8 = *(a2 + 28);
    *(a1 + 44) |= 8u;
    *(a1 + 28) = v8;
    if ((*(a2 + 44) & 0x10) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_15;
  }

LABEL_13:
  v7 = *(a2 + 24);
  *(a1 + 44) |= 4u;
  *(a1 + 24) = v7;
  v4 = *(a2 + 44);
  if ((v4 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((v4 & 0x10) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

LABEL_15:
  *(a1 + 44) |= 0x10u;
  v9 = *(a1 + 32);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 32);
  if (!v10)
  {
    v10 = *(qword_10045E218 + 32);
  }

  sub_10014814C(v9, v10);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10014752C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100147540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100147554(void *a1)
{
  *a1 = off_10043E380;
  if (qword_10045E218 != a1)
  {
    v2 = a1[4];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1001475E8(void *a1)
{
  *a1 = off_10043E380;
  if (qword_10045E218 != a1)
  {
    v2 = a1[4];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100147724(uint64_t a1)
{
  v2 = *(a1 + 44);
  if (v2)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if ((v2 & 0x10) != 0)
    {
      v3 = *(a1 + 32);
      if (v3)
      {
        if (*(v3 + 28))
        {
          *(v3 + 16) = 0;
        }

        v5 = *(v3 + 8);
        v4 = (v3 + 8);
        *(v4 + 5) = 0;
        if (v5)
        {
          v6 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
          a1 = v6;
          v1 = vars8;
        }
      }
    }
  }

  v8 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 9) = 0;
  if (v8)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001477A0(uint64_t a1)
{
  if (*(a1 + 28))
  {
    *(a1 + 16) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 5) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1001477C0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
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

          if (v8 != 1)
          {
            if (v8 != 2 || v9 != 5)
            {
              goto LABEL_25;
            }

            v26 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v26) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_32;
          }

          if (v9 != 5)
          {
            goto LABEL_25;
          }

          v26 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v26) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 16) = v26;
          *(a1 + 44) |= 1u;
          v11 = *(this + 1);
          if (v11 < *(this + 2) && *v11 == 21)
          {
            *(this + 1) = v11 + 1;
            v26 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v26) & 1) == 0)
            {
              return 0;
            }

LABEL_32:
            *(a1 + 20) = v26;
            *(a1 + 44) |= 2u;
            v12 = *(this + 1);
            if (v12 < *(this + 2) && *v12 == 29)
            {
              *(this + 1) = v12 + 1;
              v26 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v26) & 1) == 0)
              {
                return 0;
              }

LABEL_35:
              *(a1 + 24) = v26;
              *(a1 + 44) |= 4u;
              v13 = *(this + 1);
              if (v13 < *(this + 2) && *v13 == 37)
              {
                *(this + 1) = v13 + 1;
                v26 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v26) & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_38;
              }
            }
          }
        }

        if (v8 == 3)
        {
          if (v9 != 5)
          {
            goto LABEL_25;
          }

          v26 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v26) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_35;
        }

        if (v8 == 4)
        {
          break;
        }

        if (v8 == 5 && v9 == 2)
        {
          *(a1 + 44) |= 0x10u;
          v10 = *(a1 + 32);
          if (!v10)
          {
            goto LABEL_41;
          }

          goto LABEL_42;
        }

LABEL_25:
        if (v9 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
        {
          return 0;
        }
      }

      if (v9 != 5)
      {
        goto LABEL_25;
      }

      v26 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v26) & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      *(a1 + 28) = v26;
      v14 = *(a1 + 44) | 8;
      *(a1 + 44) = v14;
      v15 = *(this + 1);
    }

    while (v15 >= *(this + 2) || *v15 != 42);
    *(this + 1) = v15 + 1;
    *(a1 + 44) = v14 | 0x10;
    v10 = *(a1 + 32);
    if (!v10)
    {
LABEL_41:
      operator new();
    }

LABEL_42:
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
    if (!sub_1001484B8(v10, this, v20, v21) || *(this + 36) != 1)
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

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_100147BA4(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 16), a3);
    v6 = *(v5 + 44);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 20), a3);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 44);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 28), a3);
  if ((*(v5 + 44) & 0x10) == 0)
  {
LABEL_6:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_12:
  v10 = *(v5 + 32);
  if (v10)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, v10, a2, a4);
    v11 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v11;
    if (!v11)
    {
      return result;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, *(qword_10045E218 + 32), a2, a4);
    v12 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v12;
    if (!v12)
    {
      return result;
    }
  }

LABEL_16:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

uint64_t sub_100147CBC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 44);
  if (v3)
  {
    v4 = *(a1 + 16);
    *a2 = 13;
    *(a2 + 1) = v4;
    a2 += 5;
    v3 = *(a1 + 44);
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

  v5 = *(a1 + 20);
  *a2 = 21;
  *(a2 + 1) = v5;
  a2 += 5;
  v3 = *(a1 + 44);
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
  v6 = *(a1 + 24);
  *a2 = 29;
  *(a2 + 1) = v6;
  a2 += 5;
  v3 = *(a1 + 44);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_11;
  }

LABEL_10:
  v7 = *(a1 + 28);
  *a2 = 37;
  *(a2 + 1) = v7;
  a2 += 5;
  if ((*(a1 + 44) & 0x10) == 0)
  {
    goto LABEL_24;
  }

LABEL_11:
  v8 = *(a1 + 32);
  if (v8)
  {
    *a2 = 42;
    v9 = a2 + 1;
    v10 = v8[6];
    if (v10 <= 0x7F)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = *(qword_10045E218 + 32);
    *a2 = 42;
    v9 = a2 + 1;
    v10 = v8[6];
    if (v10 <= 0x7F)
    {
LABEL_13:
      *(a2 + 1) = v10;
      a2 += 2;
      v11 = v8[7];
      if ((v11 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  v12 = a1;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v9, a3);
  a1 = v12;
  v11 = v8[7];
  if (v11)
  {
LABEL_17:
    v13 = v8[4];
    *a2 = 13;
    *(a2 + 1) = v13;
    a2 += 5;
    v11 = v8[7];
  }

LABEL_18:
  if ((v11 & 2) != 0)
  {
    v17 = v8[5];
    *a2 = 21;
    *(a2 + 1) = v17;
    a2 += 5;
    v18 = *(v8 + 1);
    v15 = (v8 + 2);
    v14 = v18;
    if (!v18)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v16 = *(v8 + 1);
    v15 = (v8 + 2);
    v14 = v16;
    if (!v16)
    {
      goto LABEL_24;
    }
  }

  if (*v14 != v14[1])
  {
    v19 = a1;
    a2 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v15, a2, a3);
    a1 = v19;
  }

LABEL_24:
  v22 = *(a1 + 8);
  v20 = (a1 + 8);
  v21 = v22;
  if (!v22 || *v21 == v21[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v20, a2, a3);
}

uint64_t sub_100147F04(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 44);
  if (*(a1 + 44))
  {
    v4 = (v3 << 31 >> 31) & 5;
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

    if ((v3 & 0x10) != 0)
    {
      v6 = *(a1 + 32);
      if (!v6)
      {
        v6 = *(qword_10045E218 + 32);
      }

      v7 = *(v6 + 28);
      v8 = (v7 << 31 >> 31) & 5;
      if ((v7 & 2) != 0)
      {
        v8 += 5;
      }

      if (*(v6 + 28))
      {
        LODWORD(v9) = v8;
      }

      else
      {
        LODWORD(v9) = 0;
      }

      v10 = *(v6 + 8);
      if (!v10 || *v10 == v10[1])
      {
        *(v6 + 24) = v9;
        v11 = 1;
      }

      else
      {
        v9 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v6 + 8), a2) + v9);
        *(v6 + 24) = v9;
        if (v9 >= 0x80)
        {
          v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
        }

        else
        {
          v11 = 1;
        }
      }

      v5 = (v5 + v9 + v11 + 1);
      v12 = (a1 + 8);
      v13 = *(a1 + 8);
      if (!v13)
      {
        goto LABEL_23;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = (a1 + 8);
  v13 = *(a1 + 8);
  if (!v13)
  {
LABEL_23:
    *(a1 + 40) = v5;
    return v5;
  }

LABEL_27:
  if (*v13 == v13[1])
  {
    goto LABEL_23;
  }

  v15 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v12, a2) + v5;
  *(a1 + 40) = v15;
  return v15;
}

uint64_t sub_100148044(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10014736C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100148124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100148138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014814C(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 16);
      a1[7] |= 1u;
      a1[4] = v5;
      v4 = *(a2 + 28);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 20);
      a1[7] |= 2u;
      a1[5] = v6;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_10014820C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100148220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100148234(uint64_t result, uint64_t a2)
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

uint64_t sub_1001482C8()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CE40;
}

void sub_100148358(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_10014836C(uint64_t a1)
{
  *a1 = off_10043E430;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1001483C0(uint64_t a1)
{
  *a1 = off_10043E430;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1001484B8(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        if (v8 != 5)
        {
          goto LABEL_14;
        }

LABEL_17:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v11) & 1) == 0)
        {
          return 0;
        }

        a1[5] = v11;
        a1[7] |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v8 != 5)
      {
        break;
      }

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v12) & 1) == 0)
      {
        return 0;
      }

      a1[4] = v12;
      a1[7] |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 21)
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

uint64_t sub_100148630(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 28);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 16), a3);
    if ((*(v4 + 28) & 2) == 0)
    {
LABEL_3:
      v8 = *(v4 + 8);
      v7 = (v4 + 8);
      v6 = v8;
      if (!v8)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v4 + 20), a3);
  v9 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_7:
  if (*v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return result;
}

uint64_t sub_1001486CC(_DWORD *a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a1[7];
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = a1[5];
    *a2 = 21;
    *(a2 + 1) = v8;
    a2 += 5;
    v9 = *(a1 + 1);
    v4 = (a1 + 2);
    v5 = v9;
    if (!v9)
    {
      return a2;
    }

    goto LABEL_7;
  }

  v7 = a1[4];
  *a2 = 13;
  *(a2 + 1) = v7;
  a2 += 5;
  if ((a1[7] & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = *(a1 + 1);
  v4 = (a1 + 2);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_7:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_100148764(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 28);
  v4 = (v3 << 31 >> 31) & 5;
  if ((v3 & 2) != 0)
  {
    v4 += 5;
  }

  if (*(a1 + 28))
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

  *(a1 + 24) = v5;
  return v5;
}

uint64_t sub_1001487CC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10014814C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001488AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001488C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001488D4(uint64_t result, uint64_t a2)
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

uint64_t sub_100148968()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CE50;
}

void sub_1001489F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100148A0C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 44);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 44))
  {
    v7 = *(a2 + 16);
    *(a1 + 44) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 44);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a2 + 44) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 20);
  *(a1 + 44) |= 2u;
  *(a1 + 20) = v8;
  v4 = *(a2 + 44);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = *(a2 + 24);
  *(a1 + 44) |= 4u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v11 = *(a2 + 32);
    *(a1 + 44) |= 0x10u;
    *(a1 + 32) = v11;
    if ((*(a2 + 44) & 0x20) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_10;
  }

LABEL_15:
  v10 = *(a2 + 28);
  *(a1 + 44) |= 8u;
  *(a1 + 28) = v10;
  v4 = *(a2 + 44);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v4 & 0x20) != 0)
  {
LABEL_10:
    v5 = *(a2 + 36);
    *(a1 + 44) |= 0x20u;
    *(a1 + 36) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100148B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100148B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100148B7C(uint64_t a1)
{
  *a1 = off_10043E4E0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100148BD0(uint64_t a1)
{
  *a1 = off_10043E4E0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100148CD0(uint64_t a1)
{
  if (*(a1 + 44))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 29) = 0;
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

uint64_t sub_100148CF4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 > 3)
        {
          break;
        }

        if (v8 == 1)
        {
          if (v9 != 5)
          {
            goto LABEL_39;
          }

          v20 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 16) = v20;
          *(a1 + 44) |= 1u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 21)
          {
            *(this + 1) = v12 + 1;
            goto LABEL_28;
          }
        }

        else if (v8 == 2)
        {
          if (v9 != 5)
          {
            goto LABEL_39;
          }

LABEL_28:
          v20 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 20) = v20;
          *(a1 + 44) |= 2u;
          v13 = *(this + 1);
          if (v13 < *(this + 2) && *v13 == 29)
          {
            *(this + 1) = v13 + 1;
            v20 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_32;
          }
        }

        else
        {
          if (v8 != 3 || v9 != 5)
          {
            goto LABEL_39;
          }

          v20 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
          {
            return 0;
          }

LABEL_32:
          *(a1 + 24) = v20;
          *(a1 + 44) |= 4u;
          v14 = *(this + 1);
          if (v14 < *(this + 2) && *v14 == 37)
          {
            *(this + 1) = v14 + 1;
            v20 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_35;
          }
        }
      }

      if (v8 != 4)
      {
        break;
      }

      if (v9 != 5)
      {
        goto LABEL_39;
      }

      v20 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
      {
        return 0;
      }

LABEL_35:
      *(a1 + 28) = v20;
      *(a1 + 44) |= 8u;
      v15 = *(this + 1);
      if (v15 < *(this + 2) && *v15 == 45)
      {
        *(this + 1) = v15 + 1;
LABEL_42:
        v20 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = v20;
        *(a1 + 44) |= 0x10u;
        v16 = *(this + 1);
        v10 = *(this + 2);
        if (v16 < v10 && *v16 == 48)
        {
          v11 = v16 + 1;
          *(this + 1) = v11;
          v20 = 0;
          if (v11 >= v10)
          {
            goto LABEL_48;
          }

LABEL_46:
          v17 = *v11;
          if ((v17 & 0x80000000) != 0)
          {
LABEL_48:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20);
            if (!result)
            {
              return result;
            }

            v17 = v20;
            v18 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_50;
          }

          v18 = v11 + 1;
          *(this + 1) = v18;
LABEL_50:
          *(a1 + 36) = v17 != 0;
          *(a1 + 44) |= 0x20u;
          if (v18 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }
    }

    if (v8 == 5)
    {
      if (v9 == 5)
      {
        goto LABEL_42;
      }
    }

    else if (v8 == 6 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      v20 = 0;
      if (v11 >= v10)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }

LABEL_39:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_10014903C(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 16), a3);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 20), a3);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 44);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 28), a3);
  v6 = *(v5 + 44);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 32), a3);
  if ((*(v5 + 44) & 0x20) == 0)
  {
LABEL_7:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 36), a2, a4);
  v10 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_15:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

uint64_t sub_100149148(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 44);
  if (v3)
  {
    v7 = *(a1 + 16);
    *a2 = 13;
    *(a2 + 1) = v7;
    a2 += 5;
    v3 = *(a1 + 44);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 20);
  *a2 = 21;
  *(a2 + 1) = v8;
  a2 += 5;
  v3 = *(a1 + 44);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v9 = *(a1 + 24);
  *a2 = 29;
  *(a2 + 1) = v9;
  a2 += 5;
  v3 = *(a1 + 44);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v10 = *(a1 + 28);
  *a2 = 37;
  *(a2 + 1) = v10;
  a2 += 5;
  v3 = *(a1 + 44);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v12 = *(a1 + 36);
    *a2 = 48;
    *(a2 + 1) = v12;
    a2 += 2;
    v13 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v13;
    if (!v13)
    {
      return a2;
    }

    goto LABEL_15;
  }

LABEL_13:
  v11 = *(a1 + 32);
  *a2 = 45;
  *(a2 + 1) = v11;
  a2 += 5;
  if ((*(a1 + 44) & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_15:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_1001492A8(_DWORD *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[11];
  if (v3)
  {
    v4 = ((v3 << 31) >> 31) & 5;
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

    v5 = v4 + ((v3 >> 4) & 2);
    v6 = (a1 + 2);
    v7 = *(a1 + 1);
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = 0;
    v6 = (a1 + 2);
    v7 = *(a1 + 1);
    if (!v7)
    {
LABEL_11:
      a1[10] = v5;
      return v5;
    }
  }

  if (*v7 == v7[1])
  {
    goto LABEL_11;
  }

  v9 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  a1[10] = v9;
  return v9;
}

uint64_t sub_100149368(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100148A0C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100149448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10014945C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100149470(uint64_t result, uint64_t a2)
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

uint64_t sub_100149504()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CE60;
}

void sub_100149594(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001495A8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 52);
    v7 = v5 + v4;
    v8 = *(a1 + 40);
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

      *(a1 + 52) = v9;
      operator new[]();
    }

    memcpy((*(a1 + 40) + 4 * v5), *(a2 + 40), 4 * *(a2 + 48));
    *(a1 + 48) += *(a2 + 48);
  }

  v10 = *(a2 + 76);
  if (!v10)
  {
    goto LABEL_20;
  }

  if (v10)
  {
    v14 = *(a2 + 16);
    *(a1 + 76) |= 1u;
    *(a1 + 16) = v14;
    v10 = *(a2 + 76);
    if ((v10 & 2) == 0)
    {
LABEL_14:
      if ((v10 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_28;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_14;
  }

  v15 = *(a2 + 20);
  *(a1 + 76) |= 2u;
  *(a1 + 20) = v15;
  v10 = *(a2 + 76);
  if ((v10 & 4) == 0)
  {
LABEL_15:
    if ((v10 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_28:
  v16 = *(a2 + 24);
  *(a1 + 76) |= 4u;
  *(a1 + 24) = v16;
  v10 = *(a2 + 76);
  if ((v10 & 8) == 0)
  {
LABEL_16:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_17;
    }

LABEL_30:
    v18 = *(a2 + 32);
    *(a1 + 76) |= 0x10u;
    *(a1 + 32) = v18;
    v10 = *(a2 + 76);
    if ((v10 & 0x20) == 0)
    {
LABEL_18:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    goto LABEL_31;
  }

LABEL_29:
  v17 = *(a2 + 28);
  *(a1 + 76) |= 8u;
  *(a1 + 28) = v17;
  v10 = *(a2 + 76);
  if ((v10 & 0x10) != 0)
  {
    goto LABEL_30;
  }

LABEL_17:
  if ((v10 & 0x20) == 0)
  {
    goto LABEL_18;
  }

LABEL_31:
  v19 = *(a2 + 36);
  *(a1 + 76) |= 0x20u;
  *(a1 + 36) = v19;
  v10 = *(a2 + 76);
  if ((v10 & 0x40) != 0)
  {
LABEL_19:
    v11 = *(a2 + 56);
    *(a1 + 76) |= 0x40u;
    *(a1 + 56) = v11;
    v10 = *(a2 + 76);
  }

LABEL_20:
  if ((v10 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v10 & 0x100) == 0)
  {
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_23;
    }

LABEL_34:
    v21 = *(a2 + 64);
    *(a1 + 76) |= 0x200u;
    *(a1 + 64) = v21;
    if ((*(a2 + 76) & 0x400) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_24;
  }

  v20 = *(a2 + 60);
  *(a1 + 76) |= 0x100u;
  *(a1 + 60) = v20;
  v10 = *(a2 + 76);
  if ((v10 & 0x200) != 0)
  {
    goto LABEL_34;
  }

LABEL_23:
  if ((v10 & 0x400) != 0)
  {
LABEL_24:
    v12 = *(a2 + 68);
    *(a1 + 76) |= 0x400u;
    *(a1 + 68) = v12;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10014982C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100149840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100149854(void *a1)
{
  *a1 = off_10043E590;
  if (a1[5])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1001498C8(void *a1)
{
  *a1 = off_10043E590;
  if (a1[5])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001499E8(uint64_t a1)
{
  v1 = *(a1 + 76);
  if (v1)
  {
    *(a1 + 56) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 64) = 0;
    *(a1 + 60) = 0;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 10) = 0;
  *(result + 17) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100149A28(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 > 5)
        {
          break;
        }

        if (TagFallback >> 3 <= 2)
        {
          if (v8 != 1)
          {
            if (v8 != 2 || v9 != 5)
            {
              goto LABEL_58;
            }

            v43 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v43) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_37;
          }

          if (v9 != 5)
          {
            goto LABEL_58;
          }

          v43 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v43) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 16) = v43;
          *(a1 + 76) |= 1u;
          v15 = *(this + 1);
          if (v15 < *(this + 2) && *v15 == 21)
          {
            *(this + 1) = v15 + 1;
            v43 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v43) & 1) == 0)
            {
              return 0;
            }

LABEL_37:
            *(a1 + 20) = v43;
            *(a1 + 76) |= 2u;
            v17 = *(this + 1);
            v16 = *(this + 2);
            if (v17 < v16 && *v17 == 24)
            {
              v18 = v17 + 1;
              *(this + 1) = v18;
              goto LABEL_50;
            }
          }
        }

        else if (v8 == 3)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_58;
          }

          v18 = *(this + 1);
          v16 = *(this + 2);
LABEL_50:
          v43 = 0;
          if (v18 >= v16 || (v20 = *v18, (v20 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43);
            if (!result)
            {
              return result;
            }

            v20 = v43;
            if (v43 <= 2)
            {
LABEL_53:
              *(a1 + 76) |= 4u;
              *(a1 + 24) = v20;
              goto LABEL_66;
            }
          }

          else
          {
            *(this + 1) = v18 + 1;
            if (v20 <= 2)
            {
              goto LABEL_53;
            }
          }

          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 3, v20);
LABEL_66:
          v23 = *(this + 1);
          if (v23 < *(this + 2) && *v23 == 37)
          {
            *(this + 1) = v23 + 1;
            v43 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v43) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_69;
          }
        }

        else
        {
          if (v8 != 4)
          {
            if (v8 != 5 || (TagFallback & 7) != 0)
            {
              goto LABEL_58;
            }

            v12 = *(this + 1);
            v11 = *(this + 2);
            v43 = 0;
            if (v12 >= v11)
            {
              goto LABEL_75;
            }

            goto LABEL_72;
          }

          if (v9 != 5)
          {
            goto LABEL_58;
          }

          v43 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v43) & 1) == 0)
          {
            return 0;
          }

LABEL_69:
          *(a1 + 28) = v43;
          *(a1 + 76) |= 8u;
          v25 = *(this + 1);
          v24 = *(this + 2);
          if (v25 < v24 && *v25 == 40)
          {
            v12 = v25 + 1;
            *(this + 1) = v12;
            v43 = 0;
            if (v12 >= v24)
            {
              goto LABEL_75;
            }

LABEL_72:
            v26 = *v12;
            if ((v26 & 0x80000000) == 0)
            {
              *(this + 1) = v12 + 1;
              if (v26 <= 2)
              {
                goto LABEL_74;
              }

              goto LABEL_77;
            }

LABEL_75:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43);
            if (!result)
            {
              return result;
            }

            v26 = v43;
            if (v43 <= 2)
            {
LABEL_74:
              *(a1 + 76) |= 0x10u;
              *(a1 + 32) = v26;
              goto LABEL_78;
            }

LABEL_77:
            wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 5, v26);
LABEL_78:
            v27 = *(this + 1);
            if (v27 < *(this + 2) && *v27 == 53)
            {
              *(this + 1) = v27 + 1;
              v43 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v43) & 1) == 0)
              {
                return 0;
              }

LABEL_81:
              *(a1 + 36) = v43;
              *(a1 + 76) |= 0x20u;
              v28 = *(this + 1);
              if (v28 < *(this + 2) && *v28 == 61)
              {
                *(this + 1) = v28 + 1;
                v43 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v43) & 1) == 0)
                {
                  return 0;
                }

LABEL_84:
                *(a1 + 56) = v43;
                *(a1 + 76) |= 0x40u;
                v29 = *(this + 1);
                v13 = *(this + 2);
                if (v29 < v13)
                {
                  v30 = *v29;
                  while (1)
                  {
                    if (v30 != 64)
                    {
                      goto LABEL_1;
                    }

                    v22 = (v29 + 1);
                    *(this + 1) = v22;
LABEL_88:
                    v43 = 0;
                    if (v22 >= v13 || (v31 = *v22, (v31 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43);
                      if (!result)
                      {
                        return result;
                      }

                      v31 = v43;
                      if (v43 <= 9)
                      {
LABEL_91:
                        v32 = *(a1 + 48);
                        v33 = *(a1 + 40);
                        if (v32 == *(a1 + 52))
                        {
                          if (2 * v32 <= v32 + 1)
                          {
                            v34 = v32 + 1;
                          }

                          else
                          {
                            v34 = 2 * v32;
                          }

                          if (v34 <= 4)
                          {
                            v34 = 4;
                          }

                          *(a1 + 52) = v34;
                          operator new[]();
                        }

                        *(a1 + 48) = v32 + 1;
                        *(v33 + 4 * v32) = v31;
                        goto LABEL_102;
                      }
                    }

                    else
                    {
                      *(this + 1) = v22 + 1;
                      if (v31 <= 9)
                      {
                        goto LABEL_91;
                      }
                    }

                    wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 8, v31);
LABEL_102:
                    v29 = *(this + 1);
                    v13 = *(this + 2);
                    if (v29 >= v13)
                    {
                      goto LABEL_1;
                    }

                    v30 = *v29;
                    if (v30 == 72)
                    {
                      v21 = (v29 + 1);
                      *(this + 1) = v21;
                      goto LABEL_105;
                    }
                  }
                }
              }
            }
          }
        }
      }

      if (TagFallback >> 3 <= 8)
      {
        break;
      }

      if (v8 != 9)
      {
        if (v8 != 10)
        {
          if (v8 != 11 || (TagFallback & 7) != 0)
          {
            goto LABEL_58;
          }

          v14 = *(this + 1);
          v13 = *(this + 2);
          goto LABEL_121;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v19 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_113;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_58;
      }

      v21 = *(this + 1);
      v13 = *(this + 2);
LABEL_105:
      if (v21 >= v13 || (v35 = *v21, v35 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 60));
        if (!result)
        {
          return result;
        }

        v36 = *(this + 1);
        v13 = *(this + 2);
        *(a1 + 76) |= 0x100u;
        if (v36 < v13)
        {
          goto LABEL_111;
        }
      }

      else
      {
        *(a1 + 60) = v35;
        v36 = v21 + 1;
        *(this + 1) = v36;
        *(a1 + 76) |= 0x100u;
        if (v36 < v13)
        {
LABEL_111:
          if (*v36 == 80)
          {
            v19 = v36 + 1;
            *(this + 1) = v19;
LABEL_113:
            if (v19 >= v13 || (v37 = *v19, v37 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 64));
              if (!result)
              {
                return result;
              }

              v38 = *(this + 1);
              v13 = *(this + 2);
              *(a1 + 76) |= 0x200u;
              if (v38 < v13)
              {
                goto LABEL_119;
              }
            }

            else
            {
              *(a1 + 64) = v37;
              v38 = v19 + 1;
              *(this + 1) = v38;
              *(a1 + 76) |= 0x200u;
              if (v38 < v13)
              {
LABEL_119:
                if (*v38 == 88)
                {
                  v14 = v38 + 1;
                  *(this + 1) = v14;
LABEL_121:
                  if (v14 >= v13 || (v39 = *v14, v39 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 68));
                    if (!result)
                    {
                      return result;
                    }

                    v42 = *(this + 1);
                    v41 = *(this + 2);
                    *(a1 + 76) |= 0x400u;
                    if (v42 == v41)
                    {
                      goto LABEL_127;
                    }
                  }

                  else
                  {
                    *(a1 + 68) = v39;
                    v40 = v14 + 1;
                    *(this + 1) = v40;
                    *(a1 + 76) |= 0x400u;
                    if (v40 == v13)
                    {
LABEL_127:
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
            }
          }
        }
      }
    }

    if (v8 == 6)
    {
      if (v9 != 5)
      {
        goto LABEL_58;
      }

      v43 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v43) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_81;
    }

    if (v8 == 7)
    {
      if (v9 != 5)
      {
        goto LABEL_58;
      }

      v43 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v43) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_84;
    }

    if (v8 == 8)
    {
      if ((TagFallback & 7) == 0)
      {
        v22 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_88;
      }

      if (v9 == 2)
      {
        break;
      }
    }

LABEL_58:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedEnumNoInline();
  if (result)
  {
    goto LABEL_102;
  }

  return result;
}

uint64_t sub_10014A148(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 76);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 16), a3);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 20), a3);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 24), a2, a4);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 28), a3);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 36), a3);
  if ((*(v5 + 76) & 0x40) == 0)
  {
LABEL_8:
    if (*(v5 + 48) < 1)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 56), a3);
  if (*(v5 + 48) < 1)
  {
    goto LABEL_19;
  }

LABEL_17:
  v7 = 0;
  do
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(8, *(*(v5 + 40) + 4 * v7++), a2, a4);
  }

  while (v7 < *(v5 + 48));
LABEL_19:
  v8 = *(v5 + 76);
  if ((v8 & 0x100) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 60), a2, a4);
    v8 = *(v5 + 76);
    if ((v8 & 0x200) == 0)
    {
LABEL_21:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_21;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 64), a2, a4);
  if ((*(v5 + 76) & 0x400) == 0)
  {
LABEL_22:
    v11 = *(v5 + 8);
    v10 = (v5 + 8);
    v9 = v11;
    if (!v11)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 68), a2, a4);
  v12 = *(v5 + 8);
  v10 = (v5 + 8);
  v9 = v12;
  if (!v12)
  {
    return result;
  }

LABEL_27:
  if (*v9 != v9[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v10, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10014A310(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 19);
  if (v5)
  {
    v8 = *(this + 4);
    *a2 = 13;
    *(a2 + 1) = v8;
    v3 = (a2 + 5);
    v5 = *(this + 19);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_12:
      v10 = *(this + 6);
      *v3 = 24;
      v11 = v3 + 1;
      if ((v10 & 0x80000000) != 0)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v10, v11, a3);
        v6 = *(this + 19);
        if ((v6 & 8) != 0)
        {
          goto LABEL_19;
        }
      }

      else if (v10 > 0x7F)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v11, a3);
        v6 = *(this + 19);
        if ((v6 & 8) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *(v3 + 1) = v10;
        v3 = (v3 + 2);
        v6 = *(this + 19);
        if ((v6 & 8) != 0)
        {
          goto LABEL_19;
        }
      }

LABEL_5:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_6;
      }

LABEL_20:
      v13 = *(this + 8);
      *v3 = 40;
      v14 = v3 + 1;
      if ((v13 & 0x80000000) != 0)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v13, v14, a3);
        v7 = *(this + 19);
        if ((v7 & 0x20) != 0)
        {
          goto LABEL_27;
        }
      }

      else if (v13 > 0x7F)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v14, a3);
        v7 = *(this + 19);
        if ((v7 & 0x20) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *(v3 + 1) = v13;
        v3 = (v3 + 2);
        v7 = *(this + 19);
        if ((v7 & 0x20) != 0)
        {
          goto LABEL_27;
        }
      }

LABEL_7:
      if ((v7 & 0x40) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_28;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(this + 5);
  *v3 = 21;
  *(v3 + 1) = v9;
  v3 = (v3 + 5);
  if ((*(this + 19) & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  v6 = *(this + 19);
  if ((v6 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_19:
  v12 = *(this + 7);
  *v3 = 37;
  *(v3 + 1) = v12;
  v3 = (v3 + 5);
  if ((*(this + 19) & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_6:
  v7 = *(this + 19);
  if ((v7 & 0x20) == 0)
  {
    goto LABEL_7;
  }

LABEL_27:
  v15 = *(this + 9);
  *v3 = 53;
  *(v3 + 1) = v15;
  v3 = (v3 + 5);
  if ((*(this + 19) & 0x40) == 0)
  {
LABEL_8:
    if (*(this + 12) < 1)
    {
      goto LABEL_36;
    }

    goto LABEL_29;
  }

LABEL_28:
  v16 = *(this + 14);
  *v3 = 61;
  *(v3 + 1) = v16;
  v3 = (v3 + 5);
  if (*(this + 12) < 1)
  {
    goto LABEL_36;
  }

LABEL_29:
  v17 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        v18 = *(*(this + 5) + 4 * v17);
        *v3 = 64;
        v19 = v3 + 1;
        if ((v18 & 0x80000000) == 0)
        {
          break;
        }

        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v18, v19, a3);
        if (++v17 >= *(this + 12))
        {
          goto LABEL_36;
        }
      }

      if (v18 > 0x7F)
      {
        break;
      }

      *(v3 + 1) = v18;
      v3 = (v3 + 2);
      if (++v17 >= *(this + 12))
      {
        goto LABEL_36;
      }
    }

    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v19, a3);
    ++v17;
  }

  while (v17 < *(this + 12));
LABEL_36:
  if (*(this + 77))
  {
    v24 = *(this + 15);
    *v3 = 72;
    if (v24 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v24, v3 + 1, a3);
      if ((*(this + 77) & 2) != 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      *(v3 + 1) = v24;
      v3 = (v3 + 2);
      if ((*(this + 77) & 2) != 0)
      {
        goto LABEL_48;
      }
    }

LABEL_38:
    if ((*(this + 77) & 4) == 0)
    {
      goto LABEL_39;
    }

LABEL_52:
    v26 = *(this + 17);
    *v3 = 88;
    if (v26 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, v3 + 1, a3);
      v28 = *(this + 1);
      v21 = (this + 8);
      v20 = v28;
      if (!v28)
      {
        return v3;
      }
    }

    else
    {
      *(v3 + 1) = v26;
      v3 = (v3 + 2);
      v27 = *(this + 1);
      v21 = (this + 8);
      v20 = v27;
      if (!v27)
      {
        return v3;
      }
    }

    goto LABEL_40;
  }

  if ((*(this + 77) & 2) == 0)
  {
    goto LABEL_38;
  }

LABEL_48:
  v25 = *(this + 16);
  *v3 = 80;
  if (v25 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v25, v3 + 1, a3);
    if ((*(this + 77) & 4) != 0)
    {
      goto LABEL_52;
    }
  }

  else
  {
    *(v3 + 1) = v25;
    v3 = (v3 + 2);
    if ((*(this + 77) & 4) != 0)
    {
      goto LABEL_52;
    }
  }

LABEL_39:
  v22 = *(this + 1);
  v21 = (this + 8);
  v20 = v22;
  if (!v22)
  {
    return v3;
  }

LABEL_40:
  if (*v20 == v20[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v21, v3, a3);
}

uint64_t sub_10014A6A4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 76);
  if (v3)
  {
    if ((v3 & 2) != 0)
    {
      v4 = ((v3 << 31 >> 31) & 5) + 5;
    }

    else
    {
      v4 = (v3 << 31 >> 31) & 5;
    }

    if ((v3 & 4) != 0)
    {
      v5 = *(a1 + 24);
      if ((v5 & 0x80000000) != 0)
      {
        v6 = 11;
      }

      else if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        v3 = *(a1 + 76);
      }

      else
      {
        v6 = 2;
      }

      v4 += v6;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x10) != 0)
    {
      v8 = *(a1 + 32);
      if ((v8 & 0x80000000) != 0)
      {
        v9 = 11;
      }

      else if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
        v3 = *(a1 + 76);
      }

      else
      {
        v9 = 2;
      }

      v4 += v9;
    }

    v10 = v4 + 5;
    if ((v3 & 0x20) == 0)
    {
      v10 = v4;
    }

    if ((v3 & 0x40) != 0)
    {
      v7 = v10 + 5;
    }

    else
    {
      v7 = v10;
    }

    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v7 = 0;
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_32;
    }
  }

  if ((v3 & 0x100) == 0)
  {
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_44;
  }

  v16 = *(a1 + 60);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
    v3 = *(a1 + 76);
    v7 += v17 + 1;
    if ((v3 & 0x200) != 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v7 += 2;
    if ((v3 & 0x200) != 0)
    {
LABEL_44:
      v18 = *(a1 + 64);
      if (v18 >= 0x80)
      {
        v7 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
        if ((*(a1 + 76) & 0x400) != 0)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v7 += 2;
        if ((v3 & 0x400) != 0)
        {
          goto LABEL_48;
        }
      }

LABEL_32:
      v11 = *(a1 + 48);
      if (v11 >= 1)
      {
        goto LABEL_33;
      }

LABEL_52:
      v13 = 0;
      goto LABEL_53;
    }
  }

LABEL_31:
  if ((v3 & 0x400) == 0)
  {
    goto LABEL_32;
  }

LABEL_48:
  v19 = *(a1 + 68);
  if (v19 >= 0x80)
  {
    v7 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
    v11 = *(a1 + 48);
    if (v11 < 1)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v7 += 2;
    v11 = *(a1 + 48);
    if (v11 < 1)
    {
      goto LABEL_52;
    }
  }

LABEL_33:
  v12 = 0;
  v13 = 0;
  do
  {
    v15 = *(*(a1 + 40) + 4 * v12);
    if ((v15 & 0x80000000) != 0)
    {
      v14 = 10;
    }

    else if (v15 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
      v11 = *(a1 + 48);
    }

    else
    {
      v14 = 1;
    }

    v13 += v14;
    ++v12;
  }

  while (v12 < v11);
LABEL_53:
  v20 = (v13 + v7 + v11);
  v21 = *(a1 + 8);
  if (v21 && *v21 != v21[1])
  {
    v20 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v20;
  }

  *(a1 + 72) = v20;
  return v20;
}

uint64_t sub_10014A8C4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1001495A8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10014A9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10014A9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014A9CC(uint64_t result, uint64_t a2)
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

uint64_t sub_10014AA58(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();

    return sub_1001495A8(v4, a2);
  }

  return result;
}

uint64_t sub_10014AACC()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CE70;
}

void sub_10014AB5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014AB70(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v4 = a1;
    v5 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
    a2 = v5;
    a1 = v4;
    if ((*(v5 + 24) & 1) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
    }

    goto LABEL_3;
  }

  if (*(a2 + 24))
  {
LABEL_3:
    v2 = *(a2 + 16);
    a1[6] |= 1u;
    a1[4] = v2;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_10014AC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10014AC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10014AC44(uint64_t a1)
{
  *a1 = off_10043E640;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10014AC98(uint64_t a1)
{
  *a1 = off_10043E640;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10014AD94(uint64_t a1)
{
  if (*(a1 + 24))
  {
    *(a1 + 16) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10014ADB4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
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
      if (TagFallback != 13)
      {
        goto LABEL_4;
      }

LABEL_9:
      v9 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v9) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v9;
      *(a1 + 24) |= 1u;
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
    if (TagFallback == 13)
    {
      goto LABEL_9;
    }

LABEL_4:
    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

wireless_diagnostics::google::protobuf::internal::WireFormat *sub_10014AEC4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  if (*(a1 + 24))
  {
    v3 = a1;
    v4 = a2;
    wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(a1 + 16), a3);
    a1 = v3;
    a2 = v4;
  }

  v7 = *(a1 + 8);
  result = (a1 + 8);
  v6 = v7;
  if (v7 && *v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(result, a2, a3);
  }

  return result;
}

uint64_t sub_10014AF34(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (*(a1 + 24))
  {
    v3 = *(a1 + 16);
    *a2 = 13;
    *(a2 + 1) = v3;
    a2 += 5;
  }

  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6 || *v5 == v5[1])
  {
    return a2;
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }
}

uint64_t sub_10014AF88(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  v6 = (v3[16] << 31 >> 31) & 5;
  if (v5 && *v4 != v4[1])
  {
    v6 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v3, a2) + v6;
  }

  *(a1 + 20) = v6;
  return v6;
}

uint64_t sub_10014AFDC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10014AB70(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10014B0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10014B0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014B0E4(uint64_t result, uint64_t a2)
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

uint64_t sub_10014B178()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CE88;
}

void sub_10014B208(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014B21C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 76);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 76))
  {
    v7 = *(a2 + 16);
    *(a1 + 76) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 76);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
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

  v8 = *(a2 + 24);
  *(a1 + 76) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 76);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = *(a2 + 32);
  *(a1 + 76) |= 4u;
  *(a1 + 32) = v9;
  v4 = *(a2 + 76);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = *(a2 + 40);
  *(a1 + 76) |= 8u;
  *(a1 + 40) = v10;
  v4 = *(a2 + 76);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    v12 = *(a2 + 56);
    *(a1 + 76) |= 0x20u;
    *(a1 + 56) = v12;
    if ((*(a2 + 76) & 0x40) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_11;
  }

LABEL_17:
  v11 = *(a2 + 48);
  *(a1 + 76) |= 0x10u;
  *(a1 + 48) = v11;
  v4 = *(a2 + 76);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((v4 & 0x40) != 0)
  {
LABEL_11:
    v5 = *(a2 + 64);
    *(a1 + 76) |= 0x40u;
    *(a1 + 64) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10014B384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10014B398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014B3AC(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043E6F0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  sub_10014B21C(a1, a2);
  return a1;
}

void sub_10014B41C(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

void sub_10014B44C(uint64_t a1)
{
  *a1 = off_10043E6F0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10014B4A0(uint64_t a1)
{
  *a1 = off_10043E6F0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10014B5A0(uint64_t a1)
{
  if (*(a1 + 76))
  {
    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 17) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10014B5CC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
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
            if (v9 != 1)
            {
              goto LABEL_36;
            }

            v17 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 16) = v17;
            *(a1 + 76) |= 1u;
            v10 = *(this + 1);
            if (v10 < *(this + 2) && *v10 == 17)
            {
              *(this + 1) = v10 + 1;
LABEL_39:
              v17 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 24) = v17;
              *(a1 + 76) |= 2u;
              v11 = *(this + 1);
              if (v11 < *(this + 2) && *v11 == 25)
              {
                *(this + 1) = v11 + 1;
                v17 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_43;
              }
            }
          }

          else
          {
            if (v8 == 2)
            {
              if (v9 != 1)
              {
                goto LABEL_36;
              }

              goto LABEL_39;
            }

            if (v8 != 3 || v9 != 1)
            {
              goto LABEL_36;
            }

            v17 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
            {
              return 0;
            }

LABEL_43:
            *(a1 + 32) = v17;
            *(a1 + 76) |= 4u;
            v12 = *(this + 1);
            if (v12 < *(this + 2) && *v12 == 33)
            {
              *(this + 1) = v12 + 1;
              v17 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
              {
                return 0;
              }

              goto LABEL_46;
            }
          }
        }

        if (TagFallback >> 3 > 5)
        {
          break;
        }

        if (v8 == 4)
        {
          if (v9 != 1)
          {
            goto LABEL_36;
          }

          v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
          {
            return 0;
          }

LABEL_46:
          *(a1 + 40) = v17;
          *(a1 + 76) |= 8u;
          v13 = *(this + 1);
          if (v13 < *(this + 2) && *v13 == 41)
          {
            *(this + 1) = v13 + 1;
            v17 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_49;
          }
        }

        else
        {
          if (v8 != 5 || v9 != 1)
          {
            goto LABEL_36;
          }

          v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
          {
            return 0;
          }

LABEL_49:
          *(a1 + 48) = v17;
          *(a1 + 76) |= 0x10u;
          v14 = *(this + 1);
          if (v14 < *(this + 2) && *v14 == 49)
          {
            *(this + 1) = v14 + 1;
            v17 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_52;
          }
        }
      }

      if (v8 != 6)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_36;
      }

      v17 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
      {
        return 0;
      }

LABEL_52:
      *(a1 + 64) = v17;
      *(a1 + 76) |= 0x40u;
      v15 = *(this + 1);
      if (v15 < *(this + 2) && *v15 == 57)
      {
        *(this + 1) = v15 + 1;
        v17 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
        {
          return 0;
        }

LABEL_55:
        *(a1 + 56) = v17;
        *(a1 + 76) |= 0x20u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 7 && v9 == 1)
    {
      v17 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_55;
    }

LABEL_36:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_10014B984(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 76);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    v5 = *(v4 + 76);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  v5 = *(v4 + 76);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 32), a3);
  v5 = *(v4 + 76);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 40), a3);
  v5 = *(v4 + 76);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v4 + 48), a3);
  v5 = *(v4 + 76);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v4 + 64), a3);
  if ((*(v4 + 76) & 0x20) == 0)
  {
LABEL_8:
    v8 = *(v4 + 8);
    v7 = (v4 + 8);
    v6 = v8;
    if (!v8)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v4 + 56), a3);
  v9 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_17:
  if (*v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return result;
}

uint64_t sub_10014BAAC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 76);
  if (v3)
  {
    v7 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v7;
    a2 += 9;
    v3 = *(a1 + 76);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
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
  v3 = *(a1 + 76);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = *(a1 + 32);
  *a2 = 25;
  *(a2 + 1) = v9;
  a2 += 9;
  v3 = *(a1 + 76);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v10 = *(a1 + 40);
  *a2 = 33;
  *(a2 + 1) = v10;
  a2 += 9;
  v3 = *(a1 + 76);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v11 = *(a1 + 48);
  *a2 = 41;
  *(a2 + 1) = v11;
  a2 += 9;
  v3 = *(a1 + 76);
  if ((v3 & 0x40) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v13 = *(a1 + 56);
    *a2 = 57;
    *(a2 + 1) = v13;
    a2 += 9;
    v14 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v14;
    if (!v14)
    {
      return a2;
    }

    goto LABEL_17;
  }

LABEL_15:
  v12 = *(a1 + 64);
  *a2 = 49;
  *(a2 + 1) = v12;
  a2 += 9;
  if ((*(a1 + 76) & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_17:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_10014BD3C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 76);
  if (*(a1 + 76))
  {
    v4 = (v3 << 31 >> 31) & 9;
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
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x40) != 0)
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
      goto LABEL_16;
    }
  }

  else
  {
    v5 = 0;
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
LABEL_16:
      *(a1 + 72) = v5;
      return v5;
    }
  }

  if (*v7 == v7[1])
  {
    goto LABEL_16;
  }

  v9 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 72) = v9;
  return v9;
}

uint64_t sub_10014BE04(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10014B21C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10014BEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10014BEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014BF0C(uint64_t result, uint64_t a2)
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

uint64_t sub_10014BFA0()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CE98;
}

void sub_10014C030(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014C044(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 44);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 44))
  {
    v7 = *(a2 + 16);
    *(a1 + 44) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 44);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a2 + 44) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 20);
  *(a1 + 44) |= 2u;
  *(a1 + 20) = v8;
  v4 = *(a2 + 44);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = *(a2 + 24);
  *(a1 + 44) |= 4u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v11 = *(a2 + 32);
    *(a1 + 44) |= 0x10u;
    *(a1 + 32) = v11;
    if ((*(a2 + 44) & 0x20) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_10;
  }

LABEL_15:
  v10 = *(a2 + 28);
  *(a1 + 44) |= 8u;
  *(a1 + 28) = v10;
  v4 = *(a2 + 44);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v4 & 0x20) != 0)
  {
LABEL_10:
    v5 = *(a2 + 36);
    *(a1 + 44) |= 0x20u;
    *(a1 + 36) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10014C18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10014C1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_10014C1B4(void *a1, uint64_t a2)
{
  *a1 = off_10043E7A0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[5] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *(a1 + 29) = 0;
  sub_10014C044(a1, a2);
  return a1;
}

void sub_10014C224(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

void sub_10014C254(uint64_t a1)
{
  *a1 = off_10043E7A0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10014C2A8(uint64_t a1)
{
  *a1 = off_10043E7A0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10014C3A8(uint64_t a1)
{
  if (*(a1 + 44))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 29) = 0;
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

uint64_t sub_10014C3CC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
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
            if (v9 != 5)
            {
              goto LABEL_36;
            }

            v24 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v24) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 16) = v24;
            *(a1 + 44) |= 1u;
            v14 = *(this + 1);
            if (v14 < *(this + 2) && *v14 == 21)
            {
              *(this + 1) = v14 + 1;
              goto LABEL_28;
            }
          }

          else if (v8 == 2)
          {
            if (v9 != 5)
            {
              goto LABEL_36;
            }

LABEL_28:
            v24 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v24) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 20) = v24;
            *(a1 + 44) |= 2u;
            v15 = *(this + 1);
            v10 = *(this + 2);
            if (v15 < v10 && *v15 == 24)
            {
              v11 = v15 + 1;
              *(this + 1) = v11;
              if (v11 < v10)
              {
                goto LABEL_32;
              }

LABEL_39:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
              if (!result)
              {
                return result;
              }

              v17 = *(this + 1);
              v19 = *(this + 2);
              *(a1 + 44) |= 4u;
              if (v17 < v19)
              {
                goto LABEL_41;
              }
            }
          }

          else
          {
            if (v8 != 3 || (TagFallback & 7) != 0)
            {
              goto LABEL_36;
            }

            v11 = *(this + 1);
            v10 = *(this + 2);
            if (v11 >= v10)
            {
              goto LABEL_39;
            }

LABEL_32:
            v16 = *v11;
            if (v16 < 0)
            {
              goto LABEL_39;
            }

            *(a1 + 24) = v16;
            v17 = v11 + 1;
            *(this + 1) = v17;
            *(a1 + 44) |= 4u;
            if (v17 < v10)
            {
LABEL_41:
              if (*v17 == 37)
              {
                *(this + 1) = v17 + 1;
                v24 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v24) & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_43;
              }
            }
          }
        }

        if (v8 != 4)
        {
          break;
        }

        if (v9 != 5)
        {
          goto LABEL_36;
        }

        v24 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v24) & 1) == 0)
        {
          return 0;
        }

LABEL_43:
        *(a1 + 28) = v24;
        *(a1 + 44) |= 8u;
        v20 = *(this + 1);
        if (v20 < *(this + 2) && *v20 == 45)
        {
          *(this + 1) = v20 + 1;
          goto LABEL_46;
        }
      }

      if (v8 != 5)
      {
        break;
      }

      if (v9 != 5)
      {
        goto LABEL_36;
      }

LABEL_46:
      v24 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v24) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 32) = v24;
      *(a1 + 44) |= 0x10u;
      v21 = *(this + 1);
      v12 = *(this + 2);
      if (v21 < v12 && *v21 == 48)
      {
        v13 = v21 + 1;
        *(this + 1) = v13;
        v24 = 0;
        if (v13 >= v12)
        {
          goto LABEL_52;
        }

LABEL_50:
        v22 = *v13;
        if ((v22 & 0x80000000) != 0)
        {
LABEL_52:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24);
          if (!result)
          {
            return result;
          }

          v22 = v24;
          v23 = *(this + 1);
          v12 = *(this + 2);
          goto LABEL_54;
        }

        v23 = v13 + 1;
        *(this + 1) = v23;
LABEL_54:
        *(a1 + 36) = v22 != 0;
        *(a1 + 44) |= 0x20u;
        if (v23 == v12 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 6 && (TagFallback & 7) == 0)
    {
      v13 = *(this + 1);
      v12 = *(this + 2);
      v24 = 0;
      if (v13 >= v12)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

LABEL_36:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_10014C72C(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 16), a3);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 20), a3);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 28), a3);
  v6 = *(v5 + 44);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 32), a3);
  if ((*(v5 + 44) & 0x20) == 0)
  {
LABEL_7:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 36), a2, a4);
  v10 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_15:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

uint64_t sub_10014C838(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 44);
  if (v3)
  {
    v8 = *(a1 + 16);
    *a2 = 13;
    *(a2 + 1) = v8;
    a2 += 5;
    v3 = *(a1 + 44);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v10 = *(a1 + 24);
      *a2 = 24;
      if (v10 > 0x7F)
      {
        v11 = a1;
        a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, a2 + 1, a3);
        a1 = v11;
        v4 = *(v11 + 44);
        if ((v4 & 8) != 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        *(a2 + 1) = v10;
        a2 += 2;
        v4 = *(a1 + 44);
        if ((v4 & 8) != 0)
        {
          goto LABEL_15;
        }
      }

LABEL_5:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(a1 + 20);
  *a2 = 21;
  *(a2 + 1) = v9;
  a2 += 5;
  if ((*(a1 + 44) & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v4 = *(a1 + 44);
  if ((v4 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  v12 = *(a1 + 28);
  *a2 = 37;
  *(a2 + 1) = v12;
  a2 += 5;
  v4 = *(a1 + 44);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v13 = *(a1 + 32);
  *a2 = 45;
  *(a2 + 1) = v13;
  a2 += 5;
  if ((*(a1 + 44) & 0x20) == 0)
  {
LABEL_7:
    v7 = *(a1 + 8);
    v5 = (a1 + 8);
    v6 = v7;
    if (!v7)
    {
      return a2;
    }

    goto LABEL_18;
  }

LABEL_17:
  v14 = *(a1 + 36);
  *a2 = 48;
  *(a2 + 1) = v14;
  a2 += 2;
  v15 = *(a1 + 8);
  v5 = (a1 + 8);
  v6 = v15;
  if (!v15)
  {
    return a2;
  }

LABEL_18:
  if (*v6 == v6[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v5, a2, a3);
}

uint64_t sub_10014C9E4(unsigned int *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[11];
  if (v3)
  {
    if ((v3 & 2) != 0)
    {
      v4 = (((v3 << 31) >> 31) & 5) + 5;
    }

    else
    {
      v4 = ((v3 << 31) >> 31) & 5;
    }

    if ((v3 & 4) != 0)
    {
      v5 = a1[6];
      if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        v3 = a1[11];
      }

      else
      {
        v6 = 2;
      }

      v4 += v6;
    }

    v11 = v4 + 5;
    if ((v3 & 8) == 0)
    {
      v11 = v4;
    }

    if ((v3 & 0x10) != 0)
    {
      v11 += 5;
    }

    v7 = v11 + ((v3 >> 4) & 2);
    v8 = (a1 + 2);
    v9 = *(a1 + 1);
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
    v8 = (a1 + 2);
    v9 = *(a1 + 1);
    if (!v9)
    {
LABEL_9:
      a1[10] = v7;
      return v7;
    }
  }

  if (*v9 == v9[1])
  {
    goto LABEL_9;
  }

  v12 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v8, a2) + v7;
  a1[10] = v12;
  return v12;
}

uint64_t sub_10014CAC0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10014C044(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10014CBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10014CBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014CBC8(uint64_t result, uint64_t a2)
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

uint64_t sub_10014CC5C()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CEA8;
}

void sub_10014CCEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014CD00(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v75);
    v4 = *(a2 + 300);
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = *(a2 + 300);
    if (!v4)
    {
LABEL_13:
      if ((v4 & 0xFF00) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_28;
    }
  }

  if (v4)
  {
    v5 = *(a2 + 16);
    *(a1 + 300) |= 1u;
    *(a1 + 16) = v5;
    v4 = *(a2 + 300);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_7;
  }

  v6 = *(a2 + 24);
  *(a1 + 300) |= 2u;
  *(a1 + 24) = v6;
  v4 = *(a2 + 300);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = *(a2 + 28);
  *(a1 + 300) |= 4u;
  *(a1 + 28) = v7;
  v4 = *(a2 + 300);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(a2 + 32);
  *(a1 + 300) |= 8u;
  *(a1 + 32) = v8;
  v4 = *(a2 + 300);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = *(a2 + 36);
  *(a1 + 300) |= 0x10u;
  *(a1 + 36) = v9;
  v4 = *(a2 + 300);
  if ((v4 & 0x20) == 0)
  {
LABEL_11:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = *(a2 + 40);
  *(a1 + 300) |= 0x20u;
  *(a1 + 40) = v10;
  v4 = *(a2 + 300);
  if ((v4 & 0x40) == 0)
  {
LABEL_12:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(a2 + 44);
  *(a1 + 300) |= 0x40u;
  *(a1 + 44) = v11;
  v4 = *(a2 + 300);
  if ((v4 & 0x80) == 0)
  {
    goto LABEL_13;
  }

LABEL_22:
  *(a1 + 300) |= 0x80u;
  v12 = *(a1 + 48);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 48);
  if (v13)
  {
    sub_100145DF0(v12, v13);
    v4 = *(a2 + 300);
    if ((v4 & 0xFF00) == 0)
    {
      goto LABEL_62;
    }
  }

  else
  {
    sub_100145DF0(v12, *(qword_10045E250 + 48));
    v4 = *(a2 + 300);
    if ((v4 & 0xFF00) == 0)
    {
      goto LABEL_62;
    }
  }

LABEL_28:
  if ((v4 & 0x100) != 0)
  {
    *(a1 + 300) |= 0x100u;
    v14 = *(a1 + 56);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 56);
    if (!v15)
    {
      v15 = *(qword_10045E250 + 56);
    }

    sub_100146684(v14, v15);
    v4 = *(a2 + 300);
  }

  if ((v4 & 0x200) != 0)
  {
    *(a1 + 300) |= 0x200u;
    v16 = *(a1 + 64);
    if (!v16)
    {
      operator new();
    }

    v17 = *(a2 + 64);
    if (!v17)
    {
      v17 = *(qword_10045E250 + 64);
    }

    sub_10014736C(v16, v17);
    v4 = *(a2 + 300);
  }

  if ((v4 & 0x400) != 0)
  {
    *(a1 + 300) |= 0x400u;
    v18 = *(a1 + 72);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 72);
    if (!v19)
    {
      v19 = *(qword_10045E250 + 72);
    }

    sub_100144F80(v18, v19);
    v4 = *(a2 + 300);
  }

  if ((v4 & 0x800) != 0)
  {
    v20 = *(a2 + 96);
    *(a1 + 300) |= 0x800u;
    *(a1 + 96) = v20;
    v4 = *(a2 + 300);
  }

  if ((v4 & 0x1000) != 0)
  {
    *(a1 + 300) |= 0x1000u;
    v21 = *(a1 + 80);
    if (!v21)
    {
      operator new();
    }

    v22 = *(a2 + 80);
    if (!v22)
    {
      v22 = *(qword_10045E250 + 80);
    }

    sub_100148A0C(v21, v22);
    v4 = *(a2 + 300);
  }

  if ((v4 & 0x2000) != 0)
  {
    *(a1 + 300) |= 0x2000u;
    v23 = *(a1 + 88);
    if (!v23)
    {
      operator new();
    }

    v24 = *(a2 + 88);
    if (!v24)
    {
      v24 = *(qword_10045E250 + 88);
    }

    sub_1001495A8(v23, v24);
    v4 = *(a2 + 300);
  }

  if ((v4 & 0x4000) != 0)
  {
    *(a1 + 300) |= 0x4000u;
    v25 = *(a1 + 104);
    if (!v25)
    {
      operator new();
    }

    v26 = *(a2 + 104);
    if (!v26)
    {
      v26 = *(qword_10045E250 + 104);
    }

    sub_10014379C(v25, v26);
    v4 = *(a2 + 300);
  }

  if ((v4 & 0x8000) != 0)
  {
    v27 = *(a2 + 112);
    *(a1 + 300) |= 0x8000u;
    *(a1 + 112) = v27;
    v4 = *(a2 + 300);
  }

LABEL_62:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_72;
  }

  if ((v4 & 0x10000) != 0)
  {
    v50 = *(a2 + 100);
    *(a1 + 300) |= 0x10000u;
    *(a1 + 100) = v50;
    v4 = *(a2 + 300);
    if ((v4 & 0x20000) == 0)
    {
LABEL_65:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_137;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_65;
  }

  v51 = *(a2 + 120);
  *(a1 + 300) |= 0x20000u;
  *(a1 + 120) = v51;
  v4 = *(a2 + 300);
  if ((v4 & 0x40000) == 0)
  {
LABEL_66:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_138;
  }

LABEL_137:
  v52 = *(a2 + 124);
  *(a1 + 300) |= 0x40000u;
  *(a1 + 124) = v52;
  v4 = *(a2 + 300);
  if ((v4 & 0x80000) == 0)
  {
LABEL_67:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_139;
  }

LABEL_138:
  v53 = *(a2 + 128);
  *(a1 + 300) |= 0x80000u;
  *(a1 + 128) = v53;
  v4 = *(a2 + 300);
  if ((v4 & 0x100000) == 0)
  {
LABEL_68:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_140;
  }

LABEL_139:
  v54 = *(a2 + 132);
  *(a1 + 300) |= 0x100000u;
  *(a1 + 132) = v54;
  v4 = *(a2 + 300);
  if ((v4 & 0x200000) == 0)
  {
LABEL_69:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_141;
  }

LABEL_140:
  v55 = *(a2 + 136);
  *(a1 + 300) |= 0x200000u;
  *(a1 + 136) = v55;
  v4 = *(a2 + 300);
  if ((v4 & 0x400000) == 0)
  {
LABEL_70:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

LABEL_141:
  *(a1 + 300) |= 0x400000u;
  v56 = *(a1 + 144);
  if (!v56)
  {
    operator new();
  }

  v57 = *(a2 + 144);
  if (v57)
  {
    sub_10014AB70(v56, v57);
    v4 = *(a2 + 300);
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_72;
    }

LABEL_71:
    v28 = *(a2 + 140);
    *(a1 + 300) |= 0x800000u;
    *(a1 + 140) = v28;
    v4 = *(a2 + 300);
    goto LABEL_72;
  }

  sub_10014AB70(v56, *(qword_10045E250 + 144));
  v4 = *(a2 + 300);
  if ((v4 & 0x800000) != 0)
  {
    goto LABEL_71;
  }

LABEL_72:
  if (!HIBYTE(v4))
  {
    goto LABEL_94;
  }

  if ((v4 & 0x1000000) != 0)
  {
    v29 = *(a2 + 152);
    *(a1 + 300) |= 0x1000000u;
    *(a1 + 152) = v29;
    v4 = *(a2 + 300);
  }

  if ((v4 & 0x2000000) != 0)
  {
    *(a1 + 300) |= 0x2000000u;
    v30 = *(a1 + 160);
    if (!v30)
    {
      operator new();
    }

    v31 = *(a2 + 160);
    if (!v31)
    {
      v31 = *(qword_10045E250 + 160);
    }

    sub_10014C044(v30, v31);
    v4 = *(a2 + 300);
  }

  if ((v4 & 0x4000000) != 0)
  {
    *(a1 + 300) |= 0x4000000u;
    v32 = *(a1 + 168);
    if (!v32)
    {
      operator new();
    }

    v33 = *(a2 + 168);
    if (!v33)
    {
      v33 = *(qword_10045E250 + 168);
    }

    sub_1001544A4(v32, v33);
    v4 = *(a2 + 300);
  }

  if ((v4 & 0x8000000) != 0)
  {
    *(a1 + 300) |= 0x8000000u;
    v34 = *(a1 + 176);
    if (!v34)
    {
      operator new();
    }

    v35 = *(a2 + 176);
    if (!v35)
    {
      v35 = *(qword_10045E250 + 176);
    }

    sub_10014B21C(v34, v35);
    v4 = *(a2 + 300);
  }

  if ((v4 & 0x10000000) != 0)
  {
    v62 = *(a2 + 192);
    *(a1 + 300) |= 0x10000000u;
    *(a1 + 192) = v62;
    v4 = *(a2 + 300);
    if ((v4 & 0x20000000) == 0)
    {
LABEL_92:
      if ((v4 & 0x40000000) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_153;
    }
  }

  else if ((v4 & 0x20000000) == 0)
  {
    goto LABEL_92;
  }

  v63 = *(a2 + 184);
  *(a1 + 300) |= 0x20000000u;
  *(a1 + 184) = v63;
  v4 = *(a2 + 300);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_93:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_94;
    }

LABEL_154:
    v65 = *(a2 + 196);
    *(a1 + 300) |= 0x80000000;
    *(a1 + 196) = v65;
    v36 = *(a2 + 304);
    if (!v36)
    {
      goto LABEL_126;
    }

    goto LABEL_95;
  }

LABEL_153:
  v64 = *(a2 + 193);
  *(a1 + 300) |= 0x40000000u;
  *(a1 + 193) = v64;
  if ((*(a2 + 300) & 0x80000000) != 0)
  {
    goto LABEL_154;
  }

LABEL_94:
  v36 = *(a2 + 304);
  if (!v36)
  {
    goto LABEL_126;
  }

LABEL_95:
  if (v36)
  {
    *(a1 + 304) |= 1u;
    v37 = *(a1 + 200);
    if (!v37)
    {
      operator new();
    }

    v38 = *(a2 + 200);
    if (!v38)
    {
      v38 = *(qword_10045E250 + 200);
    }

    sub_1001440D4(v37, v38);
    v36 = *(a2 + 304);
  }

  if ((v36 & 2) != 0)
  {
    v39 = *(a2 + 194);
    *(a1 + 304) |= 2u;
    *(a1 + 194) = v39;
    v36 = *(a2 + 304);
  }

  if ((v36 & 4) != 0)
  {
    *(a1 + 304) |= 4u;
    v40 = *(a1 + 208);
    if (!v40)
    {
      operator new();
    }

    v41 = *(a2 + 208);
    if (!v41)
    {
      v41 = *(qword_10045E250 + 208);
    }

    sub_1001545F4(v40, v41);
    v36 = *(a2 + 304);
  }

  if ((v36 & 8) != 0)
  {
    *(a1 + 304) |= 8u;
    v42 = *(a1 + 216);
    if (!v42)
    {
      operator new();
    }

    v43 = *(a2 + 216);
    if (!v43)
    {
      v43 = *(qword_10045E250 + 216);
    }

    sub_1001547E8(v42, v43);
    v36 = *(a2 + 304);
  }

  if ((v36 & 0x10) != 0)
  {
    v44 = *(a2 + 224);
    *(a1 + 304) |= 0x10u;
    *(a1 + 224) = v44;
    v36 = *(a2 + 304);
  }

  if ((v36 & 0x20) != 0)
  {
    *(a1 + 304) |= 0x20u;
    v45 = *(a1 + 232);
    if (!v45)
    {
      operator new();
    }

    v46 = *(a2 + 232);
    if (!v46)
    {
      v46 = *(qword_10045E250 + 232);
    }

    sub_1001440D4(v45, v46);
    v36 = *(a2 + 304);
  }

  if ((v36 & 0x40) != 0)
  {
    v47 = *(a2 + 228);
    *(a1 + 304) |= 0x40u;
    *(a1 + 228) = v47;
    v36 = *(a2 + 304);
  }

  if ((v36 & 0x80) != 0)
  {
    *(a1 + 304) |= 0x80u;
    v48 = *(a1 + 240);
    if (!v48)
    {
      operator new();
    }

    v49 = *(a2 + 240);
    if (!v49)
    {
      v49 = *(qword_10045E250 + 240);
    }

    sub_10014736C(v48, v49);
    v36 = *(a2 + 304);
  }

LABEL_126:
  if ((v36 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v36 & 0x100) != 0)
  {
    v58 = *(a2 + 248);
    *(a1 + 304) |= 0x100u;
    *(a1 + 248) = v58;
    v36 = *(a2 + 304);
    if ((v36 & 0x200) == 0)
    {
LABEL_129:
      if ((v36 & 0x400) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_147;
    }
  }

  else if ((v36 & 0x200) == 0)
  {
    goto LABEL_129;
  }

  v59 = *(a2 + 252);
  *(a1 + 304) |= 0x200u;
  *(a1 + 252) = v59;
  v36 = *(a2 + 304);
  if ((v36 & 0x400) == 0)
  {
LABEL_130:
    if ((v36 & 0x800) == 0)
    {
      goto LABEL_131;
    }

LABEL_171:
    *(a1 + 304) |= 0x800u;
    v66 = *(a1 + 264);
    if (!v66)
    {
      operator new();
    }

    v67 = *(a2 + 264);
    if (v67)
    {
      sub_100154A00(v66, v67);
      v36 = *(a2 + 304);
      if ((v36 & 0x1000) != 0)
      {
        goto LABEL_178;
      }
    }

    else
    {
      sub_100154A00(v66, *(qword_10045E250 + 264));
      v36 = *(a2 + 304);
      if ((v36 & 0x1000) != 0)
      {
        goto LABEL_178;
      }
    }

LABEL_132:
    if ((v36 & 0x2000) == 0)
    {
      goto LABEL_133;
    }

LABEL_184:
    *(a1 + 304) |= 0x2000u;
    v70 = *(a1 + 280);
    if (!v70)
    {
      operator new();
    }

    v71 = *(a2 + 280);
    if (v71)
    {
      sub_100154DF0(v70, v71);
      if ((*(a2 + 304) & 0x4000) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }
    }

    else
    {
      sub_100154DF0(v70, *(qword_10045E250 + 280));
      if ((*(a2 + 304) & 0x4000) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }
    }

    goto LABEL_190;
  }

LABEL_147:
  *(a1 + 304) |= 0x400u;
  v60 = *(a1 + 256);
  if (!v60)
  {
    operator new();
  }

  v61 = *(a2 + 256);
  if (v61)
  {
    sub_100154918(v60, v61);
    v36 = *(a2 + 304);
    if ((v36 & 0x800) != 0)
    {
      goto LABEL_171;
    }
  }

  else
  {
    sub_100154918(v60, *(qword_10045E250 + 256));
    v36 = *(a2 + 304);
    if ((v36 & 0x800) != 0)
    {
      goto LABEL_171;
    }
  }

LABEL_131:
  if ((v36 & 0x1000) == 0)
  {
    goto LABEL_132;
  }

LABEL_178:
  *(a1 + 304) |= 0x1000u;
  v68 = *(a1 + 272);
  if (!v68)
  {
    operator new();
  }

  v69 = *(a2 + 272);
  if (v69)
  {
    sub_100154B50(v68, v69);
    v36 = *(a2 + 304);
    if ((v36 & 0x2000) != 0)
    {
      goto LABEL_184;
    }
  }

  else
  {
    sub_100154B50(v68, *(qword_10045E250 + 272));
    v36 = *(a2 + 304);
    if ((v36 & 0x2000) != 0)
    {
      goto LABEL_184;
    }
  }

LABEL_133:
  if ((v36 & 0x4000) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

LABEL_190:
  *(a1 + 304) |= 0x4000u;
  v72 = *(a1 + 288);
  if (!v72)
  {
    operator new();
  }

  v73 = *(a2 + 288);
  if (!v73)
  {
    v73 = *(qword_10045E250 + 288);
  }

  sub_100154F20(v72, v73);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}