uint64_t sub_1003AF270(uint64_t result, char a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 84);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 48), a2, a4);
    v6 = *(v5 + 84);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, *(v5 + 53), a2, a4);
    if ((*(v5 + 84) & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 52), a2, a4);
  v6 = *(v5 + 84);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t sub_1003AF3DC(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 84);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_83;
  }

  if (v3)
  {
    v5 = *(a1 + 48);
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
      v3 = *(a1 + 84);
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
    v3 = *(a1 + 84);
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
      v3 = *(a1 + 84);
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
    v3 = *(a1 + 84);
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
    v3 = *(a1 + 84);
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
    v3 = *(a1 + 84);
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
  v36 = *(a1 + 56);
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
    v3 = *(a1 + 84);
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
    v42 = *(a1 + 64);
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
      v3 = *(a1 + 84);
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
  if ((v3 & 0xFF00) != 0)
  {
    v4 = ((v3 >> 7) & 2) + v4 + ((v3 >> 8) & 2);
    if ((v3 & 0x400) != 0)
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

      v4 = (v4 + v53 + v49 + 1);
    }
  }

  *(a1 + 80) = v4;
  return v4;
}

void sub_1003AF758(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003AE3DC(a1, lpsrc);
}

void sub_1003AF7F8(uint64_t a1, uint64_t a2)
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
      *(a1 + 8) = v5;
      v4 = *(a2 + 28);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_10;
      }
    }

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 12);
    *(a1 + 28) |= 2u;
    *(a1 + 12) = v6;
    if ((*(a2 + 28) & 4) == 0)
    {
      return;
    }

LABEL_10:
    v7 = *(a2 + 16);
    *(a1 + 28) |= 4u;
    v8 = *(a1 + 16);
    if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v8, v7);
  }
}

void sub_1003AF908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003AF920(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448390;
  sub_1002AC6F0(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003AF974(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448390;
  sub_1002AC6F0(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003AFA3C(uint64_t result)
{
  v1 = *(result + 28);
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
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_1003AFA88(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        v14 = *(a1 + 28);
LABEL_33:
        *(a1 + 28) = v14 | 4;
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

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v10 = *(this + 1);
      v9 = *(this + 2);
      if (v10 >= v9 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v12 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v11;
        v12 = v10 + 1;
        *(this + 1) = v12;
      }

      *(a1 + 28) |= 1u;
      if (v12 < v9 && *v12 == 16)
      {
        v13 = v12 + 1;
        *(this + 1) = v13;
LABEL_25:
        if (v13 >= v9 || (v15 = *v13, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
          if (!result)
          {
            return result;
          }

          v16 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 12) = v15;
          v16 = v13 + 1;
          *(this + 1) = v16;
        }

        v14 = *(a1 + 28) | 2;
        *(a1 + 28) = v14;
        if (v16 < v9 && *v16 == 26)
        {
          *(this + 1) = v16 + 1;
          goto LABEL_33;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v13 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_25;
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
}

uint64_t sub_1003AFC98(uint64_t result, unsigned int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_7:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t sub_1003AFD24(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_24;
  }

  if (*(a1 + 28))
  {
    v5 = *(a1 + 8);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 28);
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
    if ((*(a1 + 28) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(a1 + 12);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 28);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_14:
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
  }

LABEL_24:
  *(a1 + 24) = v4;
  return v4;
}

void sub_1003AFE14(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003AF7F8(a1, lpsrc);
}

uint64_t sub_1003AFEB4(uint64_t a1, uint64_t a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  *(a1 + 16) = 12;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = off_102448408;
  *(a1 + 8) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 24) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 56) = a3;
  sub_1003AFF54(a1, a2);
  return a1;
}

void sub_1003AFF34(_Unwind_Exception *a1)
{
  sub_100027438(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void sub_1003AFF54(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 32), *(a2 + 40) + *(a1 + 40));
  LODWORD(v4) = *(a2 + 40);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
      }

      v6 = *(*(a2 + 32) + 8 * v5);
      v7 = *(a1 + 44);
      v8 = *(a1 + 40);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 48))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 32), v7 + 1);
          v7 = *(a1 + 44);
        }

        *(a1 + 44) = v7 + 1;
        operator new();
      }

      v9 = *(a1 + 32);
      *(a1 + 40) = v8 + 1;
      sub_1003AF7F8(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 40);
    }

    while (v5 < v4);
  }

  LOBYTE(v10) = *(a2 + 68);
  if (!v10)
  {
    return;
  }

  if (*(a2 + 68))
  {
    v11 = *(a2 + 16);
    if (v11 - 31 >= 0x19 && (v11 > 0xE || ((1 << v11) & 0x76B6) == 0))
    {
      sub_1018721C4();
    }

    *(a1 + 68) |= 1u;
    *(a1 + 16) = v11;
    v10 = *(a2 + 68);
  }

  if ((v10 & 2) == 0)
  {
    if ((v10 & 4) == 0)
    {
      goto LABEL_21;
    }

LABEL_27:
    v14 = *(a2 + 20);
    *(a1 + 68) |= 4u;
    *(a1 + 20) = v14;
    v10 = *(a2 + 68);
    if ((v10 & 8) == 0)
    {
LABEL_22:
      if ((v10 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_31;
    }

    goto LABEL_28;
  }

  v12 = *(a2 + 8);
  *(a1 + 68) |= 2u;
  v13 = *(a1 + 8);
  if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v13, v12);
  v10 = *(a2 + 68);
  if ((v10 & 4) != 0)
  {
    goto LABEL_27;
  }

LABEL_21:
  if ((v10 & 8) == 0)
  {
    goto LABEL_22;
  }

LABEL_28:
  v15 = *(a2 + 24);
  *(a1 + 68) |= 8u;
  v16 = *(a1 + 24);
  if (v16 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v16, v15);
  if ((*(a2 + 68) & 0x20) != 0)
  {
LABEL_31:
    *(a1 + 68) |= 0x20u;
    v17 = *(a1 + 56);
    if (!v17)
    {
      operator new();
    }

    v18 = *(a2 + 56);
    if (!v18)
    {
      v18 = *(qword_102635FB0 + 56);
    }

    sub_1003A8A74(v17, v18);
  }
}

void sub_1003B02A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003B02C8(uint64_t *a1)
{
  *a1 = off_102448408;
  v2 = a1 + 4;
  sub_1003B032C(a1);
  sub_100027438(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void *sub_1003B032C(void *result)
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

  if (qword_102635FB0 != result)
  {
    result = result[7];
    if (result)
    {
      v5 = *(*result + 8);

      return v5();
    }
  }

  return result;
}

void sub_1003B0420(uint64_t *a1)
{
  sub_1003B02C8(a1);

  operator delete();
}

uint64_t sub_1003B04CC(uint64_t a1)
{
  v2 = *(a1 + 68);
  if (v2)
  {
    *(a1 + 16) = 12;
    if ((v2 & 2) != 0)
    {
      v3 = *(a1 + 8);
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

    *(a1 + 20) = 0;
    if ((*(a1 + 68) & 8) != 0)
    {
      v4 = *(a1 + 24);
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

    if ((*(a1 + 68) & 0x20) != 0)
    {
      v5 = *(a1 + 56);
      if (v5)
      {
        if (*(v5 + 16))
        {
          *(v5 + 8) = 0;
        }

        *(v5 + 16) = 0;
      }
    }
  }

  result = sub_1003C79DC(a1 + 32);
  *(a1 + 68) = 0;
  return result;
}

uint64_t sub_1003B0598(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 > 3)
        {
          break;
        }

        if (v7 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_26;
          }

          v41 = 0;
          v11 = *(this + 1);
          if (v11 >= *(this + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v41);
            if (!result)
            {
              return result;
            }

            v12 = v41;
          }

          else
          {
            *(this + 1) = v11 + 1;
          }

          if (v12 - 31 < 0x19 || v12 <= 0xE && ((1 << v12) & 0x76B6) != 0)
          {
            if (v12 - 31 >= 0x19 && (v12 > 0xE || ((1 << v12) & 0x76B6) == 0))
            {
              sub_1018721C4();
            }

            *(a1 + 68) |= 1u;
            *(a1 + 16) = v12;
          }

          v15 = *(this + 1);
          if (v15 < *(this + 2) && *v15 == 18)
          {
            *(this + 1) = v15 + 1;
            goto LABEL_41;
          }
        }

        else if (v7 == 2)
        {
          if (v8 != 2)
          {
            goto LABEL_26;
          }

LABEL_41:
          *(a1 + 68) |= 2u;
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
          v9 = *(this + 2);
          if (v16 < v9 && *v16 == 24)
          {
            v10 = v16 + 1;
            *(this + 1) = v10;
LABEL_47:
            if (v10 >= v9 || (v17 = *v10, v17 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
              if (!result)
              {
                return result;
              }

              v18 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              *(a1 + 20) = v17;
              v18 = v10 + 1;
              *(this + 1) = v18;
            }

            v13 = *(a1 + 68) | 4;
            *(a1 + 68) = v13;
            if (v18 < v9 && *v18 == 34)
            {
              *(this + 1) = v18 + 1;
              goto LABEL_55;
            }
          }
        }

        else
        {
          if (v7 == 3 && (TagFallback & 7) == 0)
          {
            v10 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_47;
          }

LABEL_26:
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

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_26;
      }

      v13 = *(a1 + 68);
LABEL_55:
      *(a1 + 68) = v13 | 8;
      if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v19 = *(this + 1);
      if (v19 < *(this + 2) && *v19 == 42)
      {
        while (1)
        {
          *(this + 1) = v19 + 1;
LABEL_61:
          v20 = *(a1 + 44);
          v21 = *(a1 + 40);
          if (v21 >= v20)
          {
            if (v20 == *(a1 + 48))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 32), v20 + 1);
              v20 = *(a1 + 44);
            }

            *(a1 + 44) = v20 + 1;
            operator new();
          }

          v22 = *(a1 + 32);
          *(a1 + 40) = v21 + 1;
          v23 = *(v22 + 8 * v21);
          v42 = 0;
          v24 = *(this + 1);
          if (v24 >= *(this + 2) || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42))
            {
              return 0;
            }
          }

          else
          {
            v42 = *v24;
            *(this + 1) = v24 + 1;
          }

          v25 = *(this + 14);
          v26 = *(this + 15);
          *(this + 14) = v25 + 1;
          if (v25 >= v26)
          {
            return 0;
          }

          v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v42);
          if (!sub_1003AFA88(v23, this, v28) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v27);
          v29 = *(this + 14);
          v30 = __OFSUB__(v29, 1);
          v31 = v29 - 1;
          if (v31 < 0 == v30)
          {
            *(this + 14) = v31;
          }

          v19 = *(this + 1);
          if (v19 >= *(this + 2))
          {
            break;
          }

          v32 = *v19;
          if (v32 != 42)
          {
            if (v32 == 50)
            {
              *(this + 1) = v19 + 1;
              goto LABEL_79;
            }

            goto LABEL_1;
          }
        }
      }
    }

    if (v7 == 5)
    {
      if (v8 == 2)
      {
        goto LABEL_61;
      }

      goto LABEL_26;
    }

    if (v7 != 6 || v8 != 2)
    {
      goto LABEL_26;
    }

LABEL_79:
    *(a1 + 68) |= 0x20u;
    v33 = *(a1 + 56);
    if (!v33)
    {
      operator new();
    }

    v43 = 0;
    v34 = *(this + 1);
    if (v34 >= *(this + 2) || *v34 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43))
      {
        return 0;
      }
    }

    else
    {
      v43 = *v34;
      *(this + 1) = v34 + 1;
    }

    v35 = *(this + 14);
    v36 = *(this + 15);
    *(this + 14) = v35 + 1;
    if (v35 >= v36)
    {
      return 0;
    }

    v37 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v43);
    if (!sub_1003A8C14(v33, this, v38) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v37);
    v39 = *(this + 14);
    v30 = __OFSUB__(v39, 1);
    v40 = v39 - 1;
    if (v40 < 0 == v30)
    {
      *(this + 14) = v40;
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

uint64_t sub_1003B0B2C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 68);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 16), a2, a4);
    v6 = *(v5 + 68);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
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

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  if ((*(v5 + 68) & 8) != 0)
  {
LABEL_5:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

LABEL_6:
  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, *(*(v5 + 32) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if ((*(v5 + 68) & 0x20) != 0)
  {
    v8 = *(v5 + 56);
    if (!v8)
    {
      v8 = *(qword_102635FB0 + 56);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v8, a2, a4);
  }

  return result;
}

uint64_t sub_1003B0C40(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 68);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_45;
  }

  if (*(a1 + 68))
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
      v3 = *(a1 + 68);
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
    if ((*(a1 + 68) & 2) == 0)
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
    v3 = *(a1 + 68);
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

  v4 += v11 + v7 + 1;
LABEL_22:
  if ((v3 & 4) != 0)
  {
    v12 = *(a1 + 20);
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
    if ((v3 & 8) == 0)
    {
LABEL_24:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_39;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_24;
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
    v3 = *(a1 + 68);
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

  v4 += v19 + v15 + 1;
  if ((v3 & 0x20) != 0)
  {
LABEL_39:
    v20 = *(a1 + 56);
    if (!v20)
    {
      v20 = *(qword_102635FB0 + 56);
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
  }

LABEL_45:
  v22 = *(a1 + 40);
  v23 = (v22 + v4);
  if (v22 >= 1)
  {
    v24 = 0;
    do
    {
      v25 = sub_1003AFD24(*(*(a1 + 32) + 8 * v24), a2);
      v26 = v25;
      if (v25 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2);
      }

      else
      {
        v27 = 1;
      }

      v23 = (v26 + v23 + v27);
      ++v24;
    }

    while (v24 < *(a1 + 40));
  }

  *(a1 + 64) = v23;
  return v23;
}

void sub_1003B0E38(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003AFF54(a1, lpsrc);
}

void sub_1003B0EC0(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    (*(*a1 + 32))(a1);

    sub_1003AFF54(a1, a2);
  }
}

void sub_1003B0F44(uint64_t a1, uint64_t a2)
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
      sub_1018721F0();
    }

    *(a1 + 16) |= 1u;
    *(a1 + 8) = v4;
  }
}

void sub_1003B0FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003B1034(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448480;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003B10E0(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 31;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_1003B10F8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          sub_1018721F0();
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

uint64_t sub_1003B1258(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
  }

  return result;
}

uint64_t sub_1003B1274(uint64_t a1, unsigned int a2)
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

void sub_1003B12D0(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003B0F44(a1, lpsrc);
}

void sub_1003B1370(uint64_t a1, uint64_t a2)
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
      sub_10187221C();
    }

    *(a1 + 16) |= 1u;
    *(a1 + 8) = v4;
  }
}

void sub_1003B1428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003B1460(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024484F8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003B150C(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 32;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_1003B1524(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          sub_10187221C();
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

uint64_t sub_1003B1684(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
  }

  return result;
}

uint64_t sub_1003B16A0(uint64_t a1, unsigned int a2)
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

void sub_1003B16FC(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003B1370(a1, lpsrc);
}

void sub_1003B179C(uint64_t a1, uint64_t a2)
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
      sub_101872248();
    }

    *(a1 + 16) |= 1u;
    *(a1 + 8) = v4;
  }
}

void sub_1003B1854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003B188C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448570;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003B1938(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 33;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_1003B1950(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          sub_101872248();
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

uint64_t sub_1003B1AB0(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
  }

  return result;
}

uint64_t sub_1003B1ACC(uint64_t a1, unsigned int a2)
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

void sub_1003B1B28(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003B179C(a1, lpsrc);
}

void sub_1003B1BC8(uint64_t a1, uint64_t a2)
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
      sub_101872274();
    }

    *(a1 + 16) |= 1u;
    *(a1 + 8) = v4;
  }
}

void sub_1003B1C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003B1CB8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024485E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003B1D64(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 34;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_1003B1D7C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          sub_101872274();
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

uint64_t sub_1003B1EDC(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
  }

  return result;
}

uint64_t sub_1003B1EF8(uint64_t a1, unsigned int a2)
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

void sub_1003B1F54(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003B1BC8(a1, lpsrc);
}

void sub_1003B1FF4(uint64_t a1, uint64_t a2)
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
      sub_1018722A0();
    }

    *(a1 + 16) |= 1u;
    *(a1 + 8) = v4;
  }
}

void sub_1003B20AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003B20E4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448660;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003B2190(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 35;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_1003B21A8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          sub_1018722A0();
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

uint64_t sub_1003B2308(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
  }

  return result;
}

uint64_t sub_1003B2324(uint64_t a1, unsigned int a2)
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

void sub_1003B2380(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003B1FF4(a1, lpsrc);
}

void sub_1003B2420(uint64_t a1, uint64_t a2)
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
      v5 = *(a2 + 24);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        sub_1018722CC();
      }

      *(a1 + 32) |= 1u;
      *(a1 + 24) = v5;
      v4 = *(a2 + 32);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 8);
      *(a1 + 32) |= 2u;
      v7 = *(a1 + 8);
      if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v4 = *(a2 + 32);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 16);
      *(a1 + 32) |= 4u;
      *(a1 + 16) = v8;
    }
  }
}

void sub_1003B2558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003B2570(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024486D8;
  sub_10000FCA0(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003B25C4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024486D8;
  sub_10000FCA0(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003B2690(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    *(result + 24) = 36;
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

    *(result + 16) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_1003B26E4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if ((TagFallback & 7) == 0)
        {
          v12 = *(this + 1);
          v11 = *(this + 2);
          goto LABEL_38;
        }

        goto LABEL_16;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v18 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v18);
        if (!result)
        {
          return result;
        }

        v10 = v18;
      }

      else
      {
        *(this + 1) = v9 + 1;
      }

      if (v10 - 31 < 0x19 || v10 <= 0xE && ((1 << v10) & 0x76B6) != 0)
      {
        if (v10 - 31 >= 0x19 && (v10 > 0xE || ((1 << v10) & 0x76B6) == 0))
        {
          sub_1018722CC();
        }

        *(a1 + 32) |= 1u;
        *(a1 + 24) = v10;
      }

      v13 = *(this + 1);
      if (v13 < *(this + 2) && *v13 == 18)
      {
        *(this + 1) = v13 + 1;
LABEL_32:
        *(a1 + 32) |= 2u;
        if (*(a1 + 8) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v14 = *(this + 1);
        v11 = *(this + 2);
        if (v14 < v11 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(this + 1) = v12;
LABEL_38:
          if (v12 >= v11 || (v15 = *v12, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
            if (!result)
            {
              return result;
            }

            v16 = *(this + 1);
            v11 = *(this + 2);
          }

          else
          {
            *(a1 + 16) = v15;
            v16 = v12 + 1;
            *(this + 1) = v16;
          }

          *(a1 + 32) |= 4u;
          if (v16 == v11 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_32;
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
}

uint64_t sub_1003B2954(uint64_t result, unint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 32) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 24), a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t sub_1003B29E0(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_24;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_13:
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
      v3 = *(a1 + 32);
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
    goto LABEL_22;
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
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    v4 = 2;
    if ((v3 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_22:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
  }

LABEL_24:
  *(a1 + 28) = v4;
  return v4;
}

void sub_1003B2AD0(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003B2420(a1, lpsrc);
}

void sub_1003B2B70(uint64_t a1, uint64_t a2)
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
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        sub_1018722F8();
      }

      *(a1 + 32) |= 1u;
      *(a1 + 24) = v5;
      v4 = *(a2 + 32);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 8);
      *(a1 + 32) |= 2u;
      v7 = *(a1 + 8);
      if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
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

void sub_1003B2CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003B2CF4(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = *(result + 16);
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

void sub_1003B2DA8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448750;
  sub_1003B2CF4(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003B2DFC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448750;
  sub_1003B2CF4(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003B2EC8(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    *(result + 24) = 37;
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

    if ((*(result + 32) & 4) != 0)
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
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_1003B2F4C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

LABEL_37:
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

      v14 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v14);
        if (!result)
        {
          return result;
        }

        v10 = v14;
      }

      else
      {
        *(this + 1) = v9 + 1;
      }

      if (v10 - 31 < 0x19 || v10 <= 0xE && ((1 << v10) & 0x76B6) != 0)
      {
        if (v10 - 31 >= 0x19 && (v10 > 0xE || ((1 << v10) & 0x76B6) == 0))
        {
          sub_1018722F8();
        }

        *(a1 + 32) |= 1u;
        *(a1 + 24) = v10;
      }

      v11 = *(this + 1);
      if (v11 < *(this + 2) && *v11 == 18)
      {
        *(this + 1) = v11 + 1;
LABEL_31:
        *(a1 + 32) |= 2u;
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
          goto LABEL_37;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_31;
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
}

uint64_t sub_1003B31BC(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = result;
  v5 = *(result + 32);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v4 + 32) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 24), a2, a4);
  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return result;
  }

LABEL_7:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t sub_1003B3248(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_32;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_13:
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
      v3 = *(a1 + 32);
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
    goto LABEL_22;
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
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    v4 = 2;
    if ((v3 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

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

LABEL_32:
  *(a1 + 28) = v4;
  return v4;
}

void sub_1003B3378(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003B2B70(a1, lpsrc);
}

void sub_1003B3418(uint64_t a1, uint64_t a2)
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
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        sub_101872324();
      }

      *(a1 + 32) |= 1u;
      *(a1 + 24) = v5;
      v4 = *(a2 + 32);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 8);
      *(a1 + 32) |= 2u;
      v7 = *(a1 + 8);
      if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
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

void sub_1003B3584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003B359C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024487C8;
  sub_1003B2CF4(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003B35F0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024487C8;
  sub_1003B2CF4(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003B36BC(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    *(result + 24) = 38;
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

    if ((*(result + 32) & 4) != 0)
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
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_1003B3740(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

LABEL_37:
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

      v14 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v14);
        if (!result)
        {
          return result;
        }

        v10 = v14;
      }

      else
      {
        *(this + 1) = v9 + 1;
      }

      if (v10 - 31 < 0x19 || v10 <= 0xE && ((1 << v10) & 0x76B6) != 0)
      {
        if (v10 - 31 >= 0x19 && (v10 > 0xE || ((1 << v10) & 0x76B6) == 0))
        {
          sub_101872324();
        }

        *(a1 + 32) |= 1u;
        *(a1 + 24) = v10;
      }

      v11 = *(this + 1);
      if (v11 < *(this + 2) && *v11 == 18)
      {
        *(this + 1) = v11 + 1;
LABEL_31:
        *(a1 + 32) |= 2u;
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
          goto LABEL_37;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_31;
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
}

uint64_t sub_1003B39B0(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = result;
  v5 = *(result + 32);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v4 + 32) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 24), a2, a4);
  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return result;
  }

LABEL_7:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t sub_1003B3A3C(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_32;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_13:
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
      v3 = *(a1 + 32);
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
    goto LABEL_22;
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
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    v4 = 2;
    if ((v3 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

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

LABEL_32:
  *(a1 + 28) = v4;
  return v4;
}

void sub_1003B3B6C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003B3418(a1, lpsrc);
}

void sub_1003B3C0C(uint64_t a1, uint64_t a2)
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
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        sub_101872350();
      }

      *(a1 + 32) |= 1u;
      *(a1 + 24) = v5;
      v4 = *(a2 + 32);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 8);
      *(a1 + 32) |= 2u;
      v7 = *(a1 + 8);
      if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
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

void sub_1003B3D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003B3D90(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448840;
  sub_1003B2CF4(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003B3DE4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448840;
  sub_1003B2CF4(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003B3EB0(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    *(result + 24) = 39;
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

    if ((*(result + 32) & 4) != 0)
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
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_1003B3F34(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

LABEL_37:
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

      v14 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v14);
        if (!result)
        {
          return result;
        }

        v10 = v14;
      }

      else
      {
        *(this + 1) = v9 + 1;
      }

      if (v10 - 31 < 0x19 || v10 <= 0xE && ((1 << v10) & 0x76B6) != 0)
      {
        if (v10 - 31 >= 0x19 && (v10 > 0xE || ((1 << v10) & 0x76B6) == 0))
        {
          sub_101872350();
        }

        *(a1 + 32) |= 1u;
        *(a1 + 24) = v10;
      }

      v11 = *(this + 1);
      if (v11 < *(this + 2) && *v11 == 18)
      {
        *(this + 1) = v11 + 1;
LABEL_31:
        *(a1 + 32) |= 2u;
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
          goto LABEL_37;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_31;
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
}

uint64_t sub_1003B41A4(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = result;
  v5 = *(result + 32);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v4 + 32) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 24), a2, a4);
  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return result;
  }

LABEL_7:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t sub_1003B4230(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_32;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_13:
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
      v3 = *(a1 + 32);
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
    goto LABEL_22;
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
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    v4 = 2;
    if ((v3 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

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

LABEL_32:
  *(a1 + 28) = v4;
  return v4;
}

void sub_1003B4360(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003B3C0C(a1, lpsrc);
}

void sub_1003B4400(uint64_t a1, uint64_t a2)
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
      v5 = *(a2 + 16);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        sub_10187237C();
      }

      *(a1 + 36) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 36);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 8);
      *(a1 + 36) |= 2u;
      v8 = *(a1 + 8);
      if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v4 = *(a2 + 36);
      if ((v4 & 4) == 0)
      {
LABEL_11:
        if ((v4 & 8) == 0)
        {
          return;
        }

        goto LABEL_12;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

    v9 = *(a2 + 24);
    *(a1 + 36) |= 4u;
    v10 = *(a1 + 24);
    if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    if ((*(a2 + 36) & 8) != 0)
    {
LABEL_12:
      v6 = *(a2 + 20);
      *(a1 + 36) |= 8u;
      *(a1 + 20) = v6;
    }
  }
}

void sub_1003B4594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003B45AC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024488B8;
  sub_1002211C8(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003B4600(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024488B8;
  sub_1002211C8(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003B46D0(uint64_t result)
{
  v1 = *(result + 36);
  if (v1)
  {
    *(result + 16) = 40;
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

    if ((*(result + 36) & 4) != 0)
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

    *(result + 20) = 0;
  }

  *(result + 36) = 0;
  return result;
}

uint64_t sub_1003B4758(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
            v10 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_47;
          }

          goto LABEL_20;
        }

        if (v8 != 2)
        {
          goto LABEL_20;
        }

LABEL_41:
        *(a1 + 36) |= 4u;
        if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v15 = *(this + 1);
        v9 = *(this + 2);
        if (v15 < v9 && *v15 == 32)
        {
          v10 = v15 + 1;
          *(this + 1) = v10;
LABEL_47:
          v20 = 0;
          if (v10 >= v9 || (v16 = *v10, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20);
            if (!result)
            {
              return result;
            }

            v16 = v20;
            v17 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            v17 = v10 + 1;
            *(this + 1) = v17;
          }

          *(a1 + 20) = v16 != 0;
          *(a1 + 36) |= 8u;
          if (v17 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

      if (v12 - 31 < 0x19 || v12 <= 0xE && ((1 << v12) & 0x76B6) != 0)
      {
        if (v12 - 31 >= 0x19 && (v12 > 0xE || ((1 << v12) & 0x76B6) == 0))
        {
          sub_10187237C();
        }

        *(a1 + 36) |= 1u;
        *(a1 + 16) = v12;
      }

      v13 = *(this + 1);
      if (v13 < *(this + 2) && *v13 == 18)
      {
        *(this + 1) = v13 + 1;
LABEL_35:
        *(a1 + 36) |= 2u;
        if (*(a1 + 8) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v14 = *(this + 1);
        if (v14 < *(this + 2) && *v14 == 26)
        {
          *(this + 1) = v14 + 1;
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

uint64_t sub_1003B4A50(uint64_t result, char a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
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
  v7 = *(v5 + 20);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, a2, a4);
}

uint64_t sub_1003B4AF8(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 36);
  if (!v3)
  {
    result = 0;
    goto LABEL_33;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_13:
    v7 = *(a1 + 8);
    v8 = *(v7 + 23);
    v9 = v8;
    v10 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v11 = *(v7 + 23);
    }

    else
    {
      v11 = v10;
    }

    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
      v8 = *(v7 + 23);
      v10 = *(v7 + 8);
      v3 = *(a1 + 36);
      v9 = *(v7 + 23);
    }

    else
    {
      v12 = 1;
    }

    if (v9 < 0)
    {
      v8 = v10;
    }

    v4 += v12 + v8 + 1;
    goto LABEL_22;
  }

  v6 = *(a1 + 16);
  if ((v6 & 0x80000000) != 0)
  {
    v4 = 11;
    if ((v3 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  if (v6 < 0x80)
  {
    v4 = 2;
    if ((v3 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
  v3 = *(a1 + 36);
  if ((v3 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_22:
  if ((v3 & 4) != 0)
  {
    v13 = *(a1 + 24);
    v14 = *(v13 + 23);
    v15 = v14;
    v16 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v17 = *(v13 + 23);
    }

    else
    {
      v17 = v16;
    }

    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
      v14 = *(v13 + 23);
      v16 = *(v13 + 8);
      v3 = *(a1 + 36);
      v15 = *(v13 + 23);
    }

    else
    {
      v18 = 1;
    }

    if (v15 < 0)
    {
      v14 = v16;
    }

    v4 += v18 + v14 + 1;
  }

  result = ((v3 >> 2) & 2) + v4;
LABEL_33:
  *(a1 + 32) = result;
  return result;
}

void sub_1003B4C38(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003B4400(a1, lpsrc);
}

void sub_1003B4CD8(uint64_t a1, uint64_t a2)
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
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        sub_1018723A8();
      }

      *(a1 + 32) |= 1u;
      *(a1 + 24) = v5;
      v4 = *(a2 + 32);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 8);
      *(a1 + 32) |= 2u;
      v7 = *(a1 + 8);
      if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
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

void sub_1003B4E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003B4E5C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448930;
  sub_1003B2CF4(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003B4EB0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448930;
  sub_1003B2CF4(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003B4F7C(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    *(result + 24) = 41;
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

    if ((*(result + 32) & 4) != 0)
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
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_1003B5000(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

LABEL_37:
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

      v14 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v14);
        if (!result)
        {
          return result;
        }

        v10 = v14;
      }

      else
      {
        *(this + 1) = v9 + 1;
      }

      if (v10 - 31 < 0x19 || v10 <= 0xE && ((1 << v10) & 0x76B6) != 0)
      {
        if (v10 - 31 >= 0x19 && (v10 > 0xE || ((1 << v10) & 0x76B6) == 0))
        {
          sub_1018723A8();
        }

        *(a1 + 32) |= 1u;
        *(a1 + 24) = v10;
      }

      v11 = *(this + 1);
      if (v11 < *(this + 2) && *v11 == 18)
      {
        *(this + 1) = v11 + 1;
LABEL_31:
        *(a1 + 32) |= 2u;
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
          goto LABEL_37;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_31;
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
}

uint64_t sub_1003B5270(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = result;
  v5 = *(result + 32);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v4 + 32) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 24), a2, a4);
  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return result;
  }

LABEL_7:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t sub_1003B52FC(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_32;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_13:
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
      v3 = *(a1 + 32);
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
    goto LABEL_22;
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
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    v4 = 2;
    if ((v3 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

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

LABEL_32:
  *(a1 + 28) = v4;
  return v4;
}

void sub_1003B542C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003B4CD8(a1, lpsrc);
}

void sub_1003B54CC(uint64_t a1, uint64_t a2)
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
    v5 = *(a2 + 40);
    if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
    {
      sub_1018723D4();
    }

    *(a1 + 48) |= 1u;
    *(a1 + 40) = v5;
    v4 = *(a2 + 48);
  }

  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_17:
    v8 = *(a2 + 16);
    *(a1 + 48) |= 4u;
    v9 = *(a1 + 16);
    if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v9, v8);
    v4 = *(a2 + 48);
    if ((v4 & 8) == 0)
    {
LABEL_12:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_23;
    }

    goto LABEL_20;
  }

  v6 = *(a2 + 8);
  *(a1 + 48) |= 2u;
  v7 = *(a1 + 8);
  if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v7, v6);
  v4 = *(a2 + 48);
  if ((v4 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  if ((v4 & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_20:
  v10 = *(a2 + 24);
  *(a1 + 48) |= 8u;
  v11 = *(a1 + 24);
  if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  if ((*(a2 + 48) & 0x10) != 0)
  {
LABEL_23:
    v12 = *(a2 + 32);
    *(a1 + 48) |= 0x10u;
    v13 = *(a1 + 32);
    if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v13, v12);
  }
}

void sub_1003B56E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1003B5700(void *result)
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

  return result;
}

void sub_1003B580C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024489A8;
  sub_1003B5700(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003B5860(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024489A8;
  sub_1003B5700(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003B5930(uint64_t result)
{
  v1 = *(result + 48);
  if (v1)
  {
    *(result + 40) = 42;
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

    if ((*(result + 48) & 4) != 0)
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

    if ((*(result + 48) & 8) != 0)
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

    if ((*(result + 48) & 0x10) != 0)
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
  }

  *(result + 48) = 0;
  return result;
}

uint64_t sub_1003B5A1C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

          goto LABEL_39;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v16 = 0;
        v9 = *(this + 1);
        if (v9 >= *(this + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v16);
          if (!result)
          {
            return result;
          }

          v10 = v16;
        }

        else
        {
          *(this + 1) = v9 + 1;
        }

        if (v10 - 31 < 0x19 || v10 <= 0xE && ((1 << v10) & 0x76B6) != 0)
        {
          if (v10 - 31 >= 0x19 && (v10 > 0xE || ((1 << v10) & 0x76B6) == 0))
          {
            sub_1018723D4();
          }

          *(a1 + 48) |= 1u;
          *(a1 + 40) = v10;
        }

        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 18)
        {
          *(this + 1) = v11 + 1;
LABEL_39:
          *(a1 + 48) |= 2u;
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
LABEL_45:
            *(a1 + 48) |= 4u;
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
              goto LABEL_51;
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

        goto LABEL_45;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_21;
      }

LABEL_51:
      *(a1 + 48) |= 8u;
      if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v14 = *(this + 1);
      if (v14 < *(this + 2) && *v14 == 42)
      {
        *(this + 1) = v14 + 1;
LABEL_57:
        *(a1 + 48) |= 0x10u;
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
      goto LABEL_57;
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

uint64_t sub_1003B5D80(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = result;
  v5 = *(result + 48);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 40), a2, a4);
    v5 = *(v4 + 48);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v5 = *(v4 + 48);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v4 + 48) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v5 = *(v4 + 48);
  if ((v5 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t sub_1003B5E44(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_53;
  }

  if (*(a1 + 48))
  {
    v5 = *(a1 + 40);
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
      v3 = *(a1 + 48);
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
    if ((*(a1 + 48) & 2) == 0)
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
    v3 = *(a1 + 48);
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
      v3 = *(a1 + 48);
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
        goto LABEL_53;
      }

      goto LABEL_44;
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
    v3 = *(a1 + 48);
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
  if ((v3 & 0x10) != 0)
  {
LABEL_44:
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
  }

LABEL_53:
  *(a1 + 44) = v4;
  return v4;
}

void sub_1003B6030(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003B54CC(a1, lpsrc);
}

void sub_1003B60D0(uint64_t a1, uint64_t a2)
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
        sub_101872400();
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

void sub_1003B6298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003B62B0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448A20;
  sub_1003ABCF8(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003B6304(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448A20;
  sub_1003ABCF8(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003B63D0(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    *(result + 32) = 43;
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

uint64_t sub_1003B6488(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          sub_101872400();
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

uint64_t sub_1003B6774(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_1003B681C(uint64_t a1, unsigned int a2)
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

void sub_1003B69AC(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003B60D0(a1, lpsrc);
}

void sub_1003B6A4C(uint64_t a1, uint64_t a2)
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
        sub_10187242C();
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

void sub_1003B6B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003B6B78(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448A98;
  sub_10000FCA0(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003B6BCC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448A98;
  sub_10000FCA0(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003B6C94(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *(result + 16) = 44;
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

uint64_t sub_1003B6CE4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          sub_10187242C();
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

uint64_t sub_1003B6EE0(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_1003B6F4C(uint64_t a1, unsigned int a2)
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

void sub_1003B7024(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003B6A4C(a1, lpsrc);
}

void sub_1003B70C4(uint64_t a1, uint64_t a2)
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
      v5 = *(a2 + 16);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        sub_101872458();
      }

      *(a1 + 44) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 44);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 8);
      *(a1 + 44) |= 2u;
      v7 = *(a1 + 8);
      if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v4 = *(a2 + 44);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 20);
      if (v8 >= 0xB)
      {
        sub_101872484();
      }

      *(a1 + 44) |= 4u;
      *(a1 + 20) = v8;
      v4 = *(a2 + 44);
    }

    if ((v4 & 8) != 0)
    {
      v9 = *(a2 + 24);
      *(a1 + 44) |= 8u;
      v10 = *(a1 + 24);
      if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v10, v9);
      v4 = *(a2 + 44);
    }

    if ((v4 & 0x10) != 0)
    {
      v11 = *(a2 + 32);
      if (v11 >= 3)
      {
        sub_1018724B0();
      }

      *(a1 + 44) |= 0x10u;
      *(a1 + 32) = v11;
      v4 = *(a2 + 44);
    }

    if ((v4 & 0x20) != 0)
    {
      v12 = *(a2 + 36);
      *(a1 + 44) |= 0x20u;
      *(a1 + 36) = v12;
    }
  }
}

void sub_1003B72A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003B72BC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448B10;
  sub_1002211C8(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003B7310(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448B10;
  sub_1002211C8(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003B73DC(uint64_t result)
{
  v1 = *(result + 44);
  if (v1)
  {
    *(result + 16) = 45;
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

    *(result + 20) = 0;
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

    *(result + 32) = 0;
  }

  *(result + 44) = 0;
  return result;
}

uint64_t sub_1003B7468(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (v7 == 4)
          {
            if (v8 == 2)
            {
              goto LABEL_58;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(this + 1);
              v15 = *(this + 2);
              goto LABEL_64;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v12 = *(this + 1);
            v11 = *(this + 2);
            goto LABEL_74;
          }

          goto LABEL_26;
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v29 = 0;
        v13 = *(this + 1);
        if (v13 >= *(this + 2) || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29);
          if (!result)
          {
            return result;
          }

          v14 = v29;
        }

        else
        {
          *(this + 1) = v13 + 1;
        }

        if (v14 - 31 < 0x19 || v14 <= 0xE && ((1 << v14) & 0x76B6) != 0)
        {
          if (v14 - 31 >= 0x19 && (v14 > 0xE || ((1 << v14) & 0x76B6) == 0))
          {
            sub_101872458();
          }

          *(a1 + 44) |= 1u;
          *(a1 + 16) = v14;
        }

        v17 = *(this + 1);
        if (v17 < *(this + 2) && *v17 == 18)
        {
          *(this + 1) = v17 + 1;
          goto LABEL_42;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_26;
      }

LABEL_42:
      *(a1 + 44) |= 2u;
      if (*(a1 + 8) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v18 = *(this + 1);
      v9 = *(this + 2);
      if (v18 < v9 && *v18 == 24)
      {
        v10 = v18 + 1;
        *(this + 1) = v10;
LABEL_48:
        v28 = 0;
        if (v10 >= v9 || (v19 = *v10, (v19 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28);
          if (!result)
          {
            return result;
          }

          v19 = v28;
        }

        else
        {
          *(this + 1) = v10 + 1;
        }

        if (v19 <= 0xA)
        {
          *(a1 + 44) |= 4u;
          *(a1 + 20) = v19;
        }

        v20 = *(this + 1);
        if (v20 < *(this + 2) && *v20 == 34)
        {
          *(this + 1) = v20 + 1;
LABEL_58:
          *(a1 + 44) |= 8u;
          if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v21 = *(this + 1);
          v15 = *(this + 2);
          if (v21 < v15 && *v21 == 40)
          {
            v16 = v21 + 1;
            *(this + 1) = v16;
LABEL_64:
            v27 = 0;
            if (v16 >= v15 || (v22 = *v16, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27);
              if (!result)
              {
                return result;
              }

              v22 = v27;
            }

            else
            {
              *(this + 1) = v16 + 1;
            }

            if (v22 <= 2)
            {
              *(a1 + 44) |= 0x10u;
              *(a1 + 32) = v22;
            }

            v23 = *(this + 1);
            v11 = *(this + 2);
            if (v23 < v11 && *v23 == 48)
            {
              v12 = v23 + 1;
              *(this + 1) = v12;
LABEL_74:
              if (v12 >= v11 || (v24 = *v12, v24 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
                if (!result)
                {
                  return result;
                }

                v25 = *(this + 1);
                v11 = *(this + 2);
              }

              else
              {
                *(a1 + 36) = v24;
                v25 = v12 + 1;
                *(this + 1) = v25;
              }

              *(a1 + 44) |= 0x20u;
              if (v25 == v11 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v7 == 3 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_48;
    }

LABEL_26:
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

int *sub_1003B7854(int *result, unsigned int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[11];
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, result[4], a2, a4);
    v6 = v5[11];
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = v5[11];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v5[5], a2, a4);
  v6 = v5[11];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v5[8], a2, a4);
    if ((v5[11] & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = v5[11];
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return result;
  }

LABEL_13:
  v7 = v5[9];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v7, a2, a4);
}

uint64_t sub_1003B7934(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_52;
  }

  if (*(a1 + 44))
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
      v3 = *(a1 + 44);
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
    if ((*(a1 + 44) & 2) == 0)
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
    v3 = *(a1 + 44);
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
    v12 = *(a1 + 20);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = 11;
    }

    else if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
      v3 = *(a1 + 44);
    }

    else
    {
      v13 = 2;
    }

    v4 = (v13 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_24:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_42;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_24;
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
  if ((v3 & 0x10) == 0)
  {
LABEL_25:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_48;
  }

LABEL_42:
  v20 = *(a1 + 32);
  if ((v20 & 0x80000000) != 0)
  {
    v21 = 11;
  }

  else if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 1;
    v3 = *(a1 + 44);
  }

  else
  {
    v21 = 2;
  }

  v4 = (v21 + v4);
  if ((v3 & 0x20) != 0)
  {
LABEL_48:
    v22 = *(a1 + 36);
    if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 1;
    }

    else
    {
      v23 = 2;
    }

    v4 = (v23 + v4);
  }

LABEL_52:
  *(a1 + 40) = v4;
  return v4;
}

void sub_1003B7B04(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003B70C4(a1, lpsrc);
}

void sub_1003B7BA4(uint64_t a1, uint64_t a2)
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
        sub_1018724DC();
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

void sub_1003B7CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003B7CD0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448B88;
  sub_10000FCA0(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003B7D24(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448B88;
  sub_10000FCA0(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003B7DEC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *(result + 16) = 46;
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

uint64_t sub_1003B7E3C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          sub_1018724DC();
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

uint64_t sub_1003B8038(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_1003B80A4(uint64_t a1, unsigned int a2)
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

void sub_1003B817C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003B7BA4(a1, lpsrc);
}

void sub_1003B8204(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    (*(*a1 + 32))(a1);

    sub_1003B7BA4(a1, a2);
  }
}

void sub_1003B8288(uint64_t a1, uint64_t a2)
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
    v5 = *(a2 + 24);
    if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
    {
      sub_101872508();
    }

    *(a1 + 48) |= 1u;
    *(a1 + 24) = v5;
    v4 = *(a2 + 48);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 8);
    *(a1 + 48) |= 2u;
    v8 = *(a1 + 8);
    if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 48);
    if ((v4 & 4) == 0)
    {
LABEL_11:
      if ((v4 & 8) == 0)
      {
        goto LABEL_12;
      }

LABEL_22:
      v11 = *(a2 + 32);
      *(a1 + 48) |= 8u;
      v12 = *(a1 + 32);
      if (v12 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v12, v11);
      v4 = *(a2 + 48);
      if ((v4 & 0x10) == 0)
      {
LABEL_13:
        if ((v4 & 0x20) == 0)
        {
          return;
        }

        goto LABEL_14;
      }

      goto LABEL_25;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_11;
  }

  v9 = *(a2 + 16);
  *(a1 + 48) |= 4u;
  v10 = *(a1 + 16);
  if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v10, v9);
  v4 = *(a2 + 48);
  if ((v4 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_25:
  v13 = *(a2 + 28);
  if ((v13 - 1) >= 0xB)
  {
    sub_101872534();
  }

  *(a1 + 48) |= 0x10u;
  *(a1 + 28) = v13;
  if ((*(a2 + 48) & 0x20) != 0)
  {
LABEL_14:
    v6 = *(a2 + 40);
    *(a1 + 48) |= 0x20u;
    *(a1 + 40) = v6;
  }
}

void sub_1003B84A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1003B84B8(void *result)
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

void sub_1003B8598(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448C00;
  sub_1003B84B8(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003B85EC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448C00;
  sub_1003B84B8(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003B86C0(uint64_t result)
{
  v1 = *(result + 48);
  if (v1)
  {
    *(result + 24) = 47;
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

    if ((*(result + 48) & 4) != 0)
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

    if ((*(result + 48) & 8) != 0)
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

    *(result + 28) = 1;
    *(result + 40) = 0;
  }

  *(result + 48) = 0;
  return result;
}

uint64_t sub_1003B8784(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (v7 == 4)
          {
            if (v8 == 2)
            {
              goto LABEL_54;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v14 = *(this + 1);
              v13 = *(this + 2);
              goto LABEL_60;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v10 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_70;
          }

          goto LABEL_26;
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v25 = 0;
        v11 = *(this + 1);
        if (v11 >= *(this + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25);
          if (!result)
          {
            return result;
          }

          v12 = v25;
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (v12 - 31 < 0x19 || v12 <= 0xE && ((1 << v12) & 0x76B6) != 0)
        {
          if (v12 - 31 >= 0x19 && (v12 > 0xE || ((1 << v12) & 0x76B6) == 0))
          {
            sub_101872508();
          }

          *(a1 + 48) |= 1u;
          *(a1 + 24) = v12;
        }

        v15 = *(this + 1);
        if (v15 < *(this + 2) && *v15 == 18)
        {
          *(this + 1) = v15 + 1;
          goto LABEL_42;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_26;
      }

LABEL_42:
      *(a1 + 48) |= 2u;
      if (*(a1 + 8) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v16 = *(this + 1);
      if (v16 < *(this + 2) && *v16 == 26)
      {
        *(this + 1) = v16 + 1;
LABEL_48:
        *(a1 + 48) |= 4u;
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
LABEL_54:
          *(a1 + 48) |= 8u;
          if (*(a1 + 32) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!result)
          {
            return result;
          }

          v18 = *(this + 1);
          v13 = *(this + 2);
          if (v18 < v13 && *v18 == 40)
          {
            v14 = v18 + 1;
            *(this + 1) = v14;
LABEL_60:
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

            if (v19 - 1 <= 0xA)
            {
              *(a1 + 48) |= 0x10u;
              *(a1 + 28) = v19;
            }

            v20 = *(this + 1);
            v9 = *(this + 2);
            if (v20 < v9 && *v20 == 48)
            {
              v10 = v20 + 1;
              *(this + 1) = v10;
LABEL_70:
              v26 = 0;
              if (v10 >= v9 || (v21 = *v10, (v21 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26);
                if (!result)
                {
                  return result;
                }

                v21 = v26;
                v22 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                v22 = v10 + 1;
                *(this + 1) = v22;
              }

              *(a1 + 40) = v21 != 0;
              *(a1 + 48) |= 0x20u;
              if (v22 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v7 == 3 && v8 == 2)
    {
      goto LABEL_48;
    }

LABEL_26:
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

uint64_t sub_1003B8B78(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 24), a2, a4);
    v6 = *(v5 + 48);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 48);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 28), a2, a4);
    if ((*(v5 + 48) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 48);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return result;
  }

LABEL_13:
  v7 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, v7, a2, a4);
}

uint64_t sub_1003B8C58(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    if (v3)
    {
      v6 = *(a1 + 24);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
        if ((v3 & 2) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(a1 + 48);
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

    v7 = *(a1 + 8);
    v8 = *(v7 + 23);
    v9 = v8;
    v10 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v11 = *(v7 + 23);
    }

    else
    {
      v11 = v10;
    }

    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
      v8 = *(v7 + 23);
      v10 = *(v7 + 8);
      v3 = *(a1 + 48);
      v9 = *(v7 + 23);
    }

    else
    {
      v12 = 1;
    }

    if (v9 < 0)
    {
      v8 = v10;
    }

    v4 += v12 + v8 + 1;
LABEL_22:
    if ((v3 & 4) != 0)
    {
      v13 = *(a1 + 16);
      v14 = *(v13 + 23);
      v15 = v14;
      v16 = *(v13 + 8);
      if ((v14 & 0x80u) == 0)
      {
        v17 = *(v13 + 23);
      }

      else
      {
        v17 = v16;
      }

      if (v17 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
        v14 = *(v13 + 23);
        v16 = *(v13 + 8);
        v3 = *(a1 + 48);
        v15 = *(v13 + 23);
      }

      else
      {
        v18 = 1;
      }

      if (v15 < 0)
      {
        v14 = v16;
      }

      v4 += v18 + v14 + 1;
      if ((v3 & 8) == 0)
      {
LABEL_24:
        if ((v3 & 0x10) == 0)
        {
LABEL_50:
          result = ((v3 >> 4) & 2) + v4;
          goto LABEL_51;
        }

LABEL_44:
        v25 = *(a1 + 28);
        if ((v25 & 0x80000000) != 0)
        {
          v26 = 11;
        }

        else if (v25 >= 0x80)
        {
          v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2) + 1;
          v3 = *(a1 + 48);
        }

        else
        {
          v26 = 2;
        }

        v4 += v26;
        goto LABEL_50;
      }
    }

    else if ((v3 & 8) == 0)
    {
      goto LABEL_24;
    }

    v19 = *(a1 + 32);
    v20 = *(v19 + 23);
    v21 = v20;
    v22 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v23 = *(v19 + 23);
    }

    else
    {
      v23 = v22;
    }

    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2);
      v20 = *(v19 + 23);
      v22 = *(v19 + 8);
      v3 = *(a1 + 48);
      v21 = *(v19 + 23);
    }

    else
    {
      v24 = 1;
    }

    if (v21 < 0)
    {
      v20 = v22;
    }

    v4 += v24 + v20 + 1;
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_44;
  }

  result = 0;
LABEL_51:
  *(a1 + 44) = result;
  return result;
}

void sub_1003B8E30(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003B8288(a1, lpsrc);
}

void sub_1003B8ED0(uint64_t a1, uint64_t a2)
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
        sub_101872560();
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

void sub_1003B8FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003B8FFC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448C78;
  sub_10000FCA0(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003B9050(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448C78;
  sub_10000FCA0(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003B9118(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *(result + 16) = 55;
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

uint64_t sub_1003B9168(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          sub_101872560();
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

uint64_t sub_1003B9364(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  return result;
}

uint64_t sub_1003B93D0(uint64_t a1, unsigned int a2)
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

void sub_1003B94A8(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003B8ED0(a1, lpsrc);
}

uint64_t sub_1003B9548(uint64_t a1, uint64_t a2)
{
  *a1 = off_102448CF0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  sub_1003B95F0(a1, a2);
  return a1;
}

void sub_1003B95F0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v76);
  }

  v4 = *(a2 + 292);
  if (!v4)
  {
    goto LABEL_53;
  }

  if (v4)
  {
    *(a1 + 292) |= 1u;
    v5 = *(a1 + 8);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 8);
    if (!v6)
    {
      v6 = *(qword_102636048 + 8);
    }

    sub_1003A8F54(v5, v6);
    v4 = *(a2 + 292);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  *(a1 + 292) |= 2u;
  v7 = *(a1 + 16);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 16);
  if (!v8)
  {
    v8 = *(qword_102636048 + 16);
  }

  sub_1003AA55C(v7, v8);
  v4 = *(a2 + 292);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_23:
  *(a1 + 292) |= 4u;
  v9 = *(a1 + 24);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 24);
  if (!v10)
  {
    v10 = *(qword_102636048 + 24);
  }

  sub_1003AB074(v9, v10);
  v4 = *(a2 + 292);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_28:
  *(a1 + 292) |= 8u;
  v11 = *(a1 + 32);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 32);
  if (!v12)
  {
    v12 = *(qword_102636048 + 32);
  }

  sub_1003AB6EC(v11, v12);
  v4 = *(a2 + 292);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_38:
    *(a1 + 292) |= 0x20u;
    v15 = *(a1 + 48);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a2 + 48);
    if (!v16)
    {
      v16 = *(qword_102636048 + 48);
    }

    sub_1003AC9A0(v15, v16);
    v4 = *(a2 + 292);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_48;
    }

    goto LABEL_43;
  }

LABEL_33:
  *(a1 + 292) |= 0x10u;
  v13 = *(a1 + 40);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 40);
  if (!v14)
  {
    v14 = *(qword_102636048 + 40);
  }

  sub_1003AC574(v13, v14);
  v4 = *(a2 + 292);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_43:
  *(a1 + 292) |= 0x40u;
  v17 = *(a1 + 56);
  if (!v17)
  {
    operator new();
  }

  v18 = *(a2 + 56);
  if (!v18)
  {
    v18 = *(qword_102636048 + 56);
  }

  sub_1003AE3DC(v17, v18);
  v4 = *(a2 + 292);
  if ((v4 & 0x80) != 0)
  {
LABEL_48:
    *(a1 + 292) |= 0x80u;
    v19 = *(a1 + 64);
    if (!v19)
    {
      operator new();
    }

    v20 = *(a2 + 64);
    if (!v20)
    {
      v20 = *(qword_102636048 + 64);
    }

    sub_1003AFF54(v19, v20);
    v4 = *(a2 + 292);
  }

LABEL_53:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_103;
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 292) |= 0x100u;
    v21 = *(a1 + 72);
    if (!v21)
    {
      operator new();
    }

    v22 = *(a2 + 72);
    if (!v22)
    {
      v22 = *(qword_102636048 + 72);
    }

    sub_1003A9AC4(v21, v22);
    v4 = *(a2 + 292);
    if ((v4 & 0x200) == 0)
    {
LABEL_56:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_73;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_56;
  }

  *(a1 + 292) |= 0x200u;
  v23 = *(a1 + 80);
  if (!v23)
  {
    operator new();
  }

  v24 = *(a2 + 80);
  if (!v24)
  {
    v24 = *(qword_102636048 + 80);
  }

  sub_1003ABB18(v23, v24);
  v4 = *(a2 + 292);
  if ((v4 & 0x400) == 0)
  {
LABEL_57:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_78;
  }

LABEL_73:
  *(a1 + 292) |= 0x400u;
  v25 = *(a1 + 88);
  if (!v25)
  {
    operator new();
  }

  v26 = *(a2 + 88);
  if (!v26)
  {
    v26 = *(qword_102636048 + 88);
  }

  sub_1003B0F44(v25, v26);
  v4 = *(a2 + 292);
  if ((v4 & 0x800) == 0)
  {
LABEL_58:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_83;
  }

LABEL_78:
  *(a1 + 292) |= 0x800u;
  v27 = *(a1 + 96);
  if (!v27)
  {
    operator new();
  }

  v28 = *(a2 + 96);
  if (!v28)
  {
    v28 = *(qword_102636048 + 96);
  }

  sub_1003B1370(v27, v28);
  v4 = *(a2 + 292);
  if ((v4 & 0x1000) == 0)
  {
LABEL_59:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_88;
  }

LABEL_83:
  *(a1 + 292) |= 0x1000u;
  v29 = *(a1 + 104);
  if (!v29)
  {
    operator new();
  }

  v30 = *(a2 + 104);
  if (!v30)
  {
    v30 = *(qword_102636048 + 104);
  }

  sub_1003B179C(v29, v30);
  v4 = *(a2 + 292);
  if ((v4 & 0x2000) == 0)
  {
LABEL_60:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_93;
  }

LABEL_88:
  *(a1 + 292) |= 0x2000u;
  v31 = *(a1 + 112);
  if (!v31)
  {
    operator new();
  }

  v32 = *(a2 + 112);
  if (!v32)
  {
    v32 = *(qword_102636048 + 112);
  }

  sub_1003B1BC8(v31, v32);
  v4 = *(a2 + 292);
  if ((v4 & 0x4000) == 0)
  {
LABEL_61:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_98;
  }

LABEL_93:
  *(a1 + 292) |= 0x4000u;
  v33 = *(a1 + 120);
  if (!v33)
  {
    operator new();
  }

  v34 = *(a2 + 120);
  if (!v34)
  {
    v34 = *(qword_102636048 + 120);
  }

  sub_1003B1FF4(v33, v34);
  v4 = *(a2 + 292);
  if ((v4 & 0x8000) != 0)
  {
LABEL_98:
    *(a1 + 292) |= 0x8000u;
    v35 = *(a1 + 128);
    if (!v35)
    {
      operator new();
    }

    v36 = *(a2 + 128);
    if (!v36)
    {
      v36 = *(qword_102636048 + 128);
    }

    sub_1003B2420(v35, v36);
    v4 = *(a2 + 292);
  }

LABEL_103:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_153;
  }

  if ((v4 & 0x10000) != 0)
  {
    *(a1 + 292) |= 0x10000u;
    v37 = *(a1 + 136);
    if (!v37)
    {
      operator new();
    }

    v38 = *(a2 + 136);
    if (!v38)
    {
      v38 = *(qword_102636048 + 136);
    }

    sub_1003B2B70(v37, v38);
    v4 = *(a2 + 292);
    if ((v4 & 0x20000) == 0)
    {
LABEL_106:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_123;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_106;
  }

  *(a1 + 292) |= 0x20000u;
  v39 = *(a1 + 144);
  if (!v39)
  {
    operator new();
  }

  v40 = *(a2 + 144);
  if (!v40)
  {
    v40 = *(qword_102636048 + 144);
  }

  sub_1003B3418(v39, v40);
  v4 = *(a2 + 292);
  if ((v4 & 0x40000) == 0)
  {
LABEL_107:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_128;
  }

LABEL_123:
  *(a1 + 292) |= 0x40000u;
  v41 = *(a1 + 152);
  if (!v41)
  {
    operator new();
  }

  v42 = *(a2 + 152);
  if (!v42)
  {
    v42 = *(qword_102636048 + 152);
  }

  sub_1003B3C0C(v41, v42);
  v4 = *(a2 + 292);
  if ((v4 & 0x80000) == 0)
  {
LABEL_108:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_133;
  }

LABEL_128:
  *(a1 + 292) |= 0x80000u;
  v43 = *(a1 + 160);
  if (!v43)
  {
    operator new();
  }

  v44 = *(a2 + 160);
  if (!v44)
  {
    v44 = *(qword_102636048 + 160);
  }

  sub_1003B4400(v43, v44);
  v4 = *(a2 + 292);
  if ((v4 & 0x100000) == 0)
  {
LABEL_109:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_138;
  }

LABEL_133:
  *(a1 + 292) |= 0x100000u;
  v45 = *(a1 + 168);
  if (!v45)
  {
    operator new();
  }

  v46 = *(a2 + 168);
  if (!v46)
  {
    v46 = *(qword_102636048 + 168);
  }

  sub_1003B4CD8(v45, v46);
  v4 = *(a2 + 292);
  if ((v4 & 0x200000) == 0)
  {
LABEL_110:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_143;
  }

LABEL_138:
  *(a1 + 292) |= 0x200000u;
  v47 = *(a1 + 176);
  if (!v47)
  {
    operator new();
  }

  v48 = *(a2 + 176);
  if (!v48)
  {
    v48 = *(qword_102636048 + 176);
  }

  sub_1003B54CC(v47, v48);
  v4 = *(a2 + 292);
  if ((v4 & 0x400000) == 0)
  {
LABEL_111:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_148;
  }

LABEL_143:
  *(a1 + 292) |= 0x400000u;
  v49 = *(a1 + 184);
  if (!v49)
  {
    operator new();
  }

  v50 = *(a2 + 184);
  if (!v50)
  {
    v50 = *(qword_102636048 + 184);
  }

  sub_1003B60D0(v49, v50);
  v4 = *(a2 + 292);
  if ((v4 & 0x800000) != 0)
  {
LABEL_148:
    *(a1 + 292) |= 0x800000u;
    v51 = *(a1 + 192);
    if (!v51)
    {
      operator new();
    }

    v52 = *(a2 + 192);
    if (!v52)
    {
      v52 = *(qword_102636048 + 192);
    }

    sub_1003B6A4C(v51, v52);
    v4 = *(a2 + 292);
  }

LABEL_153:
  if (!HIBYTE(v4))
  {
    goto LABEL_203;
  }

  if ((v4 & 0x1000000) != 0)
  {
    *(a1 + 292) |= 0x1000000u;
    v53 = *(a1 + 200);
    if (!v53)
    {
      operator new();
    }

    v54 = *(a2 + 200);
    if (!v54)
    {
      v54 = *(qword_102636048 + 200);
    }

    sub_1003B70C4(v53, v54);
    v4 = *(a2 + 292);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_156:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_173;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_156;
  }

  *(a1 + 292) |= 0x2000000u;
  v55 = *(a1 + 208);
  if (!v55)
  {
    operator new();
  }

  v56 = *(a2 + 208);
  if (!v56)
  {
    v56 = *(qword_102636048 + 208);
  }

  sub_1003B7BA4(v55, v56);
  v4 = *(a2 + 292);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_157:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_178;
  }

LABEL_173:
  *(a1 + 292) |= 0x4000000u;
  v57 = *(a1 + 216);
  if (!v57)
  {
    operator new();
  }

  v58 = *(a2 + 216);
  if (!v58)
  {
    v58 = *(qword_102636048 + 216);
  }

  sub_1003B8288(v57, v58);
  v4 = *(a2 + 292);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_158:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_183;
  }

LABEL_178:
  *(a1 + 292) |= 0x8000000u;
  v59 = *(a1 + 224);
  if (!v59)
  {
    operator new();
  }

  v60 = *(a2 + 224);
  if (!v60)
  {
    v60 = *(qword_102636048 + 224);
  }

  sub_1003BF310(v59, v60);
  v4 = *(a2 + 292);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_159:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_188;
  }

LABEL_183:
  *(a1 + 292) |= 0x10000000u;
  v61 = *(a1 + 232);
  if (!v61)
  {
    operator new();
  }

  v62 = *(a2 + 232);
  if (!v62)
  {
    v62 = *(qword_102636048 + 232);
  }

  sub_1003BF678(v61, v62);
  v4 = *(a2 + 292);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_160:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_193;
  }

LABEL_188:
  *(a1 + 292) |= 0x20000000u;
  v63 = *(a1 + 240);
  if (!v63)
  {
    operator new();
  }

  v64 = *(a2 + 240);
  if (!v64)
  {
    v64 = *(qword_102636048 + 240);
  }

  sub_1003BF780(v63, v64);
  v4 = *(a2 + 292);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_161:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_198;
  }

LABEL_193:
  *(a1 + 292) |= 0x40000000u;
  v65 = *(a1 + 248);
  if (!v65)
  {
    operator new();
  }

  v66 = *(a2 + 248);
  if (!v66)
  {
    v66 = *(qword_102636048 + 248);
  }

  sub_1003BF870(v65, v66);
  if ((*(a2 + 292) & 0x80000000) != 0)
  {
LABEL_198:
    *(a1 + 292) |= 0x80000000;
    v67 = *(a1 + 256);
    if (!v67)
    {
      operator new();
    }

    v68 = *(a2 + 256);
    if (!v68)
    {
      v68 = *(qword_102636048 + 256);
    }

    sub_1003BFA04(v67, v68);
  }

LABEL_203:
  LOBYTE(v69) = *(a2 + 296);
  if (!v69)
  {
    return;
  }

  if (*(a2 + 296))
  {
    *(a1 + 296) |= 1u;
    v70 = *(a1 + 264);
    if (!v70)
    {
      operator new();
    }

    v71 = *(a2 + 264);
    if (!v71)
    {
      v71 = *(qword_102636048 + 264);
    }

    sub_1003BFAF4(v70, v71);
    v69 = *(a2 + 296);
    if ((v69 & 2) == 0)
    {
LABEL_206:
      if ((v69 & 4) == 0)
      {
        return;
      }

      goto LABEL_218;
    }
  }

  else if ((*(a2 + 296) & 2) == 0)
  {
    goto LABEL_206;
  }

  *(a1 + 296) |= 2u;
  v72 = *(a1 + 272);
  if (!v72)
  {
    operator new();
  }

  v73 = *(a2 + 272);
  if (!v73)
  {
    v73 = *(qword_102636048 + 272);
  }

  sub_1003BFBC4(v72, v73);
  if ((*(a2 + 296) & 4) != 0)
  {
LABEL_218:
    *(a1 + 296) |= 4u;
    v74 = *(a1 + 280);
    if (!v74)
    {
      operator new();
    }

    v75 = *(a2 + 280);
    if (!v75)
    {
      v75 = *(qword_102636048 + 280);
    }

    sub_1003B8ED0(v74, v75);
  }
}