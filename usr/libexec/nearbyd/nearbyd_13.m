wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000C2BB8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 40);
  if (v6)
  {
    v7 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v7;
    v4 = (a2 + 9);
    v6 = *(this + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(this + 3);
  *v4 = 17;
  *(v4 + 1) = v8;
  v4 = (v4 + 9);
  if ((*(this + 40) & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v9 = *(this + 8);
  *v4 = 24;
  if (v9 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v9;
    v4 = (v4 + 2);
  }

LABEL_10:
  if ((*(this + 160) & 8) == 0)
  {
    goto LABEL_17;
  }

  v10 = *(this + 9);
  *v4 = 32;
  v11 = v4 + 1;
  if ((v10 & 0x80000000) != 0)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v10, v11, a3);
  }

  else
  {
    if (v10 <= 0x7F)
    {
      *(v4 + 1) = v10;
      v4 = (v4 + 2);
      goto LABEL_17;
    }

    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v11, a3);
  }

  v4 = v12;
LABEL_17:
  v13 = *(this + 40);
  if ((v13 & 0x10) != 0)
  {
    v14 = *(this + 5);
    if (!v14)
    {
      v14 = *(qword_1009F9AA0 + 40);
    }

    *v4 = 42;
    v15 = v14[7];
    if (v15 > 0x7F)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v15;
      v16 = (v4 + 2);
    }

    v4 = sub_10009F838(v14, v16, a3);
    v13 = *(this + 40);
  }

  if ((v13 & 0x20) != 0)
  {
    v17 = *(this + 12);
    *v4 = 48;
    v18 = v4 + 1;
    if ((v17 & 0x80000000) != 0)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v17, v18, a3);
    }

    else
    {
      if (v17 <= 0x7F)
      {
        *(v4 + 1) = v17;
        v4 = (v4 + 2);
        goto LABEL_31;
      }

      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v18, a3);
    }

    v4 = v19;
  }

LABEL_31:
  v20 = *(this + 40);
  if ((v20 & 0x40) != 0)
  {
    v21 = *(this + 7);
    *v4 = 57;
    *(v4 + 1) = v21;
    v4 = (v4 + 9);
    v20 = *(this + 40);
  }

  if ((v20 & 0x80) != 0)
  {
    v22 = *(this + 13);
    *v4 = 64;
    if (v22 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v22;
      v4 = (v4 + 2);
    }
  }

  v23 = *(this + 40);
  if ((v23 & 0x100) != 0)
  {
    v24 = *(this + 8);
    *v4 = 74;
    v25 = *(v24 + 23);
    if ((v25 & 0x8000000000000000) != 0)
    {
      v25 = *(v24 + 8);
    }

    if (v25 > 0x7F)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v25, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v25;
      v26 = v4 + 2;
    }

    v27 = *(v24 + 23);
    if (v27 >= 0)
    {
      v28 = v24;
    }

    else
    {
      v28 = *v24;
    }

    if (v27 >= 0)
    {
      v29 = *(v24 + 23);
    }

    else
    {
      v29 = *(v24 + 8);
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v28, v29, v26, a4);
    v23 = *(this + 40);
  }

  if ((v23 & 0x200) != 0)
  {
    v30 = *(this + 22);
    *v4 = 80;
    if (v30 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v30, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v30;
      v4 = (v4 + 2);
    }
  }

  v31 = *(this + 40);
  if ((v31 & 0x400) != 0)
  {
    v32 = *(this + 9);
    *v4 = 89;
    *(v4 + 1) = v32;
    v4 = (v4 + 9);
    v31 = *(this + 40);
    if ((v31 & 0x800) == 0)
    {
LABEL_56:
      if ((v31 & 0x1000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_61;
    }
  }

  else if ((v31 & 0x800) == 0)
  {
    goto LABEL_56;
  }

  v33 = *(this + 10);
  *v4 = 97;
  *(v4 + 1) = v33;
  v4 = (v4 + 9);
  v31 = *(this + 40);
  if ((v31 & 0x1000) == 0)
  {
LABEL_57:
    if ((v31 & 0x2000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_62;
  }

LABEL_61:
  v34 = *(this + 12);
  *v4 = 105;
  *(v4 + 1) = v34;
  v4 = (v4 + 9);
  if ((*(this + 40) & 0x2000) == 0)
  {
    goto LABEL_68;
  }

LABEL_62:
  v35 = *(this + 23);
  *v4 = 112;
  v36 = v4 + 1;
  if ((v35 & 0x80000000) != 0)
  {
    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v35, v36, a3);
  }

  else
  {
    if (v35 <= 0x7F)
    {
      *(v4 + 1) = v35;
      v4 = (v4 + 2);
      goto LABEL_68;
    }

    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v35, v36, a3);
  }

  v4 = v37;
LABEL_68:
  if ((*(this + 161) & 0x40) == 0)
  {
    goto LABEL_75;
  }

  v38 = *(this + 26);
  *v4 = 120;
  v39 = v4 + 1;
  if ((v38 & 0x80000000) != 0)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v38, v39, a3);
  }

  else
  {
    if (v38 <= 0x7F)
    {
      *(v4 + 1) = v38;
      v4 = (v4 + 2);
      goto LABEL_75;
    }

    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v38, v39, a3);
  }

  v4 = v40;
LABEL_75:
  if ((*(this + 161) & 0x80) != 0)
  {
    v41 = *(this + 27);
    *v4 = 384;
    if (v41 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v41, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v41;
      v4 = (v4 + 3);
    }
  }

  if (*(this + 162))
  {
    v42 = *(this + 30);
    *v4 = 392;
    v43 = v4 + 2;
    if ((v42 & 0x80000000) != 0)
    {
      v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v42, v43, a3);
    }

    else
    {
      if (v42 <= 0x7F)
      {
        *(v4 + 2) = v42;
        v4 = (v4 + 3);
        goto LABEL_86;
      }

      v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v42, v43, a3);
    }

    v4 = v44;
  }

LABEL_86:
  v45 = *(this + 40);
  if ((v45 & 0x20000) != 0)
  {
    v46 = *(this + 14);
    *v4 = 401;
    *(v4 + 2) = v46;
    v4 = (v4 + 10);
    v45 = *(this + 40);
  }

  if ((v45 & 0x40000) != 0)
  {
    v47 = *(this + 31);
    *v4 = 408;
    if (v47 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v47, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v47;
      v4 = (v4 + 3);
    }
  }

  if ((*(this + 162) & 8) != 0)
  {
    v48 = *(this + 38);
    *v4 = 416;
    if (v48 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v48, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v48;
      v4 = (v4 + 3);
    }
  }

  if (*(this + 34) >= 1)
  {
    v49 = 0;
    do
    {
      v50 = *(*(this + 16) + 8 * v49);
      *v4 = 426;
      v51 = v50[7];
      if (v51 > 0x7F)
      {
        v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v51, v4 + 2, a3);
      }

      else
      {
        *(v4 + 2) = v51;
        v52 = v4 + 3;
      }

      v4 = sub_1000C16E4(v50, v52, a3);
      ++v49;
    }

    while (v49 < *(this + 34));
  }

  v55 = *(this + 1);
  v54 = (this + 8);
  v53 = v55;
  if (!v55 || *v53 == v53[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v54, v4, a3);
}

uint64_t sub_1000C321C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 160);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_41;
  }

  if ((v3 & 2) != 0)
  {
    v4 = ((v3 << 31 >> 31) & 9) + 9;
  }

  else
  {
    v4 = (v3 << 31 >> 31) & 9;
  }

  if ((v3 & 4) != 0)
  {
    v6 = *(a1 + 32);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(a1 + 160);
    }

    else
    {
      v7 = 2;
    }

    v4 += v7;
    if ((v3 & 8) == 0)
    {
LABEL_7:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_7;
  }

  v8 = *(a1 + 36);
  if ((v8 & 0x80000000) != 0)
  {
    v9 = 11;
  }

  else if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    v3 = *(a1 + 160);
  }

  else
  {
    v9 = 2;
  }

  v4 += v9;
  if ((v3 & 0x10) == 0)
  {
LABEL_8:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

LABEL_21:
  v10 = *(a1 + 40);
  if (!v10)
  {
    v10 = *(qword_1009F9AA0 + 40);
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
  v3 = *(a1 + 160);
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_33;
  }

LABEL_27:
  v14 = *(a1 + 48);
  if ((v14 & 0x80000000) != 0)
  {
    v15 = 11;
  }

  else if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    v3 = *(a1 + 160);
  }

  else
  {
    v15 = 2;
  }

  v4 += v15;
LABEL_33:
  if ((v3 & 0x40) != 0)
  {
    v5 = v4 + 9;
  }

  else
  {
    v5 = v4;
  }

  if ((v3 & 0x80) != 0)
  {
    v16 = *(a1 + 52);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
      v3 = *(a1 + 160);
    }

    else
    {
      v17 = 2;
    }

    v5 += v17;
  }

LABEL_41:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_84;
  }

  if ((v3 & 0x100) != 0)
  {
    v18 = *(a1 + 64);
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
      v3 = *(a1 + 160);
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

    v5 += v23 + v19 + 1;
  }

  if ((v3 & 0x200) != 0)
  {
    v24 = *(a1 + 88);
    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 1;
      v3 = *(a1 + 160);
    }

    else
    {
      v25 = 2;
    }

    v5 += v25;
  }

  v26 = v5 + 9;
  if ((v3 & 0x400) == 0)
  {
    v26 = v5;
  }

  if ((v3 & 0x800) != 0)
  {
    v26 += 9;
  }

  if ((v3 & 0x1000) != 0)
  {
    v5 = v26 + 9;
  }

  else
  {
    v5 = v26;
  }

  if ((v3 & 0x2000) != 0)
  {
    v27 = *(a1 + 92);
    if ((v27 & 0x80000000) != 0)
    {
      v28 = 11;
    }

    else if (v27 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, a2) + 1;
      v3 = *(a1 + 160);
    }

    else
    {
      v28 = 2;
    }

    v5 += v28;
    if ((v3 & 0x4000) == 0)
    {
LABEL_66:
      if ((v3 & 0x8000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_80;
    }
  }

  else if ((v3 & 0x4000) == 0)
  {
    goto LABEL_66;
  }

  v29 = *(a1 + 104);
  if ((v29 & 0x80000000) != 0)
  {
    v30 = 11;
  }

  else if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2) + 1;
    v3 = *(a1 + 160);
  }

  else
  {
    v30 = 2;
  }

  v5 += v30;
  if ((v3 & 0x8000) != 0)
  {
LABEL_80:
    v31 = *(a1 + 108);
    if (v31 >= 0x80)
    {
      v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31, a2) + 2;
      v3 = *(a1 + 160);
    }

    else
    {
      v32 = 3;
    }

    v5 += v32;
  }

LABEL_84:
  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v33 = *(a1 + 120);
      if ((v33 & 0x80000000) != 0)
      {
        v34 = 12;
      }

      else if (v33 >= 0x80)
      {
        v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33, a2) + 2;
        v3 = *(a1 + 160);
      }

      else
      {
        v34 = 3;
      }

      v5 += v34;
    }

    if ((v3 & 0x20000) != 0)
    {
      v5 += 10;
    }

    if ((v3 & 0x40000) != 0)
    {
      v35 = *(a1 + 124);
      if (v35 >= 0x80)
      {
        v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35, a2) + 2;
        v3 = *(a1 + 160);
      }

      else
      {
        v36 = 3;
      }

      v5 += v36;
    }

    if ((v3 & 0x80000) != 0)
    {
      v37 = *(a1 + 152);
      if (v37 >= 0x80)
      {
        v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37, a2) + 2;
      }

      else
      {
        v38 = 3;
      }

      v5 += v38;
    }
  }

  v39 = *(a1 + 136);
  v40 = (v5 + 2 * v39);
  if (v39 >= 1)
  {
    v41 = 0;
    do
    {
      v42 = sub_1000C17D8(*(*(a1 + 128) + 8 * v41), a2);
      v43 = v42;
      if (v42 >= 0x80)
      {
        v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42, a2);
      }

      else
      {
        v44 = 1;
      }

      v40 = (v43 + v40 + v44);
      ++v41;
    }

    while (v41 < *(a1 + 136));
  }

  v45 = *(a1 + 8);
  if (v45 && *v45 != v45[1])
  {
    v40 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v40;
  }

  *(a1 + 156) = v40;
  return v40;
}

uint64_t sub_1000C35E4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009E828(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000C36B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C36D0(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_1000CD0BC();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_1000C1284(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_1000C37F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C3810(uint64_t result, uint64_t a2)
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

uint64_t sub_1000C38A4()
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

  return qword_1009ED810;
}

void sub_1000C3938(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C394C(uint64_t a1)
{
  *a1 = off_10098FBC8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 92) = 0u;
  return a1;
}

void sub_1000C39C4(uint64_t a1)
{
  *a1 = off_10098FBC8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000C3A18(uint64_t a1)
{
  *a1 = off_10098FBC8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1000C3AEC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v73 = 0;
        v8 = *(this + 1);
        if (v8 < *(this + 2))
        {
          v9 = *v8;
          if ((v9 & 0x80000000) == 0)
          {
            *(this + 1) = v8 + 1;
            goto LABEL_56;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v73);
        if (result)
        {
          v9 = v73;
LABEL_56:
          if (v9 > 1)
          {
            wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 1, v9);
          }

          else
          {
            *(a1 + 104) |= 1u;
            *(a1 + 16) = v9;
          }

          v31 = *(this + 1);
          v10 = *(this + 2);
          if (v31 < v10 && *v31 == 16)
          {
            v21 = v31 + 1;
            *(this + 1) = v21;
            goto LABEL_62;
          }

          continue;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v21 = *(this + 1);
        v10 = *(this + 2);
LABEL_62:
        if (v21 >= v10 || (v32 = *v21, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
          if (!result)
          {
            return result;
          }

          v33 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 20) = v32;
          v33 = v21 + 1;
          *(this + 1) = v33;
        }

        *(a1 + 104) |= 2u;
        if (v33 >= v10 || *v33 != 24)
        {
          continue;
        }

        v17 = v33 + 1;
        *(this + 1) = v17;
LABEL_70:
        if (v17 >= v10 || (v34 = *v17, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v35 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v34;
          v35 = v17 + 1;
          *(this + 1) = v35;
        }

        *(a1 + 104) |= 4u;
        if (v35 >= v10 || *v35 != 32)
        {
          continue;
        }

        v19 = v35 + 1;
        *(this + 1) = v19;
LABEL_78:
        if (v19 >= v10 || (v36 = *v19, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
          if (!result)
          {
            return result;
          }

          v37 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 28) = v36;
          v37 = v19 + 1;
          *(this + 1) = v37;
        }

        *(a1 + 104) |= 8u;
        if (v37 >= v10 || *v37 != 40)
        {
          continue;
        }

        v14 = v37 + 1;
        *(this + 1) = v14;
LABEL_86:
        v73 = 0;
        if (v14 >= v10 || (v38 = *v14, (v38 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v73);
          if (!result)
          {
            return result;
          }

          v38 = v73;
          v39 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          v39 = v14 + 1;
          *(this + 1) = v39;
        }

        *(a1 + 36) = v38;
        *(a1 + 104) |= 0x20u;
        if (v39 >= v10 || *v39 != 48)
        {
          continue;
        }

        v24 = v39 + 1;
        *(this + 1) = v24;
LABEL_94:
        v73 = 0;
        if (v24 >= v10 || (v40 = *v24, (v40 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v73);
          if (!result)
          {
            return result;
          }

          v40 = v73;
          v41 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          v41 = v24 + 1;
          *(this + 1) = v41;
        }

        *(a1 + 40) = v40 != 0;
        *(a1 + 104) |= 0x40u;
        if (v41 >= v10 || *v41 != 56)
        {
          continue;
        }

        v26 = v41 + 1;
        *(this + 1) = v26;
LABEL_102:
        if (v26 >= v10 || (v42 = *v26, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 44));
          if (!result)
          {
            return result;
          }

          v43 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 44) = v42;
          v43 = v26 + 1;
          *(this + 1) = v43;
        }

        *(a1 + 104) |= 0x80u;
        if (v43 >= v10 || *v43 != 64)
        {
          continue;
        }

        v20 = v43 + 1;
        *(this + 1) = v20;
LABEL_110:
        if (v20 >= v10 || (v44 = *v20, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
          if (!result)
          {
            return result;
          }

          v45 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 48) = v44;
          v45 = v20 + 1;
          *(this + 1) = v45;
        }

        *(a1 + 104) |= 0x100u;
        if (v45 >= v10 || *v45 != 72)
        {
          continue;
        }

        v29 = v45 + 1;
        *(this + 1) = v29;
LABEL_118:
        if (v29 >= v10 || (v46 = *v29, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 52));
          if (!result)
          {
            return result;
          }

          v47 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 52) = v46;
          v47 = v29 + 1;
          *(this + 1) = v47;
        }

        *(a1 + 104) |= 0x200u;
        if (v47 >= v10 || *v47 != 80)
        {
          continue;
        }

        v16 = v47 + 1;
        *(this + 1) = v16;
LABEL_126:
        if (v16 >= v10 || (v48 = *v16, v48 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 56));
          if (!result)
          {
            return result;
          }

          v49 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 56) = v48;
          v49 = v16 + 1;
          *(this + 1) = v49;
        }

        *(a1 + 104) |= 0x400u;
        if (v49 >= v10 || *v49 != 88)
        {
          continue;
        }

        v28 = v49 + 1;
        *(this + 1) = v28;
LABEL_134:
        if (v28 >= v10 || (v50 = *v28, v50 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 60));
          if (!result)
          {
            return result;
          }

          v51 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 60) = v50;
          v51 = v28 + 1;
          *(this + 1) = v51;
        }

        *(a1 + 104) |= 0x800u;
        if (v51 >= v10 || *v51 != 96)
        {
          continue;
        }

        v13 = v51 + 1;
        *(this + 1) = v13;
LABEL_142:
        if (v13 >= v10 || (v52 = *v13, v52 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 64));
          if (!result)
          {
            return result;
          }

          v53 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 64) = v52;
          v53 = v13 + 1;
          *(this + 1) = v53;
        }

        *(a1 + 104) |= 0x1000u;
        if (v53 >= v10 || *v53 != 104)
        {
          continue;
        }

        v15 = v53 + 1;
        *(this + 1) = v15;
LABEL_150:
        if (v15 >= v10 || (v54 = *v15, v54 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 68));
          if (!result)
          {
            return result;
          }

          v55 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 68) = v54;
          v55 = v15 + 1;
          *(this + 1) = v55;
        }

        *(a1 + 104) |= 0x2000u;
        if (v55 >= v10 || *v55 != 112)
        {
          continue;
        }

        v25 = v55 + 1;
        *(this + 1) = v25;
LABEL_158:
        if (v25 >= v10 || (v56 = *v25, v56 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 72));
          if (!result)
          {
            return result;
          }

          v57 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 72) = v56;
          v57 = v25 + 1;
          *(this + 1) = v57;
        }

        *(a1 + 104) |= 0x4000u;
        if (v57 >= v10 || *v57 != 120)
        {
          continue;
        }

        v12 = v57 + 1;
        *(this + 1) = v12;
LABEL_166:
        v73 = 0;
        if (v12 >= v10 || (v58 = *v12, (v58 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v73);
          if (!result)
          {
            return result;
          }

          v58 = v73;
          v59 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          v59 = (v12 + 1);
          *(this + 1) = v59;
        }

        *(a1 + 76) = v58;
        *(a1 + 104) |= 0x8000u;
        if (v10 - v59 < 2 || *v59 != 128 || v59[1] != 1)
        {
          continue;
        }

        v18 = (v59 + 2);
        *(this + 1) = v18;
LABEL_175:
        if (v18 >= v10 || (v60 = *v18, v60 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
          if (!result)
          {
            return result;
          }

          v61 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 32) = v60;
          v61 = (v18 + 1);
          *(this + 1) = v61;
        }

        *(a1 + 104) |= 0x10u;
        if (v10 - v61 < 2 || *v61 != 136 || v61[1] != 1)
        {
          continue;
        }

        v11 = (v61 + 2);
        *(this + 1) = v11;
LABEL_184:
        if (v11 >= v10 || (v62 = *v11, v62 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 80));
          if (!result)
          {
            return result;
          }

          v63 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 80) = v62;
          v63 = (v11 + 1);
          *(this + 1) = v63;
        }

        *(a1 + 104) |= 0x10000u;
        if (v10 - v63 < 2 || *v63 != 144 || v63[1] != 1)
        {
          continue;
        }

        v22 = (v63 + 2);
        *(this + 1) = v22;
LABEL_193:
        if (v22 >= v10 || (v64 = *v22, v64 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 84));
          if (!result)
          {
            return result;
          }

          v65 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 84) = v64;
          v65 = (v22 + 1);
          *(this + 1) = v65;
        }

        *(a1 + 104) |= 0x20000u;
        if (v10 - v65 < 2 || *v65 != 152 || v65[1] != 1)
        {
          continue;
        }

        v27 = (v65 + 2);
        *(this + 1) = v27;
LABEL_202:
        if (v27 >= v10 || (v66 = *v27, v66 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 88));
          if (!result)
          {
            return result;
          }

          v67 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 88) = v66;
          v67 = (v27 + 1);
          *(this + 1) = v67;
        }

        *(a1 + 104) |= 0x40000u;
        if (v10 - v67 < 2 || *v67 != 160 || v67[1] != 1)
        {
          continue;
        }

        v30 = (v67 + 2);
        *(this + 1) = v30;
LABEL_211:
        if (v30 >= v10 || (v68 = *v30, v68 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 92));
          if (!result)
          {
            return result;
          }

          v69 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 92) = v68;
          v69 = (v30 + 1);
          *(this + 1) = v69;
        }

        *(a1 + 104) |= 0x80000u;
        if (v10 - v69 < 2 || *v69 != 168 || v69[1] != 1)
        {
          continue;
        }

        v23 = (v69 + 2);
        *(this + 1) = v23;
LABEL_220:
        if (v23 >= v10 || (v70 = *v23, v70 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 96));
          if (!result)
          {
            return result;
          }

          v71 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 96) = v70;
          v71 = v23 + 1;
          *(this + 1) = v71;
        }

        *(a1 + 104) |= 0x100000u;
        if (v71 != v10 || !*(this + 11) && *(this + 6) != *(this + 10))
        {
          continue;
        }

        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v17 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_70;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v19 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_78;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v14 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_86;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v24 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_94;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v26 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_102;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v20 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_110;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v29 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_118;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v16 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_126;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v28 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_134;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v13 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_142;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v15 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_150;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v25 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_158;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v12 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_166;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v18 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_175;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_184;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v22 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_193;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v27 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_202;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v30 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_211;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v23 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_220;
      default:
LABEL_50:
        if ((TagFallback & 7) == 4)
        {
          return 1;
        }

        if (wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4))
        {
          continue;
        }

        return 0;
    }

    return result;
  }
}

uint64_t sub_1000C44EC(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 104);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 104);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 20), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x20) == 0)
  {
LABEL_6:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 36), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x40) == 0)
  {
LABEL_7:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x80) == 0)
  {
LABEL_8:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 44), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x100) == 0)
  {
LABEL_9:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 48), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x200) == 0)
  {
LABEL_10:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 52), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x400) == 0)
  {
LABEL_11:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 56), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x800) == 0)
  {
LABEL_12:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 60), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x1000) == 0)
  {
LABEL_13:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 64), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x2000) == 0)
  {
LABEL_14:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 68), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x4000) == 0)
  {
LABEL_15:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 72), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x8000) == 0)
  {
LABEL_16:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xF, *(v5 + 76), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x10) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 32), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 80), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 84), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

LABEL_48:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 92), a2, a4);
    if ((*(v5 + 104) & 0x100000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 88), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x80000) != 0)
  {
    goto LABEL_48;
  }

LABEL_21:
  if ((v6 & 0x100000) != 0)
  {
LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 96), a2, a4);
  }

LABEL_23:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000C4794(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 104))
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
  if ((*(this + 104) & 2) != 0)
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

  if ((*(this + 104) & 4) != 0)
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

  if ((*(this + 104) & 8) != 0)
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

  if ((*(this + 104) & 0x20) != 0)
  {
    v11 = *(this + 9);
    *v3 = 40;
    v12 = v3 + 1;
    if ((v11 & 0x80000000) != 0)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v11, v12, a3);
    }

    else
    {
      if (v11 <= 0x7F)
      {
        *(v3 + 1) = v11;
        v3 = (v3 + 2);
        goto LABEL_27;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v12, a3);
    }

    v3 = v13;
  }

LABEL_27:
  v14 = *(this + 26);
  if ((v14 & 0x40) != 0)
  {
    v15 = *(this + 40);
    *v3 = 48;
    *(v3 + 1) = v15;
    v3 = (v3 + 2);
    v14 = *(this + 26);
  }

  if ((v14 & 0x80) != 0)
  {
    v16 = *(this + 11);
    *v3 = 56;
    if (v16 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v16;
      v3 = (v3 + 2);
    }
  }

  if (*(this + 105))
  {
    v17 = *(this + 12);
    *v3 = 64;
    if (v17 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v17;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 105) & 2) != 0)
  {
    v18 = *(this + 13);
    *v3 = 72;
    if (v18 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v18;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 105) & 4) != 0)
  {
    v19 = *(this + 14);
    *v3 = 80;
    if (v19 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v19;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 105) & 8) != 0)
  {
    v20 = *(this + 15);
    *v3 = 88;
    if (v20 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v20;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 105) & 0x10) != 0)
  {
    v21 = *(this + 16);
    *v3 = 96;
    if (v21 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v21;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 105) & 0x20) != 0)
  {
    v22 = *(this + 17);
    *v3 = 104;
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

  if ((*(this + 105) & 0x40) != 0)
  {
    v23 = *(this + 18);
    *v3 = 112;
    if (v23 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v23;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 105) & 0x80) != 0)
  {
    v24 = *(this + 19);
    *v3 = 120;
    v25 = v3 + 1;
    if ((v24 & 0x80000000) != 0)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v24, v25, a3);
    }

    else
    {
      if (v24 <= 0x7F)
      {
        *(v3 + 1) = v24;
        v3 = (v3 + 2);
        goto LABEL_68;
      }

      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v24, v25, a3);
    }

    v3 = v26;
  }

LABEL_68:
  if ((*(this + 104) & 0x10) != 0)
  {
    v27 = *(this + 8);
    *v3 = 384;
    if (v27 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, v3 + 2, a3);
    }

    else
    {
      *(v3 + 2) = v27;
      v3 = (v3 + 3);
    }
  }

  if (*(this + 106))
  {
    v28 = *(this + 20);
    *v3 = 392;
    if (v28 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v28, v3 + 2, a3);
    }

    else
    {
      *(v3 + 2) = v28;
      v3 = (v3 + 3);
    }
  }

  if ((*(this + 106) & 2) != 0)
  {
    v29 = *(this + 21);
    *v3 = 400;
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

  if ((*(this + 106) & 4) != 0)
  {
    v30 = *(this + 22);
    *v3 = 408;
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

  if ((*(this + 106) & 8) != 0)
  {
    v31 = *(this + 23);
    *v3 = 416;
    if (v31 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v31, v3 + 2, a3);
    }

    else
    {
      *(v3 + 2) = v31;
      v3 = (v3 + 3);
    }
  }

  if ((*(this + 106) & 0x10) != 0)
  {
    v32 = *(this + 24);
    *v3 = 424;
    if (v32 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v32, v3 + 2, a3);
    }

    else
    {
      *(v3 + 2) = v32;
      v3 = (v3 + 3);
    }
  }

  v35 = *(this + 1);
  v34 = (this + 8);
  v33 = v35;
  if (!v35 || *v33 == v33[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v34, v3, a3);
}

uint64_t sub_1000C4C44(unsigned int *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[26];
  if (!v3)
  {
    v5 = 0;
    goto LABEL_45;
  }

  if (v3)
  {
    v6 = a1[4];
    if ((v6 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = a1[26];
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
    if ((v3 & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  v7 = a1[5];
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
    v3 = a1[26];
  }

  else
  {
    v8 = 2;
  }

  v4 += v8;
LABEL_17:
  if ((v3 & 4) != 0)
  {
    v9 = a1[6];
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      v3 = a1[26];
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
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

  v11 = a1[7];
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
    v3 = a1[26];
  }

  else
  {
    v12 = 2;
  }

  v4 += v12;
  if ((v3 & 0x10) == 0)
  {
LABEL_20:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

LABEL_30:
  v13 = a1[8];
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 2;
    v3 = a1[26];
  }

  else
  {
    v14 = 3;
  }

  v4 += v14;
  if ((v3 & 0x20) != 0)
  {
LABEL_34:
    v15 = a1[9];
    if ((v15 & 0x80000000) != 0)
    {
      v16 = 11;
    }

    else if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
      v3 = a1[26];
    }

    else
    {
      v16 = 2;
    }

    v4 += v16;
  }

LABEL_40:
  v5 = ((v3 >> 5) & 2) + v4;
  if ((v3 & 0x80) != 0)
  {
    v17 = a1[11];
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
      v3 = a1[26];
    }

    else
    {
      v18 = 2;
    }

    v5 = (v18 + v5);
  }

LABEL_45:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_89;
  }

  if ((v3 & 0x100) != 0)
  {
    v19 = a1[12];
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
      v3 = a1[26];
    }

    else
    {
      v20 = 2;
    }

    v5 = (v20 + v5);
    if ((v3 & 0x200) == 0)
    {
LABEL_48:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_63;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_48;
  }

  v21 = a1[13];
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 1;
    v3 = a1[26];
  }

  else
  {
    v22 = 2;
  }

  v5 = (v22 + v5);
  if ((v3 & 0x400) == 0)
  {
LABEL_49:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_67;
  }

LABEL_63:
  v23 = a1[14];
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2) + 1;
    v3 = a1[26];
  }

  else
  {
    v24 = 2;
  }

  v5 = (v24 + v5);
  if ((v3 & 0x800) == 0)
  {
LABEL_50:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_71;
  }

LABEL_67:
  v25 = a1[15];
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2) + 1;
    v3 = a1[26];
  }

  else
  {
    v26 = 2;
  }

  v5 = (v26 + v5);
  if ((v3 & 0x1000) == 0)
  {
LABEL_51:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_75;
  }

LABEL_71:
  v27 = a1[16];
  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, a2) + 1;
    v3 = a1[26];
  }

  else
  {
    v28 = 2;
  }

  v5 = (v28 + v5);
  if ((v3 & 0x2000) == 0)
  {
LABEL_52:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_79;
  }

LABEL_75:
  v29 = a1[17];
  if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2) + 1;
    v3 = a1[26];
  }

  else
  {
    v30 = 2;
  }

  v5 = (v30 + v5);
  if ((v3 & 0x4000) == 0)
  {
LABEL_53:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_83;
  }

LABEL_79:
  v31 = a1[18];
  if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31, a2) + 1;
    v3 = a1[26];
  }

  else
  {
    v32 = 2;
  }

  v5 = (v32 + v5);
  if ((v3 & 0x8000) != 0)
  {
LABEL_83:
    v33 = a1[19];
    if ((v33 & 0x80000000) != 0)
    {
      v34 = 11;
    }

    else if (v33 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33, a2) + 1;
      v3 = a1[26];
    }

    else
    {
      v34 = 2;
    }

    v5 = (v34 + v5);
  }

LABEL_89:
  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v35 = a1[20];
      if (v35 >= 0x80)
      {
        v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35, a2) + 2;
        v3 = a1[26];
      }

      else
      {
        v36 = 3;
      }

      v5 = (v36 + v5);
      if ((v3 & 0x20000) == 0)
      {
LABEL_92:
        if ((v3 & 0x40000) == 0)
        {
          goto LABEL_93;
        }

        goto LABEL_104;
      }
    }

    else if ((v3 & 0x20000) == 0)
    {
      goto LABEL_92;
    }

    v37 = a1[21];
    if (v37 >= 0x80)
    {
      v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37, a2) + 2;
      v3 = a1[26];
    }

    else
    {
      v38 = 3;
    }

    v5 = (v38 + v5);
    if ((v3 & 0x40000) == 0)
    {
LABEL_93:
      if ((v3 & 0x80000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_108;
    }

LABEL_104:
    v39 = a1[22];
    if (v39 >= 0x80)
    {
      v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39, a2) + 2;
      v3 = a1[26];
    }

    else
    {
      v40 = 3;
    }

    v5 = (v40 + v5);
    if ((v3 & 0x80000) == 0)
    {
LABEL_94:
      if ((v3 & 0x100000) == 0)
      {
        goto LABEL_116;
      }

LABEL_112:
      v43 = a1[24];
      if (v43 >= 0x80)
      {
        v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43, a2) + 2;
      }

      else
      {
        v44 = 3;
      }

      v5 = (v44 + v5);
      goto LABEL_116;
    }

LABEL_108:
    v41 = a1[23];
    if (v41 >= 0x80)
    {
      v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41, a2) + 2;
      v3 = a1[26];
    }

    else
    {
      v42 = 3;
    }

    v5 = (v42 + v5);
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_112;
  }

LABEL_116:
  v45 = *(a1 + 1);
  if (v45 && *v45 != v45[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 2), a2) + v5;
  }

  a1[25] = v5;
  return v5;
}

uint64_t sub_1000C5050(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009DB24(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000C5124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C513C(uint64_t result, uint64_t a2)
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

uint64_t sub_1000C51D0()
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

  return qword_1009ED820;
}

void sub_1000C5264(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C5278(uint64_t a1)
{
  *a1 = off_10098FC78;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  return a1;
}

void sub_1000C52EC(uint64_t *a1)
{
  *a1 = off_10098FC78;
  sub_100077C08(a1 + 2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000C5350(uint64_t *a1)
{
  sub_1000C52EC(a1);

  operator delete();
}

uint64_t sub_1000C53F4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 > 5)
          {
            if (TagFallback >> 3 <= 7)
            {
              if (v8 == 6)
              {
                if ((TagFallback & 7) == 0)
                {
                  v16 = *(this + 1);
                  v10 = *(this + 2);
                  goto LABEL_86;
                }
              }

              else if (v8 == 7 && (TagFallback & 7) == 0)
              {
                v13 = *(this + 1);
                v10 = *(this + 2);
                goto LABEL_94;
              }
            }

            else if (v8 == 8)
            {
              if ((TagFallback & 7) == 0)
              {
                v17 = *(this + 1);
                v10 = *(this + 2);
                goto LABEL_102;
              }
            }

            else if (v8 == 9)
            {
              if ((TagFallback & 7) == 0)
              {
                v18 = *(this + 1);
                v10 = *(this + 2);
                goto LABEL_110;
              }
            }

            else if (v8 == 10 && (TagFallback & 7) == 0)
            {
              v12 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_118;
            }

            goto LABEL_40;
          }

          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v8 != 1)
          {
            if (v8 != 2 || v9 != 2)
            {
              goto LABEL_40;
            }

            goto LABEL_52;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_40;
          }

          v49[0] = 0;
          v14 = *(this + 1);
          if (v14 >= *(this + 2) || (v15 = *v14, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v49);
            if (!result)
            {
              return result;
            }

            v15 = v49[0];
          }

          else
          {
            *(this + 1) = v14 + 1;
          }

          if (sub_100094788(v15))
          {
            *(a1 + 88) |= 1u;
            *(a1 + 48) = v15;
          }

          else
          {
            wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 1, v15);
          }

          v20 = *(this + 1);
          if (v20 < *(this + 2) && *v20 == 18)
          {
            while (1)
            {
              *(this + 1) = v20 + 1;
LABEL_52:
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
                sub_1000CCF2C();
              }

              v23 = *(a1 + 16);
              *(a1 + 24) = v22 + 1;
              v24 = *(v23 + 8 * v22);
              v49[0] = 0;
              v25 = *(this + 1);
              if (v25 >= *(this + 2) || *v25 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v49))
                {
                  return 0;
                }
              }

              else
              {
                v49[0] = *v25;
                *(this + 1) = v25 + 1;
              }

              v26 = *(this + 14);
              v27 = *(this + 15);
              *(this + 14) = v26 + 1;
              if (v26 >= v27)
              {
                return 0;
              }

              v28 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v49[0]);
              if (!sub_1000B2078(v24, this, v29, v30) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v28);
              v31 = *(this + 14);
              v32 = __OFSUB__(v31, 1);
              v33 = v31 - 1;
              if (v33 < 0 == v32)
              {
                *(this + 14) = v33;
              }

              v20 = *(this + 1);
              if (v20 >= *(this + 2))
              {
                break;
              }

              v34 = *v20;
              if (v34 != 18)
              {
                if (v34 != 25)
                {
                  goto LABEL_1;
                }

                *(this + 1) = v20 + 1;
                goto LABEL_70;
              }
            }
          }
        }

        if (v8 != 3)
        {
          break;
        }

        if (v9 != 1)
        {
          goto LABEL_40;
        }

LABEL_70:
        *v49 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v49) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = *v49;
        *(a1 + 88) |= 4u;
        v35 = *(this + 1);
        if (v35 < *(this + 2) && *v35 == 33)
        {
          *(this + 1) = v35 + 1;
          goto LABEL_74;
        }
      }

      if (v8 != 4)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_40;
      }

LABEL_74:
      *v49 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v49) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 56) = *v49;
      *(a1 + 88) |= 8u;
      v36 = *(this + 1);
      v10 = *(this + 2);
      if (v36 < v10 && *v36 == 40)
      {
        v11 = v36 + 1;
        *(this + 1) = v11;
LABEL_78:
        if (v11 >= v10 || (v37 = *v11, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 52));
          if (!result)
          {
            return result;
          }

          v38 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 52) = v37;
          v38 = v11 + 1;
          *(this + 1) = v38;
        }

        *(a1 + 88) |= 0x10u;
        if (v38 < v10 && *v38 == 48)
        {
          v16 = v38 + 1;
          *(this + 1) = v16;
LABEL_86:
          if (v16 >= v10 || (v39 = *v16, v39 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 64));
            if (!result)
            {
              return result;
            }

            v40 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            *(a1 + 64) = v39;
            v40 = v16 + 1;
            *(this + 1) = v40;
          }

          *(a1 + 88) |= 0x20u;
          if (v40 < v10 && *v40 == 56)
          {
            v13 = v40 + 1;
            *(this + 1) = v13;
LABEL_94:
            if (v13 >= v10 || (v41 = *v13, v41 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 68));
              if (!result)
              {
                return result;
              }

              v42 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 68) = v41;
              v42 = v13 + 1;
              *(this + 1) = v42;
            }

            *(a1 + 88) |= 0x40u;
            if (v42 < v10 && *v42 == 64)
            {
              v17 = v42 + 1;
              *(this + 1) = v17;
LABEL_102:
              v49[0] = 0;
              if (v17 >= v10 || (v43 = *v17, (v43 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v49);
                if (!result)
                {
                  return result;
                }

                v43 = v49[0];
                v44 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                v44 = v17 + 1;
                *(this + 1) = v44;
              }

              *(a1 + 72) = v43;
              *(a1 + 88) |= 0x80u;
              if (v44 < v10 && *v44 == 72)
              {
                v18 = v44 + 1;
                *(this + 1) = v18;
LABEL_110:
                if (v18 >= v10 || (v45 = *v18, v45 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 76));
                  if (!result)
                  {
                    return result;
                  }

                  v46 = *(this + 1);
                  v10 = *(this + 2);
                }

                else
                {
                  *(a1 + 76) = v45;
                  v46 = v18 + 1;
                  *(this + 1) = v46;
                }

                *(a1 + 88) |= 0x100u;
                if (v46 < v10 && *v46 == 80)
                {
                  v12 = v46 + 1;
                  *(this + 1) = v12;
LABEL_118:
                  if (v12 >= v10 || (v47 = *v12, v47 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 80));
                    if (!result)
                    {
                      return result;
                    }

                    v48 = *(this + 1);
                    v10 = *(this + 2);
                  }

                  else
                  {
                    *(a1 + 80) = v47;
                    v48 = v12 + 1;
                    *(this + 1) = v48;
                  }

                  *(a1 + 88) |= 0x200u;
                  if (v48 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v8 == 5 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_78;
    }

LABEL_40:
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

uint64_t sub_1000C59E8(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 88))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 48), a2, a4);
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

  v7 = *(v5 + 88);
  if ((v7 & 4) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 40), a3);
    v7 = *(v5 + 88);
    if ((v7 & 8) == 0)
    {
LABEL_8:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_23;
    }
  }

  else if ((v7 & 8) == 0)
  {
    goto LABEL_8;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 56), a3);
  v7 = *(v5 + 88);
  if ((v7 & 0x10) == 0)
  {
LABEL_9:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 52), a2, a4);
  v7 = *(v5 + 88);
  if ((v7 & 0x20) == 0)
  {
LABEL_10:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 64), a2, a4);
  v7 = *(v5 + 88);
  if ((v7 & 0x40) == 0)
  {
LABEL_11:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 68), a2, a4);
  v7 = *(v5 + 88);
  if ((v7 & 0x80) == 0)
  {
LABEL_12:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_13;
    }

LABEL_27:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 76), a2, a4);
    if ((*(v5 + 88) & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, *(v5 + 72), a2, a4);
  v7 = *(v5 + 88);
  if ((v7 & 0x100) != 0)
  {
    goto LABEL_27;
  }

LABEL_13:
  if ((v7 & 0x200) != 0)
  {
LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 80), a2, a4);
  }

LABEL_15:
  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000C5B7C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 88))
  {
    v5 = *(this + 12);
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
  if (*(this + 6) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(this + 2) + 8 * v8);
      *v3 = 18;
      v10 = v9[6];
      if (v10 > 0x7F)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v3 + 1, a3);
      }

      else
      {
        *(v3 + 1) = v10;
        v11 = (v3 + 2);
      }

      v3 = sub_1000B229C(v9, v11, a3);
      ++v8;
    }

    while (v8 < *(this + 6));
  }

  v12 = *(this + 22);
  if ((v12 & 4) != 0)
  {
    v13 = *(this + 5);
    *v3 = 25;
    *(v3 + 1) = v13;
    v3 = (v3 + 9);
    v12 = *(this + 22);
    if ((v12 & 8) == 0)
    {
LABEL_16:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }
  }

  else if ((v12 & 8) == 0)
  {
    goto LABEL_16;
  }

  v14 = *(this + 7);
  *v3 = 33;
  *(v3 + 1) = v14;
  v3 = (v3 + 9);
  if ((*(this + 22) & 0x10) == 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  v15 = *(this + 13);
  *v3 = 40;
  if (v15 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v15;
    v3 = (v3 + 2);
  }

LABEL_23:
  if ((*(this + 88) & 0x20) != 0)
  {
    v16 = *(this + 16);
    *v3 = 48;
    if (v16 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v16;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 88) & 0x40) != 0)
  {
    v17 = *(this + 17);
    *v3 = 56;
    if (v17 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v17;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 88) & 0x80) != 0)
  {
    v18 = *(this + 18);
    *v3 = 64;
    v19 = v3 + 1;
    if ((v18 & 0x80000000) != 0)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v18, v19, a3);
    }

    else
    {
      if (v18 <= 0x7F)
      {
        *(v3 + 1) = v18;
        v3 = (v3 + 2);
        goto LABEL_38;
      }

      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v19, a3);
    }

    v3 = v20;
  }

LABEL_38:
  if (*(this + 89))
  {
    v21 = *(this + 19);
    *v3 = 72;
    if (v21 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v21;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 89) & 2) != 0)
  {
    v22 = *(this + 20);
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

uint64_t sub_1000C5E80(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 88);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_38;
  }

  if (v3)
  {
    v6 = *(a1 + 48);
    if ((v6 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(a1 + 88);
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

  if ((v3 & 0x10) != 0)
  {
    v7 = *(a1 + 52);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(a1 + 88);
    }

    else
    {
      v8 = 2;
    }

    v5 += v8;
    if ((v3 & 0x20) == 0)
    {
LABEL_17:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_28;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_17;
  }

  v9 = *(a1 + 64);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
    v3 = *(a1 + 88);
  }

  else
  {
    v10 = 2;
  }

  v5 += v10;
  if ((v3 & 0x40) == 0)
  {
LABEL_18:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_32;
  }

LABEL_28:
  v11 = *(a1 + 68);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
    v3 = *(a1 + 88);
  }

  else
  {
    v12 = 2;
  }

  v5 += v12;
  if ((v3 & 0x80) != 0)
  {
LABEL_32:
    v13 = *(a1 + 72);
    if ((v13 & 0x80000000) != 0)
    {
      v14 = 11;
    }

    else if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
      v3 = *(a1 + 88);
    }

    else
    {
      v14 = 2;
    }

    v5 += v14;
  }

LABEL_38:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v15 = *(a1 + 76);
      if (v15 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
        v3 = *(a1 + 88);
      }

      else
      {
        v16 = 2;
      }

      v5 += v16;
    }

    if ((v3 & 0x200) != 0)
    {
      v17 = *(a1 + 80);
      if (v17 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
      }

      else
      {
        v18 = 2;
      }

      v5 += v18;
    }
  }

  v19 = *(a1 + 24);
  v20 = (v19 + v5);
  if (v19 >= 1)
  {
    v21 = 0;
    do
    {
      v22 = sub_1000B2384(*(*(a1 + 16) + 8 * v21), a2);
      v23 = v22;
      if (v22 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
      }

      else
      {
        v24 = 1;
      }

      v20 = (v23 + v20 + v24);
      ++v21;
    }

    while (v21 < *(a1 + 24));
  }

  v25 = *(a1 + 8);
  if (v25 && *v25 != v25[1])
  {
    v20 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v20;
  }

  *(a1 + 84) = v20;
  return v20;
}

uint64_t sub_1000C6098(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009DE78(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000C616C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C6184(uint64_t result, uint64_t a2)
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

uint64_t sub_1000C6218()
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

  return qword_1009ED830;
}

void sub_1000C62AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C62C0(uint64_t a1)
{
  *a1 = off_10098FD28;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

void sub_1000C6324(void *a1)
{
  *a1 = off_10098FD28;
  v2 = (a1 + 1);
  sub_1000C6384(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_1000C6384(void *result)
{
  if (qword_1009F9AB8 != result)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[4];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_1000C6428(void *a1)
{
  sub_1000C6324(a1);

  operator delete();
}

uint64_t sub_1000C64CC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          goto LABEL_26;
        }

        v47 = 0;
        v13 = *(this + 1);
        if (v13 >= *(this + 2) || (v14 = *v13, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v47);
          if (!result)
          {
            return result;
          }

          v14 = v47;
        }

        else
        {
          *(this + 1) = v13 + 1;
        }

        if (sub_100094788(v14))
        {
          *(a1 + 52) |= 1u;
          *(a1 + 16) = v14;
        }

        else
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 1, v14);
        }

        v19 = *(this + 1);
        v15 = *(this + 2);
        if (v19 < v15 && *v19 == 16)
        {
          v16 = v19 + 1;
          *(this + 1) = v16;
LABEL_38:
          if (v16 >= v15 || (v20 = *v16, v20 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
            if (!result)
            {
              return result;
            }

            v21 = *(this + 1);
            v15 = *(this + 2);
          }

          else
          {
            *(a1 + 20) = v20;
            v21 = v16 + 1;
            *(this + 1) = v21;
          }

          v10 = *(a1 + 52) | 2;
          *(a1 + 52) = v10;
          if (v21 < v15 && *v21 == 26)
          {
            *(this + 1) = v21 + 1;
            goto LABEL_46;
          }
        }
      }

      else if (v8 == 2)
      {
        if ((TagFallback & 7) == 0)
        {
          v16 = *(this + 1);
          v15 = *(this + 2);
          goto LABEL_38;
        }

LABEL_26:
        if (v9 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v8 != 3 || v9 != 2)
        {
          goto LABEL_26;
        }

        v10 = *(a1 + 52);
LABEL_46:
        *(a1 + 52) = v10 | 4;
        v22 = *(a1 + 24);
        if (!v22)
        {
          operator new();
        }

        v48 = 0;
        v23 = *(this + 1);
        if (v23 >= *(this + 2) || *v23 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v48))
          {
            return 0;
          }
        }

        else
        {
          v48 = *v23;
          *(this + 1) = v23 + 1;
        }

        v24 = *(this + 14);
        v25 = *(this + 15);
        *(this + 14) = v24 + 1;
        if (v24 >= v25)
        {
          return 0;
        }

        v26 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v48);
        if (!sub_1000B2078(v22, this, v27, v28) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v26);
        v29 = *(this + 14);
        v30 = __OFSUB__(v29, 1);
        v31 = v29 - 1;
        if (v31 < 0 == v30)
        {
          *(this + 14) = v31;
        }

        v32 = *(this + 1);
        if (v32 < *(this + 2) && *v32 == 34)
        {
          *(this + 1) = v32 + 1;
          goto LABEL_60;
        }
      }
    }

    if (v8 != 4)
    {
      if (v8 == 5)
      {
        if ((TagFallback & 7) == 0)
        {
          v17 = *(this + 1);
          v11 = *(this + 2);
          goto LABEL_74;
        }
      }

      else if (v8 == 6 && (TagFallback & 7) == 0)
      {
        v12 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_82;
      }

      goto LABEL_26;
    }

    if (v9 != 2)
    {
      goto LABEL_26;
    }

LABEL_60:
    *(a1 + 52) |= 8u;
    v33 = *(a1 + 32);
    if (!v33)
    {
      operator new();
    }

    v49 = 0;
    v34 = *(this + 1);
    if (v34 >= *(this + 2) || *v34 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49))
      {
        return 0;
      }
    }

    else
    {
      v49 = *v34;
      *(this + 1) = v34 + 1;
    }

    v35 = *(this + 14);
    v36 = *(this + 15);
    *(this + 14) = v35 + 1;
    if (v35 >= v36)
    {
      return 0;
    }

    v37 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v49);
    if (!sub_1000B2078(v33, this, v38, v39) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v37);
    v40 = *(this + 14);
    v30 = __OFSUB__(v40, 1);
    v41 = v40 - 1;
    if (v41 < 0 == v30)
    {
      *(this + 14) = v41;
    }

    v42 = *(this + 1);
    v11 = *(this + 2);
    if (v42 < v11 && *v42 == 40)
    {
      v17 = v42 + 1;
      *(this + 1) = v17;
LABEL_74:
      if (v17 >= v11 || (v43 = *v17, v43 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
        if (!result)
        {
          return result;
        }

        v44 = *(this + 1);
        v11 = *(this + 2);
      }

      else
      {
        *(a1 + 40) = v43;
        v44 = v17 + 1;
        *(this + 1) = v44;
      }

      *(a1 + 52) |= 0x10u;
      if (v44 < v11 && *v44 == 48)
      {
        v12 = v44 + 1;
        *(this + 1) = v12;
LABEL_82:
        if (v12 >= v11 || (v45 = *v12, v45 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 44));
          if (!result)
          {
            return result;
          }

          v46 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          *(a1 + 44) = v45;
          v46 = v12 + 1;
          *(this + 1) = v46;
        }

        *(a1 + 52) |= 0x20u;
        if (v46 == v11 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

uint64_t sub_1000C6994(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 52);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 20), a2, a4);
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

LABEL_16:
  v10 = *(v5 + 24);
  if (!v10)
  {
    v10 = *(qword_1009F9AB8 + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v10, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 40), a2, a4);
    if ((*(v5 + 52) & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_19:
  v11 = *(v5 + 32);
  if (!v11)
  {
    v11 = *(qword_1009F9AB8 + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v11, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  if ((v6 & 0x20) != 0)
  {
LABEL_7:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 44), a2, a4);
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

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000C6AB8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 52))
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
  if ((*(this + 52) & 2) != 0)
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

  v9 = *(this + 13);
  if ((v9 & 4) != 0)
  {
    v10 = *(this + 3);
    if (!v10)
    {
      v10 = *(qword_1009F9AB8 + 24);
    }

    *v3 = 26;
    v11 = v10[6];
    if (v11 > 0x7F)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v11;
      v12 = (v3 + 2);
    }

    v3 = sub_1000B229C(v10, v12, a3);
    v9 = *(this + 13);
    if ((v9 & 8) == 0)
    {
LABEL_14:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }
  }

  else if ((v9 & 8) == 0)
  {
    goto LABEL_14;
  }

  v13 = *(this + 4);
  if (!v13)
  {
    v13 = *(qword_1009F9AB8 + 32);
  }

  *v3 = 34;
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

  v3 = sub_1000B229C(v13, v15, a3);
  if ((*(this + 13) & 0x10) != 0)
  {
LABEL_28:
    v16 = *(this + 10);
    *v3 = 40;
    if (v16 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v16;
      v3 = (v3 + 2);
    }
  }

LABEL_31:
  if ((*(this + 52) & 0x20) != 0)
  {
    v17 = *(this + 11);
    *v3 = 48;
    if (v17 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v17;
      v3 = (v3 + 2);
    }
  }

  v20 = *(this + 1);
  v19 = (this + 8);
  v18 = v20;
  if (!v20 || *v18 == v18[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v19, v3, a3);
}

uint64_t sub_1000C6CA8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 52);
  if (v3)
  {
    if (*(a1 + 52))
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
        v3 = *(a1 + 52);
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
      if ((*(a1 + 52) & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    v6 = *(a1 + 20);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(a1 + 52);
    }

    else
    {
      v7 = 2;
    }

    v4 = (v7 + v4);
LABEL_17:
    if ((v3 & 4) != 0)
    {
      v8 = *(a1 + 24);
      if (!v8)
      {
        v8 = *(qword_1009F9AB8 + 24);
      }

      v9 = sub_1000B2384(v8, a2);
      v10 = v9;
      if (v9 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
      }

      else
      {
        v11 = 1;
      }

      v4 = (v4 + v10 + v11 + 1);
      v3 = *(a1 + 52);
      if ((v3 & 8) == 0)
      {
LABEL_19:
        if ((v3 & 0x10) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_34;
      }
    }

    else if ((v3 & 8) == 0)
    {
      goto LABEL_19;
    }

    v12 = *(a1 + 32);
    if (!v12)
    {
      v12 = *(qword_1009F9AB8 + 32);
    }

    v13 = sub_1000B2384(v12, a2);
    v14 = v13;
    if (v13 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
    }

    else
    {
      v15 = 1;
    }

    v4 = (v4 + v14 + v15 + 1);
    v3 = *(a1 + 52);
    if ((v3 & 0x10) == 0)
    {
LABEL_20:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_42;
      }

LABEL_38:
      v18 = *(a1 + 44);
      if (v18 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
      }

      else
      {
        v19 = 2;
      }

      v4 = (v19 + v4);
      goto LABEL_42;
    }

LABEL_34:
    v16 = *(a1 + 40);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
      v3 = *(a1 + 52);
    }

    else
    {
      v17 = 2;
    }

    v4 = (v17 + v4);
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

  v4 = 0;
LABEL_42:
  v20 = *(a1 + 8);
  if (v20 && *v20 != v20[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 48) = v4;
  return v4;
}

uint64_t sub_1000C6E60(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009E054(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000C6F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C6F4C(uint64_t result, uint64_t a2)
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

uint64_t sub_1000C6FE0()
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

  return qword_1009ED840;
}

void sub_1000C7074(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C7088(uint64_t a1)
{
  *a1 = off_10098FDD8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 84) = 0;
  *(a1 + 88) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  return a1;
}

void sub_1000C70F4(void *a1)
{
  *a1 = off_10098FDD8;
  if (qword_1009F9AC0 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000C718C(void *a1)
{
  sub_1000C70F4(a1);

  operator delete();
}

uint64_t sub_1000C7230(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          goto LABEL_42;
        }

        *(a1 + 88) |= 1u;
        v9 = *(a1 + 16);
        if (!v9)
        {
          operator new();
        }

        v70 = 0;
        v10 = *(this + 1);
        if (v10 >= *(this + 2) || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v70))
          {
            return 0;
          }
        }

        else
        {
          v70 = *v10;
          *(this + 1) = v10 + 1;
        }

        v28 = *(this + 14);
        v29 = *(this + 15);
        *(this + 14) = v28 + 1;
        if (v28 >= v29)
        {
          return 0;
        }

        v30 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v70);
        if (!sub_10009F5D8(v9, this, v31, v32) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v30);
        v33 = *(this + 14);
        v34 = __OFSUB__(v33, 1);
        v35 = v33 - 1;
        if (v35 < 0 == v34)
        {
          *(this + 14) = v35;
        }

        v36 = *(this + 1);
        v21 = *(this + 2);
        if (v36 >= v21 || *v36 != 16)
        {
          continue;
        }

        v22 = v36 + 1;
        *(this + 1) = v22;
        goto LABEL_55;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v22 = *(this + 1);
        v21 = *(this + 2);
LABEL_55:
        v68 = 0;
        if (v22 >= v21 || (v37 = *v22, (v37 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v68);
          if (!result)
          {
            return result;
          }

          v37 = v68;
        }

        else
        {
          *(this + 1) = v22 + 1;
        }

        if (v37 > 1)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 2, v37);
        }

        else
        {
          *(a1 + 88) |= 2u;
          *(a1 + 24) = v37;
        }

        v39 = *(this + 1);
        v11 = *(this + 2);
        if (v39 >= v11 || *v39 != 24)
        {
          continue;
        }

        v17 = v39 + 1;
        *(this + 1) = v17;
LABEL_66:
        if (v17 >= v11 || (v40 = *v17, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
          if (!result)
          {
            return result;
          }

          v41 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          *(a1 + 28) = v40;
          v41 = v17 + 1;
          *(this + 1) = v41;
        }

        *(a1 + 88) |= 4u;
        if (v41 >= v11 || *v41 != 32)
        {
          continue;
        }

        v19 = v41 + 1;
        *(this + 1) = v19;
LABEL_74:
        if (v19 >= v11 || (v42 = *v19, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
          if (!result)
          {
            return result;
          }

          v43 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          *(a1 + 32) = v42;
          v43 = v19 + 1;
          *(this + 1) = v43;
        }

        *(a1 + 88) |= 8u;
        if (v43 >= v11 || *v43 != 40)
        {
          continue;
        }

        v14 = v43 + 1;
        *(this + 1) = v14;
LABEL_82:
        if (v14 >= v11 || (v44 = *v14, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
          if (!result)
          {
            return result;
          }

          v45 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          *(a1 + 36) = v44;
          v45 = v14 + 1;
          *(this + 1) = v45;
        }

        *(a1 + 88) |= 0x10u;
        if (v45 >= v11 || *v45 != 48)
        {
          continue;
        }

        v23 = v45 + 1;
        *(this + 1) = v23;
LABEL_90:
        if (v23 >= v11 || (v46 = *v23, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
          if (!result)
          {
            return result;
          }

          v47 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          *(a1 + 40) = v46;
          v47 = v23 + 1;
          *(this + 1) = v47;
        }

        *(a1 + 88) |= 0x20u;
        if (v47 >= v11 || *v47 != 56)
        {
          continue;
        }

        v25 = v47 + 1;
        *(this + 1) = v25;
LABEL_98:
        if (v25 >= v11 || (v48 = *v25, v48 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 44));
          if (!result)
          {
            return result;
          }

          v49 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          *(a1 + 44) = v48;
          v49 = v25 + 1;
          *(this + 1) = v49;
        }

        *(a1 + 88) |= 0x40u;
        if (v49 >= v11 || *v49 != 64)
        {
          continue;
        }

        v20 = v49 + 1;
        *(this + 1) = v20;
LABEL_106:
        if (v20 >= v11 || (v50 = *v20, v50 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
          if (!result)
          {
            return result;
          }

          v51 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          *(a1 + 48) = v50;
          v51 = v20 + 1;
          *(this + 1) = v51;
        }

        *(a1 + 88) |= 0x80u;
        if (v51 >= v11 || *v51 != 72)
        {
          continue;
        }

        v27 = v51 + 1;
        *(this + 1) = v27;
LABEL_114:
        if (v27 >= v11 || (v52 = *v27, v52 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 52));
          if (!result)
          {
            return result;
          }

          v53 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          *(a1 + 52) = v52;
          v53 = v27 + 1;
          *(this + 1) = v53;
        }

        *(a1 + 88) |= 0x100u;
        if (v53 >= v11 || *v53 != 80)
        {
          continue;
        }

        v16 = v53 + 1;
        *(this + 1) = v16;
LABEL_122:
        if (v16 >= v11 || (v54 = *v16, v54 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 56));
          if (!result)
          {
            return result;
          }

          v55 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          *(a1 + 56) = v54;
          v55 = v16 + 1;
          *(this + 1) = v55;
        }

        *(a1 + 88) |= 0x200u;
        if (v55 >= v11 || *v55 != 88)
        {
          continue;
        }

        v26 = v55 + 1;
        *(this + 1) = v26;
LABEL_130:
        if (v26 >= v11 || (v56 = *v26, v56 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 60));
          if (!result)
          {
            return result;
          }

          v57 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          *(a1 + 60) = v56;
          v57 = v26 + 1;
          *(this + 1) = v57;
        }

        *(a1 + 88) |= 0x400u;
        if (v57 >= v11 || *v57 != 96)
        {
          continue;
        }

        v13 = v57 + 1;
        *(this + 1) = v13;
LABEL_138:
        if (v13 >= v11 || (v58 = *v13, v58 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 64));
          if (!result)
          {
            return result;
          }

          v59 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          *(a1 + 64) = v58;
          v59 = v13 + 1;
          *(this + 1) = v59;
        }

        *(a1 + 88) |= 0x800u;
        if (v59 >= v11 || *v59 != 104)
        {
          continue;
        }

        v15 = v59 + 1;
        *(this + 1) = v15;
LABEL_146:
        if (v15 >= v11 || (v60 = *v15, v60 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 68));
          if (!result)
          {
            return result;
          }

          v61 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          *(a1 + 68) = v60;
          v61 = v15 + 1;
          *(this + 1) = v61;
        }

        *(a1 + 88) |= 0x1000u;
        if (v61 >= v11 || *v61 != 112)
        {
          continue;
        }

        v24 = v61 + 1;
        *(this + 1) = v24;
LABEL_154:
        if (v24 >= v11 || (v62 = *v24, v62 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 72));
          if (!result)
          {
            return result;
          }

          v63 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          *(a1 + 72) = v62;
          v63 = v24 + 1;
          *(this + 1) = v63;
        }

        *(a1 + 88) |= 0x2000u;
        if (v63 >= v11 || *v63 != 120)
        {
          continue;
        }

        v12 = v63 + 1;
        *(this + 1) = v12;
LABEL_162:
        if (v12 >= v11 || (v64 = *v12, v64 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 76));
          if (!result)
          {
            return result;
          }

          v65 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          *(a1 + 76) = v64;
          v65 = (v12 + 1);
          *(this + 1) = v65;
        }

        *(a1 + 88) |= 0x4000u;
        if (v11 - v65 < 2 || *v65 != 128 || v65[1] != 1)
        {
          continue;
        }

        v18 = (v65 + 2);
        *(this + 1) = v18;
LABEL_171:
        v69 = 0;
        if (v18 >= v11 || (v66 = *v18, (v66 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v69);
          if (!result)
          {
            return result;
          }

          v66 = v69;
          v67 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          v67 = v18 + 1;
          *(this + 1) = v67;
        }

        *(a1 + 80) = v66 != 0;
        *(a1 + 88) |= 0x8000u;
        if (v67 != v11 || !*(this + 11) && *(this + 6) != *(this + 10))
        {
          continue;
        }

        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        break;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v17 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_66;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v19 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_74;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v14 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_82;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v23 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_90;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v25 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_98;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v20 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_106;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v27 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_114;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v16 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_122;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v26 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_130;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v13 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_138;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v15 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_146;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v24 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_154;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v12 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_162;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v18 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_171;
      default:
LABEL_42:
        if (v8 == 4)
        {
          return 1;
        }

        if (wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4))
        {
          continue;
        }

        return 0;
    }

    return result;
  }
}

uint64_t sub_1000C7A84(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 88);
  if (v6)
  {
    v10 = *(this + 16);
    if (!v10)
    {
      v10 = *(qword_1009F9AC0 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
    v6 = *(v5 + 88);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 36), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 44), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 48), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 52), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 56), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 60), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 64), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 68), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

LABEL_40:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 76), a2, a4);
    if ((*(v5 + 88) & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 72), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x4000) != 0)
  {
    goto LABEL_40;
  }

LABEL_16:
  if ((v6 & 0x8000) != 0)
  {
LABEL_17:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x10, *(v5 + 80), a2, a4);
  }

LABEL_18:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000C7CB0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 22);
  if (v5)
  {
    v6 = *(this + 2);
    if (!v6)
    {
      v6 = *(qword_1009F9AC0 + 16);
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
      v9 = (v3 + 2);
    }

    v3 = sub_10009F838(v6, v9, a3);
    v5 = *(this + 22);
  }

  if ((v5 & 2) != 0)
  {
    v10 = *(this + 6);
    *v3 = 16;
    v11 = v3 + 1;
    if ((v10 & 0x80000000) != 0)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v10, v11, a3);
    }

    else
    {
      if (v10 <= 0x7F)
      {
        *(v3 + 1) = v10;
        v3 = (v3 + 2);
        goto LABEL_15;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v11, a3);
    }

    v3 = v12;
  }

LABEL_15:
  if ((*(this + 88) & 4) != 0)
  {
    v13 = *(this + 7);
    *v3 = 24;
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

  if ((*(this + 88) & 8) != 0)
  {
    v14 = *(this + 8);
    *v3 = 32;
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

  if ((*(this + 88) & 0x10) != 0)
  {
    v15 = *(this + 9);
    *v3 = 40;
    if (v15 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v15;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 88) & 0x20) != 0)
  {
    v16 = *(this + 10);
    *v3 = 48;
    if (v16 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v16;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 88) & 0x40) != 0)
  {
    v17 = *(this + 11);
    *v3 = 56;
    if (v17 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v17;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 88) & 0x80) != 0)
  {
    v18 = *(this + 12);
    *v3 = 64;
    if (v18 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v18;
      v3 = (v3 + 2);
    }
  }

  if (*(this + 89))
  {
    v19 = *(this + 13);
    *v3 = 72;
    if (v19 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v19;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 89) & 2) != 0)
  {
    v20 = *(this + 14);
    *v3 = 80;
    if (v20 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v20;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 89) & 4) != 0)
  {
    v21 = *(this + 15);
    *v3 = 88;
    if (v21 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v21;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 89) & 8) != 0)
  {
    v22 = *(this + 16);
    *v3 = 96;
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

  if ((*(this + 89) & 0x10) != 0)
  {
    v23 = *(this + 17);
    *v3 = 104;
    if (v23 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v23;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 89) & 0x20) != 0)
  {
    v24 = *(this + 18);
    *v3 = 112;
    if (v24 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v24, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v24;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 89) & 0x40) != 0)
  {
    v25 = *(this + 19);
    *v3 = 120;
    if (v25 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v25, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v25;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 89) & 0x80) != 0)
  {
    v26 = *(this + 80);
    *v3 = 384;
    *(v3 + 2) = v26;
    v3 = (v3 + 3);
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

uint64_t sub_1000C8064(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 88);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_49;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    v5 = *(qword_1009F9AC0 + 16);
  }

  v6 = sub_10009F954(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(a1 + 88);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 24);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      v3 = *(a1 + 88);
    }

    else
    {
      v10 = 2;
    }

    v4 = (v10 + v4);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v11 = *(a1 + 28);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
      v3 = *(a1 + 88);
    }

    else
    {
      v12 = 2;
    }

    v4 = (v12 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_33;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v13 = *(a1 + 32);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
    v3 = *(a1 + 88);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_37;
  }

LABEL_33:
  v15 = *(a1 + 36);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
    v3 = *(a1 + 88);
  }

  else
  {
    v16 = 2;
  }

  v4 = (v16 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_22:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_41;
  }

LABEL_37:
  v17 = *(a1 + 40);
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
    v3 = *(a1 + 88);
  }

  else
  {
    v18 = 2;
  }

  v4 = (v18 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_23:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_45;
  }

LABEL_41:
  v19 = *(a1 + 44);
  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
    v3 = *(a1 + 88);
  }

  else
  {
    v20 = 2;
  }

  v4 = (v20 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_45:
    v21 = *(a1 + 48);
    if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 1;
      v3 = *(a1 + 88);
    }

    else
    {
      v22 = 2;
    }

    v4 = (v22 + v4);
  }

LABEL_49:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_89;
  }

  if ((v3 & 0x100) != 0)
  {
    v23 = *(a1 + 52);
    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2) + 1;
      v3 = *(a1 + 88);
    }

    else
    {
      v24 = 2;
    }

    LODWORD(v4) = v24 + v4;
    if ((v3 & 0x200) == 0)
    {
LABEL_52:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_66;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_52;
  }

  v25 = *(a1 + 56);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2) + 1;
    v3 = *(a1 + 88);
  }

  else
  {
    v26 = 2;
  }

  LODWORD(v4) = v26 + v4;
  if ((v3 & 0x400) == 0)
  {
LABEL_53:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_70;
  }

LABEL_66:
  v27 = *(a1 + 60);
  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, a2) + 1;
    v3 = *(a1 + 88);
  }

  else
  {
    v28 = 2;
  }

  LODWORD(v4) = v28 + v4;
  if ((v3 & 0x800) == 0)
  {
LABEL_54:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_74;
  }

LABEL_70:
  v29 = *(a1 + 64);
  if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2) + 1;
    v3 = *(a1 + 88);
  }

  else
  {
    v30 = 2;
  }

  LODWORD(v4) = v30 + v4;
  if ((v3 & 0x1000) == 0)
  {
LABEL_55:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_56;
    }

LABEL_78:
    v33 = *(a1 + 72);
    if (v33 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33, a2) + 1;
      v3 = *(a1 + 88);
    }

    else
    {
      v34 = 2;
    }

    LODWORD(v4) = v34 + v4;
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_82;
  }

LABEL_74:
  v31 = *(a1 + 68);
  if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31, a2) + 1;
    v3 = *(a1 + 88);
  }

  else
  {
    v32 = 2;
  }

  LODWORD(v4) = v32 + v4;
  if ((v3 & 0x2000) != 0)
  {
    goto LABEL_78;
  }

LABEL_56:
  if ((v3 & 0x4000) != 0)
  {
LABEL_82:
    v35 = *(a1 + 76);
    if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35, a2) + 1;
      v3 = *(a1 + 88);
    }

    else
    {
      v36 = 2;
    }

    LODWORD(v4) = v36 + v4;
  }

LABEL_86:
  if ((v3 & 0x8000) != 0)
  {
    v4 = (v4 + 3);
  }

  else
  {
    v4 = v4;
  }

LABEL_89:
  v37 = *(a1 + 8);
  if (v37 && *v37 != v37[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 84) = v4;
  return v4;
}

uint64_t sub_1000C8394(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009E410(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000C8468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C8480(uint64_t result, uint64_t a2)
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

uint64_t sub_1000C8514()
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

  return qword_1009ED850;
}

void sub_1000C85A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1000C85BC(void *a1)
{
  *a1 = off_10098FE88;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  return a1;
}

void sub_1000C8618(void *a1)
{
  *a1 = off_10098FE88;
  if (qword_1009F9AC8 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000C86B0(void *a1)
{
  sub_1000C8618(a1);

  operator delete();
}

uint64_t sub_1000C8754(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(a1 + 28) |= 1u;
      v8 = *(a1 + 16);
      if (!v8)
      {
        operator new();
      }

      v19 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v19))
        {
          return 0;
        }
      }

      else
      {
        v19 = *v9;
        *(this + 1) = v9 + 1;
      }

      v10 = *(this + 14);
      v11 = *(this + 15);
      *(this + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v19);
      if (!sub_10009FF9C(v8, this, v13, v14) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v12);
      v15 = *(this + 14);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v17 < 0 == v16)
      {
        *(this + 14) = v17;
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

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000C8918(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 28))
  {
    v6 = *(this + 16);
    if (!v6)
    {
      v6 = *(qword_1009F9AC8 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v6, a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000C899C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 28))
  {
    v4 = *(this + 2);
    if (!v4)
    {
      v4 = *(qword_1009F9AC8 + 16);
    }

    *a2 = 10;
    v5 = v4[7];
    if (v5 > 0x7F)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v5;
      v6 = (a2 + 2);
    }

    a2 = sub_1000A02A0(v4, v6, a3);
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

uint64_t sub_1000C8A4C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 28))
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v4 = *(qword_1009F9AC8 + 16);
    }

    v5 = sub_1000A0394(v4, a2);
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
  }

  else
  {
    v3 = 0;
  }

  v8 = *(a1 + 8);
  if (v8 && *v8 != v8[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 24) = v3;
  return v3;
}

uint64_t sub_1000C8AE0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009E718(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000C8BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C8BCC(uint64_t result, uint64_t a2)
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

uint64_t sub_1000C8C60()
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

  return qword_1009ED860;
}

void sub_1000C8CF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C8D08(uint64_t a1)
{
  *a1 = off_10098FF38;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 128) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

uint64_t sub_1000C8D78(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v23);
  }

  v4 = *(a2 + 132);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v9 = *(a2 + 24);
    *(a1 + 132) |= 1u;
    *(a1 + 24) = v9;
    v4 = *(a2 + 132);
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

  v10 = *(a2 + 16);
  *(a1 + 132) |= 2u;
  *(a1 + 16) = v10;
  v4 = *(a2 + 132);
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
  v11 = *(a2 + 28);
  *(a1 + 132) |= 4u;
  *(a1 + 28) = v11;
  v4 = *(a2 + 132);
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
  v12 = *(a2 + 40);
  *(a1 + 132) |= 8u;
  *(a1 + 40) = v12;
  v4 = *(a2 + 132);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_31:
    v14 = *(a2 + 48);
    *(a1 + 132) |= 0x20u;
    *(a1 + 48) = v14;
    v4 = *(a2 + 132);
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
  v13 = *(a2 + 32);
  *(a1 + 132) |= 0x10u;
  *(a1 + 32) = v13;
  v4 = *(a2 + 132);
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
  v15 = *(a2 + 44);
  *(a1 + 132) |= 0x40u;
  *(a1 + 44) = v15;
  v4 = *(a2 + 132);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 56);
    *(a1 + 132) |= 0x80u;
    *(a1 + 56) = v5;
    v4 = *(a2 + 132);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = *(a2 + 64);
    *(a1 + 132) |= 0x100u;
    *(a1 + 64) = v16;
    v4 = *(a2 + 132);
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

  v17 = *(a2 + 72);
  *(a1 + 132) |= 0x200u;
  *(a1 + 72) = v17;
  v4 = *(a2 + 132);
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
  v18 = *(a2 + 76);
  *(a1 + 132) |= 0x400u;
  *(a1 + 76) = v18;
  v4 = *(a2 + 132);
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
  v19 = *(a2 + 80);
  *(a1 + 132) |= 0x800u;
  *(a1 + 80) = v19;
  v4 = *(a2 + 132);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  v20 = *(a2 + 88);
  *(a1 + 132) |= 0x1000u;
  *(a1 + 88) = v20;
  v4 = *(a2 + 132);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  v21 = *(a2 + 96);
  *(a1 + 132) |= 0x2000u;
  *(a1 + 96) = v21;
  v4 = *(a2 + 132);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_40:
  v22 = *(a2 + 104);
  *(a1 + 132) |= 0x4000u;
  *(a1 + 104) = v22;
  v4 = *(a2 + 132);
  if ((v4 & 0x8000) != 0)
  {
LABEL_22:
    v6 = *(a2 + 112);
    *(a1 + 132) |= 0x8000u;
    *(a1 + 112) = v6;
    v4 = *(a2 + 132);
  }

LABEL_23:
  if ((v4 & 0x10000) != 0)
  {
    v7 = *(a2 + 120);
    *(a1 + 132) |= 0x10000u;
    *(a1 + 120) = v7;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000C9020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000C9038(uint64_t a1)
{
  *a1 = off_10098FF38;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000C908C(uint64_t a1)
{
  *a1 = off_10098FF38;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000C9160(uint64_t a1)
{
  v1 = *(a1 + 132);
  if (v1)
  {
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 112) = 0;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 64) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(a1 + 120) = 0;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 31) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000C91B0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v10 = *(this + 1);
        v9 = *(this + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v12 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v11;
          v12 = v10 + 1;
          *(this + 1) = v12;
        }

        *(a1 + 132) |= 1u;
        if (v12 < v9 && *v12 == 17)
        {
          *(this + 1) = v12 + 1;
          goto LABEL_50;
        }

        continue;
      case 2u:
        if (v8 != 1)
        {
          goto LABEL_42;
        }

LABEL_50:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v42;
        *(a1 + 132) |= 2u;
        v22 = *(this + 1);
        v15 = *(this + 2);
        if (v22 >= v15 || *v22 != 24)
        {
          continue;
        }

        v16 = v22 + 1;
        *(this + 1) = v16;
LABEL_54:
        if (v16 >= v15 || (v23 = *v16, v23 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
          if (!result)
          {
            return result;
          }

          v24 = *(this + 1);
          v15 = *(this + 2);
        }

        else
        {
          *(a1 + 28) = v23;
          v24 = v16 + 1;
          *(this + 1) = v24;
        }

        *(a1 + 132) |= 4u;
        if (v24 >= v15 || *v24 != 32)
        {
          continue;
        }

        v17 = v24 + 1;
        *(this + 1) = v17;
LABEL_62:
        if (v17 >= v15 || (v25 = *v17, v25 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
          if (!result)
          {
            return result;
          }

          v26 = *(this + 1);
          v15 = *(this + 2);
        }

        else
        {
          *(a1 + 40) = v25;
          v26 = v17 + 1;
          *(this + 1) = v26;
        }

        *(a1 + 132) |= 8u;
        if (v26 >= v15 || *v26 != 41)
        {
          continue;
        }

        *(this + 1) = v26 + 1;
LABEL_70:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v42;
        *(a1 + 132) |= 0x10u;
        v27 = *(this + 1);
        if (v27 >= *(this + 2) || *v27 != 49)
        {
          continue;
        }

        *(this + 1) = v27 + 1;
LABEL_74:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = *v42;
        *(a1 + 132) |= 0x20u;
        v28 = *(this + 1);
        v18 = *(this + 2);
        if (v28 >= v18 || *v28 != 56)
        {
          continue;
        }

        v19 = v28 + 1;
        *(this + 1) = v19;
LABEL_78:
        v42[0] = 0;
        if (v19 >= v18 || (v29 = *v19, (v29 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v42);
          if (!result)
          {
            return result;
          }

          v29 = v42[0];
          v30 = *(this + 1);
          v18 = *(this + 2);
        }

        else
        {
          v30 = v19 + 1;
          *(this + 1) = v30;
        }

        *(a1 + 44) = v29;
        *(a1 + 132) |= 0x40u;
        if (v30 >= v18 || *v30 != 65)
        {
          continue;
        }

        *(this + 1) = v30 + 1;
LABEL_86:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 56) = *v42;
        *(a1 + 132) |= 0x80u;
        v31 = *(this + 1);
        if (v31 >= *(this + 2) || *v31 != 73)
        {
          continue;
        }

        *(this + 1) = v31 + 1;
LABEL_90:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = *v42;
        *(a1 + 132) |= 0x100u;
        v32 = *(this + 1);
        v13 = *(this + 2);
        if (v32 >= v13 || *v32 != 80)
        {
          continue;
        }

        v14 = v32 + 1;
        *(this + 1) = v14;
LABEL_94:
        if (v14 >= v13 || (v33 = *v14, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 72));
          if (!result)
          {
            return result;
          }

          v34 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          *(a1 + 72) = v33;
          v34 = v14 + 1;
          *(this + 1) = v34;
        }

        *(a1 + 132) |= 0x200u;
        if (v34 >= v13 || *v34 != 88)
        {
          continue;
        }

        v20 = v34 + 1;
        *(this + 1) = v20;
LABEL_102:
        if (v20 >= v13 || (v35 = *v20, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 76));
          if (!result)
          {
            return result;
          }

          v36 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          *(a1 + 76) = v35;
          v36 = v20 + 1;
          *(this + 1) = v36;
        }

        *(a1 + 132) |= 0x400u;
        if (v36 >= v13 || *v36 != 97)
        {
          continue;
        }

        *(this + 1) = v36 + 1;
LABEL_110:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 80) = *v42;
        *(a1 + 132) |= 0x800u;
        v37 = *(this + 1);
        if (v37 >= *(this + 2) || *v37 != 105)
        {
          continue;
        }

        *(this + 1) = v37 + 1;
LABEL_114:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 88) = *v42;
        *(a1 + 132) |= 0x1000u;
        v38 = *(this + 1);
        if (v38 >= *(this + 2) || *v38 != 113)
        {
          continue;
        }

        *(this + 1) = v38 + 1;
LABEL_118:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 96) = *v42;
        *(a1 + 132) |= 0x2000u;
        v39 = *(this + 1);
        if (v39 >= *(this + 2) || *v39 != 121)
        {
          continue;
        }

        *(this + 1) = v39 + 1;
LABEL_122:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 104) = *v42;
        *(a1 + 132) |= 0x4000u;
        v40 = *(this + 1);
        if (*(this + 4) - v40 < 2 || *v40 != 129 || v40[1] != 1)
        {
          continue;
        }

        *(this + 1) = v40 + 2;
LABEL_127:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 112) = *v42;
        *(a1 + 132) |= 0x8000u;
        v41 = *(this + 1);
        if (*(this + 4) - v41 < 2 || *v41 != 137 || v41[1] != 1)
        {
          continue;
        }

        *(this + 1) = v41 + 2;
LABEL_132:
        *v42 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42))
        {
          *(a1 + 120) = *v42;
          *(a1 + 132) |= 0x10000u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }

          continue;
        }

        return 0;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v16 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_54;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v17 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_62;
      case 5u:
        if (v8 == 1)
        {
          goto LABEL_70;
        }

        goto LABEL_42;
      case 6u:
        if (v8 == 1)
        {
          goto LABEL_74;
        }

        goto LABEL_42;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v19 = *(this + 1);
        v18 = *(this + 2);
        goto LABEL_78;
      case 8u:
        if (v8 == 1)
        {
          goto LABEL_86;
        }

        goto LABEL_42;
      case 9u:
        if (v8 != 1)
        {
          goto LABEL_42;
        }

        goto LABEL_90;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v14 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_94;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v20 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_102;
      case 0xCu:
        if (v8 == 1)
        {
          goto LABEL_110;
        }

        goto LABEL_42;
      case 0xDu:
        if (v8 == 1)
        {
          goto LABEL_114;
        }

        goto LABEL_42;
      case 0xEu:
        if (v8 == 1)
        {
          goto LABEL_118;
        }

        goto LABEL_42;
      case 0xFu:
        if (v8 == 1)
        {
          goto LABEL_122;
        }

        goto LABEL_42;
      case 0x10u:
        if (v8 == 1)
        {
          goto LABEL_127;
        }

        goto LABEL_42;
      case 0x11u:
        if (v8 == 1)
        {
          goto LABEL_132;
        }

        goto LABEL_42;
      default:
LABEL_42:
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

uint64_t sub_1000C98BC(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 132);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
    v6 = *(v5 + 132);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 132);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 132);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 40), a2, a4);
  v6 = *(v5 + 132);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 132);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 132);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(v5 + 44), a2, a4);
  v6 = *(v5 + 132);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 56), a3);
  v6 = *(v5 + 132);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 64), a3);
  v6 = *(v5 + 132);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 72), a2, a4);
  v6 = *(v5 + 132);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 76), a2, a4);
  v6 = *(v5 + 132);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 80), a3);
  v6 = *(v5 + 132);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 88), a3);
  v6 = *(v5 + 132);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(v5 + 96), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

LABEL_40:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x10, a2, *(v5 + 112), a3);
    if ((*(v5 + 132) & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xF, a2, *(v5 + 104), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x8000) != 0)
  {
    goto LABEL_40;
  }

LABEL_17:
  if ((v6 & 0x10000) != 0)
  {
LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x11, a2, *(v5 + 120), a3);
  }

LABEL_19:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000C9AF4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 132))
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

  v7 = *(this + 33);
  if ((v7 & 2) != 0)
  {
    v8 = *(this + 2);
    *v3 = 17;
    *(v3 + 1) = v8;
    v3 = (v3 + 9);
    v7 = *(this + 33);
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

  if ((*(this + 132) & 8) != 0)
  {
    v10 = *(this + 10);
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

  v11 = *(this + 33);
  if ((v11 & 0x10) != 0)
  {
    v12 = *(this + 4);
    *v3 = 41;
    *(v3 + 1) = v12;
    v3 = (v3 + 9);
    v11 = *(this + 33);
    if ((v11 & 0x20) == 0)
    {
LABEL_17:
      if ((v11 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  else if ((v11 & 0x20) == 0)
  {
    goto LABEL_17;
  }

  v13 = *(this + 6);
  *v3 = 49;
  *(v3 + 1) = v13;
  v3 = (v3 + 9);
  if ((*(this + 33) & 0x40) == 0)
  {
    goto LABEL_27;
  }

LABEL_21:
  v14 = *(this + 11);
  *v3 = 56;
  v15 = v3 + 1;
  if ((v14 & 0x80000000) != 0)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v14, v15, a3);
  }

  else
  {
    if (v14 <= 0x7F)
    {
      *(v3 + 1) = v14;
      v3 = (v3 + 2);
      goto LABEL_27;
    }

    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v15, a3);
  }

  v3 = v16;
LABEL_27:
  v17 = *(this + 33);
  if ((v17 & 0x80) != 0)
  {
    v18 = *(this + 7);
    *v3 = 65;
    *(v3 + 1) = v18;
    v3 = (v3 + 9);
    v17 = *(this + 33);
    if ((v17 & 0x100) == 0)
    {
LABEL_29:
      if ((v17 & 0x200) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }
  }

  else if ((v17 & 0x100) == 0)
  {
    goto LABEL_29;
  }

  v19 = *(this + 8);
  *v3 = 73;
  *(v3 + 1) = v19;
  v3 = (v3 + 9);
  if ((*(this + 33) & 0x200) == 0)
  {
    goto LABEL_36;
  }

LABEL_33:
  v20 = *(this + 18);
  *v3 = 80;
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
  if ((*(this + 133) & 4) != 0)
  {
    v21 = *(this + 19);
    *v3 = 88;
    if (v21 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v21;
      v3 = (v3 + 2);
    }
  }

  v22 = *(this + 33);
  if ((v22 & 0x800) != 0)
  {
    v28 = *(this + 10);
    *v3 = 97;
    *(v3 + 1) = v28;
    v3 = (v3 + 9);
    v22 = *(this + 33);
    if ((v22 & 0x1000) == 0)
    {
LABEL_42:
      if ((v22 & 0x2000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_55;
    }
  }

  else if ((v22 & 0x1000) == 0)
  {
    goto LABEL_42;
  }

  v29 = *(this + 11);
  *v3 = 105;
  *(v3 + 1) = v29;
  v3 = (v3 + 9);
  v22 = *(this + 33);
  if ((v22 & 0x2000) == 0)
  {
LABEL_43:
    if ((v22 & 0x4000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_56;
  }

LABEL_55:
  v30 = *(this + 12);
  *v3 = 113;
  *(v3 + 1) = v30;
  v3 = (v3 + 9);
  v22 = *(this + 33);
  if ((v22 & 0x4000) == 0)
  {
LABEL_44:
    if ((v22 & 0x8000) == 0)
    {
      goto LABEL_45;
    }

LABEL_57:
    v32 = *(this + 14);
    *v3 = 385;
    *(v3 + 2) = v32;
    v3 = (v3 + 10);
    if ((*(this + 33) & 0x10000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_56:
  v31 = *(this + 13);
  *v3 = 121;
  *(v3 + 1) = v31;
  v3 = (v3 + 9);
  v22 = *(this + 33);
  if ((v22 & 0x8000) != 0)
  {
    goto LABEL_57;
  }

LABEL_45:
  if ((v22 & 0x10000) != 0)
  {
LABEL_46:
    v23 = *(this + 15);
    *v3 = 393;
    *(v3 + 2) = v23;
    v3 = (v3 + 10);
  }

LABEL_47:
  v26 = *(this + 1);
  v25 = (this + 8);
  v24 = v26;
  if (!v26 || *v24 == v24[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v25, v3, a3);
}

uint64_t sub_1000CA064(unsigned int *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[33];
  if (v3)
  {
    if (v3)
    {
      v6 = a1[6];
      if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = a1[33];
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
      v8 = a1[7];
      if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
        v3 = a1[33];
      }

      else
      {
        v9 = 2;
      }

      v7 += v9;
    }

    if ((v3 & 8) != 0)
    {
      v10 = a1[10];
      if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
        v3 = a1[33];
      }

      else
      {
        v11 = 2;
      }

      v7 += v11;
    }

    v12 = v7 + 9;
    if ((v3 & 0x10) == 0)
    {
      v12 = v7;
    }

    if ((v3 & 0x20) != 0)
    {
      v13 = v12 + 9;
    }

    else
    {
      v13 = v12;
    }

    if ((v3 & 0x40) != 0)
    {
      v14 = a1[11];
      if ((v14 & 0x80000000) != 0)
      {
        v15 = 11;
      }

      else if (v14 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
        v3 = a1[33];
      }

      else
      {
        v15 = 2;
      }

      v13 += v15;
    }

    v5 = v13 + 9;
    if ((v3 & 0x80) == 0)
    {
      v5 = v13;
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
      v16 = v5 + 9;
    }

    else
    {
      v16 = v5;
    }

    if ((v3 & 0x200) != 0)
    {
      v17 = a1[18];
      if (v17 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
        v3 = a1[33];
      }

      else
      {
        v18 = 2;
      }

      v16 += v18;
    }

    if ((v3 & 0x400) != 0)
    {
      v19 = a1[19];
      if (v19 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
        v3 = a1[33];
      }

      else
      {
        v20 = 2;
      }

      v16 += v20;
    }

    v5 = v16 + 9;
    if ((v3 & 0x800) == 0)
    {
      v5 = v16;
    }

    if ((v3 & 0x1000) != 0)
    {
      v5 += 9;
    }

    if ((v3 & 0x2000) != 0)
    {
      v5 += 9;
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

  if ((v3 & 0x10000) != 0)
  {
    v21 = v5 + 10;
  }

  else
  {
    v21 = v5;
  }

  v22 = *(a1 + 1);
  if (v22 && *v22 != v22[1])
  {
    v21 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 2), a2) + v21;
  }

  a1[32] = v21;
  return v21;
}

uint64_t sub_1000CA24C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000C8D78(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000CA320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CA338(uint64_t result, uint64_t a2)
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

uint64_t sub_1000CA3CC()
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

  return qword_1009ED870;
}

void sub_1000CA460(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CA474(uint64_t a1)
{
  *a1 = off_10098FFE8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 16) = 0u;
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
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  return a1;
}

void sub_1000CA4F4(uint64_t *a1)
{
  *a1 = off_10098FFE8;
  sub_100077C08(a1 + 26);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000CA558(uint64_t *a1)
{
  sub_1000CA4F4(a1);

  operator delete();
}

uint64_t sub_1000CA5FC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          goto LABEL_85;
        }

        *v101 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v101) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v101;
        *(a1 + 240) |= 1u;
        v9 = *(this + 1);
        if (v9 >= *(this + 2) || *v9 != 17)
        {
          continue;
        }

        *(this + 1) = v9 + 1;
        goto LABEL_43;
      case 2u:
        if (v8 != 1)
        {
          goto LABEL_85;
        }

LABEL_43:
        *v101 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v101) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v101;
        *(a1 + 240) |= 2u;
        v25 = *(this + 1);
        v16 = *(this + 2);
        if (v25 >= v16 || *v25 != 24)
        {
          continue;
        }

        v22 = v25 + 1;
        *(this + 1) = v22;
LABEL_47:
        if (v22 >= v16 || (v26 = *v22, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
          if (!result)
          {
            return result;
          }

          v27 = *(this + 1);
          v16 = *(this + 2);
        }

        else
        {
          *(a1 + 32) = v26;
          v27 = v22 + 1;
          *(this + 1) = v27;
        }

        *(a1 + 240) |= 4u;
        if (v27 >= v16 || *v27 != 32)
        {
          continue;
        }

        v24 = v27 + 1;
        *(this + 1) = v24;
LABEL_94:
        if (v24 >= v16 || (v38 = *v24, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
          if (!result)
          {
            return result;
          }

          v39 = *(this + 1);
          v16 = *(this + 2);
        }

        else
        {
          *(a1 + 36) = v38;
          v39 = v24 + 1;
          *(this + 1) = v39;
        }

        *(a1 + 240) |= 8u;
        if (v39 >= v16 || *v39 != 40)
        {
          continue;
        }

        v17 = v39 + 1;
        *(this + 1) = v17;
LABEL_102:
        if (v17 >= v16 || (v40 = *v17, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
          if (!result)
          {
            return result;
          }

          v41 = *(this + 1);
          v16 = *(this + 2);
        }

        else
        {
          *(a1 + 40) = v40;
          v41 = v17 + 1;
          *(this + 1) = v41;
        }

        *(a1 + 240) |= 0x10u;
        if (v41 >= v16 || *v41 != 48)
        {
          continue;
        }

        v30 = v41 + 1;
        *(this + 1) = v30;
LABEL_110:
        if (v30 >= v16 || (v42 = *v30, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 44));
          if (!result)
          {
            return result;
          }

          v43 = *(this + 1);
          v16 = *(this + 2);
        }

        else
        {
          *(a1 + 44) = v42;
          v43 = v30 + 1;
          *(this + 1) = v43;
        }

        *(a1 + 240) |= 0x20u;
        if (v43 >= v16 || *v43 != 56)
        {
          continue;
        }

        v33 = v43 + 1;
        *(this + 1) = v33;
LABEL_118:
        if (v33 >= v16 || (v44 = *v33, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 56));
          if (!result)
          {
            return result;
          }

          v45 = *(this + 1);
          v16 = *(this + 2);
        }

        else
        {
          *(a1 + 56) = v44;
          v45 = v33 + 1;
          *(this + 1) = v45;
        }

        *(a1 + 240) |= 0x40u;
        if (v45 >= v16 || *v45 != 65)
        {
          continue;
        }

        *(this + 1) = v45 + 1;
LABEL_126:
        *v101 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v101) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = *v101;
        *(a1 + 240) |= 0x80u;
        v46 = *(this + 1);
        v12 = *(this + 2);
        if (v46 >= v12 || *v46 != 72)
        {
          continue;
        }

        v35 = v46 + 1;
        *(this + 1) = v35;
LABEL_130:
        if (v35 >= v12 || (v47 = *v35, v47 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 60));
          if (!result)
          {
            return result;
          }

          v48 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 60) = v47;
          v48 = v35 + 1;
          *(this + 1) = v48;
        }

        *(a1 + 240) |= 0x100u;
        if (v48 >= v12 || *v48 != 80)
        {
          continue;
        }

        v19 = v48 + 1;
        *(this + 1) = v19;
LABEL_138:
        if (v19 >= v12 || (v49 = *v19, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 64));
          if (!result)
          {
            return result;
          }

          v50 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 64) = v49;
          v50 = v19 + 1;
          *(this + 1) = v50;
        }

        *(a1 + 240) |= 0x200u;
        if (v50 >= v12 || *v50 != 88)
        {
          continue;
        }

        v34 = v50 + 1;
        *(this + 1) = v34;
LABEL_146:
        if (v34 >= v12 || (v51 = *v34, v51 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 68));
          if (!result)
          {
            return result;
          }

          v52 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 68) = v51;
          v52 = v34 + 1;
          *(this + 1) = v52;
        }

        *(a1 + 240) |= 0x400u;
        if (v52 >= v12 || *v52 != 96)
        {
          continue;
        }

        v15 = v52 + 1;
        *(this + 1) = v15;
LABEL_154:
        if (v15 >= v12 || (v53 = *v15, v53 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 72));
          if (!result)
          {
            return result;
          }

          v54 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 72) = v53;
          v54 = v15 + 1;
          *(this + 1) = v54;
        }

        *(a1 + 240) |= 0x800u;
        if (v54 >= v12 || *v54 != 104)
        {
          continue;
        }

        v18 = v54 + 1;
        *(this + 1) = v18;
LABEL_162:
        if (v18 >= v12 || (v55 = *v18, v55 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 76));
          if (!result)
          {
            return result;
          }

          v56 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 76) = v55;
          v56 = v18 + 1;
          *(this + 1) = v56;
        }

        *(a1 + 240) |= 0x1000u;
        if (v56 >= v12 || *v56 != 112)
        {
          continue;
        }

        v32 = v56 + 1;
        *(this + 1) = v32;
LABEL_170:
        if (v32 >= v12 || (v57 = *v32, v57 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 80));
          if (!result)
          {
            return result;
          }

          v58 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 80) = v57;
          v58 = v32 + 1;
          *(this + 1) = v58;
        }

        *(a1 + 240) |= 0x2000u;
        if (v58 >= v12 || *v58 != 120)
        {
          continue;
        }

        v14 = v58 + 1;
        *(this + 1) = v14;
LABEL_178:
        if (v14 >= v12 || (v59 = *v14, v59 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 84));
          if (!result)
          {
            return result;
          }

          v60 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 84) = v59;
          v60 = (v14 + 1);
          *(this + 1) = v60;
        }

        *(a1 + 240) |= 0x4000u;
        if (v12 - v60 < 2 || *v60 != 128 || v60[1] != 1)
        {
          continue;
        }

        v23 = (v60 + 2);
        *(this + 1) = v23;
LABEL_187:
        if (v23 >= v12 || (v61 = *v23, v61 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 88));
          if (!result)
          {
            return result;
          }

          v62 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 88) = v61;
          v62 = (v23 + 1);
          *(this + 1) = v62;
        }

        *(a1 + 240) |= 0x8000u;
        if (v12 - v62 < 2 || *v62 != 136 || v62[1] != 1)
        {
          continue;
        }

        v13 = (v62 + 2);
        *(this + 1) = v13;
LABEL_196:
        if (v13 >= v12 || (v63 = *v13, v63 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 92));
          if (!result)
          {
            return result;
          }

          v64 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 92) = v63;
          v64 = (v13 + 1);
          *(this + 1) = v64;
        }

        *(a1 + 240) |= 0x10000u;
        if (v12 - v64 < 2 || *v64 != 145 || v64[1] != 1)
        {
          continue;
        }

        *(this + 1) = v64 + 2;
LABEL_205:
        *v101 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v101) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 96) = *v101;
        *(a1 + 240) |= 0x20000u;
        v65 = *(this + 1);
        if (*(this + 4) - v65 < 2 || *v65 != 153 || v65[1] != 1)
        {
          continue;
        }

        *(this + 1) = v65 + 2;
LABEL_210:
        *v101 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v101) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 104) = *v101;
        *(a1 + 240) |= 0x40000u;
        v66 = *(this + 1);
        if (*(this + 4) - v66 < 2 || *v66 != 161 || v66[1] != 1)
        {
          continue;
        }

        *(this + 1) = v66 + 2;
LABEL_215:
        *v101 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v101) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 112) = *v101;
        *(a1 + 240) |= 0x80000u;
        v67 = *(this + 1);
        v28 = *(this + 2);
        if (v28 - v67 < 2 || *v67 != 168 || v67[1] != 1)
        {
          continue;
        }

        v29 = (v67 + 2);
        *(this + 1) = v29;
LABEL_220:
        v101[0] = 0;
        if (v29 >= v28 || (v68 = *v29, (v68 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v101);
          if (!result)
          {
            return result;
          }

          v68 = v101[0];
          v69 = *(this + 1);
          v28 = *(this + 2);
        }

        else
        {
          v69 = (v29 + 1);
          *(this + 1) = v69;
        }

        *(a1 + 120) = v68;
        *(a1 + 240) |= 0x100000u;
        if (v28 - v69 < 2 || *v69 != 176 || v69[1] != 1)
        {
          continue;
        }

        v31 = (v69 + 2);
        *(this + 1) = v31;
LABEL_229:
        if (v31 >= v28 || (v70 = *v31, v70 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 124));
          if (!result)
          {
            return result;
          }

          v71 = *(this + 1);
          v28 = *(this + 2);
        }

        else
        {
          *(a1 + 124) = v70;
          v71 = (v31 + 1);
          *(this + 1) = v71;
        }

        *(a1 + 240) |= 0x200000u;
        if (v28 - v71 < 2 || *v71 != 185 || v71[1] != 1)
        {
          continue;
        }

        *(this + 1) = v71 + 2;
LABEL_238:
        *v101 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v101) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 128) = *v101;
        *(a1 + 240) |= 0x400000u;
        v72 = *(this + 1);
        if (*(this + 4) - v72 < 2 || *v72 != 193 || v72[1] != 1)
        {
          continue;
        }

        *(this + 1) = v72 + 2;
LABEL_243:
        *v101 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v101) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 136) = *v101;
        *(a1 + 240) |= 0x800000u;
        v73 = *(this + 1);
        if (*(this + 4) - v73 < 2 || *v73 != 201 || v73[1] != 1)
        {
          continue;
        }

        *(this + 1) = v73 + 2;
LABEL_248:
        *v101 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v101) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 144) = *v101;
        *(a1 + 240) |= 0x1000000u;
        v74 = *(this + 1);
        v20 = *(this + 2);
        if (v20 - v74 < 2 || *v74 != 208 || v74[1] != 1)
        {
          continue;
        }

        v21 = (v74 + 2);
        *(this + 1) = v21;
LABEL_253:
        v101[0] = 0;
        if (v21 >= v20 || (v75 = *v21, (v75 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v101);
          if (!result)
          {
            return result;
          }

          v75 = v101[0];
          v76 = *(this + 1);
          v20 = *(this + 2);
        }

        else
        {
          v76 = (v21 + 1);
          *(this + 1) = v76;
        }

        *(a1 + 152) = v75;
        *(a1 + 240) |= 0x2000000u;
        if (v20 - v76 < 2 || *v76 != 216 || v76[1] != 1)
        {
          continue;
        }

        v36 = (v76 + 2);
        *(this + 1) = v36;
LABEL_262:
        if (v36 >= v20 || (v77 = *v36, v77 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 156));
          if (!result)
          {
            return result;
          }

          v78 = *(this + 1);
          v20 = *(this + 2);
        }

        else
        {
          *(a1 + 156) = v77;
          v78 = (v36 + 1);
          *(this + 1) = v78;
        }

        *(a1 + 240) |= 0x4000000u;
        if (v20 - v78 < 2 || *v78 != 225 || v78[1] != 1)
        {
          continue;
        }

        *(this + 1) = v78 + 2;
LABEL_271:
        *v101 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v101) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 160) = *v101;
        *(a1 + 240) |= 0x8000000u;
        v79 = *(this + 1);
        if (*(this + 4) - v79 < 2 || *v79 != 233 || v79[1] != 1)
        {
          continue;
        }

        *(this + 1) = v79 + 2;
LABEL_276:
        *v101 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v101) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 168) = *v101;
        *(a1 + 240) |= 0x10000000u;
        v80 = *(this + 1);
        if (*(this + 4) - v80 < 2 || *v80 != 241 || v80[1] != 1)
        {
          continue;
        }

        *(this + 1) = v80 + 2;
LABEL_281:
        *v101 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v101) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 176) = *v101;
        *(a1 + 240) |= 0x20000000u;
        v81 = *(this + 1);
        if (*(this + 4) - v81 < 2 || *v81 != 249 || v81[1] != 1)
        {
          continue;
        }

        *(this + 1) = v81 + 2;
LABEL_286:
        *v101 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v101) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 184) = *v101;
        *(a1 + 240) |= 0x40000000u;
        v82 = *(this + 1);
        if (*(this + 4) - v82 < 2 || *v82 != 129 || v82[1] != 2)
        {
          continue;
        }

        *(this + 1) = v82 + 2;
LABEL_291:
        *v101 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v101) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 192) = *v101;
        *(a1 + 240) |= 0x80000000;
        v83 = *(this + 1);
        if (*(this + 4) - v83 < 2 || *v83 != 137 || v83[1] != 2)
        {
          continue;
        }

        *(this + 1) = v83 + 2;
LABEL_296:
        *v101 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v101))
        {
          *(a1 + 200) = *v101;
          *(a1 + 244) |= 1u;
          v84 = *(this + 1);
          if (*(this + 4) - v84 >= 2 && *v84 == 146 && v84[1] == 2)
          {
            while (1)
            {
              *(this + 1) = v84 + 2;
LABEL_301:
              v85 = *(a1 + 220);
              v86 = *(a1 + 216);
              if (v86 >= v85)
              {
                if (v85 == *(a1 + 224))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 208), v85 + 1);
                  v85 = *(a1 + 220);
                }

                *(a1 + 220) = v85 + 1;
                sub_1000CD120();
              }

              v87 = *(a1 + 208);
              *(a1 + 216) = v86 + 1;
              v88 = *(v87 + 8 * v86);
              v101[0] = 0;
              v89 = *(this + 1);
              if (v89 >= *(this + 2) || *v89 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v101))
                {
                  return 0;
                }
              }

              else
              {
                v101[0] = *v89;
                *(this + 1) = v89 + 1;
              }

              v90 = *(this + 14);
              v91 = *(this + 15);
              *(this + 14) = v90 + 1;
              if (v90 >= v91)
              {
                return 0;
              }

              v92 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v101[0]);
              if (!sub_1000C91B0(v88, this, v93, v94) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v92);
              v95 = *(this + 14);
              v96 = __OFSUB__(v95, 1);
              v97 = v95 - 1;
              if (v97 < 0 == v96)
              {
                *(this + 14) = v97;
              }

              v84 = *(this + 1);
              v10 = *(this + 2);
              if (v10 - v84 <= 1)
              {
                goto LABEL_1;
              }

              v98 = *v84;
              if (v98 == 152)
              {
                break;
              }

              if (v98 != 146 || v84[1] != 2)
              {
                goto LABEL_1;
              }
            }

            if (v84[1] == 2)
            {
              v11 = (v84 + 2);
              *(this + 1) = v11;
LABEL_322:
              if (v11 >= v10 || (v99 = *v11, v99 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 232));
                if (!result)
                {
                  return result;
                }

                v100 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                *(a1 + 232) = v99;
                v100 = v11 + 1;
                *(this + 1) = v100;
              }

              *(a1 + 244) |= 4u;
              if (v100 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
              {
                *(this + 8) = 0;
                result = 1;
                *(this + 36) = 1;
                return result;
              }
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_85;
        }

        v22 = *(this + 1);
        v16 = *(this + 2);
        goto LABEL_47;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_85;
        }

        v24 = *(this + 1);
        v16 = *(this + 2);
        goto LABEL_94;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_85;
        }

        v17 = *(this + 1);
        v16 = *(this + 2);
        goto LABEL_102;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_85;
        }

        v30 = *(this + 1);
        v16 = *(this + 2);
        goto LABEL_110;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_85;
        }

        v33 = *(this + 1);
        v16 = *(this + 2);
        goto LABEL_118;
      case 8u:
        if (v8 == 1)
        {
          goto LABEL_126;
        }

        goto LABEL_85;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_85;
        }

        v35 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_130;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_85;
        }

        v19 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_138;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_85;
        }

        v34 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_146;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_85;
        }

        v15 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_154;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_85;
        }

        v18 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_162;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_85;
        }

        v32 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_170;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_85;
        }

        v14 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_178;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_85;
        }

        v23 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_187;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_85;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_196;
      case 0x12u:
        if (v8 == 1)
        {
          goto LABEL_205;
        }

        goto LABEL_85;
      case 0x13u:
        if (v8 == 1)
        {
          goto LABEL_210;
        }

        goto LABEL_85;
      case 0x14u:
        if (v8 == 1)
        {
          goto LABEL_215;
        }

        goto LABEL_85;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_85;
        }

        v29 = *(this + 1);
        v28 = *(this + 2);
        goto LABEL_220;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_85;
        }

        v31 = *(this + 1);
        v28 = *(this + 2);
        goto LABEL_229;
      case 0x17u:
        if (v8 == 1)
        {
          goto LABEL_238;
        }

        goto LABEL_85;
      case 0x18u:
        if (v8 == 1)
        {
          goto LABEL_243;
        }

        goto LABEL_85;
      case 0x19u:
        if (v8 == 1)
        {
          goto LABEL_248;
        }

        goto LABEL_85;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_85;
        }

        v21 = *(this + 1);
        v20 = *(this + 2);
        goto LABEL_253;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_85;
        }

        v36 = *(this + 1);
        v20 = *(this + 2);
        goto LABEL_262;
      case 0x1Cu:
        if (v8 == 1)
        {
          goto LABEL_271;
        }

        goto LABEL_85;
      case 0x1Du:
        if (v8 == 1)
        {
          goto LABEL_276;
        }

        goto LABEL_85;
      case 0x1Eu:
        if (v8 == 1)
        {
          goto LABEL_281;
        }

        goto LABEL_85;
      case 0x1Fu:
        if (v8 == 1)
        {
          goto LABEL_286;
        }

        goto LABEL_85;
      case 0x20u:
        if (v8 == 1)
        {
          goto LABEL_291;
        }

        goto LABEL_85;
      case 0x21u:
        if (v8 == 1)
        {
          goto LABEL_296;
        }

        goto LABEL_85;
      case 0x22u:
        if (v8 == 2)
        {
          goto LABEL_301;
        }

        goto LABEL_85;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_85;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_322;
      default:
LABEL_85:
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