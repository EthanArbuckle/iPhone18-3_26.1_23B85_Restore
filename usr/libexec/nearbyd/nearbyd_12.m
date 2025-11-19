uint64_t sub_1000BA098(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 132);
  if (!v3)
  {
    v5 = 0;
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v6 = *(a1 + 24);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(a1 + 132);
    }

    else
    {
      v7 = 2;
    }

    v4 += v7;
    if ((v3 & 4) == 0)
    {
LABEL_4:
      if ((v3 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_17;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a1 + 28);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    v3 = *(a1 + 132);
  }

  else
  {
    v9 = 2;
  }

  v4 += v9;
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

LABEL_17:
  v10 = *(a1 + 32);
  if (!v10)
  {
    v10 = *(qword_1009F9A68 + 32);
  }

  v11 = sub_10009F954(v10, a2);
  v12 = v11;
  if (v11 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
  }

  else
  {
    v13 = 1;
  }

  v4 += v12 + v13 + 1;
  v3 = *(a1 + 132);
  if ((v3 & 0x10) != 0)
  {
LABEL_23:
    v14 = *(a1 + 72);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
      v3 = *(a1 + 132);
    }

    else
    {
      v15 = 2;
    }

    v4 += v15;
  }

LABEL_27:
  if ((v3 & 0x20) != 0)
  {
    v5 = v4 + 9;
  }

  else
  {
    v5 = v4;
  }

  if ((v3 & 0x200) != 0)
  {
LABEL_31:
    v16 = *(a1 + 76);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
    }

    else
    {
      v17 = 2;
    }

    v5 += v17;
  }

LABEL_35:
  v18 = *(a1 + 56);
  v19 = v18 + v5;
  if (v18 >= 1)
  {
    v20 = 0;
    do
    {
      v21 = sub_1000B2384(*(*(a1 + 48) + 8 * v20), a2);
      v22 = v21;
      if (v21 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2);
      }

      else
      {
        v23 = 1;
      }

      v19 += v22 + v23;
      ++v20;
    }

    while (v20 < *(a1 + 56));
  }

  v24 = *(a1 + 88);
  v25 = v24 + v19;
  if (v24 >= 1)
  {
    v26 = 0;
    do
    {
      v27 = sub_1000B2384(*(*(a1 + 80) + 8 * v26), a2);
      v28 = v27;
      if (v27 >= 0x80)
      {
        v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, a2);
      }

      else
      {
        v29 = 1;
      }

      v25 += v28 + v29;
      ++v26;
    }

    while (v26 < *(a1 + 88));
  }

  v30 = *(a1 + 112);
  v31 = (v30 + v25);
  if (v30 >= 1)
  {
    v32 = 0;
    do
    {
      v33 = sub_1000B2384(*(*(a1 + 104) + 8 * v32), a2);
      v34 = v33;
      if (v33 >= 0x80)
      {
        v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33, a2);
      }

      else
      {
        v35 = 1;
      }

      v31 = (v34 + v31 + v35);
      ++v32;
    }

    while (v32 < *(a1 + 112));
  }

  v36 = *(a1 + 8);
  if (v36 && *v36 != v36[1])
  {
    v31 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v31;
  }

  *(a1 + 128) = v31;
  return v31;
}

uint64_t sub_1000BA308(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009CEC4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000BA3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BA3F4(uint64_t result, uint64_t a2)
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

uint64_t sub_1000BA488()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED7A0;
}

void sub_1000BA51C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BA530(uint64_t a1)
{
  *a1 = off_10098F6F8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  return a1;
}

void sub_1000BA5A0(uint64_t *a1)
{
  *a1 = off_10098F6F8;
  if (qword_1009F9A70 != a1)
  {
    v2 = a1[4];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  sub_100077C08(a1 + 8);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000BA644(uint64_t *a1)
{
  sub_1000BA5A0(a1);

  operator delete();
}

uint64_t sub_1000BA6E8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
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
          if (v8 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_44;
          }

          v15 = *(this + 1);
          v14 = *(this + 2);
          goto LABEL_32;
        }

        if (v9 != 1)
        {
          goto LABEL_44;
        }

        *v57 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v57) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v57;
        *(a1 + 96) |= 1u;
        v16 = *(this + 1);
        v14 = *(this + 2);
        if (v16 < v14 && *v16 == 16)
        {
          v15 = v16 + 1;
          *(this + 1) = v15;
LABEL_32:
          if (v15 >= v14 || (v17 = *v15, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
            if (!result)
            {
              return result;
            }

            v18 = *(this + 1);
            v14 = *(this + 2);
          }

          else
          {
            *(a1 + 24) = v17;
            v18 = v15 + 1;
            *(this + 1) = v18;
          }

          *(a1 + 96) |= 2u;
          if (v18 < v14 && *v18 == 24)
          {
            v20 = v18 + 1;
            *(this + 1) = v20;
LABEL_52:
            if (v20 >= v14 || (v23 = *v20, v23 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
              if (!result)
              {
                return result;
              }

              v24 = *(this + 1);
              v14 = *(this + 2);
            }

            else
            {
              *(a1 + 28) = v23;
              v24 = v20 + 1;
              *(this + 1) = v24;
            }

            v21 = *(a1 + 96) | 4;
            *(a1 + 96) = v21;
            if (v24 < v14 && *v24 == 34)
            {
              *(this + 1) = v24 + 1;
              goto LABEL_60;
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
            goto LABEL_44;
          }

          v20 = *(this + 1);
          v14 = *(this + 2);
          goto LABEL_52;
        }

        if (v8 == 4)
        {
          if (v9 != 2)
          {
            goto LABEL_44;
          }

          v21 = *(a1 + 96);
LABEL_60:
          *(a1 + 96) = v21 | 8;
          v25 = *(a1 + 32);
          if (!v25)
          {
            operator new();
          }

          v57[0] = 0;
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v57))
            {
              return 0;
            }
          }

          else
          {
            v57[0] = *v26;
            *(this + 1) = v26 + 1;
          }

          v27 = *(this + 14);
          v28 = *(this + 15);
          *(this + 14) = v27 + 1;
          if (v27 >= v28)
          {
            return 0;
          }

          v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v57[0]);
          if (!sub_10009F5D8(v25, this, v30, v31) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v29);
          v32 = *(this + 14);
          v33 = __OFSUB__(v32, 1);
          v34 = v32 - 1;
          if (v34 < 0 == v33)
          {
            *(this + 14) = v34;
          }

          v35 = *(this + 1);
          v10 = *(this + 2);
          if (v35 < v10 && *v35 == 40)
          {
            v11 = v35 + 1;
            *(this + 1) = v11;
LABEL_74:
            if (v11 >= v10 || (v36 = *v11, v36 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
              if (!result)
              {
                return result;
              }

              v37 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 40) = v36;
              v37 = v11 + 1;
              *(this + 1) = v37;
            }

            *(a1 + 96) |= 0x10u;
            if (v37 < v10 && *v37 == 48)
            {
              v19 = v37 + 1;
              *(this + 1) = v19;
LABEL_82:
              if (v19 >= v10 || (v38 = *v19, v38 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 44));
                if (!result)
                {
                  return result;
                }

                v39 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                *(a1 + 44) = v38;
                v39 = v19 + 1;
                *(this + 1) = v39;
              }

              *(a1 + 96) |= 0x20u;
              if (v39 < v10 && *v39 == 57)
              {
                *(this + 1) = v39 + 1;
LABEL_90:
                *v57 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v57) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 48) = *v57;
                *(a1 + 96) |= 0x40u;
                v40 = *(this + 1);
                if (v40 < *(this + 2) && *v40 == 65)
                {
                  *(this + 1) = v40 + 1;
                  goto LABEL_94;
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
            goto LABEL_74;
          }

LABEL_44:
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
    }

    if (TagFallback >> 3 <= 7)
    {
      if (v8 == 6)
      {
        if ((TagFallback & 7) == 0)
        {
          v19 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_82;
        }
      }

      else if (v8 == 7 && v9 == 1)
      {
        goto LABEL_90;
      }

      goto LABEL_44;
    }

    if (v8 != 8)
    {
      if (v8 == 9)
      {
        if (v9 == 2)
        {
          goto LABEL_98;
        }
      }

      else if (v8 == 10 && (TagFallback & 7) == 0)
      {
        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_116;
      }

      goto LABEL_44;
    }

    if (v9 != 1)
    {
      goto LABEL_44;
    }

LABEL_94:
    *v57 = 0;
    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v57) & 1) == 0)
    {
      return 0;
    }

    *(a1 + 56) = *v57;
    *(a1 + 96) |= 0x80u;
    v41 = *(this + 1);
  }

  while (v41 >= *(this + 2) || *v41 != 74);
  while (1)
  {
    *(this + 1) = v41 + 1;
LABEL_98:
    v42 = *(a1 + 76);
    v43 = *(a1 + 72);
    if (v43 >= v42)
    {
      if (v42 == *(a1 + 80))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 64), v42 + 1);
        v42 = *(a1 + 76);
      }

      *(a1 + 76) = v42 + 1;
      sub_1000CCF2C();
    }

    v44 = *(a1 + 64);
    *(a1 + 72) = v43 + 1;
    v45 = *(v44 + 8 * v43);
    v57[0] = 0;
    v46 = *(this + 1);
    if (v46 >= *(this + 2) || *v46 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v57))
      {
        return 0;
      }
    }

    else
    {
      v57[0] = *v46;
      *(this + 1) = v46 + 1;
    }

    v47 = *(this + 14);
    v48 = *(this + 15);
    *(this + 14) = v47 + 1;
    if (v47 >= v48)
    {
      return 0;
    }

    v49 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v57[0]);
    if (!sub_1000B2078(v45, this, v50, v51) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v49);
    v52 = *(this + 14);
    v33 = __OFSUB__(v52, 1);
    v53 = v52 - 1;
    if (v53 < 0 == v33)
    {
      *(this + 14) = v53;
    }

    v41 = *(this + 1);
    v12 = *(this + 2);
    if (v41 >= v12)
    {
      goto LABEL_1;
    }

    v54 = *v41;
    if (v54 != 74)
    {
      if (v54 == 80)
      {
        v13 = v41 + 1;
        *(this + 1) = v13;
LABEL_116:
        if (v13 >= v12 || (v55 = *v13, v55 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 88));
          if (!result)
          {
            return result;
          }

          v56 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 88) = v55;
          v56 = v13 + 1;
          *(this + 1) = v56;
        }

        *(a1 + 96) |= 0x200u;
        if (v56 == v12 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      goto LABEL_1;
    }
  }
}

uint64_t sub_1000BAD48(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 96);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 96);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_24:
  v11 = *(v5 + 32);
  if (!v11)
  {
    v11 = *(qword_1009F9A70 + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v11, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 44), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 48), a3);
  if ((*(v5 + 96) & 0x80) != 0)
  {
LABEL_9:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 56), a3);
  }

LABEL_10:
  if (*(v5 + 72) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(9, *(*(v5 + 64) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 72));
  }

  if ((*(v5 + 97) & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 88), a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000BAEEC(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 24);
  if (v5)
  {
    v6 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v6;
    v3 = (a2 + 9);
    v5 = *(this + 24);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 6);
    *v3 = 16;
    if (v7 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v7;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 96) & 4) != 0)
  {
    v8 = *(this + 7);
    *v3 = 24;
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

  v9 = *(this + 24);
  if ((v9 & 8) != 0)
  {
    v10 = *(this + 4);
    if (!v10)
    {
      v10 = *(qword_1009F9A70 + 32);
    }

    *v3 = 34;
    v11 = v10[7];
    if (v11 > 0x7F)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v11;
      v12 = (v3 + 2);
    }

    v3 = sub_10009F838(v10, v12, a3);
    v9 = *(this + 24);
  }

  if ((v9 & 0x10) != 0)
  {
    v13 = *(this + 10);
    *v3 = 40;
    if (v13 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v13;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 96) & 0x20) != 0)
  {
    v14 = *(this + 11);
    *v3 = 48;
    if (v14 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v14;
      v3 = (v3 + 2);
    }
  }

  v15 = *(this + 24);
  if ((v15 & 0x40) != 0)
  {
    v16 = *(this + 6);
    *v3 = 57;
    *(v3 + 1) = v16;
    v3 = (v3 + 9);
    v15 = *(this + 24);
  }

  if ((v15 & 0x80) != 0)
  {
    v17 = *(this + 7);
    *v3 = 65;
    *(v3 + 1) = v17;
    v3 = (v3 + 9);
  }

  if (*(this + 18) >= 1)
  {
    v18 = 0;
    do
    {
      v19 = *(*(this + 8) + 8 * v18);
      *v3 = 74;
      v20 = v19[6];
      if (v20 > 0x7F)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v3 + 1, a3);
      }

      else
      {
        *(v3 + 1) = v20;
        v21 = (v3 + 2);
      }

      v3 = sub_1000B229C(v19, v21, a3);
      ++v18;
    }

    while (v18 < *(this + 18));
  }

  if ((*(this + 97) & 2) != 0)
  {
    v22 = *(this + 22);
    *v3 = 80;
    if (v22 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v22;
      v3 = (v3 + 2);
    }
  }

  v25 = *(this + 1);
  v24 = (this + 8);
  v23 = v25;
  if (!v25 || *v23 == v23[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v24, v3, a3);
}

uint64_t sub_1000BB20C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 96);
  if (!v3)
  {
    v5 = 0;
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v6 = *(a1 + 24);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(a1 + 96);
    }

    else
    {
      v7 = 2;
    }

    v4 += v7;
    if ((v3 & 4) == 0)
    {
LABEL_4:
      if ((v3 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a1 + 28);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    v3 = *(a1 + 96);
  }

  else
  {
    v9 = 2;
  }

  v4 += v9;
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_18:
  v10 = *(a1 + 32);
  if (!v10)
  {
    v10 = *(qword_1009F9A70 + 32);
  }

  v11 = sub_10009F954(v10, a2);
  v12 = v11;
  if (v11 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
  }

  else
  {
    v13 = 1;
  }

  v4 += v12 + v13 + 1;
  v3 = *(a1 + 96);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

LABEL_24:
  v14 = *(a1 + 40);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    v3 = *(a1 + 96);
  }

  else
  {
    v15 = 2;
  }

  v4 += v15;
  if ((v3 & 0x20) != 0)
  {
LABEL_28:
    v16 = *(a1 + 44);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
      v3 = *(a1 + 96);
    }

    else
    {
      v17 = 2;
    }

    v4 += v17;
  }

LABEL_32:
  v18 = v4 + 9;
  if ((v3 & 0x40) == 0)
  {
    v18 = v4;
  }

  if ((v3 & 0x80) != 0)
  {
    v5 = v18 + 9;
  }

  else
  {
    v5 = v18;
  }

  if ((v3 & 0x200) != 0)
  {
LABEL_38:
    v19 = *(a1 + 88);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
    }

    else
    {
      v20 = 2;
    }

    v5 += v20;
  }

LABEL_42:
  v21 = *(a1 + 72);
  v22 = (v21 + v5);
  if (v21 >= 1)
  {
    v23 = 0;
    do
    {
      v24 = sub_1000B2384(*(*(a1 + 64) + 8 * v23), a2);
      v25 = v24;
      if (v24 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2);
      }

      else
      {
        v26 = 1;
      }

      v22 = (v25 + v22 + v26);
      ++v23;
    }

    while (v23 < *(a1 + 72));
  }

  v27 = *(a1 + 8);
  if (v27 && *v27 != v27[1])
  {
    v22 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v22;
  }

  *(a1 + 92) = v22;
  return v22;
}

uint64_t sub_1000BB40C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009D0BC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000BB4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BB4F8(uint64_t result, uint64_t a2)
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

uint64_t sub_1000BB58C()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED7B0;
}

void sub_1000BB620(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BB634(uint64_t a1)
{
  *a1 = off_10098F7A8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 56) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_1000BB69C(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  sub_1000B3264((a1 + 8), a2 + 32);
  LOBYTE(v4) = *(a2 + 60);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
  }

  if (*(a2 + 60))
  {
    v7 = *(a2 + 16);
    a1[15] |= 1u;
    a1[4] = v7;
    v4 = *(a2 + 60);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v9 = *(a2 + 24);
      a1[15] |= 4u;
      a1[6] = v9;
      if ((*(a2 + 60) & 8) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
      }

      goto LABEL_8;
    }
  }

  else if ((*(a2 + 60) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 20);
  a1[15] |= 2u;
  a1[5] = v8;
  v4 = *(a2 + 60);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v4 & 8) != 0)
  {
LABEL_8:
    v5 = *(a2 + 28);
    a1[15] |= 8u;
    a1[7] = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_1000BB7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000BB7C0(uint64_t *a1)
{
  *a1 = off_10098F7A8;
  sub_100077C08(a1 + 4);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000BB824(uint64_t *a1)
{
  sub_1000BB7C0(a1);

  operator delete();
}

uint64_t sub_1000BB8C8(uint64_t a1)
{
  if (*(a1 + 60))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  result = sub_100077B98(a1 + 32);
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  *(v3 + 13) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return result;
}

uint64_t sub_1000BB928(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v12 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_40;
        }

        if (v8 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v13 = *(this + 1);
          v10 = *(this + 2);
LABEL_48:
          if (v13 >= v10 || (v22 = *v13, v22 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 7);
            if (!result)
            {
              return result;
            }

            v23 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            a1[7] = v22;
            v23 = v13 + 1;
            *(this + 1) = v23;
          }

          a1[15] |= 8u;
          if (v23 < v10 && *v23 == 42)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v8 != 5 || v9 != 2)
          {
            goto LABEL_21;
          }

          while (1)
          {
            v24 = a1[11];
            v25 = a1[10];
            if (v25 >= v24)
            {
              if (v24 == a1[12])
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 8), v24 + 1);
                v24 = a1[11];
              }

              a1[11] = v24 + 1;
              sub_1000CCF2C();
            }

            v26 = *(a1 + 4);
            a1[10] = v25 + 1;
            v27 = *(v26 + 8 * v25);
            v38 = 0;
            v28 = *(this + 1);
            if (v28 >= *(this + 2) || *v28 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v38))
              {
                return 0;
              }
            }

            else
            {
              v38 = *v28;
              *(this + 1) = v28 + 1;
            }

            v29 = *(this + 14);
            v30 = *(this + 15);
            *(this + 14) = v29 + 1;
            if (v29 >= v30)
            {
              return 0;
            }

            v31 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v38);
            if (!sub_1000B2078(v27, this, v32, v33) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v31);
            v34 = *(this + 14);
            v35 = __OFSUB__(v34, 1);
            v36 = v34 - 1;
            if (v36 < 0 == v35)
            {
              *(this + 14) = v36;
            }

            v23 = *(this + 1);
            v37 = *(this + 2);
            if (v23 >= v37 || *v23 != 42)
            {
              break;
            }

LABEL_55:
            *(this + 1) = v23 + 1;
          }

          if (v23 == v37 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
        goto LABEL_21;
      }

      v14 = *(this + 1);
      v10 = *(this + 2);
      if (v14 >= v10 || (v15 = *v14, v15 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
        if (!result)
        {
          return result;
        }

        v16 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        a1[4] = v15;
        v16 = v14 + 1;
        *(this + 1) = v16;
      }

      a1[15] |= 1u;
      if (v16 < v10 && *v16 == 16)
      {
        v11 = v16 + 1;
        *(this + 1) = v11;
LABEL_32:
        if (v11 >= v10 || (v18 = *v11, v18 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
          if (!result)
          {
            return result;
          }

          v19 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          a1[5] = v18;
          v19 = v11 + 1;
          *(this + 1) = v19;
        }

        a1[15] |= 2u;
        if (v19 < v10 && *v19 == 24)
        {
          v12 = v19 + 1;
          *(this + 1) = v12;
LABEL_40:
          if (v12 >= v10 || (v20 = *v12, v20 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 6);
            if (!result)
            {
              return result;
            }

            v21 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            a1[6] = v20;
            v21 = v12 + 1;
            *(this + 1) = v21;
          }

          a1[15] |= 4u;
          if (v21 < v10 && *v21 == 32)
          {
            v13 = v21 + 1;
            *(this + 1) = v13;
            goto LABEL_48;
          }
        }
      }
    }

    if (v8 == 2 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_32;
    }

LABEL_21:
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

uint64_t sub_1000BBCE0(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 60);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 20), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  if ((*(v5 + 60) & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
  }

LABEL_6:
  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, *(*(v5 + 32) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
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

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000BBDEC(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 60))
  {
    v5 = *(this + 4);
    *a2 = 8;
    v6 = a2 + 1;
    if (v5 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, v6, a3);
    }

    else
    {
      *(v3 + 1) = v5;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 60) & 2) != 0)
  {
    v7 = *(this + 5);
    *v3 = 16;
    if (v7 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v7;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 60) & 4) != 0)
  {
    v8 = *(this + 6);
    *v3 = 24;
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

  if ((*(this + 60) & 8) != 0)
  {
    v9 = *(this + 7);
    *v3 = 32;
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

  if (*(this + 10) >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *(*(this + 4) + 8 * v10);
      *v3 = 42;
      v12 = v11[6];
      if (v12 > 0x7F)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v3 + 1, a3);
      }

      else
      {
        *(v3 + 1) = v12;
        v13 = (v3 + 2);
      }

      v3 = sub_1000B229C(v11, v13, a3);
      ++v10;
    }

    while (v10 < *(this + 10));
  }

  v16 = *(this + 1);
  v15 = (this + 8);
  v14 = v16;
  if (!v16 || *v14 == v14[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v15, v3, a3);
}

uint64_t sub_1000BBF88(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 60);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_25;
  }

  if (*(a1 + 60))
  {
    v5 = *(a1 + 16);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 60);
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 60) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(a1 + 20);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 60);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_14:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v8 = *(a1 + 24);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    v3 = *(a1 + 60);
  }

  else
  {
    v9 = 2;
  }

  v4 += v9;
  if ((v3 & 8) != 0)
  {
LABEL_21:
    v10 = *(a1 + 28);
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

LABEL_25:
  v12 = *(a1 + 40);
  v13 = (v12 + v4);
  if (v12 >= 1)
  {
    v14 = 0;
    do
    {
      v15 = sub_1000B2384(*(*(a1 + 32) + 8 * v14), a2);
      v16 = v15;
      if (v15 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
      }

      else
      {
        v17 = 1;
      }

      v13 = (v16 + v13 + v17);
      ++v14;
    }

    while (v14 < *(a1 + 40));
  }

  v18 = *(a1 + 8);
  if (v18 && *v18 != v18[1])
  {
    v13 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v13;
  }

  *(a1 + 56) = v13;
  return v13;
}

uint64_t sub_1000BC0EC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000BB69C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000BC1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BC1D8(uint64_t result, uint64_t a2)
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

uint64_t sub_1000BC26C()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED7C0;
}

void sub_1000BC300(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BC314(uint64_t a1)
{
  *a1 = off_10098F858;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 72) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return a1;
}

void sub_1000BC380(uint64_t *a1)
{
  *a1 = off_10098F858;
  if (qword_1009F9A80 != a1)
  {
    v2 = a1[4];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  sub_100077C08(a1 + 6);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000BC424(uint64_t *a1)
{
  sub_1000BC380(a1);

  operator delete();
}

uint64_t sub_1000BC4C8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 > 3)
          {
            break;
          }

          if (v8 == 1)
          {
            if (v9 != 1)
            {
              goto LABEL_31;
            }

            *v51 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v51) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 16) = *v51;
            *(a1 + 76) |= 1u;
            v13 = *(this + 1);
            v11 = *(this + 2);
            if (v13 < v11 && *v13 == 16)
            {
              v14 = v13 + 1;
              *(this + 1) = v14;
LABEL_35:
              if (v14 >= v11 || (v18 = *v14, v18 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
                if (!result)
                {
                  return result;
                }

                v19 = *(this + 1);
                v11 = *(this + 2);
              }

              else
              {
                *(a1 + 24) = v18;
                v19 = v14 + 1;
                *(this + 1) = v19;
              }

              *(a1 + 76) |= 2u;
              if (v19 < v11 && *v19 == 24)
              {
                v12 = v19 + 1;
                *(this + 1) = v12;
                goto LABEL_43;
              }
            }
          }

          else
          {
            if (v8 == 2)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_31;
              }

              v14 = *(this + 1);
              v11 = *(this + 2);
              goto LABEL_35;
            }

            if (v8 != 3 || (TagFallback & 7) != 0)
            {
              goto LABEL_31;
            }

            v12 = *(this + 1);
            v11 = *(this + 2);
LABEL_43:
            if (v12 >= v11 || (v21 = *v12, v21 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
              if (!result)
              {
                return result;
              }

              v22 = *(this + 1);
              v11 = *(this + 2);
            }

            else
            {
              *(a1 + 28) = v21;
              v22 = v12 + 1;
              *(this + 1) = v22;
            }

            *(a1 + 76) |= 4u;
            if (v22 < v11 && *v22 == 32)
            {
              v15 = v22 + 1;
              *(this + 1) = v15;
              goto LABEL_51;
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
            goto LABEL_31;
          }

          v15 = *(this + 1);
          v11 = *(this + 2);
LABEL_51:
          if (v15 >= v11 || (v23 = *v15, v23 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
            if (!result)
            {
              return result;
            }

            v24 = *(this + 1);
            v11 = *(this + 2);
          }

          else
          {
            *(a1 + 40) = v23;
            v24 = v15 + 1;
            *(this + 1) = v24;
          }

          v10 = *(a1 + 76) | 8;
          *(a1 + 76) = v10;
          if (v24 < v11 && *v24 == 42)
          {
            *(this + 1) = v24 + 1;
            goto LABEL_59;
          }
        }

        else
        {
          if (v8 != 5 || v9 != 2)
          {
            goto LABEL_31;
          }

          v10 = *(a1 + 76);
LABEL_59:
          *(a1 + 76) = v10 | 0x10;
          v25 = *(a1 + 32);
          if (!v25)
          {
            operator new();
          }

          v51[0] = 0;
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v51))
            {
              return 0;
            }
          }

          else
          {
            v51[0] = *v26;
            *(this + 1) = v26 + 1;
          }

          v27 = *(this + 14);
          v28 = *(this + 15);
          *(this + 14) = v27 + 1;
          if (v27 >= v28)
          {
            return 0;
          }

          v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v51[0]);
          if (!sub_10009F5D8(v25, this, v30, v31) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v29);
          v32 = *(this + 14);
          v33 = __OFSUB__(v32, 1);
          v34 = v32 - 1;
          if (v34 < 0 == v33)
          {
            *(this + 14) = v34;
          }

          v35 = *(this + 1);
          v16 = *(this + 2);
          if (v35 < v16 && *v35 == 48)
          {
            v17 = v35 + 1;
            *(this + 1) = v17;
LABEL_73:
            if (v17 >= v16 || (v36 = *v17, v36 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 44));
              if (!result)
              {
                return result;
              }

              v37 = *(this + 1);
              v16 = *(this + 2);
            }

            else
            {
              *(a1 + 44) = v36;
              v37 = v17 + 1;
              *(this + 1) = v37;
            }

            *(a1 + 76) |= 0x20u;
            if (v37 < v16 && *v37 == 58)
            {
              goto LABEL_80;
            }
          }
        }
      }

      if (v8 == 6)
      {
        break;
      }

      if (v8 != 7 || v9 != 2)
      {
        goto LABEL_31;
      }

      while (2)
      {
        v38 = *(a1 + 60);
        v39 = *(a1 + 56);
        if (v39 >= v38)
        {
          if (v38 == *(a1 + 64))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v38 + 1);
            v38 = *(a1 + 60);
          }

          *(a1 + 60) = v38 + 1;
          sub_1000CD058();
        }

        v40 = *(a1 + 48);
        *(a1 + 56) = v39 + 1;
        v41 = *(v40 + 8 * v39);
        v51[0] = 0;
        v42 = *(this + 1);
        if (v42 >= *(this + 2) || *v42 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v51))
          {
            return 0;
          }
        }

        else
        {
          v51[0] = *v42;
          *(this + 1) = v42 + 1;
        }

        v43 = *(this + 14);
        v44 = *(this + 15);
        *(this + 14) = v43 + 1;
        if (v43 >= v44)
        {
          return 0;
        }

        v45 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v51[0]);
        if (!sub_1000BB928(v41, this, v46, v47) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v45);
        v48 = *(this + 14);
        v33 = __OFSUB__(v48, 1);
        v49 = v48 - 1;
        if (v49 < 0 == v33)
        {
          *(this + 14) = v49;
        }

        v37 = *(this + 1);
        v50 = *(this + 2);
        if (v37 < v50 && *v37 == 58)
        {
LABEL_80:
          *(this + 1) = v37 + 1;
          continue;
        }

        break;
      }

      if (v37 == v50 && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v17 = *(this + 1);
      v16 = *(this + 2);
      goto LABEL_73;
    }

LABEL_31:
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

uint64_t sub_1000BCA08(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 76);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 76);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 76);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 76);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 40), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_21:
  v11 = *(v5 + 32);
  if (!v11)
  {
    v11 = *(qword_1009F9A80 + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, v11, a2, a4);
  if ((*(v5 + 76) & 0x20) != 0)
  {
LABEL_7:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 44), a2, a4);
  }

LABEL_8:
  if (*(v5 + 56) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, *(*(v5 + 48) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 56));
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000BCB5C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 19);
  if (v5)
  {
    v6 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v6;
    v3 = (a2 + 9);
    v5 = *(this + 19);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 6);
    *v3 = 16;
    if (v7 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v7;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 76) & 4) != 0)
  {
    v8 = *(this + 7);
    *v3 = 24;
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

  if ((*(this + 76) & 8) != 0)
  {
    v9 = *(this + 10);
    *v3 = 32;
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

  v10 = *(this + 19);
  if ((v10 & 0x10) != 0)
  {
    v11 = *(this + 4);
    if (!v11)
    {
      v11 = *(qword_1009F9A80 + 32);
    }

    *v3 = 42;
    v12 = v11[7];
    if (v12 > 0x7F)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v12;
      v13 = (v3 + 2);
    }

    v3 = sub_10009F838(v11, v13, a3);
    v10 = *(this + 19);
  }

  if ((v10 & 0x20) != 0)
  {
    v14 = *(this + 11);
    *v3 = 48;
    if (v14 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v14;
      v3 = (v3 + 2);
    }
  }

  if (*(this + 14) >= 1)
  {
    v15 = 0;
    do
    {
      v16 = *(*(this + 6) + 8 * v15);
      *v3 = 58;
      v17 = v16[14];
      if (v17 > 0x7F)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v3 + 1, a3);
      }

      else
      {
        *(v3 + 1) = v17;
        v18 = (v3 + 2);
      }

      v3 = sub_1000BBDEC(v16, v18, a3);
      ++v15;
    }

    while (v15 < *(this + 14));
  }

  v21 = *(this + 1);
  v20 = (this + 8);
  v19 = v21;
  if (!v21 || *v19 == v19[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v20, v3, a3);
}

uint64_t sub_1000BCDA0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 76);
  if (!*(a1 + 76))
  {
    v4 = 0;
    goto LABEL_31;
  }

  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v5 = *(a1 + 24);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 76);
    }

    else
    {
      v6 = 2;
    }

    v4 += v6;
    if ((v3 & 4) == 0)
    {
LABEL_4:
      if ((v3 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_17;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v7 = *(a1 + 28);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
    v3 = *(a1 + 76);
  }

  else
  {
    v8 = 2;
  }

  v4 += v8;
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_17:
  v9 = *(a1 + 40);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
    v3 = *(a1 + 76);
  }

  else
  {
    v10 = 2;
  }

  v4 += v10;
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

LABEL_21:
  v11 = *(a1 + 32);
  if (!v11)
  {
    v11 = *(qword_1009F9A80 + 32);
  }

  v12 = sub_10009F954(v11, a2);
  v13 = v12;
  if (v12 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
  }

  else
  {
    v14 = 1;
  }

  v4 += v13 + v14 + 1;
  if ((*(a1 + 76) & 0x20) != 0)
  {
LABEL_27:
    v15 = *(a1 + 44);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
    }

    else
    {
      v16 = 2;
    }

    v4 += v16;
  }

LABEL_31:
  v17 = *(a1 + 56);
  v18 = (v17 + v4);
  if (v17 >= 1)
  {
    v19 = 0;
    do
    {
      v20 = sub_1000BBF88(*(*(a1 + 48) + 8 * v19), a2);
      v21 = v20;
      if (v20 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
      }

      else
      {
        v22 = 1;
      }

      v18 = (v21 + v18 + v22);
      ++v19;
    }

    while (v19 < *(a1 + 56));
  }

  v23 = *(a1 + 8);
  if (v23 && *v23 != v23[1])
  {
    v18 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v18;
  }

  *(a1 + 72) = v18;
  return v18;
}

uint64_t sub_1000BCF58(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009E24C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000BD02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BD044(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_1000CD058();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_1000BB69C(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_1000BD16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BD184(uint64_t result, uint64_t a2)
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

uint64_t sub_1000BD218()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED7D0;
}

void sub_1000BD2AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BD2C0(uint64_t a1)
{
  *a1 = off_10098F908;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

void sub_1000BD338(uint64_t a1)
{
  *a1 = off_10098F908;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000BD38C(uint64_t a1)
{
  *a1 = off_10098F908;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1000BD460(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
    if (TagFallback >> 3 > 6)
    {
      break;
    }

    if (TagFallback >> 3 > 3)
    {
      if (v8 == 4)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v18 = *(this + 1);
        v14 = *(this + 2);
        goto LABEL_132;
      }

      if (v8 == 5)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v21 = *(this + 1);
        v14 = *(this + 2);
        goto LABEL_140;
      }

      if (v8 == 6 && (TagFallback & 7) == 0)
      {
        v15 = *(this + 1);
        v14 = *(this + 2);
        goto LABEL_148;
      }

      goto LABEL_112;
    }

    if (v8 == 1)
    {
      if (v9 != 1)
      {
        goto LABEL_112;
      }

      *v146 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v146) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = *v146;
      *(a1 + 232) |= 1u;
      v16 = *(this + 1);
      v12 = *(this + 2);
      if (v16 < v12 && *v16 == 16)
      {
        v17 = v16 + 1;
        *(this + 1) = v17;
LABEL_34:
        if (v17 >= v12 || (v19 = *v17, v19 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v20 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v19;
          v20 = v17 + 1;
          *(this + 1) = v20;
        }

        *(a1 + 232) |= 2u;
        if (v20 < v12 && *v20 == 24)
        {
          v13 = v20 + 1;
          *(this + 1) = v13;
LABEL_121:
          v146[0] = 0;
          if (v13 >= v12 || (v61 = *v13, v61 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v146);
            if (!result)
            {
              return result;
            }

            v61 = v146[0];
          }

          else
          {
            *(this + 1) = v13 + 1;
          }

          if (sub_100094788(v61))
          {
            *(a1 + 232) |= 4u;
            *(a1 + 28) = v61;
          }

          else
          {
            wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 3, v61);
          }

          v62 = *(this + 1);
          v14 = *(this + 2);
          if (v62 < v14 && *v62 == 32)
          {
            v18 = v62 + 1;
            *(this + 1) = v18;
LABEL_132:
            if (v18 >= v14 || (v63 = *v18, v63 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
              if (!result)
              {
                return result;
              }

              v64 = *(this + 1);
              v14 = *(this + 2);
            }

            else
            {
              *(a1 + 40) = v63;
              v64 = v18 + 1;
              *(this + 1) = v64;
            }

            *(a1 + 232) |= 8u;
            if (v64 < v14 && *v64 == 40)
            {
              v21 = v64 + 1;
              *(this + 1) = v21;
LABEL_140:
              if (v21 >= v14 || (v65 = *v21, v65 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
                if (!result)
                {
                  return result;
                }

                v66 = *(this + 1);
                v14 = *(this + 2);
              }

              else
              {
                *(a1 + 32) = v65;
                v66 = v21 + 1;
                *(this + 1) = v66;
              }

              *(a1 + 232) |= 0x10u;
              if (v66 < v14 && *v66 == 48)
              {
                v15 = v66 + 1;
                *(this + 1) = v15;
LABEL_148:
                if (v15 >= v14 || (v67 = *v15, v67 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 48));
                  if (!result)
                  {
                    return result;
                  }

                  v68 = *(this + 1);
                  v14 = *(this + 2);
                }

                else
                {
                  *(a1 + 48) = v67;
                  v68 = v15 + 1;
                  *(this + 1) = v68;
                }

                *(a1 + 232) |= 0x20u;
                if (v68 < v14 && *v68 == 56)
                {
                  v38 = v68 + 1;
                  *(this + 1) = v38;
                  goto LABEL_156;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      if (v8 == 2)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v17 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_34;
      }

      if (v8 == 3 && (TagFallback & 7) == 0)
      {
        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_121;
      }

LABEL_112:
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

  switch(v8)
  {
    case 0x3E8u:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_172;
    case 0x3E9u:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v41 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_181;
    case 0x3EAu:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v36 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_190;
    case 0x3EBu:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v39 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_199;
    case 0x3ECu:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v31 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_208;
    case 0x3EDu:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v45 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_217;
    case 0x3EEu:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v48 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_226;
    case 0x3EFu:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v40 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_235;
    case 0x3F0u:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v51 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_244;
    case 0x3F1u:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v33 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_253;
    case 0x3F2u:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v50 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_262;
    case 0x3F3u:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v30 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_271;
    case 0x3F4u:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v32 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_280;
    case 0x3F5u:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v47 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_289;
    case 0x3F6u:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v28 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_298;
    case 0x3F7u:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v37 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_307;
    case 0x3F8u:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v27 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_316;
    case 0x3F9u:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v43 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_325;
    case 0x3FAu:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v49 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_334;
    case 0x3FBu:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v55 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_343;
    case 0x3FCu:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v44 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_352;
    case 0x3FDu:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v46 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_361;
    case 0x3FEu:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v54 = *(this + 1);
      goto LABEL_370;
    case 0x3FFu:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v56 = *(this + 1);
      v22 = *(this + 2);
      goto LABEL_379;
    case 0x400u:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v35 = *(this + 1);
      v22 = *(this + 2);
      goto LABEL_388;
    case 0x401u:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v34 = *(this + 1);
      v22 = *(this + 2);
      goto LABEL_397;
    case 0x402u:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v59 = *(this + 1);
      v22 = *(this + 2);
      goto LABEL_406;
    case 0x403u:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v25 = *(this + 1);
      v22 = *(this + 2);
      goto LABEL_415;
    case 0x404u:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v57 = *(this + 1);
      v22 = *(this + 2);
      goto LABEL_424;
    case 0x405u:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v58 = *(this + 1);
      v22 = *(this + 2);
      goto LABEL_433;
    case 0x406u:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v52 = *(this + 1);
      v22 = *(this + 2);
      goto LABEL_442;
    case 0x407u:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v42 = *(this + 1);
      v22 = *(this + 2);
      goto LABEL_451;
    case 0x408u:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v53 = *(this + 1);
      v22 = *(this + 2);
      goto LABEL_460;
    case 0x409u:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v29 = *(this + 1);
      v22 = *(this + 2);
      goto LABEL_469;
    case 0x40Au:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v26 = *(this + 1);
      v22 = *(this + 2);
      goto LABEL_478;
    case 0x40Bu:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v23 = *(this + 1);
      v22 = *(this + 2);
      goto LABEL_487;
    case 0x40Cu:
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_112;
      }

      v24 = *(this + 1);
      v22 = *(this + 2);
      goto LABEL_496;
    default:
      if (v8 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v38 = *(this + 1);
        v14 = *(this + 2);
LABEL_156:
        v146[0] = 0;
        if (v38 >= v14 || (v69 = *v38, (v69 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v146);
          if (!result)
          {
            return result;
          }

          v69 = v146[0];
        }

        else
        {
          *(this + 1) = v38 + 1;
        }

        if (v69 > 1)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 7, v69);
        }

        else
        {
          *(a1 + 232) |= 0x40u;
          *(a1 + 44) = v69;
        }

        v70 = *(this + 1);
        if (v70 < *(this + 2) && *v70 == 65)
        {
          *(this + 1) = v70 + 1;
          goto LABEL_167;
        }

        goto LABEL_1;
      }

      if (v8 != 8 || v9 != 1)
      {
        goto LABEL_112;
      }

LABEL_167:
      *v146 = 0;
      if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v146))
      {
        *(a1 + 56) = *v146;
        *(a1 + 232) |= 0x80u;
        v71 = *(this + 1);
        v10 = *(this + 2);
        if (v10 - v71 >= 2 && *v71 == 192 && v71[1] == 62)
        {
          v11 = (v71 + 2);
          *(this + 1) = v11;
LABEL_172:
          if (v11 >= v10 || (v72 = *v11, v72 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 64));
            if (!result)
            {
              return result;
            }

            v73 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            *(a1 + 64) = v72;
            v73 = (v11 + 1);
            *(this + 1) = v73;
          }

          *(a1 + 232) |= 0x100u;
          if (v10 - v73 >= 2 && *v73 == 200 && v73[1] == 62)
          {
            v41 = (v73 + 2);
            *(this + 1) = v41;
LABEL_181:
            if (v41 >= v10 || (v74 = *v41, v74 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 68));
              if (!result)
              {
                return result;
              }

              v75 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 68) = v74;
              v75 = (v41 + 1);
              *(this + 1) = v75;
            }

            *(a1 + 232) |= 0x200u;
            if (v10 - v75 >= 2 && *v75 == 208 && v75[1] == 62)
            {
              v36 = (v75 + 2);
              *(this + 1) = v36;
LABEL_190:
              if (v36 >= v10 || (v76 = *v36, v76 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 72));
                if (!result)
                {
                  return result;
                }

                v77 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                *(a1 + 72) = v76;
                v77 = (v36 + 1);
                *(this + 1) = v77;
              }

              *(a1 + 232) |= 0x400u;
              if (v10 - v77 >= 2 && *v77 == 216 && v77[1] == 62)
              {
                v39 = (v77 + 2);
                *(this + 1) = v39;
LABEL_199:
                if (v39 >= v10 || (v78 = *v39, v78 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 76));
                  if (!result)
                  {
                    return result;
                  }

                  v79 = *(this + 1);
                  v10 = *(this + 2);
                }

                else
                {
                  *(a1 + 76) = v78;
                  v79 = (v39 + 1);
                  *(this + 1) = v79;
                }

                *(a1 + 232) |= 0x800u;
                if (v10 - v79 >= 2 && *v79 == 224 && v79[1] == 62)
                {
                  v31 = (v79 + 2);
                  *(this + 1) = v31;
LABEL_208:
                  if (v31 >= v10 || (v80 = *v31, v80 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 88));
                    if (!result)
                    {
                      return result;
                    }

                    v81 = *(this + 1);
                    v10 = *(this + 2);
                  }

                  else
                  {
                    *(a1 + 88) = v80;
                    v81 = (v31 + 1);
                    *(this + 1) = v81;
                  }

                  *(a1 + 232) |= 0x1000u;
                  if (v10 - v81 >= 2 && *v81 == 232 && v81[1] == 62)
                  {
                    v45 = (v81 + 2);
                    *(this + 1) = v45;
LABEL_217:
                    if (v45 >= v10 || (v82 = *v45, v82 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 80));
                      if (!result)
                      {
                        return result;
                      }

                      v83 = *(this + 1);
                      v10 = *(this + 2);
                    }

                    else
                    {
                      *(a1 + 80) = v82;
                      v83 = (v45 + 1);
                      *(this + 1) = v83;
                    }

                    *(a1 + 232) |= 0x2000u;
                    if (v10 - v83 >= 2 && *v83 == 240 && v83[1] == 62)
                    {
                      v48 = (v83 + 2);
                      *(this + 1) = v48;
LABEL_226:
                      if (v48 >= v10 || (v84 = *v48, v84 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 96));
                        if (!result)
                        {
                          return result;
                        }

                        v85 = *(this + 1);
                        v10 = *(this + 2);
                      }

                      else
                      {
                        *(a1 + 96) = v84;
                        v85 = (v48 + 1);
                        *(this + 1) = v85;
                      }

                      *(a1 + 232) |= 0x4000u;
                      if (v10 - v85 >= 2 && *v85 == 248 && v85[1] == 62)
                      {
                        v40 = (v85 + 2);
                        *(this + 1) = v40;
LABEL_235:
                        if (v40 >= v10 || (v86 = *v40, v86 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 92));
                          if (!result)
                          {
                            return result;
                          }

                          v87 = *(this + 1);
                          v10 = *(this + 2);
                        }

                        else
                        {
                          *(a1 + 92) = v86;
                          v87 = (v40 + 1);
                          *(this + 1) = v87;
                        }

                        *(a1 + 232) |= 0x8000u;
                        if (v10 - v87 >= 2 && *v87 == 128 && v87[1] == 63)
                        {
                          v51 = (v87 + 2);
                          *(this + 1) = v51;
LABEL_244:
                          if (v51 >= v10 || (v88 = *v51, v88 < 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 104));
                            if (!result)
                            {
                              return result;
                            }

                            v89 = *(this + 1);
                            v10 = *(this + 2);
                          }

                          else
                          {
                            *(a1 + 104) = v88;
                            v89 = (v51 + 1);
                            *(this + 1) = v89;
                          }

                          *(a1 + 232) |= 0x10000u;
                          if (v10 - v89 >= 2 && *v89 == 136 && v89[1] == 63)
                          {
                            v33 = (v89 + 2);
                            *(this + 1) = v33;
LABEL_253:
                            if (v33 >= v10 || (v90 = *v33, v90 < 0))
                            {
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 108));
                              if (!result)
                              {
                                return result;
                              }

                              v91 = *(this + 1);
                              v10 = *(this + 2);
                            }

                            else
                            {
                              *(a1 + 108) = v90;
                              v91 = (v33 + 1);
                              *(this + 1) = v91;
                            }

                            *(a1 + 232) |= 0x20000u;
                            if (v10 - v91 >= 2 && *v91 == 144 && v91[1] == 63)
                            {
                              v50 = (v91 + 2);
                              *(this + 1) = v50;
LABEL_262:
                              if (v50 >= v10 || (v92 = *v50, v92 < 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 112));
                                if (!result)
                                {
                                  return result;
                                }

                                v93 = *(this + 1);
                                v10 = *(this + 2);
                              }

                              else
                              {
                                *(a1 + 112) = v92;
                                v93 = (v50 + 1);
                                *(this + 1) = v93;
                              }

                              *(a1 + 232) |= 0x40000u;
                              if (v10 - v93 >= 2 && *v93 == 152 && v93[1] == 63)
                              {
                                v30 = (v93 + 2);
                                *(this + 1) = v30;
LABEL_271:
                                if (v30 >= v10 || (v94 = *v30, v94 < 0))
                                {
                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 120));
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v95 = *(this + 1);
                                  v10 = *(this + 2);
                                }

                                else
                                {
                                  *(a1 + 120) = v94;
                                  v95 = (v30 + 1);
                                  *(this + 1) = v95;
                                }

                                *(a1 + 232) |= 0x80000u;
                                if (v10 - v95 >= 2 && *v95 == 160 && v95[1] == 63)
                                {
                                  v32 = (v95 + 2);
                                  *(this + 1) = v32;
LABEL_280:
                                  v146[0] = 0;
                                  if (v32 >= v10 || (v96 = *v32, (v96 & 0x80000000) != 0))
                                  {
                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v146);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v96 = v146[0];
                                    v97 = *(this + 1);
                                    v10 = *(this + 2);
                                  }

                                  else
                                  {
                                    v97 = (v32 + 1);
                                    *(this + 1) = v97;
                                  }

                                  *(a1 + 128) = v96;
                                  *(a1 + 232) |= 0x100000u;
                                  if (v10 - v97 >= 2 && *v97 == 168 && v97[1] == 63)
                                  {
                                    v47 = (v97 + 2);
                                    *(this + 1) = v47;
LABEL_289:
                                    v146[0] = 0;
                                    if (v47 >= v10 || (v98 = *v47, (v98 & 0x80000000) != 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v146);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v98 = v146[0];
                                      v99 = *(this + 1);
                                      v10 = *(this + 2);
                                    }

                                    else
                                    {
                                      v99 = (v47 + 1);
                                      *(this + 1) = v99;
                                    }

                                    *(a1 + 132) = v98;
                                    *(a1 + 232) |= 0x200000u;
                                    if (v10 - v99 >= 2 && *v99 == 176 && v99[1] == 63)
                                    {
                                      v28 = (v99 + 2);
                                      *(this + 1) = v28;
LABEL_298:
                                      if (v28 >= v10 || (v100 = *v28, v100 < 0))
                                      {
                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 136));
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v101 = *(this + 1);
                                        v10 = *(this + 2);
                                      }

                                      else
                                      {
                                        *(a1 + 136) = v100;
                                        v101 = (v28 + 1);
                                        *(this + 1) = v101;
                                      }

                                      *(a1 + 232) |= 0x400000u;
                                      if (v10 - v101 >= 2 && *v101 == 184 && v101[1] == 63)
                                      {
                                        v37 = (v101 + 2);
                                        *(this + 1) = v37;
LABEL_307:
                                        v146[0] = 0;
                                        if (v37 >= v10 || (v102 = *v37, (v102 & 0x80000000) != 0))
                                        {
                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v146);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v102 = v146[0];
                                          v103 = *(this + 1);
                                          v10 = *(this + 2);
                                        }

                                        else
                                        {
                                          v103 = (v37 + 1);
                                          *(this + 1) = v103;
                                        }

                                        *(a1 + 140) = v102;
                                        *(a1 + 232) |= 0x800000u;
                                        if (v10 - v103 >= 2 && *v103 == 192 && v103[1] == 63)
                                        {
                                          v27 = (v103 + 2);
                                          *(this + 1) = v27;
LABEL_316:
                                          v146[0] = 0;
                                          if (v27 >= v10 || (v104 = *v27, (v104 & 0x80000000) != 0))
                                          {
                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v146);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v104 = v146[0];
                                            v105 = *(this + 1);
                                            v10 = *(this + 2);
                                          }

                                          else
                                          {
                                            v105 = (v27 + 1);
                                            *(this + 1) = v105;
                                          }

                                          *(a1 + 144) = v104;
                                          *(a1 + 232) |= 0x1000000u;
                                          if (v10 - v105 >= 2 && *v105 == 200 && v105[1] == 63)
                                          {
                                            v43 = (v105 + 2);
                                            *(this + 1) = v43;
LABEL_325:
                                            if (v43 >= v10 || (v106 = *v43, v106 < 0))
                                            {
                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 148));
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v107 = *(this + 1);
                                              v10 = *(this + 2);
                                            }

                                            else
                                            {
                                              *(a1 + 148) = v106;
                                              v107 = (v43 + 1);
                                              *(this + 1) = v107;
                                            }

                                            *(a1 + 232) |= 0x2000000u;
                                            if (v10 - v107 >= 2 && *v107 == 208 && v107[1] == 63)
                                            {
                                              v49 = (v107 + 2);
                                              *(this + 1) = v49;
LABEL_334:
                                              v146[0] = 0;
                                              if (v49 >= v10 || (v108 = *v49, (v108 & 0x80000000) != 0))
                                              {
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v146);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v108 = v146[0];
                                                v109 = *(this + 1);
                                                v10 = *(this + 2);
                                              }

                                              else
                                              {
                                                v109 = (v49 + 1);
                                                *(this + 1) = v109;
                                              }

                                              *(a1 + 152) = v108;
                                              *(a1 + 232) |= 0x4000000u;
                                              if (v10 - v109 >= 2 && *v109 == 216 && v109[1] == 63)
                                              {
                                                v55 = (v109 + 2);
                                                *(this + 1) = v55;
LABEL_343:
                                                v146[0] = 0;
                                                if (v55 >= v10 || (v110 = *v55, (v110 & 0x80000000) != 0))
                                                {
                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v146);
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  v110 = v146[0];
                                                  v111 = *(this + 1);
                                                  v10 = *(this + 2);
                                                }

                                                else
                                                {
                                                  v111 = (v55 + 1);
                                                  *(this + 1) = v111;
                                                }

                                                *(a1 + 156) = v110;
                                                *(a1 + 232) |= 0x8000000u;
                                                if (v10 - v111 >= 2 && *v111 == 224 && v111[1] == 63)
                                                {
                                                  v44 = (v111 + 2);
                                                  *(this + 1) = v44;
LABEL_352:
                                                  v146[0] = 0;
                                                  if (v44 >= v10 || (v112 = *v44, (v112 & 0x80000000) != 0))
                                                  {
                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v146);
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    v112 = v146[0];
                                                    v113 = *(this + 1);
                                                    v10 = *(this + 2);
                                                  }

                                                  else
                                                  {
                                                    v113 = (v44 + 1);
                                                    *(this + 1) = v113;
                                                  }

                                                  *(a1 + 160) = v112;
                                                  *(a1 + 232) |= 0x10000000u;
                                                  if (v10 - v113 >= 2 && *v113 == 232 && v113[1] == 63)
                                                  {
                                                    v46 = (v113 + 2);
                                                    *(this + 1) = v46;
LABEL_361:
                                                    v146[0] = 0;
                                                    if (v46 >= v10 || (v114 = *v46, (v114 & 0x80000000) != 0))
                                                    {
                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v146);
                                                      if (!result)
                                                      {
                                                        return result;
                                                      }

                                                      v114 = v146[0];
                                                      v115 = *(this + 1);
                                                      v10 = *(this + 2);
                                                    }

                                                    else
                                                    {
                                                      v115 = (v46 + 1);
                                                      *(this + 1) = v115;
                                                    }

                                                    *(a1 + 164) = v114;
                                                    *(a1 + 232) |= 0x20000000u;
                                                    if (v10 - v115 >= 2 && *v115 == 240 && v115[1] == 63)
                                                    {
                                                      v54 = (v115 + 2);
                                                      *(this + 1) = v54;
LABEL_370:
                                                      v146[0] = 0;
                                                      v22 = *(this + 2);
                                                      if (v54 >= v22 || (v116 = *v54, (v116 & 0x80000000) != 0))
                                                      {
                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v146);
                                                        if (!result)
                                                        {
                                                          return result;
                                                        }

                                                        v116 = v146[0];
                                                        v117 = *(this + 1);
                                                        v22 = *(this + 2);
                                                      }

                                                      else
                                                      {
                                                        v117 = (v54 + 1);
                                                        *(this + 1) = v117;
                                                      }

                                                      *(a1 + 168) = v116;
                                                      *(a1 + 232) |= 0x40000000u;
                                                      if (v22 - v117 >= 2 && *v117 == 248 && v117[1] == 63)
                                                      {
                                                        v56 = (v117 + 2);
                                                        *(this + 1) = v56;
LABEL_379:
                                                        if (v56 >= v22 || (v118 = *v56, v118 < 0))
                                                        {
                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 172));
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }

                                                          v119 = *(this + 1);
                                                          v22 = *(this + 2);
                                                        }

                                                        else
                                                        {
                                                          *(a1 + 172) = v118;
                                                          v119 = (v56 + 1);
                                                          *(this + 1) = v119;
                                                        }

                                                        *(a1 + 232) |= 0x80000000;
                                                        if (v22 - v119 >= 2 && *v119 == 128 && v119[1] == 64)
                                                        {
                                                          v35 = (v119 + 2);
                                                          *(this + 1) = v35;
LABEL_388:
                                                          v146[0] = 0;
                                                          if (v35 >= v22 || (v120 = *v35, (v120 & 0x80000000) != 0))
                                                          {
                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v146);
                                                            if (!result)
                                                            {
                                                              return result;
                                                            }

                                                            v120 = v146[0];
                                                            v121 = *(this + 1);
                                                            v22 = *(this + 2);
                                                          }

                                                          else
                                                          {
                                                            v121 = (v35 + 1);
                                                            *(this + 1) = v121;
                                                          }

                                                          *(a1 + 176) = v120;
                                                          *(a1 + 236) |= 1u;
                                                          if (v22 - v121 >= 2 && *v121 == 136 && v121[1] == 64)
                                                          {
                                                            v34 = (v121 + 2);
                                                            *(this + 1) = v34;
LABEL_397:
                                                            v146[0] = 0;
                                                            if (v34 >= v22 || (v122 = *v34, (v122 & 0x80000000) != 0))
                                                            {
                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v146);
                                                              if (!result)
                                                              {
                                                                return result;
                                                              }

                                                              v122 = v146[0];
                                                              v123 = *(this + 1);
                                                              v22 = *(this + 2);
                                                            }

                                                            else
                                                            {
                                                              v123 = (v34 + 1);
                                                              *(this + 1) = v123;
                                                            }

                                                            *(a1 + 180) = v122;
                                                            *(a1 + 236) |= 2u;
                                                            if (v22 - v123 >= 2 && *v123 == 144 && v123[1] == 64)
                                                            {
                                                              v59 = (v123 + 2);
                                                              *(this + 1) = v59;
LABEL_406:
                                                              if (v59 >= v22 || (v124 = *v59, v124 < 0))
                                                              {
                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 184));
                                                                if (!result)
                                                                {
                                                                  return result;
                                                                }

                                                                v125 = *(this + 1);
                                                                v22 = *(this + 2);
                                                              }

                                                              else
                                                              {
                                                                *(a1 + 184) = v124;
                                                                v125 = (v59 + 1);
                                                                *(this + 1) = v125;
                                                              }

                                                              *(a1 + 236) |= 4u;
                                                              if (v22 - v125 >= 2 && *v125 == 152 && v125[1] == 64)
                                                              {
                                                                v25 = (v125 + 2);
                                                                *(this + 1) = v25;
LABEL_415:
                                                                v146[0] = 0;
                                                                if (v25 >= v22 || (v126 = *v25, (v126 & 0x80000000) != 0))
                                                                {
                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v146);
                                                                  if (!result)
                                                                  {
                                                                    return result;
                                                                  }

                                                                  v126 = v146[0];
                                                                  v127 = *(this + 1);
                                                                  v22 = *(this + 2);
                                                                }

                                                                else
                                                                {
                                                                  v127 = (v25 + 1);
                                                                  *(this + 1) = v127;
                                                                }

                                                                *(a1 + 188) = v126;
                                                                *(a1 + 236) |= 8u;
                                                                if (v22 - v127 >= 2 && *v127 == 160 && v127[1] == 64)
                                                                {
                                                                  v57 = (v127 + 2);
                                                                  *(this + 1) = v57;
LABEL_424:
                                                                  v146[0] = 0;
                                                                  if (v57 >= v22 || (v128 = *v57, (v128 & 0x80000000) != 0))
                                                                  {
                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v146);
                                                                    if (!result)
                                                                    {
                                                                      return result;
                                                                    }

                                                                    v128 = v146[0];
                                                                    v129 = *(this + 1);
                                                                    v22 = *(this + 2);
                                                                  }

                                                                  else
                                                                  {
                                                                    v129 = (v57 + 1);
                                                                    *(this + 1) = v129;
                                                                  }

                                                                  *(a1 + 192) = v128;
                                                                  *(a1 + 236) |= 0x10u;
                                                                  if (v22 - v129 >= 2 && *v129 == 168 && v129[1] == 64)
                                                                  {
                                                                    v58 = (v129 + 2);
                                                                    *(this + 1) = v58;
LABEL_433:
                                                                    v146[0] = 0;
                                                                    if (v58 >= v22 || (v130 = *v58, (v130 & 0x80000000) != 0))
                                                                    {
                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v146);
                                                                      if (!result)
                                                                      {
                                                                        return result;
                                                                      }

                                                                      v130 = v146[0];
                                                                      v131 = *(this + 1);
                                                                      v22 = *(this + 2);
                                                                    }

                                                                    else
                                                                    {
                                                                      v131 = (v58 + 1);
                                                                      *(this + 1) = v131;
                                                                    }

                                                                    *(a1 + 196) = v130;
                                                                    *(a1 + 236) |= 0x20u;
                                                                    if (v22 - v131 >= 2 && *v131 == 176 && v131[1] == 64)
                                                                    {
                                                                      v52 = (v131 + 2);
                                                                      *(this + 1) = v52;
LABEL_442:
                                                                      if (v52 >= v22 || (v132 = *v52, v132 < 0))
                                                                      {
                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 200));
                                                                        if (!result)
                                                                        {
                                                                          return result;
                                                                        }

                                                                        v133 = *(this + 1);
                                                                        v22 = *(this + 2);
                                                                      }

                                                                      else
                                                                      {
                                                                        *(a1 + 200) = v132;
                                                                        v133 = (v52 + 1);
                                                                        *(this + 1) = v133;
                                                                      }

                                                                      *(a1 + 236) |= 0x40u;
                                                                      if (v22 - v133 >= 2 && *v133 == 184 && v133[1] == 64)
                                                                      {
                                                                        v42 = (v133 + 2);
                                                                        *(this + 1) = v42;
LABEL_451:
                                                                        if (v42 >= v22 || (v134 = *v42, v134 < 0))
                                                                        {
                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 204));
                                                                          if (!result)
                                                                          {
                                                                            return result;
                                                                          }

                                                                          v135 = *(this + 1);
                                                                          v22 = *(this + 2);
                                                                        }

                                                                        else
                                                                        {
                                                                          *(a1 + 204) = v134;
                                                                          v135 = (v42 + 1);
                                                                          *(this + 1) = v135;
                                                                        }

                                                                        *(a1 + 236) |= 0x80u;
                                                                        if (v22 - v135 >= 2 && *v135 == 192 && v135[1] == 64)
                                                                        {
                                                                          v53 = (v135 + 2);
                                                                          *(this + 1) = v53;
LABEL_460:
                                                                          if (v53 >= v22 || (v136 = *v53, v136 < 0))
                                                                          {
                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 208));
                                                                            if (!result)
                                                                            {
                                                                              return result;
                                                                            }

                                                                            v137 = *(this + 1);
                                                                            v22 = *(this + 2);
                                                                          }

                                                                          else
                                                                          {
                                                                            *(a1 + 208) = v136;
                                                                            v137 = (v53 + 1);
                                                                            *(this + 1) = v137;
                                                                          }

                                                                          *(a1 + 236) |= 0x100u;
                                                                          if (v22 - v137 >= 2 && *v137 == 200 && v137[1] == 64)
                                                                          {
                                                                            v29 = (v137 + 2);
                                                                            *(this + 1) = v29;
LABEL_469:
                                                                            if (v29 >= v22 || (v138 = *v29, v138 < 0))
                                                                            {
                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 212));
                                                                              if (!result)
                                                                              {
                                                                                return result;
                                                                              }

                                                                              v139 = *(this + 1);
                                                                              v22 = *(this + 2);
                                                                            }

                                                                            else
                                                                            {
                                                                              *(a1 + 212) = v138;
                                                                              v139 = (v29 + 1);
                                                                              *(this + 1) = v139;
                                                                            }

                                                                            *(a1 + 236) |= 0x200u;
                                                                            if (v22 - v139 >= 2 && *v139 == 208 && v139[1] == 64)
                                                                            {
                                                                              v26 = (v139 + 2);
                                                                              *(this + 1) = v26;
LABEL_478:
                                                                              v146[0] = 0;
                                                                              if (v26 >= v22 || (v140 = *v26, (v140 & 0x80000000) != 0))
                                                                              {
                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v146);
                                                                                if (!result)
                                                                                {
                                                                                  return result;
                                                                                }

                                                                                v140 = v146[0];
                                                                                v141 = *(this + 1);
                                                                                v22 = *(this + 2);
                                                                              }

                                                                              else
                                                                              {
                                                                                v141 = (v26 + 1);
                                                                                *(this + 1) = v141;
                                                                              }

                                                                              *(a1 + 216) = v140;
                                                                              *(a1 + 236) |= 0x400u;
                                                                              if (v22 - v141 >= 2 && *v141 == 216 && v141[1] == 64)
                                                                              {
                                                                                v23 = (v141 + 2);
                                                                                *(this + 1) = v23;
LABEL_487:
                                                                                v146[0] = 0;
                                                                                if (v23 >= v22 || (v142 = *v23, (v142 & 0x80000000) != 0))
                                                                                {
                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v146);
                                                                                  if (!result)
                                                                                  {
                                                                                    return result;
                                                                                  }

                                                                                  v142 = v146[0];
                                                                                  v143 = *(this + 1);
                                                                                  v22 = *(this + 2);
                                                                                }

                                                                                else
                                                                                {
                                                                                  v143 = (v23 + 1);
                                                                                  *(this + 1) = v143;
                                                                                }

                                                                                *(a1 + 220) = v142;
                                                                                *(a1 + 236) |= 0x800u;
                                                                                if (v22 - v143 >= 2 && *v143 == 224 && v143[1] == 64)
                                                                                {
                                                                                  v24 = (v143 + 2);
                                                                                  *(this + 1) = v24;
LABEL_496:
                                                                                  v146[0] = 0;
                                                                                  if (v24 >= v22 || (v144 = *v24, (v144 & 0x80000000) != 0))
                                                                                  {
                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v146);
                                                                                    if (!result)
                                                                                    {
                                                                                      return result;
                                                                                    }

                                                                                    v144 = v146[0];
                                                                                    v145 = *(this + 1);
                                                                                    v22 = *(this + 2);
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v145 = v24 + 1;
                                                                                    *(this + 1) = v145;
                                                                                  }

                                                                                  *(a1 + 224) = v144;
                                                                                  *(a1 + 236) |= 0x1000u;
                                                                                  if (v145 == v22 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_1;
      }

      return 0;
  }
}

uint64_t sub_1000BEAD4(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 232);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 232);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_55;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 40), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 48), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(7, *(v5 + 44), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 56), a3);
  v6 = *(v5 + 232);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3E8, *(v5 + 64), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3E9, *(v5 + 68), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3EA, *(v5 + 72), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3EB, *(v5 + 76), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3EC, *(v5 + 88), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x3ED, *(v5 + 80), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x3EE, *(v5 + 96), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3EF, *(v5 + 92), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3F0, *(v5 + 104), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3F1, *(v5 + 108), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x3F2, *(v5 + 112), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x3F3, *(v5 + 120), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3F4, *(v5 + 128), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_75;
  }

LABEL_74:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3F5, *(v5 + 132), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_76;
  }

LABEL_75:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3F6, *(v5 + 136), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_77;
  }

LABEL_76:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3F7, *(v5 + 140), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_78;
  }

LABEL_77:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3F8, *(v5 + 144), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_79;
  }

LABEL_78:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3F9, *(v5 + 148), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_80;
  }

LABEL_79:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3FA, *(v5 + 152), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_81;
  }

LABEL_80:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3FB, *(v5 + 156), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_82;
  }

LABEL_81:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3FC, *(v5 + 160), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_83:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3FE, *(v5 + 168), a2, a4);
    if ((*(v5 + 232) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_84;
  }

LABEL_82:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3FD, *(v5 + 164), a2, a4);
  v6 = *(v5 + 232);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_83;
  }

LABEL_32:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_84:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3FF, *(v5 + 172), a2, a4);
LABEL_33:
  v7 = *(v5 + 236);
  if (v7)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x400, *(v5 + 176), a2, a4);
    v7 = *(v5 + 236);
    if ((v7 & 2) == 0)
    {
LABEL_35:
      if ((v7 & 4) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_87;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_35;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x401, *(v5 + 180), a2, a4);
  v7 = *(v5 + 236);
  if ((v7 & 4) == 0)
  {
LABEL_36:
    if ((v7 & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_88;
  }

LABEL_87:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x402, *(v5 + 184), a2, a4);
  v7 = *(v5 + 236);
  if ((v7 & 8) == 0)
  {
LABEL_37:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_89;
  }

LABEL_88:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x403, *(v5 + 188), a2, a4);
  v7 = *(v5 + 236);
  if ((v7 & 0x10) == 0)
  {
LABEL_38:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_90;
  }

LABEL_89:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x404, *(v5 + 192), a2, a4);
  v7 = *(v5 + 236);
  if ((v7 & 0x20) == 0)
  {
LABEL_39:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_91;
  }

LABEL_90:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x405, *(v5 + 196), a2, a4);
  v7 = *(v5 + 236);
  if ((v7 & 0x40) == 0)
  {
LABEL_40:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_92;
  }

LABEL_91:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x406, *(v5 + 200), a2, a4);
  v7 = *(v5 + 236);
  if ((v7 & 0x80) == 0)
  {
LABEL_41:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_93;
  }

LABEL_92:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x407, *(v5 + 204), a2, a4);
  v7 = *(v5 + 236);
  if ((v7 & 0x100) == 0)
  {
LABEL_42:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_94;
  }

LABEL_93:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x408, *(v5 + 208), a2, a4);
  v7 = *(v5 + 236);
  if ((v7 & 0x200) == 0)
  {
LABEL_43:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_95;
  }

LABEL_94:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x409, *(v5 + 212), a2, a4);
  v7 = *(v5 + 236);
  if ((v7 & 0x400) == 0)
  {
LABEL_44:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_45;
    }

LABEL_96:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x40B, *(v5 + 220), a2, a4);
    if ((*(v5 + 236) & 0x1000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_95:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x40A, *(v5 + 216), a2, a4);
  v7 = *(v5 + 236);
  if ((v7 & 0x800) != 0)
  {
    goto LABEL_96;
  }

LABEL_45:
  if ((v7 & 0x1000) != 0)
  {
LABEL_46:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x40C, *(v5 + 224), a2, a4);
  }

LABEL_47:
  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000BF01C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 58);
  if (v5)
  {
    v6 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v6;
    v3 = (a2 + 9);
    v5 = *(this + 58);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 6);
    *v3 = 16;
    if (v7 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v7;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 232) & 4) != 0)
  {
    v8 = *(this + 7);
    *v3 = 24;
    v9 = v3 + 1;
    if ((v8 & 0x80000000) != 0)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v8, v9, a3);
    }

    else
    {
      if (v8 <= 0x7F)
      {
        *(v3 + 1) = v8;
        v3 = (v3 + 2);
        goto LABEL_14;
      }

      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v9, a3);
    }

    v3 = v10;
  }

LABEL_14:
  if ((*(this + 232) & 8) != 0)
  {
    v11 = *(this + 10);
    *v3 = 32;
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

  v12 = *(this + 58);
  if ((v12 & 0x10) != 0)
  {
    v13 = *(this + 4);
    *v3 = 40;
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v13, v3 + 1, a3);
    v12 = *(this + 58);
    if ((v12 & 0x20) == 0)
    {
LABEL_20:
      if ((v12 & 0x40) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }
  }

  else if ((v12 & 0x20) == 0)
  {
    goto LABEL_20;
  }

  v14 = *(this + 6);
  *v3 = 48;
  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v14, v3 + 1, a3);
  if ((*(this + 58) & 0x40) == 0)
  {
    goto LABEL_30;
  }

LABEL_24:
  v15 = *(this + 11);
  *v3 = 56;
  v16 = v3 + 1;
  if ((v15 & 0x80000000) != 0)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v15, v16, a3);
  }

  else
  {
    if (v15 <= 0x7F)
    {
      *(v3 + 1) = v15;
      v3 = (v3 + 2);
      goto LABEL_30;
    }

    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v16, a3);
  }

  v3 = v17;
LABEL_30:
  v18 = *(this + 58);
  if ((v18 & 0x80) != 0)
  {
    v19 = *(this + 7);
    *v3 = 65;
    *(v3 + 1) = v19;
    v3 = (v3 + 9);
    v18 = *(this + 58);
  }

  if ((v18 & 0x100) != 0)
  {
    v20 = *(this + 16);
    *v3 = 16064;
    if (v20 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v3 + 2, a3);
    }

    else
    {
      *(v3 + 2) = v20;
      v3 = (v3 + 3);
    }
  }

  if ((*(this + 233) & 2) != 0)
  {
    v21 = *(this + 17);
    *v3 = 16072;
    if (v21 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v3 + 2, a3);
    }

    else
    {
      *(v3 + 2) = v21;
      v3 = (v3 + 3);
    }
  }

  if ((*(this + 233) & 4) != 0)
  {
    v22 = *(this + 18);
    *v3 = 16080;
    if (v22 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, v3 + 2, a3);
    }

    else
    {
      *(v3 + 2) = v22;
      v3 = (v3 + 3);
    }
  }

  if ((*(this + 233) & 8) != 0)
  {
    v23 = *(this + 19);
    *v3 = 16088;
    if (v23 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, v3 + 2, a3);
    }

    else
    {
      *(v3 + 2) = v23;
      v3 = (v3 + 3);
    }
  }

  if ((*(this + 233) & 0x10) != 0)
  {
    v24 = *(this + 22);
    *v3 = 16096;
    if (v24 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v24, v3 + 2, a3);
    }

    else
    {
      *(v3 + 2) = v24;
      v3 = (v3 + 3);
    }
  }

  v25 = *(this + 58);
  if ((v25 & 0x2000) != 0)
  {
    v26 = *(this + 10);
    *v3 = 16104;
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v26, v3 + 2, a3);
    v25 = *(this + 58);
    if ((v25 & 0x4000) == 0)
    {
LABEL_54:
      if ((v25 & 0x8000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_58;
    }
  }

  else if ((v25 & 0x4000) == 0)
  {
    goto LABEL_54;
  }

  v27 = *(this + 12);
  *v3 = 16112;
  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v27, v3 + 2, a3);
  if ((*(this + 58) & 0x8000) == 0)
  {
    goto LABEL_61;
  }

LABEL_58:
  v28 = *(this + 23);
  *v3 = 16120;
  if (v28 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v28, v3 + 2, a3);
  }

  else
  {
    *(v3 + 2) = v28;
    v3 = (v3 + 3);
  }

LABEL_61:
  if (*(this + 234))
  {
    v29 = *(this + 26);
    *v3 = 16256;
    if (v29 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v29, v3 + 2, a3);
    }

    else
    {
      *(v3 + 2) = v29;
      v3 = (v3 + 3);
    }
  }

  if ((*(this + 234) & 2) != 0)
  {
    v30 = *(this + 27);
    *v3 = 16264;
    if (v30 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v30, v3 + 2, a3);
    }

    else
    {
      *(v3 + 2) = v30;
      v3 = (v3 + 3);
    }
  }

  v31 = *(this + 58);
  if ((v31 & 0x40000) != 0)
  {
    v32 = *(this + 14);
    *v3 = 16272;
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v32, v3 + 2, a3);
    v31 = *(this + 58);
    if ((v31 & 0x80000) == 0)
    {
LABEL_71:
      if ((v31 & 0x100000) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_75;
    }
  }

  else if ((v31 & 0x80000) == 0)
  {
    goto LABEL_71;
  }

  v33 = *(this + 15);
  *v3 = 16280;
  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v33, v3 + 2, a3);
  if ((*(this + 58) & 0x100000) == 0)
  {
    goto LABEL_81;
  }

LABEL_75:
  v34 = *(this + 32);
  *v3 = 16288;
  v35 = v3 + 2;
  if ((v34 & 0x80000000) != 0)
  {
    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v34, v35, a3);
  }

  else
  {
    if (v34 <= 0x7F)
    {
      *(v3 + 2) = v34;
      v3 = (v3 + 3);
      goto LABEL_81;
    }

    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v34, v35, a3);
  }

  v3 = v36;
LABEL_81:
  if ((*(this + 234) & 0x20) == 0)
  {
    goto LABEL_88;
  }

  v37 = *(this + 33);
  *v3 = 16296;
  v38 = v3 + 2;
  if ((v37 & 0x80000000) != 0)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v37, v38, a3);
  }

  else
  {
    if (v37 <= 0x7F)
    {
      *(v3 + 2) = v37;
      v3 = (v3 + 3);
      goto LABEL_88;
    }

    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v37, v38, a3);
  }

  v3 = v39;
LABEL_88:
  if ((*(this + 234) & 0x40) != 0)
  {
    v40 = *(this + 34);
    *v3 = 16304;
    if (v40 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v40, v3 + 2, a3);
    }

    else
    {
      *(v3 + 2) = v40;
      v3 = (v3 + 3);
    }
  }

  if ((*(this + 234) & 0x80) != 0)
  {
    v41 = *(this + 35);
    *v3 = 16312;
    v42 = v3 + 2;
    if ((v41 & 0x80000000) != 0)
    {
      v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v41, v42, a3);
    }

    else
    {
      if (v41 <= 0x7F)
      {
        *(v3 + 2) = v41;
        v3 = (v3 + 3);
        goto LABEL_99;
      }

      v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v41, v42, a3);
    }

    v3 = v43;
  }

LABEL_99:
  if ((*(this + 235) & 1) == 0)
  {
    goto LABEL_106;
  }

  v44 = *(this + 36);
  *v3 = 16320;
  v45 = v3 + 2;
  if ((v44 & 0x80000000) != 0)
  {
    v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v44, v45, a3);
  }

  else
  {
    if (v44 <= 0x7F)
    {
      *(v3 + 2) = v44;
      v3 = (v3 + 3);
      goto LABEL_106;
    }

    v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v44, v45, a3);
  }

  v3 = v46;
LABEL_106:
  if ((*(this + 235) & 2) != 0)
  {
    v47 = *(this + 37);
    *v3 = 16328;
    if (v47 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v47, v3 + 2, a3);
    }

    else
    {
      *(v3 + 2) = v47;
      v3 = (v3 + 3);
    }
  }

  if ((*(this + 235) & 4) != 0)
  {
    v48 = *(this + 38);
    *v3 = 16336;
    v49 = v3 + 2;
    if ((v48 & 0x80000000) != 0)
    {
      v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v48, v49, a3);
    }

    else
    {
      if (v48 <= 0x7F)
      {
        *(v3 + 2) = v48;
        v3 = (v3 + 3);
        goto LABEL_117;
      }

      v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v48, v49, a3);
    }

    v3 = v50;
  }

LABEL_117:
  if ((*(this + 235) & 8) == 0)
  {
    goto LABEL_124;
  }

  v51 = *(this + 39);
  *v3 = 16344;
  v52 = v3 + 2;
  if ((v51 & 0x80000000) != 0)
  {
    v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v51, v52, a3);
  }

  else
  {
    if (v51 <= 0x7F)
    {
      *(v3 + 2) = v51;
      v3 = (v3 + 3);
      goto LABEL_124;
    }

    v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v51, v52, a3);
  }

  v3 = v53;
LABEL_124:
  if ((*(this + 235) & 0x10) == 0)
  {
    goto LABEL_131;
  }

  v54 = *(this + 40);
  *v3 = 16352;
  v55 = v3 + 2;
  if ((v54 & 0x80000000) != 0)
  {
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v54, v55, a3);
  }

  else
  {
    if (v54 <= 0x7F)
    {
      *(v3 + 2) = v54;
      v3 = (v3 + 3);
      goto LABEL_131;
    }

    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v54, v55, a3);
  }

  v3 = v56;
LABEL_131:
  if ((*(this + 235) & 0x20) == 0)
  {
    goto LABEL_138;
  }

  v57 = *(this + 41);
  *v3 = 16360;
  v58 = v3 + 2;
  if ((v57 & 0x80000000) != 0)
  {
    v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v57, v58, a3);
  }

  else
  {
    if (v57 <= 0x7F)
    {
      *(v3 + 2) = v57;
      v3 = (v3 + 3);
      goto LABEL_138;
    }

    v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v57, v58, a3);
  }

  v3 = v59;
LABEL_138:
  v60 = *(this + 58);
  if ((v60 & 0x40000000) == 0)
  {
    goto LABEL_146;
  }

  v61 = *(this + 42);
  *v3 = 16368;
  v62 = v3 + 2;
  if ((v61 & 0x80000000) != 0)
  {
    v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v61, v62, a3);
LABEL_144:
    v3 = v63;
    goto LABEL_145;
  }

  if (v61 > 0x7F)
  {
    v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v61, v62, a3);
    goto LABEL_144;
  }

  *(v3 + 2) = v61;
  v3 = (v3 + 3);
LABEL_145:
  v60 = *(this + 58);
LABEL_146:
  if (v60 < 0)
  {
    v64 = *(this + 43);
    *v3 = 16376;
    if (v64 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v64, v3 + 2, a3);
    }

    else
    {
      *(v3 + 2) = v64;
      v3 = (v3 + 3);
    }
  }

  if (*(this + 236))
  {
    v65 = *(this + 44);
    *v3 = 16512;
    v66 = v3 + 2;
    if ((v65 & 0x80000000) != 0)
    {
      v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v65, v66, a3);
    }

    else
    {
      if (v65 <= 0x7F)
      {
        *(v3 + 2) = v65;
        v3 = (v3 + 3);
        goto LABEL_157;
      }

      v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v65, v66, a3);
    }

    v3 = v67;
  }

LABEL_157:
  if ((*(this + 236) & 2) == 0)
  {
    goto LABEL_164;
  }

  v68 = *(this + 45);
  *v3 = 16520;
  v69 = v3 + 2;
  if ((v68 & 0x80000000) != 0)
  {
    v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v68, v69, a3);
  }

  else
  {
    if (v68 <= 0x7F)
    {
      *(v3 + 2) = v68;
      v3 = (v3 + 3);
      goto LABEL_164;
    }

    v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v68, v69, a3);
  }

  v3 = v70;
LABEL_164:
  if ((*(this + 236) & 4) != 0)
  {
    v71 = *(this + 46);
    *v3 = 16528;
    if (v71 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v71, v3 + 2, a3);
    }

    else
    {
      *(v3 + 2) = v71;
      v3 = (v3 + 3);
    }
  }

  if ((*(this + 236) & 8) != 0)
  {
    v72 = *(this + 47);
    *v3 = 16536;
    v73 = v3 + 2;
    if ((v72 & 0x80000000) != 0)
    {
      v74 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v72, v73, a3);
    }

    else
    {
      if (v72 <= 0x7F)
      {
        *(v3 + 2) = v72;
        v3 = (v3 + 3);
        goto LABEL_175;
      }

      v74 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v72, v73, a3);
    }

    v3 = v74;
  }

LABEL_175:
  if ((*(this + 236) & 0x10) == 0)
  {
    goto LABEL_182;
  }

  v75 = *(this + 48);
  *v3 = 16544;
  v76 = v3 + 2;
  if ((v75 & 0x80000000) != 0)
  {
    v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v75, v76, a3);
  }

  else
  {
    if (v75 <= 0x7F)
    {
      *(v3 + 2) = v75;
      v3 = (v3 + 3);
      goto LABEL_182;
    }

    v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v75, v76, a3);
  }

  v3 = v77;
LABEL_182:
  if ((*(this + 236) & 0x20) == 0)
  {
    goto LABEL_189;
  }

  v78 = *(this + 49);
  *v3 = 16552;
  v79 = v3 + 2;
  if ((v78 & 0x80000000) != 0)
  {
    v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v78, v79, a3);
  }

  else
  {
    if (v78 <= 0x7F)
    {
      *(v3 + 2) = v78;
      v3 = (v3 + 3);
      goto LABEL_189;
    }

    v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v78, v79, a3);
  }

  v3 = v80;
LABEL_189:
  if ((*(this + 236) & 0x40) != 0)
  {
    v81 = *(this + 50);
    *v3 = 16560;
    if (v81 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v81, v3 + 2, a3);
    }

    else
    {
      *(v3 + 2) = v81;
      v3 = (v3 + 3);
    }
  }

  if ((*(this + 236) & 0x80) != 0)
  {
    v82 = *(this + 51);
    *v3 = 16568;
    if (v82 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v82, v3 + 2, a3);
    }

    else
    {
      *(v3 + 2) = v82;
      v3 = (v3 + 3);
    }
  }

  if (*(this + 237))
  {
    v83 = *(this + 52);
    *v3 = 16576;
    if (v83 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v83, v3 + 2, a3);
    }

    else
    {
      *(v3 + 2) = v83;
      v3 = (v3 + 3);
    }
  }

  if ((*(this + 237) & 2) != 0)
  {
    v84 = *(this + 53);
    *v3 = 16584;
    if (v84 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v84, v3 + 2, a3);
    }

    else
    {
      *(v3 + 2) = v84;
      v3 = (v3 + 3);
    }
  }

  if ((*(this + 237) & 4) != 0)
  {
    v85 = *(this + 54);
    *v3 = 16592;
    v86 = v3 + 2;
    if ((v85 & 0x80000000) != 0)
    {
      v87 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v85, v86, a3);
    }

    else
    {
      if (v85 <= 0x7F)
      {
        *(v3 + 2) = v85;
        v3 = (v3 + 3);
        goto LABEL_212;
      }

      v87 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v85, v86, a3);
    }

    v3 = v87;
  }

LABEL_212:
  if ((*(this + 237) & 8) == 0)
  {
    goto LABEL_219;
  }

  v88 = *(this + 55);
  *v3 = 16600;
  v89 = v3 + 2;
  if ((v88 & 0x80000000) != 0)
  {
    v90 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v88, v89, a3);
  }

  else
  {
    if (v88 <= 0x7F)
    {
      *(v3 + 2) = v88;
      v3 = (v3 + 3);
      goto LABEL_219;
    }

    v90 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v88, v89, a3);
  }

  v3 = v90;
LABEL_219:
  if ((*(this + 237) & 0x10) != 0)
  {
    v91 = *(this + 56);
    *v3 = 16608;
    v92 = v3 + 2;
    if ((v91 & 0x80000000) != 0)
    {
      v93 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v91, v92, a3);
    }

    else
    {
      if (v91 <= 0x7F)
      {
        *(v3 + 2) = v91;
        v3 = (v3 + 3);
        goto LABEL_226;
      }

      v93 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v91, v92, a3);
    }

    v3 = v93;
  }

LABEL_226:
  v96 = *(this + 1);
  v95 = (this + 8);
  v94 = v96;
  if (!v96 || *v94 == v94[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v95, v3, a3);
}

uint64_t sub_1000BFA70(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 232);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_35;
  }

  LODWORD(v4) = ((v3 << 31) >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v5 = *(a1 + 24);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 232);
    }

    else
    {
      v6 = 2;
    }

    LODWORD(v4) = v6 + v4;
    if ((v3 & 4) == 0)
    {
LABEL_4:
      if ((v3 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v7 = *(a1 + 28);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
    v3 = *(a1 + 232);
  }

  else
  {
    v8 = 2;
  }

  LODWORD(v4) = v8 + v4;
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_20:
  v9 = *(a1 + 40);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
    v3 = *(a1 + 232);
  }

  else
  {
    v10 = 2;
  }

  LODWORD(v4) = v10 + v4;
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_25:
    LODWORD(v4) = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 48), a2) + 1;
    v3 = *(a1 + 232);
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_32;
    }

LABEL_26:
    v11 = *(a1 + 44);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
      v3 = *(a1 + 232);
    }

    else
    {
      v12 = 2;
    }

    LODWORD(v4) = v12 + v4;
    goto LABEL_32;
  }

LABEL_24:
  LODWORD(v4) = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32), a2) + 1;
  v3 = *(a1 + 232);
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_25;
  }

LABEL_7:
  if ((v3 & 0x40) != 0)
  {
    goto LABEL_26;
  }

LABEL_32:
  if ((v3 & 0x80) != 0)
  {
    v4 = (v4 + 9);
  }

  else
  {
    v4 = v4;
  }

LABEL_35:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_71;
  }

  if ((v3 & 0x100) != 0)
  {
    v13 = *(a1 + 64);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 2;
      v3 = *(a1 + 232);
    }

    else
    {
      v14 = 3;
    }

    v4 = (v14 + v4);
    if ((v3 & 0x200) == 0)
    {
LABEL_38:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_53;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_38;
  }

  v15 = *(a1 + 68);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 2;
    v3 = *(a1 + 232);
  }

  else
  {
    v16 = 3;
  }

  v4 = (v16 + v4);
  if ((v3 & 0x400) == 0)
  {
LABEL_39:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_57;
  }

LABEL_53:
  v17 = *(a1 + 72);
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 2;
    v3 = *(a1 + 232);
  }

  else
  {
    v18 = 3;
  }

  v4 = (v18 + v4);
  if ((v3 & 0x800) == 0)
  {
LABEL_40:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_61;
  }

LABEL_57:
  v19 = *(a1 + 76);
  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 2;
    v3 = *(a1 + 232);
  }

  else
  {
    v20 = 3;
  }

  v4 = (v20 + v4);
  if ((v3 & 0x1000) == 0)
  {
LABEL_41:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_65;
  }

LABEL_61:
  v21 = *(a1 + 88);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 2;
    v3 = *(a1 + 232);
  }

  else
  {
    v22 = 3;
  }

  v4 = (v22 + v4);
  if ((v3 & 0x2000) == 0)
  {
LABEL_42:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_66;
  }

LABEL_65:
  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 80), a2) + 2;
  v3 = *(a1 + 232);
  if ((v3 & 0x4000) == 0)
  {
LABEL_43:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_67;
  }

LABEL_66:
  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 96), a2) + 2;
  v3 = *(a1 + 232);
  if ((v3 & 0x8000) == 0)
  {
    goto LABEL_71;
  }

LABEL_67:
  v23 = *(a1 + 92);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2) + 2;
    v3 = *(a1 + 232);
  }

  else
  {
    v24 = 3;
  }

  v4 = (v24 + v4);
LABEL_71:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_113;
  }

  if ((v3 & 0x10000) != 0)
  {
    v25 = *(a1 + 104);
    if (v25 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2) + 2;
      v3 = *(a1 + 232);
    }

    else
    {
      v26 = 3;
    }

    v4 = (v26 + v4);
    if ((v3 & 0x20000) == 0)
    {
LABEL_74:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_89;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_74;
  }

  v27 = *(a1 + 108);
  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, a2) + 2;
    v3 = *(a1 + 232);
  }

  else
  {
    v28 = 3;
  }

  v4 = (v28 + v4);
  if ((v3 & 0x40000) == 0)
  {
LABEL_75:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_90;
  }

LABEL_89:
  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 112), a2) + 2;
  v3 = *(a1 + 232);
  if ((v3 & 0x80000) == 0)
  {
LABEL_76:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_91;
  }

LABEL_90:
  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 120), a2) + 2;
  v3 = *(a1 + 232);
  if ((v3 & 0x100000) == 0)
  {
LABEL_77:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_97;
  }

LABEL_91:
  v29 = *(a1 + 128);
  if ((v29 & 0x80000000) != 0)
  {
    v30 = 12;
  }

  else if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2) + 2;
    v3 = *(a1 + 232);
  }

  else
  {
    v30 = 3;
  }

  v4 = (v30 + v4);
  if ((v3 & 0x200000) == 0)
  {
LABEL_78:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_103;
  }

LABEL_97:
  v31 = *(a1 + 132);
  if ((v31 & 0x80000000) != 0)
  {
    v32 = 12;
  }

  else if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31, a2) + 2;
    v3 = *(a1 + 232);
  }

  else
  {
    v32 = 3;
  }

  v4 = (v32 + v4);
  if ((v3 & 0x400000) == 0)
  {
LABEL_79:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_107;
  }

LABEL_103:
  v33 = *(a1 + 136);
  if (v33 >= 0x80)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33, a2) + 2;
    v3 = *(a1 + 232);
  }

  else
  {
    v34 = 3;
  }

  v4 = (v34 + v4);
  if ((v3 & 0x800000) != 0)
  {
LABEL_107:
    v35 = *(a1 + 140);
    if ((v35 & 0x80000000) != 0)
    {
      v36 = 12;
    }

    else if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35, a2) + 2;
      v3 = *(a1 + 232);
    }

    else
    {
      v36 = 3;
    }

    v4 = (v36 + v4);
  }

LABEL_113:
  if (!HIBYTE(v3))
  {
    goto LABEL_167;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v37 = *(a1 + 144);
    if ((v37 & 0x80000000) != 0)
    {
      v38 = 12;
    }

    else if (v37 >= 0x80)
    {
      v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37, a2) + 2;
      v3 = *(a1 + 232);
    }

    else
    {
      v38 = 3;
    }

    v4 = (v38 + v4);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_116:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_117;
      }

      goto LABEL_133;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_116;
  }

  v39 = *(a1 + 148);
  if (v39 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39, a2) + 2;
    v3 = *(a1 + 232);
  }

  else
  {
    v40 = 3;
  }

  v4 = (v40 + v4);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_117:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_139;
  }

LABEL_133:
  v41 = *(a1 + 152);
  if ((v41 & 0x80000000) != 0)
  {
    v42 = 12;
  }

  else if (v41 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41, a2) + 2;
    v3 = *(a1 + 232);
  }

  else
  {
    v42 = 3;
  }

  v4 = (v42 + v4);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_118:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_145;
  }

LABEL_139:
  v43 = *(a1 + 156);
  if ((v43 & 0x80000000) != 0)
  {
    v44 = 12;
  }

  else if (v43 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43, a2) + 2;
    v3 = *(a1 + 232);
  }

  else
  {
    v44 = 3;
  }

  v4 = (v44 + v4);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_119:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_151;
  }

LABEL_145:
  v45 = *(a1 + 160);
  if ((v45 & 0x80000000) != 0)
  {
    v46 = 12;
  }

  else if (v45 >= 0x80)
  {
    v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45, a2) + 2;
    v3 = *(a1 + 232);
  }

  else
  {
    v46 = 3;
  }

  v4 = (v46 + v4);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_120:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_157;
  }

LABEL_151:
  v47 = *(a1 + 164);
  if ((v47 & 0x80000000) != 0)
  {
    v48 = 12;
  }

  else if (v47 >= 0x80)
  {
    v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47, a2) + 2;
    v3 = *(a1 + 232);
  }

  else
  {
    v48 = 3;
  }

  v4 = (v48 + v4);
  if ((v3 & 0x40000000) == 0)
  {
LABEL_121:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_163;
  }

LABEL_157:
  v49 = *(a1 + 168);
  if ((v49 & 0x80000000) != 0)
  {
    v50 = 12;
  }

  else if (v49 >= 0x80)
  {
    v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49, a2) + 2;
    v3 = *(a1 + 232);
  }

  else
  {
    v50 = 3;
  }

  v4 = (v50 + v4);
  if ((v3 & 0x80000000) != 0)
  {
LABEL_163:
    v51 = *(a1 + 172);
    if (v51 >= 0x80)
    {
      v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51, a2) + 2;
    }

    else
    {
      v52 = 3;
    }

    v4 = (v52 + v4);
  }

LABEL_167:
  v53 = *(a1 + 236);
  if (!v53)
  {
    goto LABEL_219;
  }

  if (v53)
  {
    v54 = *(a1 + 176);
    if ((v54 & 0x80000000) != 0)
    {
      v55 = 12;
    }

    else if (v54 >= 0x80)
    {
      v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54, a2) + 2;
      v53 = *(a1 + 236);
    }

    else
    {
      v55 = 3;
    }

    v4 = (v55 + v4);
    if ((v53 & 2) == 0)
    {
LABEL_170:
      if ((v53 & 4) == 0)
      {
        goto LABEL_171;
      }

      goto LABEL_189;
    }
  }

  else if ((v53 & 2) == 0)
  {
    goto LABEL_170;
  }

  v56 = *(a1 + 180);
  if ((v56 & 0x80000000) != 0)
  {
    v57 = 12;
  }

  else if (v56 >= 0x80)
  {
    v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56, a2) + 2;
    v53 = *(a1 + 236);
  }

  else
  {
    v57 = 3;
  }

  v4 = (v57 + v4);
  if ((v53 & 4) == 0)
  {
LABEL_171:
    if ((v53 & 8) == 0)
    {
      goto LABEL_172;
    }

    goto LABEL_193;
  }

LABEL_189:
  v58 = *(a1 + 184);
  if (v58 >= 0x80)
  {
    v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58, a2) + 2;
    v53 = *(a1 + 236);
  }

  else
  {
    v59 = 3;
  }

  v4 = (v59 + v4);
  if ((v53 & 8) == 0)
  {
LABEL_172:
    if ((v53 & 0x10) == 0)
    {
      goto LABEL_173;
    }

    goto LABEL_199;
  }

LABEL_193:
  v60 = *(a1 + 188);
  if ((v60 & 0x80000000) != 0)
  {
    v61 = 12;
  }

  else if (v60 >= 0x80)
  {
    v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60, a2) + 2;
    v53 = *(a1 + 236);
  }

  else
  {
    v61 = 3;
  }

  v4 = (v61 + v4);
  if ((v53 & 0x10) == 0)
  {
LABEL_173:
    if ((v53 & 0x20) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_205;
  }

LABEL_199:
  v62 = *(a1 + 192);
  if ((v62 & 0x80000000) != 0)
  {
    v63 = 12;
  }

  else if (v62 >= 0x80)
  {
    v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62, a2) + 2;
    v53 = *(a1 + 236);
  }

  else
  {
    v63 = 3;
  }

  v4 = (v63 + v4);
  if ((v53 & 0x20) == 0)
  {
LABEL_174:
    if ((v53 & 0x40) == 0)
    {
      goto LABEL_175;
    }

    goto LABEL_211;
  }

LABEL_205:
  v64 = *(a1 + 196);
  if ((v64 & 0x80000000) != 0)
  {
    v65 = 12;
  }

  else if (v64 >= 0x80)
  {
    v65 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64, a2) + 2;
    v53 = *(a1 + 236);
  }

  else
  {
    v65 = 3;
  }

  v4 = (v65 + v4);
  if ((v53 & 0x40) == 0)
  {
LABEL_175:
    if ((v53 & 0x80) == 0)
    {
      goto LABEL_219;
    }

    goto LABEL_215;
  }

LABEL_211:
  v66 = *(a1 + 200);
  if (v66 >= 0x80)
  {
    v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66, a2) + 2;
    v53 = *(a1 + 236);
  }

  else
  {
    v67 = 3;
  }

  v4 = (v67 + v4);
  if ((v53 & 0x80) != 0)
  {
LABEL_215:
    v68 = *(a1 + 204);
    if (v68 >= 0x80)
    {
      v69 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68, a2) + 2;
      v53 = *(a1 + 236);
    }

    else
    {
      v69 = 3;
    }

    v4 = (v69 + v4);
  }

LABEL_219:
  if ((v53 & 0xFF00) != 0)
  {
    if ((v53 & 0x100) != 0)
    {
      v70 = *(a1 + 208);
      if (v70 >= 0x80)
      {
        v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70, a2) + 2;
        v53 = *(a1 + 236);
      }

      else
      {
        v71 = 3;
      }

      v4 = (v71 + v4);
      if ((v53 & 0x200) == 0)
      {
LABEL_222:
        if ((v53 & 0x400) == 0)
        {
          goto LABEL_223;
        }

        goto LABEL_234;
      }
    }

    else if ((v53 & 0x200) == 0)
    {
      goto LABEL_222;
    }

    v72 = *(a1 + 212);
    if (v72 >= 0x80)
    {
      v73 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v72, a2) + 2;
      v53 = *(a1 + 236);
    }

    else
    {
      v73 = 3;
    }

    v4 = (v73 + v4);
    if ((v53 & 0x400) == 0)
    {
LABEL_223:
      if ((v53 & 0x800) == 0)
      {
        goto LABEL_224;
      }

      goto LABEL_240;
    }

LABEL_234:
    v74 = *(a1 + 216);
    if ((v74 & 0x80000000) != 0)
    {
      v75 = 12;
    }

    else if (v74 >= 0x80)
    {
      v75 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v74, a2) + 2;
      v53 = *(a1 + 236);
    }

    else
    {
      v75 = 3;
    }

    v4 = (v75 + v4);
    if ((v53 & 0x800) == 0)
    {
LABEL_224:
      if ((v53 & 0x1000) == 0)
      {
        goto LABEL_252;
      }

LABEL_246:
      v78 = *(a1 + 224);
      if ((v78 & 0x80000000) != 0)
      {
        v79 = 12;
      }

      else if (v78 >= 0x80)
      {
        v79 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v78, a2) + 2;
      }

      else
      {
        v79 = 3;
      }

      v4 = (v79 + v4);
      goto LABEL_252;
    }

LABEL_240:
    v76 = *(a1 + 220);
    if ((v76 & 0x80000000) != 0)
    {
      v77 = 12;
    }

    else if (v76 >= 0x80)
    {
      v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v76, a2) + 2;
      v53 = *(a1 + 236);
    }

    else
    {
      v77 = 3;
    }

    v4 = (v77 + v4);
    if ((v53 & 0x1000) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_246;
  }

LABEL_252:
  v80 = *(a1 + 8);
  if (v80 && *v80 != v80[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 228) = v4;
  return v4;
}

uint64_t sub_1000C02F0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009D2E0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000C03C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C03DC(uint64_t result, uint64_t a2)
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

uint64_t sub_1000C0470()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED7E0;
}

void sub_1000C0504(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C0518(uint64_t a1)
{
  *a1 = off_10098F9B8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

void sub_1000C0580(uint64_t a1)
{
  *a1 = off_10098F9B8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000C05D4(uint64_t a1)
{
  *a1 = off_10098F9B8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1000C06A8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 <= 4)
        {
          break;
        }

        if (TagFallback >> 3 <= 6)
        {
          if (v8 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(this + 1);
              v12 = *(this + 2);
              goto LABEL_66;
            }
          }

          else if (v8 == 6 && (TagFallback & 7) == 0)
          {
            v13 = *(this + 1);
            v12 = *(this + 2);
            goto LABEL_74;
          }

          goto LABEL_38;
        }

        if (v8 == 7)
        {
          if ((TagFallback & 7) == 0)
          {
            v20 = *(this + 1);
            v12 = *(this + 2);
            goto LABEL_82;
          }

          goto LABEL_38;
        }

        if (v8 != 8 || v9 != 1)
        {
          goto LABEL_38;
        }

LABEL_93:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 56) = *v32;
        *(a1 + 68) |= 0x80u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 > 2)
      {
        if (v8 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v19 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_47;
          }
        }

        else if (v8 == 4 && (TagFallback & 7) == 0)
        {
          v14 = *(this + 1);
          v12 = *(this + 2);
          goto LABEL_58;
        }

        goto LABEL_38;
      }

      if (v8 != 1)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_38;
      }

      *v32 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = *v32;
      *(a1 + 68) |= 1u;
      v15 = *(this + 1);
      v10 = *(this + 2);
      if (v15 < v10 && *v15 == 16)
      {
        v11 = v15 + 1;
        *(this + 1) = v11;
LABEL_30:
        if (v11 >= v10 || (v16 = *v11, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v17 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v16;
          v17 = v11 + 1;
          *(this + 1) = v17;
        }

        *(a1 + 68) |= 2u;
        if (v17 < v10 && *v17 == 24)
        {
          v19 = v17 + 1;
          *(this + 1) = v19;
LABEL_47:
          v32[0] = 0;
          if (v19 >= v10 || (v22 = *v19, v22 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v32);
            if (!result)
            {
              return result;
            }

            v22 = v32[0];
          }

          else
          {
            *(this + 1) = v19 + 1;
          }

          if (sub_100094788(v22))
          {
            *(a1 + 68) |= 4u;
            *(a1 + 28) = v22;
          }

          else
          {
            wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 3, v22);
          }

          v23 = *(this + 1);
          v12 = *(this + 2);
          if (v23 < v12 && *v23 == 32)
          {
            v14 = v23 + 1;
            *(this + 1) = v14;
LABEL_58:
            if (v14 >= v12 || (v24 = *v14, v24 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
              if (!result)
              {
                return result;
              }

              v25 = *(this + 1);
              v12 = *(this + 2);
            }

            else
            {
              *(a1 + 40) = v24;
              v25 = v14 + 1;
              *(this + 1) = v25;
            }

            *(a1 + 68) |= 8u;
            if (v25 < v12 && *v25 == 40)
            {
              v18 = v25 + 1;
              *(this + 1) = v18;
LABEL_66:
              if (v18 >= v12 || (v26 = *v18, v26 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
                if (!result)
                {
                  return result;
                }

                v27 = *(this + 1);
                v12 = *(this + 2);
              }

              else
              {
                *(a1 + 32) = v26;
                v27 = v18 + 1;
                *(this + 1) = v27;
              }

              *(a1 + 68) |= 0x10u;
              if (v27 < v12 && *v27 == 48)
              {
                v13 = v27 + 1;
                *(this + 1) = v13;
LABEL_74:
                if (v13 >= v12 || (v28 = *v13, v28 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 48));
                  if (!result)
                  {
                    return result;
                  }

                  v29 = *(this + 1);
                  v12 = *(this + 2);
                }

                else
                {
                  *(a1 + 48) = v28;
                  v29 = v13 + 1;
                  *(this + 1) = v29;
                }

                *(a1 + 68) |= 0x20u;
                if (v29 < v12 && *v29 == 56)
                {
                  v20 = v29 + 1;
                  *(this + 1) = v20;
LABEL_82:
                  v32[0] = 0;
                  if (v20 >= v12 || (v30 = *v20, (v30 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v32);
                    if (!result)
                    {
                      return result;
                    }

                    v30 = v32[0];
                  }

                  else
                  {
                    *(this + 1) = v20 + 1;
                  }

                  if (v30 > 1)
                  {
                    wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 7, v30);
                  }

                  else
                  {
                    *(a1 + 68) |= 0x40u;
                    *(a1 + 44) = v30;
                  }

                  v31 = *(this + 1);
                  if (v31 < *(this + 2) && *v31 == 65)
                  {
                    *(this + 1) = v31 + 1;
                    goto LABEL_93;
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v8 == 2 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_30;
    }

LABEL_38:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_1000C0B14(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 68);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 68);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 68);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 68);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 40), a2, a4);
  v6 = *(v5 + 68);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(7, *(v5 + 44), a2, a4);
    if ((*(v5 + 68) & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 48), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v6 & 0x80) != 0)
  {
LABEL_9:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 56), a3);
  }

LABEL_10:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000C0C50(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 17);
  if (v5)
  {
    v6 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v6;
    v3 = (a2 + 9);
    v5 = *(this + 17);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 6);
    *v3 = 16;
    if (v7 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v7;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 68) & 4) != 0)
  {
    v8 = *(this + 7);
    *v3 = 24;
    v9 = v3 + 1;
    if ((v8 & 0x80000000) != 0)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v8, v9, a3);
    }

    else
    {
      if (v8 <= 0x7F)
      {
        *(v3 + 1) = v8;
        v3 = (v3 + 2);
        goto LABEL_14;
      }

      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v9, a3);
    }

    v3 = v10;
  }

LABEL_14:
  if ((*(this + 68) & 8) != 0)
  {
    v11 = *(this + 10);
    *v3 = 32;
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

  v12 = *(this + 17);
  if ((v12 & 0x10) != 0)
  {
    v13 = *(this + 4);
    *v3 = 40;
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v13, v3 + 1, a3);
    v12 = *(this + 17);
    if ((v12 & 0x20) == 0)
    {
LABEL_20:
      if ((v12 & 0x40) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }
  }

  else if ((v12 & 0x20) == 0)
  {
    goto LABEL_20;
  }

  v14 = *(this + 6);
  *v3 = 48;
  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v14, v3 + 1, a3);
  if ((*(this + 17) & 0x40) == 0)
  {
    goto LABEL_30;
  }

LABEL_24:
  v15 = *(this + 11);
  *v3 = 56;
  v16 = v3 + 1;
  if ((v15 & 0x80000000) != 0)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v15, v16, a3);
  }

  else
  {
    if (v15 <= 0x7F)
    {
      *(v3 + 1) = v15;
      v3 = (v3 + 2);
      goto LABEL_30;
    }

    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v16, a3);
  }

  v3 = v17;
LABEL_30:
  if ((*(this + 68) & 0x80) != 0)
  {
    v18 = *(this + 7);
    *v3 = 65;
    *(v3 + 1) = v18;
    v3 = (v3 + 9);
  }

  v21 = *(this + 1);
  v20 = (this + 8);
  v19 = v21;
  if (!v21 || *v19 == v19[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v20, v3, a3);
}

uint64_t sub_1000C0E8C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 68);
  if (!*(a1 + 68))
  {
    v4 = 0;
    goto LABEL_35;
  }

  LODWORD(v4) = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v5 = *(a1 + 24);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 68);
    }

    else
    {
      v6 = 2;
    }

    LODWORD(v4) = v6 + v4;
    if ((v3 & 4) == 0)
    {
LABEL_4:
      if ((v3 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v7 = *(a1 + 28);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
    v3 = *(a1 + 68);
  }

  else
  {
    v8 = 2;
  }

  LODWORD(v4) = v8 + v4;
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_20:
  v9 = *(a1 + 40);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
    v3 = *(a1 + 68);
  }

  else
  {
    v10 = 2;
  }

  LODWORD(v4) = v10 + v4;
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_25:
    LODWORD(v4) = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 48), a2) + 1;
    v3 = *(a1 + 68);
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_32;
    }

LABEL_26:
    v11 = *(a1 + 44);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
      v3 = *(a1 + 68);
    }

    else
    {
      v12 = 2;
    }

    LODWORD(v4) = v12 + v4;
    goto LABEL_32;
  }

LABEL_24:
  LODWORD(v4) = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32), a2) + 1;
  v3 = *(a1 + 68);
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_25;
  }

LABEL_7:
  if ((v3 & 0x40) != 0)
  {
    goto LABEL_26;
  }

LABEL_32:
  if ((v3 & 0x80) != 0)
  {
    v4 = (v4 + 9);
  }

  else
  {
    v4 = v4;
  }

LABEL_35:
  v13 = *(a1 + 8);
  if (v13 && *v13 != v13[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 64) = v4;
  return v4;
}

uint64_t sub_1000C0FFC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009D968(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000C10D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C10E8(uint64_t result, uint64_t a2)
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

uint64_t sub_1000C117C()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED7F0;
}

void sub_1000C1210(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C1224(uint64_t a1)
{
  *a1 = off_10098FA68;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return a1;
}

uint64_t sub_1000C1284(uint64_t a1, uint64_t a2)
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
      if ((sub_100094824(v5) & 1) == 0)
      {
        sub_10049DF30();
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

void sub_1000C1354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000C136C(uint64_t a1)
{
  *a1 = off_10098FA68;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000C13C0(uint64_t a1)
{
  *a1 = off_10098FA68;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000C1494(uint64_t a1)
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

uint64_t sub_1000C14B8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if (v9 >= *(this + 2) || (v10 = *v9, v10 < 0))
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

      if (sub_100094824(v10))
      {
        *(a1 + 32) |= 1u;
        *(a1 + 24) = v10;
      }

      else
      {
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 1, v10);
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

uint64_t sub_1000C1658(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

_BYTE *sub_1000C16E4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3)
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

uint64_t sub_1000C17D8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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

uint64_t sub_1000C1874(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000C1284(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000C1948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C1960(uint64_t result, uint64_t a2)
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

uint64_t sub_1000C19F4()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED800;
}

void sub_1000C1A88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C1A9C(uint64_t a1)
{
  *a1 = off_10098FB18;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 144) = 0;
  *(a1 + 136) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return a1;
}

void sub_1000C1B2C(uint64_t *a1)
{
  *a1 = off_10098FB18;
  v2 = a1 + 16;
  sub_1000C1B98(a1);
  sub_100077C08(v2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_1000C1B98(void *result)
{
  v1 = result[8];
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  if (qword_1009F9AA0 != result)
  {
    result = result[5];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_1000C1C50(uint64_t *a1)
{
  sub_1000C1B2C(a1);

  operator delete();
}

uint64_t sub_1000C1CF4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (2)
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
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v8 != 1)
        {
          goto LABEL_57;
        }

        *v85 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v85) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v85;
        *(a1 + 160) |= 1u;
        v9 = *(this + 1);
        if (v9 >= *(this + 2) || *v9 != 17)
        {
          continue;
        }

        *(this + 1) = v9 + 1;
        goto LABEL_33;
      case 2u:
        if (v8 != 1)
        {
          goto LABEL_57;
        }

LABEL_33:
        *v85 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v85) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v85;
        *(a1 + 160) |= 2u;
        v22 = *(this + 1);
        v16 = *(this + 2);
        if (v22 >= v16 || *v22 != 24)
        {
          continue;
        }

        v17 = v22 + 1;
        *(this + 1) = v17;
LABEL_37:
        if (v17 >= v16 || (v23 = *v17, v23 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
          if (!result)
          {
            return result;
          }

          v24 = *(this + 1);
          v16 = *(this + 2);
        }

        else
        {
          *(a1 + 32) = v23;
          v24 = v17 + 1;
          *(this + 1) = v24;
        }

        *(a1 + 160) |= 4u;
        if (v24 >= v16 || *v24 != 32)
        {
          continue;
        }

        v19 = v24 + 1;
        *(this + 1) = v19;
LABEL_66:
        v85[0] = 0;
        if (v19 >= v16 || (v34 = *v19, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v85);
          if (!result)
          {
            return result;
          }

          v34 = v85[0];
        }

        else
        {
          *(this + 1) = v19 + 1;
        }

        if (sub_100094788(v34))
        {
          *(a1 + 160) |= 8u;
          *(a1 + 36) = v34;
        }

        else
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 4, v34);
        }

        v35 = *(this + 1);
        if (v35 >= *(this + 2) || *v35 != 42)
        {
          continue;
        }

        *(this + 1) = v35 + 1;
LABEL_77:
        *(a1 + 160) |= 0x10u;
        v36 = *(a1 + 40);
        if (!v36)
        {
          operator new();
        }

        v85[0] = 0;
        v37 = *(this + 1);
        if (v37 >= *(this + 2) || *v37 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v85))
          {
            return 0;
          }
        }

        else
        {
          v85[0] = *v37;
          *(this + 1) = v37 + 1;
        }

        v38 = *(this + 14);
        v39 = *(this + 15);
        *(this + 14) = v38 + 1;
        if (v38 >= v39)
        {
          return 0;
        }

        v40 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v85[0]);
        if (!sub_10009F5D8(v36, this, v41, v42) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v40);
        v43 = *(this + 14);
        v44 = __OFSUB__(v43, 1);
        v45 = v43 - 1;
        if (v45 < 0 == v44)
        {
          *(this + 14) = v45;
        }

        v46 = *(this + 1);
        v25 = *(this + 2);
        if (v46 >= v25 || *v46 != 48)
        {
          continue;
        }

        v26 = v46 + 1;
        *(this + 1) = v26;
LABEL_91:
        v85[0] = 0;
        if (v26 >= v25 || (v47 = *v26, (v47 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v85);
          if (!result)
          {
            return result;
          }

          v47 = v85[0];
        }

        else
        {
          *(this + 1) = v26 + 1;
        }

        if (v47 > 0x1B || ((1 << v47) & 0xDDB54EF) == 0)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 6, v47);
        }

        else
        {
          if (v47 > 0x1B || ((1 << v47) & 0xDDB54EF) == 0)
          {
            sub_10049DCC8();
          }

          *(a1 + 160) |= 0x20u;
          *(a1 + 48) = v47;
        }

        v49 = *(this + 1);
        if (v49 >= *(this + 2) || *v49 != 57)
        {
          continue;
        }

        *(this + 1) = v49 + 1;
LABEL_106:
        *v85 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v85) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 56) = *v85;
        *(a1 + 160) |= 0x40u;
        v50 = *(this + 1);
        v20 = *(this + 2);
        if (v50 >= v20 || *v50 != 64)
        {
          continue;
        }

        v21 = v50 + 1;
        *(this + 1) = v21;
LABEL_110:
        if (v21 >= v20 || (v51 = *v21, v51 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 52));
          if (!result)
          {
            return result;
          }

          v52 = *(this + 1);
          v20 = *(this + 2);
        }

        else
        {
          *(a1 + 52) = v51;
          v52 = v21 + 1;
          *(this + 1) = v52;
        }

        v31 = *(a1 + 160) | 0x80;
        *(a1 + 160) = v31;
        if (v52 >= v20 || *v52 != 74)
        {
          continue;
        }

        *(this + 1) = v52 + 1;
LABEL_118:
        *(a1 + 160) = v31 | 0x100;
        if (*(a1 + 64) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v53 = *(this + 1);
        v14 = *(this + 2);
        if (v53 >= v14 || *v53 != 80)
        {
          continue;
        }

        v15 = v53 + 1;
        *(this + 1) = v15;
LABEL_124:
        if (v15 >= v14 || (v54 = *v15, v54 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 88));
          if (!result)
          {
            return result;
          }

          v55 = *(this + 1);
          v14 = *(this + 2);
        }

        else
        {
          *(a1 + 88) = v54;
          v55 = v15 + 1;
          *(this + 1) = v55;
        }

        *(a1 + 160) |= 0x200u;
        if (v55 >= v14 || *v55 != 89)
        {
          continue;
        }

        *(this + 1) = v55 + 1;
LABEL_132:
        *v85 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v85) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 72) = *v85;
        *(a1 + 160) |= 0x400u;
        v56 = *(this + 1);
        if (v56 >= *(this + 2) || *v56 != 97)
        {
          continue;
        }

        *(this + 1) = v56 + 1;
LABEL_136:
        *v85 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v85) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 80) = *v85;
        *(a1 + 160) |= 0x800u;
        v57 = *(this + 1);
        if (v57 >= *(this + 2) || *v57 != 105)
        {
          continue;
        }

        *(this + 1) = v57 + 1;
LABEL_140:
        *v85 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v85) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 96) = *v85;
        *(a1 + 160) |= 0x1000u;
        v58 = *(this + 1);
        v27 = *(this + 2);
        if (v58 >= v27 || *v58 != 112)
        {
          continue;
        }

        v28 = v58 + 1;
        *(this + 1) = v28;
LABEL_144:
        v85[0] = 0;
        if (v28 >= v27 || (v59 = *v28, (v59 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v85);
          if (!result)
          {
            return result;
          }

          v59 = v85[0];
        }

        else
        {
          *(this + 1) = v28 + 1;
        }

        if (v59 > 3)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 14, v59);
        }

        else
        {
          *(a1 + 160) |= 0x2000u;
          *(a1 + 92) = v59;
        }

        v60 = *(this + 1);
        v12 = *(this + 2);
        if (v60 >= v12 || *v60 != 120)
        {
          continue;
        }

        v13 = v60 + 1;
        *(this + 1) = v13;
LABEL_155:
        v85[0] = 0;
        if (v13 >= v12 || (v61 = *v13, (v61 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v85);
          if (!result)
          {
            return result;
          }

          v61 = v85[0];
        }

        else
        {
          *(this + 1) = v13 + 1;
        }

        if (v61 > 3)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 15, v61);
        }

        else
        {
          *(a1 + 160) |= 0x4000u;
          *(a1 + 104) = v61;
        }

        v62 = *(this + 1);
        v10 = *(this + 2);
        if (v10 - v62 < 2 || *v62 != 128 || v62[1] != 1)
        {
          continue;
        }

        v18 = (v62 + 2);
        *(this + 1) = v18;
LABEL_167:
        if (v18 >= v10 || (v63 = *v18, v63 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 108));
          if (!result)
          {
            return result;
          }

          v64 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 108) = v63;
          v64 = (v18 + 1);
          *(this + 1) = v64;
        }

        *(a1 + 160) |= 0x8000u;
        if (v10 - v64 < 2 || *v64 != 136 || v64[1] != 1)
        {
          continue;
        }

        v11 = (v64 + 2);
        *(this + 1) = v11;
LABEL_176:
        v85[0] = 0;
        if (v11 >= v10 || (v65 = *v11, v65 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v85);
          if (!result)
          {
            return result;
          }

          v65 = v85[0];
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (sub_100094824(v65))
        {
          *(a1 + 160) |= 0x10000u;
          *(a1 + 120) = v65;
        }

        else
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 17, v65);
        }

        v66 = *(this + 1);
        if (*(this + 4) - v66 < 2 || *v66 != 145 || v66[1] != 1)
        {
          continue;
        }

        *(this + 1) = v66 + 2;
LABEL_188:
        *v85 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v85))
        {
          *(a1 + 112) = *v85;
          *(a1 + 160) |= 0x20000u;
          v67 = *(this + 1);
          v29 = *(this + 2);
          if (v29 - v67 >= 2 && *v67 == 152 && v67[1] == 1)
          {
            v30 = (v67 + 2);
            *(this + 1) = v30;
LABEL_193:
            if (v30 >= v29 || (v68 = *v30, v68 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 124));
              if (!result)
              {
                return result;
              }

              v69 = *(this + 1);
              v29 = *(this + 2);
            }

            else
            {
              *(a1 + 124) = v68;
              v69 = (v30 + 1);
              *(this + 1) = v69;
            }

            *(a1 + 160) |= 0x40000u;
            if (v29 - v69 >= 2 && *v69 == 160 && v69[1] == 1)
            {
              v32 = (v69 + 2);
              *(this + 1) = v32;
LABEL_202:
              if (v32 >= v29 || (v70 = *v32, v70 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 152));
                if (!result)
                {
                  return result;
                }

                v71 = *(this + 1);
                v29 = *(this + 2);
              }

              else
              {
                *(a1 + 152) = v70;
                v71 = (v32 + 1);
                *(this + 1) = v71;
              }

              *(a1 + 160) |= 0x80000u;
              if (v29 - v71 >= 2 && *v71 == 170 && v71[1] == 1)
              {
                do
                {
                  *(this + 1) = v71 + 2;
LABEL_213:
                  v72 = *(a1 + 140);
                  v73 = *(a1 + 136);
                  if (v73 >= v72)
                  {
                    if (v72 == *(a1 + 144))
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 128), v72 + 1);
                      v72 = *(a1 + 140);
                    }

                    *(a1 + 140) = v72 + 1;
                    sub_1000CD0BC();
                  }

                  v74 = *(a1 + 128);
                  *(a1 + 136) = v73 + 1;
                  v75 = *(v74 + 8 * v73);
                  v85[0] = 0;
                  v76 = *(this + 1);
                  if (v76 >= *(this + 2) || *v76 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v85))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v85[0] = *v76;
                    *(this + 1) = v76 + 1;
                  }

                  v77 = *(this + 14);
                  v78 = *(this + 15);
                  *(this + 14) = v77 + 1;
                  if (v77 >= v78)
                  {
                    return 0;
                  }

                  v79 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v85[0]);
                  if (!sub_1000C14B8(v75, this, v80, v81) || *(this + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v79);
                  v82 = *(this + 14);
                  v44 = __OFSUB__(v82, 1);
                  v83 = v82 - 1;
                  if (v83 < 0 == v44)
                  {
                    *(this + 14) = v83;
                  }

                  v71 = *(this + 1);
                  v84 = *(this + 2);
                }

                while (v84 - v71 > 1 && *v71 == 170 && v71[1] == 1);
                if (v71 == v84 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v17 = *(this + 1);
        v16 = *(this + 2);
        goto LABEL_37;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v19 = *(this + 1);
        v16 = *(this + 2);
        goto LABEL_66;
      case 5u:
        if (v8 == 2)
        {
          goto LABEL_77;
        }

        goto LABEL_57;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v26 = *(this + 1);
        v25 = *(this + 2);
        goto LABEL_91;
      case 7u:
        if (v8 == 1)
        {
          goto LABEL_106;
        }

        goto LABEL_57;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v21 = *(this + 1);
        v20 = *(this + 2);
        goto LABEL_110;
      case 9u:
        if (v8 != 2)
        {
          goto LABEL_57;
        }

        v31 = *(a1 + 160);
        goto LABEL_118;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v15 = *(this + 1);
        v14 = *(this + 2);
        goto LABEL_124;
      case 0xBu:
        if (v8 == 1)
        {
          goto LABEL_132;
        }

        goto LABEL_57;
      case 0xCu:
        if (v8 == 1)
        {
          goto LABEL_136;
        }

        goto LABEL_57;
      case 0xDu:
        if (v8 == 1)
        {
          goto LABEL_140;
        }

        goto LABEL_57;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v28 = *(this + 1);
        v27 = *(this + 2);
        goto LABEL_144;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_155;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v18 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_167;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_176;
      case 0x12u:
        if (v8 == 1)
        {
          goto LABEL_188;
        }

        goto LABEL_57;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v30 = *(this + 1);
        v29 = *(this + 2);
        goto LABEL_193;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v32 = *(this + 1);
        v29 = *(this + 2);
        goto LABEL_202;
      case 0x15u:
        if (v8 == 2)
        {
          goto LABEL_213;
        }

        goto LABEL_57;
      default:
LABEL_57:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t sub_1000C28DC(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 160);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 160);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 160);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 32), a2, a4);
  v6 = *(v5 + 160);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 36), a2, a4);
  v6 = *(v5 + 160);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_35:
  v11 = *(v5 + 40);
  if (!v11)
  {
    v11 = *(qword_1009F9AA0 + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, v11, a2, a4);
  v6 = *(v5 + 160);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 48), a2, a4);
  v6 = *(v5 + 160);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 52), a2, a4);
  v6 = *(v5 + 160);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  v12 = *(v5 + 64);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 160);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 88), a2, a4);
  v6 = *(v5 + 160);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 72), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 80), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 96), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xE, *(v5 + 92), a2, a4);
  v6 = *(v5 + 160);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xF, *(v5 + 104), a2, a4);
  v6 = *(v5 + 160);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 108), a2, a4);
  v6 = *(v5 + 160);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x11, *(v5 + 120), a2, a4);
  v6 = *(v5 + 160);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x12, a2, *(v5 + 112), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_51:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 124), a2, a4);
  if ((*(v5 + 160) & 0x80000) != 0)
  {
LABEL_21:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 152), a2, a4);
  }

LABEL_22:
  if (*(v5 + 136) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x15, *(*(v5 + 128) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 136));
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