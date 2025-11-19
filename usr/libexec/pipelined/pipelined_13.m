uint64_t sub_1000B452C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000B3150(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000B460C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000B4620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B4634(uint64_t result, uint64_t a2)
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

uint64_t sub_1000B46C8()
{
  v0 = qword_10045CD50;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000A9CE8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CCE8;
}

void sub_1000B4758(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B476C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v23);
    v4 = *(a2 + 128);
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v4 = *(a2 + 128);
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  if (v4)
  {
    *(a1 + 128) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_10045DD88 + 16);
    }

    sub_1000AB70C(v5, v6);
    v4 = *(a2 + 128);
  }

  if ((v4 & 2) != 0)
  {
    v17 = *(a2 + 24);
    *(a1 + 128) |= 2u;
    *(a1 + 24) = v17;
    v4 = *(a2 + 128);
    if ((v4 & 4) == 0)
    {
LABEL_12:
      if ((v4 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_39;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_12;
  }

  v18 = *(a2 + 32);
  *(a1 + 128) |= 4u;
  *(a1 + 32) = v18;
  v4 = *(a2 + 128);
  if ((v4 & 8) == 0)
  {
LABEL_13:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  v19 = *(a2 + 40);
  *(a1 + 128) |= 8u;
  *(a1 + 40) = v19;
  v4 = *(a2 + 128);
  if ((v4 & 0x10) == 0)
  {
LABEL_14:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  v20 = *(a2 + 48);
  *(a1 + 128) |= 0x10u;
  *(a1 + 48) = v20;
  v4 = *(a2 + 128);
  if ((v4 & 0x20) == 0)
  {
LABEL_15:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  v21 = *(a2 + 80);
  *(a1 + 128) |= 0x20u;
  *(a1 + 80) = v21;
  v4 = *(a2 + 128);
  if ((v4 & 0x40) == 0)
  {
LABEL_16:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_42:
  v22 = *(a2 + 56);
  *(a1 + 128) |= 0x40u;
  *(a1 + 56) = v22;
  v4 = *(a2 + 128);
  if ((v4 & 0x80) != 0)
  {
LABEL_17:
    v7 = *(a2 + 64);
    *(a1 + 128) |= 0x80u;
    *(a1 + 64) = v7;
    v4 = *(a2 + 128);
  }

LABEL_18:
  if ((v4 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v4 & 0x100) != 0)
  {
    v10 = *(a2 + 72);
    *(a1 + 128) |= 0x100u;
    *(a1 + 72) = v10;
    v4 = *(a2 + 128);
    if ((v4 & 0x200) == 0)
    {
LABEL_21:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_30;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_21;
  }

  v11 = *(a2 + 88);
  *(a1 + 128) |= 0x200u;
  *(a1 + 88) = v11;
  v4 = *(a2 + 128);
  if ((v4 & 0x400) == 0)
  {
LABEL_22:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_31;
  }

LABEL_30:
  v12 = *(a2 + 96);
  *(a1 + 128) |= 0x400u;
  *(a1 + 96) = v12;
  v4 = *(a2 + 128);
  if ((v4 & 0x800) == 0)
  {
LABEL_23:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

LABEL_31:
  v13 = *(a2 + 104);
  *(a1 + 128) |= 0x800u;
  v14 = *(a1 + 104);
  if (v14 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v14, v13);
  v4 = *(a2 + 128);
  if ((v4 & 0x1000) == 0)
  {
LABEL_24:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_25;
    }

LABEL_35:
    v16 = *(a2 + 112);
    *(a1 + 128) |= 0x2000u;
    *(a1 + 112) = v16;
    if ((*(a2 + 128) & 0x4000) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_26;
  }

LABEL_34:
  v15 = *(a2 + 84);
  *(a1 + 128) |= 0x1000u;
  *(a1 + 84) = v15;
  v4 = *(a2 + 128);
  if ((v4 & 0x2000) != 0)
  {
    goto LABEL_35;
  }

LABEL_25:
  if ((v4 & 0x4000) != 0)
  {
LABEL_26:
    v8 = *(a2 + 120);
    *(a1 + 128) |= 0x4000u;
    *(a1 + 120) = v8;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000B4AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000B4AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000B4AEC(void *a1)
{
  *a1 = off_100438548;
  v2 = a1[13];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (qword_10045DD88 != a1)
  {
    v4 = a1[2];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000B4BC0(void *a1)
{
  *a1 = off_100438548;
  v2 = a1[13];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (qword_10045DD88 != a1)
  {
    v4 = a1[2];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1000B4CB0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_10045DD88;
  if (!qword_10045DD88)
  {
    sub_1000AA3EC(0, a2, a3, a4);
    return qword_10045DD88;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000B4D9C(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1)
  {
    if (v1)
    {
      v2 = *(a1 + 16);
      if (v2)
      {
        if (*(v2 + 52))
        {
          *(v2 + 16) = 0u;
          *(v2 + 32) = 0u;
        }

        v4 = *(v2 + 8);
        v3 = (v2 + 8);
        *(v3 + 11) = 0;
        if (v4)
        {
          v5 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
          a1 = v5;
        }
      }
    }

    *(a1 + 80) = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    v1 = *(a1 + 128);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 72) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    if ((v1 & 0x800) != 0)
    {
      v6 = *(a1 + 104);
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

    *(a1 + 84) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  v8 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 30) = 0;
  if (v8)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000B4E90(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (v8 != 2)
        {
          goto LABEL_59;
        }

        *(a1 + 128) |= 1u;
        v9 = *(a1 + 16);
        if (!v9)
        {
          operator new();
        }

        v45[0] = 0;
        v10 = *(this + 1);
        if (v10 >= *(this + 2) || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v45))
          {
            return 0;
          }
        }

        else
        {
          v45[0] = *v10;
          *(this + 1) = v10 + 1;
        }

        v23 = *(this + 14);
        v24 = *(this + 15);
        *(this + 14) = v23 + 1;
        if (v23 >= v24)
        {
          return 0;
        }

        v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v45[0]);
        if (!sub_1000AB9B4(v9, this, v26, v27) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v25);
        v28 = *(this + 14);
        v29 = __OFSUB__(v28, 1);
        v30 = v28 - 1;
        if (v30 < 0 == v29)
        {
          *(this + 14) = v30;
        }

        v31 = *(this + 1);
        if (v31 >= *(this + 2) || *v31 != 17)
        {
          continue;
        }

        *(this + 1) = v31 + 1;
        *v45 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v45) & 1) == 0)
        {
          return 0;
        }

LABEL_91:
        *(a1 + 24) = *v45;
        *(a1 + 128) |= 2u;
        v32 = *(this + 1);
        if (v32 >= *(this + 2) || *v32 != 25)
        {
          continue;
        }

        *(this + 1) = v32 + 1;
        *v45 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v45) & 1) == 0)
        {
          return 0;
        }

LABEL_94:
        *(a1 + 32) = *v45;
        *(a1 + 128) |= 4u;
        v33 = *(this + 1);
        if (v33 >= *(this + 2) || *v33 != 33)
        {
          continue;
        }

        *(this + 1) = v33 + 1;
        *v45 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v45) & 1) == 0)
        {
          return 0;
        }

LABEL_97:
        *(a1 + 40) = *v45;
        *(a1 + 128) |= 8u;
        v34 = *(this + 1);
        if (v34 >= *(this + 2) || *v34 != 41)
        {
          continue;
        }

        *(this + 1) = v34 + 1;
        *v45 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v45) & 1) == 0)
        {
          return 0;
        }

LABEL_100:
        *(a1 + 48) = *v45;
        *(a1 + 128) |= 0x10u;
        v36 = *(this + 1);
        v35 = *(this + 2);
        if (v36 >= v35 || *v36 != 48)
        {
          continue;
        }

        v19 = v36 + 1;
        *(this + 1) = v19;
        v45[0] = 0;
        if (v19 >= v35)
        {
          goto LABEL_106;
        }

LABEL_103:
        v37 = *v19;
        if ((v37 & 0x80000000) != 0)
        {
LABEL_106:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v45);
          if (!result)
          {
            return result;
          }

          v37 = v45[0];
          if (v45[0] <= 2)
          {
LABEL_105:
            *(a1 + 128) |= 0x20u;
            *(a1 + 80) = v37;
            goto LABEL_109;
          }
        }

        else
        {
          *(this + 1) = v19 + 1;
          if (v37 <= 2)
          {
            goto LABEL_105;
          }
        }

        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 6, v37);
LABEL_109:
        v38 = *(this + 1);
        if (v38 >= *(this + 2) || *v38 != 57)
        {
          continue;
        }

        *(this + 1) = v38 + 1;
        *v45 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v45) & 1) == 0)
        {
          return 0;
        }

LABEL_112:
        *(a1 + 56) = *v45;
        *(a1 + 128) |= 0x40u;
        v39 = *(this + 1);
        if (v39 >= *(this + 2) || *v39 != 65)
        {
          continue;
        }

        *(this + 1) = v39 + 1;
        *v45 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v45) & 1) == 0)
        {
          return 0;
        }

LABEL_115:
        *(a1 + 64) = *v45;
        *(a1 + 128) |= 0x80u;
        v40 = *(this + 1);
        if (v40 >= *(this + 2) || *v40 != 73)
        {
          continue;
        }

        *(this + 1) = v40 + 1;
LABEL_118:
        *v45 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v45) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 72) = *v45;
        *(a1 + 128) |= 0x100u;
        v41 = *(this + 1);
        if (v41 >= *(this + 2) || *v41 != 81)
        {
          continue;
        }

        *(this + 1) = v41 + 1;
        *v45 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v45) & 1) == 0)
        {
          return 0;
        }

LABEL_122:
        *(a1 + 88) = *v45;
        *(a1 + 128) |= 0x200u;
        v42 = *(this + 1);
        if (v42 >= *(this + 2) || *v42 != 89)
        {
          continue;
        }

        *(this + 1) = v42 + 1;
        *v45 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v45))
        {
LABEL_125:
          *(a1 + 96) = *v45;
          v43 = *(a1 + 128) | 0x400;
          *(a1 + 128) = v43;
          v44 = *(this + 1);
          if (v44 < *(this + 2) && *v44 == 98)
          {
            *(this + 1) = v44 + 1;
            *(a1 + 128) = v43 | 0x800;
            if (*(a1 + 104) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
LABEL_17:
              operator new();
            }

LABEL_18:
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v15 = *(this + 1);
            v14 = *(this + 2);
            if (v15 < v14 && *v15 == 104)
            {
              v16 = v15 + 1;
              *(this + 1) = v16;
LABEL_27:
              v45[0] = 0;
              if (v16 >= v14 || (v17 = *v16, (v17 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v45);
                if (!result)
                {
                  return result;
                }

                v17 = v45[0];
                if (v45[0] > 2)
                {
LABEL_64:
                  wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 13, v17);
                  goto LABEL_65;
                }
              }

              else
              {
                *(this + 1) = v16 + 1;
                if (v17 > 2)
                {
                  goto LABEL_64;
                }
              }

              *(a1 + 128) |= 0x1000u;
              *(a1 + 84) = v17;
LABEL_65:
              v20 = *(this + 1);
              if (v20 < *(this + 2) && *v20 == 113)
              {
                *(this + 1) = v20 + 1;
                *v45 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v45) & 1) == 0)
                {
                  return 0;
                }

LABEL_68:
                *(a1 + 112) = *v45;
                *(a1 + 128) |= 0x2000u;
                v21 = *(this + 1);
                v11 = *(this + 2);
                if (v21 < v11 && *v21 == 120)
                {
                  v12 = v21 + 1;
                  *(this + 1) = v12;
LABEL_71:
                  v45[0] = 0;
                  if (v12 >= v11 || (v22 = *v12, (v22 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v45);
                    if (!result)
                    {
                      return result;
                    }

                    v22 = v45[0];
                    if (v45[0] <= 5)
                    {
                      goto LABEL_74;
                    }

LABEL_78:
                    wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 15, v22);
                    if (*(this + 1) == *(this + 2))
                    {
                      goto LABEL_79;
                    }
                  }

                  else
                  {
                    *(this + 1) = v12 + 1;
                    if (v22 > 5)
                    {
                      goto LABEL_78;
                    }

LABEL_74:
                    *(a1 + 128) |= 0x4000u;
                    *(a1 + 120) = v22;
                    if (*(this + 1) == *(this + 2))
                    {
LABEL_79:
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

          continue;
        }

        return 0;
      case 2u:
        if (v8 != 1)
        {
          goto LABEL_59;
        }

        *v45 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v45) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_91;
      case 3u:
        if (v8 != 1)
        {
          goto LABEL_59;
        }

        *v45 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v45) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_94;
      case 4u:
        if (v8 != 1)
        {
          goto LABEL_59;
        }

        *v45 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v45) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_97;
      case 5u:
        if (v8 != 1)
        {
          goto LABEL_59;
        }

        *v45 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v45) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_100;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v19 = *(this + 1);
        v18 = *(this + 2);
        v45[0] = 0;
        if (v19 >= v18)
        {
          goto LABEL_106;
        }

        goto LABEL_103;
      case 7u:
        if (v8 != 1)
        {
          goto LABEL_59;
        }

        *v45 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v45) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_112;
      case 8u:
        if (v8 != 1)
        {
          goto LABEL_59;
        }

        *v45 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v45) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_115;
      case 9u:
        if (v8 != 1)
        {
          goto LABEL_59;
        }

        goto LABEL_118;
      case 0xAu:
        if (v8 != 1)
        {
          goto LABEL_59;
        }

        *v45 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v45) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_122;
      case 0xBu:
        if (v8 != 1)
        {
          goto LABEL_59;
        }

        *v45 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v45) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_125;
      case 0xCu:
        if (v8 != 2)
        {
          goto LABEL_59;
        }

        *(a1 + 128) |= 0x800u;
        if (*(a1 + 104) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v16 = *(this + 1);
        v14 = *(this + 2);
        goto LABEL_27;
      case 0xEu:
        if (v8 != 1)
        {
          goto LABEL_59;
        }

        *v45 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v45) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_68;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v12 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_71;
      default:
LABEL_59:
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

uint64_t sub_1000B5718(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 128);
  if (v6)
  {
    v10 = *(result + 16);
    if (v10)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
      v6 = *(v5 + 128);
      if ((v6 & 2) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DD88 + 16), a2, a4);
      v6 = *(v5 + 128);
      if ((v6 & 2) != 0)
      {
        goto LABEL_22;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 128);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 32), a3);
  v6 = *(v5 + 128);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 40), a3);
  v6 = *(v5 + 128);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 48), a3);
  v6 = *(v5 + 128);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 80), a2, a4);
  v6 = *(v5 + 128);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 128);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 128);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
  v6 = *(v5 + 128);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 88), a3);
  v6 = *(v5 + 128);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 96), a3);
  v6 = *(v5 + 128);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  v11 = *(v5 + 104);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 128);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xD, *(v5 + 84), a2, a4);
  v6 = *(v5 + 128);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(v5 + 112), a3);
  if ((*(v5 + 128) & 0x4000) == 0)
  {
LABEL_16:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xF, *(v5 + 120), a2, a4);
  v12 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v12;
  if (!v12)
  {
    return result;
  }

LABEL_36:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000B5948(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 32);
  if (v6)
  {
    v12 = *(this + 2);
    if (v12)
    {
      *a2 = 10;
      v13 = a2 + 1;
      v14 = *(v12 + 48);
      if (v14 <= 0x7F)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v12 = *(qword_10045DD88 + 16);
      *a2 = 10;
      v13 = a2 + 1;
      v14 = *(v12 + 48);
      if (v14 <= 0x7F)
      {
LABEL_20:
        *(v4 + 1) = v14;
        v4 = sub_1000ABD14(v12, v4 + 2, a3);
        v6 = *(this + 32);
        if ((v6 & 2) != 0)
        {
          goto LABEL_24;
        }

LABEL_3:
        if ((v6 & 4) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_25;
      }
    }

    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v13, a3);
    v4 = sub_1000ABD14(v12, v15, v16);
    v6 = *(this + 32);
    if ((v6 & 2) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_3;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_24:
  v17 = *(this + 3);
  *v4 = 17;
  *(v4 + 1) = v17;
  v4 = (v4 + 9);
  v6 = *(this + 32);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  v18 = *(this + 4);
  *v4 = 25;
  *(v4 + 1) = v18;
  v4 = (v4 + 9);
  v6 = *(this + 32);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  v19 = *(this + 5);
  *v4 = 33;
  *(v4 + 1) = v19;
  v4 = (v4 + 9);
  v6 = *(this + 32);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_28:
    v21 = *(this + 20);
    *v4 = 48;
    v22 = v4 + 1;
    if ((v21 & 0x80000000) != 0)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v21, v22, a3);
      v7 = *(this + 32);
      if ((v7 & 0x40) != 0)
      {
        goto LABEL_35;
      }
    }

    else if (v21 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v22, a3);
      v7 = *(this + 32);
      if ((v7 & 0x40) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *(v4 + 1) = v21;
      v4 = (v4 + 2);
      v7 = *(this + 32);
      if ((v7 & 0x40) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_8:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_27:
  v20 = *(this + 6);
  *v4 = 41;
  *(v4 + 1) = v20;
  v4 = (v4 + 9);
  if ((*(this + 32) & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_7:
  v7 = *(this + 32);
  if ((v7 & 0x40) == 0)
  {
    goto LABEL_8;
  }

LABEL_35:
  v23 = *(this + 7);
  *v4 = 57;
  *(v4 + 1) = v23;
  v4 = (v4 + 9);
  v7 = *(this + 32);
  if ((v7 & 0x80) == 0)
  {
LABEL_9:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  v24 = *(this + 8);
  *v4 = 65;
  *(v4 + 1) = v24;
  v4 = (v4 + 9);
  v7 = *(this + 32);
  if ((v7 & 0x100) == 0)
  {
LABEL_10:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  v25 = *(this + 9);
  *v4 = 73;
  *(v4 + 1) = v25;
  v4 = (v4 + 9);
  v7 = *(this + 32);
  if ((v7 & 0x200) == 0)
  {
LABEL_11:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  v26 = *(this + 11);
  *v4 = 81;
  *(v4 + 1) = v26;
  v4 = (v4 + 9);
  v7 = *(this + 32);
  if ((v7 & 0x400) == 0)
  {
LABEL_12:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  v27 = *(this + 12);
  *v4 = 89;
  *(v4 + 1) = v27;
  v4 = (v4 + 9);
  v7 = *(this + 32);
  if ((v7 & 0x800) == 0)
  {
LABEL_13:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_52:
    v34 = *(this + 21);
    *v4 = 104;
    v35 = v4 + 1;
    if ((v34 & 0x80000000) != 0)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v34, v35, a3);
      v8 = *(this + 32);
      if ((v8 & 0x2000) != 0)
      {
        goto LABEL_59;
      }
    }

    else if (v34 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v34, v35, a3);
      v8 = *(this + 32);
      if ((v8 & 0x2000) != 0)
      {
        goto LABEL_59;
      }
    }

    else
    {
      *(v4 + 1) = v34;
      v4 = (v4 + 2);
      v8 = *(this + 32);
      if ((v8 & 0x2000) != 0)
      {
        goto LABEL_59;
      }
    }

LABEL_15:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

LABEL_40:
  v28 = *(this + 13);
  *v4 = 98;
  v29 = *(v28 + 23);
  if ((v29 & 0x8000000000000000) != 0)
  {
    v29 = *(v28 + 8);
    if (v29 <= 0x7F)
    {
      goto LABEL_42;
    }
  }

  else if (v29 <= 0x7F)
  {
LABEL_42:
    *(v4 + 1) = v29;
    v30 = v4 + 2;
    goto LABEL_45;
  }

  v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v29, v4 + 1, a3);
LABEL_45:
  v31 = *(v28 + 23);
  if (v31 >= 0)
  {
    v32 = v28;
  }

  else
  {
    v32 = *v28;
  }

  if (v31 >= 0)
  {
    v33 = *(v28 + 23);
  }

  else
  {
    v33 = *(v28 + 8);
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v32, v33, v30, a4);
  if ((*(this + 32) & 0x1000) != 0)
  {
    goto LABEL_52;
  }

LABEL_14:
  v8 = *(this + 32);
  if ((v8 & 0x2000) == 0)
  {
    goto LABEL_15;
  }

LABEL_59:
  v36 = *(this + 14);
  *v4 = 113;
  *(v4 + 1) = v36;
  v4 = (v4 + 9);
  if ((*(this + 32) & 0x4000) == 0)
  {
LABEL_16:
    v11 = *(this + 1);
    v10 = (this + 8);
    v9 = v11;
    if (!v11)
    {
      return v4;
    }

    goto LABEL_67;
  }

LABEL_60:
  v37 = *(this + 30);
  *v4 = 120;
  v38 = v4 + 1;
  if ((v37 & 0x80000000) != 0)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v37, v38, a3);
    v40 = *(this + 1);
    v10 = (this + 8);
    v9 = v40;
    if (!v40)
    {
      return v4;
    }
  }

  else if (v37 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v37, v38, a3);
    v41 = *(this + 1);
    v10 = (this + 8);
    v9 = v41;
    if (!v41)
    {
      return v4;
    }
  }

  else
  {
    *(v4 + 1) = v37;
    v4 = (v4 + 2);
    v39 = *(this + 1);
    v10 = (this + 8);
    v9 = v39;
    if (!v39)
    {
      return v4;
    }
  }

LABEL_67:
  if (*v9 == v9[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v10, v4, a3);
}

uint64_t sub_1000B5F24(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 128);
  if (v3)
  {
    if ((v3 & 1) == 0)
    {
      v4 = 0;
      goto LABEL_25;
    }

    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = *(v6 + 52);
      if (*(v6 + 52))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v6 = *(qword_10045DD88 + 16);
      v7 = *(v6 + 52);
      if (*(v6 + 52))
      {
LABEL_8:
        v8 = (v7 << 31 >> 31) & 9;
        if ((v7 & 2) != 0)
        {
          v8 += 9;
        }

        if ((v7 & 4) != 0)
        {
          v9 = (v8 + 9);
        }

        else
        {
          v9 = v8;
        }

        if ((v7 & 8) != 0)
        {
          v9 = (v9 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v6 + 40), a2) + 1);
        }

        v10 = (v6 + 8);
        v11 = *(v6 + 8);
        if (!v11)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }
    }

    v9 = 0;
    v10 = (v6 + 8);
    v11 = *(v6 + 8);
    if (!v11)
    {
LABEL_21:
      *(v6 + 48) = v9;
      if (v9 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
      }

      else
      {
        v12 = 1;
      }

      v4 = v9 + v12 + 1;
      v3 = *(a1 + 128);
LABEL_25:
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
        v13 = v4 + 9;
      }

      else
      {
        v13 = v4;
      }

      if ((v3 & 0x20) != 0)
      {
        v14 = *(a1 + 80);
        if ((v14 & 0x80000000) != 0)
        {
          v15 = 11;
        }

        else if (v14 >= 0x80)
        {
          v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
          v3 = *(a1 + 128);
        }

        else
        {
          v15 = 2;
        }

        v13 += v15;
      }

      v16 = v13 + 9;
      if ((v3 & 0x40) == 0)
      {
        v16 = v13;
      }

      if ((v3 & 0x80) != 0)
      {
        v5 = v16 + 9;
      }

      else
      {
        v5 = v16;
      }

      if ((v3 & 0xFF00) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_47;
    }

LABEL_19:
    if (*v11 != v11[1])
    {
      v9 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v10, a2) + v9);
    }

    goto LABEL_21;
  }

  v5 = 0;
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_60;
  }

LABEL_47:
  v17 = v5 + 9;
  if ((v3 & 0x100) == 0)
  {
    v17 = v5;
  }

  if ((v3 & 0x200) != 0)
  {
    v17 += 9;
  }

  if ((v3 & 0x400) != 0)
  {
    LODWORD(v5) = v17 + 9;
  }

  else
  {
    LODWORD(v5) = v17;
  }

  if ((v3 & 0x800) != 0)
  {
    v21 = *(a1 + 104);
    v22 = *(v21 + 23);
    v23 = v22;
    v24 = *(v21 + 8);
    if ((v22 & 0x80u) == 0)
    {
      v25 = *(v21 + 23);
    }

    else
    {
      v25 = v24;
    }

    if (v25 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2);
      v22 = *(v21 + 23);
      v24 = *(v21 + 8);
      v3 = *(a1 + 128);
      v23 = *(v21 + 23);
    }

    else
    {
      v26 = 1;
    }

    if (v23 < 0)
    {
      v22 = v24;
    }

    LODWORD(v5) = v5 + v26 + v22 + 1;
    if ((v3 & 0x1000) == 0)
    {
LABEL_56:
      if ((v3 & 0x2000) != 0)
      {
        v5 = (v5 + 9);
      }

      else
      {
        v5 = v5;
      }

      if ((v3 & 0x4000) == 0)
      {
        goto LABEL_60;
      }

LABEL_87:
      v30 = *(a1 + 120);
      if ((v30 & 0x80000000) != 0)
      {
        v5 = (v5 + 11);
        v18 = (a1 + 8);
        v19 = *(a1 + 8);
        if (!v19)
        {
          goto LABEL_61;
        }
      }

      else if (v30 >= 0x80)
      {
        v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2) + 1 + v5;
        v18 = (a1 + 8);
        v19 = *(a1 + 8);
        if (!v19)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v5 = (v5 + 2);
        v18 = (a1 + 8);
        v19 = *(a1 + 8);
        if (!v19)
        {
          goto LABEL_61;
        }
      }

      goto LABEL_94;
    }
  }

  else if ((v3 & 0x1000) == 0)
  {
    goto LABEL_56;
  }

  v27 = *(a1 + 84);
  if ((v27 & 0x80000000) != 0)
  {
    LODWORD(v5) = v5 + 11;
    if ((v3 & 0x2000) != 0)
    {
      v5 = (v5 + 9);
    }

    else
    {
      v5 = v5;
    }

    if ((v3 & 0x4000) != 0)
    {
      goto LABEL_87;
    }
  }

  else if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, a2);
    v29 = *(a1 + 128);
    LODWORD(v5) = v28 + 1 + v5;
    if ((v29 & 0x2000) != 0)
    {
      v5 = (v5 + 9);
    }

    else
    {
      v5 = v5;
    }

    if ((v29 & 0x4000) != 0)
    {
      goto LABEL_87;
    }
  }

  else
  {
    LODWORD(v5) = v5 + 2;
    if ((v3 & 0x2000) != 0)
    {
      v5 = (v5 + 9);
    }

    else
    {
      v5 = v5;
    }

    if ((v3 & 0x4000) != 0)
    {
      goto LABEL_87;
    }
  }

LABEL_60:
  v18 = (a1 + 8);
  v19 = *(a1 + 8);
  if (!v19)
  {
LABEL_61:
    *(a1 + 124) = v5;
    return v5;
  }

LABEL_94:
  if (*v19 == v19[1])
  {
    goto LABEL_61;
  }

  v31 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v18, a2) + v5;
  *(a1 + 124) = v31;
  return v31;
}

uint64_t sub_1000B6244(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000B476C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000B6324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000B6338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B634C(uint64_t result, uint64_t a2)
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

uint64_t sub_1000B63E0()
{
  v0 = qword_10045CD50;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000A9CE8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CCF8;
}

void sub_1000B6470(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B6484(_DWORD *a1, uint64_t a2)
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

void sub_1000B6530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000B6544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000B6558(uint64_t a1)
{
  *a1 = off_1004385F8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000B65AC(uint64_t a1)
{
  *a1 = off_1004385F8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000B66A8(uint64_t a1)
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

uint64_t sub_1000B66C8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback != 8)
        {
          break;
        }

        goto LABEL_9;
      }

      *(this + 8) = TagFallback;
      *(this + 1) = v6 + 1;
      if (TagFallback != 8)
      {
        break;
      }

LABEL_9:
      v15 = 0;
      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v15);
        if (!result)
        {
          return result;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        *(a1 + 16) = v15;
        *(a1 + 24) |= 1u;
        if (v13 == v12)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v11 = v9 + 1;
        *(this + 1) = v11;
        *(a1 + 16) = v10;
        *(a1 + 24) |= 1u;
        if (v11 == v8)
        {
LABEL_15:
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

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

wireless_diagnostics::google::protobuf::internal::WireFormat *sub_1000B6810(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(a1 + 24))
  {
    v5 = a1;
    wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(a1 + 16), a2, a4);
    a1 = v5;
  }

  v8 = *(a1 + 8);
  result = (a1 + 8);
  v7 = v8;
  if (v8 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(result, a2, a3);
  }

  return result;
}

uint64_t sub_1000B6884(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if ((*(a1 + 24) & 1) == 0)
  {
LABEL_5:
    v6 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v6;
    if (!v6)
    {
      return a2;
    }

    goto LABEL_10;
  }

  v3 = *(a1 + 16);
  *a2 = 8;
  if ((v3 & 0x80000000) != 0)
  {
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v3, a2 + 1, a3);
    v4 = (a1 + 8);
    v5 = *(a1 + 8);
    if (!v5)
    {
      return a2;
    }

    goto LABEL_10;
  }

  if (v3 <= 0x7F)
  {
    *(a2 + 1) = v3;
    a2 = (a2 + 2);
    goto LABEL_5;
  }

  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v3, a2 + 1, a3);
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  if (!v5)
  {
    return a2;
  }

LABEL_10:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
}

uint64_t sub_1000B6948(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    if ((v6 & 0x80000000) != 0)
    {
      v3 = 11;
      v4 = (a1 + 8);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v6 < 0x80)
      {
        v3 = 2;
        v4 = (a1 + 8);
        v5 = *(a1 + 8);
        if (!v5)
        {
          goto LABEL_9;
        }

        goto LABEL_11;
      }

      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v4 = (a1 + 8);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_11;
      }
    }

LABEL_9:
    *(a1 + 20) = v3;
    return v3;
  }

  v3 = 0;
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_11:
  if (*v5 == v5[1])
  {
    goto LABEL_9;
  }

  v8 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v4, a2) + v3;
  *(a1 + 20) = v8;
  return v8;
}

uint64_t sub_1000B69FC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000B6484(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000B6ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000B6AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B6B04(uint64_t result, uint64_t a2)
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

uint64_t sub_1000B6B98()
{
  v0 = qword_10045CD50;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000A9CE8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CD08;
}

void sub_1000B6C28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B6C3C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v27);
    v4 = *(a2 + 156);
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v4 = *(a2 + 156);
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  if (v4)
  {
    *(a1 + 156) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_10045DD98 + 16);
    }

    sub_1000AB70C(v5, v6);
    v4 = *(a2 + 156);
  }

  if ((v4 & 2) != 0)
  {
    v21 = *(a2 + 24);
    *(a1 + 156) |= 2u;
    *(a1 + 24) = v21;
    v4 = *(a2 + 156);
    if ((v4 & 4) == 0)
    {
LABEL_12:
      if ((v4 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_50;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_12;
  }

  v22 = *(a2 + 32);
  *(a1 + 156) |= 4u;
  *(a1 + 32) = v22;
  v4 = *(a2 + 156);
  if ((v4 & 8) == 0)
  {
LABEL_13:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  v23 = *(a2 + 48);
  *(a1 + 156) |= 8u;
  *(a1 + 48) = v23;
  v4 = *(a2 + 156);
  if ((v4 & 0x10) == 0)
  {
LABEL_14:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:
  v24 = *(a2 + 40);
  *(a1 + 156) |= 0x10u;
  *(a1 + 40) = v24;
  v4 = *(a2 + 156);
  if ((v4 & 0x20) == 0)
  {
LABEL_15:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:
  v25 = *(a2 + 56);
  *(a1 + 156) |= 0x20u;
  *(a1 + 56) = v25;
  v4 = *(a2 + 156);
  if ((v4 & 0x40) == 0)
  {
LABEL_16:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_53:
  v26 = *(a2 + 52);
  *(a1 + 156) |= 0x40u;
  *(a1 + 52) = v26;
  v4 = *(a2 + 156);
  if ((v4 & 0x80) != 0)
  {
LABEL_17:
    v7 = *(a2 + 64);
    *(a1 + 156) |= 0x80u;
    *(a1 + 64) = v7;
    v4 = *(a2 + 156);
  }

LABEL_18:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_28;
  }

  if ((v4 & 0x100) != 0)
  {
    v9 = *(a2 + 72);
    *(a1 + 156) |= 0x100u;
    *(a1 + 72) = v9;
    v4 = *(a2 + 156);
    if ((v4 & 0x200) == 0)
    {
LABEL_21:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_35;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_21;
  }

  v10 = *(a2 + 80);
  *(a1 + 156) |= 0x200u;
  *(a1 + 80) = v10;
  v4 = *(a2 + 156);
  if ((v4 & 0x400) == 0)
  {
LABEL_22:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_36;
  }

LABEL_35:
  v11 = *(a2 + 88);
  *(a1 + 156) |= 0x400u;
  *(a1 + 88) = v11;
  v4 = *(a2 + 156);
  if ((v4 & 0x800) == 0)
  {
LABEL_23:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

LABEL_36:
  v12 = *(a2 + 96);
  *(a1 + 156) |= 0x800u;
  *(a1 + 96) = v12;
  v4 = *(a2 + 156);
  if ((v4 & 0x1000) == 0)
  {
LABEL_24:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_38;
  }

LABEL_37:
  v13 = *(a2 + 104);
  *(a1 + 156) |= 0x1000u;
  *(a1 + 104) = v13;
  v4 = *(a2 + 156);
  if ((v4 & 0x2000) == 0)
  {
LABEL_25:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_39;
  }

LABEL_38:
  v14 = *(a2 + 112);
  *(a1 + 156) |= 0x2000u;
  *(a1 + 112) = v14;
  v4 = *(a2 + 156);
  if ((v4 & 0x4000) == 0)
  {
LABEL_26:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_39:
  v15 = *(a2 + 116);
  *(a1 + 156) |= 0x4000u;
  *(a1 + 116) = v15;
  v4 = *(a2 + 156);
  if ((v4 & 0x8000) != 0)
  {
LABEL_27:
    v8 = *(a2 + 120);
    *(a1 + 156) |= 0x8000u;
    *(a1 + 120) = v8;
    v4 = *(a2 + 156);
  }

LABEL_28:
  if ((v4 & 0xFF0000) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v4 & 0x10000) == 0)
  {
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_31;
    }

LABEL_42:
    v17 = *(a2 + 136);
    *(a1 + 156) |= 0x20000u;
    *(a1 + 136) = v17;
    if ((*(a2 + 156) & 0x40000) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_43;
  }

  v16 = *(a2 + 128);
  *(a1 + 156) |= 0x10000u;
  *(a1 + 128) = v16;
  v4 = *(a2 + 156);
  if ((v4 & 0x20000) != 0)
  {
    goto LABEL_42;
  }

LABEL_31:
  if ((v4 & 0x40000) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

LABEL_43:
  *(a1 + 156) |= 0x40000u;
  v18 = *(a1 + 144);
  if (!v18)
  {
    operator new();
  }

  v19 = *(a2 + 144);
  if (!v19)
  {
    v19 = *(qword_10045DD98 + 144);
  }

  sub_1000B6484(v18, v19);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000B7050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000B7064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B7078(uint64_t a1, uint64_t a2)
{
  *a1 = off_1004386A8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  sub_1000B6C3C(a1, a2);
  return a1;
}

void sub_1000B70F4(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

void sub_1000B7124(void *a1)
{
  *a1 = off_1004386A8;
  if (qword_10045DD98 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = a1[18];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000B71E4(void *a1)
{
  *a1 = off_1004386A8;
  if (qword_10045DD98 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = a1[18];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1000B72C0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_10045DD98;
  if (!qword_10045DD98)
  {
    sub_1000AA3EC(0, a2, a3, a4);
    return qword_10045DD98;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000B7398(uint64_t a1)
{
  v1 = *(a1 + 156);
  if (v1)
  {
    if (v1)
    {
      v2 = *(a1 + 16);
      if (v2)
      {
        if (*(v2 + 52))
        {
          *(v2 + 16) = 0u;
          *(v2 + 32) = 0u;
        }

        v4 = *(v2 + 8);
        v3 = (v2 + 8);
        *(v3 + 11) = 0;
        if (v4)
        {
          v5 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
          a1 = v5;
        }
      }
    }

    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    v1 = *(a1 + 156);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 120) = 0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    if ((v1 & 0x40000) != 0)
    {
      v6 = *(a1 + 144);
      if (v6)
      {
        if (*(v6 + 24))
        {
          *(v6 + 16) = 0;
        }

        v8 = *(v6 + 8);
        v7 = (v6 + 8);
        *(v7 + 4) = 0;
        if (v8)
        {
          v9 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v7);
          a1 = v9;
        }
      }
    }
  }

  v11 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 37) = 0;
  if (v11)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000B7490(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (v8 != 2)
        {
          goto LABEL_68;
        }

        *(a1 + 156) |= 1u;
        v9 = *(a1 + 16);
        if (!v9)
        {
          operator new();
        }

        v60[0] = 0;
        v10 = *(this + 1);
        if (v10 >= *(this + 2) || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v60))
          {
            return 0;
          }
        }

        else
        {
          v60[0] = *v10;
          *(this + 1) = v10 + 1;
        }

        v30 = *(this + 14);
        v31 = *(this + 15);
        *(this + 14) = v30 + 1;
        if (v30 >= v31)
        {
          return 0;
        }

        v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v60[0]);
        if (!sub_1000AB9B4(v9, this, v33, v34) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v32);
        v35 = *(this + 14);
        v28 = __OFSUB__(v35, 1);
        v36 = v35 - 1;
        if (v36 < 0 == v28)
        {
          *(this + 14) = v36;
        }

        v37 = *(this + 1);
        if (v37 >= *(this + 2) || *v37 != 17)
        {
          continue;
        }

        *(this + 1) = v37 + 1;
        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v60) & 1) == 0)
        {
          return 0;
        }

LABEL_90:
        *(a1 + 24) = *v60;
        *(a1 + 156) |= 2u;
        v38 = *(this + 1);
        if (v38 >= *(this + 2) || *v38 != 25)
        {
          continue;
        }

        *(this + 1) = v38 + 1;
        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v60) & 1) == 0)
        {
          return 0;
        }

LABEL_93:
        *(a1 + 32) = *v60;
        *(a1 + 156) |= 4u;
        v39 = *(this + 1);
        v13 = *(this + 2);
        if (v39 >= v13 || *v39 != 32)
        {
          continue;
        }

        v14 = v39 + 1;
        *(this + 1) = v14;
        v60[0] = 0;
        if (v14 >= v13)
        {
          goto LABEL_99;
        }

LABEL_96:
        v40 = *v14;
        if (v40 < 0)
        {
LABEL_99:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v60);
          if (!result)
          {
            return result;
          }

          v41 = *(this + 1);
          v43 = *(this + 2);
          *(a1 + 48) = v60[0];
          *(a1 + 156) |= 8u;
          if (v41 < v43)
          {
            goto LABEL_101;
          }

          continue;
        }

        v41 = v14 + 1;
        *(this + 1) = v41;
        *(a1 + 48) = v40;
        *(a1 + 156) |= 8u;
        if (v41 >= v13)
        {
          continue;
        }

LABEL_101:
        if (*v41 != 41)
        {
          continue;
        }

        *(this + 1) = v41 + 1;
        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v60) & 1) == 0)
        {
          return 0;
        }

LABEL_103:
        *(a1 + 40) = *v60;
        *(a1 + 156) |= 0x10u;
        v44 = *(this + 1);
        if (v44 >= *(this + 2) || *v44 != 49)
        {
          continue;
        }

        *(this + 1) = v44 + 1;
        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v60) & 1) == 0)
        {
          return 0;
        }

LABEL_106:
        *(a1 + 56) = *v60;
        *(a1 + 156) |= 0x20u;
        v45 = *(this + 1);
        v19 = *(this + 2);
        if (v45 >= v19 || *v45 != 56)
        {
          continue;
        }

        v20 = v45 + 1;
        *(this + 1) = v20;
LABEL_109:
        v60[0] = 0;
        if (v20 >= v19 || (v46 = *v20, (v46 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v60);
          if (!result)
          {
            return result;
          }

          v46 = v60[0];
          if (v60[0] > 2)
          {
LABEL_115:
            wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 7, v46);
            goto LABEL_116;
          }
        }

        else
        {
          *(this + 1) = v20 + 1;
          if (v46 > 2)
          {
            goto LABEL_115;
          }
        }

        *(a1 + 156) |= 0x40u;
        *(a1 + 52) = v46;
LABEL_116:
        v47 = *(this + 1);
        if (v47 >= *(this + 2) || *v47 != 65)
        {
          continue;
        }

        *(this + 1) = v47 + 1;
        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v60) & 1) == 0)
        {
          return 0;
        }

LABEL_119:
        *(a1 + 64) = *v60;
        *(a1 + 156) |= 0x80u;
        v48 = *(this + 1);
        if (v48 >= *(this + 2) || *v48 != 73)
        {
          continue;
        }

        *(this + 1) = v48 + 1;
LABEL_122:
        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v60) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 72) = *v60;
        *(a1 + 156) |= 0x100u;
        v49 = *(this + 1);
        if (v49 >= *(this + 2) || *v49 != 81)
        {
          continue;
        }

        *(this + 1) = v49 + 1;
        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v60) & 1) == 0)
        {
          return 0;
        }

LABEL_126:
        *(a1 + 80) = *v60;
        *(a1 + 156) |= 0x200u;
        v50 = *(this + 1);
        if (v50 >= *(this + 2) || *v50 != 89)
        {
          continue;
        }

        *(this + 1) = v50 + 1;
        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v60) & 1) == 0)
        {
          return 0;
        }

LABEL_129:
        *(a1 + 88) = *v60;
        *(a1 + 156) |= 0x400u;
        v51 = *(this + 1);
        if (v51 >= *(this + 2) || *v51 != 97)
        {
          continue;
        }

        *(this + 1) = v51 + 1;
        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v60) & 1) == 0)
        {
          return 0;
        }

LABEL_132:
        *(a1 + 96) = *v60;
        *(a1 + 156) |= 0x800u;
        v52 = *(this + 1);
        if (v52 >= *(this + 2) || *v52 != 105)
        {
          continue;
        }

        *(this + 1) = v52 + 1;
        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v60) & 1) == 0)
        {
          return 0;
        }

LABEL_135:
        *(a1 + 104) = *v60;
        *(a1 + 156) |= 0x1000u;
        v53 = *(this + 1);
        v11 = *(this + 2);
        if (v53 >= v11 || *v53 != 112)
        {
          continue;
        }

        v18 = v53 + 1;
        *(this + 1) = v18;
LABEL_138:
        v60[0] = 0;
        if (v18 < v11)
        {
          v54 = *v18;
          if ((v54 & 0x80000000) == 0)
          {
            v55 = v18 + 1;
            *(this + 1) = v55;
            *(a1 + 112) = v54;
            *(a1 + 156) |= 0x2000u;
            if (v55 < v11)
            {
              goto LABEL_144;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v60);
        if (!result)
        {
          return result;
        }

        v55 = *(this + 1);
        v11 = *(this + 2);
        *(a1 + 112) = v60[0];
        *(a1 + 156) |= 0x2000u;
        if (v55 >= v11)
        {
          continue;
        }

LABEL_144:
        if (*v55 != 120)
        {
          continue;
        }

        v12 = v55 + 1;
        *(this + 1) = v12;
LABEL_146:
        v60[0] = 0;
        if (v12 >= v11 || (v56 = *v12, (v56 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v60);
          if (!result)
          {
            return result;
          }

          v56 = v60[0];
          v57 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          v57 = (v12 + 1);
          *(this + 1) = v57;
        }

        *(a1 + 116) = v56;
        *(a1 + 156) |= 0x4000u;
        if (v11 - v57 < 2 || *v57 != 129 || v57[1] != 1)
        {
          continue;
        }

        *(this + 1) = v57 + 2;
        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v60) & 1) == 0)
        {
          return 0;
        }

LABEL_155:
        *(a1 + 120) = *v60;
        *(a1 + 156) |= 0x8000u;
        v58 = *(this + 1);
        if (*(this + 4) - v58 < 2 || *v58 != 137 || v58[1] != 1)
        {
          continue;
        }

        *(this + 1) = v58 + 2;
        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v60) & 1) == 0)
        {
          return 0;
        }

LABEL_159:
        *(a1 + 128) = *v60;
        *(a1 + 156) |= 0x10000u;
        v59 = *(this + 1);
        if (*(this + 4) - v59 < 2 || *v59 != 145 || v59[1] != 1)
        {
          continue;
        }

        *(this + 1) = v59 + 2;
        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v60) & 1) == 0)
        {
          return 0;
        }

LABEL_47:
        *(a1 + 136) = *v60;
        v15 = *(a1 + 156) | 0x20000;
        *(a1 + 156) = v15;
        v16 = *(this + 1);
        if (*(this + 4) - v16 < 2 || *v16 != 154 || v16[1] != 1)
        {
          continue;
        }

        *(this + 1) = v16 + 2;
        *(a1 + 156) = v15 | 0x40000;
        v17 = *(a1 + 144);
        if (!v17)
        {
LABEL_51:
          operator new();
        }

LABEL_61:
        v60[0] = 0;
        v21 = *(this + 1);
        if (v21 >= *(this + 2) || *v21 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v60))
          {
            return 0;
          }
        }

        else
        {
          v60[0] = *v21;
          *(this + 1) = v21 + 1;
        }

        v22 = *(this + 14);
        v23 = *(this + 15);
        *(this + 14) = v22 + 1;
        if (v22 < v23)
        {
          v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v60[0]);
          if (sub_1000B66C8(v17, this, v25, v26))
          {
            if (*(this + 36) == 1)
            {
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v24);
              v27 = *(this + 14);
              v28 = __OFSUB__(v27, 1);
              v29 = v27 - 1;
              if (v29 < 0 == v28)
              {
                *(this + 14) = v29;
              }

              if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
              {
                *(this + 8) = 0;
                result = 1;
                *(this + 36) = 1;
                return result;
              }

              continue;
            }
          }
        }

        return 0;
      case 2u:
        if (v8 != 1)
        {
          goto LABEL_68;
        }

        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v60) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_90;
      case 3u:
        if (v8 != 1)
        {
          goto LABEL_68;
        }

        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v60) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_93;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v14 = *(this + 1);
        v13 = *(this + 2);
        v60[0] = 0;
        if (v14 >= v13)
        {
          goto LABEL_99;
        }

        goto LABEL_96;
      case 5u:
        if (v8 != 1)
        {
          goto LABEL_68;
        }

        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v60) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_103;
      case 6u:
        if (v8 != 1)
        {
          goto LABEL_68;
        }

        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v60) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_106;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v20 = *(this + 1);
        v19 = *(this + 2);
        goto LABEL_109;
      case 8u:
        if (v8 != 1)
        {
          goto LABEL_68;
        }

        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v60) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_119;
      case 9u:
        if (v8 != 1)
        {
          goto LABEL_68;
        }

        goto LABEL_122;
      case 0xAu:
        if (v8 != 1)
        {
          goto LABEL_68;
        }

        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v60) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_126;
      case 0xBu:
        if (v8 != 1)
        {
          goto LABEL_68;
        }

        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v60) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_129;
      case 0xCu:
        if (v8 != 1)
        {
          goto LABEL_68;
        }

        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v60) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_132;
      case 0xDu:
        if (v8 != 1)
        {
          goto LABEL_68;
        }

        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v60) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_135;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v18 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_138;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v12 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_146;
      case 0x10u:
        if (v8 != 1)
        {
          goto LABEL_68;
        }

        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v60) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_155;
      case 0x11u:
        if (v8 != 1)
        {
          goto LABEL_68;
        }

        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v60) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_159;
      case 0x12u:
        if (v8 != 1)
        {
          goto LABEL_68;
        }

        *v60 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v60))
        {
          goto LABEL_47;
        }

        return 0;
      case 0x13u:
        if (v8 != 2)
        {
          goto LABEL_68;
        }

        *(a1 + 156) |= 0x40000u;
        v17 = *(a1 + 144);
        if (v17)
        {
          goto LABEL_61;
        }

        goto LABEL_51;
      default:
LABEL_68:
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

uint64_t sub_1000B7FD0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 156);
  if (v6)
  {
    v10 = *(result + 16);
    if (v10)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
      v6 = *(v5 + 156);
      if ((v6 & 2) != 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DD98 + 16), a2, a4);
      v6 = *(v5 + 156);
      if ((v6 & 2) != 0)
      {
        goto LABEL_26;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_27;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 156);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 32), a3);
  v6 = *(v5 + 156);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 48), a2, a4);
  v6 = *(v5 + 156);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 156);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 56), a3);
  v6 = *(v5 + 156);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(7, *(v5 + 52), a2, a4);
  v6 = *(v5 + 156);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 156);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
  v6 = *(v5 + 156);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 80), a3);
  v6 = *(v5 + 156);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 88), a3);
  v6 = *(v5 + 156);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 96), a3);
  v6 = *(v5 + 156);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 104), a3);
  v6 = *(v5 + 156);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xE, *(v5 + 112), a2, a4);
  v6 = *(v5 + 156);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xF, *(v5 + 116), a2, a4);
  v6 = *(v5 + 156);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x10, a2, *(v5 + 120), a3);
  v6 = *(v5 + 156);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x11, a2, *(v5 + 128), a3);
  v6 = *(v5 + 156);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x12, a2, *(v5 + 136), a3);
  if ((*(v5 + 156) & 0x40000) == 0)
  {
LABEL_20:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_47;
  }

LABEL_43:
  v11 = *(v5 + 144);
  if (v11)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x13, v11, a2, a4);
    v12 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v12;
    if (!v12)
    {
      return result;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x13, *(qword_10045DD98 + 144), a2, a4);
    v13 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v13;
    if (!v13)
    {
      return result;
    }
  }

LABEL_47:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000B8298(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 39);
  if (v5)
  {
    v9 = *(this + 2);
    if (v9)
    {
      *a2 = 10;
      v10 = a2 + 1;
      v11 = *(v9 + 48);
      if (v11 <= 0x7F)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v9 = *(qword_10045DD98 + 16);
      *a2 = 10;
      v10 = a2 + 1;
      v11 = *(v9 + 48);
      if (v11 <= 0x7F)
      {
LABEL_23:
        *(v3 + 1) = v11;
        v3 = sub_1000ABD14(v9, v3 + 2, a3);
        v5 = *(this + 39);
        if ((v5 & 2) != 0)
        {
          goto LABEL_27;
        }

LABEL_3:
        if ((v5 & 4) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_28;
      }
    }

    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v10, a3);
    v3 = sub_1000ABD14(v9, v12, v13);
    v5 = *(this + 39);
    if ((v5 & 2) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_3;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_27:
  v14 = *(this + 3);
  *v3 = 17;
  *(v3 + 1) = v14;
  v3 = (v3 + 9);
  v5 = *(this + 39);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_29:
    v16 = *(this + 12);
    *v3 = 32;
    v17 = v3 + 1;
    if ((v16 & 0x80000000) != 0)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v16, v17, a3);
      v6 = *(this + 39);
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_36;
      }
    }

    else if (v16 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v17, a3);
      v6 = *(this + 39);
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      *(v3 + 1) = v16;
      v3 = (v3 + 2);
      v6 = *(this + 39);
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_36;
      }
    }

LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_28:
  v15 = *(this + 4);
  *v3 = 25;
  *(v3 + 1) = v15;
  v3 = (v3 + 9);
  if ((*(this + 39) & 8) != 0)
  {
    goto LABEL_29;
  }

LABEL_5:
  v6 = *(this + 39);
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_36:
  v18 = *(this + 5);
  *v3 = 41;
  *(v3 + 1) = v18;
  v3 = (v3 + 9);
  v6 = *(this + 39);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_38:
    v20 = *(this + 13);
    *v3 = 56;
    v21 = v3 + 1;
    if ((v20 & 0x80000000) != 0)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v20, v21, a3);
      v7 = *(this + 39);
      if ((v7 & 0x80) != 0)
      {
        goto LABEL_45;
      }
    }

    else if (v20 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v21, a3);
      v7 = *(this + 39);
      if ((v7 & 0x80) != 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      *(v3 + 1) = v20;
      v3 = (v3 + 2);
      v7 = *(this + 39);
      if ((v7 & 0x80) != 0)
      {
        goto LABEL_45;
      }
    }

LABEL_9:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_37:
  v19 = *(this + 7);
  *v3 = 49;
  *(v3 + 1) = v19;
  v3 = (v3 + 9);
  if ((*(this + 39) & 0x40) != 0)
  {
    goto LABEL_38;
  }

LABEL_8:
  v7 = *(this + 39);
  if ((v7 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_45:
  v22 = *(this + 8);
  *v3 = 65;
  *(v3 + 1) = v22;
  v3 = (v3 + 9);
  v7 = *(this + 39);
  if ((v7 & 0x100) == 0)
  {
LABEL_10:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_47;
  }

LABEL_46:
  v23 = *(this + 9);
  *v3 = 73;
  *(v3 + 1) = v23;
  v3 = (v3 + 9);
  v7 = *(this + 39);
  if ((v7 & 0x200) == 0)
  {
LABEL_11:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_48;
  }

LABEL_47:
  v24 = *(this + 10);
  *v3 = 81;
  *(v3 + 1) = v24;
  v3 = (v3 + 9);
  v7 = *(this + 39);
  if ((v7 & 0x400) == 0)
  {
LABEL_12:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

LABEL_48:
  v25 = *(this + 11);
  *v3 = 89;
  *(v3 + 1) = v25;
  v3 = (v3 + 9);
  v7 = *(this + 39);
  if ((v7 & 0x800) == 0)
  {
LABEL_13:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_50;
  }

LABEL_49:
  v26 = *(this + 12);
  *v3 = 97;
  *(v3 + 1) = v26;
  v3 = (v3 + 9);
  v7 = *(this + 39);
  if ((v7 & 0x1000) == 0)
  {
LABEL_14:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_51;
  }

LABEL_50:
  v27 = *(this + 13);
  *v3 = 105;
  *(v3 + 1) = v27;
  v3 = (v3 + 9);
  if ((*(this + 39) & 0x2000) == 0)
  {
LABEL_15:
    if ((*(this + 157) & 0x40) == 0)
    {
      goto LABEL_16;
    }

LABEL_58:
    v30 = *(this + 29);
    *v3 = 120;
    v31 = v3 + 1;
    if ((v30 & 0x80000000) != 0)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v30, v31, a3);
      v8 = *(this + 39);
      if ((v8 & 0x8000) != 0)
      {
        goto LABEL_65;
      }
    }

    else if (v30 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v30, v31, a3);
      v8 = *(this + 39);
      if ((v8 & 0x8000) != 0)
      {
        goto LABEL_65;
      }
    }

    else
    {
      *(v3 + 1) = v30;
      v3 = (v3 + 2);
      v8 = *(this + 39);
      if ((v8 & 0x8000) != 0)
      {
        goto LABEL_65;
      }
    }

LABEL_17:
    if ((v8 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_66;
  }

LABEL_51:
  v28 = *(this + 28);
  *v3 = 112;
  v29 = v3 + 1;
  if ((v28 & 0x80000000) != 0)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v28, v29, a3);
    if ((*(this + 157) & 0x40) != 0)
    {
      goto LABEL_58;
    }
  }

  else if (v28 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v28, v29, a3);
    if ((*(this + 157) & 0x40) != 0)
    {
      goto LABEL_58;
    }
  }

  else
  {
    *(v3 + 1) = v28;
    v3 = (v3 + 2);
    if ((*(this + 157) & 0x40) != 0)
    {
      goto LABEL_58;
    }
  }

LABEL_16:
  v8 = *(this + 39);
  if ((v8 & 0x8000) == 0)
  {
    goto LABEL_17;
  }

LABEL_65:
  v32 = *(this + 15);
  *v3 = 385;
  *(v3 + 2) = v32;
  v3 = (v3 + 10);
  v8 = *(this + 39);
  if ((v8 & 0x10000) == 0)
  {
LABEL_18:
    if ((v8 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_67;
  }

LABEL_66:
  v33 = *(this + 16);
  *v3 = 393;
  *(v3 + 2) = v33;
  v3 = (v3 + 10);
  v8 = *(this + 39);
  if ((v8 & 0x20000) == 0)
  {
LABEL_19:
    if ((v8 & 0x40000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_68;
  }

LABEL_67:
  v34 = *(this + 17);
  *v3 = 401;
  *(v3 + 2) = v34;
  v3 = (v3 + 10);
  if ((*(this + 39) & 0x40000) == 0)
  {
    goto LABEL_83;
  }

LABEL_68:
  v35 = *(this + 18);
  if (v35)
  {
    *v3 = 410;
    v36 = v3 + 2;
    v37 = *(v35 + 20);
    if (v37 <= 0x7F)
    {
      goto LABEL_70;
    }
  }

  else
  {
    v35 = *(qword_10045DD98 + 144);
    *v3 = 410;
    v36 = v3 + 2;
    v37 = *(v35 + 20);
    if (v37 <= 0x7F)
    {
LABEL_70:
      *(v3 + 2) = v37;
      v3 = (v3 + 3);
      if ((*(v35 + 24) & 1) == 0)
      {
        goto LABEL_80;
      }

LABEL_74:
      v38 = *(v35 + 16);
      *v3 = 8;
      v39 = v3 + 1;
      if ((v38 & 0x80000000) != 0)
      {
        v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v38, v39, a3);
      }

      else
      {
        if (v38 <= 0x7F)
        {
          *(v3 + 1) = v38;
          v3 = (v3 + 2);
          goto LABEL_80;
        }

        v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v38, v39, a3);
      }

      v3 = v40;
      goto LABEL_80;
    }
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v37, v36, a3);
  if (*(v35 + 24))
  {
    goto LABEL_74;
  }

LABEL_80:
  v43 = *(v35 + 8);
  v42 = (v35 + 8);
  v41 = v43;
  if (v43 && *v41 != v41[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v42, v3, a3);
  }

LABEL_83:
  v46 = *(this + 1);
  v45 = (this + 8);
  v44 = v46;
  if (!v46 || *v44 == v44[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v45, v3, a3);
}

uint64_t sub_1000B8A34(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 156);
  if (!v3)
  {
    v5 = 0;
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_53;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    goto LABEL_25;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(v6 + 52);
    if (*(v6 + 52))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = *(qword_10045DD98 + 16);
    v7 = *(v6 + 52);
    if (*(v6 + 52))
    {
LABEL_8:
      v8 = (v7 << 31 >> 31) & 9;
      if ((v7 & 2) != 0)
      {
        v8 += 9;
      }

      if ((v7 & 4) != 0)
      {
        v9 = (v8 + 9);
      }

      else
      {
        v9 = v8;
      }

      if ((v7 & 8) != 0)
      {
        v9 = (v9 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v6 + 40), a2) + 1);
      }

      v10 = (v6 + 8);
      v11 = *(v6 + 8);
      if (!v11)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  v9 = 0;
  v10 = (v6 + 8);
  v11 = *(v6 + 8);
  if (v11)
  {
LABEL_19:
    if (*v11 != v11[1])
    {
      v9 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v10, a2) + v9);
    }
  }

LABEL_21:
  *(v6 + 48) = v9;
  if (v9 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
  }

  else
  {
    v12 = 1;
  }

  v4 = v9 + v12 + 1;
  v3 = *(a1 + 156);
LABEL_25:
  if ((v3 & 2) != 0)
  {
    v4 += 9;
  }

  if ((v3 & 4) != 0)
  {
    v13 = v4 + 9;
  }

  else
  {
    v13 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v14 = *(a1 + 48);
    if ((v14 & 0x80000000) != 0)
    {
      v15 = 11;
    }

    else if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
      v3 = *(a1 + 156);
    }

    else
    {
      v15 = 2;
    }

    v13 += v15;
  }

  v16 = v13 + 9;
  if ((v3 & 0x10) == 0)
  {
    v16 = v13;
  }

  if ((v3 & 0x20) != 0)
  {
    LODWORD(v5) = v16 + 9;
  }

  else
  {
    LODWORD(v5) = v16;
  }

  if ((v3 & 0x40) != 0)
  {
    v17 = *(a1 + 52);
    if ((v17 & 0x80000000) != 0)
    {
      v18 = 11;
    }

    else if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
      v3 = *(a1 + 156);
    }

    else
    {
      v18 = 2;
    }

    LODWORD(v5) = v18 + v5;
  }

  if ((v3 & 0x80) != 0)
  {
    v5 = (v5 + 9);
  }

  else
  {
    v5 = v5;
  }

  if ((v3 & 0xFF00) != 0)
  {
LABEL_53:
    v19 = v5 + 9;
    if ((v3 & 0x100) == 0)
    {
      v19 = v5;
    }

    if ((v3 & 0x200) != 0)
    {
      v19 += 9;
    }

    if ((v3 & 0x400) != 0)
    {
      v19 += 9;
    }

    if ((v3 & 0x800) != 0)
    {
      v19 += 9;
    }

    if ((v3 & 0x1000) != 0)
    {
      LODWORD(v5) = v19 + 9;
    }

    else
    {
      LODWORD(v5) = v19;
    }

    if ((v3 & 0x2000) != 0)
    {
      v20 = *(a1 + 112);
      if ((v20 & 0x80000000) != 0)
      {
        v21 = 11;
      }

      else if (v20 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 1;
        v3 = *(a1 + 156);
      }

      else
      {
        v21 = 2;
      }

      LODWORD(v5) = v21 + v5;
    }

    if ((v3 & 0x4000) != 0)
    {
      v22 = *(a1 + 116);
      if ((v22 & 0x80000000) != 0)
      {
        v23 = 11;
      }

      else if (v22 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 1;
        v3 = *(a1 + 156);
      }

      else
      {
        v23 = 2;
      }

      LODWORD(v5) = v23 + v5;
    }

    if ((v3 & 0x8000) != 0)
    {
      v5 = (v5 + 10);
    }

    else
    {
      v5 = v5;
    }
  }

LABEL_81:
  if ((v3 & 0xFF0000) != 0)
  {
    v24 = v5 + 10;
    if ((v3 & 0x10000) == 0)
    {
      v24 = v5;
    }

    v5 = (v3 & 0x20000) != 0 ? v24 + 10 : v24;
    if ((v3 & 0x40000) != 0)
    {
      v25 = *(a1 + 144);
      if (v25)
      {
        if ((*(v25 + 24) & 1) == 0)
        {
          goto LABEL_90;
        }
      }

      else
      {
        v25 = *(qword_10045DD98 + 144);
        if ((*(v25 + 24) & 1) == 0)
        {
LABEL_90:
          v26 = 0;
          v27 = (v25 + 8);
          v28 = *(v25 + 8);
          if (!v28)
          {
            goto LABEL_102;
          }

          goto LABEL_100;
        }
      }

      v29 = *(v25 + 16);
      if ((v29 & 0x80000000) != 0)
      {
        v26 = 11;
        v27 = (v25 + 8);
        v28 = *(v25 + 8);
        if (!v28)
        {
          goto LABEL_102;
        }
      }

      else if (v29 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2) + 1;
        v27 = (v25 + 8);
        v28 = *(v25 + 8);
        if (!v28)
        {
LABEL_102:
          *(v25 + 20) = v26;
          if (v26 >= 0x80)
          {
            v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2);
          }

          else
          {
            v30 = 1;
          }

          v5 = (v5 + v26 + v30 + 2);
          goto LABEL_106;
        }
      }

      else
      {
        v26 = 2;
        v27 = (v25 + 8);
        v28 = *(v25 + 8);
        if (!v28)
        {
          goto LABEL_102;
        }
      }

LABEL_100:
      if (*v28 != v28[1])
      {
        v26 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v27, a2) + v26;
      }

      goto LABEL_102;
    }
  }

LABEL_106:
  v31 = *(a1 + 8);
  if (v31 && *v31 != v31[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 152) = v5;
  return v5;
}

uint64_t sub_1000B8DA4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000B6C3C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000B8E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000B8E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B8EAC(uint64_t result, uint64_t a2)
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

uint64_t sub_1000B8F38(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();

    return sub_1000B6C3C(v4, a2);
  }

  return result;
}

uint64_t sub_1000B8FAC()
{
  v0 = qword_10045CD50;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000A9CE8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CD18;
}

void sub_1000B903C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_1000B90B4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10012DA9C(a1, a2);
  v5 = a3[1];
  v4[4] = *a3;
  v4[5] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v4[6] = 0;
  v4[7] = 0;
}

void sub_1000B90F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10031DAEC(&v11, &v9, a2);
  v6 = sub_1000BC300(a1, &v11, a3);
  v7 = v12;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7, v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = v10;
  if (v10)
  {
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8, v6);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_1000B91F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_10002BB1C(&a11);
  sub_10002BB1C(&a9);
  _Unwind_Resume(a1);
}

double sub_1000B9228@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000BC490(a1, a2);
  v7 = sub_1000BC558(a1, a2);
  v8 = __sincos_stret(1.57079633 - v7);
  result = v6 * v8.__sinval;
  *a3 = v6 * v8.__cosval;
  *(a3 + 8) = v6 * v8.__sinval;
  *(a3 + 16) = a1;
  return result;
}

void sub_1000B9294(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10031DAEC(&v10, &v8, a2);
  v6 = v9;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  *a3 = v12;
  *(a3 + 16) = a1;
  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_1000B93B4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = v5;
  v9 = v4;
  sub_10031D8EC(&v10, &v8, *a1, *(a1 + 8));
  sub_10031D900(&v10, a2);
  v6 = v11;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = v9;
  if (v9)
  {
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_1000B9500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  sub_10002BB1C(&a13);
  sub_10002BB1C(&a11);
  sub_10002BB1C(&a9);
  _Unwind_Resume(a1);
}

void sub_1000B9524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_10002BB1C(&a11);
  sub_10002BB1C(&a9);
  _Unwind_Resume(a1);
}

void sub_1000B9540(uint64_t a1)
{
  if ((*(a1 + 1913) & 0x80) == 0)
  {
    sub_1000C0E98();
  }

  sub_10012DA9C(v1, a1 + 1624);
  sub_1000B98EC();
}

void sub_1000B9820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (*(v19 - 57) < 0)
  {
    operator delete(*(v19 - 80));
  }

  sub_10002BB1C(&a9);
  nullsub_76(&a11);
  nullsub_75(&a15);
  sub_10002BB1C(&a19);
  _Unwind_Resume(a1);
}

void sub_1000B98EC()
{
  v0 = off_10043DB48;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v1[1] = 0;
  v1[2] = 0;
  v1[0] = off_10043DB08;
  v2 = 0;
  v6 = 4;
  sub_1001294D4(v1, 0.0);
  sub_1001294DC(v1, 0.0);
  sub_10012DD04(&v0, 1.0);
  v4 = 1;
  sub_1000B99D0();
}

void sub_1000B9B48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  shared_owners = v2[1].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_weak(shared_owners);
  }

  nullsub_77(va);
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void sub_1000B9B74(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1000B9BAC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100438878;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000B9C00(uint64_t a1)
{
  nullsub_77(a1 + 48);
  v2 = *(a1 + 32);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t sub_1000B9C50(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  v3 = *(a1 + 40);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v5 = a1;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    a1 = v5;
  }

  return nullsub_76(a1);
}

uint64_t sub_1000B9D38(uint64_t a1, uint64_t a2)
{

  return sub_1000E661C(a2, 0, 0);
}

void sub_1000B9D5C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1000B9DCC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1000B9EF8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1000B9F30(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004388C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000B9FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_1000BA55C();
  }

  sub_1000474A4(v6, "");
  sub_1000BBE5C("DirectionOfTravelFake depends on truth, which is not available right now. Please use another motion model instead!", &v7);
  sub_100383AA4(&v7, __p, v6);
  sub_1000BA6B0(__p);
}

void sub_1000BA0B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000BA0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }

  sub_1000474A4(v5, "");
  sub_1000BBEAC("DirectionOfTravelFake/ParticleVenueForceInit depends on truth, which is not available right now. Please use another venue model instead!", &v6);
  sub_100383AA4(&v6, __p, v5);
  sub_1000BA6B0(__p);
}

void sub_1000BA1E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000BA534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_10002BB1C(&a9);
  sub_10002BB1C(&a11);
  operator delete();
}

void sub_1000BA688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_10002BB1C(&a9);
  sub_10002BB1C(&a11);
  operator delete();
}

void sub_1000BA6B0(uint64_t a1)
{
  v22 = 0;
  buf[0] = 0;
  if (*(a1 + 23) < 0)
  {
    sub_100003228(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  sub_1000E661C(buf, &__p, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(*buf);
  }

  v1 = rand();
  if (qword_10045B050 == -1)
  {
    v2 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }
  }

  else
  {
    dispatch_once(&qword_10045B050, &stru_100438AC0);
    v2 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      if (sub_1000E6528())
      {
        if (qword_10045B050 == -1)
        {
          v3 = qword_10045B058;
          if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_22;
          }
        }

        else
        {
          dispatch_once(&qword_10045B050, &stru_100438AC0);
          v3 = qword_10045B058;
          if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_22;
          }
        }

        sub_1000E0784(0);
        v4 = v15;
        if (v16 < 0)
        {
          v4 = v15[0];
        }

        if (v22 >= 0)
        {
          v5 = buf;
        }

        else
        {
          v5 = *buf;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136381187;
        *(__p.__r_.__value_.__r.__words + 4) = v4;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v5;
        HIWORD(__p.__r_.__value_.__r.__words[2]) = 1024;
        v18 = v1;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Precondition failure: %{private}s\n %s \n trace link nonce = %d", &__p, 0x1Cu);
        if (v22 < 0)
        {
          operator delete(*buf);
        }
      }

      if (qword_10045B050 != -1)
      {
        dispatch_once(&qword_10045B050, &stru_100438AC0);
        v6 = qword_10045B058;
        if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        goto LABEL_23;
      }

LABEL_22:
      v6 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

LABEL_23:
      v7 = v16;
      v8 = v15[0];
      sub_1000E0784(0);
      v9 = v15;
      if (v7 < 0)
      {
        v9 = v8;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136380931;
      *&buf[4] = v9;
      v20 = 2080;
      v21 = p_p;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Precondition failure: %{private}s\n %s \n", buf, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_30:
      __cxa_allocate_exception(0x40uLL);
      if (v16 >= 0)
      {
        v11 = v15;
      }

      else
      {
        v11 = v15[0];
      }

      v12 = strlen(v11);
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_10000D39C();
      }

      v13 = v12;
      if (v12 < 0x17)
      {
        *(&__p.__r_.__value_.__s + 23) = v12;
        if (v12)
        {
          memmove(&__p, v11, v12);
        }

        __p.__r_.__value_.__s.__data_[v13] = 0;
        std::runtime_error::runtime_error(buf, &__p);
        *buf = &off_100438BE0;
        sub_10010A984(v14);
      }

      operator new();
    }
  }

  LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
  HIDWORD(__p.__r_.__value_.__r.__words[0]) = v1;
  _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Precondition failure. log link nonce = %d", &__p, 8u);
  goto LABEL_11;
}

void sub_1000BAAAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::runtime_error a25, int a26, __int16 a27, char a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a25);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  v30 = a1;
  if (a17 < 0)
  {
    operator delete(a12);
    v30 = a1;
  }

  _Unwind_Resume(v30);
}

void sub_1000BAB6C(std::runtime_error *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  std::runtime_error::runtime_error(&v10, a1);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
  v10.__vftable = &off_100438B98;
  v11 = off_100438BC0;
  sub_1000BB428(&v16, &v10);
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v9 = a5[1] - *a5;
  if (v9)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  sub_1000BB148();
}

void sub_1000BAE90(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    sub_10000D388(a1);
  }

  sub_10000D388(a1);
}

void sub_1000BAEB8(std::runtime_error *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);
}

uint64_t sub_1000BAF80(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  std::runtime_error::runtime_error(a1, a2)->__vftable = &off_100438BE0;
  v4 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &off_100438AF8;
  *(a1 + 16) = off_100438B30;
  *(a1 + 56) = &off_100438B68;
  return a1;
}

void sub_1000BB0B4(std::runtime_error *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);
}

void sub_1000BB3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100045790(va);
  _Unwind_Resume(a1);
}

void sub_1000BB3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_100045790(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BB428(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = &off_100438BE0;
  v5 = &v4[1];
  v6 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v7;
  *a1 = &off_100438AF8;
  *(a1 + 16) = off_100438B30;
  *(a1 + 56) = &off_100438B68;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

void sub_1000BB57C(std::runtime_error *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);
}

void sub_1000BB610(std::runtime_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(this);

  operator delete();
}

void sub_1000BB730(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1000BAF80(exception, a1);
}

void sub_1000BB78C(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_1000BB814(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  operator delete();
}

void sub_1000BB944(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1000BAF80(exception, a1 + v2);
}

void sub_1000BB9B8(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(v1);
}

void sub_1000BBA58(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(v1);

  operator delete();
}

void sub_1000BBB0C(std::runtime_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(this);

  operator delete();
}

void sub_1000BBBAC(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_1000BBC34(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  operator delete();
}

void sub_1000BBCD0(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

uint64_t sub_1000BBD08(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = &off_100438BE0;
  v5 = &v4[1];
  v6 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v7;
  *a1 = &off_100438AF8;
  *(a1 + 16) = off_100438B30;
  *(a1 + 56) = &off_100438B68;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

std::string *sub_1000BBE5C@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1000BBE90(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1000BBEAC@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1000BBEE0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000BBEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1000E661C(a3, a1, 1);
}

void sub_1000BBF24()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1000BBF94()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1000BC024@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((*(result + 1913) & 4) == 0)
  {

    sub_1000B98EC();
  }

  v3 = result;
  v4 = *(result + 1432);
  if ((~v4 & 0x180) == 0)
  {
    if (v4)
    {
      if (*(result + 1104))
      {
        if ((*(result + 1104) & 2) != 0)
        {
          v5 = *(result + 1076);
          v6 = *(result + 1304) * 0.0174532925;
          v7 = *(result + 1336) * 0.0174532925;
          v8 = __sincos_stret(*(result + 1344) * 0.0174532925 - *(result + 1312) * 0.0174532925);
          v9 = __sincos_stret(v7);
          v10 = __sincos_stret(v6);
          LODWORD(v7) = *(v3 + 1072);
          v11 = atan2(v9.__cosval * v8.__sinval, -(v10.__sinval * v9.__cosval) * v8.__cosval + v10.__cosval * v9.__sinval);
          v12 = atan2(-v5, SLODWORD(v7));
          sub_1000C0F00(v11 + v12);
        }

        sub_1000474A4(__p, "");
        sub_1000BCB9C("We need image height to get the ENU for a floorplan. Your ImageMetadata.height isn't set!", &v17);
        sub_100383AA4(&v17, v13, __p);
        sub_1000BC6D8(v13);
      }

      sub_1000474A4(&v17, "");
      sub_1000BCB4C("We need image width to get the ENU for a floorplan. Your ImageMetadata.width isn't set!", &v16);
      sub_100383AA4(&v16, __p, &v17);
      sub_1000BC6D8(__p);
    }

    sub_1000474A4(&v17, "");
    sub_1000BCAFC("We need image dimensions to get the ENU for a floorlan. Your ImageMetadata isn't set!", &v15);
    sub_100383AA4(&v15, __p, &v17);
    sub_1000BC6D8(__p);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_1000BC294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

float64x2_t sub_1000BC300@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8) * 0.0174532925;
  v20 = *(a1 + 16) * 0.0174532925;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = atan2(v6, v5) + -1.57079633;
  v8 = hypot(v5, v6) / 1852.0 * 3.14159265 / 180.0 / 60.0;
  v9 = __sincos_stret(v4);
  v10 = __sincos_stret(v8);
  v11 = cos(v7);
  v19 = asin(v11 * (v9.__cosval * v10.__sinval) + v9.__sinval * v10.__cosval);
  v12 = cos(v19);
  if (v12 == 0.0)
  {
    v13 = v20;
  }

  else
  {
    v14 = v12;
    v15 = sin(v7);
    v16 = asin(v15 * v10.__sinval / v14);
    v13 = fmod(v20 - v16 + 3.14159265, 6.28318531) + -3.14159265;
  }

  *a3 = off_10043DB28;
  v17.f64[0] = v19;
  v17.f64[1] = v13;
  *(a3 + 24) |= 3u;
  result = vmulq_f64(v17, vdupq_n_s64(0x404CA5DC1A63C1F8uLL));
  *(a3 + 8) = result;
  return result;
}

long double sub_1000BC490(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) * 0.0174532925;
  v3 = *(a2 + 8) * 0.0174532925;
  v4 = sin((*(a1 + 16) * 0.0174532925 - *(a2 + 16) * 0.0174532925) * 0.5);
  v5 = v4 * v4;
  v6 = sin((v2 - v3) * 0.5);
  v7 = v6 * v6;
  v8 = cos(v2);
  v9 = cos(v3);
  v10 = asin(sqrt(v7 + v8 * v9 * v5));
  return (v10 + v10) * 180.0 / 3.14159265 * 60.0 * 1852.0;
}

double sub_1000BC558(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) * 0.0174532925;
  v3 = *(a2 + 8) * 0.0174532925;
  v4 = __sincos_stret(*(a2 + 16) * 0.0174532925 - *(a1 + 16) * 0.0174532925);
  v5 = __sincos_stret(v3);
  v6 = __sincos_stret(v2);

  return atan2(v5.__cosval * v4.__sinval, -(v6.__sinval * v5.__cosval) * v4.__cosval + v6.__cosval * v5.__sinval);
}

long double sub_1000BC5F0(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sin((a1[1] - a2[1]) * 0.5);
  v5 = v4 * v4;
  v6 = sin((v2 - v3) * 0.5);
  v7 = v6 * v6;
  v8 = cos(v2);
  v9 = cos(v3);
  v10 = asin(sqrt(v7 + v8 * v9 * v5));
  return (v10 + v10) * 180.0 / 3.14159265 * 60.0 * 1852.0;
}

double sub_1000BC6A0(uint64_t a1, double a2)
{
  result = a2 * -0.0174532925 + 1.57079633 - *(*a1 + 80);
  if (!*(*a1 + 72))
  {
    return -result;
  }

  return result;
}

void sub_1000BC6D8(uint64_t a1)
{
  v20 = 0;
  buf[0] = 0;
  if (*(a1 + 23) < 0)
  {
    sub_100003228(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    *&__p[16] = *(a1 + 16);
  }

  sub_1000E661C(buf, __p, 1);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v20 < 0)
  {
    operator delete(*buf);
  }

  v1 = rand();
  if (qword_10045B050 == -1)
  {
    v2 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }
  }

  else
  {
    dispatch_once(&qword_10045B050, &stru_100438C18);
    v2 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      if (sub_1000E6528())
      {
        if (qword_10045B050 == -1)
        {
          v3 = qword_10045B058;
          if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_22;
          }
        }

        else
        {
          dispatch_once(&qword_10045B050, &stru_100438C18);
          v3 = qword_10045B058;
          if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_22;
          }
        }

        sub_1000E0784(0);
        v4 = v13;
        if (v14 < 0)
        {
          v4 = v13[0];
        }

        if (v20 >= 0)
        {
          v5 = buf;
        }

        else
        {
          v5 = *buf;
        }

        *__p = 136381187;
        *&__p[4] = v4;
        *&__p[12] = 2080;
        *&__p[14] = v5;
        *&__p[22] = 1024;
        v16 = v1;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Precondition failure: %{private}s\n %s \n trace link nonce = %d", __p, 0x1Cu);
        if (v20 < 0)
        {
          operator delete(*buf);
        }
      }

      if (qword_10045B050 != -1)
      {
        dispatch_once(&qword_10045B050, &stru_100438C18);
        v6 = qword_10045B058;
        if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        goto LABEL_23;
      }

LABEL_22:
      v6 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

LABEL_23:
      v7 = v14;
      v8 = v13[0];
      sub_1000E0784(0);
      v9 = v13;
      if (v7 < 0)
      {
        v9 = v8;
      }

      if (__p[23] >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = *__p;
      }

      *buf = 136380931;
      *&buf[4] = v9;
      v18 = 2080;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Precondition failure: %{private}s\n %s \n", buf, 0x16u);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

LABEL_30:
      __cxa_allocate_exception(0x40uLL);
      if (v14 >= 0)
      {
        v11 = v13;
      }

      else
      {
        v11 = v13[0];
      }

      std::logic_error::logic_error(__p, v11);
      sub_10010A984(v12);
    }
  }

  *__p = 67109120;
  *&__p[4] = v1;
  _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Precondition failure. log link nonce = %d", __p, 8u);
  goto LABEL_11;
}

void sub_1000BCA4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::invalid_argument a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a17 < 0)
  {
    v26 = a1;
    operator delete(__p);
    a1 = v26;
  }

  _Unwind_Resume(a1);
}

std::string *sub_1000BCAFC@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1000BCB30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1000BCB4C@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1000BCB80(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1000BCB9C@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1000BCBD0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000BCBEC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1000BCC5C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1000BCCCC(uint64_t result, void *a2, _DWORD *a3, int *a4)
{
  v4 = a2[1];
  *result = *a2;
  *(result + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *a4;
  *(result + 16) = *a3;
  *(result + 20) = v5;
  return result;
}

uint64_t sub_1000BCCF4(uint64_t result, void *a2, uint64_t a3, int a4)
{
  v4 = a2[1];
  *result = *a2;
  *(result + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 16) = a4 % *(a3 + 4);
  *(result + 20) = a4 / *(a3 + 4);
  return result;
}

int32x2_t sub_1000BCD3C(int32x2_t *a1, float64x2_t *a2)
{
  __asm { FMOV            V1.2D, #0.5 }

  result = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(a2[1], _Q1))));
  a1[2] = result;
  return result;
}

void sub_1000BCD68(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v6 = *a1;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10031D8EC(a2, &v6, *(a1 + 4), *(a1 + 5));
  v5 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

double sub_1000BCE34(uint64_t *a1)
{
  v2 = a1[1];
  v27 = *a1;
  v28 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10031D8EC(v29, &v27, *(a1 + 4), *(a1 + 5));
  v3 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v5 = v31;
  v4 = v32;
  v6 = v31 + -0.5;
  v7 = a1[1];
  v8 = 0.5;
  if (*(*a1 + 72))
  {
    v9 = 0.5;
  }

  else
  {
    v9 = -0.5;
  }

  if (*(*a1 + 72))
  {
    v8 = -0.5;
  }

  v10 = v32 + v8;
  v23 = *a1;
  v24 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10031D8EC(&v25, &v23, v6, v10);
  sub_10031D900(&v25, &v27);
  v11 = a1[1];
  v18 = *a1;
  v19 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10031D8EC(&v20, &v18, v5 + 1.0 + -0.5, v4 + v9);
  sub_10031D900(&v20, v22);
  sub_10031C5E0(&v33, &v27, v22);
  nullsub_75(v22);
  v12 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v19;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  nullsub_75(&v27);
  v14 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  return v33;
}

void sub_1000BD118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  nullsub_75(&a15);
  sub_10002BB1C(&a11);
  sub_10002BB1C(&a9);
  nullsub_75(&a25);
  sub_10002BB1C(&a21);
  sub_10002BB1C(&a19);
  sub_10002BB1C(v25 - 128);
  _Unwind_Resume(a1);
}

void sub_1000BD174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10002BB1C(va);
  sub_10002BB1C(v11 - 128);
  _Unwind_Resume(a1);
}

void sub_1000BD190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_1000BD1A4(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8 = *a1;
  v9 = a1[1];
  v40 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = a1 + 2;
    v10 = *(a1 + 4);
    v13 = a1 + 5;
    v12 = *(a1 + 5);
    v41 = v8;
    v42 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = a1 + 2;
    v10 = *(a1 + 4);
    v13 = a1 + 5;
    v12 = *(a1 + 5);
    v41 = *a1;
    v42 = 0;
  }

  v43 = v10 + a3;
  v44 = v12 + a2;
  v14 = sub_1000BDAC0(a4, &v41);
  v15 = v42;
  a4[1] = v14;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
    if (!a3)
    {
      goto LABEL_23;
    }
  }

  else if (!a3)
  {
    goto LABEL_23;
  }

  v16 = *a1;
  v17 = a1[1];
  v39 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *v11 - a3;
  v19 = *v13 + a2;
  v41 = v16;
  v42 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v43 = v18;
  v44 = v19;
  v20 = a4[1];
  if (v20 >= a4[2])
  {
    v21 = sub_1000BDAC0(a4, &v41);
    v22 = v42;
    a4[1] = v21;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }
  }

  else
  {
    *v20 = v16;
    *(v20 + 8) = v42;
    v41 = 0;
    v42 = 0;
    *(v20 + 16) = v18;
    *(v20 + 20) = v19;
    a4[1] = v20 + 24;
  }

  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

LABEL_23:
  if (!a2)
  {
    return;
  }

  v23 = *a1;
  v24 = a1[1];
  v38 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v25 = *v11 + a3;
  v26 = *v13 - a2;
  v41 = v23;
  v42 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v43 = v25;
  v44 = v26;
  v27 = a4[1];
  if (v27 >= a4[2])
  {
    v28 = sub_1000BDAC0(a4, &v41);
    v29 = v42;
    a4[1] = v28;
    if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }
  }

  else
  {
    *v27 = v23;
    *(v27 + 8) = v24;
    v41 = 0;
    v42 = 0;
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;
    a4[1] = v27 + 24;
  }

  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
    if (!a3)
    {
      return;
    }
  }

  else if (!a3)
  {
    return;
  }

  v30 = *a1;
  v31 = a1[1];
  v37 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v32 = *v11 - a3;
  v33 = *v13 - a2;
  v41 = v30;
  v42 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v43 = v32;
  v44 = v33;
  v34 = a4[1];
  if (v34 >= a4[2])
  {
    v35 = sub_1000BDAC0(a4, &v41);
    v36 = v42;
    a4[1] = v35;
    if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v36->__on_zero_shared)(v36);
      std::__shared_weak_count::__release_weak(v36);
    }
  }

  else
  {
    *v34 = v30;
    *(v34 + 8) = v31;
    v41 = 0;
    v42 = 0;
    *(v34 + 16) = v32;
    *(v34 + 20) = v33;
    a4[1] = v34 + 24;
  }

  if (v37)
  {
    if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v37->__on_zero_shared)(v37);
      std::__shared_weak_count::__release_weak(v37);
    }
  }
}

void sub_1000BD61C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_10002BB1C(va1);
  sub_10002BB1C(va);
  sub_1000BD6AC(v2);
  _Unwind_Resume(a1);
}

void sub_1000BD640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_10002BB1C(va1);
  sub_10002BB1C(va);
  sub_1000BD6AC(v4);
  _Unwind_Resume(a1);
}

void sub_1000BD664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_10002BB1C(va1);
  sub_10002BB1C(va);
  sub_1000BD6AC(v6);
  _Unwind_Resume(a1);
}

void sub_1000BD688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_10002BB1C(va1);
  sub_10002BB1C(va);
  sub_1000BD6AC(v8);
  _Unwind_Resume(a1);
}

void **sub_1000BD6AC(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 2);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 24;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1000BD760(uint64_t *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2 >= 1)
  {
    for (i = 0; i != a2; ++i)
    {
      sub_1000BD1A4(a1, i, a2, &__p);
      sub_1000BDD0C(a3, a3[1], __p, v21, 0xAAAAAAAAAAAAAAABLL * ((v21 - __p) >> 3));
      v8 = __p;
      if (__p)
      {
        v9 = v21;
        v7 = __p;
        if (v21 != __p)
        {
          do
          {
            v10 = *(v9 - 2);
            if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v10->__on_zero_shared)(v10);
              std::__shared_weak_count::__release_weak(v10);
            }

            v9 -= 24;
          }

          while (v9 != v8);
          v7 = __p;
        }

        v21 = v8;
        operator delete(v7);
      }
    }

    v11 = 0;
    do
    {
      sub_1000BD1A4(a1, a2, v11, &__p);
      sub_1000BDD0C(a3, a3[1], __p, v21, 0xAAAAAAAAAAAAAAABLL * ((v21 - __p) >> 3));
      v13 = __p;
      if (__p)
      {
        v14 = v21;
        v12 = __p;
        if (v21 != __p)
        {
          do
          {
            v15 = *(v14 - 2);
            if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v15->__on_zero_shared)(v15);
              std::__shared_weak_count::__release_weak(v15);
            }

            v14 -= 24;
          }

          while (v14 != v13);
          v12 = __p;
        }

        v21 = v13;
        operator delete(v12);
      }

      ++v11;
    }

    while (v11 != a2);
  }

  sub_1000BD1A4(a1, a2, a2, &__p);
  sub_1000BDD0C(a3, a3[1], __p, v21, 0xAAAAAAAAAAAAAAABLL * ((v21 - __p) >> 3));
  v16 = __p;
  if (__p)
  {
    v17 = v21;
    v18 = __p;
    if (v21 != __p)
    {
      do
      {
        v19 = *(v17 - 2);
        if (v19)
        {
          if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v19->__on_zero_shared)(v19);
            std::__shared_weak_count::__release_weak(v19);
          }
        }

        v17 -= 24;
      }

      while (v17 != v16);
      v18 = __p;
    }

    v21 = v16;
    operator delete(v18);
  }
}

void sub_1000BDA10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000BD6AC(va);
  sub_1000BD6AC(v2);
  _Unwind_Resume(a1);
}

std::string *sub_1000BDA70@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1000BDAA4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000BDAC0(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_10000FC84();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_10000D444();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v6 + 16) = *(a2 + 16);
  v7 = 24 * v2 + 24;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      *v12 = *v11;
      *v11 = 0;
      v11[1] = 0;
      *(v12 + 16) = v11[2];
      v11 += 3;
      v12 += 24;
    }

    while (v11 != v9);
    do
    {
      v13 = v8[1];
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v8 += 3;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

uint64_t sub_1000BDC64(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    v4 = *(i - 16);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1000BDD0C(uint64_t *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a3;
  v8 = a1[1];
  v7 = a1[2];
  if ((0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3)) < a5)
  {
    v9 = *a1;
    v10 = a5 - 0x5555555555555555 * ((v8 - *a1) >> 3);
    if (v10 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10000FC84();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v9) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    v59 = a1;
    if (v12)
    {
      if (v12 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_10000D444();
    }

    v29 = (8 * ((a2 - v9) >> 3));
    __p = 0;
    v56 = v29;
    v58 = 0;
    v30 = &v29[3 * a5];
    do
    {
      v31 = v6[1];
      *v29 = *v6;
      v29[1] = v31;
      if (v31)
      {
        atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
      }

      v29[2] = v6[2];
      v29 += 3;
      v6 += 3;
    }

    while (v29 != v30);
    v57 = v30;
    v5 = sub_1000BE288(a1, &__p, a2);
    v33 = v56;
    for (i = v57; v57 != v33; i = v57)
    {
      v57 = i - 3;
      v34 = *(i - 2);
      if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v34->__on_zero_shared)(v34);
        std::__shared_weak_count::__release_weak(v34);
      }
    }

    if (__p)
    {
      operator delete(__p);
    }

    return v5;
  }

  v13 = v8 - a2;
  if ((0xAAAAAAAAAAAAAAABLL * ((v8 - a2) >> 3)) < a5)
  {
    v14 = (a3 + v13);
    if ((a3 + v13) == a4)
    {
      v15 = a1[1];
      v16 = v15;
    }

    else
    {
      v15 = a1[1];
      v41 = (a3 + v13);
      v16 = v15;
      do
      {
        v42 = v41[1];
        *v16 = *v41;
        v16[1] = v42;
        if (v42)
        {
          atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
        }

        v16[2] = v41[2];
        v41 += 3;
        v16 += 3;
        v15 += 3;
      }

      while (v41 != a4);
    }

    a1[1] = v15;
    if (v13 >= 1)
    {
      v17 = (a2 + 24 * a5);
      v18 = &v15[-3 * a5];
      for (j = v15; v18 < v8; j += 24)
      {
        *j = *v18;
        *v18 = 0;
        v18[1] = 0;
        *(j + 16) = v18[2];
        v18 += 3;
      }

      a1[1] = j;
      if (v16 != v17)
      {
        v20 = 0;
        v21 = -3 * a5;
        do
        {
          v22 = &v15[v21];
          v23 = *&v15[v21 - 3];
          *(v22 - 3) = 0;
          *(v22 - 2) = 0;
          v24 = v15[v20 - 2];
          *&v15[v20 - 3] = v23;
          if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v24->__on_zero_shared)(v24);
            std::__shared_weak_count::__release_weak(v24);
          }

          v15[v20 - 1] = *(v22 - 1);
          v20 -= 3;
          v21 -= 3;
          v17 += 3;
        }

        while (v15 != v17);
      }

      v36 = 0;
      do
      {
        v38 = *v6;
        v37 = v6[1];
        if (v37)
        {
          atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
        }

        v39 = (v36 + v5);
        v40 = *(v36 + v5 + 8);
        *v39 = v38;
        v39[1] = v37;
        if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v40->__on_zero_shared)(v40);
          std::__shared_weak_count::__release_weak(v40);
        }

        v39[2] = v6[2];
        v6 += 3;
        v36 += 24;
      }

      while (v6 != v14);
    }

    return v5;
  }

  v25 = a2 + 24 * a5;
  v26 = v8 - 24 * a5;
  if (v26 >= v8)
  {
    a1[1] = v8;
    if (v8 == v25)
    {
      goto LABEL_59;
    }

LABEL_54:
    v43 = 0;
    v44 = a2 + 24 * a5 - v8;
    do
    {
      v45 = v26 + v43;
      v46 = *(v26 + v43 - 24);
      *(v45 - 24) = 0;
      *(v45 - 16) = 0;
      v47 = *(v8 + v43 - 16);
      *(v8 + v43 - 24) = v46;
      if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v47->__on_zero_shared)(v47);
        std::__shared_weak_count::__release_weak(v47);
      }

      *(v8 + v43 - 8) = *(v45 - 8);
      v43 -= 24;
    }

    while (v44 != v43);
    goto LABEL_59;
  }

  v27 = v8 - 24 * a5;
  v28 = a1[1];
  do
  {
    *v28 = *v27;
    *v27 = 0;
    *(v27 + 8) = 0;
    *(v28 + 16) = *(v27 + 16);
    v27 += 24;
    v28 += 24;
  }

  while (v27 < v8);
  a1[1] = v28;
  if (v8 != v25)
  {
    goto LABEL_54;
  }

LABEL_59:
  v48 = 0;
  v49 = &v6[3 * a5];
  do
  {
    v51 = *v6;
    v50 = v6[1];
    if (v50)
    {
      atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
    }

    v52 = (v48 + v5);
    v53 = *(v48 + v5 + 8);
    *v52 = v51;
    v52[1] = v50;
    if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v53->__on_zero_shared)(v53);
      std::__shared_weak_count::__release_weak(v53);
    }

    v52[2] = v6[2];
    v6 += 3;
    v48 += 24;
  }

  while (v6 != v49);
  return v5;
}

void sub_1000BE274(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000BDC64(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BE288(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = a1[1];
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      *v8 = *v9;
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v8 + 16) = *(v9 + 16);
      v9 += 24;
      v8 += 24;
    }

    while (v9 != v7);
    v10 = a3;
    do
    {
      v11 = *(v10 + 8);
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      v10 += 24;
    }

    while (v10 != v7);
  }

  v12 = *a1;
  v13 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v14 = v13 + v12 - a3;
  if (v12 != a3)
  {
    v15 = v12;
    v16 = v13 + v12 - a3;
    do
    {
      *v16 = *v15;
      *v15 = 0;
      *(v15 + 8) = 0;
      *(v16 + 16) = *(v15 + 16);
      v15 += 24;
      v16 += 24;
    }

    while (v15 != a3);
    do
    {
      v17 = *(v12 + 8);
      if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
      }

      v12 += 24;
    }

    while (v12 != a3);
  }

  a2[1] = v14;
  v18 = *a1;
  *a1 = v14;
  a1[1] = v18;
  a2[1] = v18;
  v19 = a1[1];
  a1[1] = a2[2];
  a2[2] = v19;
  v20 = a1[2];
  a1[2] = a2[3];
  a2[3] = v20;
  *a2 = a2[1];
  return v6;
}

void sub_1000BE44C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1000BE4BC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1000BE52C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100251AB4(a3, __p);
  v10 = *a2;
  v11 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  *a1 = off_100438CA0;
  sub_10014C1B4((a1 + 8), __p);
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  sub_10014C254(__p);
  *a1 = off_100438C48;
  sub_100250BA8(a3, __p);
  sub_100259EAC(a1 + 72, __p, 0.25);
  v12.n128_u64[0] = 0.25;
  sub_100250B20(a3, a1 + 120, v12);
  sub_100253968();
  *(a1 + 184) = v13;
  *(a1 + 192) = v14;
  *(a1 + 200) = *a5;
  v15 = a5[1];
  *(a1 + 208) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 224) = a4;
  *(a1 + 232) = sub_100251868(a3);
  *(a1 + 240) = sub_100251894(a3);
  *(a1 + 248) = sub_1002518D0(a3);
  if (!a4)
  {
    sub_100014A08(v18, "");
    sub_1000BBE5C("DirectionOfTravelFake depends on truth, which is not available right now. Please use another motion model instead!", __p);
    sub_1000E661C(v18, __p, 1);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    sub_1000BA6B0(&v17);
  }

  *(a1 + 216) = sqrt(sub_100251838(a3, 0.25));
  return a1;
}

void sub_1000BE72C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_10002BB1C(v25);
    sub_1000BE7D4(v24);
    _Unwind_Resume(a1);
  }

  sub_10002BB1C(v25);
  sub_1000BE7D4(v24);
  _Unwind_Resume(a1);
}

void *sub_1000BE7D4(void *a1)
{
  *a1 = off_100438CA0;
  v1 = a1[8];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  v3 = a1;
  sub_10014C254((a1 + 1));
  return v3;
}

uint64_t sub_1000BE870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100259ED8(a1 + 72, *(a1 + 56), *(a2 + 40));
  *(a2 + 40) = v8;

  return sub_1000BE8D8(a1, a2, a3, a4);
}

uint64_t sub_1000BE8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = a1 + 56;
  v11 = *(a1 + 56);
  if (*(a3 + 4) != 2)
  {
    *(a2 + 32) = hypot(0.001, *(a1 + 248) * 0.25) + *(a2 + 32);
    *(a2 + 32) = (*(*v11 + 64))(v11, 0.0) + *(a2 + 32);
  }

  if (*(a3 + 16) / *(a1 + 240) == (*(a3 + 16) - 250000000) / *(a1 + 240))
  {
    v12 = *(a1 + 224);
    v30 = *(a3 + 16);
    sub_100235F40(v12, &v30);
    v14 = v13;
    v15 = *(a1 + 224);
    v30 = (*(a3 + 16) - 250000000);
    sub_100235F40(v15, &v30);
    sub_10031C1E8(v14 - v16);
    v18 = *(a2 + 32) + v17 * *(a1 + 232);
  }

  else
  {
    v18 = *(a2 + 32) + dbl_1003CDCE0[(*(*v11 + 80))(v11, 2) == 0];
  }

  *(a2 + 32) = v18;
  v19 = *(a3 + 4);
  if (v19 == 3)
  {
    v21 = (*(*v11 + 48))(v11);
    v24 = sub_1002C4F5C(a1 + 120);
    v22 = (*(*v11 + 64))(v11, 0.0, v24);
  }

  else if (v19 == 2)
  {
    v21 = (*(*v11 + 48))(v11);
    v23 = sub_1002C4F5C(a1 + 120);
    (*(*v11 + 24))(v11, 0.0, v23 * 0.5);
  }

  else
  {
    v20 = 0.0;
    v21 = 0.0;
    if (v19 != 1)
    {
      goto LABEL_13;
    }

    v21 = (*(*v11 + 64))(v11, 0.0, *(a1 + 216)) + *(a2 + 32);
    *(a2 + 32) = v21;
    v22 = sub_10025399C((a1 + 184), v11, *(a3 + 8));
  }

  v20 = v22;
LABEL_13:
  v25 = __sincos_stret(v21);
  v26 = *(a3 + 16);
  v30 = 0;
  v31 = 0;
  result = sub_1001E8DB8(a2, v9 + v25.__cosval * v20, v8 + v25.__sinval * v20, v26, a4, v10, a1 + 8, &v30);
  v28 = v31;
  if (v31)
  {
    if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v29 = result;
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
      return v29;
    }
  }

  return result;
}

void *sub_1000BEC50(void *a1)
{
  *a1 = off_100438C48;
  v2 = a1[26];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *a1 = off_100438CA0;
  v3 = a1[8];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    sub_10014C254((a1 + 1));
    return a1;
  }

  else
  {
    sub_10014C254((a1 + 1));
    return a1;
  }
}

void sub_1000BED5C(void *a1)
{
  *a1 = off_100438C48;
  v2 = a1[26];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *a1 = off_100438CA0;
  v3 = a1[8];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_10014C254((a1 + 1));

  operator delete();
}

void sub_1000BEE74()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1000BEEE4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1000BEF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint8_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (qword_10045B050 != -1)
  {
    sub_100383AEC();
  }

  v12 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a3 + 19);
    *buf = 134217984;
    v38 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "indoorPose.sigmaDist: %f", buf, 0xCu);
    if (qword_10045B050 != -1)
    {
      sub_100383B00();
    }
  }

  v14 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a2 + 152);
    *buf = 134217984;
    v38 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "gpsPose.sigmaDist: %f", buf, 0xCu);
    if (qword_10045B050 != -1)
    {
      sub_100383B00();
    }
  }

  v16 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a3 + 35);
    *buf = 134217984;
    v38 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "indoorPose.horizontalAccuracy: %f", buf, 0xCu);
    if (qword_10045B050 != -1)
    {
      sub_100383B00();
    }
  }

  v18 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a2 + 280);
    *buf = 134217984;
    v38 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "gpsPose.horizontalAccuracy: %f", buf, 0xCu);
  }

  if (*(a3 + 131))
  {
    if (qword_10045B050 != -1)
    {
      sub_100383B00();
    }

    v20 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "WARNING: GPS Indoor fusion requested but yieldSource is not Indoor, skip fusion", buf, 2u);
    }

    return sub_100126300(a6, a3);
  }

  v22 = *(a2 + 240);
  v23 = sub_100251314(a5);
  if ((a4 - v22) / 1000000000.0 >= v23)
  {
    if (qword_10045B050 != -1)
    {
      sub_100383B00();
    }

    v27 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v38 = (a4 - v22) / 1000000000.0;
      v39 = 2048;
      v40 = v23;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Choosing indoor as gps has age %f(s) exceeding its lifespan %f(s)", buf, 0x16u);
    }

    return sub_100126300(a6, a3);
  }

  v24 = (*(*a1 + 56))(a1);
  if (v24)
  {
    sub_10012D378(v36, (a3 + 8));
    v25 = sub_10033CDF4(v24, v36, 1, 1, 1, 0.0);
    nullsub_75(v36);
    if (v25 < 0.0)
    {
      if (qword_10045B050 != -1)
      {
        sub_100383B00();
      }

      v26 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Choosing indoor as it is in surveyed area", buf, 2u);
      }

      return sub_100126300(a6, a3);
    }
  }

  v28 = (*(*a1 + 16))(a1);
  v29 = v28;
  if (v28 && (!sub_1002D1CD0(v28, (a3 + 8)) || (sub_1002D1CD0(v29, a2 + 8) & 1) == 0))
  {
    if (qword_10045B050 != -1)
    {
      sub_100383B00();
    }

    v33 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Choosing indoor as not both fixes are outside this building", buf, 2u);
    }

    return sub_100126300(a6, a3);
  }

  sub_100126300(buf, a3);
  v30 = *(a3 + 19) / *(a2 + 152);
  if (v30 > 1.5)
  {
    sub_100123508(buf, a2 + 8);
    sub_100123550(buf, *(a2 + 152));
    sub_1001235BC(buf, *(a2 + 280));
    sub_100123670(buf, 2);
    if (qword_10045B050 != -1)
    {
      sub_100383B00();
    }

    v31 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      goto LABEL_56;
    }

    *v35 = 0;
    v32 = "Choosing gps as gps is more confident";
    goto LABEL_55;
  }

  if (v30 < 0.625)
  {
    if (qword_10045B050 != -1)
    {
      sub_100383B00();
    }

    v34 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Choosing indoor as indoor is more confident", v35, 2u);
    }

    goto LABEL_57;
  }

  sub_1000BF5B0(a2, a3, buf);
  sub_100123670(buf, 2);
  if (qword_10045B050 != -1)
  {
    sub_100383B00();
  }

  v31 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    *v35 = 0;
    v32 = "Aggregating gps and indoor";
LABEL_55:
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, v32, v35, 2u);
  }

LABEL_56:
  a3 = buf;
LABEL_57:
  sub_100126300(a6, a3);
  return sub_1001234CC(buf);
}

void sub_1000BF584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  nullsub_75(va);
  _Unwind_Resume(a1);
}

void sub_1000BF598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1001234CC(va);
  _Unwind_Resume(a1);
}

float64_t sub_1000BF5B0(float64x2_t *a1, float64x2_t *a2, uint64_t a3)
{
  v12 = off_10043DB08;
  v14 = 0;
  __asm { FMOV            V2.2D, #0.5 }

  v13 = vmlaq_f64(vmulq_f64(a2[1], _Q2), _Q2, a1[1]);
  sub_10012A358(a3 + 8, &v12);
  nullsub_75(&v12);
  result = a2[9].f64[1] * 0.5 + a1[9].f64[1] * 0.5;
  *(a3 + 152) = result;
  return result;
}

int64x2_t sub_1000BF664@<Q0>(uint64_t a1@<X8>)
{
  *a1 = off_10043D898;
  *(a1 + 8) = off_10043DB08;
  *(a1 + 16) = 0u;
  *(a1 + 32) &= 0xFCu;
  *(a1 + 40) = off_10043DB28;
  *(a1 + 48) = 0u;
  *(a1 + 64) &= 0xFCu;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 136) = 0u;
  v2 = a1 + 136;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(a1 + 300) = 0;
  *(a1 + 304) = off_10043D858;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 448) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 456) &= 0xC0u;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0;
  *(a1 + 528) = off_10043DB28;
  *(a1 + 536) = 0u;
  *(a1 + 552) &= 0xFCu;
  *(a1 + 560) = 0;
  *(a1 + 568) = off_10043D878;
  *(a1 + 576) = 0u;
  *(a1 + 592) &= 0xF8u;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0;
  *(a1 + 700) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = *(a1 + 752) & 0xF000000000000000 | 0x10000000;
  *(a1 + 296) = 4;
  v3 = sub_100118234(&qword_10045DF78);
  std::string::operator=((a1 + 104), v3);
  v4 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 152) = 0x7FF8000000000000;
  *(a1 + 16) = v4;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 48) = v4;
  sub_100122404(a1, NAN);
  sub_100123518(a1, NAN);
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 200) = result;
  *(a1 + 216) = result;
  *(a1 + 232) = 0x7FF8000000000000;
  return result;
}

double sub_1000BF8B8(uint64_t a1, double a2)
{
  result = *(a1 + 24) + *(a1 + 16) * a2;
  v3 = *(a1 + 52);
  if (result >= *(a1 + 32) && (*(a1 + 52) & 4) != 0)
  {
    result = *(a1 + 32);
  }

  if (*(a1 + 40) >= result && (*(a1 + 52) & 8) != 0)
  {
    return *(a1 + 40);
  }

  return result;
}

void sub_1000BF8EC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v3 = **(a1 + 40);
  v4 = *(*(a1 + 40) + 8);
  if (v4 != v3)
  {
    v6 = 0;
    do
    {
      if (v6 >= (v4 - v3) >> 4)
      {
        sub_1000BFF58();
      }

      v7 = *(v3 + 16 * v6);
      v12 = *(v3 + 16 * v6);
      v8 = *(v3 + 16 * v6 + 8);
      if (*(&v7 + 1))
      {
        atomic_fetch_add_explicit((*(&v7 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v9 = v14[0];
      if (!v14[0])
      {
LABEL_13:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v10 = v9;
          v11 = v9[4];
          if (v12 >= v11)
          {
            break;
          }

          v9 = *v10;
          if (!*v10)
          {
            goto LABEL_13;
          }
        }

        if (v11 >= v12)
        {
          break;
        }

        v9 = v10[1];
        if (!v9)
        {
          goto LABEL_13;
        }
      }

      if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }

      ++v6;
      v3 = **(a1 + 40);
      v4 = *(*(a1 + 40) + 8);
    }

    while (v6 < (v4 - v3) >> 4);
  }

  sub_1000BFB10(a2, &v13);
  sub_1000BFF70(&v13, v14[0]);
}

void sub_1000BFAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, void *a17)
{
  sub_10002BB1C(&a13);
  sub_1000BFF70(&a16, a17);
  _Unwind_Resume(a1);
}

void *sub_1000BFB10(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  if (*a2 != a2 + 8)
  {
    v2 = (*(**(*a2 + 32) + 56))(*(*a2 + 32));
    sub_10011B8B8(v3, v2);
    sub_1000B9540(v3);
  }

  return result;
}

void sub_1000BFD54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10011B04C(&a9);
  sub_10002BB1C(v9);
  _Unwind_Resume(a1);
}

void sub_1000BFD80(_Unwind_Exception *a1)
{
  nullsub_76(v2 - 112);
  sub_10002BB1C(v1);
  _Unwind_Resume(a1);
}

void sub_1000BFDB0(void *a1@<X0>, void *a2@<X8>)
{
  v3[0] = 0;
  v3[1] = 0;
  v2 = v3;
  if (*a1 != a1[1])
  {
    operator new();
  }

  sub_1000BFB10(a2, &v2);
  sub_1000BFF70(&v2, v3[0]);
}

void sub_1000BFF70(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000BFF70(a1, *a2);
    sub_1000BFF70(a1, a2[1]);
    v4 = a2[5];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    operator delete(v5);
  }
}

void sub_1000C002C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1000C009C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1000C0190(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1000C01C8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100438D10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000C02C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_1000C0538();
  }

  sub_1000474A4(v6, "");
  sub_1000C0694("MultiphonePdrForceInit depends on truth, which is not available right now. Please use another motion model instead!", &v7);
  sub_100383AA4(&v7, __p, v6);
  sub_1000BA6B0(__p);
}

void sub_1000C03AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C03F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }

  sub_1000474A4(v5, "");
  sub_1000BBEAC("DirectionOfTravelFake/ParticleVenueForceInit depends on truth, which is not available right now. Please use another venue model instead!", &v6);
  sub_100383AA4(&v6, __p, v5);
  sub_1000BA6B0(__p);
}

void sub_1000C04DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C066C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_10002BB1C(&a9);
  sub_10002BB1C(&a11);
  operator delete();
}

std::string *sub_1000C0694@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1000C06C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000C06E4(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v9 = a2[1];
  v16 = *a2;
  v17 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a6[1];
  v14 = *a6;
  v15 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1002002B0(a1, &v16, a3, 0, &v14);
  v11 = v15;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  *a1 = off_100438DE0;
  a1[30] = a4;
  a1[31] = a5;
  return a1;
}

void sub_1000C0814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_10002BB1C(&a9);
  sub_10002BB1C(&a11);
  _Unwind_Resume(a1);
}

void *sub_1000C0830(void *a1)
{
  *a1 = off_100442D90;
  v2 = a1[29];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *a1 = off_100438CA0;
  v3 = a1[8];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    sub_10014C254((a1 + 1));
    return a1;
  }

  else
  {
    sub_10014C254((a1 + 1));
    return a1;
  }
}

void sub_1000C093C(void *a1)
{
  *a1 = off_100442D90;
  v2 = a1[29];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *a1 = off_100438CA0;
  v3 = a1[8];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_10014C254((a1 + 1));

  operator delete();
}

uint64_t sub_1000C0A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *(a3 + 16);
  if (v12 < **(sub_100118234(*(a1 + 240)) + 56) + 1000000000)
  {
    sub_100235F6C(*(a1 + 240));
    *(a2 + 16) = v11;
    sub_100235F40(*(a1 + 240), &v12);
    *(a2 + 32) = v8;
    sub_100235F94(*(a1 + 240), v12, v10);
  }

  sub_10021715C(a2, 20.0);
  return sub_100200558(a1, a2, a3, a4);
}

void sub_1000C0C94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  va_copy(va3, va2);
  v9 = va_arg(va3, void);
  v11 = va_arg(va3, void);
  v12 = va_arg(va3, void);
  v13 = va_arg(va3, void);
  sub_10002BB1C(va);
  sub_10002BB1C(va1);
  sub_1000C0CF0(va2);
  nullsub_75(va3);
  _Unwind_Resume(a1);
}

void sub_1000C0CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  nullsub_75(va);
  _Unwind_Resume(a1);
}

void sub_1000C0CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  nullsub_75(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C0CF0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = *(result + 8);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_1000C0DB8()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1000C0E28()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1000C0F00(double a1)
{
  v10[1] = 0;
  v10[2] = 0;
  v10[0] = off_10043DB08;
  v11 = 0;
  sub_1001294D4(v10, 0.0);
  sub_1001294DC(v10, 0.0);
  v2.n128_u64[0] = off_10043DB48;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v3 = 0;
  v4 = 0;
  v2.n128_u64[1] = off_10043DB08;
  v5 = 0;
  v9 = 4;
  sub_10012DCF0(&v2, v10);
  sub_10012DD04(&v2, 1.0);
  sub_10012DD0C(&v2, 1);
  sub_10012DD14(&v2, a1 + -1.57079633);
  sub_1000B99D0();
}

void sub_1000C1030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  nullsub_77(&a9);
  nullsub_75(&a18);
  _Unwind_Resume(a1);
}

double sub_1000C1064(double *a1)
{
  sub_1000C11D8(a1, &v8);
  sub_10031D900(&v8, v10);
  sub_1000C12A0(a1, &v5);
  sub_10031D900(&v5, v7);
  sub_10031C5E0(&v11, v10, v7);
  nullsub_75(v7);
  v2 = v6;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  nullsub_75(v10);
  v3 = v9;
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v11;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return v11;
}

void sub_1000C1188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  nullsub_75(&a13);
  sub_10002BB1C(&a9);
  nullsub_75(v17 - 80);
  sub_10002BB1C(&a17);
  _Unwind_Resume(a1);
}

void sub_1000C11C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_1000C11D8(double *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 1);
  v7 = v5;
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4)) == 0)
  {
    sub_1000C234C();
  }

  sub_10031D8EC(a2, &v7, a1[12], a1[15]);
  v6 = v8;
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void sub_1000C12A0(double *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 1);
  v7 = v5;
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4)) == 0)
  {
    sub_1000C234C();
  }

  sub_10031D8EC(a2, &v7, a1[13], a1[14]);
  v6 = v8;
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

double sub_1000C1364(double *a1)
{
  if (a1[8] <= 0.0)
  {
    sub_100383B28(__p, v6);
    sub_10003F5D0(__p);
  }

  v2 = sub_1000C1064(a1);
  result = vabdd_f64(llround((v3 - v2) / a1[8]), (v3 - v2) / a1[8]);
  if (result >= 0.001)
  {
    sub_100383B28(__p, v6);
    sub_10003F5D0(__p);
  }

  return result;
}

void sub_1000C1430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1000C1450(double *a1)
{
  sub_1000C1064(a1);
  result = vabdd_f64(llround((v2 - v3) / a1[8]), (v2 - v3) / a1[8]);
  if (result >= 0.001)
  {
    sub_100383B28(__p, &v6);
    sub_10003F5D0(__p);
  }

  return result;
}

void sub_1000C14E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C1500(double *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 1);
  v7 = v5;
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4)) == 0)
  {
    sub_1000C234C();
  }

  sub_10031D8EC(a2, &v7, a1[12], a1[14]);
  v6 = v8;
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

std::string *sub_1000C15C8@<X0>(std::string *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v5 = result->__r_.__value_.__r.__words[0];
  size = result->__r_.__value_.__l.__size_;
  v6 = size - result->__r_.__value_.__r.__words[0];
  if (size == result->__r_.__value_.__r.__words[0])
  {
    if (result[3].__r_.__value_.__s.__data_[15] < 0)
    {
      v29 = result[2].__r_.__value_.__r.__words[2];
      v30 = result[3].__r_.__value_.__r.__words[0];

      return sub_100003228(a2, v29, v30);
    }

    else
    {
      *a2 = *&result[2].__r_.__value_.__r.__words[2];
      *(a2 + 16) = result[3].__r_.__value_.__l.__size_;
    }

    return result;
  }

  v7 = SHIDWORD(result[2].__r_.__value_.__r.__words[0]);
  v8 = SLODWORD(result[2].__r_.__value_.__r.__words[1]);
  if (v7 < v8 && (result[3].__r_.__value_.__s.__data_[16] & 2) != 0)
  {
    v31[0] = &off_100439318;
    v31[1] = v7;
    v31[2] = v8;
    sub_1000C71A0(v31);
  }

  v9 = 0xEEEEEEEEEEEEEEEFLL * (v6 >> 3);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v10 = result[3].__r_.__value_.__s.__data_[15];
  if ((v10 & 0x8000000000000000) != 0)
  {
    v10 = result[3].__r_.__value_.__r.__words[0];
  }

  if (v9 <= 1)
  {
    v9 = 1;
  }

  v11 = (v5 + 56);
  do
  {
    while (1)
    {
      v13 = *(v11 - 25);
      if (v13 < 0)
      {
        v14 = *(v11 - 5) + v10;
        if (*(v11 - 14) != -2)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v14 = v13 + v10;
        if (*(v11 - 14) != -2)
        {
          goto LABEL_9;
        }
      }

      if (v14 <= *v11)
      {
        v14 = *v11;
      }

LABEL_9:
      v12 = *(v11 - 1);
      if (v12 < 0)
      {
        break;
      }

      v10 = v12 + v14;
      v11 += 15;
      if (!--v9)
      {
        goto LABEL_20;
      }
    }

    v10 = *(v11 - 2) + v14;
    v11 += 15;
    --v9;
  }

  while (v9);
LABEL_20:
  std::string::reserve(a2, v10);
  v15 = v2[3].__r_.__value_.__s.__data_[15];
  if (v15 >= 0)
  {
    v16 = &v2[2].__r_.__value_.__s.__data_[16];
  }

  else
  {
    v16 = v2[2].__r_.__value_.__r.__words[2];
  }

  if (v15 >= 0)
  {
    v17 = v2[3].__r_.__value_.__s.__data_[15];
  }

  else
  {
    v17 = v2[3].__r_.__value_.__r.__words[0];
  }

  result = std::string::append(a2, v16, v17);
  v18 = v2->__r_.__value_.__r.__words[0];
  if (v2->__r_.__value_.__l.__size_ != v2->__r_.__value_.__r.__words[0])
  {
    v19 = 0;
    v20 = 40;
    while (1)
    {
      v21 = *(v18 + v20 - 9);
      if (v21 >= 0)
      {
        v22 = (v18 + v20 - 32);
      }

      else
      {
        v22 = *(v18 + v20 - 32);
      }

      if (v21 >= 0)
      {
        v23 = *(v18 + v20 - 9);
      }

      else
      {
        v23 = *(v18 + v20 - 24);
      }

      std::string::append(a2, v22, v23);
      if (*(v18 + v20 - 40) != -2)
      {
        goto LABEL_40;
      }

      v24 = *(v18 + v20 + 16);
      v25 = *(a2 + 23);
      if ((v25 & 0x8000000000000000) == 0)
      {
        break;
      }

      v25 = *(a2 + 8);
      if (v24 > v25)
      {
        goto LABEL_39;
      }

LABEL_40:
      v26 = *(v18 + v20 + 15);
      if (v26 >= 0)
      {
        v27 = (v18 + v20 - 8);
      }

      else
      {
        v27 = *(v18 + v20 - 8);
      }

      if (v26 >= 0)
      {
        v28 = *(v18 + v20 + 15);
      }

      else
      {
        v28 = *(v18 + v20);
      }

      result = std::string::append(a2, v27, v28);
      ++v19;
      v18 = v2->__r_.__value_.__r.__words[0];
      v20 += 120;
      if (v19 >= 0xEEEEEEEEEEEEEEEFLL * ((v2->__r_.__value_.__l.__size_ - v2->__r_.__value_.__r.__words[0]) >> 3))
      {
        goto LABEL_47;
      }
    }

    if (v24 <= v25)
    {
      goto LABEL_40;
    }

LABEL_39:
    std::string::append(a2, v24 - v25, *(v18 + v20 + 32));
    goto LABEL_40;
  }

LABEL_47:
  v2[2].__r_.__value_.__s.__data_[12] = 1;
  return result;
}

void sub_1000C1874(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000C1894(uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    std::locale::~locale((a1 + 192));
    *(a1 + 184) = 0;
  }

  *(a1 + 96) = off_100438E28;
  if (*(a1 + 168) == 1)
  {
    operator delete(*(a1 + 112));
  }

  *(a1 + 153) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  std::locale::~locale((a1 + 104));
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = *(a1 + 8);
    v5 = *a1;
    if (v4 == v3)
    {
LABEL_21:
      *(a1 + 8) = v3;
      operator delete(v5);
      return a1;
    }

    while (1)
    {
      if (LOBYTE(v4[-4].__locale_) == 1)
      {
        std::locale::~locale(v4 - 3);
        LOBYTE(v4[-4].__locale_) = 0;
        if ((SHIBYTE(v4[-9].__locale_) & 0x80000000) == 0)
        {
LABEL_15:
          if (SHIBYTE(v4[-12].__locale_) < 0)
          {
            goto LABEL_19;
          }

          goto LABEL_12;
        }
      }

      else if ((SHIBYTE(v4[-9].__locale_) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      operator delete(v4[-11].__locale_);
      if (SHIBYTE(v4[-12].__locale_) < 0)
      {
LABEL_19:
        operator delete(v4[-14].__locale_);
      }

LABEL_12:
      v4 -= 15;
      if (v4 == v3)
      {
        v5 = *a1;
        goto LABEL_21;
      }
    }
  }

  return a1;
}

uint64_t sub_1000C19E4(uint64_t a1)
{
  *a1 = off_100438E28;
  if (*(a1 + 72) == 1)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 57) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_1000C1A6C(uint64_t a1)
{
  *a1 = off_100438E28;
  if (*(a1 + 72) == 1)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 57) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  std::locale::~locale((a1 + 8));

  operator delete();
}

double sub_1000C1B14@<D0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a1[6];
  if (v5 && a1[8] < v5)
  {
    a1[8] = v5;
  }

  if ((a4 & 8) != 0)
  {
    v6 = a1[3];
    if (v6)
    {
      if (a3 == 2)
      {
        v7 = 8;
      }

      else
      {
        if (a3 == 1)
        {
          if ((a4 & 0x10) != 0)
          {
            goto LABEL_25;
          }

          v12 = v6 + a2;
          if (a1[2] > (v6 + a2))
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        if (a3)
        {
LABEL_25:
          v8 = -1;
          goto LABEL_26;
        }

        v7 = 2;
      }

      a2 = a2 - v6 + a1[v7];
      v12 = v6 + a2;
      if (a1[2] <= (v6 + a2))
      {
LABEL_24:
        if (v12 > a1[8])
        {
          goto LABEL_25;
        }

        v9 = v6 + a2;
        a1[3] = v9;
        if ((a4 & 0x10) == 0 || !v5)
        {
LABEL_31:
          v8 = a2;
          goto LABEL_26;
        }

        LODWORD(v9) = v9 - v5;
LABEL_30:
        a1[6] = v5 + v9;
        goto LABEL_31;
      }

      goto LABEL_25;
    }
  }

  v8 = -1;
  if ((a4 & 0x10) != 0 && v5)
  {
    if (!a3)
    {
      v11 = a1[5];
      v9 = v11 - v5 + a2;
      v10 = v11 + a2;
      if (v11 > v11 + a2)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (a3 == 2)
    {
      v9 = a1[8] - v5 + a2;
      v10 = a1[8] + a2;
      if (a1[5] > v10)
      {
        goto LABEL_25;
      }

LABEL_17:
      a2 = v9;
      if (v10 <= a1[8])
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v8;
  return result;
}

double sub_1000C1C40@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 128);
  v5 = a1[6];
  if (v5 && a1[8] < v5)
  {
    a1[8] = v5;
  }

  if (v4 == -1)
  {
LABEL_16:
    v10 = -1;
    goto LABEL_17;
  }

  if ((a3 & 8) != 0)
  {
    v6 = a1[3];
    if (v6)
    {
      if ((v4 & 0x8000000000000000) == 0)
      {
        v7 = a1[2];
        if (v4 <= a1[8] - v7)
        {
          v8 = v6 + v4 - v6 + v7;
          a1[3] = v8;
          if ((a3 & 0x10) == 0 || !v5)
          {
            goto LABEL_20;
          }

          v9 = v8 - v5;
LABEL_19:
          a1[6] = v5 + v9;
LABEL_20:
          v10 = v4;
          goto LABEL_17;
        }
      }

      goto LABEL_16;
    }
  }

  v10 = -1;
  if ((a3 & 0x10) != 0 && v5 && (v4 & 0x8000000000000000) == 0)
  {
    v11 = a1[2];
    if (v4 <= a1[8] - v11)
    {
      v9 = v4 - v5 + v11;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

LABEL_17:
  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 128) = v10;
  return result;
}

uint64_t sub_1000C1D04(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  if (v1 < *(a1 + 32))
  {
    return *v1;
  }

  if ((*(a1 + 76) & 8) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 48);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 64);
  if (v1 >= v3 && v1 >= v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 < v3)
  {
    *(a1 + 64) = v3;
    v4 = v3;
  }

  *(a1 + 32) = v4;
  return *v1;
}

uint64_t sub_1000C1D68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 16) >= v2)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 != -1 && (*(a1 + 76) & 0x10) == 0)
  {
    v4 = *(v2 - 1);
    v3 = (v2 - 1);
    if (v4 == a2)
    {
      *(a1 + 24) = v3;
      *v3 = a2;
      return a2;
    }

    return 0xFFFFFFFFLL;
  }

  v6 = (v2 - 1);
  *(a1 + 24) = v6;
  if (a2 == -1)
  {
    return 0;
  }

  *v6 = a2;
  return a2;
}

uint64_t sub_1000C1DD4(uint64_t a1, uint64_t a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(a1 + 56);
    if (v3 < v4)
    {
      *(a1 + 48) = v3 + 1;
      *v3 = a2;
      return a2;
    }

    if ((*(a1 + 76) & 0x10) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = *(a1 + 16);
    v6 = v4 - v7;
  }

  else
  {
    if ((*(a1 + 76) & 0x10) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v6 = 0;
    v7 = *(a1 + 16);
  }

  v8 = v6 >> 1;
  if (v6 >> 1 <= 0x100)
  {
    v8 = 256;
  }

  do
  {
    if (!__CFADD__(v8, v6))
    {
      operator new();
    }

    v10 = v8 >= 2;
    v8 >>= 1;
  }

  while (v10);
  memmove(0, v7, v6);
  v11 = a1;
  if (*(a1 + 72) == 1)
  {
    operator delete(v7);
    v11 = a1;
  }

  *(v11 + 72) = 1;
  v12 = *(v11 + 64) - v7;
  v13 = *(v11 + 40);
  v14 = *(v11 + 48) - v13;
  v15 = v13 - v7;
  v17 = *(v11 + 16);
  v16 = *(v11 + 24);
  *(v11 + 56) = v6;
  *(v11 + 64) = v12;
  v18 = v15 + v14;
  *(v11 + 40) = v15;
  *(v11 + 48) = v18;
  if ((*(v11 + 76) & 8) != 0)
  {
    *(v11 + 16) = 0;
    *(v11 + 24) = v16 - v17;
    v19 = (v15 + v14);
    *(v11 + 32) = v18 + 1;
    if (v18 == v6)
    {
LABEL_19:
      (*(*v11 + 104))(v11, a2);
      return a2;
    }
  }

  else
  {
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    v19 = (v15 + v14);
    *(v11 + 32) = 0;
    if (v18 == v6)
    {
      goto LABEL_19;
    }
  }

  *(v11 + 48) = v19 + 1;
  *v19 = a2;
  return a2;
}

void **sub_1000C2054(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_13:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (LOBYTE(v3[-4].__locale_) == 1)
      {
        std::locale::~locale(v3 - 3);
        LOBYTE(v3[-4].__locale_) = 0;
        if ((SHIBYTE(v3[-9].__locale_) & 0x80000000) == 0)
        {
LABEL_7:
          if (SHIBYTE(v3[-12].__locale_) < 0)
          {
            goto LABEL_11;
          }

          goto LABEL_4;
        }
      }

      else if ((SHIBYTE(v3[-9].__locale_) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      operator delete(v3[-11].__locale_);
      if (SHIBYTE(v3[-12].__locale_) < 0)
      {
LABEL_11:
        operator delete(v3[-14].__locale_);
      }

LABEL_4:
      v3 -= 15;
      if (v3 == v2)
      {
        v4 = *a1;
        goto LABEL_13;
      }
    }
  }

  return a1;
}

uint64_t sub_1000C2104(uint64_t a1)
{
  if (*(a1 + 88) != 1)
  {
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_7;
  }

  std::locale::~locale((a1 + 96));
  *(a1 + 88) = 0;
  if (*(a1 + 55) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_7:
  operator delete(*(a1 + 8));
  return a1;
}

void sub_1000C2328(_Unwind_Exception *a1)
{
  shared_owners = v1[1].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_weak(shared_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_1000C234C()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t sub_1000C2398(uint64_t a1, const char *a2)
{
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 45) = 0u;
  *(a1 + 88) = -1;
  std::locale::locale((a1 + 104));
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 96) = off_100438E28;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 172) = 24;
  *(a1 + 184) = 0;
  if (a2)
  {
    v4 = strlen(a2);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10000D39C();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v4;
    if (v4)
    {
      memcpy(&__dst, a2, v4);
    }

    __dst.__r_.__value_.__s.__data_[v5] = 0;
    sub_1000C25B4(a1, &__dst);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  return a1;
}

void sub_1000C250C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (*(v15 + 184) != 1)
    {
LABEL_3:
      sub_1000C19E4(v16);
      if ((*(v15 + 87) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*(v15 + 184) != 1)
  {
    goto LABEL_3;
  }

  std::locale::~locale((v15 + 192));
  *(v15 + 184) = 0;
  sub_1000C19E4(v16);
  if ((*(v15 + 87) & 0x80000000) == 0)
  {
LABEL_4:
    v19 = *(v15 + 24);
    if (!v19)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*v17);
  v19 = *(v15 + 24);
  if (!v19)
  {
LABEL_5:
    sub_1000C2054(v15);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(v19);
  sub_1000C2054(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C25B4(uint64_t a1, const std::string *a2)
{
  if (*(a1 + 184) == 1)
  {
    std::locale::locale(&v43, (a1 + 192));
  }

  else
  {
    std::locale::locale(&v43);
  }

  v4 = std::locale::use_facet(&v43, &std::ctype<char>::id);
  std::locale::~locale(&v43);
  v5 = (v4->__vftable[2].~facet_0)(v4, 37);
  v6 = sub_1000C2B6C(a2, v5, v4, *(a1 + 88));
  sub_1000C2CFC(a1, v6);
  v42 = 0;
  v7 = std::string::find(a2, v5, 0);
  if (v7 == -1)
  {
    v41 = 0;
    v10 = 0;
    v40 = -1;
    v38 = 0;
    v39 = 1;
    goto LABEL_44;
  }

  v8 = v7;
  v41 = 0;
  v9 = 0;
  v10 = 0;
  v40 = -1;
  v38 = 0;
  v39 = 1;
  do
  {
    v11 = (a1 + 64);
    if (v9)
    {
      v11 = (*a1 + 120 * v9 - 88);
    }

    v12 = v8 + 1;
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = a2->__r_.__value_.__r.__words[0];
    }

    if (v14->__r_.__value_.__s.__data_[v12] == v14->__r_.__value_.__s.__data_[v8])
    {
      sub_1000C43B0(v11, (v14 + v10), (v14 + v12));
      v10 = v8 + 2;
      v15 = (v8 + 2);
      goto LABEL_7;
    }

    if (v8 != v10)
    {
      sub_1000C43B0(v11, (v14 + v10), (v14 + v8));
      size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    }

    if ((size & 0x80) != 0)
    {
      v16 = a2->__r_.__value_.__r.__words[0];
      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v16 = a2;
    }

    v42 = v16 + v12;
    v43.__locale_ = (v16 + size);
    v17 = sub_1000C3030(&v42, &v43, *a1 + 120 * v9, v4, (v8 + 1), *(a1 + 88));
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = a2->__r_.__value_.__r.__words[0];
    }

    v15 = &v42[-v18];
    if (!v17)
    {
      v10 = v8;
      goto LABEL_7;
    }

    v19 = *a1 + 120 * v9;
    v20 = *(v19 + 112);
    if ((v20 & 1) == 0)
    {
      goto LABEL_27;
    }

    v21 = *(v19 + 76);
    if ((v21 & 0x20) == 0)
    {
      v20 &= ~2u;
      *(v19 + 112) = v20;
      *(v19 + 72) = 48;
      *(v19 + 76) = v21 & 0xFFFFFF4F | 0x10;
LABEL_27:
      if ((v20 & 2) != 0)
      {
        goto LABEL_28;
      }

      goto LABEL_31;
    }

    v20 &= ~1u;
    *(v19 + 112) = v20;
    if ((v20 & 2) != 0)
    {
LABEL_28:
      if ((*(v19 + 77) & 8) != 0)
      {
        *(v19 + 112) = v20 & 0xFFFFFFFD;
      }
    }

LABEL_31:
    v22 = *v19;
    if (v22 != -3)
    {
      if (v22 == -1)
      {
        v39 = 0;
        v23 = v41;
      }

      else
      {
        v23 = v41;
        if (v22 == -2)
        {
          v38 = 1;
        }

        else
        {
          v24 = v40;
          if (v22 > v40)
          {
            v24 = v22;
          }

          v40 = v24;
        }
      }

      v41 = v23 + 1;
      ++v9;
    }

    v10 = v15;
LABEL_7:
    v8 = std::string::find(a2, v5, v15);
  }

  while (v8 != -1);
  if (v9)
  {
    v25 = (*a1 + 120 * v9 - 88);
    goto LABEL_45;
  }

LABEL_44:
  v25 = (a1 + 64);
LABEL_45:
  v26 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v27 = (v26 & 0x80u) != 0;
  if ((v26 & 0x80u) != 0)
  {
    v26 = a2->__r_.__value_.__l.__size_;
  }

  if (v27)
  {
    v28 = a2->__r_.__value_.__r.__words[0];
  }

  else
  {
    v28 = a2;
  }

  sub_1000C43B0(v25, (v28 + v10), (v28 + v26));
  if ((v39 & 1) == 0)
  {
    if (v40 & 0x80000000) == 0 && (*(a1 + 88))
    {
      v43.__locale_ = &off_100438FB0;
      v44[0] = v40;
      v44[1] = 0;
      sub_1000C3BA0(&v43);
    }

    if (v41 < 1)
    {
      v32 = -1;
    }

    else
    {
      v29 = 0;
      v30 = *a1;
      v31 = v41;
      do
      {
        if (*v30 == -1)
        {
          *v30 = v29++;
        }

        v30 += 30;
        --v31;
      }

      while (v31);
      v32 = v29 - 1;
    }

    v40 = v32;
  }

  v33 = (v4->__vftable[2].~facet_0)(v4, 32);
  LODWORD(v43.__locale_) = -1;
  v52 = 0;
  *v44 = 0u;
  *__p = 0u;
  v46 = 0u;
  v47 = 0;
  v48 = 6;
  v49 = v33;
  v51 = 0;
  v50 = 4098;
  v53[1].__locale_ = 0x7FFFFFFFFFFFFFFFLL;
  v54 = 0;
  v34 = *(a1 + 8);
  v35 = 0xEEEEEEEEEEEEEEEFLL * ((v34 - *a1) >> 3);
  if (v41 > v35)
  {
    sub_1000C4EC0(a1, v41 - v35, &v43);
    goto LABEL_75;
  }

  if (v41 < v35)
  {
    v36 = *a1 + 120 * v41;
    while (1)
    {
      if (v34 == v36)
      {
        *(a1 + 8) = v36;
        break;
      }

      if (*(v34 - 32) == 1)
      {
        std::locale::~locale((v34 - 24));
        *(v34 - 32) = 0;
        if ((*(v34 - 65) & 0x80000000) == 0)
        {
          goto LABEL_72;
        }
      }

      else if ((*(v34 - 65) & 0x80000000) == 0)
      {
LABEL_72:
        if ((*(v34 - 89) & 0x80000000) == 0)
        {
          goto LABEL_66;
        }

        goto LABEL_73;
      }

      operator delete(*(v34 - 88));
      if ((*(v34 - 89) & 0x80000000) == 0)
      {
        goto LABEL_66;
      }

LABEL_73:
      operator delete(*(v34 - 112));
LABEL_66:
      v34 -= 120;
    }
  }

LABEL_75:
  if (v52 == 1)
  {
    std::locale::~locale(v53);
    v52 = 0;
    if (SHIBYTE(v46) < 0)
    {
      goto LABEL_77;
    }

LABEL_81:
    if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
    {
      goto LABEL_82;
    }

LABEL_78:
    operator delete(v44[0]);
    if ((v38 & 1) == 0)
    {
      goto LABEL_84;
    }

LABEL_83:
    *(a1 + 48) |= 4u;
    goto LABEL_84;
  }

  if ((SHIBYTE(v46) & 0x80000000) == 0)
  {
    goto LABEL_81;
  }

LABEL_77:
  operator delete(__p[1]);
  if (SHIBYTE(__p[0]) < 0)
  {
    goto LABEL_78;
  }

LABEL_82:
  if (v38)
  {
    goto LABEL_83;
  }

LABEL_84:
  *(a1 + 56) = v40 + 1;
  *(a1 + 48) = *(a1 + 48) & 0xFFFFFFFE | v39 & 1;
  return a1;
}