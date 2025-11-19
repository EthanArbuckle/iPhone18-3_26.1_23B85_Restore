uint64_t sub_10007AE4C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_24;
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v5 = *(a1 + 16);
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
    v3 = *(a1 + 36);
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
    v12 = *(a1 + 24);
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
  v18 = *(a1 + 8);
  if (v18 && *v18 != v18[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 32) = v4;
  return v4;
}

uint64_t sub_10007AF60(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10007A6C8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10007B034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007B04C(uint64_t result, uint64_t a2)
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

uint64_t sub_10007B0E0()
{
  v0 = qword_1009ED5C8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100077CB0;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED460;
}

void sub_10007B174(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007B188(uint64_t a1)
{
  *a1 = off_10098D350;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return a1;
}

uint64_t sub_10007B1EC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 40);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 16);
    *(a1 + 40) |= 1u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 40);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 24);
  *(a1 + 40) |= 2u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 40);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = *(a2 + 25);
  *(a1 + 40) |= 4u;
  *(a1 + 25) = v10;
  v4 = *(a2 + 40);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = *(a2 + 26);
  *(a1 + 40) |= 8u;
  *(a1 + 26) = v11;
  v4 = *(a2 + 40);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v13 = *(a2 + 28);
    *(a1 + 40) |= 0x20u;
    *(a1 + 28) = v13;
    v4 = *(a2 + 40);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_23:
  v12 = *(a2 + 27);
  *(a1 + 40) |= 0x10u;
  *(a1 + 27) = v12;
  v4 = *(a2 + 40);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_25:
  v14 = *(a2 + 29);
  *(a1 + 40) |= 0x40u;
  *(a1 + 29) = v14;
  v4 = *(a2 + 40);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 30);
    *(a1 + 40) |= 0x80u;
    *(a1 + 30) = v5;
    v4 = *(a2 + 40);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v4 & 0x100) == 0)
  {
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_16;
    }

LABEL_28:
    v16 = *(a2 + 32);
    *(a1 + 40) |= 0x200u;
    *(a1 + 32) = v16;
    if ((*(a2 + 40) & 0x400) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_17;
  }

  v15 = *(a2 + 31);
  *(a1 + 40) |= 0x100u;
  *(a1 + 31) = v15;
  v4 = *(a2 + 40);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_28;
  }

LABEL_16:
  if ((v4 & 0x400) != 0)
  {
LABEL_17:
    v6 = *(a2 + 33);
    *(a1 + 40) |= 0x400u;
    *(a1 + 33) = v6;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10007B3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007B3F0(uint64_t a1)
{
  *a1 = off_10098D350;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10007B444(uint64_t a1)
{
  *a1 = off_10098D350;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10007B518(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    *(a1 + 23) = 0;
    *(a1 + 16) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 31) = 0;
    *(a1 + 33) = 0;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 8) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10007B550(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
            if (v8 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_47;
            }

            v14 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_33;
          }

          if (v9 != 1)
          {
            goto LABEL_47;
          }

          *v43 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v43) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 16) = *v43;
          *(a1 + 40) |= 1u;
          v15 = *(this + 1);
          v10 = *(this + 2);
          if (v15 < v10 && *v15 == 16)
          {
            v14 = v15 + 1;
            *(this + 1) = v14;
LABEL_33:
            v43[0] = 0;
            if (v14 >= v10 || (v16 = *v14, (v16 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v43);
              if (!result)
              {
                return result;
              }

              v16 = v43[0];
              v17 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              v17 = v14 + 1;
              *(this + 1) = v17;
            }

            *(a1 + 24) = v16 != 0;
            *(a1 + 40) |= 2u;
            if (v17 < v10 && *v17 == 24)
            {
              v21 = v17 + 1;
              *(this + 1) = v21;
LABEL_56:
              v43[0] = 0;
              if (v21 >= v10 || (v25 = *v21, (v25 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v43);
                if (!result)
                {
                  return result;
                }

                v25 = v43[0];
                v26 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                v26 = v21 + 1;
                *(this + 1) = v26;
              }

              *(a1 + 25) = v25 != 0;
              *(a1 + 40) |= 4u;
              if (v26 < v10 && *v26 == 32)
              {
                v18 = v26 + 1;
                *(this + 1) = v18;
                goto LABEL_64;
              }
            }
          }
        }

        else
        {
          if (v8 == 3)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_47;
            }

            v21 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_56;
          }

          if (v8 != 4)
          {
            if (v8 != 5 || (TagFallback & 7) != 0)
            {
              goto LABEL_47;
            }

            v12 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_72;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_47;
          }

          v18 = *(this + 1);
          v10 = *(this + 2);
LABEL_64:
          v43[0] = 0;
          if (v18 >= v10 || (v27 = *v18, (v27 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v43);
            if (!result)
            {
              return result;
            }

            v27 = v43[0];
            v28 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            v28 = v18 + 1;
            *(this + 1) = v28;
          }

          *(a1 + 26) = v27 != 0;
          *(a1 + 40) |= 8u;
          if (v28 < v10 && *v28 == 40)
          {
            v12 = v28 + 1;
            *(this + 1) = v12;
LABEL_72:
            v43[0] = 0;
            if (v12 >= v10 || (v29 = *v12, (v29 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v43);
              if (!result)
              {
                return result;
              }

              v29 = v43[0];
              v30 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              v30 = v12 + 1;
              *(this + 1) = v30;
            }

            *(a1 + 27) = v29 != 0;
            *(a1 + 40) |= 0x10u;
            if (v30 < v10 && *v30 == 48)
            {
              v22 = v30 + 1;
              *(this + 1) = v22;
LABEL_80:
              v43[0] = 0;
              if (v22 >= v10 || (v31 = *v22, (v31 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v43);
                if (!result)
                {
                  return result;
                }

                v31 = v43[0];
                v32 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                v32 = v22 + 1;
                *(this + 1) = v32;
              }

              *(a1 + 28) = v31 != 0;
              *(a1 + 40) |= 0x20u;
              if (v32 < v10 && *v32 == 56)
              {
                v19 = v32 + 1;
                *(this + 1) = v19;
                goto LABEL_88;
              }
            }
          }
        }
      }

      if (TagFallback >> 3 > 8)
      {
        if (v8 == 9)
        {
          if ((TagFallback & 7) == 0)
          {
            v23 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_104;
          }
        }

        else if (v8 == 10)
        {
          if ((TagFallback & 7) == 0)
          {
            v20 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_112;
          }
        }

        else if (v8 == 11 && (TagFallback & 7) == 0)
        {
          v13 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_120;
        }

        goto LABEL_47;
      }

      if (v8 == 6)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v22 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_80;
      }

      if (v8 != 7)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_47;
      }

      v19 = *(this + 1);
      v10 = *(this + 2);
LABEL_88:
      v43[0] = 0;
      if (v19 >= v10 || (v33 = *v19, (v33 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v43);
        if (!result)
        {
          return result;
        }

        v33 = v43[0];
        v34 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        v34 = v19 + 1;
        *(this + 1) = v34;
      }

      *(a1 + 29) = v33 != 0;
      *(a1 + 40) |= 0x40u;
      if (v34 < v10 && *v34 == 64)
      {
        v11 = v34 + 1;
        *(this + 1) = v11;
LABEL_96:
        v43[0] = 0;
        if (v11 >= v10 || (v35 = *v11, (v35 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v43);
          if (!result)
          {
            return result;
          }

          v35 = v43[0];
          v36 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          v36 = v11 + 1;
          *(this + 1) = v36;
        }

        *(a1 + 30) = v35 != 0;
        *(a1 + 40) |= 0x80u;
        if (v36 < v10 && *v36 == 72)
        {
          v23 = v36 + 1;
          *(this + 1) = v23;
LABEL_104:
          v43[0] = 0;
          if (v23 >= v10 || (v37 = *v23, (v37 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v43);
            if (!result)
            {
              return result;
            }

            v37 = v43[0];
            v38 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            v38 = v23 + 1;
            *(this + 1) = v38;
          }

          *(a1 + 31) = v37 != 0;
          *(a1 + 40) |= 0x100u;
          if (v38 < v10 && *v38 == 80)
          {
            v20 = v38 + 1;
            *(this + 1) = v20;
LABEL_112:
            v43[0] = 0;
            if (v20 >= v10 || (v39 = *v20, (v39 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v43);
              if (!result)
              {
                return result;
              }

              v39 = v43[0];
              v40 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              v40 = v20 + 1;
              *(this + 1) = v40;
            }

            *(a1 + 32) = v39 != 0;
            *(a1 + 40) |= 0x200u;
            if (v40 < v10 && *v40 == 88)
            {
              v13 = v40 + 1;
              *(this + 1) = v13;
LABEL_120:
              v43[0] = 0;
              if (v13 >= v10 || (v41 = *v13, (v41 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v43);
                if (!result)
                {
                  return result;
                }

                v41 = v43[0];
                v42 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                v42 = v13 + 1;
                *(this + 1) = v42;
              }

              *(a1 + 33) = v41 != 0;
              *(a1 + 40) |= 0x400u;
              if (v42 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v8 == 8 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_96;
    }

LABEL_47:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_10007BB6C(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 25), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 26), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 27), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 28), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 29), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 30), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_28:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, *(v5 + 32), a2, a4);
    if ((*(v5 + 40) & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 31), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_28;
  }

LABEL_11:
  if ((v6 & 0x400) != 0)
  {
LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xB, *(v5 + 33), a2, a4);
  }

LABEL_13:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

uint64_t sub_10007BCFC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v9 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v9;
    a2 += 9;
    v3 = *(a1 + 40);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(a1 + 24);
  *a2 = 16;
  *(a2 + 1) = v10;
  a2 += 2;
  v3 = *(a1 + 40);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v11 = *(a1 + 25);
  *a2 = 24;
  *(a2 + 1) = v11;
  a2 += 2;
  v3 = *(a1 + 40);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = *(a1 + 26);
  *a2 = 32;
  *(a2 + 1) = v12;
  a2 += 2;
  v3 = *(a1 + 40);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = *(a1 + 27);
  *a2 = 40;
  *(a2 + 1) = v13;
  a2 += 2;
  v3 = *(a1 + 40);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v14 = *(a1 + 28);
  *a2 = 48;
  *(a2 + 1) = v14;
  a2 += 2;
  v3 = *(a1 + 40);
  if ((v3 & 0x40) == 0)
  {
LABEL_8:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v15 = *(a1 + 29);
  *a2 = 56;
  *(a2 + 1) = v15;
  a2 += 2;
  v3 = *(a1 + 40);
  if ((v3 & 0x80) == 0)
  {
LABEL_9:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v16 = *(a1 + 30);
  *a2 = 64;
  *(a2 + 1) = v16;
  a2 += 2;
  v3 = *(a1 + 40);
  if ((v3 & 0x100) == 0)
  {
LABEL_10:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_26:
    v18 = *(a1 + 32);
    *a2 = 80;
    *(a2 + 1) = v18;
    a2 += 2;
    if ((*(a1 + 40) & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  v17 = *(a1 + 31);
  *a2 = 72;
  *(a2 + 1) = v17;
  a2 += 2;
  v3 = *(a1 + 40);
  if ((v3 & 0x200) != 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  if ((v3 & 0x400) != 0)
  {
LABEL_12:
    v4 = *(a1 + 33);
    *a2 = 88;
    *(a2 + 1) = v4;
    a2 += 2;
  }

LABEL_13:
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

uint64_t sub_10007BEB4(_DWORD *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[10];
  if (v3)
  {
    v4.i64[0] = 0x200000002;
    v4.i64[1] = 0x200000002;
    v5 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v3), xmmword_10054B890), v4)) + ((v3 >> 1) & 2) + (v3 & 2) + ((v3 >> 6) & 2) + (((v3 << 31) >> 31) & 9);
  }

  else
  {
    v5 = 0;
  }

  v6 = (v3 & 0xFF00) == 0;
  v7 = ((v3 >> 8) & 2) + ((v3 >> 7) & 2) + ((v3 >> 9) & 2) + v5;
  if (v6)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  v9 = (a1 + 2);
  v10 = *(a1 + 1);
  if (v10 && *v10 != v10[1])
  {
    v8 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v9, a2) + v8;
  }

  a1[9] = v8;
  return v8;
}

uint64_t sub_10007BF8C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10007B1EC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10007C060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007C078(uint64_t result, uint64_t a2)
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

uint64_t sub_10007C10C()
{
  v0 = qword_1009ED5C8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100077CB0;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED470;
}

void sub_10007C1A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_10007C1B4(void *a1)
{
  *a1 = off_10098D400;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  return a1;
}

uint64_t sub_10007C210(_DWORD *a1, uint64_t a2)
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

void sub_10007C2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007C2E0(uint64_t a1)
{
  *a1 = off_10098D400;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10007C334(uint64_t a1)
{
  *a1 = off_10098D400;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10007C408(uint64_t a1)
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

uint64_t sub_10007C428(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v17 = 0;
      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v17);
        if (!result)
        {
          return result;
        }

        v10 = v17;
        v11 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        v11 = v9 + 1;
        *(this + 1) = v11;
      }

      a1[4] = v10;
      a1[7] |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(this + 1) = v12;
LABEL_22:
        v16 = 0;
        if (v12 >= v8 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v16);
          if (!result)
          {
            return result;
          }

          v13 = v16;
          v14 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(this + 1) = v14;
        }

        a1[5] = v13;
        a1[7] |= 2u;
        if (v14 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
      v12 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_22;
    }

LABEL_13:
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

uint64_t sub_10007C5C0(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 20), a2, a4);
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

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10007C64C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 28))
  {
    v4 = *(this + 4);
    *a2 = 8;
    if ((v4 & 0x80000000) != 0)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v4, a2 + 1, a3);
    }

    else
    {
      if (v4 <= 0x7F)
      {
        *(a2 + 1) = v4;
        a2 = (a2 + 2);
        goto LABEL_8;
      }

      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v4, a2 + 1, a3);
    }

    a2 = v5;
  }

LABEL_8:
  if ((*(this + 28) & 2) != 0)
  {
    v6 = *(this + 5);
    *a2 = 16;
    if ((v6 & 0x80000000) != 0)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v6, a2 + 1, a3);
    }

    else
    {
      if (v6 <= 0x7F)
      {
        *(a2 + 1) = v6;
        a2 = (a2 + 2);
        goto LABEL_15;
      }

      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2 + 1, a3);
    }

    a2 = v7;
  }

LABEL_15:
  v10 = *(this + 1);
  v9 = (this + 8);
  v8 = v10;
  if (!v10 || *v8 == v8[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v9, a2, a3);
}

uint64_t sub_10007C734(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 28);
  if (v3)
  {
    if ((*(a1 + 28) & 1) == 0)
    {
      v4 = 0;
      if ((*(a1 + 28) & 2) == 0)
      {
        goto LABEL_19;
      }

LABEL_13:
      v6 = *(a1 + 20);
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
      goto LABEL_19;
    }

    v5 = *(a1 + 16);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    if (v5 < 0x80)
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
    if ((*(a1 + 28) & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_19:
  v8 = *(a1 + 8);
  if (v8 && *v8 != v8[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 24) = v4;
  return v4;
}

uint64_t sub_10007C800(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10007C210(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10007C8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007C8EC(uint64_t result, uint64_t a2)
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

uint64_t sub_10007C980()
{
  v0 = qword_1009ED5C8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100077CB0;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED480;
}

void sub_10007CA14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007CA28(uint64_t a1)
{
  *a1 = off_10098D4B0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_10007CA90(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  sub_10007D888((a1 + 8), a2 + 32);
  LOBYTE(v4) = *(a2 + 68);
  if (v4)
  {
    if (*(a2 + 68))
    {
      v5 = *(a2 + 16);
      if (!sub_100079C8C(v5))
      {
        sub_10049D748();
      }

      a1[17] |= 1u;
      a1[4] = v5;
      v4 = *(a2 + 68);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 20);
      a1[17] |= 2u;
      a1[5] = v6;
      v4 = *(a2 + 68);
      if ((v4 & 4) == 0)
      {
LABEL_9:
        if ((v4 & 8) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_15;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(a2 + 24);
    a1[17] |= 4u;
    a1[6] = v7;
    v4 = *(a2 + 68);
    if ((v4 & 8) == 0)
    {
LABEL_10:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }

LABEL_15:
    v8 = *(a2 + 28);
    a1[17] |= 8u;
    a1[7] = v8;
    v4 = *(a2 + 68);
    if ((v4 & 0x10) == 0)
    {
LABEL_11:
      if ((v4 & 0x40) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
      }

LABEL_17:
      v10 = *(a2 + 60);
      if (!sub_100079CA8(v10))
      {
        sub_10049D774();
      }

      a1[17] |= 0x40u;
      a1[15] = v10;
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
    }

LABEL_16:
    v9 = *(a2 + 56);
    a1[17] |= 0x10u;
    a1[14] = v9;
    if ((*(a2 + 68) & 0x40) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
    }

    goto LABEL_17;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_10007CC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007CC18(uint64_t *a1)
{
  *a1 = off_10098D4B0;
  sub_100077C08(a1 + 4);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10007CC7C(uint64_t *a1)
{
  sub_10007CC18(a1);

  operator delete();
}

uint64_t sub_10007CD20(uint64_t a1)
{
  if (*(a1 + 68))
  {
    *(a1 + 56) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  result = sub_100077B98(a1 + 32);
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  *(v3 + 15) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return result;
}

uint64_t sub_10007CD84(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v45 = 0;
          v15 = *(this + 1);
          if (v15 >= *(this + 2) || (v16 = *v15, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v45);
            if (!result)
            {
              return result;
            }

            v16 = v45;
          }

          else
          {
            *(this + 1) = v15 + 1;
          }

          if (sub_100079C8C(v16))
          {
            a1[17] |= 1u;
            a1[4] = v16;
          }

          else
          {
            wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 2), 1, v16);
          }

          v20 = *(this + 1);
          v10 = *(this + 2);
          if (v20 < v10 && *v20 == 16)
          {
            v18 = v20 + 1;
            *(this + 1) = v18;
            goto LABEL_42;
          }
        }

        else
        {
          if (v8 != 2)
          {
            if (v8 != 3 || (TagFallback & 7) != 0)
            {
              goto LABEL_30;
            }

            v12 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_50;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v18 = *(this + 1);
          v10 = *(this + 2);
LABEL_42:
          if (v18 >= v10 || (v21 = *v18, v21 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
            if (!result)
            {
              return result;
            }

            v22 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            a1[5] = v21;
            v22 = v18 + 1;
            *(this + 1) = v22;
          }

          a1[17] |= 2u;
          if (v22 < v10 && *v22 == 24)
          {
            v12 = v22 + 1;
            *(this + 1) = v12;
LABEL_50:
            if (v12 >= v10 || (v23 = *v12, v23 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 6);
              if (!result)
              {
                return result;
              }

              v24 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              a1[6] = v23;
              v24 = v12 + 1;
              *(this + 1) = v24;
            }

            a1[17] |= 4u;
            if (v24 < v10 && *v24 == 32)
            {
              v17 = v24 + 1;
              *(this + 1) = v17;
              goto LABEL_58;
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
          goto LABEL_30;
        }

        v17 = *(this + 1);
        v10 = *(this + 2);
LABEL_58:
        if (v17 >= v10 || (v25 = *v17, v25 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 7);
          if (!result)
          {
            return result;
          }

          v26 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          a1[7] = v25;
          v26 = v17 + 1;
          *(this + 1) = v26;
        }

        a1[17] |= 8u;
        if (v26 < v10 && *v26 == 40)
        {
          v11 = v26 + 1;
          *(this + 1) = v11;
LABEL_66:
          if (v11 >= v10 || (v27 = *v11, v27 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 14);
            if (!result)
            {
              return result;
            }

            v28 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            a1[14] = v27;
            v28 = v11 + 1;
            *(this + 1) = v28;
          }

          a1[17] |= 0x10u;
          if (v28 < v10 && *v28 == 50)
          {
LABEL_73:
            *(this + 1) = v28 + 1;
            goto LABEL_74;
          }
        }
      }

      else
      {
        if (v8 == 5 && (TagFallback & 7) == 0)
        {
          v11 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_66;
        }

LABEL_30:
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

    if (v8 != 6)
    {
      if (v8 == 7 && (TagFallback & 7) == 0)
      {
        v14 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_92;
      }

      goto LABEL_30;
    }

    if (v9 != 2)
    {
      goto LABEL_30;
    }

LABEL_74:
    v29 = a1[11];
    v30 = a1[10];
    if (v30 >= v29)
    {
      if (v29 == a1[12])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 8), v29 + 1);
        v29 = a1[11];
      }

      a1[11] = v29 + 1;
      sub_10009094C();
    }

    v31 = *(a1 + 4);
    a1[10] = v30 + 1;
    v32 = *(v31 + 8 * v30);
    v46 = 0;
    v33 = *(this + 1);
    if (v33 >= *(this + 2) || *v33 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v46))
      {
        return 0;
      }
    }

    else
    {
      v46 = *v33;
      *(this + 1) = v33 + 1;
    }

    v34 = *(this + 14);
    v35 = *(this + 15);
    *(this + 14) = v34 + 1;
    if (v34 >= v35)
    {
      return 0;
    }

    v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v46);
    if (!sub_10007C428(v32, this, v37, v38) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v36);
    v39 = *(this + 14);
    v40 = __OFSUB__(v39, 1);
    v41 = v39 - 1;
    if (v41 < 0 == v40)
    {
      *(this + 14) = v41;
    }

    v28 = *(this + 1);
    v13 = *(this + 2);
    if (v28 < v13)
    {
      v42 = *v28;
      if (v42 == 50)
      {
        goto LABEL_73;
      }

      if (v42 == 56)
      {
        v14 = v28 + 1;
        *(this + 1) = v14;
LABEL_92:
        v44 = 0;
        if (v14 >= v13 || (v43 = *v14, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44);
          if (!result)
          {
            return result;
          }

          v43 = v44;
        }

        else
        {
          *(this + 1) = v14 + 1;
        }

        if (sub_100079CA8(v43))
        {
          a1[17] |= 0x40u;
          a1[15] = v43;
        }

        else
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 2), 7, v43);
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

uint64_t sub_10007D268(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 68);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 68);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 20), a2, a4);
  v6 = *(v5 + 68);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
  if ((*(v5 + 68) & 0x10) != 0)
  {
LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 56), a2, a4);
  }

LABEL_7:
  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, *(*(v5 + 32) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if ((*(v5 + 68) & 0x40) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(7, *(v5 + 60), a2, a4);
  }

  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10007D3A8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 68))
  {
    v5 = *(this + 4);
    *a2 = 8;
    v6 = a2 + 1;
    if ((v5 & 0x80000000) != 0)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v5, v6, a3);
    }

    else
    {
      if (v5 <= 0x7F)
      {
        *(v3 + 1) = v5;
        v3 = (v3 + 2);
        goto LABEL_8;
      }

      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, v6, a3);
    }

    v3 = v7;
  }

LABEL_8:
  if ((*(this + 68) & 2) != 0)
  {
    v8 = *(this + 5);
    *v3 = 16;
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

  if ((*(this + 68) & 4) != 0)
  {
    v9 = *(this + 6);
    *v3 = 24;
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

  if ((*(this + 68) & 8) != 0)
  {
    v10 = *(this + 7);
    *v3 = 32;
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

  if ((*(this + 68) & 0x10) != 0)
  {
    v11 = *(this + 14);
    *v3 = 40;
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

  if (*(this + 10) >= 1)
  {
    v12 = 0;
    do
    {
      v13 = *(*(this + 4) + 8 * v12);
      *v3 = 50;
      v14 = v13[6];
      if (v14 > 0x7F)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v3 + 1, a3);
      }

      else
      {
        *(v3 + 1) = v14;
        v15 = (v3 + 2);
      }

      v3 = sub_10007C64C(v13, v15, a3);
      ++v12;
    }

    while (v12 < *(this + 10));
  }

  if ((*(this + 68) & 0x40) != 0)
  {
    v16 = *(this + 15);
    *v3 = 56;
    v17 = v3 + 1;
    if ((v16 & 0x80000000) != 0)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v16, v17, a3);
    }

    else
    {
      if (v16 <= 0x7F)
      {
        *(v3 + 1) = v16;
        v3 = (v3 + 2);
        goto LABEL_37;
      }

      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v17, a3);
    }

    v3 = v18;
  }

LABEL_37:
  v21 = *(this + 1);
  v20 = (this + 8);
  v19 = v21;
  if (!v21 || *v19 == v19[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v20, v3, a3);
}

uint64_t sub_10007D5C4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 68);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_40;
  }

  if (*(a1 + 68))
  {
    v5 = *(a1 + 16);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 68);
      if ((v3 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 68) & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  v6 = *(a1 + 20);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 68);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_17:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 24);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(a1 + 68);
    }

    else
    {
      v9 = 2;
    }

    v4 += v9;
    if ((v3 & 8) == 0)
    {
LABEL_19:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_30;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_19;
  }

  v10 = *(a1 + 28);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v3 = *(a1 + 68);
  }

  else
  {
    v11 = 2;
  }

  v4 += v11;
  if ((v3 & 0x10) == 0)
  {
LABEL_20:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

LABEL_30:
  v12 = *(a1 + 56);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(a1 + 68);
  }

  else
  {
    v13 = 2;
  }

  v4 += v13;
  if ((v3 & 0x40) != 0)
  {
LABEL_34:
    v14 = *(a1 + 60);
    if ((v14 & 0x80000000) != 0)
    {
      v15 = 11;
    }

    else if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    }

    else
    {
      v15 = 2;
    }

    v4 += v15;
  }

LABEL_40:
  v16 = *(a1 + 40);
  v17 = (v16 + v4);
  if (v16 >= 1)
  {
    v18 = 0;
    do
    {
      v19 = sub_10007C734(*(*(a1 + 32) + 8 * v18), a2);
      v20 = v19;
      if (v19 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
      }

      else
      {
        v21 = 1;
      }

      v17 = (v20 + v17 + v21);
      ++v18;
    }

    while (v18 < *(a1 + 40));
  }

  v22 = *(a1 + 8);
  if (v22 && *v22 != v22[1])
  {
    v17 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v17;
  }

  *(a1 + 64) = v17;
  return v17;
}

uint64_t sub_10007D79C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10007CA90(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10007D870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007D888(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_10009094C();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_10007C210(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_10007D9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007D9C8(uint64_t result, uint64_t a2)
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

uint64_t sub_10007DA5C()
{
  v0 = qword_1009ED5C8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100077CB0;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED490;
}

void sub_10007DAF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_10007DB04(void *a1)
{
  *a1 = off_10098D560;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_10007DB64(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 24);
      if (v5 >= 6)
      {
        sub_10049D7A0();
      }

      *(a1 + 36) |= 1u;
      *(a1 + 24) = v5;
      v4 = *(a2 + 36);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 16);
      *(a1 + 36) |= 2u;
      *(a1 + 16) = v6;
      v4 = *(a2 + 36);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 28);
      *(a1 + 36) |= 4u;
      *(a1 + 28) = v7;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10007DC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007DC5C(uint64_t a1)
{
  *a1 = off_10098D560;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10007DCB0(uint64_t a1)
{
  *a1 = off_10098D560;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10007DD84(uint64_t a1)
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

uint64_t sub_10007DDA4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
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
        if ((TagFallback & 7) == 0)
        {
          v13 = *(this + 1);
          v12 = *(this + 2);
          goto LABEL_32;
        }

        goto LABEL_16;
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v19 = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v19);
        if (!result)
        {
          return result;
        }

        v11 = v19;
      }

      else
      {
        *(this + 1) = v10 + 1;
      }

      if (v11 > 5)
      {
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 1, v11);
      }

      else
      {
        *(a1 + 36) |= 1u;
        *(a1 + 24) = v11;
      }

      v15 = *(this + 1);
      if (v15 < *(this + 2) && *v15 == 17)
      {
        *(this + 1) = v15 + 1;
LABEL_28:
        v20 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v20) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v20;
        *(a1 + 36) |= 2u;
        v16 = *(this + 1);
        v12 = *(this + 2);
        if (v16 < v12 && *v16 == 24)
        {
          v13 = v16 + 1;
          *(this + 1) = v13;
LABEL_32:
          if (v13 >= v12 || (v17 = *v13, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
            if (!result)
            {
              return result;
            }

            v18 = *(this + 1);
            v12 = *(this + 2);
          }

          else
          {
            *(a1 + 28) = v17;
            v18 = v13 + 1;
            *(this + 1) = v18;
          }

          *(a1 + 36) |= 4u;
          if (v18 == v12 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
      goto LABEL_28;
    }

LABEL_16:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_10007DFAC(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
    if ((*(v5 + 36) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 24), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v6 & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 28), a2, a4);
  }

LABEL_5:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

_BYTE *sub_10007E05C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3)
{
  if (*(this + 36))
  {
    v4 = *(this + 6);
    *a2 = 8;
    if ((v4 & 0x80000000) != 0)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v4, (a2 + 1), a3);
    }

    else
    {
      if (v4 <= 0x7F)
      {
        a2[1] = v4;
        a2 += 2;
        goto LABEL_8;
      }

      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v4, a2 + 1, a3);
    }

    a2 = v5;
  }

LABEL_8:
  v6 = *(this + 9);
  if ((v6 & 2) != 0)
  {
    v7 = *(this + 2);
    *a2 = 17;
    *(a2 + 1) = v7;
    a2 += 9;
    v6 = *(this + 9);
  }

  if ((v6 & 4) != 0)
  {
    v8 = *(this + 7);
    *a2 = 24;
    if (v8 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, a2 + 1, a3);
    }

    else
    {
      a2[1] = v8;
      a2 += 2;
    }
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

uint64_t sub_10007E188(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (v3)
  {
    if (*(a1 + 36))
    {
      v6 = *(a1 + 24);
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
      v7 = *(a1 + 28);
      if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      }

      else
      {
        v8 = 2;
      }

      v5 = (v8 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = *(a1 + 8);
  if (v9 && *v9 != v9[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 32) = v5;
  return v5;
}

uint64_t sub_10007E248(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10007DB64(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10007E31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007E334(uint64_t result, uint64_t a2)
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

uint64_t sub_10007E3C8()
{
  v0 = qword_1009ED5C8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100077CB0;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED4A0;
}

void sub_10007E45C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007E470(uint64_t a1)
{
  *a1 = off_10098D610;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_10007E4D8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(a2 + 40);
  if (v4)
  {
    sub_100077844((a1 + 32), *(a1 + 40) + v4);
    memcpy((*(a1 + 32) + 4 * *(a1 + 40)), *(a2 + 32), 4 * *(a2 + 40));
    *(a1 + 40) += *(a2 + 40);
  }

  v5 = *(a2 + 56);
  if (v5)
  {
    sub_100077844((a1 + 48), *(a1 + 56) + v5);
    memcpy((*(a1 + 48) + 4 * *(a1 + 56)), *(a2 + 48), 4 * *(a2 + 56));
    *(a1 + 56) += *(a2 + 56);
  }

  v6 = *(a2 + 80);
  if (v6)
  {
    sub_100077844((a1 + 72), *(a1 + 80) + v6);
    memcpy((*(a1 + 72) + 4 * *(a1 + 80)), *(a2 + 72), 4 * *(a2 + 80));
    *(a1 + 80) += *(a2 + 80);
  }

  v7 = *(a2 + 96);
  if (v7)
  {
    sub_100077844((a1 + 88), *(a1 + 96) + v7);
    memcpy((*(a1 + 88) + 4 * *(a1 + 96)), *(a2 + 88), 4 * *(a2 + 96));
    *(a1 + 96) += *(a2 + 96);
  }

  v8 = *(a2 + 108);
  if (!v8)
  {
    goto LABEL_20;
  }

  if (v8)
  {
    v9 = *(a2 + 16);
    if (!sub_100079C8C(v9))
    {
      sub_10049D7CC();
    }

    *(a1 + 108) |= 1u;
    *(a1 + 16) = v9;
    v8 = *(a2 + 108);
  }

  if ((v8 & 2) == 0)
  {
    if ((v8 & 4) == 0)
    {
      goto LABEL_17;
    }

LABEL_25:
    v14 = *(a2 + 24);
    *(a1 + 108) |= 4u;
    *(a1 + 24) = v14;
    v8 = *(a2 + 108);
    if ((v8 & 8) == 0)
    {
LABEL_18:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    goto LABEL_26;
  }

  v13 = *(a2 + 20);
  *(a1 + 108) |= 2u;
  *(a1 + 20) = v13;
  v8 = *(a2 + 108);
  if ((v8 & 4) != 0)
  {
    goto LABEL_25;
  }

LABEL_17:
  if ((v8 & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_26:
  v15 = *(a2 + 28);
  *(a1 + 108) |= 8u;
  *(a1 + 28) = v15;
  v8 = *(a2 + 108);
  if ((v8 & 0x10) != 0)
  {
LABEL_19:
    v10 = *(a2 + 64);
    *(a1 + 108) |= 0x10u;
    *(a1 + 64) = v10;
    v8 = *(a2 + 108);
  }

LABEL_20:
  if ((v8 & 0x200) != 0)
  {
    v11 = *(a2 + 68);
    if (!sub_100079CA8(v11))
    {
      sub_10049D7F8();
    }

    *(a1 + 108) |= 0x200u;
    *(a1 + 68) = v11;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10007E74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007E764(void *a1)
{
  *a1 = off_10098D610;
  if (a1[11])
  {
    operator delete[]();
  }

  if (a1[9])
  {
    operator delete[]();
  }

  if (a1[6])
  {
    operator delete[]();
  }

  if (a1[4])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10007E810(void *a1)
{
  sub_10007E764(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10007E8B4(uint64_t a1)
{
  v1 = *(a1 + 108);
  if (v1)
  {
    *(a1 + 64) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  if ((v1 & 0x1FE00) != 0)
  {
    *(a1 + 68) = 0;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 8) = 0;
  *(result + 12) = 0;
  *(result + 18) = 0;
  *(result + 22) = 0;
  *(result + 25) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10007E8F8(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 <= 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 7)
          {
            if (v8 != 6)
            {
              if (v8 == 7)
              {
                if ((TagFallback & 7) == 0)
                {
                  v19 = *(this + 1);
                  v10 = *(this + 2);
                  goto LABEL_119;
                }

                if (v9 == 2)
                {
                  result = sub_100072F98(this, a1 + 48);
                  if (!result)
                  {
                    return result;
                  }

                  goto LABEL_138;
                }
              }

              goto LABEL_47;
            }

            if ((TagFallback & 7) != 0)
            {
              if (v9 == 2)
              {
                result = sub_100072F98(this, a1 + 32);
                if (!result)
                {
                  return result;
                }

                goto LABEL_116;
              }

              goto LABEL_47;
            }

            v20 = *(this + 1);
            v10 = *(this + 2);
            while (1)
            {
              v77[0] = 0;
              if (v20 >= v10 || (v33 = *v20, (v33 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v77);
                if (!result)
                {
                  return result;
                }

                v33 = v77[0];
              }

              else
              {
                *(this + 1) = v20 + 1;
              }

              v34 = *(a1 + 40);
              if (v34 == *(a1 + 44))
              {
                sub_100077844((a1 + 32), v34 + 1);
                v34 = *(a1 + 40);
              }

              v35 = *(a1 + 32);
              *(a1 + 40) = v34 + 1;
              *(v35 + 4 * v34) = v33;
              v36 = *(a1 + 44) - *(a1 + 40);
              if (v36 >= 1)
              {
                v37 = v36 + 1;
                do
                {
                  v38 = *(this + 1);
                  v39 = *(this + 2);
                  if (v38 >= v39 || *v38 != 48)
                  {
                    break;
                  }

                  *(this + 1) = v38 + 1;
                  v77[0] = 0;
                  if ((v38 + 1) >= v39 || (v40 = v38[1], (v40 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v77);
                    if (!result)
                    {
                      return result;
                    }

                    v40 = v77[0];
                  }

                  else
                  {
                    *(this + 1) = v38 + 2;
                  }

                  v41 = *(a1 + 40);
                  if (v41 >= *(a1 + 44))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v77);
                    v41 = *(a1 + 40);
                  }

                  v42 = *(a1 + 32);
                  *(a1 + 40) = v41 + 1;
                  *(v42 + 4 * v41) = v40;
                  --v37;
                }

                while (v37 > 1);
              }

LABEL_116:
              v31 = *(this + 1);
              v10 = *(this + 2);
              if (v31 >= v10)
              {
                break;
              }

              v32 = *v31;
              if (v32 == 56)
              {
                while (1)
                {
                  v19 = (v31 + 1);
                  *(this + 1) = v19;
LABEL_119:
                  v77[0] = 0;
                  if (v19 >= v10 || (v43 = *v19, (v43 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v77);
                    if (!result)
                    {
                      return result;
                    }

                    v43 = v77[0];
                  }

                  else
                  {
                    *(this + 1) = v19 + 1;
                  }

                  v44 = *(a1 + 56);
                  if (v44 == *(a1 + 60))
                  {
                    sub_100077844((a1 + 48), v44 + 1);
                    v44 = *(a1 + 56);
                  }

                  v45 = *(a1 + 48);
                  *(a1 + 56) = v44 + 1;
                  *(v45 + 4 * v44) = v43;
                  v46 = *(a1 + 60) - *(a1 + 56);
                  if (v46 >= 1)
                  {
                    v47 = v46 + 1;
                    do
                    {
                      v48 = *(this + 1);
                      v49 = *(this + 2);
                      if (v48 >= v49 || *v48 != 56)
                      {
                        break;
                      }

                      *(this + 1) = v48 + 1;
                      v77[0] = 0;
                      if ((v48 + 1) >= v49 || (v50 = v48[1], (v50 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v77);
                        if (!result)
                        {
                          return result;
                        }

                        v50 = v77[0];
                      }

                      else
                      {
                        *(this + 1) = v48 + 2;
                      }

                      v51 = *(a1 + 56);
                      if (v51 >= *(a1 + 60))
                      {
                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v77);
                        v51 = *(a1 + 56);
                      }

                      v52 = *(a1 + 48);
                      *(a1 + 56) = v51 + 1;
                      *(v52 + 4 * v51) = v50;
                      --v47;
                    }

                    while (v47 > 1);
                  }

LABEL_138:
                  v31 = *(this + 1);
                  v10 = *(this + 2);
                  if (v31 >= v10)
                  {
                    goto LABEL_1;
                  }

                  v53 = *v31;
                  if (v53 == 64)
                  {
                    while (1)
                    {
                      v21 = (v31 + 1);
                      *(this + 1) = v21;
LABEL_143:
                      v77[0] = 0;
                      if (v21 >= v10 || (v54 = *v21, (v54 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v77);
                        if (!result)
                        {
                          return result;
                        }

                        v54 = v77[0];
                      }

                      else
                      {
                        *(this + 1) = v21 + 1;
                      }

                      v55 = *(a1 + 80);
                      if (v55 == *(a1 + 84))
                      {
                        sub_100077844((a1 + 72), v55 + 1);
                        v55 = *(a1 + 80);
                      }

                      v56 = *(a1 + 72);
                      *(a1 + 80) = v55 + 1;
                      *(v56 + 4 * v55) = v54;
                      v57 = *(a1 + 84) - *(a1 + 80);
                      if (v57 >= 1)
                      {
                        v58 = v57 + 1;
                        do
                        {
                          v59 = *(this + 1);
                          v60 = *(this + 2);
                          if (v59 >= v60 || *v59 != 64)
                          {
                            break;
                          }

                          *(this + 1) = v59 + 1;
                          v77[0] = 0;
                          if ((v59 + 1) >= v60 || (v61 = v59[1], (v61 & 0x80000000) != 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v77);
                            if (!result)
                            {
                              return result;
                            }

                            v61 = v77[0];
                          }

                          else
                          {
                            *(this + 1) = v59 + 2;
                          }

                          v62 = *(a1 + 80);
                          if (v62 >= *(a1 + 84))
                          {
                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v77);
                            v62 = *(a1 + 80);
                          }

                          v63 = *(a1 + 72);
                          *(a1 + 80) = v62 + 1;
                          *(v63 + 4 * v62) = v61;
                          --v58;
                        }

                        while (v58 > 1);
                      }

LABEL_162:
                      v31 = *(this + 1);
                      v10 = *(this + 2);
                      if (v31 >= v10)
                      {
                        goto LABEL_1;
                      }

                      v64 = *v31;
                      if (v64 == 72)
                      {
                        while (1)
                        {
                          v22 = (v31 + 1);
                          *(this + 1) = v22;
LABEL_167:
                          v77[0] = 0;
                          if (v22 >= v10 || (v65 = *v22, (v65 & 0x80000000) != 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v77);
                            if (!result)
                            {
                              return result;
                            }

                            v65 = v77[0];
                          }

                          else
                          {
                            *(this + 1) = v22 + 1;
                          }

                          v66 = *(a1 + 96);
                          if (v66 == *(a1 + 100))
                          {
                            sub_100077844((a1 + 88), v66 + 1);
                            v66 = *(a1 + 96);
                          }

                          v67 = *(a1 + 88);
                          *(a1 + 96) = v66 + 1;
                          *(v67 + 4 * v66) = v65;
                          v68 = *(a1 + 100) - *(a1 + 96);
                          if (v68 >= 1)
                          {
                            v69 = v68 + 1;
                            do
                            {
                              v70 = *(this + 1);
                              v71 = *(this + 2);
                              if (v70 >= v71 || *v70 != 72)
                              {
                                break;
                              }

                              *(this + 1) = v70 + 1;
                              v77[0] = 0;
                              if ((v70 + 1) >= v71 || (v72 = v70[1], (v72 & 0x80000000) != 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v77);
                                if (!result)
                                {
                                  return result;
                                }

                                v72 = v77[0];
                              }

                              else
                              {
                                *(this + 1) = v70 + 2;
                              }

                              v73 = *(a1 + 96);
                              if (v73 >= *(a1 + 100))
                              {
                                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v77);
                                v73 = *(a1 + 96);
                              }

                              v74 = *(a1 + 88);
                              *(a1 + 96) = v73 + 1;
                              *(v74 + 4 * v73) = v72;
                              --v69;
                            }

                            while (v69 > 1);
                          }

LABEL_186:
                          v31 = *(this + 1);
                          v10 = *(this + 2);
                          if (v31 >= v10)
                          {
                            goto LABEL_1;
                          }

                          v75 = *v31;
                          if (v75 == 80)
                          {
                            v12 = (v31 + 1);
                            *(this + 1) = v12;
                            goto LABEL_191;
                          }

                          if (v75 != 72)
                          {
                            goto LABEL_1;
                          }
                        }
                      }

                      if (v64 != 64)
                      {
                        goto LABEL_1;
                      }
                    }
                  }

                  if (v53 != 56)
                  {
                    goto LABEL_1;
                  }
                }
              }

LABEL_95:
              if (v32 != 48)
              {
                goto LABEL_1;
              }

              v20 = (v31 + 1);
              *(this + 1) = v20;
            }
          }

          else
          {
            if (v8 == 8)
            {
              if ((TagFallback & 7) == 0)
              {
                v21 = *(this + 1);
                v10 = *(this + 2);
                goto LABEL_143;
              }

              if (v9 == 2)
              {
                result = sub_100072F98(this, a1 + 72);
                if (!result)
                {
                  return result;
                }

                goto LABEL_162;
              }

              goto LABEL_47;
            }

            if (v8 == 9)
            {
              if ((TagFallback & 7) == 0)
              {
                v22 = *(this + 1);
                v10 = *(this + 2);
                goto LABEL_167;
              }

              if (v9 == 2)
              {
                result = sub_100072F98(this, a1 + 88);
                if (!result)
                {
                  return result;
                }

                goto LABEL_186;
              }

              goto LABEL_47;
            }

            if (v8 != 10 || (TagFallback & 7) != 0)
            {
              goto LABEL_47;
            }

            v12 = *(this + 1);
            v10 = *(this + 2);
LABEL_191:
            v77[0] = 0;
            if (v12 >= v10 || (v76 = *v12, v76 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v77);
              if (!result)
              {
                return result;
              }

              v76 = v77[0];
            }

            else
            {
              *(this + 1) = v12 + 1;
            }

            if (sub_100079CA8(v76))
            {
              *(a1 + 108) |= 0x200u;
              *(a1 + 68) = v76;
            }

            else
            {
              wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 10, v76);
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
          break;
        }

        if (v8 != 1)
        {
          if (v8 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_47;
          }

          v13 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_64;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v77[0] = 0;
        v15 = *(this + 1);
        if (v15 >= *(this + 2) || (v16 = *v15, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v77);
          if (!result)
          {
            return result;
          }

          v16 = v77[0];
        }

        else
        {
          *(this + 1) = v15 + 1;
        }

        if (sub_100079C8C(v16))
        {
          *(a1 + 108) |= 1u;
          *(a1 + 16) = v16;
        }

        else
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 1, v16);
        }

        v23 = *(this + 1);
        v10 = *(this + 2);
        if (v23 < v10 && *v23 == 16)
        {
          v13 = v23 + 1;
          *(this + 1) = v13;
LABEL_64:
          if (v13 >= v10 || (v24 = *v13, v24 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
            if (!result)
            {
              return result;
            }

            v25 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            *(a1 + 20) = v24;
            v25 = v13 + 1;
            *(this + 1) = v25;
          }

          *(a1 + 108) |= 2u;
          if (v25 < v10 && *v25 == 24)
          {
            v17 = v25 + 1;
            *(this + 1) = v17;
LABEL_72:
            if (v17 >= v10 || (v26 = *v17, v26 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
              if (!result)
              {
                return result;
              }

              v27 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 24) = v26;
              v27 = v17 + 1;
              *(this + 1) = v27;
            }

            *(a1 + 108) |= 4u;
            if (v27 < v10 && *v27 == 32)
            {
              v18 = v27 + 1;
              *(this + 1) = v18;
              goto LABEL_80;
            }
          }
        }
      }

      if (v8 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v17 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_72;
      }

      if (v8 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_47;
      }

      v18 = *(this + 1);
      v10 = *(this + 2);
LABEL_80:
      if (v18 >= v10 || (v28 = *v18, v28 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
        if (!result)
        {
          return result;
        }

        v29 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        *(a1 + 28) = v28;
        v29 = v18 + 1;
        *(this + 1) = v29;
      }

      *(a1 + 108) |= 8u;
      if (v29 < v10 && *v29 == 40)
      {
        v11 = v29 + 1;
        *(this + 1) = v11;
LABEL_88:
        if (v11 >= v10 || (v30 = *v11, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 64));
          if (!result)
          {
            return result;
          }

          v31 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 64) = v30;
          v31 = (v11 + 1);
          *(this + 1) = v31;
        }

        *(a1 + 108) |= 0x10u;
        if (v31 < v10)
        {
          v32 = *v31;
          goto LABEL_95;
        }
      }
    }

    if (v8 == 5 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_88;
    }

LABEL_47:
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

void sub_10007F2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007F2FC(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 108);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 108);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 20), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
  if ((*(v5 + 108) & 0x10) != 0)
  {
LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 64), a2, a4);
  }

LABEL_7:
  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, *(*(v5 + 32) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 56) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(*(v5 + 48) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 56));
  }

  if (*(v5 + 80) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, *(*(v5 + 72) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 80));
  }

  if (*(v5 + 96) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(9, *(*(v5 + 88) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 96));
  }

  if ((*(v5 + 109) & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 68), a2, a4);
  }

  v13 = *(v5 + 8);
  v12 = (v5 + 8);
  v11 = v13;
  if (v13 && *v11 != v11[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v12, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10007F4D8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 108))
  {
    v5 = *(this + 4);
    *a2 = 8;
    v6 = a2 + 1;
    if ((v5 & 0x80000000) != 0)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v5, v6, a3);
    }

    else
    {
      if (v5 <= 0x7F)
      {
        *(v3 + 1) = v5;
        v3 = (v3 + 2);
        goto LABEL_8;
      }

      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, v6, a3);
    }

    v3 = v7;
  }

LABEL_8:
  if ((*(this + 108) & 2) != 0)
  {
    v8 = *(this + 5);
    *v3 = 16;
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

  if ((*(this + 108) & 4) != 0)
  {
    v9 = *(this + 6);
    *v3 = 24;
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

  if ((*(this + 108) & 8) != 0)
  {
    v10 = *(this + 7);
    *v3 = 32;
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

  if ((*(this + 108) & 0x10) != 0)
  {
    v11 = *(this + 16);
    *v3 = 40;
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

  if (*(this + 10) >= 1)
  {
    v12 = 0;
    while (1)
    {
      v13 = *(*(this + 4) + 4 * v12);
      *v3 = 48;
      v14 = v3 + 1;
      if ((v13 & 0x80000000) != 0)
      {
        break;
      }

      if (v13 > 0x7F)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v14, a3);
        goto LABEL_31;
      }

      *(v3 + 1) = v13;
      v3 = (v3 + 2);
LABEL_32:
      if (++v12 >= *(this + 10))
      {
        goto LABEL_33;
      }
    }

    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v13, v14, a3);
LABEL_31:
    v3 = v15;
    goto LABEL_32;
  }

LABEL_33:
  if (*(this + 14) >= 1)
  {
    v16 = 0;
    while (1)
    {
      v17 = *(*(this + 6) + 4 * v16);
      *v3 = 56;
      v18 = v3 + 1;
      if ((v17 & 0x80000000) != 0)
      {
        break;
      }

      if (v17 > 0x7F)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v18, a3);
        goto LABEL_40;
      }

      *(v3 + 1) = v17;
      v3 = (v3 + 2);
LABEL_41:
      if (++v16 >= *(this + 14))
      {
        goto LABEL_42;
      }
    }

    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v17, v18, a3);
LABEL_40:
    v3 = v19;
    goto LABEL_41;
  }

LABEL_42:
  if (*(this + 20) >= 1)
  {
    v20 = 0;
    while (1)
    {
      v21 = *(*(this + 9) + 4 * v20);
      *v3 = 64;
      v22 = v3 + 1;
      if ((v21 & 0x80000000) != 0)
      {
        break;
      }

      if (v21 > 0x7F)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v22, a3);
        goto LABEL_49;
      }

      *(v3 + 1) = v21;
      v3 = (v3 + 2);
LABEL_50:
      if (++v20 >= *(this + 20))
      {
        goto LABEL_51;
      }
    }

    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v21, v22, a3);
LABEL_49:
    v3 = v23;
    goto LABEL_50;
  }

LABEL_51:
  if (*(this + 24) >= 1)
  {
    v24 = 0;
    while (1)
    {
      v25 = *(*(this + 11) + 4 * v24);
      *v3 = 72;
      v26 = v3 + 1;
      if ((v25 & 0x80000000) != 0)
      {
        break;
      }

      if (v25 > 0x7F)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v25, v26, a3);
        goto LABEL_58;
      }

      *(v3 + 1) = v25;
      v3 = (v3 + 2);
LABEL_59:
      if (++v24 >= *(this + 24))
      {
        goto LABEL_60;
      }
    }

    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v25, v26, a3);
LABEL_58:
    v3 = v27;
    goto LABEL_59;
  }

LABEL_60:
  if ((*(this + 109) & 2) != 0)
  {
    v28 = *(this + 17);
    *v3 = 80;
    v29 = v3 + 1;
    if ((v28 & 0x80000000) != 0)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v28, v29, a3);
    }

    else
    {
      if (v28 <= 0x7F)
      {
        *(v3 + 1) = v28;
        v3 = (v3 + 2);
        goto LABEL_67;
      }

      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v28, v29, a3);
    }

    v3 = v30;
  }

LABEL_67:
  v33 = *(this + 1);
  v32 = (this + 8);
  v31 = v33;
  if (!v33 || *v31 == v31[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v32, v3, a3);
}

uint64_t sub_10007F804(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 108);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

  if (v3)
  {
    v5 = *(a1 + 16);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 108);
      if ((v3 & 2) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }
  }

  v6 = *(a1 + 20);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 108);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_18:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 24);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(a1 + 108);
    }

    else
    {
      v9 = 2;
    }

    v4 += v9;
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_31;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v10 = *(a1 + 28);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v3 = *(a1 + 108);
  }

  else
  {
    v11 = 2;
  }

  v4 += v11;
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

LABEL_31:
  v12 = *(a1 + 64);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(a1 + 108);
  }

  else
  {
    v13 = 2;
  }

  v4 += v13;
  if ((v3 & 0x200) != 0)
  {
LABEL_35:
    v14 = *(a1 + 68);
    if ((v14 & 0x80000000) != 0)
    {
      v15 = 11;
    }

    else if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    }

    else
    {
      v15 = 2;
    }

    v4 += v15;
  }

LABEL_41:
  v16 = *(a1 + 40);
  if (v16 < 1)
  {
    v18 = 0;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *(*(a1 + 32) + 4 * v17);
      if ((v19 & 0x80000000) != 0)
      {
        v20 = 10;
      }

      else if (v19 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
        v16 = *(a1 + 40);
      }

      else
      {
        v20 = 1;
      }

      v18 += v20;
      ++v17;
    }

    while (v17 < v16);
  }

  v21 = *(a1 + 56);
  if (v21 < 1)
  {
    v23 = 0;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = *(*(a1 + 48) + 4 * v22);
      if ((v24 & 0x80000000) != 0)
      {
        v25 = 10;
      }

      else if (v24 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2);
        v21 = *(a1 + 56);
      }

      else
      {
        v25 = 1;
      }

      v23 += v25;
      ++v22;
    }

    while (v22 < v21);
  }

  v26 = *(a1 + 80);
  if (v26 < 1)
  {
    v28 = 0;
  }

  else
  {
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = *(*(a1 + 72) + 4 * v27);
      if ((v29 & 0x80000000) != 0)
      {
        v30 = 10;
      }

      else if (v29 >= 0x80)
      {
        v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2);
        v26 = *(a1 + 80);
      }

      else
      {
        v30 = 1;
      }

      v28 += v30;
      ++v27;
    }

    while (v27 < v26);
  }

  v31 = *(a1 + 96);
  if (v31 < 1)
  {
    v33 = 0;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    do
    {
      v34 = *(*(a1 + 88) + 4 * v32);
      if ((v34 & 0x80000000) != 0)
      {
        v35 = 10;
      }

      else if (v34 >= 0x80)
      {
        v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2);
        v31 = *(a1 + 96);
      }

      else
      {
        v35 = 1;
      }

      v33 += v35;
      ++v32;
    }

    while (v32 < v31);
  }

  v36 = (v18 + v4 + v16 + v23 + v21 + v28 + v26 + v33 + v31);
  v37 = *(a1 + 8);
  if (v37 && *v37 != v37[1])
  {
    v36 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v36;
  }

  *(a1 + 104) = v36;
  return v36;
}

uint64_t sub_10007FB28(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10007E4D8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10007FBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007FC14(uint64_t result, uint64_t a2)
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

uint64_t sub_10007FCA8()
{
  v0 = qword_1009ED5C8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100077CB0;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED4B0;
}

void sub_10007FD3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_10007FD50(void *a1)
{
  *a1 = off_10098D6C0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_10007FDB0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
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
      *(a1 + 36) |= 2u;
      v6 = *(a1 + 24);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 24);
      if (!v7)
      {
        v7 = *(qword_1009F9918 + 24);
      }

      sub_100079DC4(v6, v7);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10007FEE0(void *a1)
{
  *a1 = off_10098D6C0;
  if (qword_1009F9918 != a1)
  {
    v2 = a1[3];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10007FF78(void *a1)
{
  sub_10007FEE0(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10008001C(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 36);
  if (v2)
  {
    *(this + 2) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 3);
      if (this)
      {
        this = sub_100079FE4(this);
      }
    }
  }

  v4 = *(v1 + 1);
  v3 = (v1 + 8);
  *(v3 + 7) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return this;
}

uint64_t sub_100080084(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        v8 = TagFallback & 7;
        if (TagFallback >> 3 == 2)
        {
          break;
        }

        if (TagFallback >> 3 != 1 || v8 != 1)
        {
          goto LABEL_14;
        }

        v22 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v22) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v22;
        v9 = *(a1 + 36) | 1;
        *(a1 + 36) = v9;
        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 18)
        {
          *(this + 1) = v10 + 1;
          goto LABEL_18;
        }
      }

      if (v8 == 2)
      {
        break;
      }

LABEL_14:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
      {
        return 0;
      }
    }

    v9 = *(a1 + 36);
LABEL_18:
    *(a1 + 36) = v9 | 2;
    v11 = *(a1 + 24);
    if (!v11)
    {
      operator new();
    }

    v23 = 0;
    v12 = *(this + 1);
    if (v12 >= *(this + 2) || *v12 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23))
      {
        return 0;
      }
    }

    else
    {
      v23 = *v12;
      *(this + 1) = v12 + 1;
    }

    v13 = *(this + 14);
    v14 = *(this + 15);
    *(this + 14) = v13 + 1;
    if (v13 >= v14)
    {
      return 0;
    }

    v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v23);
    if (!sub_10007A004(v11, this, v16, v17) || *(this + 36) != 1)
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

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_1000802B4(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 36);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 24);
    if (!v7)
    {
      v7 = *(qword_1009F9918 + 24);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v7, a2, a4);
  }

  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100080350(wireless_diagnostics::google::protobuf::internal::WireFormat *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v4 = *(this + 9);
  if (v4)
  {
    v5 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v5;
    a2 = (a2 + 9);
    v4 = *(this + 9);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(this + 3);
    if (!v6)
    {
      v6 = *(qword_1009F9918 + 24);
    }

    *a2 = 18;
    v7 = v6[6];
    if (v7 > 0x7F)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v7;
      v8 = (a2 + 2);
    }

    a2 = sub_10007A26C(v6, v8, a3);
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

uint64_t sub_100080454(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 36);
  if (*(a1 + 36))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v5 = *(a1 + 24);
      if (!v5)
      {
        v5 = *(qword_1009F9918 + 24);
      }

      v6 = sub_10007A354(v5, a2);
      v7 = v6;
      if (v6 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
      }

      else
      {
        v8 = 1;
      }

      v4 = (v4 + v7 + v8 + 1);
    }
  }

  else
  {
    v4 = 0;
  }

  v9 = *(a1 + 8);
  if (v9 && *v9 != v9[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 32) = v4;
  return v4;
}

uint64_t sub_100080504(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10007FDB0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000805D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000805F0(uint64_t result, uint64_t a2)
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

uint64_t sub_100080684()
{
  v0 = qword_1009ED5C8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100077CB0;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED4C0;
}

void sub_100080718(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008072C(uint64_t a1)
{
  *a1 = off_10098D770;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  return a1;
}

uint64_t sub_100080790(uint64_t a1, uint64_t a2)
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
    sub_100077844((a1 + 16), *(a1 + 24) + v4);
    memcpy((*(a1 + 16) + 4 * *(a1 + 24)), *(a2 + 16), 4 * *(a2 + 24));
    *(a1 + 24) += *(a2 + 24);
  }

  if (*(a2 + 40))
  {
    v5 = *(a2 + 32);
    if (!sub_100079CA8(v5))
    {
      sub_10049D824();
    }

    *(a1 + 40) |= 1u;
    *(a1 + 32) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100080884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10008089C(void *a1)
{
  *a1 = off_10098D770;
  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100080914(void *a1)
{
  sub_10008089C(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000809B8(uint64_t a1)
{
  if (*(a1 + 40))
  {
    *(a1 + 32) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 8) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000809DC(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        v8 = TagFallback & 7;
        if (TagFallback >> 3 == 2)
        {
          break;
        }

        if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_14;
        }

        v24[0] = 0;
        v9 = *(this + 1);
        if (v9 >= *(this + 2) || (v10 = *v9, v10 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v24);
          if (!result)
          {
            return result;
          }

          v10 = v24[0];
        }

        else
        {
          *(this + 1) = v9 + 1;
        }

        if (sub_100079CA8(v10))
        {
          *(a1 + 40) |= 1u;
          *(a1 + 32) = v10;
        }

        else
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 1, v10);
        }

        v12 = *(this + 1);
        if (v12 < *(this + 2) && *v12 == 21)
        {
          goto LABEL_29;
        }
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 == 5)
      {
        goto LABEL_30;
      }

LABEL_14:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
      {
        return 0;
      }
    }

    result = sub_100063628(this, a1 + 16);
    if (!result)
    {
      return result;
    }

LABEL_27:
    v12 = *(this + 1);
    v13 = *(this + 2);
    if (v12 < v13 && *v12 == 21)
    {
      break;
    }

    if (v12 == v13 && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }

LABEL_29:
  *(this + 1) = v12 + 1;
LABEL_30:
  v24[0] = 0;
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v24))
  {
    v14 = v24[0];
    v15 = *(a1 + 24);
    if (v15 == *(a1 + 28))
    {
      sub_100077844((a1 + 16), v15 + 1);
      v15 = *(a1 + 24);
    }

    v16 = *(a1 + 16);
    v17 = v15 + 1;
    *(a1 + 24) = v15 + 1;
    *(v16 + 4 * v15) = v14;
    v18 = *(this + 1);
    v19 = *(this + 4) - v18;
    if (v19 >= 1)
    {
      v20 = v19 / 5u;
      v21 = v20 >= *(a1 + 28) - v17 ? *(a1 + 28) - v17 : v20;
      if (v21 >= 1)
      {
        v22 = 0;
        while (*v18 == 21)
        {
          v23 = *(v18 + 1);
          if (v17 >= *(a1 + 28))
          {
            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
            v17 = *(a1 + 24);
            v16 = *(a1 + 16);
          }

          *(a1 + 24) = v17 + 1;
          *(v16 + 4 * v17) = v23;
          ++v22;
          v18 += 5;
          ++v17;
          if (v21 == v22)
          {
            v22 = v21;
            goto LABEL_49;
          }
        }

        if (!v22)
        {
          goto LABEL_27;
        }

LABEL_49:
        wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 5 * v22);
      }
    }

    goto LABEL_27;
  }

  return 0;
}

void sub_100080CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100080CE4(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 40))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 32), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(*(v5 + 16) + 4 * v6++), a3);
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

_BYTE *sub_100080D98(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3)
{
  if (*(this + 40))
  {
    v4 = *(this + 8);
    *a2 = 8;
    if ((v4 & 0x80000000) != 0)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v4, (a2 + 1), a3);
    }

    else
    {
      if (v4 <= 0x7F)
      {
        a2[1] = v4;
        a2 += 2;
        goto LABEL_8;
      }

      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v4, a2 + 1, a3);
    }

    a2 = v5;
  }

LABEL_8:
  if (*(this + 6) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(this + 2) + 4 * v6);
      *a2 = 21;
      *(a2 + 1) = v7;
      a2 += 5;
      ++v6;
    }

    while (v6 < *(this + 6));
  }

  v10 = *(this + 1);
  v9 = (this + 8);
  v8 = v10;
  if (!v10 || *v8 == v8[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v9, a2, a3);
}

uint64_t sub_100080E88(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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

  v5 = *(a1 + 8);
  v6 = (5 * *(a1 + 24) + v3);
  if (v5 && *v5 != v5[1])
  {
    v6 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v6;
  }

  *(a1 + 36) = v6;
  return v6;
}

uint64_t sub_100080F14(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100080790(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100080FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100081000(uint64_t result, uint64_t a2)
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

uint64_t sub_100081094()
{
  v0 = qword_1009ED5C8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100077CB0;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED4D0;
}

void sub_100081128(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008113C(uint64_t a1)
{
  *a1 = off_10098D820;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 44) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_1000811A0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 56);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 56))
  {
    v7 = *(a2 + 24);
    *(a1 + 56) |= 1u;
    *(a1 + 24) = v7;
    v4 = *(a2 + 56);
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

  else if ((*(a2 + 56) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 16);
  *(a1 + 56) |= 2u;
  *(a1 + 16) = v8;
  v4 = *(a2 + 56);
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
  v9 = *(a2 + 32);
  *(a1 + 56) |= 4u;
  *(a1 + 32) = v9;
  v4 = *(a2 + 56);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v11 = *(a2 + 48);
    *(a1 + 56) |= 0x10u;
    *(a1 + 48) = v11;
    if ((*(a2 + 56) & 0x20) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_10;
  }

LABEL_15:
  v10 = *(a2 + 28);
  *(a1 + 56) |= 8u;
  *(a1 + 28) = v10;
  v4 = *(a2 + 56);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v4 & 0x20) != 0)
  {
LABEL_10:
    v5 = *(a2 + 40);
    *(a1 + 56) |= 0x20u;
    *(a1 + 40) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000812E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000812F8(uint64_t a1)
{
  *a1 = off_10098D820;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10008134C(uint64_t a1)
{
  *a1 = off_10098D820;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100081420(uint64_t a1)
{
  if (*(a1 + 56))
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 12) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100081448(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (v8 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_43;
            }
          }

          else if (v8 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_51;
            }
          }

          else if (v8 == 6 && (TagFallback & 7) == 0)
          {
            v11 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_59;
          }

          goto LABEL_30;
        }

        if (v8 != 1)
        {
          break;
        }

        if (v9 != 5)
        {
          goto LABEL_30;
        }

        v28 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v28) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v28;
        *(a1 + 56) |= 1u;
        v13 = *(this + 1);
        v12 = *(this + 2);
        if (v13 < v12 && *v13 == 16)
        {
          v14 = v13 + 1;
          *(this + 1) = v14;
          goto LABEL_26;
        }
      }

      if (v8 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v14 = *(this + 1);
      v12 = *(this + 2);
LABEL_26:
      if (v14 >= v12 || (v16 = *v14, v16 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v17 = *(this + 1);
        v12 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v16;
        v17 = v14 + 1;
        *(this + 1) = v17;
      }

      *(a1 + 56) |= 2u;
      if (v17 < v12 && *v17 == 25)
      {
        *(this + 1) = v17 + 1;
LABEL_39:
        v27 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v27) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = v27;
        *(a1 + 56) |= 4u;
        v20 = *(this + 1);
        v10 = *(this + 2);
        if (v20 < v10 && *v20 == 32)
        {
          v15 = v20 + 1;
          *(this + 1) = v15;
LABEL_43:
          if (v15 >= v10 || (v21 = *v15, v21 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
            if (!result)
            {
              return result;
            }

            v22 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            *(a1 + 28) = v21;
            v22 = v15 + 1;
            *(this + 1) = v22;
          }

          *(a1 + 56) |= 8u;
          if (v22 < v10 && *v22 == 40)
          {
            v18 = v22 + 1;
            *(this + 1) = v18;
LABEL_51:
            if (v18 >= v10 || (v23 = *v18, v23 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
              if (!result)
              {
                return result;
              }

              v24 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 48) = v23;
              v24 = v18 + 1;
              *(this + 1) = v24;
            }

            *(a1 + 56) |= 0x10u;
            if (v24 < v10 && *v24 == 48)
            {
              v11 = v24 + 1;
              *(this + 1) = v11;
LABEL_59:
              if (v11 >= v10 || (v25 = *v11, v25 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 40));
                if (!result)
                {
                  return result;
                }

                v26 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                *(a1 + 40) = v25;
                v26 = v11 + 1;
                *(this + 1) = v26;
              }

              *(a1 + 56) |= 0x20u;
              if (v26 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v8 == 3 && v9 == 1)
    {
      goto LABEL_39;
    }

LABEL_30:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_100081770(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 24), a3);
    v6 = *(v5 + 56);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 32), a3);
  v6 = *(v5 + 56);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 48), a2, a4);
    if ((*(v5 + 56) & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_6:
  if ((v6 & 0x20) != 0)
  {
LABEL_7:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 40), a2, a4);
  }

LABEL_8:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

uint64_t sub_100081874(wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *(this + 14);
  if (v4)
  {
    v5 = *(this + 6);
    *a2 = 13;
    *(a2 + 1) = v5;
    a2 += 5;
    v4 = *(this + 14);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(this + 2);
  *a2 = 16;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v6, a2 + 1, a3);
  v4 = *(this + 14);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

LABEL_8:
  v7 = *(this + 4);
  *a2 = 25;
  *(a2 + 1) = v7;
  a2 += 9;
  if ((*(this + 14) & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = *(this + 7);
  *a2 = 32;
  if (v8 > 0x7F)
  {
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, a2 + 1, a3);
  }

  else
  {
    *(a2 + 1) = v8;
    a2 += 2;
  }

LABEL_12:
  if ((*(this + 56) & 0x10) != 0)
  {
    v9 = *(this + 12);
    *a2 = 40;
    if (v9 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v9;
      a2 += 2;
    }
  }

  if ((*(this + 56) & 0x20) != 0)
  {
    v10 = *(this + 5);
    *a2 = 48;
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v10, a2 + 1, a3);
  }

  v13 = *(this + 1);
  v12 = (this + 8);
  v11 = v13;
  if (!v13 || *v11 == v11[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v12, a2, a3);
}

uint64_t sub_100081A0C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 56);
  if (*(a1 + 56))
  {
    LODWORD(v4) = (v3 << 31 >> 31) & 5;
    if ((v3 & 2) != 0)
    {
      LODWORD(v4) = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
      v3 = *(a1 + 56);
    }

    if ((v3 & 4) != 0)
    {
      v4 = (v4 + 9);
    }

    else
    {
      v4 = v4;
    }

    if ((v3 & 8) != 0)
    {
      v5 = *(a1 + 28);
      if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        v3 = *(a1 + 56);
      }

      else
      {
        v6 = 2;
      }

      v4 = (v6 + v4);
      if ((v3 & 0x10) == 0)
      {
LABEL_9:
        if ((v3 & 0x20) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    else if ((v3 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(a1 + 48);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(a1 + 56);
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_21;
    }

LABEL_20:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 40), a2) + 1;
    goto LABEL_21;
  }

  v4 = 0;
LABEL_21:
  v9 = *(a1 + 8);
  if (v9 && *v9 != v9[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 52) = v4;
  return v4;
}

uint64_t sub_100081B04(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000811A0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100081BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100081BF0(uint64_t result, uint64_t a2)
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

uint64_t sub_100081C84()
{
  v0 = qword_1009ED5C8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100077CB0;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED4E0;
}

void sub_100081D18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100081D2C(uint64_t a1)
{
  *a1 = off_10098D8D0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

uint64_t sub_100081D94(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 64);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 64))
  {
    v5 = *(a2 + 56);
    if (v5 >= 3)
    {
      sub_10049D850();
    }

    *(a1 + 64) |= 1u;
    *(a1 + 56) = v5;
    v4 = *(a2 + 64);
  }

  if ((v4 & 2) != 0)
  {
    v8 = *(a2 + 16);
    *(a1 + 64) |= 2u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 64);
    if ((v4 & 4) == 0)
    {
LABEL_9:
      if ((v4 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_9;
  }

  v9 = *(a2 + 24);
  *(a1 + 64) |= 4u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_17:
    v11 = *(a2 + 40);
    *(a1 + 64) |= 0x10u;
    *(a1 + 40) = v11;
    if ((*(a2 + 64) & 0x20) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_12;
  }

LABEL_16:
  v10 = *(a2 + 32);
  *(a1 + 64) |= 8u;
  *(a1 + 32) = v10;
  v4 = *(a2 + 64);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  if ((v4 & 0x20) != 0)
  {
LABEL_12:
    v6 = *(a2 + 48);
    *(a1 + 64) |= 0x20u;
    *(a1 + 48) = v6;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100081EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100081EF4(uint64_t a1)
{
  *a1 = off_10098D8D0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100081F48(uint64_t a1)
{
  *a1 = off_10098D8D0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10008201C(uint64_t a1)
{
  if (*(a1 + 64))
  {
    *(a1 + 44) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 14) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100082044(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v8 == 4)
          {
            if (v9 == 1)
            {
              goto LABEL_45;
            }

            goto LABEL_26;
          }

          if (v8 == 5)
          {
            if (v9 != 1)
            {
              goto LABEL_26;
            }

LABEL_49:
            *v18 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v18) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 40) = *v18;
            *(a1 + 64) |= 0x10u;
            v17 = *(this + 1);
            if (v17 < *(this + 2) && *v17 == 49)
            {
              *(this + 1) = v17 + 1;
              goto LABEL_53;
            }
          }

          else
          {
            if (v8 != 6 || v9 != 1)
            {
              goto LABEL_26;
            }

LABEL_53:
            *v18 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v18) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 48) = *v18;
            *(a1 + 64) |= 0x20u;
            if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }

        if (v8 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v18[0] = 0;
        v10 = *(this + 1);
        if (v10 >= *(this + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v18);
          if (!result)
          {
            return result;
          }

          v11 = v18[0];
        }

        else
        {
          *(this + 1) = v10 + 1;
        }

        if (v11 > 2)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 1, v11);
        }

        else
        {
          *(a1 + 64) |= 1u;
          *(a1 + 56) = v11;
        }

        v13 = *(this + 1);
        if (v13 < *(this + 2) && *v13 == 17)
        {
          *(this + 1) = v13 + 1;
          goto LABEL_37;
        }
      }

      if (v8 != 2)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_26;
      }

LABEL_37:
      *v18 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v18) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = *v18;
      *(a1 + 64) |= 2u;
      v14 = *(this + 1);
      if (v14 < *(this + 2) && *v14 == 25)
      {
        *(this + 1) = v14 + 1;
LABEL_41:
        *v18 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v18) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v18;
        *(a1 + 64) |= 4u;
        v15 = *(this + 1);
        if (v15 < *(this + 2) && *v15 == 33)
        {
          *(this + 1) = v15 + 1;
LABEL_45:
          *v18 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v18) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = *v18;
          *(a1 + 64) |= 8u;
          v16 = *(this + 1);
          if (v16 < *(this + 2) && *v16 == 41)
          {
            *(this + 1) = v16 + 1;
            goto LABEL_49;
          }
        }
      }
    }

    if (v8 == 3 && v9 == 1)
    {
      goto LABEL_41;
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

uint64_t sub_100082350(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 64);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 56), a2, a4);
    v6 = *(v5 + 64);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 64);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 64);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
    if ((*(v5 + 64) & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 64);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_6:
  if ((v6 & 0x20) != 0)
  {
LABEL_7:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  }

LABEL_8:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

_BYTE *sub_100082454(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3)
{
  if (*(this + 64))
  {
    v4 = *(this + 14);
    *a2 = 8;
    if ((v4 & 0x80000000) != 0)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v4, (a2 + 1), a3);
    }

    else
    {
      if (v4 <= 0x7F)
      {
        a2[1] = v4;
        a2 += 2;
        goto LABEL_8;
      }

      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v4, a2 + 1, a3);
    }

    a2 = v5;
  }

LABEL_8:
  v6 = *(this + 16);
  if ((v6 & 2) != 0)
  {
    v12 = *(this + 2);
    *a2 = 17;
    *(a2 + 1) = v12;
    a2 += 9;
    v6 = *(this + 16);
    if ((v6 & 4) == 0)
    {
LABEL_10:
      if ((v6 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_10;
  }

  v13 = *(this + 3);
  *a2 = 25;
  *(a2 + 1) = v13;
  a2 += 9;
  v6 = *(this + 16);
  if ((v6 & 8) == 0)
  {
LABEL_11:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_12;
    }

LABEL_23:
    v15 = *(this + 5);
    *a2 = 41;
    *(a2 + 1) = v15;
    a2 += 9;
    if ((*(this + 16) & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_22:
  v14 = *(this + 4);
  *a2 = 33;
  *(a2 + 1) = v14;
  a2 += 9;
  v6 = *(this + 16);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  if ((v6 & 0x20) != 0)
  {
LABEL_13:
    v7 = *(this + 6);
    *a2 = 49;
    *(a2 + 1) = v7;
    a2 += 9;
  }

LABEL_14:
  v10 = *(this + 1);
  v9 = (this + 8);
  v8 = v10;
  if (!v10 || *v8 == v8[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v9, a2, a3);
}

uint64_t sub_1000826AC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 64);
  if (v3)
  {
    if (*(a1 + 64))
    {
      v6 = *(a1 + 56);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(a1 + 64);
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
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = *(a1 + 8);
  if (v7 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 60) = v5;
  return v5;
}

uint64_t sub_100082778(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100081D94(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10008284C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100082864(uint64_t result, uint64_t a2)
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

uint64_t sub_1000828F8()
{
  v0 = qword_1009ED5C8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100077CB0;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED4F0;
}

void sub_10008298C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000829A0(uint64_t a1)
{
  *a1 = off_10098D980;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return a1;
}

uint64_t sub_100082A00(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 24);
      if (v5 >= 4)
      {
        sub_10049D87C();
      }

      *(a1 + 32) |= 1u;
      *(a1 + 24) = v5;
      v4 = *(a2 + 32);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 16);
      *(a1 + 32) |= 2u;
      *(a1 + 16) = v6;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100082AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100082ADC(uint64_t a1)
{
  *a1 = off_10098D980;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100082B30(uint64_t a1)
{
  *a1 = off_10098D980;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100082C04(uint64_t a1)
{
  if (*(a1 + 32))
  {
    *(a1 + 24) = 0;
    *(a1 + 16) = 0;
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

uint64_t sub_100082C28(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
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

      v13 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v13);
        if (!result)
        {
          return result;
        }

        v10 = v13;
      }

      else
      {
        *(this + 1) = v9 + 1;
      }

      if (v10 > 3)
      {
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 1, v10);
      }

      else
      {
        *(a1 + 32) |= 1u;
        *(a1 + 24) = v10;
      }

      v12 = *(this + 1);
      if (v12 < *(this + 2) && *v12 == 17)
      {
        *(this + 1) = v12 + 1;
LABEL_24:
        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v14;
        *(a1 + 32) |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 1)
    {
      goto LABEL_24;
    }

LABEL_13:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_100082DBC(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 24), a2, a4);
    v6 = *(v5 + 32);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
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

_BYTE *sub_100082E48(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3)
{
  if (*(this + 32))
  {
    v4 = *(this + 6);
    *a2 = 8;
    if ((v4 & 0x80000000) != 0)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v4, (a2 + 1), a3);
    }

    else
    {
      if (v4 <= 0x7F)
      {
        a2[1] = v4;
        a2 += 2;
        goto LABEL_8;
      }

      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v4, a2 + 1, a3);
    }

    a2 = v5;
  }

LABEL_8:
  if ((*(this + 32) & 2) != 0)
  {
    v6 = *(this + 2);
    *a2 = 17;
    *(a2 + 1) = v6;
    a2 += 9;
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

uint64_t sub_100082F3C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (v3)
  {
    if (*(a1 + 32))
    {
      v6 = *(a1 + 24);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(a1 + 32);
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
  }

  else
  {
    v5 = 0;
  }

  v7 = *(a1 + 8);
  if (v7 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 28) = v5;
  return v5;
}

uint64_t sub_100082FD8(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100082A00(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000830AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000830C4(uint64_t result, uint64_t a2)
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

uint64_t sub_100083158()
{
  v0 = qword_1009ED5C8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100077CB0;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED500;
}

void sub_1000831EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_100083200(void *a1)
{
  *a1 = off_10098DA30;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_100083260(uint64_t a1, uint64_t a2)
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
      v5 = *(a1 + 16);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 16);
      if (!v6)
      {
        v6 = *(qword_1009F9940 + 16);
      }

      sub_100082A00(v5, v6);
      v4 = *(a2 + 36);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 36) |= 2u;
      v7 = *(a1 + 24);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 24);
      if (!v8)
      {
        v8 = *(qword_1009F9940 + 24);
      }

      sub_100081D94(v7, v8);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000833D8(void *a1)
{
  *a1 = off_10098DA30;
  v2 = (a1 + 1);
  sub_100083438(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_100083438(void *result)
{
  if (qword_1009F9940 != result)
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[3];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_1000834DC(void *a1)
{
  sub_1000833D8(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100083580(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 36);
  if (v2)
  {
    if (*(this + 36))
    {
      this = *(this + 2);
      if (this)
      {
        this = sub_100082C04(this);
        v2 = *(v1 + 9);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 3);
      if (this)
      {
        if (*(this + 64))
        {
          *(this + 44) = 0u;
          *(this + 1) = 0u;
          *(this + 2) = 0u;
        }

        v3 = *(this + 1);
        this = (this + 8);
        *(this + 14) = 0;
        if (v3)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }
  }

  v5 = *(v1 + 1);
  v4 = (v1 + 8);
  *(v4 + 7) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return this;
}

uint64_t sub_100083618(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

      *(a1 + 36) |= 1u;
      v9 = *(a1 + 16);
      if (!v9)
      {
        operator new();
      }

      v30 = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v30))
        {
          return 0;
        }
      }

      else
      {
        v30 = *v10;
        *(this + 1) = v10 + 1;
      }

      v11 = *(this + 14);
      v12 = *(this + 15);
      *(this + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v30);
      if (!sub_100082C28(v9, this, v14, v15) || *(this + 36) != 1)
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
        *(this + 1) = v19 + 1;
LABEL_27:
        *(a1 + 36) |= 2u;
        v20 = *(a1 + 24);
        if (!v20)
        {
          operator new();
        }

        v31 = 0;
        v21 = *(this + 1);
        if (v21 >= *(this + 2) || *v21 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31))
          {
            return 0;
          }
        }

        else
        {
          v31 = *v21;
          *(this + 1) = v21 + 1;
        }

        v22 = *(this + 14);
        v23 = *(this + 15);
        *(this + 14) = v22 + 1;
        if (v22 >= v23)
        {
          return 0;
        }

        v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v31);
        if (!sub_100082044(v20, this, v25, v26) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v24);
        v27 = *(this + 14);
        v17 = __OFSUB__(v27, 1);
        v28 = v27 - 1;
        if (v28 < 0 == v17)
        {
          *(this + 14) = v28;
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

uint64_t sub_1000838FC(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 16);
    if (!v7)
    {
      v7 = *(qword_1009F9940 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v7, a2, a4);
    v6 = *(v5 + 36);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 24);
    if (!v8)
    {
      v8 = *(qword_1009F9940 + 24);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v8, a2, a4);
  }

  v11 = *(v5 + 8);
  v10 = (v5 + 8);
  v9 = v11;
  if (v11 && *v9 != v9[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v10, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000839A8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 9);
  if (v5)
  {
    v6 = *(this + 2);
    if (!v6)
    {
      v6 = *(qword_1009F9940 + 16);
    }

    *a2 = 10;
    v7 = a2 + 1;
    v8 = v6[7];
    if (v8 > 0x7F)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v7, a3);
    }

    else
    {
      *(v3 + 1) = v8;
      v9 = v3 + 2;
    }

    v3 = sub_100082E48(v6, v9, a3);
    v5 = *(this + 9);
  }

  if ((v5 & 2) != 0)
  {
    v10 = *(this + 3);
    if (!v10)
    {
      v10 = *(qword_1009F9940 + 24);
    }

    *v3 = 18;
    v11 = v10[15];
    if (v11 > 0x7F)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v11;
      v12 = v3 + 2;
    }

    v3 = sub_100082454(v10, v12, a3);
  }

  v15 = *(this + 1);
  v14 = (this + 8);
  v13 = v15;
  if (!v15 || *v13 == v13[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v14, v3, a3);
}

uint64_t sub_100083AB0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (!*(a1 + 36))
  {
    v3 = 0;
    goto LABEL_18;
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    v4 = *(qword_1009F9940 + 16);
  }

  v5 = sub_100082F3C(v4, a2);
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
  if ((*(a1 + 36) & 2) != 0)
  {
LABEL_12:
    v8 = *(a1 + 24);
    if (!v8)
    {
      v8 = *(qword_1009F9940 + 24);
    }

    v9 = sub_1000826AC(v8, a2);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    }

    else
    {
      v11 = 1;
    }

    v3 = (v3 + v10 + v11 + 1);
  }

LABEL_18:
  v12 = *(a1 + 8);
  if (v12 && *v12 != v12[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 32) = v3;
  return v3;
}

uint64_t sub_100083BA4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100083260(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100083C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100083C90(uint64_t result, uint64_t a2)
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

uint64_t sub_100083D24()
{
  v0 = qword_1009ED5C8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100077CB0;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED510;
}

void sub_100083DB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100083DCC(uint64_t a1)
{
  *a1 = off_10098DAE0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  return a1;
}

uint64_t sub_100083E30(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v8 = *(a2 + 24);
    *(a1 + 40) |= 2u;
    *(a1 + 24) = v8;
    if ((*(a2 + 40) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_7;
  }

  v7 = *(a2 + 16);
  *(a1 + 40) |= 1u;
  *(a1 + 16) = v7;
  v4 = *(a2 + 40);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v4 & 4) != 0)
  {
LABEL_7:
    v5 = *(a2 + 32);
    *(a1 + 40) |= 4u;
    *(a1 + 32) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100083F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100083F28(uint64_t a1)
{
  *a1 = off_10098DAE0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100083F7C(uint64_t a1)
{
  *a1 = off_10098DAE0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100084050(uint64_t a1)
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

uint64_t sub_100084074(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_20;
        }

        v13 = *(this + 1);
        v11 = *(this + 2);
LABEL_24:
        if (v13 >= v11 || (v14 = *v13, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
          if (!result)
          {
            return result;
          }

          v15 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          *(a1 + 32) = v14;
          v15 = v13 + 1;
          *(this + 1) = v15;
        }

        *(a1 + 40) |= 4u;
        if (v15 == v11 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

      v17 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v17;
      *(a1 + 40) |= 1u;
      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 17)
      {
        *(this + 1) = v10 + 1;
LABEL_15:
        v17 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v17;
        *(a1 + 40) |= 2u;
        v12 = *(this + 1);
        v11 = *(this + 2);
        if (v12 < v11 && *v12 == 24)
        {
          v13 = v12 + 1;
          *(this + 1) = v13;
          goto LABEL_24;
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

uint64_t sub_100084244(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
    if ((*(v5 + 40) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
  v6 = *(v5 + 40);
  if ((v6 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v6 & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 32), a2, a4);
  }

LABEL_5:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

uint64_t sub_1000842F4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *(this + 10);
  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = *(this + 3);
    *a2 = 17;
    *(a2 + 1) = v6;
    a2 += 9;
    if ((*(this + 10) & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v5 = *(this + 2);
  *a2 = 9;
  *(a2 + 1) = v5;
  a2 += 9;
  v4 = *(this + 10);
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = *(this + 8);
  *a2 = 24;
  if (v7 > 0x7F)
  {
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, a2 + 1, a3);
  }

  else
  {
    *(a2 + 1) = v7;
    a2 += 2;
  }

LABEL_10:
  v10 = *(this + 1);
  v9 = (this + 8);
  v8 = v10;
  if (!v10 || *v8 == v8[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v9, a2, a3);
}

uint64_t sub_100084438(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 40);
  if (*(a1 + 40))
  {
    v4 = (v3 << 31 >> 31) & 9;
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
      v6 = *(a1 + 32);
      if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      }

      else
      {
        v7 = 2;
      }

      v5 = (v7 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = *(a1 + 8);
  if (v8 && *v8 != v8[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 36) = v5;
  return v5;
}

uint64_t sub_1000844CC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100083E30(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000845A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000845B8(uint64_t result, uint64_t a2)
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

uint64_t sub_10008464C()
{
  v0 = qword_1009ED5C8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100077CB0;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED520;
}

void sub_1000846E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000846F4(uint64_t a1)
{
  *a1 = off_10098DB90;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_100084758(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
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

void sub_100084858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100084870(uint64_t a1)
{
  *a1 = off_10098DB90;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000848C4(uint64_t a1)
{
  *a1 = off_10098DB90;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100084998(uint64_t a1)
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

uint64_t sub_1000849BC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v8 == 3)
        {
          if (v9 == 1)
          {
            goto LABEL_28;
          }

          goto LABEL_25;
        }

        if (v8 != 4 || v9 != 1)
        {
          goto LABEL_25;
        }

LABEL_32:
        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = v14;
        *(a1 + 52) |= 8u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v8 != 1)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_25;
      }

      v14 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v14;
      *(a1 + 52) |= 1u;
      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 17)
      {
        *(this + 1) = v10 + 1;
LABEL_20:
        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v14;
        *(a1 + 52) |= 2u;
        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 25)
        {
          *(this + 1) = v11 + 1;
LABEL_28:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v14;
          *(a1 + 52) |= 4u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 33)
          {
            *(this + 1) = v12 + 1;
            goto LABEL_32;
          }
        }
      }
    }

    if (v8 == 2 && v9 == 1)
    {
      goto LABEL_20;
    }

LABEL_25:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_100084BDC(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 52);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v5 = *(v4 + 52);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_14:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 32), a3);
      if ((*(v4 + 52) & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  v5 = *(v4 + 52);
  if ((v5 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v5 & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 40), a3);
  }

LABEL_6:
  v8 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

uint64_t sub_100084CA8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 52);
  if (v3)
  {
    v9 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v9;
    a2 += 9;
    v3 = *(a1 + 52);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_12:
      v11 = *(a1 + 32);
      *a2 = 25;
      *(a2 + 1) = v11;
      a2 += 9;
      if ((*(a1 + 52) & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(a1 + 24);
  *a2 = 17;
  *(a2 + 1) = v10;
  a2 += 9;
  v3 = *(a1 + 52);
  if ((v3 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v3 & 8) != 0)
  {
LABEL_5:
    v4 = *(a1 + 40);
    *a2 = 33;
    *(a2 + 1) = v4;
    a2 += 9;
  }

LABEL_6:
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

uint64_t sub_100084E28(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (v7 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  }

  *(a1 + 48) = v5;
  return v5;
}

uint64_t sub_100084EB0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100084758(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100084F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100084F9C(uint64_t result, uint64_t a2)
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

uint64_t sub_100085030()
{
  v0 = qword_1009ED5C8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100077CB0;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED530;
}

void sub_1000850C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000850D8(uint64_t a1)
{
  *a1 = off_10098DC40;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 73) = 0u;
  return a1;
}

uint64_t sub_100085158(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  v4 = *(a2 + 96);
  if (v4)
  {
    if (v4)
    {
      v14 = *(a2 + 16);
      *(a1 + 96) |= 1u;
      *(a1 + 16) = v14;
      v4 = *(a2 + 96);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_35;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    v15 = *(a2 + 24);
    *(a1 + 96) |= 2u;
    *(a1 + 24) = v15;
    v4 = *(a2 + 96);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_40;
    }

LABEL_35:
    *(a1 + 96) |= 4u;
    v16 = *(a1 + 32);
    if (!v16)
    {
      operator new();
    }

    v17 = *(a2 + 32);
    if (!v17)
    {
      v17 = *(qword_1009F9958 + 32);
    }

    sub_100083260(v16, v17);
    v4 = *(a2 + 96);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_43;
    }

LABEL_40:
    v18 = *(a2 + 40);
    *(a1 + 96) |= 8u;
    v19 = *(a1 + 40);
    if (v19 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v19, v18);
    v4 = *(a2 + 96);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
LABEL_11:
        if ((v4 & 0x40) != 0)
        {
          *(a1 + 96) |= 0x40u;
          v6 = *(a1 + 64);
          if (!v6)
          {
            operator new();
          }

          v7 = *(a2 + 64);
          if (!v7)
          {
            v7 = *(qword_1009F9958 + 64);
          }

          sub_100082A00(v6, v7);
          v4 = *(a2 + 96);
        }

        if ((v4 & 0x80) != 0)
        {
          *(a1 + 96) |= 0x80u;
          v8 = *(a1 + 72);
          if (!v8)
          {
            operator new();
          }

          v9 = *(a2 + 72);
          if (!v9)
          {
            v9 = *(qword_1009F9958 + 72);
          }

          sub_100081D94(v8, v9);
          v4 = *(a2 + 96);
        }

        goto LABEL_23;
      }

LABEL_10:
      v5 = *(a2 + 56);
      *(a1 + 96) |= 0x20u;
      *(a1 + 56) = v5;
      v4 = *(a2 + 96);
      goto LABEL_11;
    }

LABEL_43:
    *(a1 + 96) |= 0x10u;
    v20 = *(a1 + 48);
    if (!v20)
    {
      operator new();
    }

    v21 = *(a2 + 48);
    if (!v21)
    {
      v21 = *(qword_1009F9958 + 48);
    }

    sub_100083E30(v20, v21);
    v4 = *(a2 + 96);
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_23:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      *(a1 + 96) |= 0x100u;
      v10 = *(a1 + 80);
      if (!v10)
      {
        operator new();
      }

      v11 = *(a2 + 80);
      if (!v11)
      {
        v11 = *(qword_1009F9958 + 80);
      }

      sub_100084758(v10, v11);
      v4 = *(a2 + 96);
    }

    if ((v4 & 0x200) != 0)
    {
      v12 = *(a2 + 88);
      *(a1 + 96) |= 0x200u;
      *(a1 + 88) = v12;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000854E8(void *a1)
{
  *a1 = off_10098DC40;
  v2 = (a1 + 1);
  sub_100085548(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_100085548(void *result)
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

  if (qword_1009F9958 != result)
  {
    v4 = result[4];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[6];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[8];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[9];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    result = v1[10];
    if (result)
    {
      v8 = *(*result + 8);

      return v8();
    }
  }

  return result;
}

void sub_1000856B0(void *a1)
{
  sub_1000854E8(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100085754(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 96);
  if (v2)
  {
    *(this + 2) = 0;
    *(this + 3) = 0;
    if ((v2 & 4) != 0)
    {
      this = *(this + 4);
      if (this)
      {
        this = sub_100083580(this);
        v2 = *(v1 + 24);
      }
    }

    if ((v2 & 8) != 0)
    {
      v3 = *(v1 + 5);
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

    if ((*(v1 + 96) & 0x10) != 0)
    {
      this = *(v1 + 6);
      if (this)
      {
        if (*(this + 40))
        {
          *(this + 2) = 0;
          *(this + 3) = 0;
          *(this + 8) = 0;
        }

        v4 = *(this + 1);
        this = (this + 8);
        *(this + 8) = 0;
        if (v4)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    *(v1 + 7) = 0;
    v5 = *(v1 + 24);
    if ((v5 & 0x40) != 0)
    {
      this = *(v1 + 8);
      if (this)
      {
        this = sub_100082C04(this);
        v5 = *(v1 + 24);
      }
    }

    if ((v5 & 0x80) != 0)
    {
      this = *(v1 + 9);
      if (this)
      {
        if (*(this + 64))
        {
          *(this + 44) = 0u;
          *(this + 1) = 0u;
          *(this + 2) = 0u;
        }

        v6 = *(this + 1);
        this = (this + 8);
        *(this + 14) = 0;
        if (v6)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }
  }

  v7 = *(v1 + 24);
  if ((v7 & 0xFF00) != 0)
  {
    if ((v7 & 0x100) != 0)
    {
      this = *(v1 + 10);
      if (this)
      {
        if (*(this + 52))
        {
          *(this + 1) = 0u;
          *(this + 2) = 0u;
        }

        v8 = *(this + 1);
        this = (this + 8);
        *(this + 11) = 0;
        if (v8)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    *(v1 + 88) = 0;
  }

  v10 = *(v1 + 1);
  v9 = (v1 + 8);
  *(v9 + 22) = 0;
  if (v10)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v9);
  }

  return this;
}