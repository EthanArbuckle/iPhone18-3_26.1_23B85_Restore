uint64_t sub_1001416BC(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 180);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
    v6 = *(v5 + 180);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 180);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 180);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 64), a2, a4);
  v6 = *(v5 + 180);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 180);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 40), a3);
  v6 = *(v5 + 180);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 48), a3);
  v6 = *(v5 + 180);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 56), a3);
  v6 = *(v5 + 180);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
  v6 = *(v5 + 180);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 80), a3);
  v6 = *(v5 + 180);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 88), a3);
  v6 = *(v5 + 180);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 96), a3);
  v6 = *(v5 + 180);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 68), a2, a4);
  v6 = *(v5 + 180);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(v5 + 104), a3);
  v6 = *(v5 + 180);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xF, a2, *(v5 + 112), a3);
  v6 = *(v5 + 180);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x10, a2, *(v5 + 120), a3);
  v6 = *(v5 + 180);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x11, a2, *(v5 + 128), a3);
  v6 = *(v5 + 180);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x12, a2, *(v5 + 136), a3);
  if ((*(v5 + 180) & 0x40000) != 0)
  {
LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x13, a2, *(v5 + 144), a3);
  }

LABEL_21:
  if (*(v5 + 160) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x14, *(*(v5 + 152) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 160));
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10014196C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 180))
  {
    v5 = *(this + 6);
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

  v7 = *(this + 45);
  if ((v7 & 2) != 0)
  {
    v8 = *(this + 2);
    *v3 = 17;
    *(v3 + 1) = v8;
    v3 = (v3 + 9);
    v7 = *(this + 45);
  }

  if ((v7 & 4) != 0)
  {
    v9 = *(this + 7);
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

  if ((*(this + 180) & 8) != 0)
  {
    v10 = *(this + 16);
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

  v11 = *(this + 45);
  if ((v11 & 0x10) != 0)
  {
    v12 = *(this + 4);
    *v3 = 41;
    *(v3 + 1) = v12;
    v3 = (v3 + 9);
    v11 = *(this + 45);
    if ((v11 & 0x20) == 0)
    {
LABEL_17:
      if ((v11 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_27;
    }
  }

  else if ((v11 & 0x20) == 0)
  {
    goto LABEL_17;
  }

  v13 = *(this + 5);
  *v3 = 49;
  *(v3 + 1) = v13;
  v3 = (v3 + 9);
  v11 = *(this + 45);
  if ((v11 & 0x40) == 0)
  {
LABEL_18:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

LABEL_27:
  v14 = *(this + 6);
  *v3 = 57;
  *(v3 + 1) = v14;
  v3 = (v3 + 9);
  v11 = *(this + 45);
  if ((v11 & 0x80) == 0)
  {
LABEL_19:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

LABEL_28:
  v15 = *(this + 7);
  *v3 = 65;
  *(v3 + 1) = v15;
  v3 = (v3 + 9);
  v11 = *(this + 45);
  if ((v11 & 0x100) == 0)
  {
LABEL_20:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

LABEL_29:
  v16 = *(this + 9);
  *v3 = 73;
  *(v3 + 1) = v16;
  v3 = (v3 + 9);
  v11 = *(this + 45);
  if ((v11 & 0x200) == 0)
  {
LABEL_21:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

LABEL_30:
  v17 = *(this + 10);
  *v3 = 81;
  *(v3 + 1) = v17;
  v3 = (v3 + 9);
  v11 = *(this + 45);
  if ((v11 & 0x400) == 0)
  {
LABEL_22:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

LABEL_31:
  v18 = *(this + 11);
  *v3 = 89;
  *(v3 + 1) = v18;
  v3 = (v3 + 9);
  v11 = *(this + 45);
  if ((v11 & 0x800) == 0)
  {
LABEL_23:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

LABEL_32:
  v19 = *(this + 12);
  *v3 = 97;
  *(v3 + 1) = v19;
  v3 = (v3 + 9);
  if ((*(this + 45) & 0x1000) == 0)
  {
    goto LABEL_36;
  }

LABEL_33:
  v20 = *(this + 17);
  *v3 = 104;
  if (v20 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v20;
    v3 = (v3 + 2);
  }

LABEL_36:
  v21 = *(this + 45);
  if ((v21 & 0x2000) != 0)
  {
    v31 = *(this + 13);
    *v3 = 113;
    *(v3 + 1) = v31;
    v3 = (v3 + 9);
    v21 = *(this + 45);
    if ((v21 & 0x4000) == 0)
    {
LABEL_38:
      if ((v21 & 0x8000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_57;
    }
  }

  else if ((v21 & 0x4000) == 0)
  {
    goto LABEL_38;
  }

  v32 = *(this + 14);
  *v3 = 121;
  *(v3 + 1) = v32;
  v3 = (v3 + 9);
  v21 = *(this + 45);
  if ((v21 & 0x8000) == 0)
  {
LABEL_39:
    if ((v21 & 0x10000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_58;
  }

LABEL_57:
  v33 = *(this + 15);
  *v3 = 385;
  *(v3 + 2) = v33;
  v3 = (v3 + 10);
  v21 = *(this + 45);
  if ((v21 & 0x10000) == 0)
  {
LABEL_40:
    if ((v21 & 0x20000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_59;
  }

LABEL_58:
  v34 = *(this + 16);
  *v3 = 393;
  *(v3 + 2) = v34;
  v3 = (v3 + 10);
  v21 = *(this + 45);
  if ((v21 & 0x20000) == 0)
  {
LABEL_41:
    if ((v21 & 0x40000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_59:
  v35 = *(this + 17);
  *v3 = 401;
  *(v3 + 2) = v35;
  v3 = (v3 + 10);
  if ((*(this + 45) & 0x40000) != 0)
  {
LABEL_42:
    v22 = *(this + 18);
    *v3 = 409;
    *(v3 + 2) = v22;
    v3 = (v3 + 10);
  }

LABEL_43:
  if (*(this + 40) >= 1)
  {
    v23 = 0;
    do
    {
      v24 = *(*(this + 19) + 8 * v23);
      *v3 = 418;
      v25 = v24[27];
      if (v25 > 0x7F)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v25, v3 + 2, a3);
      }

      else
      {
        *(v3 + 2) = v25;
        v26 = v3 + 3;
      }

      v3 = sub_1001400E4(v24, v26, a3);
      ++v23;
    }

    while (v23 < *(this + 40));
  }

  v29 = *(this + 1);
  v28 = (this + 8);
  v27 = v29;
  if (!v29 || *v27 == v27[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v28, v3, a3);
}

uint64_t sub_100142030(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 180);
  if (v3)
  {
    if (v3)
    {
      v6 = *(a1 + 24);
      if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(a1 + 180);
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
      v7 = v4 + 9;
    }

    else
    {
      v7 = v4;
    }

    if ((v3 & 4) != 0)
    {
      v8 = *(a1 + 28);
      if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
        v3 = *(a1 + 180);
      }

      else
      {
        v9 = 2;
      }

      v7 += v9;
    }

    if ((v3 & 8) != 0)
    {
      v10 = *(a1 + 64);
      if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
        v3 = *(a1 + 180);
      }

      else
      {
        v11 = 2;
      }

      v7 += v11;
    }

    v5 = v7 + 9;
    if ((v3 & 0x10) == 0)
    {
      v5 = v7;
    }

    if ((v3 & 0x20) != 0)
    {
      v5 += 9;
    }

    if ((v3 & 0x40) != 0)
    {
      v5 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      v5 += 9;
    }
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v5 += 9;
    }

    if ((v3 & 0x200) != 0)
    {
      v5 += 9;
    }

    if ((v3 & 0x400) != 0)
    {
      v5 += 9;
    }

    if ((v3 & 0x800) != 0)
    {
      v12 = v5 + 9;
    }

    else
    {
      v12 = v5;
    }

    if ((v3 & 0x1000) != 0)
    {
      v13 = *(a1 + 68);
      if (v13 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
        v3 = *(a1 + 180);
      }

      else
      {
        v14 = 2;
      }

      v12 += v14;
    }

    v5 = v12 + 9;
    if ((v3 & 0x2000) == 0)
    {
      v5 = v12;
    }

    if ((v3 & 0x4000) != 0)
    {
      v5 += 9;
    }

    if ((v3 & 0x8000) != 0)
    {
      v5 += 10;
    }
  }

  v15 = v5 + 10;
  if ((v3 & 0x10000) == 0)
  {
    v15 = v5;
  }

  if ((v3 & 0x20000) != 0)
  {
    v15 += 10;
  }

  if ((v3 & 0x40000) != 0)
  {
    v15 += 10;
  }

  if ((v3 & 0xFF0000) != 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = v5;
  }

  v17 = *(a1 + 160);
  v18 = (v16 + 2 * v17);
  if (v17 >= 1)
  {
    v19 = 0;
    do
    {
      v20 = sub_10014053C(*(*(a1 + 152) + 8 * v19), a2);
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

    while (v19 < *(a1 + 160));
  }

  v23 = *(a1 + 8);
  if (v23 && *v23 != v23[1])
  {
    v18 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v18;
  }

  *(a1 + 176) = v18;
  return v18;
}

uint64_t sub_100142250(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1001408F0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100142324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014233C(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_1001498AC();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_10013F684(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_100142464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014247C(uint64_t result, uint64_t a2)
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

uint64_t sub_100142510()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE140;
}

void sub_1001425A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001425B8(uint64_t a1)
{
  *a1 = off_100995D20;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_100142624(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  sub_100142D2C((a1 + 16), a2 + 16);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1001426AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001426C4(uint64_t *a1)
{
  *a1 = off_100995D20;
  sub_100077C08(a1 + 2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100142728(uint64_t *a1)
{
  sub_1001426C4(a1);

  operator delete();
}

uint64_t sub_100142768(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9EA8;
  if (!qword_1009F9EA8)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9EA8;
  }

  return result;
}

uint64_t sub_1001427FC(uint64_t a1)
{
  result = sub_100077B98(a1 + 16);
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  *(v3 + 9) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return result;
}

uint64_t sub_100142850(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
LABEL_1:
    v6 = *(this + 1);
    if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v6 + 1;
    }

    if (TagFallback == 10)
    {
      while (1)
      {
        v8 = a1[7];
        v9 = a1[6];
        if (v9 >= v8)
        {
          if (v8 == a1[8])
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4), v8 + 1);
            v8 = a1[7];
          }

          a1[7] = v8 + 1;
          sub_100149910();
        }

        v10 = *(a1 + 2);
        a1[6] = v9 + 1;
        v11 = *(v10 + 8 * v9);
        v24 = 0;
        v12 = *(this + 1);
        if (v12 >= *(this + 2) || *v12 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24))
          {
            return 0;
          }
        }

        else
        {
          v24 = *v12;
          *(this + 1) = v12 + 1;
        }

        v13 = *(this + 14);
        v14 = *(this + 15);
        *(this + 14) = v13 + 1;
        if (v13 >= v14)
        {
          return 0;
        }

        v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v24);
        if (!sub_100140DAC(v11, this, v16, v17) || *(this + 36) != 1)
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

        v21 = *(this + 1);
        v22 = *(this + 2);
        if (v21 >= v22 || *v21 != 10)
        {
          if (v21 == v22 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(this + 1) = v21 + 1;
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

uint64_t sub_100142A38(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(*(v5 + 16) + 8 * v6++), a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100142AD4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 6) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(this + 2) + 8 * v5);
      *a2 = 10;
      v7 = v6[44];
      if (v7 > 0x7F)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, a2 + 1, a3);
      }

      else
      {
        *(a2 + 1) = v7;
        v8 = (a2 + 2);
      }

      a2 = sub_10014196C(v6, v8, a3);
      ++v5;
    }

    while (v5 < *(this + 6));
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

uint64_t sub_100142BA0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_100142030(*(*(a1 + 16) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
      }

      else
      {
        v7 = 1;
      }

      v3 = (v6 + v3 + v7);
      ++v4;
    }

    while (v4 < *(a1 + 24));
  }

  v8 = *(a1 + 8);
  if (v8 && *v8 != v8[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 40) = v3;
  return v3;
}

uint64_t sub_100142C40(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100142624(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100142D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100142D2C(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_100149910();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_1001408F0(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_100142E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100142E6C(uint64_t result, uint64_t a2)
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

uint64_t sub_100142F00()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE150;
}

void sub_100142F94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100142FA8(uint64_t a1)
{
  *a1 = off_100995DD0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_10014300C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  v4 = *(a2 + 56);
  if (v4)
  {
    sub_1000778F4((a1 + 48), *(a1 + 56) + v4);
    memcpy((*(a1 + 48) + 8 * *(a1 + 56)), *(a2 + 48), 8 * *(a2 + 56));
    *(a1 + 56) += *(a2 + 56);
  }

  LOBYTE(v5) = *(a2 + 76);
  if (!v5)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 76))
  {
    v8 = *(a2 + 16);
    *(a1 + 76) |= 1u;
    *(a1 + 16) = v8;
    v5 = *(a2 + 76);
    if ((v5 & 2) == 0)
    {
LABEL_8:
      if ((v5 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((*(a2 + 76) & 2) == 0)
  {
    goto LABEL_8;
  }

  v9 = *(a2 + 20);
  *(a1 + 76) |= 2u;
  *(a1 + 20) = v9;
  v5 = *(a2 + 76);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = *(a2 + 24);
  *(a1 + 76) |= 4u;
  *(a1 + 24) = v10;
  v5 = *(a2 + 76);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_18:
    v12 = *(a2 + 40);
    *(a1 + 76) |= 0x10u;
    *(a1 + 40) = v12;
    if ((*(a2 + 76) & 0x40) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_12;
  }

LABEL_17:
  v11 = *(a2 + 32);
  *(a1 + 76) |= 8u;
  *(a1 + 32) = v11;
  v5 = *(a2 + 76);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  if ((v5 & 0x40) != 0)
  {
LABEL_12:
    v6 = *(a2 + 64);
    *(a1 + 76) |= 0x40u;
    *(a1 + 64) = v6;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100143190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001431A8(void *a1)
{
  *a1 = off_100995DD0;
  if (a1[6])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100143220(void *a1)
{
  sub_1001431A8(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001432C4(uint64_t a1)
{
  if (*(a1 + 76))
  {
    *(a1 + 64) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 12) = 0;
  *(result + 17) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1001432F0(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_32;
            }

            v11 = *(this + 1);
            v10 = *(this + 2);
            if (v11 >= v10 || (v12 = *v11, v12 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
              if (!result)
              {
                return result;
              }

              v13 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 16) = v12;
              v13 = v11 + 1;
              *(this + 1) = v13;
            }

            *(a1 + 76) |= 1u;
            if (v13 < v10 && *v13 == 16)
            {
              v15 = v13 + 1;
              *(this + 1) = v15;
              goto LABEL_41;
            }
          }

          else
          {
            if (v8 != 2)
            {
              if (v8 != 3 || v9 != 1)
              {
                goto LABEL_32;
              }

              goto LABEL_49;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_32;
            }

            v15 = *(this + 1);
            v10 = *(this + 2);
LABEL_41:
            if (v15 >= v10 || (v16 = *v15, v16 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
              if (!result)
              {
                return result;
              }

              v17 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 20) = v16;
              v17 = v15 + 1;
              *(this + 1) = v17;
            }

            *(a1 + 76) |= 2u;
            if (v17 < v10 && *v17 == 25)
            {
              *(this + 1) = v17 + 1;
LABEL_49:
              v32[0] = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 24) = v32[0];
              *(a1 + 76) |= 4u;
              v18 = *(this + 1);
              if (v18 < *(this + 2) && *v18 == 33)
              {
                *(this + 1) = v18 + 1;
                goto LABEL_53;
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
          if (v9 != 1)
          {
            goto LABEL_32;
          }

LABEL_53:
          v32[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v32[0];
          *(a1 + 76) |= 8u;
          v19 = *(this + 1);
          if (v19 < *(this + 2) && *v19 == 41)
          {
            *(this + 1) = v19 + 1;
LABEL_57:
            v32[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 40) = v32[0];
            *(a1 + 76) |= 0x10u;
            v20 = *(this + 1);
            if (v20 < *(this + 2) && *v20 == 49)
            {
LABEL_60:
              *(this + 1) = v20 + 1;
              goto LABEL_61;
            }
          }
        }

        else
        {
          if (v8 == 5 && v9 == 1)
          {
            goto LABEL_57;
          }

LABEL_32:
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
        break;
      }

      if (v9 != 1)
      {
        if (v9 == 2)
        {
          result = sub_100063F88(this, a1 + 48);
          if (!result)
          {
            return result;
          }

          goto LABEL_77;
        }

        goto LABEL_32;
      }

LABEL_61:
      v32[0] = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
      {
        return 0;
      }

      v21 = v32[0];
      v22 = *(a1 + 56);
      if (v22 == *(a1 + 60))
      {
        sub_1000778F4((a1 + 48), v22 + 1);
        v22 = *(a1 + 56);
      }

      v23 = *(a1 + 48);
      v24 = v22 + 1;
      *(a1 + 56) = v22 + 1;
      *(v23 + 8 * v22) = v21;
      v25 = *(this + 1);
      v26 = *(this + 4) - v25;
      if (v26 >= 1)
      {
        v27 = v26 / 9u;
        v28 = v27 >= *(a1 + 60) - v24 ? *(a1 + 60) - v24 : v27;
        if (v28 >= 1)
        {
          v29 = 0;
          while (*v25 == 49)
          {
            v30 = *(v25 + 1);
            if (v24 >= *(a1 + 60))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v32);
              v24 = *(a1 + 56);
              v23 = *(a1 + 48);
            }

            *(a1 + 56) = v24 + 1;
            *(v23 + 8 * v24) = v30;
            ++v29;
            v25 += 9;
            ++v24;
            if (v28 == v29)
            {
              v29 = v28;
              goto LABEL_76;
            }
          }

          if (!v29)
          {
            goto LABEL_77;
          }

LABEL_76:
          wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v29);
        }
      }

LABEL_77:
      v20 = *(this + 1);
      if (v20 < *(this + 2))
      {
        v31 = *v20;
        if (v31 == 49)
        {
          goto LABEL_60;
        }

        if (v31 == 57)
        {
          *(this + 1) = v20 + 1;
          goto LABEL_81;
        }
      }
    }

    if (v8 != 7 || v9 != 1)
    {
      goto LABEL_32;
    }

LABEL_81:
    v32[0] = 0;
    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
    {
      return 0;
    }

    *(a1 + 64) = v32[0];
    *(a1 + 76) |= 0x40u;
    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

void sub_100143798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001437B0(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 76);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 76);
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
  v6 = *(v5 + 76);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 76);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  if ((*(v5 + 76) & 0x10) != 0)
  {
LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  }

LABEL_7:
  if (*(v5 + 56) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(*(v5 + 48) + 8 * v7++), a3);
    }

    while (v7 < *(v5 + 56));
  }

  if ((*(v5 + 76) & 0x40) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 64), a3);
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

_BYTE *sub_1001438F0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3)
{
  if (*(this + 76))
  {
    v4 = *(this + 4);
    *a2 = 8;
    if (v4 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v4, a2 + 1, a3);
    }

    else
    {
      a2[1] = v4;
      a2 += 2;
    }
  }

  if ((*(this + 76) & 2) != 0)
  {
    v5 = *(this + 5);
    *a2 = 16;
    if (v5 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, a2 + 1, a3);
    }

    else
    {
      a2[1] = v5;
      a2 += 2;
    }
  }

  v6 = *(this + 19);
  if ((v6 & 4) != 0)
  {
    v15 = *(this + 3);
    *a2 = 25;
    *(a2 + 1) = v15;
    a2 += 9;
    v6 = *(this + 19);
    if ((v6 & 8) == 0)
    {
LABEL_11:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_11;
  }

  v16 = *(this + 4);
  *a2 = 33;
  *(a2 + 1) = v16;
  a2 += 9;
  if ((*(this + 19) & 0x10) != 0)
  {
LABEL_12:
    v7 = *(this + 5);
    *a2 = 41;
    *(a2 + 1) = v7;
    a2 += 9;
  }

LABEL_13:
  if (*(this + 14) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(this + 6) + 8 * v8);
      *a2 = 49;
      *(a2 + 1) = v9;
      a2 += 9;
      ++v8;
    }

    while (v8 < *(this + 14));
  }

  if ((*(this + 76) & 0x40) != 0)
  {
    v10 = *(this + 8);
    *a2 = 57;
    *(a2 + 1) = v10;
    a2 += 9;
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

uint64_t sub_100143B84(_DWORD *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 76);
  if (!*(a1 + 76))
  {
    goto LABEL_22;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_9:
    v6 = a1[5];
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = a1[19];
    }

    else
    {
      v7 = 2;
    }

    v4 += v7;
    goto LABEL_13;
  }

  v5 = a1[4];
  if (v5 < 0x80)
  {
    v4 = 2;
    if ((v3 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
  v3 = a1[19];
  if ((v3 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_13:
  v8 = v4 + 9;
  if ((v3 & 4) == 0)
  {
    v8 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v8 += 9;
  }

  if ((v3 & 0x10) != 0)
  {
    v8 += 9;
  }

  if ((v3 & 0x40) != 0)
  {
    v3 = v8 + 9;
  }

  else
  {
    v3 = v8;
  }

LABEL_22:
  v9 = *(a1 + 1);
  v10 = (9 * a1[14] + v3);
  if (v9 && *v9 != v9[1])
  {
    v10 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 2), a2) + v10;
  }

  a1[18] = v10;
  return v10;
}

uint64_t sub_100143C6C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10014300C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100143D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100143D58(uint64_t result, uint64_t a2)
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

uint64_t sub_100143DEC()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE160;
}

void sub_100143E80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100143E94(uint64_t a1)
{
  *a1 = off_100995E80;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_100143F00(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  sub_100144608((a1 + 16), a2 + 16);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100143F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100143FA0(uint64_t *a1)
{
  *a1 = off_100995E80;
  sub_100077C08(a1 + 2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100144004(uint64_t *a1)
{
  sub_100143FA0(a1);

  operator delete();
}

uint64_t sub_100144044(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9EB8;
  if (!qword_1009F9EB8)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9EB8;
  }

  return result;
}

uint64_t sub_1001440D8(uint64_t a1)
{
  result = sub_100077B98(a1 + 16);
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  *(v3 + 9) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return result;
}

uint64_t sub_10014412C(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
LABEL_1:
    v6 = *(this + 1);
    if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v6 + 1;
    }

    if (TagFallback == 10)
    {
      while (1)
      {
        v8 = a1[7];
        v9 = a1[6];
        if (v9 >= v8)
        {
          if (v8 == a1[8])
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4), v8 + 1);
            v8 = a1[7];
          }

          a1[7] = v8 + 1;
          sub_100149974();
        }

        v10 = *(a1 + 2);
        a1[6] = v9 + 1;
        v11 = *(v10 + 8 * v9);
        v24 = 0;
        v12 = *(this + 1);
        if (v12 >= *(this + 2) || *v12 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24))
          {
            return 0;
          }
        }

        else
        {
          v24 = *v12;
          *(this + 1) = v12 + 1;
        }

        v13 = *(this + 14);
        v14 = *(this + 15);
        *(this + 14) = v13 + 1;
        if (v13 >= v14)
        {
          return 0;
        }

        v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v24);
        if (!sub_1001432F0(v11, this, v16, v17) || *(this + 36) != 1)
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

        v21 = *(this + 1);
        v22 = *(this + 2);
        if (v21 >= v22 || *v21 != 10)
        {
          if (v21 == v22 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(this + 1) = v21 + 1;
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

uint64_t sub_100144314(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(*(v5 + 16) + 8 * v6++), a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001443B0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 6) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(this + 2) + 8 * v5);
      *a2 = 10;
      v7 = v6[18];
      if (v7 > 0x7F)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, a2 + 1, a3);
      }

      else
      {
        *(a2 + 1) = v7;
        v8 = a2 + 2;
      }

      a2 = sub_1001438F0(v6, v8, a3);
      ++v5;
    }

    while (v5 < *(this + 6));
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

uint64_t sub_10014447C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_100143B84(*(*(a1 + 16) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
      }

      else
      {
        v7 = 1;
      }

      v3 = (v6 + v3 + v7);
      ++v4;
    }

    while (v4 < *(a1 + 24));
  }

  v8 = *(a1 + 8);
  if (v8 && *v8 != v8[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 40) = v3;
  return v3;
}

uint64_t sub_10014451C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100143F00(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001445F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100144608(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_100149974();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_10014300C(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_100144730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100144748(uint64_t result, uint64_t a2)
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

uint64_t sub_1001447DC()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE170;
}

void sub_100144870(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100144884(uint64_t a1)
{
  *a1 = off_100995F30;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

uint64_t sub_1001448F0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 96);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 16);
    *(a1 + 96) |= 1u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 96);
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
  *(a1 + 96) |= 2u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 96);
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
  v10 = *(a2 + 28);
  *(a1 + 96) |= 4u;
  *(a1 + 28) = v10;
  v4 = *(a2 + 96);
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
  v11 = *(a2 + 88);
  *(a1 + 96) |= 8u;
  *(a1 + 88) = v11;
  v4 = *(a2 + 96);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v13 = *(a2 + 40);
    *(a1 + 96) |= 0x20u;
    *(a1 + 40) = v13;
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

    goto LABEL_25;
  }

LABEL_23:
  v12 = *(a2 + 32);
  *(a1 + 96) |= 0x10u;
  *(a1 + 32) = v12;
  v4 = *(a2 + 96);
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
  v14 = *(a2 + 48);
  *(a1 + 96) |= 0x40u;
  *(a1 + 48) = v14;
  v4 = *(a2 + 96);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 56);
    *(a1 + 96) |= 0x80u;
    *(a1 + 56) = v5;
    v4 = *(a2 + 96);
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
    v16 = *(a2 + 72);
    *(a1 + 96) |= 0x200u;
    *(a1 + 72) = v16;
    if ((*(a2 + 96) & 0x400) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_17;
  }

  v15 = *(a2 + 64);
  *(a1 + 96) |= 0x100u;
  *(a1 + 64) = v15;
  v4 = *(a2 + 96);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_28;
  }

LABEL_16:
  if ((v4 & 0x400) != 0)
  {
LABEL_17:
    v6 = *(a2 + 80);
    *(a1 + 96) |= 0x400u;
    *(a1 + 80) = v6;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100144ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100144AF4(uint64_t a1)
{
  *a1 = off_100995F30;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100144B48(uint64_t a1)
{
  *a1 = off_100995F30;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_100144BB8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9EC0;
  if (!qword_1009F9EC0)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9EC0;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100144C4C(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    *(a1 + 88) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 22) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100144C8C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

              v11 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_33;
            }

            if (v9 != 1)
            {
              goto LABEL_47;
            }

            v28 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v28) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 16) = v28;
            *(a1 + 96) |= 1u;
            v12 = *(this + 1);
            v10 = *(this + 2);
            if (v12 < v10 && *v12 == 16)
            {
              v11 = v12 + 1;
              *(this + 1) = v11;
LABEL_33:
              if (v11 >= v10 || (v13 = *v11, v13 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
                if (!result)
                {
                  return result;
                }

                v14 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                *(a1 + 24) = v13;
                v14 = v11 + 1;
                *(this + 1) = v14;
              }

              *(a1 + 96) |= 2u;
              if (v14 < v10 && *v14 == 24)
              {
                v16 = v14 + 1;
                *(this + 1) = v16;
LABEL_55:
                if (v16 >= v10 || (v18 = *v16, v18 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
                  if (!result)
                  {
                    return result;
                  }

                  v19 = *(this + 1);
                  v10 = *(this + 2);
                }

                else
                {
                  *(a1 + 28) = v18;
                  v19 = v16 + 1;
                  *(this + 1) = v19;
                }

                *(a1 + 96) |= 4u;
                if (v19 < v10 && *v19 == 32)
                {
                  v15 = v19 + 1;
                  *(this + 1) = v15;
                  goto LABEL_63;
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

              v16 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_55;
            }

            if (v8 != 4)
            {
              if (v8 != 5 || v9 != 1)
              {
                goto LABEL_47;
              }

              goto LABEL_71;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_47;
            }

            v15 = *(this + 1);
            v10 = *(this + 2);
LABEL_63:
            if (v15 >= v10 || (v20 = *v15, v20 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 88));
              if (!result)
              {
                return result;
              }

              v21 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 88) = v20;
              v21 = v15 + 1;
              *(this + 1) = v21;
            }

            *(a1 + 96) |= 8u;
            if (v21 < v10 && *v21 == 41)
            {
              *(this + 1) = v21 + 1;
LABEL_71:
              v28 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v28) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 32) = v28;
              *(a1 + 96) |= 0x10u;
              v22 = *(this + 1);
              if (v22 < *(this + 2) && *v22 == 49)
              {
                *(this + 1) = v22 + 1;
LABEL_75:
                v28 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v28) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 40) = v28;
                *(a1 + 96) |= 0x20u;
                v23 = *(this + 1);
                if (v23 < *(this + 2) && *v23 == 57)
                {
                  *(this + 1) = v23 + 1;
                  goto LABEL_79;
                }
              }
            }
          }
        }

        if (TagFallback >> 3 <= 8)
        {
          break;
        }

        if (v8 == 9)
        {
          if (v9 != 1)
          {
            goto LABEL_47;
          }

LABEL_87:
          v28 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v28) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 64) = v28;
          *(a1 + 96) |= 0x100u;
          v26 = *(this + 1);
          if (v26 < *(this + 2) && *v26 == 81)
          {
            *(this + 1) = v26 + 1;
LABEL_91:
            v28 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v28) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 72) = v28;
            *(a1 + 96) |= 0x200u;
            v27 = *(this + 1);
            if (v27 < *(this + 2) && *v27 == 89)
            {
              *(this + 1) = v27 + 1;
              goto LABEL_95;
            }
          }
        }

        else
        {
          if (v8 == 10)
          {
            if (v9 == 1)
            {
              goto LABEL_91;
            }

            goto LABEL_47;
          }

          if (v8 != 11 || v9 != 1)
          {
            goto LABEL_47;
          }

LABEL_95:
          v28 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v28) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 80) = v28;
          *(a1 + 96) |= 0x400u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (v8 == 6)
      {
        if (v9 != 1)
        {
          goto LABEL_47;
        }

        goto LABEL_75;
      }

      if (v8 != 7)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_47;
      }

LABEL_79:
      v28 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v28) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 48) = v28;
      *(a1 + 96) |= 0x40u;
      v24 = *(this + 1);
      if (v24 < *(this + 2) && *v24 == 65)
      {
        *(this + 1) = v24 + 1;
LABEL_83:
        v28 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v28) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 56) = v28;
        *(a1 + 96) |= 0x80u;
        v25 = *(this + 1);
        if (v25 < *(this + 2) && *v25 == 73)
        {
          *(this + 1) = v25 + 1;
          goto LABEL_87;
        }
      }
    }

    if (v8 == 8 && v9 == 1)
    {
      goto LABEL_83;
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

uint64_t sub_100145178(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_21;
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

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 88), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 40), a3);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 48), a3);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 56), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_28:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 72), a3);
    if ((*(v5 + 96) & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 64), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_28;
  }

LABEL_11:
  if ((v6 & 0x400) != 0)
  {
LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 80), a3);
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

uint64_t sub_100145308(wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *(this + 24);
  if (v4)
  {
    v5 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v5;
    a2 += 9;
    v4 = *(this + 24);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(this + 6);
    *a2 = 16;
    if (v6 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v6;
      a2 += 2;
    }
  }

  if ((*(this + 96) & 4) != 0)
  {
    v7 = *(this + 7);
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
  }

  if ((*(this + 96) & 8) != 0)
  {
    v8 = *(this + 22);
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
  }

  v9 = *(this + 24);
  if ((v9 & 0x10) != 0)
  {
    v15 = *(this + 4);
    *a2 = 41;
    *(a2 + 1) = v15;
    a2 += 9;
    v9 = *(this + 24);
    if ((v9 & 0x20) == 0)
    {
LABEL_17:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_31;
    }
  }

  else if ((v9 & 0x20) == 0)
  {
    goto LABEL_17;
  }

  v16 = *(this + 5);
  *a2 = 49;
  *(a2 + 1) = v16;
  a2 += 9;
  v9 = *(this + 24);
  if ((v9 & 0x40) == 0)
  {
LABEL_18:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_32;
  }

LABEL_31:
  v17 = *(this + 6);
  *a2 = 57;
  *(a2 + 1) = v17;
  a2 += 9;
  v9 = *(this + 24);
  if ((v9 & 0x80) == 0)
  {
LABEL_19:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_33;
  }

LABEL_32:
  v18 = *(this + 7);
  *a2 = 65;
  *(a2 + 1) = v18;
  a2 += 9;
  v9 = *(this + 24);
  if ((v9 & 0x100) == 0)
  {
LABEL_20:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_21;
    }

LABEL_34:
    v20 = *(this + 9);
    *a2 = 81;
    *(a2 + 1) = v20;
    a2 += 9;
    if ((*(this + 24) & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_33:
  v19 = *(this + 8);
  *a2 = 73;
  *(a2 + 1) = v19;
  a2 += 9;
  v9 = *(this + 24);
  if ((v9 & 0x200) != 0)
  {
    goto LABEL_34;
  }

LABEL_21:
  if ((v9 & 0x400) != 0)
  {
LABEL_22:
    v10 = *(this + 10);
    *a2 = 89;
    *(a2 + 1) = v10;
    a2 += 9;
  }

LABEL_23:
  v13 = *(this + 1);
  v12 = (this + 8);
  v11 = v13;
  if (!v13 || *v11 == v11[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v12, a2, a3);
}

uint64_t sub_1001456C4(unsigned int *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[24];
  if (!v3)
  {
    v5 = 0;
    goto LABEL_27;
  }

  v4 = ((v3 << 31) >> 31) & 9;
  if ((v3 & 2) == 0)
  {
    if ((v3 & 4) == 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    v8 = a1[7];
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = a1[24];
    }

    else
    {
      v9 = 2;
    }

    v4 += v9;
    if ((v3 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v6 = a1[6];
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = a1[24];
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
  if ((v3 & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((v3 & 8) != 0)
  {
LABEL_15:
    v10 = a1[22];
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
      v3 = a1[24];
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
  }

LABEL_19:
  v5 = v4 + 9;
  if ((v3 & 0x10) == 0)
  {
    v5 = v4;
  }

  if ((v3 & 0x20) != 0)
  {
    v5 += 9;
  }

  if ((v3 & 0x40) != 0)
  {
    v5 += 9;
  }

  if ((v3 & 0x80) != 0)
  {
    v5 += 9;
  }

LABEL_27:
  v12 = v5 + 9;
  if ((v3 & 0x100) == 0)
  {
    v12 = v5;
  }

  if ((v3 & 0x200) != 0)
  {
    v12 += 9;
  }

  if ((v3 & 0x400) != 0)
  {
    v12 += 9;
  }

  if ((v3 & 0xFF00) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = v5;
  }

  v14 = *(a1 + 1);
  if (v14 && *v14 != v14[1])
  {
    v13 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 2), a2) + v13;
  }

  a1[23] = v13;
  return v13;
}

uint64_t sub_10014580C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1001448F0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001458E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001458F8(uint64_t result, uint64_t a2)
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

uint64_t sub_10014598C()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE180;
}

void sub_100145A20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100145A34(uint64_t a1)
{
  *a1 = off_100995FE0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_100145A9C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 56);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 56))
  {
    v7 = *(a2 + 16);
    *(a1 + 56) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 56);
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

  else if ((*(a2 + 56) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 48);
  *(a1 + 56) |= 2u;
  *(a1 + 48) = v8;
  v4 = *(a2 + 56);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v10 = *(a2 + 32);
    *(a1 + 56) |= 8u;
    *(a1 + 32) = v10;
    if ((*(a2 + 56) & 0x10) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_9;
  }

LABEL_13:
  v9 = *(a2 + 24);
  *(a1 + 56) |= 4u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 56);
  if ((v4 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v4 & 0x10) != 0)
  {
LABEL_9:
    v5 = *(a2 + 40);
    *(a1 + 56) |= 0x10u;
    *(a1 + 40) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100145BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100145BD4(uint64_t a1)
{
  *a1 = off_100995FE0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100145C28(uint64_t a1)
{
  *a1 = off_100995FE0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_100145C98(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9EC8;
  if (!qword_1009F9EC8)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9EC8;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100145D2C(uint64_t a1)
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

uint64_t sub_100145D54(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (v9 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_36;
        }

        if (v8 == 4)
        {
          if (v9 != 1)
          {
            goto LABEL_21;
          }

LABEL_40:
          *v18 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v18) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = *v18;
          *(a1 + 56) |= 8u;
          v17 = *(this + 1);
          if (v17 < *(this + 2) && *v17 == 41)
          {
            *(this + 1) = v17 + 1;
            goto LABEL_44;
          }
        }

        else
        {
          if (v8 != 5 || v9 != 1)
          {
            goto LABEL_21;
          }

LABEL_44:
          *v18 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v18) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 40) = *v18;
          *(a1 + 56) |= 0x10u;
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

      if (v9 != 1)
      {
        goto LABEL_21;
      }

      *v18 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v18) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = *v18;
      *(a1 + 56) |= 1u;
      v12 = *(this + 1);
      v10 = *(this + 2);
      if (v12 < v10 && *v12 == 16)
      {
        v11 = v12 + 1;
        *(this + 1) = v11;
LABEL_28:
        v18[0] = 0;
        if (v11 >= v10 || (v13 = *v11, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v18);
          if (!result)
          {
            return result;
          }

          v13 = v18[0];
          v14 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          v14 = v11 + 1;
          *(this + 1) = v14;
        }

        *(a1 + 48) = v13 != 0;
        *(a1 + 56) |= 2u;
        if (v14 < v10 && *v14 == 25)
        {
          *(this + 1) = v14 + 1;
LABEL_36:
          *v18 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v18) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = *v18;
          *(a1 + 56) |= 4u;
          v16 = *(this + 1);
          if (v16 < *(this + 2) && *v16 == 33)
          {
            *(this + 1) = v16 + 1;
            goto LABEL_40;
          }
        }
      }
    }

    if (v8 == 2 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_28;
    }

LABEL_21:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_100145FF4(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 48), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
    if ((*(v5 + 56) & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 56);
  if ((v6 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v6 & 0x10) != 0)
  {
LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  }

LABEL_7:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

uint64_t sub_1001460DC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    v9 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v9;
    a2 += 9;
    v3 = *(a1 + 56);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(a1 + 48);
  *a2 = 16;
  *(a2 + 1) = v10;
  a2 += 2;
  v3 = *(a1 + 56);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_14:
    v12 = *(a1 + 32);
    *a2 = 33;
    *(a2 + 1) = v12;
    a2 += 9;
    if ((*(a1 + 56) & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v11 = *(a1 + 24);
  *a2 = 25;
  *(a2 + 1) = v11;
  a2 += 9;
  v3 = *(a1 + 56);
  if ((v3 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v3 & 0x10) != 0)
  {
LABEL_6:
    v4 = *(a1 + 40);
    *a2 = 41;
    *(a2 + 1) = v4;
    a2 += 9;
  }

LABEL_7:
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

uint64_t sub_10014627C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 56);
  if (*(a1 + 56))
  {
    v4 = (v3 << 31 >> 31) & 9 | v3 & 2;
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

  *(a1 + 52) = v5;
  return v5;
}

uint64_t sub_10014630C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100145A9C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001463E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001463F8(uint64_t result, uint64_t a2)
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

uint64_t sub_10014648C()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE190;
}

void sub_100146520(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100146534(uint64_t a1)
{
  *a1 = off_100996090;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 20) = 0;
  *(a1 + 16) = 0;
  return a1;
}

uint64_t sub_100146594(uint64_t a1, _BYTE *a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = a2[24];
  if (v4)
  {
    if (a2[24])
    {
      v5 = a2[16];
      *(a1 + 24) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = a2[17];
      *(a1 + 24) |= 2u;
      *(a1 + 17) = v6;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10014664C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100146664(uint64_t a1)
{
  *a1 = off_100996090;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1001466B8(uint64_t a1)
{
  *a1 = off_100996090;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_100146728(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9ED0;
  if (!qword_1009F9ED0)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9ED0;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001467BC(uint64_t a1)
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

uint64_t sub_1001467DC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

      *(a1 + 16) = v10 != 0;
      *(a1 + 24) |= 1u;
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

        *(a1 + 17) = v13 != 0;
        *(a1 + 24) |= 2u;
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

uint64_t sub_100146984(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 17), a2, a4);
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

uint64_t sub_100146A10(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(a1 + 16);
    *a2 = 8;
    *(a2 + 1) = v4;
    a2 = (a2 + 2);
    v3 = *(a1 + 24);
  }

  if ((v3 & 2) != 0)
  {
    v5 = *(a1 + 17);
    *a2 = 16;
    *(a2 + 1) = v5;
    a2 = (a2 + 2);
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (!v8 || *v7 == v7[1])
  {
    return a2;
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v6, a2, a3);
  }
}

uint64_t sub_100146A68(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  if (*(v3 + 4))
  {
    v6 = 2 * (*(v3 + 4) & 1) + (*(v3 + 4) & 2u);
  }

  else
  {
    v6 = 0;
  }

  if (v4 && *v4 != v4[1])
  {
    v6 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v3, a2) + v6;
  }

  *(a1 + 20) = v6;
  return v6;
}

uint64_t sub_100146AC4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100146594(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100146B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100146BB0(uint64_t result, uint64_t a2)
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

uint64_t sub_100146C44()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE1A0;
}

void sub_100146CD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100146CEC(uint64_t a1)
{
  *a1 = off_100996140;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 61) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  return a1;
}

uint64_t sub_100146D64(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  v4 = *(a2 + 104);
  if (v4)
  {
    sub_100077844((a1 + 96), *(a1 + 104) + v4);
    memcpy((*(a1 + 96) + 4 * *(a1 + 104)), *(a2 + 96), 4 * *(a2 + 104));
    *(a1 + 104) += *(a2 + 104);
  }

  v5 = *(a2 + 120);
  if (v5)
  {
    sub_1000778F4((a1 + 112), *(a1 + 120) + v5);
    memcpy((*(a1 + 112) + 8 * *(a1 + 120)), *(a2 + 112), 8 * *(a2 + 120));
    *(a1 + 120) += *(a2 + 120);
  }

  v6 = *(a2 + 136);
  if (v6)
  {
    sub_1000778F4((a1 + 128), *(a1 + 136) + v6);
    memcpy((*(a1 + 128) + 8 * *(a1 + 136)), *(a2 + 128), 8 * *(a2 + 136));
    *(a1 + 136) += *(a2 + 136);
  }

  v7 = *(a2 + 152);
  if (v7)
  {
    sub_1000778F4((a1 + 144), *(a1 + 152) + v7);
    memcpy((*(a1 + 144) + 8 * *(a1 + 152)), *(a2 + 144), 8 * *(a2 + 152));
    *(a1 + 152) += *(a2 + 152);
  }

  v8 = *(a2 + 164);
  if (!v8)
  {
    goto LABEL_21;
  }

  if (v8)
  {
    v12 = *(a2 + 16);
    *(a1 + 164) |= 1u;
    *(a1 + 16) = v12;
    v8 = *(a2 + 164);
    if ((v8 & 2) == 0)
    {
LABEL_14:
      if ((v8 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_14;
  }

  v13 = *(a2 + 24);
  *(a1 + 164) |= 2u;
  *(a1 + 24) = v13;
  v8 = *(a2 + 164);
  if ((v8 & 4) == 0)
  {
LABEL_15:
    if ((v8 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_30:
  v14 = *(a2 + 28);
  *(a1 + 164) |= 4u;
  *(a1 + 28) = v14;
  v8 = *(a2 + 164);
  if ((v8 & 8) == 0)
  {
LABEL_16:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_31:
  v15 = *(a2 + 72);
  *(a1 + 164) |= 8u;
  *(a1 + 72) = v15;
  v8 = *(a2 + 164);
  if ((v8 & 0x10) == 0)
  {
LABEL_17:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_18;
    }

LABEL_33:
    v17 = *(a2 + 40);
    *(a1 + 164) |= 0x20u;
    *(a1 + 40) = v17;
    v8 = *(a2 + 164);
    if ((v8 & 0x40) == 0)
    {
LABEL_19:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    goto LABEL_34;
  }

LABEL_32:
  v16 = *(a2 + 32);
  *(a1 + 164) |= 0x10u;
  *(a1 + 32) = v16;
  v8 = *(a2 + 164);
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_33;
  }

LABEL_18:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_34:
  v18 = *(a2 + 48);
  *(a1 + 164) |= 0x40u;
  *(a1 + 48) = v18;
  v8 = *(a2 + 164);
  if ((v8 & 0x80) != 0)
  {
LABEL_20:
    v9 = *(a2 + 56);
    *(a1 + 164) |= 0x80u;
    *(a1 + 56) = v9;
    v8 = *(a2 + 164);
  }

LABEL_21:
  if ((v8 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v8 & 0x100) != 0)
  {
    v19 = *(a2 + 64);
    *(a1 + 164) |= 0x100u;
    *(a1 + 64) = v19;
    v8 = *(a2 + 164);
    if ((v8 & 0x200) == 0)
    {
LABEL_24:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_25;
      }

LABEL_38:
      v21 = *(a2 + 88);
      *(a1 + 164) |= 0x400u;
      *(a1 + 88) = v21;
      if ((*(a2 + 164) & 0x8000) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_26;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_24;
  }

  v20 = *(a2 + 80);
  *(a1 + 164) |= 0x200u;
  *(a1 + 80) = v20;
  v8 = *(a2 + 164);
  if ((v8 & 0x400) != 0)
  {
    goto LABEL_38;
  }

LABEL_25:
  if ((v8 & 0x8000) != 0)
  {
LABEL_26:
    v10 = *(a2 + 76);
    *(a1 + 164) |= 0x8000u;
    *(a1 + 76) = v10;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100147080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100147098(void *a1)
{
  *a1 = off_100996140;
  if (a1[18])
  {
    operator delete[]();
  }

  if (a1[16])
  {
    operator delete[]();
  }

  if (a1[14])
  {
    operator delete[]();
  }

  if (a1[12])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100147150(void *a1)
{
  sub_100147098(a1);

  operator delete();
}

uint64_t sub_100147190(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9ED8;
  if (!qword_1009F9ED8)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9ED8;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100147224(uint64_t a1)
{
  v1 = *(a1 + 164);
  if (v1)
  {
    *(a1 + 72) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 64) = 0;
    *(a1 + 76) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 24) = 0;
  *(result + 28) = 0;
  *(result + 32) = 0;
  *(result + 36) = 0;
  *(result + 39) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100147278(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
LABEL_1:
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
          goto LABEL_52;
        }

        *v78 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v78) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v78;
        *(a1 + 164) |= 1u;
        v10 = *(this + 1);
        v9 = *(this + 2);
        if (v10 >= v9 || *v10 != 16)
        {
          continue;
        }

        v11 = v10 + 1;
        *(this + 1) = v11;
        goto LABEL_38;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v11 = *(this + 1);
        v9 = *(this + 2);
LABEL_38:
        if (v11 >= v9 || (v17 = *v11, v17 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v18 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v17;
          v18 = v11 + 1;
          *(this + 1) = v18;
        }

        *(a1 + 164) |= 2u;
        if (v18 >= v9 || *v18 != 24)
        {
          continue;
        }

        v13 = v18 + 1;
        *(this + 1) = v13;
LABEL_61:
        if (v13 >= v9 || (v21 = *v13, v21 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
          if (!result)
          {
            return result;
          }

          v22 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 28) = v21;
          v22 = v13 + 1;
          *(this + 1) = v22;
        }

        *(a1 + 164) |= 4u;
        if (v22 >= v9 || *v22 != 32)
        {
          continue;
        }

        v16 = v22 + 1;
        *(this + 1) = v16;
LABEL_69:
        if (v16 >= v9 || (v23 = *v16, v23 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 72));
          if (!result)
          {
            return result;
          }

          v24 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 72) = v23;
          v24 = v16 + 1;
          *(this + 1) = v24;
        }

        *(a1 + 164) |= 8u;
        if (v24 >= v9 || *v24 != 41)
        {
          continue;
        }

        *(this + 1) = v24 + 1;
LABEL_77:
        *v78 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v78) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v78;
        *(a1 + 164) |= 0x10u;
        v25 = *(this + 1);
        if (v25 >= *(this + 2) || *v25 != 49)
        {
          continue;
        }

        *(this + 1) = v25 + 1;
LABEL_81:
        *v78 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v78) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = *v78;
        *(a1 + 164) |= 0x20u;
        v26 = *(this + 1);
        if (v26 >= *(this + 2) || *v26 != 57)
        {
          continue;
        }

        *(this + 1) = v26 + 1;
LABEL_85:
        *v78 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v78) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = *v78;
        *(a1 + 164) |= 0x40u;
        v27 = *(this + 1);
        if (v27 >= *(this + 2) || *v27 != 65)
        {
          continue;
        }

        *(this + 1) = v27 + 1;
LABEL_89:
        *v78 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v78) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 56) = *v78;
        *(a1 + 164) |= 0x80u;
        v28 = *(this + 1);
        if (v28 >= *(this + 2) || *v28 != 73)
        {
          continue;
        }

        *(this + 1) = v28 + 1;
LABEL_93:
        *v78 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v78) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = *v78;
        *(a1 + 164) |= 0x100u;
        v29 = *(this + 1);
        if (v29 >= *(this + 2) || *v29 != 81)
        {
          continue;
        }

        *(this + 1) = v29 + 1;
LABEL_97:
        *v78 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v78) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 80) = *v78;
        *(a1 + 164) |= 0x200u;
        v30 = *(this + 1);
        if (v30 >= *(this + 2) || *v30 != 89)
        {
          continue;
        }

        *(this + 1) = v30 + 1;
LABEL_101:
        *v78 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v78) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 88) = *v78;
        *(a1 + 164) |= 0x400u;
        v31 = *(this + 1);
        v20 = *(this + 2);
        if (v31 < v20)
        {
          v32 = *v31;
          goto LABEL_104;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v13 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_61;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v16 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_69;
      case 5u:
        if (v8 == 1)
        {
          goto LABEL_77;
        }

        goto LABEL_52;
      case 6u:
        if (v8 == 1)
        {
          goto LABEL_81;
        }

        goto LABEL_52;
      case 7u:
        if (v8 == 1)
        {
          goto LABEL_85;
        }

        goto LABEL_52;
      case 8u:
        if (v8 == 1)
        {
          goto LABEL_89;
        }

        goto LABEL_52;
      case 9u:
        if (v8 != 1)
        {
          goto LABEL_52;
        }

        goto LABEL_93;
      case 0xAu:
        if (v8 == 1)
        {
          goto LABEL_97;
        }

        goto LABEL_52;
      case 0xBu:
        if (v8 == 1)
        {
          goto LABEL_101;
        }

        goto LABEL_52;
      case 0xCu:
        if ((TagFallback & 7) == 0)
        {
          v19 = *(this + 1);
          v20 = *(this + 2);
          while (1)
          {
            v77 = 0;
            if (v19 >= v20 || *v19 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v77))
              {
                return 0;
              }
            }

            else
            {
              v77 = *v19;
              *(this + 1) = v19 + 1;
            }

            v33 = *(a1 + 104);
            if (v33 == *(a1 + 108))
            {
              sub_100077844((a1 + 96), v33 + 1);
              v33 = *(a1 + 104);
            }

            v34 = v77;
            v35 = *(a1 + 96);
            *(a1 + 104) = v33 + 1;
            *(v35 + 4 * v33) = v34;
            v36 = *(a1 + 108) - *(a1 + 104);
            if (v36 >= 1)
            {
              v37 = v36 + 1;
              do
              {
                v38 = *(this + 1);
                v39 = *(this + 2);
                if (v38 >= v39 || *v38 != 96)
                {
                  break;
                }

                *(this + 1) = v38 + 1;
                if ((v38 + 1) >= v39 || v38[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v77))
                  {
                    return 0;
                  }
                }

                else
                {
                  v77 = v38[1];
                  *(this + 1) = v38 + 2;
                }

                v40 = *(a1 + 104);
                if (v40 >= *(a1 + 108))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v78);
                  v40 = *(a1 + 104);
                }

                v41 = v77;
                v42 = *(a1 + 96);
                *(a1 + 104) = v40 + 1;
                *(v42 + 4 * v40) = v41;
                --v37;
              }

              while (v37 > 1);
            }

LABEL_123:
            v31 = *(this + 1);
            v20 = *(this + 2);
            if (v31 >= v20)
            {
              goto LABEL_1;
            }

            v32 = *v31;
            if (v32 == 105)
            {
              break;
            }

LABEL_104:
            if (v32 != 96)
            {
              goto LABEL_1;
            }

            v19 = (v31 + 1);
            *(this + 1) = v19;
          }

          do
          {
            *(this + 1) = v31 + 1;
LABEL_126:
            *v78 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v78) & 1) == 0)
            {
              return 0;
            }

            v43 = *v78;
            v44 = *(a1 + 120);
            if (v44 == *(a1 + 124))
            {
              sub_1000778F4((a1 + 112), v44 + 1);
              v44 = *(a1 + 120);
            }

            v45 = *(a1 + 112);
            v46 = v44 + 1;
            *(a1 + 120) = v44 + 1;
            *(v45 + 8 * v44) = v43;
            v47 = *(this + 1);
            v48 = *(this + 4) - v47;
            if (v48 >= 1)
            {
              v49 = v48 / 9u;
              v50 = v49 >= *(a1 + 124) - v46 ? *(a1 + 124) - v46 : v49;
              if (v50 >= 1)
              {
                v51 = 0;
                while (*v47 == 105)
                {
                  v52 = *(v47 + 1);
                  if (v46 >= *(a1 + 124))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v78);
                    v46 = *(a1 + 120);
                    v45 = *(a1 + 112);
                  }

                  *(a1 + 120) = v46 + 1;
                  *(v45 + 8 * v46) = v52;
                  ++v51;
                  v47 += 9;
                  ++v46;
                  if (v50 == v51)
                  {
                    v51 = v50;
                    goto LABEL_141;
                  }
                }

                if (!v51)
                {
                  goto LABEL_142;
                }

LABEL_141:
                wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v51);
              }
            }

LABEL_142:
            v31 = *(this + 1);
            if (v31 >= *(this + 2))
            {
              goto LABEL_1;
            }

            v53 = *v31;
          }

          while (v53 == 105);
          if (v53 == 113)
          {
            do
            {
              *(this + 1) = v31 + 1;
LABEL_146:
              *v78 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v78) & 1) == 0)
              {
                return 0;
              }

              v54 = *v78;
              v55 = *(a1 + 136);
              if (v55 == *(a1 + 140))
              {
                sub_1000778F4((a1 + 128), v55 + 1);
                v55 = *(a1 + 136);
              }

              v56 = *(a1 + 128);
              v57 = v55 + 1;
              *(a1 + 136) = v55 + 1;
              *(v56 + 8 * v55) = v54;
              v58 = *(this + 1);
              v59 = *(this + 4) - v58;
              if (v59 >= 1)
              {
                v60 = v59 / 9u;
                v61 = v60 >= *(a1 + 140) - v57 ? *(a1 + 140) - v57 : v60;
                if (v61 >= 1)
                {
                  v62 = 0;
                  while (*v58 == 113)
                  {
                    v63 = *(v58 + 1);
                    if (v57 >= *(a1 + 140))
                    {
                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v78);
                      v57 = *(a1 + 136);
                      v56 = *(a1 + 128);
                    }

                    *(a1 + 136) = v57 + 1;
                    *(v56 + 8 * v57) = v63;
                    ++v62;
                    v58 += 9;
                    ++v57;
                    if (v61 == v62)
                    {
                      v62 = v61;
                      goto LABEL_161;
                    }
                  }

                  if (!v62)
                  {
                    goto LABEL_162;
                  }

LABEL_161:
                  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v62);
                }
              }

LABEL_162:
              v31 = *(this + 1);
              if (v31 >= *(this + 2))
              {
                goto LABEL_1;
              }

              v64 = *v31;
            }

            while (v64 == 113);
            if (v64 == 121)
            {
              do
              {
                *(this + 1) = v31 + 1;
LABEL_166:
                *v78 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v78) & 1) == 0)
                {
                  return 0;
                }

                v65 = *v78;
                v66 = *(a1 + 152);
                if (v66 == *(a1 + 156))
                {
                  sub_1000778F4((a1 + 144), v66 + 1);
                  v66 = *(a1 + 152);
                }

                v67 = *(a1 + 144);
                v68 = v66 + 1;
                *(a1 + 152) = v66 + 1;
                *(v67 + 8 * v66) = v65;
                v69 = *(this + 1);
                v70 = *(this + 4) - v69;
                if (v70 >= 1)
                {
                  v71 = v70 / 9u;
                  v72 = v71 >= *(a1 + 156) - v68 ? *(a1 + 156) - v68 : v71;
                  if (v72 >= 1)
                  {
                    v73 = 0;
                    while (*v69 == 121)
                    {
                      v74 = *(v69 + 1);
                      if (v68 >= *(a1 + 156))
                      {
                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v78);
                        v68 = *(a1 + 152);
                        v67 = *(a1 + 144);
                      }

                      *(a1 + 152) = v68 + 1;
                      *(v67 + 8 * v68) = v74;
                      ++v73;
                      v69 += 9;
                      ++v68;
                      if (v72 == v73)
                      {
                        v73 = v72;
                        goto LABEL_181;
                      }
                    }

                    if (!v73)
                    {
                      goto LABEL_182;
                    }

LABEL_181:
                    wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v73);
                  }
                }

LABEL_182:
                v31 = *(this + 1);
                v15 = *(this + 2);
              }

              while (v31 < v15 && *v31 == 121);
              if (v15 - v31 >= 2 && *v31 == 128 && v31[1] == 1)
              {
                v14 = (v31 + 2);
                *(this + 1) = v14;
LABEL_188:
                v78[0] = 0;
                if (v14 >= v15 || (v75 = *v14, (v75 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v78);
                  if (!result)
                  {
                    return result;
                  }

                  v75 = v78[0];
                  v76 = *(this + 1);
                  v15 = *(this + 2);
                }

                else
                {
                  v76 = v14 + 1;
                  *(this + 1) = v76;
                }

                *(a1 + 76) = v75 != 0;
                *(a1 + 164) |= 0x8000u;
                if (v76 == v15 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

        if (v8 != 2)
        {
LABEL_52:
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

        result = sub_1000A6548(this, a1 + 96);
        if (result)
        {
          goto LABEL_123;
        }

        return result;
      case 0xDu:
        if (v8 == 1)
        {
          goto LABEL_126;
        }

        if (v8 != 2)
        {
          goto LABEL_52;
        }

        result = sub_100063F88(this, a1 + 112);
        if (!result)
        {
          return result;
        }

        goto LABEL_142;
      case 0xEu:
        if (v8 == 1)
        {
          goto LABEL_146;
        }

        if (v8 != 2)
        {
          goto LABEL_52;
        }

        result = sub_100063F88(this, a1 + 128);
        if (!result)
        {
          return result;
        }

        goto LABEL_162;
      case 0xFu:
        if (v8 == 1)
        {
          goto LABEL_166;
        }

        if (v8 != 2)
        {
          goto LABEL_52;
        }

        result = sub_100063F88(this, a1 + 144);
        if (!result)
        {
          return result;
        }

        goto LABEL_182;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v14 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_188;
      default:
        goto LABEL_52;
    }
  }
}

void sub_100147D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100147DA0(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 164);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 164);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 164);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 164);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 72), a2, a4);
  v6 = *(v5 + 164);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 164);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 40), a3);
  v6 = *(v5 + 164);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 48), a3);
  v6 = *(v5 + 164);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 56), a3);
  v6 = *(v5 + 164);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 64), a3);
  v6 = *(v5 + 164);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 80), a3);
  if ((*(v5 + 164) & 0x400) != 0)
  {
LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 88), a3);
  }

LABEL_13:
  if (*(v5 + 104) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(*(v5 + 96) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 104));
  }

  if (*(v5 + 120) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(*(v5 + 112) + 8 * v8++), a3);
    }

    while (v8 < *(v5 + 120));
  }

  if (*(v5 + 136) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(*(v5 + 128) + 8 * v9++), a3);
    }

    while (v9 < *(v5 + 136));
  }

  if (*(v5 + 152) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xF, a2, *(*(v5 + 144) + 8 * v10++), a3);
    }

    while (v10 < *(v5 + 152));
  }

  if ((*(v5 + 165) & 0x80) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x10, *(v5 + 76), a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100148024(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 41);
  if (v5)
  {
    v6 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v6;
    v3 = (a2 + 9);
    v5 = *(this + 41);
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

  if ((*(this + 164) & 4) != 0)
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

  if ((*(this + 164) & 8) != 0)
  {
    v9 = *(this + 18);
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

  v10 = *(this + 41);
  if ((v10 & 0x10) != 0)
  {
    v25 = *(this + 4);
    *v3 = 41;
    *(v3 + 1) = v25;
    v3 = (v3 + 9);
    v10 = *(this + 41);
    if ((v10 & 0x20) == 0)
    {
LABEL_17:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_48;
    }
  }

  else if ((v10 & 0x20) == 0)
  {
    goto LABEL_17;
  }

  v26 = *(this + 5);
  *v3 = 49;
  *(v3 + 1) = v26;
  v3 = (v3 + 9);
  v10 = *(this + 41);
  if ((v10 & 0x40) == 0)
  {
LABEL_18:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  v27 = *(this + 6);
  *v3 = 57;
  *(v3 + 1) = v27;
  v3 = (v3 + 9);
  v10 = *(this + 41);
  if ((v10 & 0x80) == 0)
  {
LABEL_19:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  v28 = *(this + 7);
  *v3 = 65;
  *(v3 + 1) = v28;
  v3 = (v3 + 9);
  v10 = *(this + 41);
  if ((v10 & 0x100) == 0)
  {
LABEL_20:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  v29 = *(this + 8);
  *v3 = 73;
  *(v3 + 1) = v29;
  v3 = (v3 + 9);
  v10 = *(this + 41);
  if ((v10 & 0x200) == 0)
  {
LABEL_21:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_51:
  v30 = *(this + 10);
  *v3 = 81;
  *(v3 + 1) = v30;
  v3 = (v3 + 9);
  if ((*(this + 41) & 0x400) != 0)
  {
LABEL_22:
    v11 = *(this + 11);
    *v3 = 89;
    *(v3 + 1) = v11;
    v3 = (v3 + 9);
  }

LABEL_23:
  if (*(this + 26) >= 1)
  {
    v12 = 0;
    do
    {
      v13 = *(*(this + 12) + 4 * v12);
      *v3 = 96;
      if (v13 > 0x7F)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v3 + 1, a3);
      }

      else
      {
        *(v3 + 1) = v13;
        v3 = (v3 + 2);
      }

      ++v12;
    }

    while (v12 < *(this + 26));
  }

  if (*(this + 30) >= 1)
  {
    v14 = 0;
    do
    {
      v15 = *(*(this + 14) + 8 * v14);
      *v3 = 105;
      *(v3 + 1) = v15;
      v3 = (v3 + 9);
      ++v14;
    }

    while (v14 < *(this + 30));
  }

  if (*(this + 34) >= 1)
  {
    v16 = 0;
    do
    {
      v17 = *(*(this + 16) + 8 * v16);
      *v3 = 113;
      *(v3 + 1) = v17;
      v3 = (v3 + 9);
      ++v16;
    }

    while (v16 < *(this + 34));
  }

  if (*(this + 38) >= 1)
  {
    v18 = 0;
    do
    {
      v19 = *(*(this + 18) + 8 * v18);
      *v3 = 121;
      *(v3 + 1) = v19;
      v3 = (v3 + 9);
      ++v18;
    }

    while (v18 < *(this + 38));
  }

  if ((*(this + 165) & 0x80) != 0)
  {
    v20 = *(this + 76);
    *v3 = 384;
    *(v3 + 2) = v20;
    v3 = (v3 + 3);
  }

  v23 = *(this + 1);
  v22 = (this + 8);
  v21 = v23;
  if (!v23 || *v21 == v21[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v22, v3, a3);
}

uint64_t sub_1001485A4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 164);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_27;
  }

  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) == 0)
  {
    if ((v3 & 4) == 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    v8 = *(a1 + 28);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(a1 + 164);
    }

    else
    {
      v9 = 2;
    }

    v4 += v9;
    if ((v3 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v6 = *(a1 + 24);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 164);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
  if ((v3 & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((v3 & 8) != 0)
  {
LABEL_15:
    v10 = *(a1 + 72);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
      v3 = *(a1 + 164);
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
  }

LABEL_19:
  v5 = v4 + 9;
  if ((v3 & 0x10) == 0)
  {
    v5 = v4;
  }

  if ((v3 & 0x20) != 0)
  {
    v5 += 9;
  }

  if ((v3 & 0x40) != 0)
  {
    v5 += 9;
  }

  if ((v3 & 0x80) != 0)
  {
    v5 += 9;
  }

LABEL_27:
  v12 = v5 + 9;
  if ((v3 & 0x100) == 0)
  {
    v12 = v5;
  }

  if ((v3 & 0x200) != 0)
  {
    v12 += 9;
  }

  if ((v3 & 0x400) != 0)
  {
    v12 += 9;
  }

  if ((v3 & 0x8000) != 0)
  {
    v12 += 3;
  }

  if ((v3 & 0xFF00) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = v5;
  }

  v14 = *(a1 + 104);
  if (v14 < 1)
  {
    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *(*(a1 + 96) + 4 * v15);
      if (v17 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
        v14 = *(a1 + 104);
      }

      else
      {
        v18 = 1;
      }

      v16 += v18;
      ++v15;
    }

    while (v15 < v14);
  }

  v19 = *(a1 + 8);
  v20 = (v16 + v13 + v14 + 9 * (*(a1 + 136) + *(a1 + 120) + *(a1 + 152)));
  if (v19 && *v19 != v19[1])
  {
    v20 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v20;
  }

  *(a1 + 160) = v20;
  return v20;
}

uint64_t sub_100148770(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100146D64(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100148844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014885C(uint64_t result, uint64_t a2)
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

uint64_t sub_1001488F0()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE1B0;
}

void sub_100148984(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_100148998(void *a1)
{
  *a1 = off_1009961F0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_1001489F8(uint64_t a1, uint64_t a2)
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
        v7 = *(qword_1009F9EE0 + 24);
      }

      sub_10014FDD8(v6, v7);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100148B28(void *a1)
{
  *a1 = off_1009961F0;
  if (qword_1009F9EE0 != a1)
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

void sub_100148BC0(void *a1)
{
  sub_100148B28(a1);

  operator delete();
}

uint64_t sub_100148C00(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9EE0;
  if (!qword_1009F9EE0)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9EE0;
  }

  return result;
}

uint64_t sub_100148C94(uint64_t this)
{
  v1 = this;
  v2 = *(this + 36);
  if (v2)
  {
    *(this + 16) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = sub_100150250(this);
      }
    }
  }

  v4 = *(v1 + 8);
  v3 = (v1 + 8);
  *(v3 + 7) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return this;
}

uint64_t sub_100148CFC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
    if (!sub_100150338(v11, this, v16, v17) || *(this + 36) != 1)
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

uint64_t sub_100148F2C(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      v7 = *(qword_1009F9EE0 + 24);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100148FC8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 9);
  if (v5)
  {
    v6 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v6;
    a2 = (a2 + 9);
    v5 = *(this + 9);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 3);
    if (!v7)
    {
      v7 = *(qword_1009F9EE0 + 24);
    }

    *a2 = 18;
    v8 = v7[12];
    if (v8 > 0x7F)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v8;
      v9 = (a2 + 2);
    }

    a2 = sub_1001508D0(v7, v9, a3, a4);
  }

  v12 = *(this + 1);
  v11 = (this + 8);
  v10 = v12;
  if (!v12 || *v10 == v10[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v11, a2, a3);
}

uint64_t sub_1001490CC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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
        v5 = *(qword_1009F9EE0 + 24);
      }

      v6 = sub_100150AA0(v5, a2);
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

uint64_t sub_10014917C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1001489F8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100149250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100149268(uint64_t result, uint64_t a2)
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

uint64_t sub_1001492FC()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE1C0;
}

void sub_100149390(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_1001499DC()
{
  v0 = sub_100149E9C();
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v0);
  operator new();
}

void sub_100149E9C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_1009EE320 & 1) == 0)
  {
    byte_1009EE320 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/Proximity/protobuf/CLPChannelSoundingLogEntry.pb.cc", a4);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile(&unk_10055EE1C, 0x7F4, v4);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_10014A144()
{
  if (qword_1009F9EE8)
  {
    (*(*qword_1009F9EE8 + 8))(qword_1009F9EE8);
  }

  if (qword_1009EE288)
  {
    (*(*qword_1009EE288 + 8))(qword_1009EE288);
  }

  if (qword_1009F9EF0)
  {
    (*(*qword_1009F9EF0 + 8))(qword_1009F9EF0);
  }

  if (qword_1009EE298)
  {
    (*(*qword_1009EE298 + 8))(qword_1009EE298);
  }

  if (qword_1009F9EF8)
  {
    (*(*qword_1009F9EF8 + 8))(qword_1009F9EF8);
  }

  if (qword_1009EE2A8)
  {
    (*(*qword_1009EE2A8 + 8))(qword_1009EE2A8);
  }

  if (qword_1009F9F00)
  {
    (*(*qword_1009F9F00 + 8))(qword_1009F9F00);
  }

  if (qword_1009EE2B8)
  {
    (*(*qword_1009EE2B8 + 8))(qword_1009EE2B8);
  }

  if (qword_1009F9F08)
  {
    (*(*qword_1009F9F08 + 8))(qword_1009F9F08);
  }

  if (qword_1009EE2C8)
  {
    (*(*qword_1009EE2C8 + 8))(qword_1009EE2C8);
  }

  if (qword_1009F9F10)
  {
    (*(*qword_1009F9F10 + 8))(qword_1009F9F10);
  }

  if (qword_1009EE2D8)
  {
    (*(*qword_1009EE2D8 + 8))(qword_1009EE2D8);
  }

  if (qword_1009F9F18)
  {
    (*(*qword_1009F9F18 + 8))(qword_1009F9F18);
  }

  result = qword_1009EE2E8;
  if (qword_1009EE2E8)
  {
    v1 = *(*qword_1009EE2E8 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_10014A40C()
{
  v0 = qword_1009EE328;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v8[1] = sub_1001499DC;
    v9 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v8);
  }

  if (!qword_1009F9EE8)
  {
    (sub_100149E9C)();
  }

  v1 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9EF0)
  {
    sub_100149E9C(v1);
  }

  v2 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9EF8)
  {
    sub_100149E9C(v2);
  }

  v3 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9F00)
  {
    sub_100149E9C(v3);
  }

  v4 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9F08)
  {
    sub_100149E9C(v4);
  }

  v5 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9F10)
  {
    sub_100149E9C(v5);
  }

  v6 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9F18)
  {
    sub_100149E9C(v6);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_10014A58C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014A5A4(uint64_t a1)
{
  *a1 = off_100996AB0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 24) = 0;
  *(a1 + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 48) = 0;
  *(a1 + 36) = 0;
  *(a1 + 28) = 0;
  *(a1 + 44) = 0;
  return a1;
}

uint64_t sub_10014A61C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      v5 = *(a2 + 24);
      if (v5 >= 4)
      {
        sub_10049E360();
      }

      *(a1 + 52) |= 1u;
      *(a1 + 24) = v5;
      v4 = *(a2 + 52);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 16);
      *(a1 + 52) |= 2u;
      v7 = *(a1 + 16);
      if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v4 = *(a2 + 52);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 28);
      if (v8 >= 4)
      {
        sub_10049E38C();
      }

      *(a1 + 52) |= 4u;
      *(a1 + 28) = v8;
      v4 = *(a2 + 52);
    }

    if ((v4 & 8) != 0)
    {
      v9 = *(a2 + 32);
      if (v9 >= 5)
      {
        sub_10049E3B8();
      }

      *(a1 + 52) |= 8u;
      *(a1 + 32) = v9;
      v4 = *(a2 + 52);
    }

    if ((v4 & 0x10) != 0)
    {
      v10 = *(a2 + 36);
      if (v10 >= 3)
      {
        sub_10049E3E4();
      }

      *(a1 + 52) |= 0x10u;
      *(a1 + 36) = v10;
      v4 = *(a2 + 52);
    }

    if ((v4 & 0x20) != 0)
    {
      v11 = *(a2 + 40);
      *(a1 + 52) |= 0x20u;
      *(a1 + 40) = v11;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10014A7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10014A7D0(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_100996AB0;
  v2 = (a1 + 8);
  sub_10009F464(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10014A834(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_10014A7D0(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10014A8D8(uint64_t a1)
{
  v1 = *(a1 + 52);
  if (v1)
  {
    *(a1 + 24) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(a1 + 16);
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

    *(a1 + 36) = 0;
    *(a1 + 28) = 0;
    *(a1 + 44) = 0;
  }

  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 11) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10014A93C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
            if ((TagFallback & 7) == 0)
            {
              v15 = *(this + 1);
              v14 = *(this + 2);
              goto LABEL_57;
            }

            goto LABEL_26;
          }

          if (v8 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(this + 1);
              v16 = *(this + 2);
              goto LABEL_68;
            }

            goto LABEL_26;
          }

          if (v8 != 6 || v9 != 1)
          {
            goto LABEL_26;
          }

LABEL_79:
          *v30 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v30) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 40) = *v30;
          *(a1 + 52) |= 0x20u;
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

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v30[0] = 0;
        v12 = *(this + 1);
        if (v12 >= *(this + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v30);
          if (!result)
          {
            return result;
          }

          v13 = v30[0];
        }

        else
        {
          *(this + 1) = v12 + 1;
        }

        if (v13 > 3)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 1, v13);
        }

        else
        {
          *(a1 + 52) |= 1u;
          *(a1 + 24) = v13;
        }

        v19 = *(this + 1);
        if (v19 < *(this + 2) && *v19 == 18)
        {
          *(this + 1) = v19 + 1;
          goto LABEL_38;
        }
      }

      if (v8 != 2)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_26;
      }

LABEL_38:
      *(a1 + 52) |= 2u;
      if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 16);
      if ((*(v20 + 23) & 0x8000000000000000) != 0)
      {
        v21 = *v20;
        v22 = *(*(a1 + 16) + 8);
      }

      wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
      v23 = *(this + 1);
      v10 = *(this + 2);
      if (v23 < v10 && *v23 == 24)
      {
        v11 = v23 + 1;
        *(this + 1) = v11;
LABEL_46:
        v30[0] = 0;
        if (v11 >= v10 || (v24 = *v11, (v24 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v30);
          if (!result)
          {
            return result;
          }

          v24 = v30[0];
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (v24 > 3)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 3, v24);
        }

        else
        {
          *(a1 + 52) |= 4u;
          *(a1 + 28) = v24;
        }

        v25 = *(this + 1);
        v14 = *(this + 2);
        if (v25 < v14 && *v25 == 32)
        {
          v15 = v25 + 1;
          *(this + 1) = v15;
LABEL_57:
          v30[0] = 0;
          if (v15 >= v14 || (v26 = *v15, (v26 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v30);
            if (!result)
            {
              return result;
            }

            v26 = v30[0];
          }

          else
          {
            *(this + 1) = v15 + 1;
          }

          if (v26 > 4)
          {
            wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 4, v26);
          }

          else
          {
            *(a1 + 52) |= 8u;
            *(a1 + 32) = v26;
          }

          v27 = *(this + 1);
          v16 = *(this + 2);
          if (v27 < v16 && *v27 == 40)
          {
            v17 = v27 + 1;
            *(this + 1) = v17;
LABEL_68:
            v30[0] = 0;
            if (v17 >= v16 || (v28 = *v17, (v28 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v30);
              if (!result)
              {
                return result;
              }

              v28 = v30[0];
            }

            else
            {
              *(this + 1) = v17 + 1;
            }

            if (v28 > 2)
            {
              wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 5, v28);
            }

            else
            {
              *(a1 + 52) |= 0x10u;
              *(a1 + 36) = v28;
            }

            v29 = *(this + 1);
            if (v29 < *(this + 2) && *v29 == 49)
            {
              *(this + 1) = v29 + 1;
              goto LABEL_79;
            }
          }
        }
      }
    }

    if (v8 == 3 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_46;
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

uint64_t sub_10014AD44(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 24), a2, a4);
    v6 = *(v5 + 52);
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

  v10 = *(v5 + 16);
  if ((*(v10 + 23) & 0x8000000000000000) != 0)
  {
    v11 = *v10;
    v12 = *(*(v5 + 16) + 8);
  }

  wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
  v13 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 52);
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
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 36), a2, a4);
    if ((*(v5 + 52) & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_6:
  if ((v6 & 0x20) != 0)
  {
LABEL_7:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 40), a3);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10014AE60(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 52))
  {
    v5 = *(this + 6);
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
  v8 = *(this + 13);
  if ((v8 & 2) != 0)
  {
    v9 = *(this + 2);
    if ((*(v9 + 23) & 0x8000000000000000) != 0)
    {
      v10 = *v9;
      v11 = *(*(this + 2) + 8);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v14 = *(this + 2);
    *v3 = 18;
    v15 = *(v14 + 23);
    if ((v15 & 0x8000000000000000) != 0)
    {
      v15 = *(v14 + 8);
    }

    if (v15 > 0x7F)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v3 + 1, v12);
    }

    else
    {
      *(v3 + 1) = v15;
      v16 = v3 + 2;
    }

    v17 = *(v14 + 23);
    if (v17 >= 0)
    {
      v18 = v14;
    }

    else
    {
      v18 = *v14;
    }

    if (v17 >= 0)
    {
      v19 = *(v14 + 23);
    }

    else
    {
      v19 = *(v14 + 8);
    }

    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v18, v19, v16, v13);
    v8 = *(this + 13);
  }

  if ((v8 & 4) != 0)
  {
    v20 = *(this + 7);
    *v3 = 24;
    v21 = v3 + 1;
    if ((v20 & 0x80000000) != 0)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v20, v21, a3);
    }

    else
    {
      if (v20 <= 0x7F)
      {
        *(v3 + 1) = v20;
        v3 = (v3 + 2);
        goto LABEL_30;
      }

      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v21, a3);
    }

    v3 = v22;
  }

LABEL_30:
  if ((*(this + 52) & 8) == 0)
  {
    goto LABEL_37;
  }

  v23 = *(this + 8);
  *v3 = 32;
  v24 = v3 + 1;
  if ((v23 & 0x80000000) != 0)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v23, v24, a3);
  }

  else
  {
    if (v23 <= 0x7F)
    {
      *(v3 + 1) = v23;
      v3 = (v3 + 2);
      goto LABEL_37;
    }

    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, v24, a3);
  }

  v3 = v25;
LABEL_37:
  if ((*(this + 52) & 0x10) == 0)
  {
    goto LABEL_44;
  }

  v26 = *(this + 9);
  *v3 = 40;
  v27 = v3 + 1;
  if ((v26 & 0x80000000) != 0)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v26, v27, a3);
  }

  else
  {
    if (v26 <= 0x7F)
    {
      *(v3 + 1) = v26;
      v3 = (v3 + 2);
      goto LABEL_44;
    }

    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, v27, a3);
  }

  v3 = v28;
LABEL_44:
  if ((*(this + 52) & 0x20) != 0)
  {
    v29 = *(this + 5);
    *v3 = 49;
    *(v3 + 1) = v29;
    v3 = (v3 + 9);
  }

  v32 = *(this + 1);
  v31 = (this + 8);
  v30 = v32;
  if (!v32 || *v30 == v30[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v31, v3, a3);
}

uint64_t sub_10014B09C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_47;
  }

  if (*(a1 + 52))
  {
    v5 = *(a1 + 24);
    if ((v5 & 0x80000000) != 0)
    {
      LODWORD(v4) = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v5 >= 0x80)
    {
      LODWORD(v4) = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 52);
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      LODWORD(v4) = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
    if ((*(a1 + 52) & 2) == 0)
    {
      goto LABEL_22;
    }
  }

  v6 = *(a1 + 16);
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
    v3 = *(a1 + 52);
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

  LODWORD(v4) = v4 + v11 + v7 + 1;
LABEL_22:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_24;
    }

LABEL_32:
    v14 = *(a1 + 32);
    if ((v14 & 0x80000000) != 0)
    {
      v15 = 11;
    }

    else if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
      v3 = *(a1 + 52);
    }

    else
    {
      v15 = 2;
    }

    LODWORD(v4) = v15 + v4;
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_38;
  }

  v12 = *(a1 + 28);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(a1 + 52);
  }

  else
  {
    v13 = 2;
  }

  LODWORD(v4) = v13 + v4;
  if ((v3 & 8) != 0)
  {
    goto LABEL_32;
  }

LABEL_24:
  if ((v3 & 0x10) != 0)
  {
LABEL_38:
    v16 = *(a1 + 36);
    if ((v16 & 0x80000000) != 0)
    {
      v17 = 11;
    }

    else if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
      v3 = *(a1 + 52);
    }

    else
    {
      v17 = 2;
    }

    LODWORD(v4) = v17 + v4;
  }

LABEL_44:
  if ((v3 & 0x20) != 0)
  {
    v4 = (v4 + 9);
  }

  else
  {
    v4 = v4;
  }

LABEL_47:
  v18 = *(a1 + 8);
  if (v18 && *v18 != v18[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 48) = v4;
  return v4;
}

uint64_t sub_10014B24C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10014A61C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10014B320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014B338(uint64_t result, uint64_t a2)
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

uint64_t sub_10014B3CC()
{
  v0 = qword_1009EE328;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1001499DC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE280;
}

void sub_10014B460(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014B474(uint64_t a1)
{
  *a1 = off_100996B60;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  return a1;
}

uint64_t sub_10014B4EC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  sub_10014C648((a1 + 16), a2 + 16);
  sub_10014C788((a1 + 40), a2 + 40);
  v4 = *(a2 + 72);
  if (v4)
  {
    sub_1000778F4((a1 + 64), *(a1 + 72) + v4);
    memcpy((*(a1 + 64) + 8 * *(a1 + 72)), *(a2 + 64), 8 * *(a2 + 72));
    *(a1 + 72) += *(a2 + 72);
  }

  LOBYTE(v5) = *(a2 + 116);
  if (!v5)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 116))
  {
    v8 = *(a2 + 80);
    *(a1 + 116) |= 1u;
    *(a1 + 80) = v8;
    v5 = *(a2 + 116);
    if ((v5 & 0x10) == 0)
    {
LABEL_8:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else if ((*(a2 + 116) & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v9 = *(a2 + 88);
  *(a1 + 116) |= 0x10u;
  *(a1 + 88) = v9;
  v5 = *(a2 + 116);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    v11 = *(a2 + 84);
    if (v11 >= 4)
    {
      sub_10049E410();
    }

    *(a1 + 116) |= 0x40u;
    *(a1 + 84) = v11;
    if ((*(a2 + 116) & 0x80) != 0)
    {
      goto LABEL_11;
    }

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

LABEL_15:
  v10 = *(a2 + 96);
  *(a1 + 116) |= 0x20u;
  *(a1 + 96) = v10;
  v5 = *(a2 + 116);
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  if ((v5 & 0x80) != 0)
  {
LABEL_11:
    v6 = *(a2 + 104);
    *(a1 + 116) |= 0x80u;
    *(a1 + 104) = v6;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10014B674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10014B68C(uint64_t *a1)
{
  *a1 = off_100996B60;
  if (a1[8])
  {
    operator delete[]();
  }

  sub_100077C08(a1 + 5);
  sub_100077C08(a1 + 2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10014B71C(uint64_t *a1)
{
  sub_10014B68C(a1);

  operator delete();
}

uint64_t sub_10014B7C0(uint64_t a1)
{
  if (*(a1 + 116))
  {
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
  }

  sub_100077B98(a1 + 16);
  result = sub_100077B98(a1 + 40);
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  *(v3 + 16) = 0;
  *(v3 + 27) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return result;
}

uint64_t sub_10014B830(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 > 6)
          {
            if (v8 == 7)
            {
              if ((TagFallback & 7) == 0)
              {
                v16 = *(this + 1);
                v15 = *(this + 2);
                goto LABEL_109;
              }
            }

            else if (v8 == 8 && v9 == 1)
            {
              goto LABEL_120;
            }
          }

          else if (v8 == 5)
          {
            if (v9 == 1)
            {
              goto LABEL_101;
            }
          }

          else if (v8 == 6 && v9 == 1)
          {
            goto LABEL_105;
          }

          goto LABEL_36;
        }

        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v8 == 3)
        {
          if (v9 != 2)
          {
            goto LABEL_36;
          }

          while (2)
          {
            v31 = *(a1 + 52);
            v32 = *(a1 + 48);
            if (v32 >= v31)
            {
              if (v31 == *(a1 + 56))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40), v31 + 1);
                v31 = *(a1 + 52);
              }

              *(a1 + 52) = v31 + 1;
              sub_100150F00();
            }

            v33 = *(a1 + 40);
            *(a1 + 48) = v32 + 1;
            v34 = *(v33 + 8 * v32);
            v59[0] = 0;
            v35 = *(this + 1);
            if (v35 >= *(this + 2) || *v35 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v59))
              {
                return 0;
              }
            }

            else
            {
              v59[0] = *v35;
              *(this + 1) = v35 + 1;
            }

            v36 = *(this + 14);
            v37 = *(this + 15);
            *(this + 14) = v36 + 1;
            if (v36 >= v37)
            {
              return 0;
            }

            v38 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v59[0]);
            if (!sub_10014D78C(v34, this, v39, v40) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v38);
            v41 = *(this + 14);
            v28 = __OFSUB__(v41, 1);
            v42 = v41 - 1;
            if (v42 < 0 == v28)
            {
              *(this + 14) = v42;
            }

            v14 = *(this + 1);
            if (v14 < *(this + 2))
            {
              v43 = *v14;
              if (v43 == 26)
              {
LABEL_62:
                *(this + 1) = v14 + 1;
                continue;
              }

              if (v43 == 33)
              {
                goto LABEL_80;
              }
            }

            break;
          }
        }

        else
        {
          if (v8 != 4)
          {
            goto LABEL_36;
          }

          if (v9 != 1)
          {
            if (v9 == 2)
            {
              result = sub_100063F88(this, a1 + 64);
              if (!result)
              {
                return result;
              }

              goto LABEL_97;
            }

            goto LABEL_36;
          }

          while (2)
          {
            *v59 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
            {
              return 0;
            }

            v44 = *v59;
            v45 = *(a1 + 72);
            if (v45 == *(a1 + 76))
            {
              sub_1000778F4((a1 + 64), v45 + 1);
              v45 = *(a1 + 72);
            }

            v46 = *(a1 + 64);
            v47 = v45 + 1;
            *(a1 + 72) = v45 + 1;
            *(v46 + 8 * v45) = v44;
            v48 = *(this + 1);
            v49 = *(this + 4) - v48;
            if (v49 >= 1)
            {
              v50 = v49 / 9u;
              v51 = v50 >= *(a1 + 76) - v47 ? *(a1 + 76) - v47 : v50;
              if (v51 >= 1)
              {
                v52 = 0;
                while (*v48 == 33)
                {
                  v53 = *(v48 + 1);
                  if (v47 >= *(a1 + 76))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v59);
                    v47 = *(a1 + 72);
                    v46 = *(a1 + 64);
                  }

                  *(a1 + 72) = v47 + 1;
                  *(v46 + 8 * v47) = v53;
                  ++v52;
                  v48 += 9;
                  ++v47;
                  if (v51 == v52)
                  {
                    v52 = v51;
                    goto LABEL_96;
                  }
                }

                if (!v52)
                {
                  goto LABEL_97;
                }

LABEL_96:
                wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v52);
              }
            }

LABEL_97:
            v14 = *(this + 1);
            if (v14 < *(this + 2))
            {
              v54 = *v14;
              if (v54 == 33)
              {
LABEL_80:
                *(this + 1) = v14 + 1;
                continue;
              }

              if (v54 == 41)
              {
                *(this + 1) = v14 + 1;
LABEL_101:
                *v59 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 88) = *v59;
                *(a1 + 116) |= 0x10u;
                v55 = *(this + 1);
                if (v55 < *(this + 2) && *v55 == 49)
                {
                  *(this + 1) = v55 + 1;
LABEL_105:
                  *v59 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
                  {
                    return 0;
                  }

                  *(a1 + 96) = *v59;
                  *(a1 + 116) |= 0x20u;
                  v56 = *(this + 1);
                  v15 = *(this + 2);
                  if (v56 < v15 && *v56 == 56)
                  {
                    v16 = v56 + 1;
                    *(this + 1) = v16;
LABEL_109:
                    v59[0] = 0;
                    if (v16 >= v15 || (v57 = *v16, (v57 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v59);
                      if (!result)
                      {
                        return result;
                      }

                      v57 = v59[0];
                    }

                    else
                    {
                      *(this + 1) = v16 + 1;
                    }

                    if (v57 > 3)
                    {
                      wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 7, v57);
                    }

                    else
                    {
                      *(a1 + 116) |= 0x40u;
                      *(a1 + 84) = v57;
                    }

                    v58 = *(this + 1);
                    if (v58 < *(this + 2) && *v58 == 65)
                    {
                      *(this + 1) = v58 + 1;
LABEL_120:
                      *v59 = 0;
                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
                      {
                        return 0;
                      }

                      *(a1 + 104) = *v59;
                      *(a1 + 116) |= 0x80u;
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

            break;
          }
        }
      }

      if (v8 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_36;
      }

      v11 = *(this + 1);
      v12 = *(this + 2);
      if (v11 >= v12 || (v13 = *v11, v13 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 80));
        if (!result)
        {
          return result;
        }

        v14 = *(this + 1);
        v12 = *(this + 2);
      }

      else
      {
        *(a1 + 80) = v13;
        v14 = v11 + 1;
        *(this + 1) = v14;
      }

      *(a1 + 116) |= 1u;
      if (v14 < v12 && *v14 == 18)
      {
        while (2)
        {
          *(this + 1) = v14 + 1;
LABEL_45:
          v17 = *(a1 + 28);
          v18 = *(a1 + 24);
          if (v18 >= v17)
          {
            if (v17 == *(a1 + 32))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v17 + 1);
              v17 = *(a1 + 28);
            }

            *(a1 + 28) = v17 + 1;
            sub_100150E9C();
          }

          v19 = *(a1 + 16);
          *(a1 + 24) = v18 + 1;
          v20 = *(v19 + 8 * v18);
          v59[0] = 0;
          v21 = *(this + 1);
          if (v21 >= *(this + 2) || *v21 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v59))
            {
              return 0;
            }
          }

          else
          {
            v59[0] = *v21;
            *(this + 1) = v21 + 1;
          }

          v22 = *(this + 14);
          v23 = *(this + 15);
          *(this + 14) = v22 + 1;
          if (v22 >= v23)
          {
            return 0;
          }

          v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v59[0]);
          if (!sub_10014CCC4(v20, this, v25, v26) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v24);
          v27 = *(this + 14);
          v28 = __OFSUB__(v27, 1);
          v29 = v27 - 1;
          if (v29 < 0 == v28)
          {
            *(this + 14) = v29;
          }

          v14 = *(this + 1);
          if (v14 < *(this + 2))
          {
            v30 = *v14;
            if (v30 == 18)
            {
              continue;
            }

            if (v30 == 26)
            {
              goto LABEL_62;
            }
          }

          break;
        }
      }
    }

    if (v8 == 2 && v9 == 2)
    {
      goto LABEL_45;
    }

LABEL_36:
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

void sub_10014BF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014BF28(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 116))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 80), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(*(v5 + 16) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  if (*(v5 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(*(v5 + 40) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 48));
  }

  if (*(v5 + 72) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(*(v5 + 64) + 8 * v8++), a3);
    }

    while (v8 < *(v5 + 72));
  }

  v9 = *(v5 + 116);
  if ((v9 & 0x10) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 88), a3);
    v9 = *(v5 + 116);
    if ((v9 & 0x20) == 0)
    {
LABEL_14:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_15;
      }

LABEL_25:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(7, *(v5 + 84), a2, a4);
      if ((*(v5 + 116) & 0x80) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((v9 & 0x20) == 0)
  {
    goto LABEL_14;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 96), a3);
  v9 = *(v5 + 116);
  if ((v9 & 0x40) != 0)
  {
    goto LABEL_25;
  }

LABEL_15:
  if ((v9 & 0x80) != 0)
  {
LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 104), a3);
  }

LABEL_17:
  v12 = *(v5 + 8);
  v11 = (v5 + 8);
  v10 = v12;
  if (v12 && *v10 != v10[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v11, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10014C0B4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 116))
  {
    v5 = *(this + 20);
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

  if (*(this + 6) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(this + 2) + 8 * v7);
      *v3 = 18;
      v9 = v8[8];
      if (v9 > 0x7F)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v3 + 1, a3);
      }

      else
      {
        *(v3 + 1) = v9;
        v10 = (v3 + 2);
      }

      v3 = sub_10014D008(v8, v10, a3);
      ++v7;
    }

    while (v7 < *(this + 6));
  }

  if (*(this + 12) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = *(*(this + 5) + 8 * v11);
      *v3 = 26;
      v13 = v12[14];
      if (v13 > 0x7F)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v3 + 1, a3);
      }

      else
      {
        *(v3 + 1) = v13;
        v14 = v3 + 2;
      }

      v3 = sub_10014DB8C(v12, v14, a3);
      ++v11;
    }

    while (v11 < *(this + 12));
  }

  if (*(this + 18) >= 1)
  {
    v15 = 0;
    do
    {
      v16 = *(*(this + 8) + 8 * v15);
      *v3 = 33;
      *(v3 + 1) = v16;
      v3 = (v3 + 9);
      ++v15;
    }

    while (v15 < *(this + 18));
  }

  v17 = *(this + 29);
  if ((v17 & 0x10) != 0)
  {
    v18 = *(this + 11);
    *v3 = 41;
    *(v3 + 1) = v18;
    v3 = (v3 + 9);
    v17 = *(this + 29);
    if ((v17 & 0x20) == 0)
    {
LABEL_22:
      if ((v17 & 0x40) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_26;
    }
  }

  else if ((v17 & 0x20) == 0)
  {
    goto LABEL_22;
  }

  v19 = *(this + 12);
  *v3 = 49;
  *(v3 + 1) = v19;
  v3 = (v3 + 9);
  if ((*(this + 29) & 0x40) == 0)
  {
    goto LABEL_32;
  }

LABEL_26:
  v20 = *(this + 21);
  *v3 = 56;
  v21 = v3 + 1;
  if ((v20 & 0x80000000) != 0)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v20, v21, a3);
  }

  else
  {
    if (v20 <= 0x7F)
    {
      *(v3 + 1) = v20;
      v3 = (v3 + 2);
      goto LABEL_32;
    }

    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v21, a3);
  }

  v3 = v22;
LABEL_32:
  if ((*(this + 116) & 0x80) != 0)
  {
    v23 = *(this + 13);
    *v3 = 65;
    *(v3 + 1) = v23;
    v3 = (v3 + 9);
  }

  v26 = *(this + 1);
  v25 = (this + 8);
  v24 = v26;
  if (!v26 || *v24 == v24[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v25, v3, a3);
}

uint64_t sub_10014C3CC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 116);
  if (*(a1 + 116))
  {
    if (v3)
    {
      v5 = *(a1 + 80);
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        v3 = *(a1 + 116);
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

    if ((v3 & 0x10) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v6 = v4 + 9;
    }

    else
    {
      v6 = v4;
    }

    if ((v3 & 0x40) != 0)
    {
      v7 = *(a1 + 84);
      if ((v7 & 0x80000000) != 0)
      {
        v8 = 11;
      }

      else if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
        v3 = *(a1 + 116);
      }

      else
      {
        v8 = 2;
      }

      v6 += v8;
    }

    if ((v3 & 0x80) != 0)
    {
      v3 = v6 + 9;
    }

    else
    {
      v3 = v6;
    }
  }

  v9 = *(a1 + 24);
  v10 = v9 + v3;
  if (v9 >= 1)
  {
    v11 = 0;
    do
    {
      v12 = sub_10014D144(*(*(a1 + 16) + 8 * v11), a2);
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

  v15 = *(a1 + 48);
  v16 = v15 + v10;
  if (v15 >= 1)
  {
    v17 = 0;
    do
    {
      v18 = sub_10014DDB8(*(*(a1 + 40) + 8 * v17), a2);
      v19 = v18;
      if (v18 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
      }

      else
      {
        v20 = 1;
      }

      v16 += v19 + v20;
      ++v17;
    }

    while (v17 < *(a1 + 48));
  }

  v21 = *(a1 + 8);
  v22 = (9 * *(a1 + 72) + v16);
  if (v21 && *v21 != v21[1])
  {
    v22 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v22;
  }

  *(a1 + 112) = v22;
  return v22;
}

uint64_t sub_10014C55C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10014B4EC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10014C630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014C648(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_100150E9C();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_10014CA64(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_10014C770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014C788(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_100150F00();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_10014D4E4(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_10014C8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014C8C8(uint64_t result, uint64_t a2)
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

uint64_t sub_10014C95C()
{
  v0 = qword_1009EE328;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1001499DC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE290;
}

void sub_10014C9F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_10014CA04(void *a1)
{
  *a1 = off_100996C10;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_10014CA64(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
  }

  if (*(a2 + 36))
  {
    v7 = *(a2 + 16);
    a1[9] |= 1u;
    a1[4] = v7;
    v4 = *(a2 + 36);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v9 = *(a2 + 24);
      a1[9] |= 4u;
      a1[6] = v9;
      if ((*(a2 + 36) & 8) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
      }

      goto LABEL_8;
    }
  }

  else if ((*(a2 + 36) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 20);
  a1[9] |= 2u;
  a1[5] = v8;
  v4 = *(a2 + 36);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v4 & 8) != 0)
  {
LABEL_8:
    v5 = *(a2 + 28);
    a1[9] |= 8u;
    a1[7] = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_10014CB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10014CB7C(uint64_t a1)
{
  *a1 = off_100996C10;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10014CBD0(uint64_t a1)
{
  *a1 = off_100996C10;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10014CCA4(uint64_t a1)
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

uint64_t sub_10014CCC4(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if (TagFallback >> 3 > 2)
      {
        if (v8 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v15 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_37;
          }
        }

        else if (v8 == 4 && (TagFallback & 7) == 0)
        {
          v11 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v8 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v12 = *(this + 1);
      v9 = *(this + 2);
      if (v12 >= v9 || (v13 = *v12, (v13 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
        if (!result)
        {
          return result;
        }

        v14 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        a1[4] = v13;
        v14 = v12 + 1;
        *(this + 1) = v14;
      }

      a1[9] |= 1u;
      if (v14 < v9 && *v14 == 16)
      {
        v10 = v14 + 1;
        *(this + 1) = v10;
LABEL_29:
        if (v10 >= v9 || (v16 = *v10, (v16 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
          if (!result)
          {
            return result;
          }

          v17 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          a1[5] = v16;
          v17 = v10 + 1;
          *(this + 1) = v17;
        }

        a1[9] |= 2u;
        if (v17 < v9 && *v17 == 24)
        {
          v15 = v17 + 1;
          *(this + 1) = v15;
LABEL_37:
          if (v15 >= v9 || (v18 = *v15, (v18 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 6);
            if (!result)
            {
              return result;
            }

            v19 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            a1[6] = v18;
            v19 = v15 + 1;
            *(this + 1) = v19;
          }

          a1[9] |= 4u;
          if (v19 < v9 && *v19 == 32)
          {
            v11 = v19 + 1;
            *(this + 1) = v11;
LABEL_45:
            v23 = 0;
            if (v11 >= v9 || (v20 = *v11, (v20 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23);
              if (!result)
              {
                return result;
              }

              v20 = v23;
              v21 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              v21 = v11 + 1;
              *(this + 1) = v21;
            }

            a1[7] = v20;
            a1[9] |= 8u;
            if (v21 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v8 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_29;
    }

LABEL_20:
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

uint64_t sub_10014CF3C(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_14:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
      if ((*(v5 + 36) & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 20), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v6 & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 28), a2, a4);
  }

LABEL_6:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10014D008(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 36))
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

  if ((*(this + 36) & 2) != 0)
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

  if ((*(this + 36) & 4) != 0)
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

  if ((*(this + 36) & 8) != 0)
  {
    v9 = *(this + 7);
    *v3 = 32;
    v10 = v3 + 1;
    if ((v9 & 0x80000000) != 0)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v9, v10, a3);
    }

    else
    {
      if (v9 <= 0x7F)
      {
        *(v3 + 1) = v9;
        v3 = (v3 + 2);
        goto LABEL_20;
      }

      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v10, a3);
    }

    v3 = v11;
  }

LABEL_20:
  v14 = *(this + 1);
  v13 = (this + 8);
  v12 = v14;
  if (!v14 || *v12 == v12[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v13, v3, a3);
}