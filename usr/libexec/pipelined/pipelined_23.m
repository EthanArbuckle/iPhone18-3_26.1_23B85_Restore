uint64_t sub_100160FA4(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 92);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_21:
    v11 = *(v5 + 24);
    if (v11)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v11, a2, a4);
      v6 = *(v5 + 92);
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(qword_10045E2C8 + 24), a2, a4);
      v6 = *(v5 + 92);
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_25;
      }
    }

LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

  v10 = *(result + 16);
  if (v10)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
    v6 = *(v5 + 92);
    if ((v6 & 2) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045E2C8 + 16), a2, a4);
    v6 = *(v5 + 92);
    if ((v6 & 2) != 0)
    {
      goto LABEL_21;
    }
  }

LABEL_3:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_4;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 48), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 56), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_6:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 68), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x100) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 69), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_30:
    v12 = *(v5 + 32);
    if (v12)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, v12, a2, a4);
      v6 = *(v5 + 92);
      if ((v6 & 0x200) != 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, *(qword_10045E2C8 + 32), a2, a4);
      v6 = *(v5 + 92);
      if ((v6 & 0x200) != 0)
      {
        goto LABEL_34;
      }
    }

LABEL_10:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 64), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 4) != 0)
  {
    goto LABEL_30;
  }

LABEL_9:
  if ((v6 & 0x200) == 0)
  {
    goto LABEL_10;
  }

LABEL_34:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 70), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x400) == 0)
  {
LABEL_11:
    if ((v6 & 8) == 0)
    {
      goto LABEL_12;
    }

LABEL_36:
    v13 = *(v5 + 40);
    if (v13)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xB, v13, a2, a4);
      v6 = *(v5 + 92);
      if ((v6 & 0x800) != 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xB, *(qword_10045E2C8 + 40), a2, a4);
      v6 = *(v5 + 92);
      if ((v6 & 0x800) != 0)
      {
        goto LABEL_40;
      }
    }

LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_35:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, *(v5 + 71), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 8) != 0)
  {
    goto LABEL_36;
  }

LABEL_12:
  if ((v6 & 0x800) == 0)
  {
    goto LABEL_13;
  }

LABEL_40:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 72), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xD, *(v5 + 80), a2, a4);
  if ((*(v5 + 92) & 0x2000) == 0)
  {
LABEL_15:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xE, *(v5 + 84), a2, a4);
  v14 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v14;
  if (!v14)
  {
    return result;
  }

LABEL_43:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100161230(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 23);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_23:
    v16 = *(this + 3);
    if (v16)
    {
      *v4 = 18;
      v17 = v4 + 1;
      v18 = v16[11];
      if (v18 <= 0x7F)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v16 = *(qword_10045E2C8 + 24);
      *v4 = 18;
      v17 = v4 + 1;
      v18 = v16[11];
      if (v18 <= 0x7F)
      {
LABEL_25:
        *(v4 + 1) = v18;
        v4 = sub_10015CEAC(v16, (v4 + 2), a3);
        v6 = *(this + 23);
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_29;
        }

LABEL_4:
        if ((v6 & 0x20) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_30;
      }
    }

    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v17, a3);
    v4 = sub_10015CEAC(v16, v19, v20);
    v6 = *(this + 23);
    if ((v6 & 0x10) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_4;
  }

  v11 = *(this + 2);
  if (v11)
  {
    *a2 = 10;
    v12 = a2 + 1;
    v13 = v11[12];
    if (v13 <= 0x7F)
    {
      goto LABEL_19;
    }

LABEL_22:
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v12, a3);
    v4 = sub_10015B3F0(v11, v14, v15);
    v6 = *(this + 23);
    if ((v6 & 2) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_3;
  }

  v11 = *(qword_10045E2C8 + 16);
  *a2 = 10;
  v12 = a2 + 1;
  v13 = v11[12];
  if (v13 > 0x7F)
  {
    goto LABEL_22;
  }

LABEL_19:
  *(v4 + 1) = v13;
  v4 = sub_10015B3F0(v11, (v4 + 2), a3);
  v6 = *(this + 23);
  if ((v6 & 2) != 0)
  {
    goto LABEL_23;
  }

LABEL_3:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_4;
  }

LABEL_29:
  v21 = *(this + 6);
  *v4 = 25;
  *(v4 + 1) = v21;
  v4 = (v4 + 9);
  v6 = *(this + 23);
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  v22 = *(this + 7);
  *v4 = 33;
  *(v4 + 1) = v22;
  v4 = (v4 + 9);
  v6 = *(this + 23);
  if ((v6 & 0x80) == 0)
  {
LABEL_6:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  v23 = *(this + 68);
  *v4 = 40;
  *(v4 + 1) = v23;
  v4 = (v4 + 2);
  v6 = *(this + 23);
  if ((v6 & 0x100) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  v24 = *(this + 69);
  *v4 = 48;
  *(v4 + 1) = v24;
  v4 = (v4 + 2);
  if ((*(this + 23) & 0x40) == 0)
  {
LABEL_8:
    v7 = *(this + 23);
    if ((v7 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_37:
    v26 = *(this + 4);
    if (v26)
    {
      *v4 = 66;
      v27 = v4 + 1;
      v28 = v26[10];
      if (v28 <= 0x7F)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v26 = *(qword_10045E2C8 + 32);
      *v4 = 66;
      v27 = v4 + 1;
      v28 = v26[10];
      if (v28 <= 0x7F)
      {
LABEL_39:
        *(v4 + 1) = v28;
        v4 = sub_10015EB6C(v26, (v4 + 2), a3, a4);
        v7 = *(this + 23);
        if ((v7 & 0x200) != 0)
        {
          goto LABEL_43;
        }

LABEL_10:
        if ((v7 & 0x400) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_44;
      }
    }

    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v28, v27, a3);
    v4 = sub_10015EB6C(v26, v29, v30, v31);
    v7 = *(this + 23);
    if ((v7 & 0x200) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

LABEL_33:
  v25 = *(this + 16);
  *v4 = 56;
  if (v25 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v25, v4 + 1, a3);
    v7 = *(this + 23);
    if ((v7 & 4) != 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    *(v4 + 1) = v25;
    v4 = (v4 + 2);
    v7 = *(this + 23);
    if ((v7 & 4) != 0)
    {
      goto LABEL_37;
    }
  }

LABEL_9:
  if ((v7 & 0x200) == 0)
  {
    goto LABEL_10;
  }

LABEL_43:
  v32 = *(this + 70);
  *v4 = 72;
  *(v4 + 1) = v32;
  v4 = (v4 + 2);
  v7 = *(this + 23);
  if ((v7 & 0x400) == 0)
  {
LABEL_11:
    if ((v7 & 8) == 0)
    {
      goto LABEL_12;
    }

LABEL_45:
    v34 = *(this + 5);
    if (v34)
    {
      *v4 = 90;
      v35 = v4 + 1;
      v36 = v34[11];
      if (v36 <= 0x7F)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v34 = *(qword_10045E2C8 + 40);
      *v4 = 90;
      v35 = v4 + 1;
      v36 = v34[11];
      if (v36 <= 0x7F)
      {
LABEL_47:
        *(v4 + 1) = v36;
        v4 = sub_10015F704(v34, (v4 + 2), a3, a4);
        v7 = *(this + 23);
        if ((v7 & 0x800) != 0)
        {
          goto LABEL_51;
        }

LABEL_13:
        if ((v7 & 0x1000) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_52;
      }
    }

    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v36, v35, a3);
    v4 = sub_10015F704(v34, v37, v38, v39);
    v7 = *(this + 23);
    if ((v7 & 0x800) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_13;
  }

LABEL_44:
  v33 = *(this + 71);
  *v4 = 80;
  *(v4 + 1) = v33;
  v4 = (v4 + 2);
  v7 = *(this + 23);
  if ((v7 & 8) != 0)
  {
    goto LABEL_45;
  }

LABEL_12:
  if ((v7 & 0x800) == 0)
  {
    goto LABEL_13;
  }

LABEL_51:
  v40 = *(this + 9);
  *v4 = 97;
  *(v4 + 1) = v40;
  v4 = (v4 + 9);
  v7 = *(this + 23);
  if ((v7 & 0x1000) == 0)
  {
LABEL_14:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  v41 = *(this + 80);
  *v4 = 104;
  *(v4 + 1) = v41;
  v4 = (v4 + 2);
  if ((*(this + 23) & 0x2000) == 0)
  {
LABEL_15:
    v10 = *(this + 1);
    v9 = (this + 8);
    v8 = v10;
    if (!v10)
    {
      return v4;
    }

    goto LABEL_60;
  }

LABEL_53:
  v42 = *(this + 21);
  *v4 = 112;
  v43 = v4 + 1;
  if ((v42 & 0x80000000) != 0)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v42, v43, a3);
    v45 = *(this + 1);
    v9 = (this + 8);
    v8 = v45;
    if (!v45)
    {
      return v4;
    }
  }

  else if (v42 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v42, v43, a3);
    v46 = *(this + 1);
    v9 = (this + 8);
    v8 = v46;
    if (!v46)
    {
      return v4;
    }
  }

  else
  {
    *(v4 + 1) = v42;
    v4 = (v4 + 2);
    v44 = *(this + 1);
    v9 = (this + 8);
    v8 = v44;
    if (!v44)
    {
      return v4;
    }
  }

LABEL_60:
  if (*v8 == v8[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v9, v4, a3);
}

uint64_t sub_1001616EC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 92);
  if (!v3)
  {
    v5 = 0;
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_61;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }

LABEL_13:
    v8 = *(a1 + 24);
    if (v8)
    {
      v9 = sub_10015D0A4(v8, a2);
      if (v9 < 0x80)
      {
LABEL_15:
        v10 = 1;
LABEL_18:
        v4 += v9 + v10 + 1;
        v3 = *(a1 + 92);
        goto LABEL_19;
      }
    }

    else
    {
      v9 = sub_10015D0A4(*(qword_10045E2C8 + 24), a2);
      if (v9 < 0x80)
      {
        goto LABEL_15;
      }
    }

    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    goto LABEL_18;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = sub_10015B610(v6, a2);
    if (v7 < 0x80)
    {
      goto LABEL_9;
    }

LABEL_12:
    v4 = v7 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
    v3 = *(a1 + 92);
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v7 = sub_10015B610(*(qword_10045E2C8 + 16), a2);
  if (v7 >= 0x80)
  {
    goto LABEL_12;
  }

LABEL_9:
  v4 = v7 + 2;
  v3 = *(a1 + 92);
  if ((v3 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_19:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_28;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = sub_10015ED0C(v11, a2);
    if (v12 < 0x80)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v12 = sub_10015ED0C(*(qword_10045E2C8 + 32), a2);
    if (v12 < 0x80)
    {
LABEL_24:
      v4 += v12 + 2;
      v3 = *(a1 + 92);
      if ((v3 & 8) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_28;
    }
  }

  v4 += v12 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
  v3 = *(a1 + 92);
  if ((v3 & 8) == 0)
  {
    goto LABEL_50;
  }

LABEL_28:
  v13 = *(a1 + 40);
  if (!v13)
  {
    v13 = *(qword_10045E2C8 + 40);
  }

  v14 = 2 * (*(v13 + 48) & 1);
  if (!*(v13 + 48))
  {
    v14 = 0;
  }

  v15 = *(v13 + 24);
  v16 = (v14 + v15);
  if (v15 >= 1)
  {
    for (i = 0; i < v15; ++i)
    {
      v22 = *(*(v13 + 16) + 8 * i);
      v19 = *(v22 + 23);
      v21 = v19;
      v20 = *(v22 + 8);
      if ((v19 & 0x80u) == 0)
      {
        v23 = *(v22 + 23);
      }

      else
      {
        v23 = v20;
      }

      if (v23 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2);
        v19 = *(v22 + 23);
        v20 = *(v22 + 8);
        v15 = *(v13 + 24);
        v21 = *(v22 + 23);
      }

      else
      {
        v18 = 1;
      }

      if (v21 < 0)
      {
        v19 = v20;
      }

      v16 = (v18 + v16 + v19);
    }
  }

  v24 = *(v13 + 8);
  if (v24 && *v24 != v24[1])
  {
    v16 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v13 + 8), a2) + v16;
  }

  *(v13 + 44) = v16;
  if (v16 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
  }

  else
  {
    v25 = 1;
  }

  v4 += v16 + v25 + 1;
  v3 = *(a1 + 92);
LABEL_50:
  v26 = v4 + 9;
  if ((v3 & 0x10) == 0)
  {
    v26 = v4;
  }

  if ((v3 & 0x20) != 0)
  {
    v27 = v26 + 9;
  }

  else
  {
    v27 = v26;
  }

  if ((v3 & 0x40) != 0)
  {
    v28 = *(a1 + 64);
    if (v28 >= 0x80)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2) + 1;
      v3 = *(a1 + 92);
    }

    else
    {
      v29 = 2;
    }

    v27 += v29;
  }

  v5 = ((v3 >> 6) & 2) + v27;
  if ((v3 & 0xFF00) != 0)
  {
LABEL_61:
    v30 = ((v3 >> 7) & 2) + v5 + ((v3 >> 8) & 2) + ((v3 >> 9) & 2);
    if ((v3 & 0x800) != 0)
    {
      v30 += 9;
    }

    v5 = v30 + ((v3 >> 11) & 2);
    if ((v3 & 0x2000) != 0)
    {
      v31 = *(a1 + 84);
      if ((v31 & 0x80000000) != 0)
      {
        v32 = 11;
      }

      else if (v31 >= 0x80)
      {
        v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31, a2) + 1;
      }

      else
      {
        v32 = 2;
      }

      v5 = (v32 + v5);
    }
  }

LABEL_70:
  v33 = *(a1 + 8);
  if (v33 && *v33 != v33[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 88) = v5;
  return v5;
}

uint64_t sub_100161A48(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10015FB40(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100161B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100161B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100161B50(uint64_t result, uint64_t a2)
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

uint64_t sub_100161BE4()
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

  return qword_10045CFA8;
}

void sub_100161C74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100161C88(uint64_t a1, _BYTE *a2)
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

  LOBYTE(v4) = a2[24];
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((a2[24] & 1) == 0)
  {
    if ((a2[24] & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v8 = a2[17];
    *(a1 + 24) |= 2u;
    *(a1 + 17) = v8;
    if ((*(a2 + 6) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_7;
  }

  v7 = a2[16];
  *(a1 + 24) |= 1u;
  *(a1 + 16) = v7;
  v4 = *(a2 + 6);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v4 & 4) != 0)
  {
LABEL_7:
    v5 = a2[18];
    *(a1 + 24) |= 4u;
    *(a1 + 18) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100161D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100161D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100161D98(uint64_t a1)
{
  *a1 = off_10043F350;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100161DEC(uint64_t a1)
{
  *a1 = off_10043F350;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100161EF4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    *(a1 + 16) = 257;
    *(a1 + 18) = 1;
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

uint64_t sub_100161F20(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if (TagFallback >> 3 == 3)
      {
        if ((TagFallback & 7) == 0)
        {
          v14 = *(this + 1);
          v9 = *(this + 2);
          v20 = 0;
          if (v14 >= v9)
          {
            goto LABEL_36;
          }

          goto LABEL_34;
        }

        goto LABEL_17;
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_17;
      }

      v22 = 0;
      v10 = *(this + 1);
      v9 = *(this + 2);
      if (v10 >= v9 || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
        if (!result)
        {
          return result;
        }

        v11 = v22;
        v12 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        v12 = v10 + 1;
        *(this + 1) = v12;
      }

      *(a1 + 16) = v11 != 0;
      *(a1 + 24) |= 1u;
      if (v12 < v9 && *v12 == 16)
      {
        v13 = v12 + 1;
        *(this + 1) = v13;
        v21 = 0;
        if (v13 >= v9)
        {
          goto LABEL_29;
        }

LABEL_27:
        v15 = *v13;
        if ((v15 & 0x80000000) != 0)
        {
LABEL_29:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21);
          if (!result)
          {
            return result;
          }

          v15 = v21;
          v16 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_31;
        }

        v16 = v13 + 1;
        *(this + 1) = v16;
LABEL_31:
        *(a1 + 17) = v15 != 0;
        *(a1 + 24) |= 2u;
        if (v16 < v9 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(this + 1) = v14;
          v20 = 0;
          if (v14 >= v9)
          {
            goto LABEL_36;
          }

LABEL_34:
          v17 = *v14;
          if ((v17 & 0x80000000) != 0)
          {
LABEL_36:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20);
            if (!result)
            {
              return result;
            }

            v17 = v20;
            v18 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_38;
          }

          v18 = v14 + 1;
          *(this + 1) = v18;
LABEL_38:
          *(a1 + 18) = v17 != 0;
          *(a1 + 24) |= 4u;
          if (v18 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
      v13 = *(this + 1);
      v9 = *(this + 2);
      v21 = 0;
      if (v13 >= v9)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

LABEL_17:
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

uint64_t sub_100162178(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 16), a2, a4);
    v6 = *(v5 + 24);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 17), a2, a4);
  if ((*(v5 + 24) & 4) == 0)
  {
LABEL_4:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 18), a2, a4);
  v10 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_9:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

uint64_t sub_100162230(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v7 = *(a1 + 16);
    *a2 = 8;
    *(a2 + 1) = v7;
    a2 = (a2 + 2);
    v3 = *(a1 + 24);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = *(a1 + 18);
      *a2 = 24;
      *(a2 + 1) = v9;
      a2 = (a2 + 2);
      v10 = *(a1 + 8);
      v4 = (a1 + 8);
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

  v8 = *(a1 + 17);
  *a2 = 16;
  *(a2 + 1) = v8;
  a2 = (a2 + 2);
  if ((*(a1 + 24) & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
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

uint64_t sub_1001622B8(_DWORD *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (a1[6])
  {
    v3 = 2 * (a1[6] & 1) + (a1[6] & 2) + ((a1[6] >> 1) & 2u);
  }

  else
  {
    v3 = 0;
  }

  v6 = *(a1 + 1);
  v4 = (a1 + 2);
  v5 = v6;
  if (v6 && *v5 != v5[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v4, a2) + v3;
  }

  a1[5] = v3;
  return v3;
}

uint64_t sub_100162320(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100161C88(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100162400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100162414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100162428(uint64_t result, uint64_t a2)
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

uint64_t sub_1001624BC()
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

  return qword_10045CFB8;
}

void sub_10016254C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100162560(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v27);
  }

  v4 = *(a2 + 156);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v13 = *(a2 + 16);
    *(a1 + 156) |= 1u;
    *(a1 + 16) = v13;
    v4 = *(a2 + 156);
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

  v14 = *(a2 + 20);
  *(a1 + 156) |= 2u;
  *(a1 + 20) = v14;
  v4 = *(a2 + 156);
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
  v15 = *(a2 + 24);
  *(a1 + 156) |= 4u;
  *(a1 + 24) = v15;
  v4 = *(a2 + 156);
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
  v16 = *(a2 + 32);
  *(a1 + 156) |= 8u;
  *(a1 + 32) = v16;
  v4 = *(a2 + 156);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_41:
    v18 = *(a2 + 48);
    *(a1 + 156) |= 0x20u;
    *(a1 + 48) = v18;
    v4 = *(a2 + 156);
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
  v17 = *(a2 + 40);
  *(a1 + 156) |= 0x10u;
  *(a1 + 40) = v17;
  v4 = *(a2 + 156);
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
  v19 = *(a2 + 56);
  *(a1 + 156) |= 0x40u;
  *(a1 + 56) = v19;
  v4 = *(a2 + 156);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 88);
    *(a1 + 156) |= 0x80u;
    *(a1 + 88) = v5;
    v4 = *(a2 + 156);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v4 & 0x100) != 0)
  {
    v20 = *(a2 + 64);
    *(a1 + 156) |= 0x100u;
    *(a1 + 64) = v20;
    v4 = *(a2 + 156);
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

  v21 = *(a2 + 72);
  *(a1 + 156) |= 0x200u;
  *(a1 + 72) = v21;
  v4 = *(a2 + 156);
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
  v22 = *(a2 + 80);
  *(a1 + 156) |= 0x400u;
  *(a1 + 80) = v22;
  v4 = *(a2 + 156);
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
  v23 = *(a2 + 96);
  *(a1 + 156) |= 0x800u;
  *(a1 + 96) = v23;
  v4 = *(a2 + 156);
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
  v24 = *(a2 + 104);
  *(a1 + 156) |= 0x1000u;
  *(a1 + 104) = v24;
  v4 = *(a2 + 156);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  v25 = *(a2 + 92);
  *(a1 + 156) |= 0x2000u;
  *(a1 + 92) = v25;
  v4 = *(a2 + 156);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_50:
  v26 = *(a2 + 112);
  *(a1 + 156) |= 0x4000u;
  *(a1 + 112) = v26;
  v4 = *(a2 + 156);
  if ((v4 & 0x8000) != 0)
  {
LABEL_22:
    v6 = *(a2 + 120);
    *(a1 + 156) |= 0x8000u;
    *(a1 + 120) = v6;
    v4 = *(a2 + 156);
  }

LABEL_23:
  if ((v4 & 0xFF0000) != 0)
  {
    if ((v4 & 0x10000) != 0)
    {
      v7 = *(a2 + 124);
      *(a1 + 156) |= 0x10000u;
      *(a1 + 124) = v7;
      v4 = *(a2 + 156);
    }

    if ((v4 & 0x20000) != 0)
    {
      *(a1 + 156) |= 0x20000u;
      v8 = *(a1 + 128);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 128);
      if (!v9)
      {
        v9 = *(qword_10045E2D8 + 128);
      }

      sub_100161C88(v8, v9);
      v4 = *(a2 + 156);
    }

    if ((v4 & 0x40000) != 0)
    {
      v10 = *(a2 + 136);
      *(a1 + 156) |= 0x40000u;
      *(a1 + 136) = v10;
      v4 = *(a2 + 156);
    }

    if ((v4 & 0x80000) != 0)
    {
      v11 = *(a2 + 144);
      *(a1 + 156) |= 0x80000u;
      *(a1 + 144) = v11;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100162908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10016291C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100162930(void *a1)
{
  *a1 = off_10043F400;
  if (qword_10045E2D8 != a1)
  {
    v2 = a1[16];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1001629C4(void *a1)
{
  *a1 = off_10043F400;
  if (qword_10045E2D8 != a1)
  {
    v2 = a1[16];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100162B74(uint64_t a1)
{
  v2 = *(a1 + 156);
  if (v2)
  {
    *(a1 + 16) = 0x6400000014;
    *(a1 + 24) = xmmword_1003D2690;
    *(a1 + 40) = xmmword_1003D26A0;
    *(a1 + 56) = 0x4014000000000000;
    *(a1 + 88) = 7;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(a1 + 64) = xmmword_1003D2700;
    *(a1 + 80) = 0xC03E000000000000;
    *(a1 + 96) = xmmword_1003D26D0;
    *(a1 + 92) = 0;
    *(a1 + 112) = 0x4059000000000000;
    *(a1 + 120) = 15;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(a1 + 124) = 30;
    if ((v2 & 0x20000) != 0)
    {
      v3 = *(a1 + 128);
      if (v3)
      {
        if (*(v3 + 24))
        {
          *(v3 + 16) = 257;
          *(v3 + 18) = 1;
        }

        v5 = *(v3 + 8);
        v4 = (v3 + 8);
        *(v4 + 4) = 0;
        if (v5)
        {
          v6 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
          a1 = v6;
        }
      }
    }

    *(a1 + 136) = xmmword_1003D26E0;
  }

  v8 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 37) = 0;
  if (v8)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100162C88(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          goto LABEL_65;
        }

        v10 = *(this + 1);
        v9 = *(this + 2);
        if (v10 < v9)
        {
          v11 = *v10;
          if ((v11 & 0x80000000) == 0)
          {
            *(a1 + 16) = v11;
            v12 = v10 + 1;
            *(this + 1) = v12;
            *(a1 + 156) |= 1u;
            if (v12 < v9)
            {
              goto LABEL_73;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v12 = *(this + 1);
        v9 = *(this + 2);
        *(a1 + 156) |= 1u;
        if (v12 >= v9)
        {
          continue;
        }

LABEL_73:
        if (*v12 != 16)
        {
          continue;
        }

        v18 = v12 + 1;
        *(this + 1) = v18;
        if (v18 >= v9)
        {
LABEL_78:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
          if (!result)
          {
            return result;
          }

          v25 = *(this + 1);
          v26 = *(this + 2);
          *(a1 + 156) |= 2u;
          if (v25 < v26)
          {
            goto LABEL_80;
          }

          continue;
        }

LABEL_75:
        v24 = *v18;
        if (v24 < 0)
        {
          goto LABEL_78;
        }

        *(a1 + 20) = v24;
        v25 = v18 + 1;
        *(this + 1) = v25;
        *(a1 + 156) |= 2u;
        if (v25 >= v9)
        {
          continue;
        }

LABEL_80:
        if (*v25 != 25)
        {
          continue;
        }

        *(this + 1) = v25 + 1;
        *v59 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
        {
          return 0;
        }

LABEL_82:
        *(a1 + 24) = *v59;
        *(a1 + 156) |= 4u;
        v27 = *(this + 1);
        if (v27 >= *(this + 2) || *v27 != 33)
        {
          continue;
        }

        *(this + 1) = v27 + 1;
        *v59 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
        {
          return 0;
        }

LABEL_85:
        *(a1 + 136) = *v59;
        *(a1 + 156) |= 0x40000u;
        v28 = *(this + 1);
        if (v28 >= *(this + 2) || *v28 != 41)
        {
          continue;
        }

        *(this + 1) = v28 + 1;
        *v59 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
        {
          return 0;
        }

LABEL_88:
        *(a1 + 32) = *v59;
        *(a1 + 156) |= 8u;
        v29 = *(this + 1);
        if (v29 >= *(this + 2) || *v29 != 49)
        {
          continue;
        }

        *(this + 1) = v29 + 1;
        *v59 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
        {
          return 0;
        }

LABEL_91:
        *(a1 + 144) = *v59;
        *(a1 + 156) |= 0x80000u;
        v30 = *(this + 1);
        if (v30 >= *(this + 2) || *v30 != 57)
        {
          continue;
        }

        *(this + 1) = v30 + 1;
        *v59 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
        {
          return 0;
        }

LABEL_94:
        *(a1 + 40) = *v59;
        *(a1 + 156) |= 0x10u;
        v31 = *(this + 1);
        if (v31 >= *(this + 2) || *v31 != 65)
        {
          continue;
        }

        *(this + 1) = v31 + 1;
        *v59 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
        {
          return 0;
        }

LABEL_97:
        *(a1 + 48) = *v59;
        *(a1 + 156) |= 0x20u;
        v32 = *(this + 1);
        if (v32 >= *(this + 2) || *v32 != 73)
        {
          continue;
        }

        *(this + 1) = v32 + 1;
        *v59 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
        {
          return 0;
        }

LABEL_100:
        *(a1 + 56) = *v59;
        *(a1 + 156) |= 0x40u;
        v33 = *(this + 1);
        v15 = *(this + 2);
        if (v33 >= v15 || *v33 != 80)
        {
          continue;
        }

        v16 = v33 + 1;
        *(this + 1) = v16;
LABEL_103:
        if (v16 >= v15 || (v34 = *v16, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 88));
          if (!result)
          {
            return result;
          }

          v35 = *(this + 1);
          v36 = *(this + 2);
          *(a1 + 156) |= 0x80u;
          if (v35 < v36)
          {
            goto LABEL_109;
          }

          continue;
        }

        *(a1 + 88) = v34;
        v35 = v16 + 1;
        *(this + 1) = v35;
        *(a1 + 156) |= 0x80u;
        if (v35 >= v15)
        {
          continue;
        }

LABEL_109:
        if (*v35 != 89)
        {
          continue;
        }

        *(this + 1) = v35 + 1;
LABEL_111:
        *v59 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = *v59;
        *(a1 + 156) |= 0x100u;
        v37 = *(this + 1);
        if (v37 >= *(this + 2) || *v37 != 97)
        {
          continue;
        }

        *(this + 1) = v37 + 1;
        *v59 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
        {
          return 0;
        }

LABEL_115:
        *(a1 + 72) = *v59;
        *(a1 + 156) |= 0x200u;
        v38 = *(this + 1);
        if (v38 >= *(this + 2) || *v38 != 105)
        {
          continue;
        }

        *(this + 1) = v38 + 1;
        *v59 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
        {
          return 0;
        }

LABEL_118:
        *(a1 + 80) = *v59;
        *(a1 + 156) |= 0x400u;
        v39 = *(this + 1);
        if (v39 >= *(this + 2) || *v39 != 113)
        {
          continue;
        }

        *(this + 1) = v39 + 1;
        *v59 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
        {
          return 0;
        }

LABEL_121:
        *(a1 + 96) = *v59;
        *(a1 + 156) |= 0x800u;
        v40 = *(this + 1);
        if (v40 >= *(this + 2) || *v40 != 121)
        {
          continue;
        }

        *(this + 1) = v40 + 1;
        *v59 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
        {
          return 0;
        }

LABEL_124:
        *(a1 + 104) = *v59;
        *(a1 + 156) |= 0x1000u;
        v41 = *(this + 1);
        v13 = *(this + 2);
        if (v13 - v41 < 2 || *v41 != 128 || v41[1] != 1)
        {
          continue;
        }

        v17 = (v41 + 2);
        *(this + 1) = v17;
        if (v17 >= v13)
        {
LABEL_131:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 120));
          if (!result)
          {
            return result;
          }

          v43 = *(this + 1);
          v13 = *(this + 2);
          *(a1 + 156) |= 0x8000u;
          if (v13 - v43 >= 2)
          {
            goto LABEL_133;
          }

          continue;
        }

LABEL_128:
        v42 = *v17;
        if (v42 < 0)
        {
          goto LABEL_131;
        }

        *(a1 + 120) = v42;
        v43 = (v17 + 1);
        *(this + 1) = v43;
        *(a1 + 156) |= 0x8000u;
        if (v13 - v43 < 2)
        {
          continue;
        }

LABEL_133:
        if (*v43 != 136 || v43[1] != 1)
        {
          continue;
        }

        v14 = (v43 + 2);
        *(this + 1) = v14;
        v59[0] = 0;
        if (v14 >= v13)
        {
          goto LABEL_138;
        }

LABEL_136:
        v44 = *v14;
        if ((v44 & 0x80000000) != 0)
        {
LABEL_138:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v59);
          if (!result)
          {
            return result;
          }

          v44 = v59[0];
          v45 = *(this + 1);
          v13 = *(this + 2);
          goto LABEL_140;
        }

        v45 = (v14 + 1);
        *(this + 1) = v45;
LABEL_140:
        *(a1 + 92) = v44 != 0;
        *(a1 + 156) |= 0x2000u;
        if (v13 - v45 < 2 || *v45 != 145 || v45[1] != 1)
        {
          continue;
        }

        *(this + 1) = v45 + 2;
        *v59 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
        {
          return 0;
        }

LABEL_144:
        *(a1 + 112) = *v59;
        *(a1 + 156) |= 0x4000u;
        v46 = *(this + 1);
        v19 = *(this + 2);
        if (v19 - v46 < 2 || *v46 != 152 || v46[1] != 1)
        {
          continue;
        }

        v20 = (v46 + 2);
        *(this + 1) = v20;
        if (v20 >= v19)
        {
          goto LABEL_151;
        }

LABEL_148:
        v47 = *v20;
        if ((v47 & 0x80000000) == 0)
        {
          *(a1 + 124) = v47;
          v48 = (v20 + 1);
          *(this + 1) = v48;
          v49 = *(a1 + 156) | 0x10000;
          *(a1 + 156) = v49;
          if (v19 - v48 >= 2)
          {
            goto LABEL_153;
          }

          continue;
        }

LABEL_151:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 124));
        if (!result)
        {
          return result;
        }

        v48 = *(this + 1);
        v50 = *(this + 2);
        v49 = *(a1 + 156) | 0x10000;
        *(a1 + 156) = v49;
        if (v50 - v48 < 2)
        {
          continue;
        }

LABEL_153:
        if (*v48 != 162 || v48[1] != 1)
        {
          continue;
        }

        *(this + 1) = v48 + 2;
        *(a1 + 156) = v49 | 0x20000;
        v21 = *(a1 + 128);
        if (!v21)
        {
LABEL_156:
          operator new();
        }

LABEL_69:
        v59[0] = 0;
        v22 = *(this + 1);
        if (v22 >= *(this + 2) || *v22 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v59))
          {
            return 0;
          }
        }

        else
        {
          v59[0] = *v22;
          *(this + 1) = v22 + 1;
        }

        v51 = *(this + 14);
        v52 = *(this + 15);
        *(this + 14) = v51 + 1;
        if (v51 < v52)
        {
          v53 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v59[0]);
          if (sub_100161F20(v21, this, v54, v55))
          {
            if (*(this + 36) == 1)
            {
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v53);
              v56 = *(this + 14);
              v57 = __OFSUB__(v56, 1);
              v58 = v56 - 1;
              if (v58 < 0 == v57)
              {
                *(this + 14) = v58;
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
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_65;
        }

        v18 = *(this + 1);
        v9 = *(this + 2);
        if (v18 >= v9)
        {
          goto LABEL_78;
        }

        goto LABEL_75;
      case 3u:
        if (v8 != 1)
        {
          goto LABEL_65;
        }

        *v59 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_82;
      case 4u:
        if (v8 != 1)
        {
          goto LABEL_65;
        }

        *v59 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_85;
      case 5u:
        if (v8 != 1)
        {
          goto LABEL_65;
        }

        *v59 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_88;
      case 6u:
        if (v8 != 1)
        {
          goto LABEL_65;
        }

        *v59 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_91;
      case 7u:
        if (v8 != 1)
        {
          goto LABEL_65;
        }

        *v59 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_94;
      case 8u:
        if (v8 != 1)
        {
          goto LABEL_65;
        }

        *v59 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_97;
      case 9u:
        if (v8 != 1)
        {
          goto LABEL_65;
        }

        *v59 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_100;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_65;
        }

        v16 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_103;
      case 0xBu:
        if (v8 == 1)
        {
          goto LABEL_111;
        }

        goto LABEL_65;
      case 0xCu:
        if (v8 != 1)
        {
          goto LABEL_65;
        }

        *v59 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_115;
      case 0xDu:
        if (v8 != 1)
        {
          goto LABEL_65;
        }

        *v59 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_118;
      case 0xEu:
        if (v8 != 1)
        {
          goto LABEL_65;
        }

        *v59 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_121;
      case 0xFu:
        if (v8 != 1)
        {
          goto LABEL_65;
        }

        *v59 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_124;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_65;
        }

        v17 = *(this + 1);
        v13 = *(this + 2);
        if (v17 >= v13)
        {
          goto LABEL_131;
        }

        goto LABEL_128;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_65;
        }

        v14 = *(this + 1);
        v13 = *(this + 2);
        v59[0] = 0;
        if (v14 >= v13)
        {
          goto LABEL_138;
        }

        goto LABEL_136;
      case 0x12u:
        if (v8 != 1)
        {
          goto LABEL_65;
        }

        *v59 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_144;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_65;
        }

        v20 = *(this + 1);
        v19 = *(this + 2);
        if (v20 >= v19)
        {
          goto LABEL_151;
        }

        goto LABEL_148;
      case 0x14u:
        if (v8 != 2)
        {
          goto LABEL_65;
        }

        *(a1 + 156) |= 0x20000u;
        v21 = *(a1 + 128);
        if (v21)
        {
          goto LABEL_69;
        }

        goto LABEL_156;
      default:
LABEL_65:
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

uint64_t sub_100163770(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 156);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 16), a2, a4);
    v6 = *(v5 + 156);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 20), a2, a4);
  v6 = *(v5 + 156);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 156);
  if ((v6 & 0x40000) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 136), a3);
  v6 = *(v5 + 156);
  if ((v6 & 8) == 0)
  {
LABEL_6:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 156);
  if ((v6 & 0x80000) == 0)
  {
LABEL_7:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 144), a3);
  v6 = *(v5 + 156);
  if ((v6 & 0x10) == 0)
  {
LABEL_8:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 40), a3);
  v6 = *(v5 + 156);
  if ((v6 & 0x20) == 0)
  {
LABEL_9:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 48), a3);
  v6 = *(v5 + 156);
  if ((v6 & 0x40) == 0)
  {
LABEL_10:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 56), a3);
  v6 = *(v5 + 156);
  if ((v6 & 0x80) == 0)
  {
LABEL_11:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 88), a2, a4);
  v6 = *(v5 + 156);
  if ((v6 & 0x100) == 0)
  {
LABEL_12:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 64), a3);
  v6 = *(v5 + 156);
  if ((v6 & 0x200) == 0)
  {
LABEL_13:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 72), a3);
  v6 = *(v5 + 156);
  if ((v6 & 0x400) == 0)
  {
LABEL_14:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 80), a3);
  v6 = *(v5 + 156);
  if ((v6 & 0x800) == 0)
  {
LABEL_15:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(v5 + 96), a3);
  v6 = *(v5 + 156);
  if ((v6 & 0x1000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xF, a2, *(v5 + 104), a3);
  v6 = *(v5 + 156);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 120), a2, a4);
  v6 = *(v5 + 156);
  if ((v6 & 0x2000) == 0)
  {
LABEL_18:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x11, *(v5 + 92), a2, a4);
  v6 = *(v5 + 156);
  if ((v6 & 0x4000) == 0)
  {
LABEL_19:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x12, a2, *(v5 + 112), a3);
  v6 = *(v5 + 156);
  if ((v6 & 0x10000) == 0)
  {
LABEL_20:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 124), a2, a4);
  if ((*(v5 + 156) & 0x20000) == 0)
  {
LABEL_21:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_46;
  }

LABEL_42:
  v10 = *(v5 + 128);
  if (v10)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x14, v10, a2, a4);
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
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x14, *(qword_10045E2D8 + 128), a2, a4);
    v12 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v12;
    if (!v12)
    {
      return result;
    }
  }

LABEL_46:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100163A2C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if ((*(this + 156) & 1) == 0)
  {
    if ((*(this + 156) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_29:
    v14 = *(this + 5);
    *v3 = 16;
    if (v14 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v3 + 1, a3);
      v5 = *(this + 39);
      if ((v5 & 4) != 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      *(v3 + 1) = v14;
      v3 = (v3 + 2);
      v5 = *(this + 39);
      if ((v5 & 4) != 0)
      {
        goto LABEL_33;
      }
    }

LABEL_4:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

  v12 = *(this + 4);
  *a2 = 8;
  v13 = a2 + 1;
  if (v12 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v13, a3);
    if ((*(this + 156) & 2) != 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    *(v3 + 1) = v12;
    v3 = (v3 + 2);
    if ((*(this + 156) & 2) != 0)
    {
      goto LABEL_29;
    }
  }

LABEL_3:
  v5 = *(this + 39);
  if ((v5 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_33:
  v15 = *(this + 3);
  *v3 = 25;
  *(v3 + 1) = v15;
  v3 = (v3 + 9);
  v5 = *(this + 39);
  if ((v5 & 0x40000) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  v16 = *(this + 17);
  *v3 = 33;
  *(v3 + 1) = v16;
  v3 = (v3 + 9);
  v5 = *(this + 39);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  v17 = *(this + 4);
  *v3 = 41;
  *(v3 + 1) = v17;
  v3 = (v3 + 9);
  v5 = *(this + 39);
  if ((v5 & 0x80000) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  v18 = *(this + 18);
  *v3 = 49;
  *(v3 + 1) = v18;
  v3 = (v3 + 9);
  v5 = *(this + 39);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  v19 = *(this + 5);
  *v3 = 57;
  *(v3 + 1) = v19;
  v3 = (v3 + 9);
  v5 = *(this + 39);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  v20 = *(this + 6);
  *v3 = 65;
  *(v3 + 1) = v20;
  v3 = (v3 + 9);
  v5 = *(this + 39);
  if ((v5 & 0x40) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_11;
    }

LABEL_40:
    v22 = *(this + 22);
    *v3 = 80;
    if (v22 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, v3 + 1, a3);
      v6 = *(this + 39);
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      *(v3 + 1) = v22;
      v3 = (v3 + 2);
      v6 = *(this + 39);
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_44;
      }
    }

LABEL_12:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_39:
  v21 = *(this + 7);
  *v3 = 73;
  *(v3 + 1) = v21;
  v3 = (v3 + 9);
  if ((*(this + 39) & 0x80) != 0)
  {
    goto LABEL_40;
  }

LABEL_11:
  v6 = *(this + 39);
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_12;
  }

LABEL_44:
  v23 = *(this + 8);
  *v3 = 89;
  *(v3 + 1) = v23;
  v3 = (v3 + 9);
  v6 = *(this + 39);
  if ((v6 & 0x200) == 0)
  {
LABEL_13:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  v24 = *(this + 9);
  *v3 = 97;
  *(v3 + 1) = v24;
  v3 = (v3 + 9);
  v6 = *(this + 39);
  if ((v6 & 0x400) == 0)
  {
LABEL_14:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  v25 = *(this + 10);
  *v3 = 105;
  *(v3 + 1) = v25;
  v3 = (v3 + 9);
  v6 = *(this + 39);
  if ((v6 & 0x800) == 0)
  {
LABEL_15:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  v26 = *(this + 12);
  *v3 = 113;
  *(v3 + 1) = v26;
  v3 = (v3 + 9);
  v6 = *(this + 39);
  if ((v6 & 0x1000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

LABEL_49:
    v28 = *(this + 30);
    *v3 = 384;
    if (v28 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v28, v3 + 2, a3);
      v7 = *(this + 39);
      if ((v7 & 0x2000) != 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      *(v3 + 2) = v28;
      v3 = (v3 + 3);
      v7 = *(this + 39);
      if ((v7 & 0x2000) != 0)
      {
        goto LABEL_53;
      }
    }

LABEL_18:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_48:
  v27 = *(this + 13);
  *v3 = 121;
  *(v3 + 1) = v27;
  v3 = (v3 + 9);
  if ((*(this + 39) & 0x8000) != 0)
  {
    goto LABEL_49;
  }

LABEL_17:
  v7 = *(this + 39);
  if ((v7 & 0x2000) == 0)
  {
    goto LABEL_18;
  }

LABEL_53:
  v29 = *(this + 92);
  *v3 = 392;
  *(v3 + 2) = v29;
  v3 = (v3 + 3);
  v7 = *(this + 39);
  if ((v7 & 0x4000) == 0)
  {
LABEL_19:
    if ((v7 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

LABEL_55:
    v31 = *(this + 31);
    *v3 = 408;
    if (v31 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v31, v3 + 2, a3);
      if ((*(this + 158) & 2) == 0)
      {
        goto LABEL_71;
      }
    }

    else
    {
      *(v3 + 2) = v31;
      v3 = (v3 + 3);
      if ((*(this + 158) & 2) == 0)
      {
        goto LABEL_71;
      }
    }

    goto LABEL_21;
  }

LABEL_54:
  v30 = *(this + 14);
  *v3 = 401;
  *(v3 + 2) = v30;
  v3 = (v3 + 10);
  if ((*(this + 39) & 0x10000) != 0)
  {
    goto LABEL_55;
  }

LABEL_20:
  if ((*(this + 158) & 2) == 0)
  {
    goto LABEL_71;
  }

LABEL_21:
  v8 = *(this + 16);
  if (v8)
  {
    *v3 = 418;
    v9 = v3 + 2;
    v10 = *(v8 + 20);
    if (v10 <= 0x7F)
    {
      goto LABEL_23;
    }

LABEL_61:
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v9, a3);
    v11 = *(v8 + 24);
    if ((v11 & 1) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  v8 = *(qword_10045E2D8 + 128);
  *v3 = 418;
  v9 = v3 + 2;
  v10 = *(v8 + 20);
  if (v10 > 0x7F)
  {
    goto LABEL_61;
  }

LABEL_23:
  *(v3 + 2) = v10;
  v3 = (v3 + 3);
  v11 = *(v8 + 24);
  if (v11)
  {
LABEL_62:
    v32 = *(v8 + 16);
    *v3 = 8;
    *(v3 + 1) = v32;
    v3 = (v3 + 2);
    v11 = *(v8 + 24);
  }

LABEL_63:
  if ((v11 & 2) == 0)
  {
    if ((v11 & 4) == 0)
    {
      goto LABEL_65;
    }

LABEL_68:
    v37 = *(v8 + 18);
    *v3 = 24;
    *(v3 + 1) = v37;
    v3 = (v3 + 2);
    v38 = *(v8 + 8);
    v34 = (v8 + 8);
    v33 = v38;
    if (!v38)
    {
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  v36 = *(v8 + 17);
  *v3 = 16;
  *(v3 + 1) = v36;
  v3 = (v3 + 2);
  if ((*(v8 + 24) & 4) != 0)
  {
    goto LABEL_68;
  }

LABEL_65:
  v35 = *(v8 + 8);
  v34 = (v8 + 8);
  v33 = v35;
  if (!v35)
  {
    goto LABEL_71;
  }

LABEL_69:
  if (*v33 != v33[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v34, v3, a3);
  }

LABEL_71:
  v41 = *(this + 1);
  v40 = (this + 8);
  v39 = v41;
  if (!v41 || *v39 == v39[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v40, v3, a3);
}

uint64_t sub_10016416C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 156);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_30;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_10:
    v7 = *(a1 + 20);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(a1 + 156);
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
    goto LABEL_14;
  }

  v6 = *(a1 + 16);
  if (v6 < 0x80)
  {
    v4 = 2;
    if ((v3 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
  v3 = *(a1 + 156);
  if ((v3 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_14:
  v9 = v4 + 9;
  if ((v3 & 4) == 0)
  {
    v9 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v9 += 9;
  }

  if ((v3 & 0x10) != 0)
  {
    v9 += 9;
  }

  if ((v3 & 0x20) != 0)
  {
    v9 += 9;
  }

  if ((v3 & 0x40) != 0)
  {
    v5 = v9 + 9;
  }

  else
  {
    v5 = v9;
  }

  if ((v3 & 0x80) != 0)
  {
    v10 = *(a1 + 88);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
      v3 = *(a1 + 156);
    }

    else
    {
      v11 = 2;
    }

    v5 = (v11 + v5);
  }

LABEL_30:
  if ((v3 & 0xFF00) != 0)
  {
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

    if ((v3 & 0x800) != 0)
    {
      v12 += 9;
    }

    if ((v3 & 0x1000) != 0)
    {
      v12 += 9;
    }

    if ((v3 & 0x2000) != 0)
    {
      v12 += 3;
    }

    if ((v3 & 0x4000) != 0)
    {
      v5 = v12 + 10;
    }

    else
    {
      v5 = v12;
    }

    if ((v3 & 0x8000) != 0)
    {
      v13 = *(a1 + 120);
      if (v13 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 2;
        v3 = *(a1 + 156);
      }

      else
      {
        v14 = 3;
      }

      v5 = (v14 + v5);
    }
  }

  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v15 = *(a1 + 124);
      if (v15 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 2;
        v3 = *(a1 + 156);
      }

      else
      {
        v16 = 3;
      }

      LODWORD(v5) = v16 + v5;
    }

    if ((v3 & 0x20000) != 0)
    {
      v17 = *(a1 + 128);
      if (!v17)
      {
        v17 = *(qword_10045E2D8 + 128);
      }

      if (v17[6])
      {
        LODWORD(v18) = 2 * (v17[6] & 1) + (v17[6] & 2) + ((v17[6] >> 1) & 2);
      }

      else
      {
        LODWORD(v18) = 0;
      }

      v19 = *(v17 + 1);
      if (!v19 || *v19 == v19[1])
      {
        v17[5] = v18;
        v20 = 1;
      }

      else
      {
        v18 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v17 + 2), a2) + v18);
        v17[5] = v18;
        if (v18 >= 0x80)
        {
          v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
        }

        else
        {
          v20 = 1;
        }
      }

      LODWORD(v5) = v5 + v18 + v20 + 2;
      v3 = *(a1 + 156);
    }

    v21 = v5 + 9;
    if ((v3 & 0x40000) == 0)
    {
      v21 = v5;
    }

    if ((v3 & 0x80000) != 0)
    {
      v5 = v21 + 9;
    }

    else
    {
      v5 = v21;
    }
  }

  v22 = *(a1 + 8);
  if (v22 && *v22 != v22[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 152) = v5;
  return v5;
}

uint64_t sub_1001643F0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100162560(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001644D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001644E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001644F8(uint64_t result, uint64_t a2)
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

uint64_t sub_10016458C()
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

  return qword_10045CFC8;
}

void sub_10016461C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100164630(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
    LOBYTE(v4) = *(a2 + 52);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 52);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
  {
    *(a1 + 52) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_10045E2E0 + 16);
    }

    sub_10015FB40(v5, v6);
    v4 = *(a2 + 52);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 24);
    *(a1 + 52) |= 2u;
    *(a1 + 24) = v7;
    v4 = *(a2 + 52);
    if ((v4 & 4) == 0)
    {
LABEL_12:
      if ((v4 & 8) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_20;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_12;
  }

  v8 = *(a2 + 32);
  *(a1 + 52) |= 4u;
  v9 = *(a1 + 32);
  if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v9, v8);
  if ((*(a2 + 52) & 8) != 0)
  {
LABEL_20:
    *(a1 + 52) |= 8u;
    v10 = *(a1 + 40);
    if (!v10)
    {
      operator new();
    }

    v11 = *(a2 + 40);
    if (!v11)
    {
      v11 = *(qword_10045E2E0 + 40);
    }

    sub_100162560(v10, v11);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100164938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10016494C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100164960(void *a1)
{
  *a1 = off_10043F4B0;
  v2 = a1[4];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (qword_10045E2E0 != a1)
  {
    v4 = a1[2];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = a1[5];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100164A64(void *a1)
{
  sub_100164960(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100164B48(uint64_t a1)
{
  LOBYTE(v1) = *(a1 + 52);
  if (!v1)
  {
    goto LABEL_12;
  }

  if ((*(a1 + 52) & 1) != 0 && *(a1 + 16))
  {
    v2 = a1;
    sub_100160208(*(a1 + 16));
    a1 = v2;
    v1 = *(v2 + 52);
  }

  *(a1 + 24) = 0;
  if ((v1 & 4) != 0)
  {
    v3 = *(a1 + 32);
    if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      if (*(v3 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
        if ((*(a1 + 52) & 8) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }

      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

  if ((*(a1 + 52) & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (*(a1 + 40))
  {
    v4 = a1;
    sub_100162B74(*(a1 + 40));
    a1 = v4;
  }

LABEL_12:
  v6 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 11) = 0;
  if (v6)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100164C18(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 == 1)
        {
          if (v9 != 2)
          {
            goto LABEL_25;
          }

          *(a1 + 52) |= 1u;
          v12 = *(a1 + 16);
          if (!v12)
          {
            operator new();
          }

          v34[0] = 0;
          v13 = *(this + 1);
          if (v13 >= *(this + 2) || *v13 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v34))
            {
              return 0;
            }
          }

          else
          {
            v34[0] = *v13;
            *(this + 1) = v13 + 1;
          }

          v24 = *(this + 14);
          v25 = *(this + 15);
          *(this + 14) = v24 + 1;
          if (v24 >= v25)
          {
            return 0;
          }

          v26 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v34[0]);
          if (!sub_100160444(v12, this, v27, v28) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v26);
          v29 = *(this + 14);
          v22 = __OFSUB__(v29, 1);
          v30 = v29 - 1;
          if (v30 < 0 == v22)
          {
            *(this + 14) = v30;
          }

          v31 = *(this + 1);
          if (v31 < *(this + 2) && *v31 == 17)
          {
            *(this + 1) = v31 + 1;
            *v34 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v34) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_56;
          }
        }

        else
        {
          if (v8 != 2 || v9 != 1)
          {
            goto LABEL_25;
          }

          *v34 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v34) & 1) == 0)
          {
            return 0;
          }

LABEL_56:
          *(a1 + 24) = *v34;
          v32 = *(a1 + 52) | 2;
          *(a1 + 52) = v32;
          v33 = *(this + 1);
          if (v33 < *(this + 2) && *v33 == 26)
          {
            *(this + 1) = v33 + 1;
            *(a1 + 52) = v32 | 4;
            if (*(a1 + 32) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
LABEL_29:
              operator new();
            }

            goto LABEL_30;
          }
        }
      }

      if (v8 == 3)
      {
        break;
      }

      if (v8 == 4 && v9 == 2)
      {
        *(a1 + 52) |= 8u;
        v10 = *(a1 + 40);
        if (!v10)
        {
          goto LABEL_34;
        }

        goto LABEL_16;
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

    if (v9 != 2)
    {
      goto LABEL_25;
    }

    *(a1 + 52) |= 4u;
    if (*(a1 + 32) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      goto LABEL_29;
    }

LABEL_30:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
    if (!result)
    {
      return result;
    }

    v15 = *(this + 1);
    if (v15 < *(this + 2) && *v15 == 34)
    {
      *(this + 1) = v15 + 1;
      *(a1 + 52) |= 8u;
      v10 = *(a1 + 40);
      if (!v10)
      {
LABEL_34:
        operator new();
      }

LABEL_16:
      v34[0] = 0;
      v11 = *(this + 1);
      if (v11 >= *(this + 2) || *v11 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v34))
        {
          return 0;
        }
      }

      else
      {
        v34[0] = *v11;
        *(this + 1) = v11 + 1;
      }

      v16 = *(this + 14);
      v17 = *(this + 15);
      *(this + 14) = v16 + 1;
      if (v16 >= v17)
      {
        return 0;
      }

      v18 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v34[0]);
      if (!sub_100162C88(v10, this, v19, v20) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v18);
      v21 = *(this + 14);
      v22 = __OFSUB__(v21, 1);
      v23 = v21 - 1;
      if (v23 < 0 == v22)
      {
        *(this + 14) = v23;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        break;
      }
    }
  }

  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

uint64_t sub_10016517C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 52);
  if (v6)
  {
    v10 = *(result + 16);
    if (v10)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
      v6 = *(v5 + 52);
      if ((v6 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045E2E0 + 16), a2, a4);
      v6 = *(v5 + 52);
      if ((v6 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 52);
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
  v11 = *(v5 + 32);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  if ((*(v5 + 52) & 8) == 0)
  {
LABEL_5:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_13:
  v12 = *(v5 + 40);
  if (v12)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v12, a2, a4);
    v13 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v13;
    if (!v13)
    {
      return result;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, *(qword_10045E2E0 + 40), a2, a4);
    v14 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v14;
    if (!v14)
    {
      return result;
    }
  }

LABEL_17:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001652A0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 13);
  if (v6)
  {
    v10 = *(this + 2);
    if (v10)
    {
      *a2 = 10;
      v11 = a2 + 1;
      v12 = v10[22];
      if (v12 <= 0x7F)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v10 = *(qword_10045E2E0 + 16);
      *a2 = 10;
      v11 = a2 + 1;
      v12 = v10[22];
      if (v12 <= 0x7F)
      {
LABEL_9:
        *(v4 + 1) = v12;
        v4 = sub_100161230(v10, (v4 + 2), a3, a4);
        v6 = *(this + 13);
        if ((v6 & 2) != 0)
        {
          goto LABEL_13;
        }

LABEL_3:
        if ((v6 & 4) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_14;
      }
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v11, a3);
    v4 = sub_100161230(v10, v13, v14, v15);
    v6 = *(this + 13);
    if ((v6 & 2) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_3;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_13:
  v16 = *(this + 3);
  *v4 = 17;
  *(v4 + 1) = v16;
  v4 = (v4 + 9);
  v6 = *(this + 13);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_14:
  v17 = *(this + 4);
  *v4 = 26;
  v18 = *(v17 + 23);
  if ((v18 & 0x8000000000000000) != 0)
  {
    v18 = *(v17 + 8);
    if (v18 <= 0x7F)
    {
      goto LABEL_16;
    }
  }

  else if (v18 <= 0x7F)
  {
LABEL_16:
    *(v4 + 1) = v18;
    v19 = v4 + 2;
    goto LABEL_19;
  }

  v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v4 + 1, a3);
LABEL_19:
  v20 = *(v17 + 23);
  if (v20 >= 0)
  {
    v21 = v17;
  }

  else
  {
    v21 = *v17;
  }

  if (v20 >= 0)
  {
    v22 = *(v17 + 23);
  }

  else
  {
    v22 = *(v17 + 8);
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v21, v22, v19, a4);
  if ((*(this + 13) & 8) == 0)
  {
LABEL_5:
    v9 = *(this + 1);
    v8 = (this + 8);
    v7 = v9;
    if (!v9)
    {
      return v4;
    }

    goto LABEL_32;
  }

LABEL_26:
  v23 = *(this + 5);
  if (v23)
  {
    *v4 = 34;
    v24 = v4 + 1;
    v25 = v23[38];
    if (v25 <= 0x7F)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v23 = *(qword_10045E2E0 + 40);
    *v4 = 34;
    v24 = v4 + 1;
    v25 = v23[38];
    if (v25 <= 0x7F)
    {
LABEL_28:
      *(v4 + 1) = v25;
      v4 = sub_100163A2C(v23, (v4 + 2), a3);
      v26 = *(this + 1);
      v8 = (this + 8);
      v7 = v26;
      if (!v26)
      {
        return v4;
      }

      goto LABEL_32;
    }
  }

  v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v25, v24, a3);
  v4 = sub_100163A2C(v23, v27, v28);
  v29 = *(this + 1);
  v8 = (this + 8);
  v7 = v29;
  if (!v29)
  {
    return v4;
  }

LABEL_32:
  if (*v7 == v7[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v8, v4, a3);
}

uint64_t sub_1001654D8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 52);
  if (!v3)
  {
    v4 = 0;
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_30;
    }

    goto LABEL_37;
  }

  if ((*(a1 + 52) & 1) == 0)
  {
    if ((*(a1 + 52) & 2) != 0)
    {
      v4 = 9;
    }

    else
    {
      v4 = 0;
    }

    if ((*(a1 + 52) & 4) == 0)
    {
      goto LABEL_28;
    }

LABEL_19:
    v10 = *(a1 + 32);
    v11 = *(v10 + 23);
    v12 = v11;
    v13 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v14 = *(v10 + 23);
    }

    else
    {
      v14 = v13;
    }

    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
      v11 = *(v10 + 23);
      v13 = *(v10 + 8);
      v3 = *(a1 + 52);
      v12 = *(v10 + 23);
    }

    else
    {
      v15 = 1;
    }

    if (v12 < 0)
    {
      v11 = v13;
    }

    v4 = (v4 + v15 + v11 + 1);
    goto LABEL_28;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = sub_1001616EC(v7, a2);
    if (v8 < 0x80)
    {
LABEL_12:
      v9 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    v8 = sub_1001616EC(*(qword_10045E2E0 + 16), a2);
    if (v8 < 0x80)
    {
      goto LABEL_12;
    }
  }

  v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
LABEL_15:
  v3 = *(a1 + 52);
  if ((v3 & 2) != 0)
  {
    v4 = (v8 + v9 + 10);
  }

  else
  {
    v4 = (v8 + v9 + 1);
  }

  if ((v3 & 4) != 0)
  {
    goto LABEL_19;
  }

LABEL_28:
  if ((v3 & 8) != 0)
  {
    v17 = *(a1 + 40);
    if (v17)
    {
      v18 = sub_10016416C(v17, a2);
      if (v18 < 0x80)
      {
LABEL_33:
        v19 = 1;
        goto LABEL_36;
      }
    }

    else
    {
      v18 = sub_10016416C(*(qword_10045E2E0 + 40), a2);
      if (v18 < 0x80)
      {
        goto LABEL_33;
      }
    }

    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
LABEL_36:
    v4 = (v4 + v18 + v19 + 1);
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_30;
    }

    goto LABEL_37;
  }

  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_30:
    *(a1 + 48) = v4;
    return v4;
  }

LABEL_37:
  if (*v6 == v6[1])
  {
    goto LABEL_30;
  }

  v20 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v4;
  *(a1 + 48) = v20;
  return v20;
}

uint64_t sub_10016568C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100164630(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10016576C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100165780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100165794(uint64_t result, uint64_t a2)
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

uint64_t sub_10016582C()
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

  return qword_10045CFD8;
}

void sub_1001658BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001658D0(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043F560;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  sub_1001544A4(a1, a2);
  return a1;
}

void sub_100165944(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

void sub_100165974(uint64_t a1)
{
  *a1 = off_10043F560;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1001659C8(uint64_t a1)
{
  *a1 = off_10043F560;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_100165ACC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (v8 != 2 || v9 != 1)
          {
            goto LABEL_25;
          }

          *v19 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v19) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_32;
        }

        if (v9 != 1)
        {
          goto LABEL_25;
        }

        *v19 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v19) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v19;
        *(a1 + 56) |= 1u;
        v12 = *(this + 1);
        if (v12 < *(this + 2) && *v12 == 17)
        {
          *(this + 1) = v12 + 1;
          *v19 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v19) & 1) == 0)
          {
            return 0;
          }

LABEL_32:
          *(a1 + 24) = *v19;
          *(a1 + 56) |= 2u;
          v13 = *(this + 1);
          if (v13 < *(this + 2) && *v13 == 25)
          {
            *(this + 1) = v13 + 1;
            *v19 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v19) & 1) == 0)
            {
              return 0;
            }

LABEL_35:
            *(a1 + 32) = *v19;
            *(a1 + 56) |= 4u;
            v14 = *(this + 1);
            if (v14 < *(this + 2) && *v14 == 33)
            {
              *(this + 1) = v14 + 1;
              *v19 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v19) & 1) == 0)
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
        if (v9 != 1)
        {
          goto LABEL_25;
        }

        *v19 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v19) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_35;
      }

      if (v8 != 4)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_25;
      }

      *v19 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v19) & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      *(a1 + 40) = *v19;
      *(a1 + 56) |= 8u;
      v15 = *(this + 1);
      v10 = *(this + 2);
      if (v15 < v10 && *v15 == 40)
      {
        v11 = v15 + 1;
        *(this + 1) = v11;
        v19[0] = 0;
        if (v11 >= v10)
        {
          goto LABEL_43;
        }

LABEL_41:
        v16 = *v11;
        if ((v16 & 0x80000000) != 0)
        {
LABEL_43:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v19);
          if (!result)
          {
            return result;
          }

          v16 = v19[0];
          v17 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_45;
        }

        v17 = v11 + 1;
        *(this + 1) = v17;
LABEL_45:
        *(a1 + 48) = v16 != 0;
        *(a1 + 56) |= 0x10u;
        if (v17 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 5 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      v19[0] = 0;
      if (v11 >= v10)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
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

uint64_t sub_100165DCC(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 56);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    v6 = *(v5 + 56);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 56);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 32), a3);
  v6 = *(v5 + 56);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 40), a3);
  if ((*(v5 + 56) & 0x10) == 0)
  {
LABEL_6:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 48), a2, a4);
  v10 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_13:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

uint64_t sub_100165EBC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    v7 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v7;
    a2 += 9;
    v3 = *(a1 + 56);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
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
  v3 = *(a1 + 56);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v9 = *(a1 + 32);
  *a2 = 25;
  *(a2 + 1) = v9;
  a2 += 9;
  v3 = *(a1 + 56);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v11 = *(a1 + 48);
    *a2 = 40;
    *(a2 + 1) = v11;
    a2 += 2;
    v12 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v12;
    if (!v12)
    {
      return a2;
    }

    goto LABEL_13;
  }

LABEL_11:
  v10 = *(a1 + 40);
  *a2 = 33;
  *(a2 + 1) = v10;
  a2 += 9;
  if ((*(a1 + 56) & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_13:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_100166064(_DWORD *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[14];
  if (v3)
  {
    v4 = ((v3 << 31) >> 31) & 9;
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

    v5 = v4 + ((v3 >> 3) & 2);
    v6 = (a1 + 2);
    v7 = *(a1 + 1);
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = 0;
    v6 = (a1 + 2);
    v7 = *(a1 + 1);
    if (!v7)
    {
LABEL_9:
      a1[13] = v5;
      return v5;
    }
  }

  if (*v7 == v7[1])
  {
    goto LABEL_9;
  }

  v9 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  a1[13] = v9;
  return v9;
}

uint64_t sub_100166118(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1001544A4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001661F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10016620C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100166220(uint64_t result, uint64_t a2)
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

uint64_t sub_1001662B4()
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

  return qword_10045CFE8;
}

void sub_100166344(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_100166358(uint64_t a1)
{
  *a1 = off_10043F610;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1001663AC(uint64_t a1)
{
  *a1 = off_10043F610;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1001664A8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        if (v8 != 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v11) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v11;
        *(a1 + 36) |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v8 != 1)
      {
        break;
      }

      v11 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v11) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v11;
      *(a1 + 36) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
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

uint64_t sub_100166620(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 36);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    if ((*(v4 + 36) & 2) == 0)
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
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

uint64_t sub_1001666BC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 36);
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = *(a1 + 24);
    *a2 = 17;
    *(a2 + 1) = v8;
    a2 += 9;
    v9 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v9;
    if (!v9)
    {
      return a2;
    }

    goto LABEL_7;
  }

  v7 = *(a1 + 16);
  *a2 = 9;
  *(a2 + 1) = v7;
  a2 += 9;
  if ((*(a1 + 36) & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
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

uint64_t sub_100166794(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 36);
  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v4 += 9;
  }

  if (*(a1 + 36))
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

  *(a1 + 32) = v5;
  return v5;
}

uint64_t sub_1001667FC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100154918(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001668DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001668F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100166904(uint64_t result, uint64_t a2)
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

uint64_t sub_100166998()
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

  return qword_10045CFF8;
}

void sub_100166A28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100166A3C(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043F6C0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  sub_100154DF0(a1, a2);
  return a1;
}

void sub_100166AB0(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

void sub_100166AE0(uint64_t a1)
{
  *a1 = off_10043F6C0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100166B34(uint64_t a1)
{
  *a1 = off_10043F6C0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_100166C38(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        if (v8 != 3)
        {
          if (v8 == 4 && v9 == 1)
          {
            *v17 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v17) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_37;
          }

          goto LABEL_25;
        }

        if (v9 != 1)
        {
          goto LABEL_25;
        }

LABEL_33:
        *v17 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v17) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v17;
        *(a1 + 48) |= 4u;
        v16 = *(this + 1);
        if (v16 < *(this + 2) && *v16 == 33)
        {
          *(this + 1) = v16 + 1;
          *v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v17) & 1) == 0)
          {
            return 0;
          }

LABEL_37:
          *(a1 + 32) = *v17;
          *(a1 + 48) |= 8u;
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
        goto LABEL_25;
      }

      *v17 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v17) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = *v17;
      *(a1 + 48) |= 1u;
      v12 = *(this + 1);
      v10 = *(this + 2);
      if (v12 < v10 && *v12 == 16)
      {
        v11 = v12 + 1;
        *(this + 1) = v11;
        v17[0] = 0;
        if (v11 >= v10)
        {
          goto LABEL_28;
        }

LABEL_22:
        v13 = *v11;
        if ((v13 & 0x80000000) != 0)
        {
LABEL_28:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v17);
          if (!result)
          {
            return result;
          }

          v13 = v17[0];
          v14 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_30;
        }

        v14 = v11 + 1;
        *(this + 1) = v14;
LABEL_30:
        *(a1 + 40) = v13 != 0;
        *(a1 + 48) |= 2u;
        if (v14 < v10 && *v14 == 25)
        {
          *(this + 1) = v14 + 1;
          goto LABEL_33;
        }
      }
    }

    if (v8 == 2 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      v17[0] = 0;
      if (v11 >= v10)
      {
        goto LABEL_28;
      }

      goto LABEL_22;
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

uint64_t sub_100166EB0(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    v6 = *(v5 + 48);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 40), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  if ((*(v5 + 48) & 8) == 0)
  {
LABEL_5:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v10 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_11:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

uint64_t sub_100166F84(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v7 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v7;
    a2 += 9;
    v3 = *(a1 + 48);
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

  v8 = *(a1 + 40);
  *a2 = 16;
  *(a2 + 1) = v8;
  a2 += 2;
  v3 = *(a1 + 48);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v10 = *(a1 + 32);
    *a2 = 33;
    *(a2 + 1) = v10;
    a2 += 9;
    v11 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v11;
    if (!v11)
    {
      return a2;
    }

    goto LABEL_11;
  }

LABEL_9:
  v9 = *(a1 + 24);
  *a2 = 25;
  *(a2 + 1) = v9;
  a2 += 9;
  if ((*(a1 + 48) & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_11:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_1001670D4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 48);
  v4 = (v3 << 31 >> 31) & 9 | v3 & 2;
  if ((v3 & 4) != 0)
  {
    v4 += 9;
  }

  if ((v3 & 8) != 0)
  {
    v4 += 9;
  }

  if (*(a1 + 48))
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

  *(a1 + 44) = v5;
  return v5;
}

uint64_t sub_100167150(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100154DF0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100167230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100167244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100167258(uint64_t result, uint64_t a2)
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

uint64_t sub_1001672EC()
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

  return qword_10045D008;
}

void sub_10016737C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100167390(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043F770;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  sub_100154F20(a1, a2);
  return a1;
}

void sub_100167404(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

void sub_100167434(uint64_t a1)
{
  *a1 = off_10043F770;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100167488(uint64_t a1)
{
  *a1 = off_10043F770;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_10016758C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
              goto LABEL_33;
            }

            *v23 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v23) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 16) = *v23;
            *(a1 + 56) |= 1u;
            v13 = *(this + 1);
            v12 = *(this + 2);
            if (v13 < v12 && *v13 == 16)
            {
              v14 = v13 + 1;
              *(this + 1) = v14;
              goto LABEL_29;
            }
          }

          else if (v8 == 2)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_33;
            }

            v14 = *(this + 1);
            v12 = *(this + 2);
LABEL_29:
            v23[0] = 0;
            if (v14 >= v12 || (v15 = *v14, (v15 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v23);
              if (!result)
              {
                return result;
              }

              v15 = v23[0];
              v16 = *(this + 1);
              v12 = *(this + 2);
            }

            else
            {
              v16 = v14 + 1;
              *(this + 1) = v16;
            }

            *(a1 + 48) = v15 != 0;
            *(a1 + 56) |= 2u;
            if (v16 < v12 && *v16 == 25)
            {
              *(this + 1) = v16 + 1;
              *v23 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v23) & 1) == 0)
              {
                return 0;
              }

              goto LABEL_41;
            }
          }

          else
          {
            if (v8 != 3 || v9 != 1)
            {
              goto LABEL_33;
            }

            *v23 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v23) & 1) == 0)
            {
              return 0;
            }

LABEL_41:
            *(a1 + 24) = *v23;
            *(a1 + 56) |= 4u;
            v18 = *(this + 1);
            if (v18 < *(this + 2) && *v18 == 33)
            {
              *(this + 1) = v18 + 1;
              *v23 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v23) & 1) == 0)
              {
                return 0;
              }

              goto LABEL_44;
            }
          }
        }

        if (v8 != 4)
        {
          break;
        }

        if (v9 != 1)
        {
          goto LABEL_33;
        }

        *v23 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v23) & 1) == 0)
        {
          return 0;
        }

LABEL_44:
        *(a1 + 32) = *v23;
        *(a1 + 56) |= 8u;
        v19 = *(this + 1);
        if (v19 < *(this + 2) && *v19 == 41)
        {
          *(this + 1) = v19 + 1;
          goto LABEL_47;
        }
      }

      if (v8 != 5)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_33;
      }

LABEL_47:
      *v23 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v23) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 40) = *v23;
      *(a1 + 56) |= 0x10u;
      v20 = *(this + 1);
      v10 = *(this + 2);
      if (v20 < v10 && *v20 == 48)
      {
        v11 = v20 + 1;
        *(this + 1) = v11;
        v23[0] = 0;
        if (v11 >= v10)
        {
          goto LABEL_53;
        }

LABEL_51:
        v21 = *v11;
        if ((v21 & 0x80000000) != 0)
        {
LABEL_53:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v23);
          if (!result)
          {
            return result;
          }

          v21 = v23[0];
          v22 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_55;
        }

        v22 = v11 + 1;
        *(this + 1) = v22;
LABEL_55:
        *(a1 + 49) = v21 != 0;
        *(a1 + 56) |= 0x20u;
        if (v22 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
      v11 = *(this + 1);
      v10 = *(this + 2);
      v23[0] = 0;
      if (v11 >= v10)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }

LABEL_33:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_1001678F4(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 56);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    v6 = *(v5 + 56);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 48), a2, a4);
  v6 = *(v5 + 56);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 56);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 56);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  if ((*(v5 + 56) & 0x20) == 0)
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 49), a2, a4);
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

uint64_t sub_100167A00(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    v7 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v7;
    a2 += 9;
    v3 = *(a1 + 56);
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

  v8 = *(a1 + 48);
  *a2 = 16;
  *(a2 + 1) = v8;
  a2 += 2;
  v3 = *(a1 + 56);
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
  *a2 = 25;
  *(a2 + 1) = v9;
  a2 += 9;
  v3 = *(a1 + 56);
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
  v10 = *(a1 + 32);
  *a2 = 33;
  *(a2 + 1) = v10;
  a2 += 9;
  v3 = *(a1 + 56);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v12 = *(a1 + 49);
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
  v11 = *(a1 + 40);
  *a2 = 41;
  *(a2 + 1) = v11;
  a2 += 9;
  if ((*(a1 + 56) & 0x20) != 0)
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

uint64_t sub_100167BC8(_DWORD *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[14];
  if (v3)
  {
    v4 = ((v3 << 31) >> 31) & 9 | v3 & 2;
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

    v5 = v4 + ((v3 >> 4) & 2);
    v6 = (a1 + 2);
    v7 = *(a1 + 1);
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = 0;
    v6 = (a1 + 2);
    v7 = *(a1 + 1);
    if (!v7)
    {
LABEL_9:
      a1[13] = v5;
      return v5;
    }
  }

  if (*v7 == v7[1])
  {
    goto LABEL_9;
  }

  v9 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  a1[13] = v9;
  return v9;
}

uint64_t sub_100167C84(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100154F20(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100167D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100167D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100167D8C(uint64_t result, uint64_t a2)
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

uint64_t sub_100167E20()
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

  return qword_10045D018;
}

void sub_100167EB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_100167EC4(uint64_t a1)
{
  *a1 = off_10043F820;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100167F18(uint64_t a1)
{
  *a1 = off_10043F820;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_100168018(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 <= 2)
          {
            break;
          }

          if (v8 == 3)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_25;
            }

            v12 = *(this + 1);
            v9 = *(this + 2);
            if (v12 >= v9)
            {
              goto LABEL_46;
            }

LABEL_43:
            v19 = *v12;
            if (v19 < 0)
            {
              goto LABEL_46;
            }

            *(a1 + 32) = v19;
            v20 = v12 + 1;
            *(this + 1) = v20;
            *(a1 + 60) |= 4u;
            if (v20 < v9)
            {
LABEL_48:
              if (*v20 == 32)
              {
                v13 = v20 + 1;
                *(this + 1) = v13;
                if (v13 < v9)
                {
                  goto LABEL_50;
                }

LABEL_53:
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 40));
                if (!result)
                {
                  return result;
                }

                v22 = *(this + 1);
                v9 = *(this + 2);
                *(a1 + 60) |= 8u;
                if (v22 < v9)
                {
                  goto LABEL_55;
                }
              }
            }
          }

          else if (v8 == 4)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_25;
            }

            v13 = *(this + 1);
            v9 = *(this + 2);
            if (v13 >= v9)
            {
              goto LABEL_53;
            }

LABEL_50:
            v21 = *v13;
            if (v21 < 0)
            {
              goto LABEL_53;
            }

            *(a1 + 40) = v21;
            v22 = v13 + 1;
            *(this + 1) = v22;
            *(a1 + 60) |= 8u;
            if (v22 < v9)
            {
LABEL_55:
              if (*v22 == 40)
              {
                v10 = v22 + 1;
                *(this + 1) = v10;
                if (v10 < v9)
                {
                  goto LABEL_57;
                }

LABEL_60:
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 48));
                if (!result)
                {
                  return result;
                }

                v26 = *(this + 1);
                v25 = *(this + 2);
                *(a1 + 60) |= 0x10u;
                if (v26 == v25)
                {
                  goto LABEL_62;
                }
              }
            }
          }

          else
          {
            if (v8 != 5 || (TagFallback & 7) != 0)
            {
              goto LABEL_25;
            }

            v10 = *(this + 1);
            v9 = *(this + 2);
            if (v10 >= v9)
            {
              goto LABEL_60;
            }

LABEL_57:
            v23 = *v10;
            if (v23 < 0)
            {
              goto LABEL_60;
            }

            *(a1 + 48) = v23;
            v24 = v10 + 1;
            *(this + 1) = v24;
            *(a1 + 60) |= 0x10u;
            if (v24 == v9)
            {
LABEL_62:
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

        if (v8 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_25;
        }

        v14 = *(this + 1);
        v9 = *(this + 2);
        if (v14 >= v9 || (v15 = *v14, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v16 = *(this + 1);
          v9 = *(this + 2);
          *(a1 + 60) |= 1u;
          if (v16 < v9)
          {
            goto LABEL_34;
          }
        }

        else
        {
          *(a1 + 16) = v15;
          v16 = v14 + 1;
          *(this + 1) = v16;
          *(a1 + 60) |= 1u;
          if (v16 < v9)
          {
LABEL_34:
            if (*v16 == 16)
            {
              v11 = v16 + 1;
              *(this + 1) = v11;
              if (v11 < v9)
              {
                goto LABEL_36;
              }

LABEL_39:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
              if (!result)
              {
                return result;
              }

              v18 = *(this + 1);
              v9 = *(this + 2);
              *(a1 + 60) |= 2u;
              if (v18 < v9)
              {
                goto LABEL_41;
              }
            }
          }
        }
      }

      if (v8 != 2 || (TagFallback & 7) != 0)
      {
        break;
      }

      v11 = *(this + 1);
      v9 = *(this + 2);
      if (v11 >= v9)
      {
        goto LABEL_39;
      }

LABEL_36:
      v17 = *v11;
      if (v17 < 0)
      {
        goto LABEL_39;
      }

      *(a1 + 24) = v17;
      v18 = v11 + 1;
      *(this + 1) = v18;
      *(a1 + 60) |= 2u;
      if (v18 < v9)
      {
LABEL_41:
        if (*v18 == 24)
        {
          v12 = v18 + 1;
          *(this + 1) = v12;
          if (v12 < v9)
          {
            goto LABEL_43;
          }

LABEL_46:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
          if (!result)
          {
            return result;
          }

          v20 = *(this + 1);
          v9 = *(this + 2);
          *(a1 + 60) |= 4u;
          if (v20 < v9)
          {
            goto LABEL_48;
          }
        }
      }
    }

LABEL_25:
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

uint64_t sub_100168384(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 60);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 16), a2, a4);
    v6 = *(v5 + 60);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 60);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 32), a2, a4);
  v6 = *(v5 + 60);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 40), a2, a4);
  if ((*(v5 + 60) & 0x10) == 0)
  {
LABEL_6:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 48), a2, a4);
  v10 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_13:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100168474(wireless_diagnostics::google::protobuf::internal::WireFormat *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v4 = *(this + 15);
  if (v4)
  {
    v8 = *(this + 2);
    *a2 = 8;
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v8, a2 + 1, a3);
    v4 = *(this + 15);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(this + 3);
  *a2 = 16;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v9, a2 + 1, a3);
  v4 = *(this + 15);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v10 = *(this + 4);
  *a2 = 24;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v10, a2 + 1, a3);
  v4 = *(this + 15);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  v11 = *(this + 5);
  *a2 = 32;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v11, a2 + 1, a3);
  if ((*(this + 15) & 0x10) == 0)
  {
LABEL_6:
    v7 = *(this + 1);
    v6 = (this + 8);
    v5 = v7;
    if (!v7)
    {
      return a2;
    }

    goto LABEL_13;
  }

LABEL_12:
  v12 = *(this + 6);
  *a2 = 40;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v12, a2 + 1, a3);
  v13 = *(this + 1);
  v6 = (this + 8);
  v5 = v13;
  if (!v13)
  {
    return a2;
  }

LABEL_13:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v6, a2, a3);
}

uint64_t sub_100168574(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 60);
  if (!v3)
  {
    v4 = 0;
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  if (*(a1 + 60))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
    v3 = *(a1 + 60);
    if ((v3 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v4 = 0;
  if ((*(a1 + 60) & 2) != 0)
  {
LABEL_8:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
    v3 = *(a1 + 60);
  }

LABEL_9:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32), a2) + 1;
    v3 = *(a1 + 60);
    if ((v3 & 8) == 0)
    {
LABEL_11:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_12;
      }

LABEL_16:
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 48), a2) + 1;
      v5 = (a1 + 8);
      v6 = *(a1 + 8);
      if (!v6)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_11;
  }

  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 40), a2) + 1;
  if ((*(a1 + 60) & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_13:
    *(a1 + 56) = v4;
    return v4;
  }

LABEL_17:
  if (*v6 == v6[1])
  {
    goto LABEL_13;
  }

  v8 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v4;
  *(a1 + 56) = v8;
  return v8;
}

uint64_t sub_10016867C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100154A00(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10016875C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100168770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100168784(uint64_t result, uint64_t a2)
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

uint64_t sub_100168818()
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

  return qword_10045D028;
}

void sub_1001688A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001688BC(uint64_t a1, uint64_t a2)
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

  LOBYTE(v4) = *(a2 + 36);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 36))
  {
    v7 = *(a2 + 16);
    *(a1 + 36) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 36);
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

  else if ((*(a2 + 36) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 24);
  *(a1 + 36) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 36);
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
  v9 = *(a2 + 25);
  *(a1 + 36) |= 4u;
  *(a1 + 25) = v9;
  v4 = *(a2 + 36);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v11 = *(a2 + 27);
    *(a1 + 36) |= 0x10u;
    *(a1 + 27) = v11;
    if ((*(a2 + 36) & 0x20) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_10;
  }

LABEL_15:
  v10 = *(a2 + 26);
  *(a1 + 36) |= 8u;
  *(a1 + 26) = v10;
  v4 = *(a2 + 36);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v4 & 0x20) != 0)
  {
LABEL_10:
    v5 = *(a2 + 28);
    *(a1 + 36) |= 0x20u;
    *(a1 + 28) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100168A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100168A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100168A2C(uint64_t a1)
{
  *a1 = off_10043F8D0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100168A80(uint64_t a1)
{
  *a1 = off_10043F8D0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100168B7C(uint64_t a1)
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

uint64_t sub_100168B9C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
              v14 = *(this + 1);
              v10 = *(this + 2);
              v25[0] = 0;
              if (v14 >= v10)
              {
                goto LABEL_52;
              }

              goto LABEL_50;
            }
          }

          else if (v8 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(this + 1);
              v10 = *(this + 2);
              v25[0] = 0;
              if (v17 >= v10)
              {
                goto LABEL_59;
              }

              goto LABEL_57;
            }
          }

          else if (v8 == 6 && v9 == 5)
          {
            v25[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v25) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_64;
          }

          goto LABEL_33;
        }

        if (v8 != 1)
        {
          break;
        }

        if (v9 != 1)
        {
          goto LABEL_33;
        }

        *v25 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v25) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v25;
        *(a1 + 36) |= 1u;
        v12 = *(this + 1);
        v10 = *(this + 2);
        if (v12 < v10 && *v12 == 16)
        {
          v13 = v12 + 1;
          *(this + 1) = v13;
          goto LABEL_29;
        }
      }

      if (v8 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_33;
      }

      v13 = *(this + 1);
      v10 = *(this + 2);
LABEL_29:
      v25[0] = 0;
      if (v13 >= v10 || (v15 = *v13, (v15 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v25);
        if (!result)
        {
          return result;
        }

        v15 = v25[0];
        v16 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        v16 = v13 + 1;
        *(this + 1) = v16;
      }

      *(a1 + 24) = v15 != 0;
      *(a1 + 36) |= 2u;
      if (v16 < v10 && *v16 == 24)
      {
        v11 = v16 + 1;
        *(this + 1) = v11;
        v25[0] = 0;
        if (v11 >= v10)
        {
          goto LABEL_45;
        }

LABEL_43:
        v19 = *v11;
        if ((v19 & 0x80000000) != 0)
        {
LABEL_45:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v25);
          if (!result)
          {
            return result;
          }

          v19 = v25[0];
          v20 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_47;
        }

        v20 = v11 + 1;
        *(this + 1) = v20;
LABEL_47:
        *(a1 + 25) = v19 != 0;
        *(a1 + 36) |= 4u;
        if (v20 < v10 && *v20 == 32)
        {
          v14 = v20 + 1;
          *(this + 1) = v14;
          v25[0] = 0;
          if (v14 >= v10)
          {
            goto LABEL_52;
          }

LABEL_50:
          v21 = *v14;
          if ((v21 & 0x80000000) != 0)
          {
LABEL_52:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v25);
            if (!result)
            {
              return result;
            }

            v21 = v25[0];
            v22 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_54;
          }

          v22 = v14 + 1;
          *(this + 1) = v22;
LABEL_54:
          *(a1 + 26) = v21 != 0;
          *(a1 + 36) |= 8u;
          if (v22 < v10 && *v22 == 40)
          {
            v17 = v22 + 1;
            *(this + 1) = v17;
            v25[0] = 0;
            if (v17 >= v10)
            {
              goto LABEL_59;
            }

LABEL_57:
            v23 = *v17;
            if ((v23 & 0x80000000) != 0)
            {
LABEL_59:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v25);
              if (!result)
              {
                return result;
              }

              v23 = v25[0];
              v24 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_61;
            }

            v24 = v17 + 1;
            *(this + 1) = v24;
LABEL_61:
            *(a1 + 27) = v23 != 0;
            *(a1 + 36) |= 0x10u;
            if (v24 < v10 && *v24 == 53)
            {
              *(this + 1) = v24 + 1;
              v25[0] = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v25) & 1) == 0)
              {
                return 0;
              }

LABEL_64:
              *(a1 + 28) = v25[0];
              *(a1 + 36) |= 0x20u;
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

    if (v8 == 3 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      v25[0] = 0;
      if (v11 >= v10)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

LABEL_33:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_100168F54(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    v6 = *(v5 + 36);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 36);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 25), a2, a4);
  v6 = *(v5 + 36);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 26), a2, a4);
  v6 = *(v5 + 36);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 27), a2, a4);
  if ((*(v5 + 36) & 0x20) == 0)
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 28), a3);
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

uint64_t sub_100169060(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 36);
  if (v3)
  {
    v7 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v7;
    a2 += 9;
    v3 = *(a1 + 36);
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

  v8 = *(a1 + 24);
  *a2 = 16;
  *(a2 + 1) = v8;
  a2 += 2;
  v3 = *(a1 + 36);
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
  v9 = *(a1 + 25);
  *a2 = 24;
  *(a2 + 1) = v9;
  a2 += 2;
  v3 = *(a1 + 36);
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
  v10 = *(a1 + 26);
  *a2 = 32;
  *(a2 + 1) = v10;
  a2 += 2;
  v3 = *(a1 + 36);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v12 = *(a1 + 28);
    *a2 = 53;
    *(a2 + 1) = v12;
    a2 += 5;
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
  v11 = *(a1 + 27);
  *a2 = 40;
  *(a2 + 1) = v11;
  a2 += 2;
  if ((*(a1 + 36) & 0x20) != 0)
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

uint64_t sub_100169198(_DWORD *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[9];
  v4 = ((v3 >> 1) & 2) + (v3 & 2) + ((v3 >> 2) & 2) + ((v3 >> 3) & 2) + (((v3 << 31) >> 31) & 9);
  if ((v3 & 0x20) != 0)
  {
    v4 += 5;
  }

  if (a1[9])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v8 = *(a1 + 1);
  v6 = (a1 + 2);
  v7 = v8;
  if (v8 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  }

  a1[8] = v5;
  return v5;
}

uint64_t sub_10016922C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1001688BC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10016930C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100169320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100169334(uint64_t result, uint64_t a2)
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

uint64_t sub_1001693C8()
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

  return qword_10045D038;
}

void sub_100169458(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_10016946C(void *a1)
{
  *a1 = off_10043F980;
  if (qword_10045E318 != a1)
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

void sub_100169500(void *a1)
{
  *a1 = off_10043F980;
  if (qword_10045E318 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_100169644(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 <= 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 7)
          {
            if (v8 != 6)
            {
              if (v8 == 7 && (TagFallback & 7) == 0)
              {
                v17 = *(this + 1);
                v16 = *(this + 2);
                v50 = 0;
                if (v17 >= v16)
                {
                  goto LABEL_95;
                }

                goto LABEL_93;
              }

              goto LABEL_48;
            }

            if (v9 != 5)
            {
              goto LABEL_48;
            }

            v50 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v50) & 1) == 0)
            {
              return 0;
            }

LABEL_90:
            *(a1 + 28) = v50;
            *(a1 + 44) |= 0x20u;
            v42 = *(this + 1);
            v16 = *(this + 2);
            if (v42 < v16 && *v42 == 56)
            {
              v17 = v42 + 1;
              *(this + 1) = v17;
              v50 = 0;
              if (v17 >= v16)
              {
                goto LABEL_95;
              }

LABEL_93:
              v43 = *v17;
              if ((v43 & 0x80000000) != 0)
              {
LABEL_95:
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
                if (!result)
                {
                  return result;
                }

                v43 = v50;
                v44 = *(this + 1);
                v16 = *(this + 2);
                goto LABEL_97;
              }

              v44 = v17 + 1;
              *(this + 1) = v44;
LABEL_97:
              *(a1 + 32) = v43 != 0;
              *(a1 + 44) |= 0x40u;
              if (v44 < v16 && *v44 == 64)
              {
                v22 = v44 + 1;
                *(this + 1) = v22;
                v50 = 0;
                if (v22 >= v16)
                {
                  goto LABEL_102;
                }

LABEL_100:
                v45 = *v22;
                if ((v45 & 0x80000000) != 0)
                {
LABEL_102:
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
                  if (!result)
                  {
                    return result;
                  }

                  v45 = v50;
                  v46 = *(this + 1);
                  v16 = *(this + 2);
                  goto LABEL_104;
                }

                v46 = v22 + 1;
                *(this + 1) = v46;
LABEL_104:
                *(a1 + 33) = v45 != 0;
                *(a1 + 44) |= 0x80u;
                if (v46 < v16 && *v46 == 77)
                {
                  *(this + 1) = v46 + 1;
                  goto LABEL_107;
                }
              }
            }
          }

          else
          {
            if (v8 == 8)
            {
              if ((TagFallback & 7) == 0)
              {
                v22 = *(this + 1);
                v16 = *(this + 2);
                v50 = 0;
                if (v22 >= v16)
                {
                  goto LABEL_102;
                }

                goto LABEL_100;
              }

              goto LABEL_48;
            }

            if (v8 != 9)
            {
              if (v8 == 10 && (TagFallback & 7) == 0)
              {
                v13 = *(this + 1);
                v12 = *(this + 2);
                v50 = 0;
                if (v13 >= v12)
                {
                  goto LABEL_113;
                }

                goto LABEL_111;
              }

              goto LABEL_48;
            }

            if (v9 != 5)
            {
              goto LABEL_48;
            }

LABEL_107:
            v50 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v50) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 36) = v50;
            *(a1 + 44) |= 0x100u;
            v47 = *(this + 1);
            v12 = *(this + 2);
            if (v47 < v12 && *v47 == 80)
            {
              v13 = v47 + 1;
              *(this + 1) = v13;
              v50 = 0;
              if (v13 >= v12)
              {
                goto LABEL_113;
              }

LABEL_111:
              v48 = *v13;
              if ((v48 & 0x80000000) != 0)
              {
LABEL_113:
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
                if (!result)
                {
                  return result;
                }

                v48 = v50;
                v49 = *(this + 1);
                v12 = *(this + 2);
                goto LABEL_115;
              }

              v49 = v13 + 1;
              *(this + 1) = v49;
LABEL_115:
              *(a1 + 34) = v48 != 0;
              *(a1 + 44) |= 0x200u;
              if (v49 == v12 && (*(this + 11) || *(this + 6) == *(this + 10)))
              {
                *(this + 8) = 0;
                result = 1;
                *(this + 36) = 1;
                return result;
              }
            }
          }
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_48;
          }

          v50 = 0;
          v18 = *(this + 1);
          v14 = *(this + 2);
          if (v18 >= v14 || (v19 = *v18, (v19 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
            if (!result)
            {
              return result;
            }

            v19 = v50;
            v20 = *(this + 1);
            v14 = *(this + 2);
          }

          else
          {
            v20 = v18 + 1;
            *(this + 1) = v20;
          }

          *(a1 + 24) = v19 != 0;
          *(a1 + 44) |= 1u;
          if (v20 < v14 && *v20 == 16)
          {
            v15 = v20 + 1;
            *(this + 1) = v15;
            v50 = 0;
            if (v15 >= v14)
            {
              goto LABEL_58;
            }

            goto LABEL_56;
          }
        }

        else
        {
          if (v8 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_48;
          }

          v15 = *(this + 1);
          v14 = *(this + 2);
          v50 = 0;
          if (v15 >= v14)
          {
LABEL_58:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
            if (!result)
            {
              return result;
            }

            v25 = v50;
            v26 = *(this + 1);
            v14 = *(this + 2);
            goto LABEL_60;
          }

LABEL_56:
          v25 = *v15;
          if ((v25 & 0x80000000) != 0)
          {
            goto LABEL_58;
          }

          v26 = v15 + 1;
          *(this + 1) = v26;
LABEL_60:
          *(a1 + 25) = v25 != 0;
          v27 = *(a1 + 44) | 2;
          *(a1 + 44) = v27;
          if (v26 < v14 && *v26 == 26)
          {
            *(this + 1) = v26 + 1;
            *(a1 + 44) = v27 | 4;
            v21 = *(a1 + 16);
            if (!v21)
            {
LABEL_63:
              operator new();
            }

            goto LABEL_64;
          }
        }
      }

      if (v8 == 3)
      {
        break;
      }

      if (v8 == 4)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v23 = *(this + 1);
        v10 = *(this + 2);
        v50 = 0;
        if (v23 >= v10)
        {
LABEL_78:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
          if (!result)
          {
            return result;
          }

          v38 = v50;
          v39 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_80;
        }

LABEL_76:
        v38 = *v23;
        if ((v38 & 0x80000000) != 0)
        {
          goto LABEL_78;
        }

        v39 = v23 + 1;
        *(this + 1) = v39;
LABEL_80:
        *(a1 + 26) = v38 != 0;
        *(a1 + 44) |= 8u;
        if (v39 < v10 && *v39 == 40)
        {
          v11 = v39 + 1;
          *(this + 1) = v11;
          v50 = 0;
          if (v11 >= v10)
          {
            goto LABEL_85;
          }

LABEL_83:
          v40 = *v11;
          if ((v40 & 0x80000000) != 0)
          {
LABEL_85:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
            if (!result)
            {
              return result;
            }

            v40 = v50;
            v41 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_87;
          }

          v41 = v11 + 1;
          *(this + 1) = v41;
LABEL_87:
          *(a1 + 27) = v40 != 0;
          *(a1 + 44) |= 0x10u;
          if (v41 < v10 && *v41 == 53)
          {
            *(this + 1) = v41 + 1;
            v50 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v50) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_90;
          }
        }
      }

      else
      {
        if (v8 == 5 && (TagFallback & 7) == 0)
        {
          v11 = *(this + 1);
          v10 = *(this + 2);
          v50 = 0;
          if (v11 >= v10)
          {
            goto LABEL_85;
          }

          goto LABEL_83;
        }

LABEL_48:
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

    if (v9 != 2)
    {
      goto LABEL_48;
    }

    *(a1 + 44) |= 4u;
    v21 = *(a1 + 16);
    if (!v21)
    {
      goto LABEL_63;
    }

LABEL_64:
    v50 = 0;
    v28 = *(this + 1);
    if (v28 >= *(this + 2) || *v28 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50))
      {
        return 0;
      }
    }

    else
    {
      v50 = *v28;
      *(this + 1) = v28 + 1;
    }

    v29 = *(this + 14);
    v30 = *(this + 15);
    *(this + 14) = v29 + 1;
    if (v29 >= v30)
    {
      return 0;
    }

    v31 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v50);
    if (!sub_100168B9C(v21, this, v32, v33) || *(this + 36) != 1)
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

    v37 = *(this + 1);
    v10 = *(this + 2);
    if (v37 < v10 && *v37 == 32)
    {
      v23 = v37 + 1;
      *(this + 1) = v23;
      v50 = 0;
      if (v23 >= v10)
      {
        goto LABEL_78;
      }

      goto LABEL_76;
    }
  }
}

uint64_t sub_100169D20(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

LABEL_15:
      v10 = *(v5 + 16);
      if (v10)
      {
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v10, a2, a4);
        v6 = *(v5 + 44);
        if ((v6 & 8) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(qword_10045E318 + 16), a2, a4);
        v6 = *(v5 + 44);
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

      goto LABEL_20;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 25), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 4) != 0)
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 26), a2, a4);
  v6 = *(v5 + 44);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 27), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 28), a3);
  v6 = *(v5 + 44);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 32), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 33), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, a2, *(v5 + 36), a3);
  if ((*(v5 + 44) & 0x200) == 0)
  {
LABEL_11:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, *(v5 + 34), a2, a4);
  v11 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v11;
  if (!v11)
  {
    return result;
  }

LABEL_26:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

uint64_t sub_100169EC4(uint64_t a1, _BYTE *a2, unsigned __int8 *a3)
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

      goto LABEL_15;
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

    goto LABEL_21;
  }

LABEL_15:
  v9 = *(a1 + 16);
  if (!v9)
  {
    v9 = *(qword_10045E318 + 16);
  }

  v10 = a1;
  *a2 = 26;
  v11 = *(v9 + 32);
  if (v11 > 0x7F)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, a2 + 1, a3);
  }

  else
  {
    a2[1] = v11;
    v12 = (a2 + 2);
  }

  a2 = sub_100169060(v9, v12, a3);
  a1 = v10;
  v3 = *(v10 + 44);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = *(a1 + 26);
  *a2 = 32;
  a2[1] = v13;
  a2 += 2;
  v3 = *(a1 + 44);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v14 = *(a1 + 27);
  *a2 = 40;
  a2[1] = v14;
  a2 += 2;
  v3 = *(a1 + 44);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v15 = *(a1 + 28);
  *a2 = 53;
  *(a2 + 1) = v15;
  a2 += 5;
  v3 = *(a1 + 44);
  if ((v3 & 0x40) == 0)
  {
LABEL_8:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v16 = *(a1 + 32);
  *a2 = 56;
  a2[1] = v16;
  a2 += 2;
  v3 = *(a1 + 44);
  if ((v3 & 0x80) == 0)
  {
LABEL_9:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v17 = *(a1 + 33);
  *a2 = 64;
  a2[1] = v17;
  a2 += 2;
  v3 = *(a1 + 44);
  if ((v3 & 0x100) == 0)
  {
LABEL_10:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v18 = *(a1 + 36);
  *a2 = 77;
  *(a2 + 1) = v18;
  a2 += 5;
  if ((*(a1 + 44) & 0x200) == 0)
  {
LABEL_11:
    v6 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v6;
    if (!v6)
    {
      return a2;
    }

    goto LABEL_28;
  }

LABEL_27:
  v19 = *(a1 + 34);
  *a2 = 80;
  a2[1] = v19;
  a2 += 2;
  v20 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v20;
  if (!v20)
  {
    return a2;
  }

LABEL_28:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
}

uint64_t sub_10016A0D0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 44);
  if (v3)
  {
    v4 = 2 * (v3 & 1) + (v3 & 2);
    if ((v3 & 4) != 0)
    {
      v5 = *(a1 + 16);
      if (!v5)
      {
        v5 = *(qword_10045E318 + 16);
      }

      v6 = v5[9];
      v7 = ((v6 >> 1) & 2) + (v6 & 2) + ((v6 >> 2) & 2) + ((v6 >> 3) & 2) + (((v6 << 31) >> 31) & 9);
      if ((v6 & 0x20) != 0)
      {
        v7 += 5;
      }

      if (v5[9])
      {
        LODWORD(v8) = v7;
      }

      else
      {
        LODWORD(v8) = 0;
      }

      v9 = *(v5 + 1);
      if (!v9 || *v9 == v9[1])
      {
        v5[8] = v8;
        v10 = 1;
      }

      else
      {
        v8 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v5 + 2), a2) + v8);
        v5[8] = v8;
        if (v8 >= 0x80)
        {
          v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
        }

        else
        {
          v10 = 1;
        }
      }

      v4 += v8 + v10 + 1;
      v3 = *(a1 + 44);
    }

    v12 = ((v3 >> 2) & 2) + v4 + ((v3 >> 3) & 2);
    if ((v3 & 0x20) != 0)
    {
      v12 += 5;
    }

    v11 = ((v3 >> 6) & 2) + ((v3 >> 5) & 2) + v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = v11 + 5;
  if ((v3 & 0x100) == 0)
  {
    v13 = v11;
  }

  v14 = v13 + ((v3 >> 8) & 2);
  if ((v3 & 0xFF00) != 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = v11;
  }

  v16 = *(a1 + 8);
  if (v16 && *v16 != v16[1])
  {
    v15 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v15;
  }

  *(a1 + 40) = v15;
  return v15;
}

uint64_t sub_10016A25C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100154B50(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10016A33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10016A350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10016A364(uint64_t result, uint64_t a2)
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

uint64_t sub_10016A3F8()
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

  return qword_10045D048;
}

void sub_10016A488(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_10016A878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_1000D1490(v9);

  _Unwind_Resume(a1);
}

void sub_10016AEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_1000275F4(&a10, a11);

  _Unwind_Resume(a1);
}

void sub_10016B02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::exception a14)
{
  std::exception::~exception(&a14);

  _Unwind_Resume(a1);
}

void *sub_10016B0E4(void *result, void *a2)
{
  result[1] = 0;
  v2 = result + 1;
  result[2] = 0;
  *result = result + 1;
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 != a2 + 1)
  {
    v5 = result;
    do
    {
      result = sub_10016CD98(v5, v2, &v10, &v9, v4 + 4);
      if (!*result)
      {
        operator new();
      }

      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v3);
  }

  return result;
}

void sub_10016B23C(void *a1, void *a2)
{
  if (a1 != a2)
  {
    sub_10016CF48(a1, *a2, a2 + 1);
  }
}

void sub_10016B3C8(uint64_t a1, int8x16_t *a2)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_10016B434(exception, a1, a2);
}

int8x16_t sub_10016B434(uint64_t a1, uint64_t a2, int8x16_t *a3)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = &off_10043FE50;
  *(a1 + 8) = off_10043FE80;
  *(a1 + 16) = off_10043FEA8;
  *(a1 + 48) = a3[1].i32[0];
  result = vextq_s8(*a3, *a3, 8uLL);
  *(a1 + 32) = result;
  return result;
}

std::exception *sub_10016B4B0(std::exception *a1)
{
  a1[2].__vftable = &off_100431E10;
  v2 = a1[3].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[3].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);
  return a1;
}

void sub_10016B6D4(__n128 *a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_10016BA88(exception, a1);
}

void sub_10016B730(std::exception *a1)
{
  a1[2].__vftable = &off_100431E10;
  v2 = a1[3].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[3].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);

  operator delete();
}

void sub_10016B7D4(std::exception *a1)
{
  a1[1].__vftable = &off_100431E10;
  v1 = a1[2].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[2].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[2].__vftable = 0;
    }
  }

  std::exception::~exception(a1);
}

void sub_10016B868(std::exception *a1)
{
  a1[1].__vftable = &off_100431E10;
  v1 = a1[2].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[2].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[2].__vftable = 0;
    }
  }

  std::exception::~exception(a1);

  operator delete();
}

void sub_10016B924(std::exception *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 1);
}

void sub_10016B9AC(std::exception *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 1);

  operator delete();
}

void sub_10016BA50(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

__n128 sub_10016BA88(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = &off_100431F30;
  a1->n128_u64[1] = &off_10043FEC8;
  v3 = a2[1].n128_u64[1];
  a1[1].n128_u64[0] = &off_100431E10;
  a1[1].n128_u64[1] = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = a2[2];
  a1[3].n128_u32[0] = a2[3].n128_u32[0];
  a1[2] = result;
  a1->n128_u64[0] = &off_10043FE50;
  a1->n128_u64[1] = off_10043FE80;
  a1[1].n128_u64[0] = off_10043FEA8;
  return result;
}

double sub_10016BBBC(double *a1, double **a2)
{
  v3 = *a2;
  v4 = a2[1];
  if ((v4 - *a2) < 0x40)
  {
    return sub_10016C010(a1, a2);
  }

  LODWORD(v61) = 0;
  BYTE4(v61) = 0;
  if (v3 + 2 == v4)
  {
    return sub_10016C010(a1, a2);
  }

  v5 = a2;
  do
  {
    if (!sub_10016C110(a1, v3, v3 + 2, &v61))
    {
      break;
    }

    v6 = v3 + 4;
    v3 += 2;
  }

  while (v6 != v4);
  a2 = v5;
  if ((BYTE4(v61) & 1) == 0 && !LODWORD(v61))
  {
    return sub_10016C010(a1, a2);
  }

  v9 = v5[3];
  v10 = v5[4];
  v7 = 0.0;
  if (v9 == v10)
  {
    return v7;
  }

  while (1)
  {
    v11 = v9[1];
    v12 = *v9 + 2;
    if ((v11 - *v9) >= 0x40 && v12 != v11)
    {
      break;
    }

LABEL_13:
    v9 += 3;
    if (v9 == v10)
    {
      return v7;
    }
  }

  v14 = 0;
  do
  {
    v17 = *(v12 - 2);
    v18 = *a1;
    if (v17 == *a1)
    {
      v19 = 1;
      v20 = *v12;
      if (*v12 == v18)
      {
        goto LABEL_29;
      }
    }

    else if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v28 = fabs(v17);
      v29 = fabs(v18);
      v30 = vabdd_f64(v17, v18);
      if (v28 < v29)
      {
        v28 = v29;
      }

      if (v28 < 1.0)
      {
        v28 = 1.0;
      }

      v19 = v30 <= v28 * 2.22044605e-16;
      v20 = *v12;
      if (*v12 == v18)
      {
LABEL_29:
        v21 = 1;
        if (v19)
        {
          goto LABEL_30;
        }

LABEL_60:
        if (v19)
        {
LABEL_61:
          if (v20 <= v18)
          {
            v34 = -1;
          }

          else
          {
            v34 = 1;
          }

          if (v19)
          {
            v35 = v12 - 2;
          }

          else
          {
            v35 = v12;
          }

          v36 = a1[1];
          v37 = v35[1];
          if (v36 == v37)
          {
            goto LABEL_13;
          }

LABEL_74:
          if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v37 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v38 = fabs(v36);
            v39 = fabs(v37);
            v40 = vabdd_f64(v36, v37);
            if (v38 < v39)
            {
              v38 = v39;
            }

            if (v38 < 1.0)
            {
              v38 = 1.0;
            }

            if (v40 <= v38 * 2.22044605e-16)
            {
              goto LABEL_13;
            }
          }

          if (v36 >= v37)
          {
            v15 = v34;
          }

          else
          {
            v15 = -v34;
          }

          goto LABEL_22;
        }

        if (v21)
        {
          if (v17 <= v18)
          {
            v34 = 1;
          }

          else
          {
            v34 = -1;
          }

          v36 = a1[1];
          v37 = v12[1];
          if (v36 == v37)
          {
            goto LABEL_13;
          }

          goto LABEL_74;
        }

        goto LABEL_82;
      }
    }

    else
    {
      v19 = 0;
      v20 = *v12;
      if (*v12 == v18)
      {
        goto LABEL_29;
      }
    }

    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v31 = fabs(v20);
      v32 = fabs(v18);
      v33 = vabdd_f64(v20, v18);
      if (v31 < v32)
      {
        v31 = v32;
      }

      if (v31 < 1.0)
      {
        v31 = 1.0;
      }

      v21 = v33 <= v31 * 2.22044605e-16;
      if (v19 && v21)
      {
LABEL_30:
        v22 = a1[1];
        v23 = *(v12 - 1);
        v24 = v12[1];
        if (v23 <= v22 && v24 >= v22)
        {
          goto LABEL_13;
        }

        if (v23 >= v22 && v24 <= v22)
        {
          goto LABEL_13;
        }

        goto LABEL_26;
      }

      goto LABEL_60;
    }

    if (v19)
    {
      goto LABEL_61;
    }

LABEL_82:
    if (v17 < v18 && v20 > v18)
    {
      v34 = 2;
LABEL_93:
      v61 = 1.0;
      v43 = sub_10016C468(v12 - 2, v12, a1, &v61);
      if (v43 == 0.0)
      {
        goto LABEL_13;
      }

      if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v44 = fabs(v43);
        if (v43 > 0.0)
        {
          v15 = 1;
        }

        else
        {
          v15 = -1;
        }

        if (v44 <= v61 * 2.22044605e-16)
        {
          goto LABEL_13;
        }
      }

      else if (v43 > 0.0)
      {
        v15 = 1;
      }

      else
      {
        v15 = -1;
      }

LABEL_22:
      if (v34 * v15 <= 0)
      {
        v16 = 0;
      }

      else
      {
        v16 = v34;
      }

      v14 += v16;
      goto LABEL_26;
    }

    if (v17 > v18 && v20 < v18)
    {
      v34 = -2;
      goto LABEL_93;
    }

LABEL_26:
    v12 += 2;
  }

  while (v12 != v11);
  if (!v14)
  {
    goto LABEL_13;
  }

  v45 = *v9;
  v46 = v9[1];
  if (v46 != *v9)
  {
    v59 = 0;
    v60 = 0;
    v61 = 0.0;
    sub_10016CB60(a1, v45, v46, &v58, &v61, &v60, &v59);
    v47 = v60[1];
    v48 = *a1;
    v49 = a1[1];
    v50 = *(*&v61 + 8);
    v51 = *v60 - **&v61;
    v52 = v47 - v50;
    v53 = *a1 - **&v61;
    v54 = (v49 - v50) * (v47 - v50) + v53 * v51;
    if (v54 <= 0.0)
    {
      return sqrt(v53 * v53 + 0.0 + (v49 - v50) * (v49 - v50));
    }

    else
    {
      v55 = v52 * v52 + v51 * v51;
      if (v55 <= v54)
      {
        v56 = v49 - v47;
        v57 = v48 - *v60;
      }

      else
      {
        v56 = v49 - (v50 + v52 * (v54 / v55));
        v57 = v48 - (**&v61 + v51 * (v54 / v55));
      }

      return sqrt(v57 * v57 + 0.0 + v56 * v56);
    }
  }

  return v7;
}