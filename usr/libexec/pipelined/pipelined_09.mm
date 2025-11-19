wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100088DF0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 19);
  if ((v6 & 1) == 0)
  {
    goto LABEL_14;
  }

  v7 = *(this + 2);
  *a2 = 10;
  v8 = a2 + 1;
  v9 = *(v7 + 23);
  if ((v9 & 0x8000000000000000) != 0)
  {
    v9 = *(v7 + 8);
    if (v9 <= 0x7F)
    {
      goto LABEL_4;
    }

LABEL_6:
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
    goto LABEL_7;
  }

  if (v9 > 0x7F)
  {
    goto LABEL_6;
  }

LABEL_4:
  *(v4 + 1) = v9;
  v10 = v4 + 2;
LABEL_7:
  v11 = *(v7 + 23);
  if (v11 >= 0)
  {
    v12 = v7;
  }

  else
  {
    v12 = *v7;
  }

  if (v11 >= 0)
  {
    v13 = *(v7 + 23);
  }

  else
  {
    v13 = *(v7 + 8);
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v12, v13, v10, a4);
  v6 = *(this + 19);
LABEL_14:
  if ((v6 & 2) == 0)
  {
    goto LABEL_28;
  }

  v14 = *(this + 3);
  if (v14)
  {
    *v4 = 18;
    v15 = v4 + 1;
    v16 = *(v14 + 32);
    if (v16 <= 0x7F)
    {
      goto LABEL_17;
    }

LABEL_20:
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v15, a3);
    v17 = *(v14 + 36);
    if ((v17 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v14 = *(qword_10045DC90 + 24);
  *v4 = 18;
  v15 = v4 + 1;
  v16 = *(v14 + 32);
  if (v16 > 0x7F)
  {
    goto LABEL_20;
  }

LABEL_17:
  *(v4 + 1) = v16;
  v4 = (v4 + 2);
  v17 = *(v14 + 36);
  if (v17)
  {
LABEL_21:
    v18 = *(v14 + 16);
    *v4 = 9;
    *(v4 + 1) = v18;
    v4 = (v4 + 9);
    v17 = *(v14 + 36);
  }

LABEL_22:
  if ((v17 & 2) != 0)
  {
    v22 = *(v14 + 24);
    *v4 = 17;
    *(v4 + 1) = v22;
    v4 = (v4 + 9);
    v23 = *(v14 + 8);
    v20 = (v14 + 8);
    v19 = v23;
    if (!v23)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v21 = *(v14 + 8);
    v20 = (v14 + 8);
    v19 = v21;
    if (!v21)
    {
      goto LABEL_28;
    }
  }

  if (*v19 != v19[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v20, v4, a3);
  }

LABEL_28:
  if ((*(this + 76) & 4) == 0)
  {
    goto LABEL_42;
  }

  v24 = *(this + 4);
  if (v24)
  {
    *v4 = 26;
    v25 = v4 + 1;
    v26 = *(v24 + 32);
    if (v26 <= 0x7F)
    {
      goto LABEL_31;
    }

LABEL_34:
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, v25, a3);
    v27 = *(v24 + 36);
    if ((v27 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v24 = *(qword_10045DC90 + 32);
  *v4 = 26;
  v25 = v4 + 1;
  v26 = *(v24 + 32);
  if (v26 > 0x7F)
  {
    goto LABEL_34;
  }

LABEL_31:
  *(v4 + 1) = v26;
  v4 = (v4 + 2);
  v27 = *(v24 + 36);
  if (v27)
  {
LABEL_35:
    v28 = *(v24 + 16);
    *v4 = 9;
    *(v4 + 1) = v28;
    v4 = (v4 + 9);
    v27 = *(v24 + 36);
  }

LABEL_36:
  if ((v27 & 2) != 0)
  {
    v32 = *(v24 + 24);
    *v4 = 17;
    *(v4 + 1) = v32;
    v4 = (v4 + 9);
    v33 = *(v24 + 8);
    v30 = (v24 + 8);
    v29 = v33;
    if (!v33)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v31 = *(v24 + 8);
    v30 = (v24 + 8);
    v29 = v31;
    if (!v31)
    {
      goto LABEL_42;
    }
  }

  if (*v29 != v29[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v30, v4, a3);
  }

LABEL_42:
  if ((*(this + 76) & 8) == 0)
  {
    goto LABEL_56;
  }

  v34 = *(this + 5);
  if (v34)
  {
    *v4 = 34;
    v35 = v4 + 1;
    v36 = *(v34 + 32);
    if (v36 <= 0x7F)
    {
      goto LABEL_45;
    }

LABEL_48:
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v36, v35, a3);
    v37 = *(v34 + 36);
    if ((v37 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v34 = *(qword_10045DC90 + 40);
  *v4 = 34;
  v35 = v4 + 1;
  v36 = *(v34 + 32);
  if (v36 > 0x7F)
  {
    goto LABEL_48;
  }

LABEL_45:
  *(v4 + 1) = v36;
  v4 = (v4 + 2);
  v37 = *(v34 + 36);
  if (v37)
  {
LABEL_49:
    v38 = *(v34 + 16);
    *v4 = 9;
    *(v4 + 1) = v38;
    v4 = (v4 + 9);
    v37 = *(v34 + 36);
  }

LABEL_50:
  if ((v37 & 2) != 0)
  {
    v42 = *(v34 + 24);
    *v4 = 17;
    *(v4 + 1) = v42;
    v4 = (v4 + 9);
    v43 = *(v34 + 8);
    v40 = (v34 + 8);
    v39 = v43;
    if (!v43)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v41 = *(v34 + 8);
    v40 = (v34 + 8);
    v39 = v41;
    if (!v41)
    {
      goto LABEL_56;
    }
  }

  if (*v39 != v39[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v40, v4, a3);
  }

LABEL_56:
  if ((*(this + 76) & 0x10) == 0)
  {
    goto LABEL_70;
  }

  v44 = *(this + 6);
  if (v44)
  {
    *v4 = 42;
    v45 = v4 + 1;
    v46 = *(v44 + 32);
    if (v46 <= 0x7F)
    {
      goto LABEL_59;
    }

LABEL_62:
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v46, v45, a3);
    v47 = *(v44 + 36);
    if ((v47 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v44 = *(qword_10045DC90 + 48);
  *v4 = 42;
  v45 = v4 + 1;
  v46 = *(v44 + 32);
  if (v46 > 0x7F)
  {
    goto LABEL_62;
  }

LABEL_59:
  *(v4 + 1) = v46;
  v4 = (v4 + 2);
  v47 = *(v44 + 36);
  if (v47)
  {
LABEL_63:
    v48 = *(v44 + 16);
    *v4 = 9;
    *(v4 + 1) = v48;
    v4 = (v4 + 9);
    v47 = *(v44 + 36);
  }

LABEL_64:
  if ((v47 & 2) != 0)
  {
    v52 = *(v44 + 24);
    *v4 = 17;
    *(v4 + 1) = v52;
    v4 = (v4 + 9);
    v53 = *(v44 + 8);
    v50 = (v44 + 8);
    v49 = v53;
    if (!v53)
    {
      goto LABEL_70;
    }
  }

  else
  {
    v51 = *(v44 + 8);
    v50 = (v44 + 8);
    v49 = v51;
    if (!v51)
    {
      goto LABEL_70;
    }
  }

  if (*v49 != v49[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v50, v4, a3);
  }

LABEL_70:
  if ((*(this + 76) & 0x20) == 0)
  {
    goto LABEL_84;
  }

  v54 = *(this + 7);
  if (v54)
  {
    *v4 = 50;
    v55 = v4 + 1;
    v56 = *(v54 + 32);
    if (v56 <= 0x7F)
    {
      goto LABEL_73;
    }

LABEL_76:
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v56, v55, a3);
    v57 = *(v54 + 36);
    if ((v57 & 1) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  v54 = *(qword_10045DC90 + 56);
  *v4 = 50;
  v55 = v4 + 1;
  v56 = *(v54 + 32);
  if (v56 > 0x7F)
  {
    goto LABEL_76;
  }

LABEL_73:
  *(v4 + 1) = v56;
  v4 = (v4 + 2);
  v57 = *(v54 + 36);
  if (v57)
  {
LABEL_77:
    v58 = *(v54 + 16);
    *v4 = 9;
    *(v4 + 1) = v58;
    v4 = (v4 + 9);
    v57 = *(v54 + 36);
  }

LABEL_78:
  if ((v57 & 2) != 0)
  {
    v62 = *(v54 + 24);
    *v4 = 17;
    *(v4 + 1) = v62;
    v4 = (v4 + 9);
    v63 = *(v54 + 8);
    v60 = (v54 + 8);
    v59 = v63;
    if (!v63)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v61 = *(v54 + 8);
    v60 = (v54 + 8);
    v59 = v61;
    if (!v61)
    {
      goto LABEL_84;
    }
  }

  if (*v59 != v59[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v60, v4, a3);
  }

LABEL_84:
  if ((*(this + 76) & 0x40) == 0)
  {
    goto LABEL_98;
  }

  v64 = *(this + 8);
  if (v64)
  {
    *v4 = 58;
    v65 = v4 + 1;
    v66 = *(v64 + 32);
    if (v66 <= 0x7F)
    {
      goto LABEL_87;
    }
  }

  else
  {
    v64 = *(qword_10045DC90 + 64);
    *v4 = 58;
    v65 = v4 + 1;
    v66 = *(v64 + 32);
    if (v66 <= 0x7F)
    {
LABEL_87:
      *(v4 + 1) = v66;
      v4 = (v4 + 2);
      v67 = *(v64 + 36);
      if ((v67 & 1) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_91;
    }
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v66, v65, a3);
  v67 = *(v64 + 36);
  if (v67)
  {
LABEL_91:
    v68 = *(v64 + 16);
    *v4 = 9;
    *(v4 + 1) = v68;
    v4 = (v4 + 9);
    v67 = *(v64 + 36);
  }

LABEL_92:
  if ((v67 & 2) != 0)
  {
    v72 = *(v64 + 24);
    *v4 = 17;
    *(v4 + 1) = v72;
    v4 = (v4 + 9);
    v73 = *(v64 + 8);
    v70 = (v64 + 8);
    v69 = v73;
    if (!v73)
    {
      goto LABEL_98;
    }
  }

  else
  {
    v71 = *(v64 + 8);
    v70 = (v64 + 8);
    v69 = v71;
    if (!v71)
    {
      goto LABEL_98;
    }
  }

  if (*v69 != v69[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v70, v4, a3);
  }

LABEL_98:
  v76 = *(this + 1);
  v75 = (this + 8);
  v74 = v76;
  if (!v76 || *v74 == v74[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v75, v4, a3);
}

uint64_t sub_10008963C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 76);
  if (!v3)
  {
    v4 = 0;
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_38;
    }

    goto LABEL_113;
  }

  if ((*(a1 + 76) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 76) & 2) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_18;
  }

  v7 = *(a1 + 16);
  v8 = *(v7 + 23);
  if ((v8 & 0x80u) == 0)
  {
    v9 = *(v7 + 23);
  }

  else
  {
    v9 = *(v7 + 8);
  }

  if (v9 < 0x80)
  {
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v7 + 8);
    }

    v4 = (v8 + 2);
    if ((v3 & 2) == 0)
    {
      goto LABEL_32;
    }

LABEL_18:
    v12 = *(a1 + 24);
    if (!v12)
    {
      v12 = *(qword_10045DC90 + 24);
    }

    v13 = *(v12 + 36);
    v14 = (v13 << 31 >> 31) & 9;
    if ((v13 & 2) != 0)
    {
      v14 += 9;
    }

    if (*(v12 + 36))
    {
      LODWORD(v15) = v14;
    }

    else
    {
      LODWORD(v15) = 0;
    }

    v16 = *(v12 + 8);
    if (!v16 || *v16 == v16[1])
    {
      *(v12 + 32) = v15;
      v17 = 1;
    }

    else
    {
      v15 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v12 + 8), a2) + v15);
      *(v12 + 32) = v15;
      if (v15 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
      }

      else
      {
        v17 = 1;
      }
    }

    v4 = (v4 + v15 + v17 + 1);
    v3 = *(a1 + 76);
    goto LABEL_32;
  }

  v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
  v11 = *(v7 + 23);
  v3 = *(a1 + 76);
  if (*(v7 + 23) < 0)
  {
    v11 = *(v7 + 8);
  }

  v4 = (v10 + 1 + v11);
  if ((v3 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_32:
  if ((v3 & 4) != 0)
  {
    v19 = *(a1 + 32);
    if (!v19)
    {
      v19 = *(qword_10045DC90 + 32);
    }

    v20 = *(v19 + 36);
    v21 = (v20 << 31 >> 31) & 9;
    if ((v20 & 2) != 0)
    {
      v21 += 9;
    }

    if (*(v19 + 36))
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = *(v19 + 8);
    if (!v23 || *v23 == v23[1])
    {
      *(v19 + 32) = v22;
      v4 = (v4 + v22 + 2);
      v3 = *(a1 + 76);
      if ((v3 & 8) != 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v24 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v19 + 8), a2) + v22);
      *(v19 + 32) = v24;
      if (v24 >= 0x80)
      {
        v4 = v4 + v24 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 1;
        v3 = *(a1 + 76);
        if ((v3 & 8) != 0)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v4 = (v4 + v24 + 2);
        v3 = *(a1 + 76);
        if ((v3 & 8) != 0)
        {
          goto LABEL_54;
        }
      }
    }

LABEL_34:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_35;
    }

LABEL_69:
    v31 = *(a1 + 48);
    if (!v31)
    {
      v31 = *(qword_10045DC90 + 48);
    }

    v32 = *(v31 + 36);
    v33 = (v32 << 31 >> 31) & 9;
    if ((v32 & 2) != 0)
    {
      v33 += 9;
    }

    if (*(v31 + 36))
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v35 = *(v31 + 8);
    if (!v35 || *v35 == v35[1])
    {
      *(v31 + 32) = v34;
      v4 = (v4 + v34 + 2);
      v3 = *(a1 + 76);
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v36 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v31 + 8), a2) + v34);
      *(v31 + 32) = v36;
      if (v36 >= 0x80)
      {
        v4 = v4 + v36 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36, a2) + 1;
        v3 = *(a1 + 76);
        if ((v3 & 0x20) != 0)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v4 = (v4 + v36 + 2);
        v3 = *(a1 + 76);
        if ((v3 & 0x20) != 0)
        {
          goto LABEL_84;
        }
      }
    }

LABEL_36:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_37;
    }

LABEL_99:
    v43 = *(a1 + 64);
    if (!v43)
    {
      v43 = *(qword_10045DC90 + 64);
    }

    v44 = *(v43 + 36);
    v45 = (v44 << 31 >> 31) & 9;
    if ((v44 & 2) != 0)
    {
      v45 += 9;
    }

    if (*(v43 + 36))
    {
      LODWORD(v46) = v45;
    }

    else
    {
      LODWORD(v46) = 0;
    }

    v47 = *(v43 + 8);
    if (!v47 || *v47 == v47[1])
    {
      *(v43 + 32) = v46;
      v48 = 1;
    }

    else
    {
      v46 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v43 + 8), a2) + v46);
      *(v43 + 32) = v46;
      if (v46 >= 0x80)
      {
        v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46, a2);
      }

      else
      {
        v48 = 1;
      }
    }

    v4 = (v4 + v46 + v48 + 1);
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_38;
    }

    goto LABEL_113;
  }

  if ((v3 & 8) == 0)
  {
    goto LABEL_34;
  }

LABEL_54:
  v25 = *(a1 + 40);
  if (!v25)
  {
    v25 = *(qword_10045DC90 + 40);
  }

  v26 = *(v25 + 36);
  v27 = (v26 << 31 >> 31) & 9;
  if ((v26 & 2) != 0)
  {
    v27 += 9;
  }

  if (*(v25 + 36))
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = *(v25 + 8);
  if (!v29 || *v29 == v29[1])
  {
    *(v25 + 32) = v28;
    v4 = (v4 + v28 + 2);
    v3 = *(a1 + 76);
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v30 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v25 + 8), a2) + v28);
    *(v25 + 32) = v30;
    if (v30 >= 0x80)
    {
      v4 = v4 + v30 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2) + 1;
      v3 = *(a1 + 76);
      if ((v3 & 0x10) != 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v4 = (v4 + v30 + 2);
      v3 = *(a1 + 76);
      if ((v3 & 0x10) != 0)
      {
        goto LABEL_69;
      }
    }
  }

LABEL_35:
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_36;
  }

LABEL_84:
  v37 = *(a1 + 56);
  if (!v37)
  {
    v37 = *(qword_10045DC90 + 56);
  }

  v38 = *(v37 + 36);
  v39 = (v38 << 31 >> 31) & 9;
  if ((v38 & 2) != 0)
  {
    v39 += 9;
  }

  if (*(v37 + 36))
  {
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  v41 = *(v37 + 8);
  if (!v41 || *v41 == v41[1])
  {
    *(v37 + 32) = v40;
    v4 = (v4 + v40 + 2);
    if ((*(a1 + 76) & 0x40) != 0)
    {
      goto LABEL_99;
    }
  }

  else
  {
    v42 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v37 + 8), a2) + v40);
    *(v37 + 32) = v42;
    if (v42 >= 0x80)
    {
      v4 = v4 + v42 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42, a2) + 1;
      if ((*(a1 + 76) & 0x40) != 0)
      {
        goto LABEL_99;
      }
    }

    else
    {
      v4 = (v4 + v42 + 2);
      if ((*(a1 + 76) & 0x40) != 0)
      {
        goto LABEL_99;
      }
    }
  }

LABEL_37:
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_38:
    *(a1 + 72) = v4;
    return v4;
  }

LABEL_113:
  if (*v6 == v6[1])
  {
    goto LABEL_38;
  }

  v49 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v4;
  *(a1 + 72) = v49;
  return v49;
}

uint64_t sub_100089B64(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000879F8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100089C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100089C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100089C6C(uint64_t result, uint64_t a2)
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

uint64_t sub_100089D00()
{
  v0 = qword_10045CA70;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100085E0C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CA50;
}

void sub_100089D90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100089DA4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 32), *(a2 + 40) + *(a1 + 40));
  if (*(a2 + 40) >= 1)
  {
    v4 = 0;
    do
    {
      v6 = *(*(a2 + 32) + 8 * v4);
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

      v5 = *(a1 + 32);
      *(a1 + 40) = v8 + 1;
      sub_1000879F8(*(v5 + 8 * v8), v6);
      ++v4;
    }

    while (v4 < *(a2 + 40));
  }

  LOBYTE(v9) = *(a2 + 60);
  if (v9)
  {
    if (*(a2 + 60))
    {
      *(a1 + 60) |= 1u;
      v10 = *(a1 + 16);
      if (!v10)
      {
        operator new();
      }

      v11 = *(a2 + 16);
      if (!v11)
      {
        v11 = *(qword_10045DC98 + 16);
      }

      sub_10008678C(v10, v11);
      v9 = *(a2 + 60);
    }

    if ((v9 & 2) != 0)
    {
      v12 = *(a2 + 24);
      *(a1 + 60) |= 2u;
      v13 = *(a1 + 24);
      if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v13, v12);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10008A060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10008A074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10008A0A4(uint64_t a1)
{
  *a1 = off_100436E68;
  v2 = *(a1 + 24);
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (qword_10045DC98 != a1)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  v5 = *(a1 + 44);
  if (v5 >= 1)
  {
    for (i = 0; i < v5; ++i)
    {
      v7 = *(*(a1 + 32) + 8 * i);
      if (v7)
      {
        (*(*v7 + 8))(v7);
        v5 = *(a1 + 44);
      }
    }
  }

  if (*(a1 + 32))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10008A1F0(uint64_t a1)
{
  sub_10008A0A4(a1);

  operator delete();
}

uint64_t sub_10008A230(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_10045DC98;
  if (!qword_10045DC98)
  {
    sub_100086130(0, a2, a3, a4);
    return qword_10045DC98;
  }

  return result;
}

uint64_t sub_10008A310(uint64_t this)
{
  v1 = this;
  if (*(this + 60))
  {
    if (*(this + 60))
    {
      this = *(this + 16);
      if (this)
      {
        if (*(this + 52))
        {
          *(this + 16) = 0u;
          *(this + 32) = 0u;
        }

        v2 = *(this + 8);
        this += 8;
        *(this + 44) = 0;
        if (v2)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 60) & 2) != 0)
    {
      v3 = *(v1 + 24);
      if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
          if (*(v1 + 40) < 1)
          {
            goto LABEL_15;
          }

          goto LABEL_13;
        }

        *v3 = 0;
        *(v3 + 23) = 0;
      }
    }
  }

  if (*(v1 + 40) < 1)
  {
    goto LABEL_15;
  }

LABEL_13:
  v4 = 0;
  do
  {
    v5 = *(*(v1 + 32) + 8 * v4);
    this = (*(*v5 + 32))(v5);
    ++v4;
  }

  while (v4 < *(v1 + 40));
LABEL_15:
  v7 = *(v1 + 8);
  v6 = (v1 + 8);
  *(v6 + 8) = 0;
  *(v6 + 13) = 0;
  if (v7)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v6);
  }

  return this;
}

uint64_t sub_10008A428(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if (TagFallback >> 3 == 3)
      {
        break;
      }

      if (v8 == 2)
      {
        if (v9 != 2)
        {
          goto LABEL_23;
        }

        *(a1 + 60) |= 2u;
        if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          goto LABEL_17;
        }

LABEL_18:
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v13 = *(this + 1);
        if (v13 < *(this + 2) && *v13 == 26)
        {
          do
          {
            *(this + 1) = v13 + 1;
LABEL_36:
            v23 = *(a1 + 44);
            v24 = *(a1 + 40);
            if (v24 >= v23)
            {
              if (v23 == *(a1 + 48))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 32), v23 + 1);
                v23 = *(a1 + 44);
              }

              *(a1 + 44) = v23 + 1;
              operator new();
            }

            v25 = *(a1 + 32);
            *(a1 + 40) = v24 + 1;
            v26 = *(v25 + 8 * v24);
            v37 = 0;
            v27 = *(this + 1);
            if (v27 >= *(this + 2) || *v27 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v37))
              {
                return 0;
              }
            }

            else
            {
              v37 = *v27;
              *(this + 1) = v27 + 1;
            }

            v28 = *(this + 14);
            v29 = *(this + 15);
            *(this + 14) = v28 + 1;
            if (v28 >= v29)
            {
              return 0;
            }

            v30 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v37);
            if (!sub_1000882F8(v26, this, v31, v32) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v30);
            v33 = *(this + 14);
            v20 = __OFSUB__(v33, 1);
            v34 = v33 - 1;
            if (v34 < 0 == v20)
            {
              *(this + 14) = v34;
            }

            v13 = *(this + 1);
            v35 = *(this + 2);
          }

          while (v13 < v35 && *v13 == 26);
          if (v13 == v35 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
        if (v8 != 1 || v9 != 2)
        {
          goto LABEL_23;
        }

        *(a1 + 60) |= 1u;
        v10 = *(a1 + 16);
        if (!v10)
        {
          operator new();
        }

        v36 = 0;
        v11 = *(this + 1);
        if (v11 >= *(this + 2) || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v36))
          {
            return 0;
          }
        }

        else
        {
          v36 = *v11;
          *(this + 1) = v11 + 1;
        }

        v14 = *(this + 14);
        v15 = *(this + 15);
        *(this + 14) = v14 + 1;
        if (v14 >= v15)
        {
          return 0;
        }

        v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v36);
        if (!sub_100086A34(v10, this, v17, v18) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v16);
        v19 = *(this + 14);
        v20 = __OFSUB__(v19, 1);
        v21 = v19 - 1;
        if (v21 < 0 == v20)
        {
          *(this + 14) = v21;
        }

        v22 = *(this + 1);
        if (v22 < *(this + 2) && *v22 == 18)
        {
          *(this + 1) = v22 + 1;
          *(a1 + 60) |= 2u;
          if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
LABEL_17:
            operator new();
          }

          goto LABEL_18;
        }
      }
    }

    if (v9 == 2)
    {
      goto LABEL_36;
    }

LABEL_23:
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

uint64_t sub_10008A884(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 60);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = *(v5 + 24);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if (*(v5 + 40) < 1)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v7 = *(result + 16);
  if (v7)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v7, a2, a4);
    if ((*(v5 + 60) & 2) != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DC98 + 16), a2, a4);
    if ((*(v5 + 60) & 2) != 0)
    {
      goto LABEL_9;
    }
  }

LABEL_3:
  if (*(v5 + 40) < 1)
  {
    goto LABEL_12;
  }

LABEL_10:
  v9 = 0;
  do
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(*(v5 + 32) + 8 * v9++), a2, a4);
  }

  while (v9 < *(v5 + 40));
LABEL_12:
  v12 = *(v5 + 8);
  v11 = (v5 + 8);
  v10 = v12;
  if (v12 && *v10 != v10[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v11, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10008A98C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 15);
  if ((v5 & 1) == 0)
  {
    result = a2;
    if ((v5 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  v7 = *(this + 2);
  if (v7)
  {
    v8 = a2;
    *a2 = 10;
    v9 = a2 + 1;
    v10 = *(v7 + 48);
    if (v10 <= 0x7F)
    {
      goto LABEL_6;
    }

LABEL_9:
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v9, a3);
    result = sub_100086D94(v7, v11, v12);
    if ((*(this + 15) & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  v7 = *(qword_10045DC98 + 16);
  v8 = a2;
  *a2 = 10;
  v9 = a2 + 1;
  v10 = *(v7 + 48);
  if (v10 > 0x7F)
  {
    goto LABEL_9;
  }

LABEL_6:
  *(v8 + 1) = v10;
  result = sub_100086D94(v7, v8 + 2, a3);
  if ((*(this + 15) & 2) == 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  v13 = *(this + 3);
  *result = 18;
  v14 = *(v13 + 23);
  if ((v14 & 0x8000000000000000) != 0)
  {
    v14 = *(v13 + 8);
    if (v14 <= 0x7F)
    {
      goto LABEL_12;
    }

LABEL_14:
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, result + 1, a3);
    goto LABEL_15;
  }

  if (v14 > 0x7F)
  {
    goto LABEL_14;
  }

LABEL_12:
  *(result + 1) = v14;
  v15 = result + 2;
LABEL_15:
  v16 = *(v13 + 23);
  if (v16 >= 0)
  {
    v17 = v13;
  }

  else
  {
    v17 = *v13;
  }

  if (v16 >= 0)
  {
    v18 = *(v13 + 23);
  }

  else
  {
    v18 = *(v13 + 8);
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v17, v18, v15, a4);
LABEL_22:
  if (*(this + 10) >= 1)
  {
    v19 = 0;
    do
    {
      v21 = *(*(this + 4) + 8 * v19);
      *result = 26;
      v22 = *(v21 + 18);
      if (v22 <= 0x7F)
      {
        *(result + 1) = v22;
        v20 = (result + 2);
      }

      else
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(v21 + 18), result + 1, a3);
      }

      result = sub_100088DF0(v21, v20, a3, a4);
      ++v19;
    }

    while (v19 < *(this + 10));
  }

  v25 = *(this + 1);
  v24 = (this + 8);
  v23 = v25;
  if (v25 && *v23 != v23[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v24, result, a3);
  }

  return result;
}

uint64_t sub_10008AB44(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (!*(a1 + 60))
  {
    v3 = 0;
    goto LABEL_34;
  }

  if ((*(a1 + 60) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 60) & 2) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_25;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(v4 + 52);
    if (*(v4 + 52))
    {
      goto LABEL_8;
    }

LABEL_18:
    v7 = 0;
    v8 = (v4 + 8);
    v9 = *(v4 + 8);
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v4 = *(qword_10045DC98 + 16);
  v5 = *(v4 + 52);
  if (!*(v4 + 52))
  {
    goto LABEL_18;
  }

LABEL_8:
  v6 = (v5 << 31 >> 31) & 9;
  if ((v5 & 2) != 0)
  {
    v6 += 9;
  }

  if ((v5 & 4) != 0)
  {
    v7 = (v6 + 9);
  }

  else
  {
    v7 = v6;
  }

  if ((v5 & 8) != 0)
  {
    v7 = (v7 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v4 + 40), a2) + 1);
  }

  v8 = (v4 + 8);
  v9 = *(v4 + 8);
  if (v9)
  {
LABEL_19:
    if (*v9 != v9[1])
    {
      v7 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v8, a2) + v7);
    }
  }

LABEL_21:
  *(v4 + 48) = v7;
  if (v7 >= 0x80)
  {
    v3 = v7 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
    if ((*(a1 + 60) & 2) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v3 = v7 + 2;
    if ((*(a1 + 60) & 2) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_25:
  v10 = *(a1 + 24);
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

  v3 += v15 + v11 + 1;
LABEL_34:
  v16 = *(a1 + 40);
  v17 = (v16 + v3);
  if (v16 >= 1)
  {
    v18 = 0;
    do
    {
      v20 = sub_10008963C(*(*(a1 + 32) + 8 * v18), a2);
      v21 = v20;
      if (v20 < 0x80)
      {
        v19 = 1;
      }

      else
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
      }

      v17 = (v21 + v17 + v19);
      ++v18;
    }

    while (v18 < *(a1 + 40));
  }

  v22 = *(a1 + 8);
  if (v22 && *v22 != v22[1])
  {
    v17 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v17;
  }

  *(a1 + 56) = v17;
  return v17;
}

uint64_t sub_10008AD28(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100089DA4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10008AE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10008AE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008AE30(uint64_t result, uint64_t a2)
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

uint64_t sub_10008AEC4()
{
  v0 = qword_10045CA70;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100085E0C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CA60;
}

void sub_10008AF54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_10008AF8C()
{
  v0 = sub_10008B1D8();
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v0);
  operator new();
}

void sub_10008B178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10008B18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10008B1A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008B1D8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_10045CA78 & 1) == 0)
  {
    byte_10045CA78 = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/common/protobuf/clpsensorsurvey/Proto/NearbyInteractionTypes.pb.cc", a4);
    sub_100056A38(v4, v5, v6, v7);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile(&unk_1003CB4D0, 0x336, v8);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_10008B378()
{
  if (qword_10045DCA0)
  {
    (*(*qword_10045DCA0 + 8))(qword_10045DCA0);
  }

  if (qword_10045CA90)
  {
    (*(*qword_10045CA90 + 8))(qword_10045CA90);
  }

  if (qword_10045DCA8)
  {
    (*(*qword_10045DCA8 + 8))(qword_10045DCA8);
  }

  result = qword_10045CAA0;
  if (qword_10045CAA0)
  {
    v1 = *(*qword_10045CAA0 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_10008B460()
{
  v0 = qword_10045CAB8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v3[1] = sub_10008AF8C;
    v4 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  if (!qword_10045DCA0)
  {
    (sub_10008B1D8)();
  }

  v1 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DCA8)
  {
    sub_10008B1D8(v1);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_10008B544(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008B558(uint64_t a1)
{
  *a1 = off_100437028;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *&v2 = 0;
  *(a1 + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = v2;
  return a1;
}

uint64_t sub_10008B5D8(uint64_t a1)
{
  *a1 = off_100436F78;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_10008B648(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 48))
  {
    v7 = *(a2 + 40);
    *(a1 + 48) |= 1u;
    *(a1 + 40) = v7;
    v4 = *(a2 + 48);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v9 = *(a2 + 24);
      *(a1 + 48) |= 4u;
      *(a1 + 24) = v9;
      if ((*(a2 + 48) & 8) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_8;
    }
  }

  else if ((*(a2 + 48) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 16);
  *(a1 + 48) |= 2u;
  *(a1 + 16) = v8;
  v4 = *(a2 + 48);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v4 & 8) != 0)
  {
LABEL_8:
    v5 = *(a2 + 32);
    *(a1 + 48) |= 8u;
    *(a1 + 32) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10008B750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10008B764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10008B778(uint64_t a1)
{
  *a1 = off_100436F78;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10008B7CC(uint64_t a1)
{
  *a1 = off_100436F78;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10008B8CC(uint64_t a1)
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

uint64_t sub_10008B8F4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        if (v8 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_23;
          }

          v16[0] = 0;
          v10 = *(this + 1);
          if (v10 >= *(this + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v16);
            if (!result)
            {
              return result;
            }

            v11 = v16[0];
            if (v16[0] <= 1)
            {
LABEL_21:
              *(a1 + 48) |= 1u;
              *(a1 + 40) = v11;
              goto LABEL_29;
            }
          }

          else
          {
            *(this + 1) = v10 + 1;
            if (v11 <= 1)
            {
              goto LABEL_21;
            }
          }

          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 1, v11);
LABEL_29:
          v13 = *(this + 1);
          if (v13 < *(this + 2) && *v13 == 17)
          {
            *(this + 1) = v13 + 1;
            *v16 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v16) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_32;
          }
        }

        else
        {
          if (v8 != 2 || v9 != 1)
          {
            goto LABEL_23;
          }

          *v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v16) & 1) == 0)
          {
            return 0;
          }

LABEL_32:
          *(a1 + 16) = *v16;
          *(a1 + 48) |= 2u;
          v14 = *(this + 1);
          if (v14 < *(this + 2) && *v14 == 25)
          {
            *(this + 1) = v14 + 1;
            goto LABEL_35;
          }
        }
      }

      if (v8 != 3)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_23;
      }

LABEL_35:
      *v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v16) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 24) = *v16;
      *(a1 + 48) |= 4u;
      v15 = *(this + 1);
      if (v15 < *(this + 2) && *v15 == 33)
      {
        *(this + 1) = v15 + 1;
        *v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v16) & 1) == 0)
        {
          return 0;
        }

LABEL_39:
        *(a1 + 32) = *v16;
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

    if (v8 == 4 && v9 == 1)
    {
      *v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v16) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_39;
    }

LABEL_23:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_10008BB8C(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 40), a2, a4);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
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

uint64_t sub_10008BC60(uint64_t a1, _BYTE *a2, unsigned __int8 *a3)
{
  if (*(a1 + 48))
  {
    v7 = *(a1 + 40);
    *a2 = 8;
    if ((v7 & 0x80000000) != 0)
    {
      v8 = a1;
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v7, (a2 + 1), a3);
      a1 = v8;
      v3 = *(v8 + 48);
      if ((v3 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

    else if (v7 > 0x7F)
    {
      v9 = a1;
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, a2 + 1, a3);
      a1 = v9;
      v3 = *(v9 + 48);
      if ((v3 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      a2[1] = v7;
      a2 += 2;
      v3 = *(a1 + 48);
      if ((v3 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_3:
    if ((v3 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v3 = *(a1 + 48);
  if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_14:
  v10 = *(a1 + 16);
  *a2 = 17;
  *(a2 + 1) = v10;
  a2 += 9;
  v3 = *(a1 + 48);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v11 = *(a1 + 24);
  *a2 = 25;
  *(a2 + 1) = v11;
  a2 += 9;
  if ((*(a1 + 48) & 8) == 0)
  {
LABEL_5:
    v6 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v6;
    if (!v6)
    {
      return a2;
    }

    goto LABEL_17;
  }

LABEL_16:
  v12 = *(a1 + 32);
  *a2 = 33;
  *(a2 + 1) = v12;
  a2 += 9;
  v13 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v13;
  if (!v13)
  {
    return a2;
  }

LABEL_17:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
}

uint64_t sub_10008BE3C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 48);
  if (v3)
  {
    if (*(a1 + 48))
    {
      v9 = *(a1 + 40);
      if ((v9 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v9 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
        v3 = *(a1 + 48);
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
      goto LABEL_5;
    }
  }

  else
  {
    v5 = 0;
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
LABEL_5:
      *(a1 + 44) = v5;
      return v5;
    }
  }

  if (*v7 == v7[1])
  {
    goto LABEL_5;
  }

  v10 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 44) = v10;
  return v10;
}

uint64_t sub_10008BF0C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10008B648(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10008BFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10008C000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008C014(uint64_t result, uint64_t a2)
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

uint64_t sub_10008C0A8()
{
  v0 = qword_10045CAB8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10008AF8C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CA98;
}

void sub_10008C138(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008C14C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
    v4 = *(a2 + 84);
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v4 = *(a2 + 84);
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  if (v4)
  {
    v8 = *(a2 + 16);
    *(a1 + 84) |= 1u;
    v9 = *(a1 + 16);
    if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v9, v8);
    v4 = *(a2 + 84);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_7;
  }

  v10 = *(a2 + 24);
  *(a1 + 84) |= 2u;
  *(a1 + 24) = v10;
  v4 = *(a2 + 84);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(a2 + 48);
  *(a1 + 84) |= 4u;
  *(a1 + 48) = v11;
  v4 = *(a2 + 84);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_23:
    *(a1 + 84) |= 0x10u;
    v13 = *(a1 + 40);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 40);
    if (v14)
    {
      sub_10008B648(v13, v14);
      v4 = *(a2 + 84);
      if ((v4 & 0x20) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      sub_10008B648(v13, *(qword_10045DCA0 + 40));
      v4 = *(a2 + 84);
      if ((v4 & 0x20) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_11:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_22:
  v12 = *(a2 + 32);
  *(a1 + 84) |= 8u;
  *(a1 + 32) = v12;
  v4 = *(a2 + 84);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_11;
  }

LABEL_29:
  v15 = *(a2 + 56);
  *(a1 + 84) |= 0x20u;
  *(a1 + 56) = v15;
  v4 = *(a2 + 84);
  if ((v4 & 0x40) == 0)
  {
LABEL_12:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_30:
  v16 = *(a2 + 52);
  *(a1 + 84) |= 0x40u;
  *(a1 + 52) = v16;
  v4 = *(a2 + 84);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v5 = *(a2 + 64);
    *(a1 + 84) |= 0x80u;
    *(a1 + 64) = v5;
    v4 = *(a2 + 84);
  }

LABEL_14:
  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 72);
    *(a1 + 84) |= 0x100u;
    *(a1 + 72) = v6;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10008C3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10008C3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008C408(uint64_t a1, uint64_t a2)
{
  *a1 = off_100437028;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *&v4 = 0;
  *(a1 + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = v4;
  sub_10008C14C(a1, a2);
  return a1;
}

void sub_10008C494(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

void sub_10008C4C4(void *a1)
{
  *a1 = off_100437028;
  v2 = a1[2];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (qword_10045DCA0 != a1)
  {
    v4 = a1[5];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10008C598(void *a1)
{
  *a1 = off_100437028;
  v2 = a1[2];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (qword_10045DCA0 != a1)
  {
    v4 = a1[5];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10008C734(uint64_t a1)
{
  v2 = *(a1 + 84);
  if (v2)
  {
    if (v2)
    {
      v3 = *(a1 + 16);
      if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
          *(a1 + 48) = 0;
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
          if ((*(a1 + 84) & 0x10) != 0)
          {
LABEL_7:
            v4 = *(a1 + 40);
            if (v4)
            {
              if (*(v4 + 48))
              {
                *(v4 + 16) = 0;
                *(v4 + 24) = 0;
                *(v4 + 40) = 0;
                *(v4 + 32) = 0;
              }

              v6 = *(v4 + 8);
              v5 = (v4 + 8);
              *(v5 + 10) = 0;
              if (v6)
              {
                v7 = a1;
                wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v5);
                a1 = v7;
              }
            }
          }

LABEL_13:
          *(a1 + 60) = 0;
          *(a1 + 52) = 0;
          *(a1 + 68) = 0;
          v2 = *(a1 + 84);
          goto LABEL_14;
        }

        *v3 = 0;
        *(v3 + 23) = 0;
      }
    }

    *(a1 + 48) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    if ((*(a1 + 84) & 0x10) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_14:
  if ((v2 & 0xFF00) != 0)
  {
    *(a1 + 72) = 0;
  }

  v9 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 19) = 0;
  if (v9)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10008C828(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
            if (v8 != 4 || v9 != 1)
            {
              goto LABEL_50;
            }

            *v40 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v40) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_66;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_50;
          }

          v17 = *(this + 1);
          v16 = *(this + 2);
          v40[0] = 0;
          if (v17 >= v16)
          {
            goto LABEL_60;
          }

          goto LABEL_57;
        }

        if (v8 == 1)
        {
          if (v9 != 2)
          {
            goto LABEL_50;
          }

          *(a1 + 84) |= 1u;
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
          v10 = *(this + 2);
          if (v13 < v10 && *v13 == 16)
          {
            v11 = v13 + 1;
            *(this + 1) = v11;
            if (v11 < v10)
            {
              goto LABEL_37;
            }

LABEL_53:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
            if (!result)
            {
              return result;
            }

            v15 = *(this + 1);
            v10 = *(this + 2);
            *(a1 + 84) |= 2u;
            if (v15 < v10)
            {
              goto LABEL_55;
            }
          }
        }

        else
        {
          if (v8 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_50;
          }

          v11 = *(this + 1);
          v10 = *(this + 2);
          if (v11 >= v10)
          {
            goto LABEL_53;
          }

LABEL_37:
          v14 = *v11;
          if (v14 < 0)
          {
            goto LABEL_53;
          }

          *(a1 + 24) = v14;
          v15 = v11 + 1;
          *(this + 1) = v15;
          *(a1 + 84) |= 2u;
          if (v15 < v10)
          {
LABEL_55:
            if (*v15 == 24)
            {
              v17 = v15 + 1;
              *(this + 1) = v17;
              v40[0] = 0;
              if (v17 >= v10)
              {
                goto LABEL_60;
              }

LABEL_57:
              v21 = *v17;
              if ((v21 & 0x80000000) == 0)
              {
                *(this + 1) = v17 + 1;
                if (v21 <= 2)
                {
                  goto LABEL_59;
                }

                goto LABEL_62;
              }

LABEL_60:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v40);
              if (!result)
              {
                return result;
              }

              v21 = v40[0];
              if (v40[0] <= 2)
              {
LABEL_59:
                *(a1 + 84) |= 4u;
                *(a1 + 48) = v21;
                goto LABEL_63;
              }

LABEL_62:
              wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 3, v21);
LABEL_63:
              v22 = *(this + 1);
              if (v22 < *(this + 2) && *v22 == 33)
              {
                *(this + 1) = v22 + 1;
                *v40 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v40) & 1) == 0)
                {
                  return 0;
                }

LABEL_66:
                *(a1 + 32) = *v40;
                v23 = *(a1 + 84) | 8;
                *(a1 + 84) = v23;
                v24 = *(this + 1);
                if (v24 < *(this + 2) && *v24 == 42)
                {
                  *(this + 1) = v24 + 1;
                  *(a1 + 84) = v23 | 0x10;
                  v20 = *(a1 + 40);
                  if (!v20)
                  {
LABEL_69:
                    operator new();
                  }

                  goto LABEL_70;
                }
              }
            }
          }
        }
      }

      if (TagFallback >> 3 <= 6)
      {
        break;
      }

      if (v8 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v19 = *(this + 1);
        v18 = *(this + 2);
        if (v19 >= v18)
        {
          goto LABEL_88;
        }

LABEL_85:
        v36 = *v19;
        if (v36 < 0)
        {
          goto LABEL_88;
        }

        *(a1 + 52) = v36;
        v37 = v19 + 1;
        *(this + 1) = v37;
        *(a1 + 84) |= 0x40u;
        if (v37 < v18)
        {
LABEL_90:
          if (*v37 == 65)
          {
            *(this + 1) = v37 + 1;
            goto LABEL_92;
          }
        }
      }

      else if (v8 == 8)
      {
        if (v9 != 1)
        {
          goto LABEL_50;
        }

LABEL_92:
        *v40 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v40) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = *v40;
        *(a1 + 84) |= 0x80u;
        v39 = *(this + 1);
        if (v39 < *(this + 2) && *v39 == 73)
        {
          *(this + 1) = v39 + 1;
          *v40 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v40) & 1) == 0)
          {
            return 0;
          }

LABEL_96:
          *(a1 + 72) = *v40;
          *(a1 + 84) |= 0x100u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
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
        if (v8 == 9 && v9 == 1)
        {
          *v40 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v40) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_96;
        }

LABEL_50:
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

    if (v8 != 5)
    {
      if (v8 != 6 || v9 != 1)
      {
        goto LABEL_50;
      }

      *v40 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v40) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_82;
    }

    if (v9 != 2)
    {
      goto LABEL_50;
    }

    *(a1 + 84) |= 0x10u;
    v20 = *(a1 + 40);
    if (!v20)
    {
      goto LABEL_69;
    }

LABEL_70:
    v40[0] = 0;
    v25 = *(this + 1);
    if (v25 >= *(this + 2) || *v25 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v40))
      {
        return 0;
      }
    }

    else
    {
      v40[0] = *v25;
      *(this + 1) = v25 + 1;
    }

    v26 = *(this + 14);
    v27 = *(this + 15);
    *(this + 14) = v26 + 1;
    if (v26 >= v27)
    {
      return 0;
    }

    v28 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v40[0]);
    if (!sub_10008B8F4(v20, this, v29, v30) || *(this + 36) != 1)
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

    v34 = *(this + 1);
    if (v34 < *(this + 2) && *v34 == 49)
    {
      *(this + 1) = v34 + 1;
      *v40 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v40) & 1) == 0)
      {
        return 0;
      }

LABEL_82:
      *(a1 + 56) = *v40;
      *(a1 + 84) |= 0x20u;
      v35 = *(this + 1);
      v18 = *(this + 2);
      if (v35 < v18 && *v35 == 56)
      {
        v19 = v35 + 1;
        *(this + 1) = v19;
        if (v19 < v18)
        {
          goto LABEL_85;
        }

LABEL_88:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 52));
        if (!result)
        {
          return result;
        }

        v37 = *(this + 1);
        v38 = *(this + 2);
        *(a1 + 84) |= 0x40u;
        if (v37 < v38)
        {
          goto LABEL_90;
        }
      }
    }
  }
}

uint64_t sub_10008CE48(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 84);
  if (v6)
  {
    v10 = *(result + 16);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    v6 = *(v5 + 84);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 84);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 48), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_16:
    v11 = *(v5 + 40);
    if (v11)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, v11, a2, a4);
      v6 = *(v5 + 84);
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, *(qword_10045DCA0 + 40), a2, a4);
      v6 = *(v5 + 84);
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 84);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_7;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 56), a3);
  v6 = *(v5 + 84);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 52), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  if ((*(v5 + 84) & 0x100) == 0)
  {
LABEL_10:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
  v12 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v12;
  if (!v12)
  {
    return result;
  }

LABEL_24:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10008CFD0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 21);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_24;
  }

  v12 = *(this + 2);
  *a2 = 10;
  v13 = a2 + 1;
  v14 = *(v12 + 23);
  if ((v14 & 0x8000000000000000) != 0)
  {
    v14 = *(v12 + 8);
    if (v14 <= 0x7F)
    {
      goto LABEL_14;
    }
  }

  else if (v14 <= 0x7F)
  {
LABEL_14:
    *(v4 + 1) = v14;
    v15 = v4 + 2;
    goto LABEL_17;
  }

  v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v13, a3);
LABEL_17:
  v16 = *(v12 + 23);
  if (v16 >= 0)
  {
    v17 = v12;
  }

  else
  {
    v17 = *v12;
  }

  if (v16 >= 0)
  {
    v18 = *(v12 + 23);
  }

  else
  {
    v18 = *(v12 + 8);
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v17, v18, v15, a4);
  v6 = *(this + 21);
  if ((v6 & 2) == 0)
  {
LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

LABEL_25:
    v20 = *(this + 12);
    *v4 = 24;
    v21 = v4 + 1;
    if ((v20 & 0x80000000) != 0)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v20, v21, a3);
      v7 = *(this + 21);
      if ((v7 & 8) != 0)
      {
        goto LABEL_32;
      }
    }

    else if (v20 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v21, a3);
      v7 = *(this + 21);
      if ((v7 & 8) != 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      *(v4 + 1) = v20;
      v4 = (v4 + 2);
      v7 = *(this + 21);
      if ((v7 & 8) != 0)
      {
        goto LABEL_32;
      }
    }

LABEL_5:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_33:
    v23 = *(this + 5);
    if (v23)
    {
      *v4 = 42;
      v24 = v4 + 1;
      v25 = *(v23 + 44);
      if (v25 <= 0x7F)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v23 = *(qword_10045DCA0 + 40);
      *v4 = 42;
      v24 = v4 + 1;
      v25 = *(v23 + 44);
      if (v25 <= 0x7F)
      {
LABEL_35:
        *(v4 + 1) = v25;
        v4 = sub_10008BC60(v23, v4 + 2, a3);
        v7 = *(this + 21);
        if ((v7 & 0x20) != 0)
        {
          goto LABEL_39;
        }

LABEL_7:
        if ((v7 & 0x40) == 0)
        {
          goto LABEL_8;
        }

LABEL_40:
        v29 = *(this + 13);
        *v4 = 56;
        if (v29 > 0x7F)
        {
          v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v29, v4 + 1, a3);
          v8 = *(this + 21);
          if ((v8 & 0x80) != 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          *(v4 + 1) = v29;
          v4 = (v4 + 2);
          v8 = *(this + 21);
          if ((v8 & 0x80) != 0)
          {
            goto LABEL_44;
          }
        }

LABEL_9:
        if ((v8 & 0x100) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_45;
      }
    }

    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v25, v24, a3);
    v4 = sub_10008BC60(v23, v26, v27);
    v7 = *(this + 21);
    if ((v7 & 0x20) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_7;
  }

LABEL_24:
  v19 = *(this + 3);
  *v4 = 16;
  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v19, v4 + 1, a3);
  if ((*(this + 21) & 4) != 0)
  {
    goto LABEL_25;
  }

LABEL_4:
  v7 = *(this + 21);
  if ((v7 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_32:
  v22 = *(this + 4);
  *v4 = 33;
  *(v4 + 1) = v22;
  v4 = (v4 + 9);
  v7 = *(this + 21);
  if ((v7 & 0x10) != 0)
  {
    goto LABEL_33;
  }

LABEL_6:
  if ((v7 & 0x20) == 0)
  {
    goto LABEL_7;
  }

LABEL_39:
  v28 = *(this + 7);
  *v4 = 49;
  *(v4 + 1) = v28;
  v4 = (v4 + 9);
  if ((*(this + 21) & 0x40) != 0)
  {
    goto LABEL_40;
  }

LABEL_8:
  v8 = *(this + 21);
  if ((v8 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_44:
  v30 = *(this + 8);
  *v4 = 65;
  *(v4 + 1) = v30;
  v4 = (v4 + 9);
  if ((*(this + 21) & 0x100) == 0)
  {
LABEL_10:
    v11 = *(this + 1);
    v10 = (this + 8);
    v9 = v11;
    if (!v11)
    {
      return v4;
    }

    goto LABEL_46;
  }

LABEL_45:
  v31 = *(this + 9);
  *v4 = 73;
  *(v4 + 1) = v31;
  v4 = (v4 + 9);
  v32 = *(this + 1);
  v10 = (this + 8);
  v9 = v32;
  if (!v32)
  {
    return v4;
  }

LABEL_46:
  if (*v9 == v9[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v10, v4, a3);
}

uint64_t sub_10008D350(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 84);
  if (v3)
  {
    if ((v3 & 1) == 0)
    {
      v4 = 0;
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }

LABEL_21:
      v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
      v3 = *(a1 + 84);
      goto LABEL_22;
    }

    v9 = *(a1 + 16);
    v10 = *(v9 + 23);
    if ((v10 & 0x80u) == 0)
    {
      v11 = *(v9 + 23);
    }

    else
    {
      v11 = *(v9 + 8);
    }

    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
      v13 = *(v9 + 23);
      v3 = *(a1 + 84);
      if (*(v9 + 23) < 0)
      {
        v13 = *(v9 + 8);
      }

      v4 = v12 + 1 + v13;
      if ((v3 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(v9 + 8);
      }

      v4 = v10 + 2;
      if ((v3 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

LABEL_22:
    if ((v3 & 4) == 0)
    {
      if ((v3 & 8) != 0)
      {
        v14 = v4 + 9;
      }

      else
      {
        v14 = v4;
      }

      if ((v3 & 0x10) == 0)
      {
        goto LABEL_27;
      }

LABEL_48:
      v21 = *(a1 + 40);
      if (v21)
      {
        LOBYTE(v22) = *(v21 + 48);
        if (v22)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v21 = *(qword_10045DCA0 + 40);
        LOBYTE(v22) = *(v21 + 48);
        if (v22)
        {
LABEL_50:
          if (v22)
          {
            v27 = *(v21 + 40);
            if ((v27 & 0x80000000) != 0)
            {
              v23 = 11;
            }

            else if (v27 >= 0x80)
            {
              v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, a2) + 1;
              v22 = *(v21 + 48);
            }

            else
            {
              v23 = 2;
            }
          }

          else
          {
            v23 = 0;
          }

          if ((v22 & 2) != 0)
          {
            v23 += 9;
          }

          if ((v22 & 4) != 0)
          {
            v23 += 9;
          }

          if ((v22 & 8) != 0)
          {
            v24 = (v23 + 9);
          }

          else
          {
            v24 = v23;
          }

          v25 = (v21 + 8);
          v26 = *(v21 + 8);
          if (!v26)
          {
LABEL_70:
            *(v21 + 44) = v24;
            if (v24 >= 0x80)
            {
              v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2);
            }

            else
            {
              v28 = 1;
            }

            v29 = v14 + v24 + v28 + 1;
            v3 = *(a1 + 84);
            if ((v3 & 0x20) != 0)
            {
              v15 = v29 + 9;
            }

            else
            {
              v15 = v29;
            }

            if ((v3 & 0x40) == 0)
            {
LABEL_81:
              v32 = v15 + 9;
              if ((v3 & 0x80) == 0)
              {
                v32 = v15;
              }

              if ((v3 & 0x100) != 0)
              {
                v5 = v32 + 9;
              }

              else
              {
                v5 = v32;
              }

              v6 = (a1 + 8);
              v7 = *(a1 + 8);
              if (!v7)
              {
                goto LABEL_9;
              }

              goto LABEL_87;
            }

LABEL_77:
            v30 = *(a1 + 52);
            if (v30 >= 0x80)
            {
              v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2) + 1;
              v3 = *(a1 + 84);
            }

            else
            {
              v31 = 2;
            }

            v15 += v31;
            goto LABEL_81;
          }

LABEL_68:
          if (*v26 != v26[1])
          {
            v24 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v25, a2) + v24);
          }

          goto LABEL_70;
        }
      }

      v24 = 0;
      v25 = (v21 + 8);
      v26 = *(v21 + 8);
      if (!v26)
      {
        goto LABEL_70;
      }

      goto LABEL_68;
    }

    v16 = *(a1 + 48);
    if ((v16 & 0x80000000) != 0)
    {
      v18 = v4 + 11;
      if ((v3 & 8) != 0)
      {
        v14 = v18 + 9;
      }

      else
      {
        v14 = v18;
      }

      if ((v3 & 0x10) != 0)
      {
        goto LABEL_48;
      }
    }

    else if (v16 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
      v3 = *(a1 + 84);
      v20 = v19 + 1 + v4;
      if ((v3 & 8) != 0)
      {
        v14 = v20 + 9;
      }

      else
      {
        v14 = v20;
      }

      if ((v3 & 0x10) != 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v17 = v4 + 2;
      if ((v3 & 8) != 0)
      {
        v14 = v17 + 9;
      }

      else
      {
        v14 = v17;
      }

      if ((v3 & 0x10) != 0)
      {
        goto LABEL_48;
      }
    }

LABEL_27:
    if ((v3 & 0x20) != 0)
    {
      v15 = v14 + 9;
    }

    else
    {
      v15 = v14;
    }

    if ((v3 & 0x40) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_77;
  }

  if ((v3 & 0x100) != 0)
  {
    v5 = 9;
  }

  else
  {
    v5 = 0;
  }

  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_87:
  if (*v7 == v7[1])
  {
LABEL_9:
    *(a1 + 80) = v5;
    return v5;
  }

  v33 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 80) = v33;
  return v33;
}

uint64_t sub_10008D628(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10008C14C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10008D708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10008D71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008D730(uint64_t result, uint64_t a2)
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

uint64_t sub_10008D7BC(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();

    return sub_10008C14C(v4, a2);
  }

  return result;
}

uint64_t sub_10008D830()
{
  v0 = qword_10045CAB8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10008AF8C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CA88;
}

void sub_10008D8C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_10008D8E8()
{
  v0 = sub_10008DAB0();
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v0);
  operator new();
}

void sub_10008DA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10008DA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10008DA7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008DAB0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_10045CAC0 & 1) == 0)
  {
    byte_10045CAC0 = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/common/protobuf/clpsensorsurvey/Proto/CLPSensorSurveyLogEntry.pb.cc", a4);
    sub_1000AA3EC(v4, v5, v6, v7);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile("\n\x1DCLPSensorSurveyLogEntry.proto\x12\x1Fproto.CLP.LogEntry.SensorSurvey\x1A\x1ACLPSensorSurveyEvent.proto\xCB\x04\n\bLogEntry\x12G\n\bmetadata\x18\x01 \x01(\v25.proto.CLP.LogEntry.SensorSurvey.SensorSurveyMetadata\x12M\n\x11aquaman_device_gt\x18\x02 \x01(\v22.proto.CLP.LogEntry.SensorSurvey.AquamanDevicePose\x129\n\agravity\x18\x03 \x01(\v2(.proto.CLP.LogEntry.SensorSurvey.Gravity\x12;\n\baltitude\x18\x04 \x01(\v2).proto.CLP.LogEntry.SensorSurvey.Altitude\x12F\n\x0Enearby_objects\x18\x05 \x01(\v2..proto.CLP.LogEntry.SensorSurvey.NearbyObjects\x12R\n\x12ranging_source_loc\x18\x06 \x01(\v26.proto.CLP.LogEntry.SensorSurvey.RangingSourceLocation\x12@\n\vtruth_point\x18\a \x01(\v2+.proto.CLP.LogEntry.SensorSurvey.TruthPoint\x12Q\n\x14cl_provider_position\x18\b \x01(\v23.proto.CLP.LogEntry.SensorSurvey.CLProviderPosition", 0x2AA, v8);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_10008DC18()
{
  if (qword_10045DCB0)
  {
    (*(*qword_10045DCB0 + 8))(qword_10045DCB0);
  }

  result = qword_10045CAD8;
  if (qword_10045CAD8)
  {
    v1 = *(*qword_10045CAD8 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_10008DCA0()
{
  v0 = qword_10045CAE0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10008D8E8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  if (!qword_10045DCB0)
  {
    sub_10008DAB0();
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_10008DD60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008DD74(uint64_t a1)
{
  *a1 = off_100437108;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_10008DDDC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
    LOBYTE(v4) = *(a2 + 84);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 84);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
  {
    *(a1 + 84) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_10045DCB0 + 16);
    }

    sub_1000AD760(v5, v6);
    v4 = *(a2 + 84);
  }

  if ((v4 & 2) != 0)
  {
    *(a1 + 84) |= 2u;
    v7 = *(a1 + 24);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 24);
    if (!v8)
    {
      v8 = *(qword_10045DCB0 + 24);
    }

    sub_1000AF3DC(v7, v8);
    v4 = *(a2 + 84);
  }

  if ((v4 & 4) != 0)
  {
    *(a1 + 84) |= 4u;
    v9 = *(a1 + 32);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 32);
    if (!v10)
    {
      v10 = *(qword_10045DCB0 + 32);
    }

    sub_1000B07FC(v9, v10);
    v4 = *(a2 + 84);
  }

  if ((v4 & 8) != 0)
  {
    *(a1 + 84) |= 8u;
    v11 = *(a1 + 40);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 40);
    if (!v12)
    {
      v12 = *(qword_10045DCB0 + 40);
    }

    sub_1000B15CC(v11, v12);
    v4 = *(a2 + 84);
  }

  if ((v4 & 0x10) != 0)
  {
    *(a1 + 84) |= 0x10u;
    v13 = *(a1 + 48);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 48);
    if (!v14)
    {
      v14 = *(qword_10045DCB0 + 48);
    }

    sub_1000B2294(v13, v14);
    v4 = *(a2 + 84);
  }

  if ((v4 & 0x20) != 0)
  {
    *(a1 + 84) |= 0x20u;
    v15 = *(a1 + 56);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a2 + 56);
    if (!v16)
    {
      v16 = *(qword_10045DCB0 + 56);
    }

    sub_1000B3150(v15, v16);
    v4 = *(a2 + 84);
  }

  if ((v4 & 0x40) != 0)
  {
    *(a1 + 84) |= 0x40u;
    v17 = *(a1 + 64);
    if (!v17)
    {
      operator new();
    }

    v18 = *(a2 + 64);
    if (!v18)
    {
      v18 = *(qword_10045DCB0 + 64);
    }

    sub_1000B476C(v17, v18);
    v4 = *(a2 + 84);
  }

  if ((v4 & 0x80) != 0)
  {
    *(a1 + 84) |= 0x80u;
    v19 = *(a1 + 72);
    if (!v19)
    {
      operator new();
    }

    v20 = *(a2 + 72);
    if (!v20)
    {
      v20 = *(qword_10045DCB0 + 72);
    }

    sub_1000B6C3C(v19, v20);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10008E290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10008E2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_10008E2B8(void *result)
{
  if (qword_10045DCB0 != result)
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[3];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[4];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[5];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[6];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[7];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[8];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    result = v1[9];
    if (result)
    {
      v9 = *(*result + 8);

      return v9();
    }
  }

  return result;
}

void sub_10008E460(void *a1)
{
  *a1 = off_100437108;
  v2 = (a1 + 1);
  sub_10008E2B8(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10008E4C0(void *a1)
{
  *a1 = off_100437108;
  v2 = (a1 + 1);
  sub_10008E2B8(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_10008E53C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_10045DCB0;
  if (!qword_10045DCB0)
  {
    sub_10008DAB0(0, a2, a3, a4);
    return qword_10045DCB0;
  }

  return result;
}

uint64_t sub_10008E60C(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 84);
  if (v2)
  {
    if (*(this + 84))
    {
      this = *(this + 16);
      if (this)
      {
        this = sub_1000ADE84(this);
        v2 = *(v1 + 84);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = sub_1000AF960(this);
        v2 = *(v1 + 84);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = sub_1000B0BD8(this);
        v2 = *(v1 + 84);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 40);
      if (this)
      {
        this = sub_1000B197C(this);
        v2 = *(v1 + 84);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        this = sub_1000B270C(this);
        v2 = *(v1 + 84);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      this = *(v1 + 56);
      if (this)
      {
        this = sub_1000B3744(this);
        v2 = *(v1 + 84);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      this = *(v1 + 64);
      if (this)
      {
        this = sub_1000B4D9C(this);
        v2 = *(v1 + 84);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      this = *(v1 + 72);
      if (this)
      {
        this = sub_1000B7398(this);
      }
    }
  }

  v4 = *(v1 + 8);
  v3 = (v1 + 8);
  *(v3 + 19) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return this;
}

uint64_t sub_10008E6FC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
            if (v8 == 3)
            {
              if (v9 != 2)
              {
                goto LABEL_48;
              }

              *(a1 + 84) |= 4u;
              v22 = *(a1 + 32);
              if (!v22)
              {
                goto LABEL_72;
              }

LABEL_45:
              v91 = 0;
              v23 = *(this + 1);
              if (v23 >= *(this + 2) || *v23 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v91))
                {
                  return 0;
                }
              }

              else
              {
                v91 = *v23;
                *(this + 1) = v23 + 1;
              }

              v41 = *(this + 14);
              v42 = *(this + 15);
              *(this + 14) = v41 + 1;
              if (v41 >= v42)
              {
                return 0;
              }

              v43 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v91);
              if (!sub_1000B0C5C(v22, this, v44, v45) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v43);
              v46 = *(this + 14);
              v30 = __OFSUB__(v46, 1);
              v47 = v46 - 1;
              if (v47 < 0 == v30)
              {
                *(this + 14) = v47;
              }

              v48 = *(this + 1);
              if (v48 < *(this + 2) && *v48 == 34)
              {
                *(this + 1) = v48 + 1;
                *(a1 + 84) |= 8u;
                v14 = *(a1 + 40);
                if (!v14)
                {
LABEL_84:
                  operator new();
                }

                goto LABEL_25;
              }
            }

            else
            {
              if (v8 != 4 || v9 != 2)
              {
                goto LABEL_48;
              }

              *(a1 + 84) |= 8u;
              v14 = *(a1 + 40);
              if (!v14)
              {
                goto LABEL_84;
              }

LABEL_25:
              v91 = 0;
              v15 = *(this + 1);
              if (v15 >= *(this + 2) || *v15 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v91))
                {
                  return 0;
                }
              }

              else
              {
                v91 = *v15;
                *(this + 1) = v15 + 1;
              }

              v49 = *(this + 14);
              v50 = *(this + 15);
              *(this + 14) = v49 + 1;
              if (v49 >= v50)
              {
                return 0;
              }

              v51 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v91);
              if (!sub_1000B19FC(v14, this, v52, v53) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v51);
              v54 = *(this + 14);
              v30 = __OFSUB__(v54, 1);
              v55 = v54 - 1;
              if (v55 < 0 == v30)
              {
                *(this + 14) = v55;
              }

              v56 = *(this + 1);
              if (v56 < *(this + 2) && *v56 == 42)
              {
                *(this + 1) = v56 + 1;
                *(a1 + 84) |= 0x10u;
                v20 = *(a1 + 48);
                if (!v20)
                {
LABEL_96:
                  operator new();
                }

                goto LABEL_41;
              }
            }
          }

          else if (v8 == 1)
          {
            if (v9 != 2)
            {
              goto LABEL_48;
            }

            *(a1 + 84) |= 1u;
            v18 = *(a1 + 16);
            if (!v18)
            {
              operator new();
            }

            v91 = 0;
            v19 = *(this + 1);
            if (v19 >= *(this + 2) || *v19 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v91))
              {
                return 0;
              }
            }

            else
            {
              v91 = *v19;
              *(this + 1) = v19 + 1;
            }

            v24 = *(this + 14);
            v25 = *(this + 15);
            *(this + 14) = v24 + 1;
            if (v24 >= v25)
            {
              return 0;
            }

            v26 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v91);
            if (!sub_1000AE058(v18, this, v27, v28) || *(this + 36) != 1)
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
            if (v32 < *(this + 2) && *v32 == 18)
            {
              *(this + 1) = v32 + 1;
              *(a1 + 84) |= 2u;
              v10 = *(a1 + 24);
              if (!v10)
              {
LABEL_60:
                operator new();
              }

              goto LABEL_12;
            }
          }

          else
          {
            if (v8 != 2 || v9 != 2)
            {
              goto LABEL_48;
            }

            *(a1 + 84) |= 2u;
            v10 = *(a1 + 24);
            if (!v10)
            {
              goto LABEL_60;
            }

LABEL_12:
            v91 = 0;
            v11 = *(this + 1);
            if (v11 >= *(this + 2) || *v11 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v91))
              {
                return 0;
              }
            }

            else
            {
              v91 = *v11;
              *(this + 1) = v11 + 1;
            }

            v33 = *(this + 14);
            v34 = *(this + 15);
            *(this + 14) = v33 + 1;
            if (v33 >= v34)
            {
              return 0;
            }

            v35 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v91);
            if (!sub_1000AFA68(v10, this, v36, v37) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v35);
            v38 = *(this + 14);
            v30 = __OFSUB__(v38, 1);
            v39 = v38 - 1;
            if (v39 < 0 == v30)
            {
              *(this + 14) = v39;
            }

            v40 = *(this + 1);
            if (v40 < *(this + 2) && *v40 == 26)
            {
              *(this + 1) = v40 + 1;
              *(a1 + 84) |= 4u;
              v22 = *(a1 + 32);
              if (!v22)
              {
LABEL_72:
                operator new();
              }

              goto LABEL_45;
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v8 == 5)
        {
          if (v9 != 2)
          {
            goto LABEL_48;
          }

          *(a1 + 84) |= 0x10u;
          v20 = *(a1 + 48);
          if (!v20)
          {
            goto LABEL_96;
          }

LABEL_41:
          v91 = 0;
          v21 = *(this + 1);
          if (v21 >= *(this + 2) || *v21 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v91))
            {
              return 0;
            }
          }

          else
          {
            v91 = *v21;
            *(this + 1) = v21 + 1;
          }

          v57 = *(this + 14);
          v58 = *(this + 15);
          *(this + 14) = v57 + 1;
          if (v57 >= v58)
          {
            return 0;
          }

          v59 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v91);
          if (!sub_1000B27D8(v20, this, v60, v61) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v59);
          v62 = *(this + 14);
          v30 = __OFSUB__(v62, 1);
          v63 = v62 - 1;
          if (v63 < 0 == v30)
          {
            *(this + 14) = v63;
          }

          v64 = *(this + 1);
          if (v64 < *(this + 2) && *v64 == 50)
          {
            *(this + 1) = v64 + 1;
            *(a1 + 84) |= 0x20u;
            v12 = *(a1 + 56);
            if (!v12)
            {
LABEL_108:
              operator new();
            }

            goto LABEL_19;
          }
        }

        else
        {
          if (v8 != 6 || v9 != 2)
          {
            goto LABEL_48;
          }

          *(a1 + 84) |= 0x20u;
          v12 = *(a1 + 56);
          if (!v12)
          {
            goto LABEL_108;
          }

LABEL_19:
          v91 = 0;
          v13 = *(this + 1);
          if (v13 >= *(this + 2) || *v13 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v91))
            {
              return 0;
            }
          }

          else
          {
            v91 = *v13;
            *(this + 1) = v13 + 1;
          }

          v65 = *(this + 14);
          v66 = *(this + 15);
          *(this + 14) = v65 + 1;
          if (v65 >= v66)
          {
            return 0;
          }

          v67 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v91);
          if (!sub_1000B3878(v12, this, v68, v69) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v67);
          v70 = *(this + 14);
          v30 = __OFSUB__(v70, 1);
          v71 = v70 - 1;
          if (v71 < 0 == v30)
          {
            *(this + 14) = v71;
          }

          v72 = *(this + 1);
          if (v72 < *(this + 2) && *v72 == 58)
          {
            *(this + 1) = v72 + 1;
            goto LABEL_120;
          }
        }
      }

      if (v8 != 7)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_48;
      }

LABEL_120:
      *(a1 + 84) |= 0x40u;
      v73 = *(a1 + 64);
      if (!v73)
      {
        operator new();
      }

      v91 = 0;
      v74 = *(this + 1);
      if (v74 >= *(this + 2) || *v74 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v91))
        {
          return 0;
        }
      }

      else
      {
        v91 = *v74;
        *(this + 1) = v74 + 1;
      }

      v75 = *(this + 14);
      v76 = *(this + 15);
      *(this + 14) = v75 + 1;
      if (v75 >= v76)
      {
        return 0;
      }

      v77 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v91);
      if (!sub_1000B4E90(v73, this, v78, v79) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v77);
      v80 = *(this + 14);
      v30 = __OFSUB__(v80, 1);
      v81 = v80 - 1;
      if (v81 < 0 == v30)
      {
        *(this + 14) = v81;
      }

      v82 = *(this + 1);
      if (v82 < *(this + 2) && *v82 == 66)
      {
        *(this + 1) = v82 + 1;
        *(a1 + 84) |= 0x80u;
        v16 = *(a1 + 72);
        if (!v16)
        {
LABEL_134:
          operator new();
        }

LABEL_31:
        v91 = 0;
        v17 = *(this + 1);
        if (v17 >= *(this + 2) || *v17 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v91))
          {
            return 0;
          }
        }

        else
        {
          v91 = *v17;
          *(this + 1) = v17 + 1;
        }

        v83 = *(this + 14);
        v84 = *(this + 15);
        *(this + 14) = v83 + 1;
        if (v83 >= v84)
        {
          return 0;
        }

        v85 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v91);
        if (!sub_1000B7490(v16, this, v86, v87) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v85);
        v88 = *(this + 14);
        v30 = __OFSUB__(v88, 1);
        v89 = v88 - 1;
        if (v89 < 0 == v30)
        {
          *(this + 14) = v89;
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

    if (v8 == 8 && v9 == 2)
    {
      *(a1 + 84) |= 0x80u;
      v16 = *(a1 + 72);
      if (!v16)
      {
        goto LABEL_134;
      }

      goto LABEL_31;
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

uint64_t sub_10008F1A0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 84);
  if (v6)
  {
    v10 = *(result + 16);
    if (v10)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
      v6 = *(v5 + 84);
      if ((v6 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DCB0 + 16), a2, a4);
      v6 = *(v5 + 84);
      if ((v6 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

LABEL_19:
    v12 = *(v5 + 32);
    if (v12)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v12, a2, a4);
      v6 = *(v5 + 84);
      if ((v6 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(qword_10045DCB0 + 32), a2, a4);
      v6 = *(v5 + 84);
      if ((v6 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_27:
    v14 = *(v5 + 48);
    if (v14)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, v14, a2, a4);
      v6 = *(v5 + 84);
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, *(qword_10045DCB0 + 48), a2, a4);
      v6 = *(v5 + 84);
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_35:
    v16 = *(v5 + 64);
    if (v16)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, v16, a2, a4);
      if ((*(v5 + 84) & 0x80) != 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, *(qword_10045DCB0 + 64), a2, a4);
      if ((*(v5 + 84) & 0x80) != 0)
      {
        goto LABEL_39;
      }
    }

LABEL_9:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_43;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_15:
  v11 = *(v5 + 24);
  if (v11)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v11, a2, a4);
    v6 = *(v5 + 84);
    if ((v6 & 4) != 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(qword_10045DCB0 + 24), a2, a4);
    v6 = *(v5 + 84);
    if ((v6 & 4) != 0)
    {
      goto LABEL_19;
    }
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_23:
  v13 = *(v5 + 40);
  if (v13)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v13, a2, a4);
    v6 = *(v5 + 84);
    if ((v6 & 0x10) != 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, *(qword_10045DCB0 + 40), a2, a4);
    v6 = *(v5 + 84);
    if ((v6 & 0x10) != 0)
    {
      goto LABEL_27;
    }
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_7;
  }

LABEL_31:
  v15 = *(v5 + 56);
  if (v15)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, v15, a2, a4);
    v6 = *(v5 + 84);
    if ((v6 & 0x40) != 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, *(qword_10045DCB0 + 56), a2, a4);
    v6 = *(v5 + 84);
    if ((v6 & 0x40) != 0)
    {
      goto LABEL_35;
    }
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_39:
  v17 = *(v5 + 72);
  if (v17)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, v17, a2, a4);
    v18 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v18;
    if (!v18)
    {
      return result;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, *(qword_10045DCB0 + 72), a2, a4);
    v19 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v19;
    if (!v19)
    {
      return result;
    }
  }

LABEL_43:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10008F424(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 21);
  if ((v5 & 1) == 0)
  {
    result = a2;
    if ((v5 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v14 = *(this + 3);
    if (v14)
    {
      *result = 18;
      v15 = result + 1;
      v16 = v14[12];
      if (v16 <= 0x7F)
      {
LABEL_12:
        *(result + 1) = v16;
        v17 = (result + 2);
LABEL_15:
        result = sub_1000B00D4(v14, v17, a3, a4);
        v5 = *(this + 21);
        goto LABEL_16;
      }
    }

    else
    {
      v14 = *(qword_10045DCB0 + 24);
      *result = 18;
      v15 = result + 1;
      v16 = v14[12];
      if (v16 <= 0x7F)
      {
        goto LABEL_12;
      }
    }

    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v15, a3);
    goto LABEL_15;
  }

  v7 = *(this + 2);
  if (v7)
  {
    v8 = a2;
    *a2 = 10;
    v9 = a2 + 1;
    v10 = v7[18];
    if (v10 <= 0x7F)
    {
      goto LABEL_6;
    }

LABEL_9:
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v9, a3);
    result = sub_1000AE900(v7, v11, v12, v13);
    v5 = *(this + 21);
    if ((v5 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v7 = *(qword_10045DCB0 + 16);
  v8 = a2;
  *a2 = 10;
  v9 = a2 + 1;
  v10 = v7[18];
  if (v10 > 0x7F)
  {
    goto LABEL_9;
  }

LABEL_6:
  *(v8 + 1) = v10;
  result = sub_1000AE900(v7, v8 + 2, a3, a4);
  v5 = *(this + 21);
  if ((v5 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  if ((v5 & 4) != 0)
  {
    v21 = *(this + 4);
    if (v21)
    {
      *result = 26;
      v22 = result + 1;
      v23 = *(v21 + 36);
      if (v23 <= 0x7F)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v21 = *(qword_10045DCB0 + 32);
      *result = 26;
      v22 = result + 1;
      v23 = *(v21 + 36);
      if (v23 <= 0x7F)
      {
LABEL_26:
        *(result + 1) = v23;
        result = sub_1000B10C0(v21, result + 2, a3);
        v5 = *(this + 21);
        if ((v5 & 8) != 0)
        {
          goto LABEL_30;
        }

LABEL_18:
        if ((v5 & 0x10) == 0)
        {
          goto LABEL_19;
        }

LABEL_36:
        v31 = *(this + 6);
        if (v31)
        {
          *result = 42;
          v32 = result + 1;
          v33 = v31[12];
          if (v33 <= 0x7F)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v31 = *(qword_10045DCB0 + 48);
          *result = 42;
          v32 = result + 1;
          v33 = v31[12];
          if (v33 <= 0x7F)
          {
LABEL_38:
            *(result + 1) = v33;
            result = sub_1000B2C3C(v31, (result + 2), a3, a4);
            v5 = *(this + 21);
            if ((v5 & 0x20) != 0)
            {
              goto LABEL_42;
            }

LABEL_20:
            if ((v5 & 0x40) == 0)
            {
              goto LABEL_21;
            }

LABEL_48:
            v43 = *(this + 8);
            if (v43)
            {
              *result = 58;
              v44 = result + 1;
              v45 = v43[31];
              if (v45 <= 0x7F)
              {
                goto LABEL_50;
              }
            }

            else
            {
              v43 = *(qword_10045DCB0 + 64);
              *result = 58;
              v44 = result + 1;
              v45 = v43[31];
              if (v45 <= 0x7F)
              {
LABEL_50:
                *(result + 1) = v45;
                result = sub_1000B5948(v43, (result + 2), a3, a4);
                if ((*(this + 21) & 0x80) != 0)
                {
                  goto LABEL_54;
                }

LABEL_22:
                v20 = *(this + 1);
                v19 = (this + 8);
                v18 = v20;
                if (!v20)
                {
                  return result;
                }

                goto LABEL_60;
              }
            }

            v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v45, v44, a3);
            result = sub_1000B5948(v43, v46, v47, v48);
            if ((*(this + 21) & 0x80) != 0)
            {
              goto LABEL_54;
            }

            goto LABEL_22;
          }
        }

        v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v33, v32, a3);
        result = sub_1000B2C3C(v31, v34, v35, v36);
        v5 = *(this + 21);
        if ((v5 & 0x20) != 0)
        {
          goto LABEL_42;
        }

        goto LABEL_20;
      }
    }

    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, v22, a3);
    result = sub_1000B10C0(v21, v24, v25);
    v5 = *(this + 21);
    if ((v5 & 8) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  if ((v5 & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_30:
  v26 = *(this + 5);
  if (v26)
  {
    *result = 34;
    v27 = result + 1;
    v28 = *(v26 + 32);
    if (v28 <= 0x7F)
    {
      goto LABEL_32;
    }

LABEL_35:
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v28, v27, a3);
    result = sub_1000B1DCC(v26, v29, v30);
    v5 = *(this + 21);
    if ((v5 & 0x10) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_19;
  }

  v26 = *(qword_10045DCB0 + 40);
  *result = 34;
  v27 = result + 1;
  v28 = *(v26 + 32);
  if (v28 > 0x7F)
  {
    goto LABEL_35;
  }

LABEL_32:
  *(result + 1) = v28;
  result = sub_1000B1DCC(v26, result + 2, a3);
  v5 = *(this + 21);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_36;
  }

LABEL_19:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_20;
  }

LABEL_42:
  v37 = *(this + 7);
  if (v37)
  {
    *result = 50;
    v38 = result + 1;
    v39 = v37[15];
    if (v39 <= 0x7F)
    {
      goto LABEL_44;
    }

LABEL_47:
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v39, v38, a3);
    result = sub_1000B3F74(v37, v40, v41, v42);
    v5 = *(this + 21);
    if ((v5 & 0x40) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_21;
  }

  v37 = *(qword_10045DCB0 + 56);
  *result = 50;
  v38 = result + 1;
  v39 = v37[15];
  if (v39 > 0x7F)
  {
    goto LABEL_47;
  }

LABEL_44:
  *(result + 1) = v39;
  result = sub_1000B3F74(v37, (result + 2), a3, a4);
  v5 = *(this + 21);
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_48;
  }

LABEL_21:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_22;
  }

LABEL_54:
  v49 = *(this + 9);
  if (v49)
  {
    *result = 66;
    v50 = result + 1;
    v51 = v49[38];
    if (v51 <= 0x7F)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v49 = *(qword_10045DCB0 + 72);
    *result = 66;
    v50 = result + 1;
    v51 = v49[38];
    if (v51 <= 0x7F)
    {
LABEL_56:
      *(result + 1) = v51;
      result = sub_1000B8298(v49, (result + 2), a3);
      v52 = *(this + 1);
      v19 = (this + 8);
      v18 = v52;
      if (!v52)
      {
        return result;
      }

      goto LABEL_60;
    }
  }

  v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v51, v50, a3);
  result = sub_1000B8298(v49, v53, v54);
  v55 = *(this + 1);
  v19 = (this + 8);
  v18 = v55;
  if (!v55)
  {
    return result;
  }

LABEL_60:
  if (*v18 != v18[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v19, result, a3);
  }

  return result;
}

uint64_t sub_10008F874(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 84);
  if (!v3)
  {
    v4 = 0;
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_26;
    }

    goto LABEL_63;
  }

  if ((*(a1 + 84) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 84) & 2) == 0)
    {
      goto LABEL_19;
    }

LABEL_13:
    v9 = *(a1 + 24);
    if (v9)
    {
      v10 = sub_1000B0338(v9, a2);
      if (v10 < 0x80)
      {
LABEL_15:
        v11 = 1;
LABEL_18:
        v4 = (v4 + v10 + v11 + 1);
        v3 = *(a1 + 84);
        goto LABEL_19;
      }
    }

    else
    {
      v10 = sub_1000B0338(*(qword_10045DCB0 + 24), a2);
      if (v10 < 0x80)
      {
        goto LABEL_15;
      }
    }

    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
    goto LABEL_18;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = sub_1000AED40(v7, a2);
    if (v8 < 0x80)
    {
      goto LABEL_9;
    }

LABEL_12:
    v4 = v8 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    v3 = *(a1 + 84);
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v8 = sub_1000AED40(*(qword_10045DCB0 + 16), a2);
  if (v8 >= 0x80)
  {
    goto LABEL_12;
  }

LABEL_9:
  v4 = (v8 + 2);
  v3 = *(a1 + 84);
  if ((v3 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_19:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_21;
    }

LABEL_33:
    v15 = *(a1 + 40);
    if (v15)
    {
      v16 = sub_1000B1EF8(v15, a2);
      if (v16 < 0x80)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v16 = sub_1000B1EF8(*(qword_10045DCB0 + 40), a2);
      if (v16 < 0x80)
      {
LABEL_35:
        v4 = (v4 + v16 + 2);
        v3 = *(a1 + 84);
        if ((v3 & 0x10) != 0)
        {
          goto LABEL_39;
        }

LABEL_22:
        if ((v3 & 0x20) == 0)
        {
          goto LABEL_23;
        }

LABEL_45:
        v19 = *(a1 + 56);
        if (v19)
        {
          v20 = sub_1000B4244(v19, a2);
          if (v20 < 0x80)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v20 = sub_1000B4244(*(qword_10045DCB0 + 56), a2);
          if (v20 < 0x80)
          {
LABEL_47:
            v4 = (v4 + v20 + 2);
            v3 = *(a1 + 84);
            if ((v3 & 0x40) != 0)
            {
              goto LABEL_51;
            }

LABEL_24:
            if ((v3 & 0x80) == 0)
            {
              goto LABEL_25;
            }

LABEL_57:
            v23 = *(a1 + 72);
            if (v23)
            {
              v24 = sub_1000B8A34(v23, a2);
              if (v24 < 0x80)
              {
LABEL_59:
                v25 = 1;
                goto LABEL_62;
              }
            }

            else
            {
              v24 = sub_1000B8A34(*(qword_10045DCB0 + 72), a2);
              if (v24 < 0x80)
              {
                goto LABEL_59;
              }
            }

            v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2);
LABEL_62:
            v4 = (v4 + v24 + v25 + 1);
            v5 = (a1 + 8);
            v6 = *(a1 + 8);
            if (!v6)
            {
              goto LABEL_26;
            }

            goto LABEL_63;
          }
        }

        v4 = v4 + v20 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 1;
        v3 = *(a1 + 84);
        if ((v3 & 0x40) != 0)
        {
          goto LABEL_51;
        }

        goto LABEL_24;
      }
    }

    v4 = v4 + v16 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
    v3 = *(a1 + 84);
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_22;
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = sub_1000B1224(v13, a2);
    if (v14 < 0x80)
    {
      goto LABEL_29;
    }

LABEL_32:
    v4 = v4 + v14 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    v3 = *(a1 + 84);
    if ((v3 & 8) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_21;
  }

  v14 = sub_1000B1224(*(qword_10045DCB0 + 32), a2);
  if (v14 >= 0x80)
  {
    goto LABEL_32;
  }

LABEL_29:
  v4 = (v4 + v14 + 2);
  v3 = *(a1 + 84);
  if ((v3 & 8) != 0)
  {
    goto LABEL_33;
  }

LABEL_21:
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_22;
  }

LABEL_39:
  v17 = *(a1 + 48);
  if (v17)
  {
    v18 = sub_1000B2D94(v17, a2);
    if (v18 < 0x80)
    {
      goto LABEL_41;
    }

LABEL_44:
    v4 = v4 + v18 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
    v3 = *(a1 + 84);
    if ((v3 & 0x20) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_23;
  }

  v18 = sub_1000B2D94(*(qword_10045DCB0 + 48), a2);
  if (v18 >= 0x80)
  {
    goto LABEL_44;
  }

LABEL_41:
  v4 = (v4 + v18 + 2);
  v3 = *(a1 + 84);
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_45;
  }

LABEL_23:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_24;
  }

LABEL_51:
  v21 = *(a1 + 64);
  if (v21)
  {
    v22 = sub_1000B5F24(v21, a2);
    if (v22 < 0x80)
    {
      goto LABEL_53;
    }

LABEL_56:
    v4 = v4 + v22 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 1;
    if ((*(a1 + 84) & 0x80) != 0)
    {
      goto LABEL_57;
    }

    goto LABEL_25;
  }

  v22 = sub_1000B5F24(*(qword_10045DCB0 + 64), a2);
  if (v22 >= 0x80)
  {
    goto LABEL_56;
  }

LABEL_53:
  v4 = (v4 + v22 + 2);
  if ((*(a1 + 84) & 0x80) != 0)
  {
    goto LABEL_57;
  }

LABEL_25:
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_26:
    *(a1 + 80) = v4;
    return v4;
  }

LABEL_63:
  if (*v6 == v6[1])
  {
    goto LABEL_26;
  }

  v26 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v4;
  *(a1 + 80) = v26;
  return v26;
}

uint64_t sub_10008FC50(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10008DDDC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10008FD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10008FD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008FD58(uint64_t result, uint64_t a2)
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

uint64_t sub_10008FDEC()
{
  v0 = qword_10045CAE0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10008D8E8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CAD0;
}

void sub_10008FE7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_10008FE9C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  sub_100090724(a1, a2, a3, a4);
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v4);
  operator new();
}

void sub_100090690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000906A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000906B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100090724(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_10045CAE8 & 1) == 0)
  {
    byte_10045CAE8 = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/protobuf/gen/survey.pb.cc", a4);
    sub_1000522F0(v4, v5, v6, v7);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile(&unk_1003CBA1C, 0xD6B, v8);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_100091028()
{
  if (qword_10045DCB8)
  {
    (*(*qword_10045DCB8 + 8))(qword_10045DCB8);
  }

  if (qword_10045CB00)
  {
    (*(*qword_10045CB00 + 8))(qword_10045CB00);
  }

  if (qword_10045DCC0)
  {
    (*(*qword_10045DCC0 + 8))(qword_10045DCC0);
  }

  if (qword_10045CB10)
  {
    (*(*qword_10045CB10 + 8))(qword_10045CB10);
  }

  if (qword_10045DCC8)
  {
    (*(*qword_10045DCC8 + 8))(qword_10045DCC8);
  }

  if (qword_10045CB20)
  {
    (*(*qword_10045CB20 + 8))(qword_10045CB20);
  }

  if (qword_10045DCD0)
  {
    (*(*qword_10045DCD0 + 8))(qword_10045DCD0);
  }

  if (qword_10045CB38)
  {
    (*(*qword_10045CB38 + 8))(qword_10045CB38);
  }

  if (qword_10045DCD8)
  {
    (*(*qword_10045DCD8 + 8))(qword_10045DCD8);
  }

  if (qword_10045CB48)
  {
    (*(*qword_10045CB48 + 8))(qword_10045CB48);
  }

  if (qword_10045DCE0)
  {
    (*(*qword_10045DCE0 + 8))(qword_10045DCE0);
  }

  if (qword_10045CB58)
  {
    (*(*qword_10045CB58 + 8))(qword_10045CB58);
  }

  if (qword_10045DCE8)
  {
    (*(*qword_10045DCE8 + 8))(qword_10045DCE8);
  }

  if (qword_10045CB78)
  {
    (*(*qword_10045CB78 + 8))(qword_10045CB78);
  }

  if (qword_10045DCF0)
  {
    (*(*qword_10045DCF0 + 8))(qword_10045DCF0);
  }

  if (qword_10045CB90)
  {
    (*(*qword_10045CB90 + 8))(qword_10045CB90);
  }

  if (qword_10045DCF8)
  {
    (*(*qword_10045DCF8 + 8))(qword_10045DCF8);
  }

  if (qword_10045CBA0)
  {
    (*(*qword_10045CBA0 + 8))(qword_10045CBA0);
  }

  if (qword_10045DD00)
  {
    (*(*qword_10045DD00 + 8))(qword_10045DD00);
  }

  if (qword_10045CBB8)
  {
    (*(*qword_10045CBB8 + 8))(qword_10045CBB8);
  }

  if (qword_10045DD08)
  {
    (*(*qword_10045DD08 + 8))(qword_10045DD08);
  }

  if (qword_10045CBC8)
  {
    (*(*qword_10045CBC8 + 8))(qword_10045CBC8);
  }

  if (qword_10045DD10)
  {
    (*(*qword_10045DD10 + 8))(qword_10045DD10);
  }

  if (qword_10045CBD8)
  {
    (*(*qword_10045CBD8 + 8))(qword_10045CBD8);
  }

  if (qword_10045DD18)
  {
    (*(*qword_10045DD18 + 8))(qword_10045DD18);
  }

  if (qword_10045CBE8)
  {
    (*(*qword_10045CBE8 + 8))(qword_10045CBE8);
  }

  if (qword_10045DD20)
  {
    (*(*qword_10045DD20 + 8))(qword_10045DD20);
  }

  if (qword_10045CC00)
  {
    (*(*qword_10045CC00 + 8))(qword_10045CC00);
  }

  if (qword_10045DD28)
  {
    (*(*qword_10045DD28 + 8))(qword_10045DD28);
  }

  result = qword_10045CC10;
  if (qword_10045CC10)
  {
    v1 = *(*qword_10045CC10 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_1000915F0()
{
  v0 = qword_10045CC18;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v16[1] = sub_10008FE9C;
    v17 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v16);
  }

  if (!qword_10045DCB8)
  {
    (sub_100090724)();
  }

  v1 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DCC0)
  {
    sub_100090724(v1);
  }

  v2 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DCC8)
  {
    sub_100090724(v2);
  }

  v3 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DCD0)
  {
    sub_100090724(v3);
  }

  v4 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DCD8)
  {
    sub_100090724(v4);
  }

  v5 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DCE0)
  {
    sub_100090724(v5);
  }

  v6 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DCE8)
  {
    sub_100090724(v6);
  }

  v7 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DCF0)
  {
    sub_100090724(v7);
  }

  v8 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DCF8)
  {
    sub_100090724(v8);
  }

  v9 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DD00)
  {
    sub_100090724(v9);
  }

  v10 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DD08)
  {
    sub_100090724(v10);
  }

  v11 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DD10)
  {
    sub_100090724(v11);
  }

  v12 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DD18)
  {
    sub_100090724(v12);
  }

  v13 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DD20)
  {
    sub_100090724(v13);
  }

  v14 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DD28)
  {
    sub_100090724(v14);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_1000918A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000918BC(uint64_t a1)
{
  if (*(a1 + 12) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*a1 + 8 * v2);
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v2;
    }

    while (v2 < *(a1 + 12));
  }

  if (*a1)
  {
    operator delete[]();
  }

  return a1;
}

uint64_t sub_10009192C(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v23);
  }

  v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4), *(a2 + 24) + a1[6]);
  if (*(a2 + 24) >= 1)
  {
    v5 = 0;
    do
    {
      while (1)
      {
        v9 = *(*(a2 + 16) + 8 * v5);
        v10 = a1[7];
        v11 = a1[6];
        if (v11 >= v10)
        {
          break;
        }

        v12 = *(a1 + 2);
        a1[6] = v11 + 1;
        v4 = std::string::operator=(*(v12 + 8 * v11), v9);
        if (++v5 >= *(a2 + 24))
        {
          goto LABEL_11;
        }
      }

      if (v10 == a1[8])
      {
        v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4), v10 + 1);
        v10 = a1[7];
      }

      a1[7] = v10 + 1;
      v6 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v4);
      v7 = *(a1 + 2);
      v8 = a1[6];
      a1[6] = v8 + 1;
      *(v7 + 8 * v8) = v6;
      v4 = std::string::operator=(v6, v9);
      ++v5;
    }

    while (v5 < *(a2 + 24));
  }

LABEL_11:
  v13 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 10), *(a2 + 48) + a1[12]);
  if (*(a2 + 48) >= 1)
  {
    v14 = 0;
    do
    {
      while (1)
      {
        v18 = *(*(a2 + 40) + 8 * v14);
        v19 = a1[13];
        v20 = a1[12];
        if (v20 >= v19)
        {
          break;
        }

        v21 = *(a1 + 5);
        a1[12] = v20 + 1;
        v13 = std::string::operator=(*(v21 + 8 * v20), v18);
        if (++v14 >= *(a2 + 48))
        {
          return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
        }
      }

      if (v19 == a1[14])
      {
        v13 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 10), v19 + 1);
        v19 = a1[13];
      }

      a1[13] = v19 + 1;
      v15 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v13);
      v16 = *(a1 + 5);
      v17 = a1[12];
      a1[12] = v17 + 1;
      *(v16 + 8 * v17) = v15;
      v13 = std::string::operator=(v15, v18);
      ++v14;
    }

    while (v14 < *(a2 + 48));
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_100091B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100091B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100091B60(uint64_t a1)
{
  *a1 = off_1004371D0;
  if (*(a1 + 52) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(a1 + 40) + 8 * v2);
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v2;
    }

    while (v2 < *(a1 + 52));
  }

  if (*(a1 + 40))
  {
    operator delete[]();
  }

  if (*(a1 + 28) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 16) + 8 * v4);
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v4;
    }

    while (v4 < *(a1 + 28));
  }

  if (*(a1 + 16))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100091C54(uint64_t a1)
{
  sub_100091B60(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100091D34(uint64_t a1)
{
  if (*(a1 + 24) >= 1)
  {
    v1 = 0;
    do
    {
      while (1)
      {
        v2 = *(*(a1 + 16) + 8 * v1);
        if (*(v2 + 23) < 0)
        {
          break;
        }

        *v2 = 0;
        *(v2 + 23) = 0;
        if (++v1 >= *(a1 + 24))
        {
          goto LABEL_6;
        }
      }

      **v2 = 0;
      *(v2 + 8) = 0;
      ++v1;
    }

    while (v1 < *(a1 + 24));
  }

LABEL_6:
  *(a1 + 24) = 0;
  if (*(a1 + 48) >= 1)
  {
    v3 = 0;
    do
    {
      while (1)
      {
        v4 = *(*(a1 + 40) + 8 * v3);
        if (*(v4 + 23) < 0)
        {
          break;
        }

        *v4 = 0;
        *(v4 + 23) = 0;
        if (++v3 >= *(a1 + 48))
        {
          goto LABEL_11;
        }
      }

      **v4 = 0;
      *(v4 + 8) = 0;
      ++v3;
    }

    while (v3 < *(a1 + 48));
  }

LABEL_11:
  v6 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 10) = 0;
  *(result + 15) = 0;
  if (v6)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100091E00(uint64_t result, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v5 = result;
  do
  {
    while (1)
    {
LABEL_2:
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        v7 = result;
        *(this + 8) = result;
        if (!result)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = v7;
        *(this + 1) = v6 + 1;
        if (!v7)
        {
          return 1;
        }
      }

      v8 = v7 & 7;
      if (v7 >> 3 == 2)
      {
        break;
      }

      if (v7 >> 3 == 1 && v8 == 2)
      {
        while (1)
        {
          v9 = v5[7];
          v10 = v5[6];
          if (v10 >= v9)
          {
            if (v9 == v5[8])
            {
              result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 4), v9 + 1);
              v9 = v5[7];
            }

            v5[7] = v9 + 1;
            v13 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
            v14 = *(v5 + 2);
            v15 = v5[6];
            v5[6] = v15 + 1;
            *(v14 + 8 * v15) = v13;
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }
          }

          else
          {
            v11 = *(v5 + 2);
            v5[6] = v10 + 1;
            v12 = *(v11 + 8 * v10);
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }
          }

          v16 = *(this + 1);
          if (v16 >= *(this + 2))
          {
            break;
          }

          v17 = *v16;
          if (v17 != 10)
          {
            if (v17 != 18)
            {
              goto LABEL_2;
            }

            goto LABEL_34;
          }

          *(this + 1) = v16 + 1;
        }
      }

      else
      {
LABEL_23:
        if (v8 == 4)
        {
          return 1;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, v7, v5 + 8, a4);
        if ((result & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v8 != 2)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v18 = v5[13];
      v19 = v5[12];
      if (v19 >= v18)
      {
        if (v18 == v5[14])
        {
          result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 10), v18 + 1);
          v18 = v5[13];
        }

        v5[13] = v18 + 1;
        v22 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
        v23 = *(v5 + 5);
        v24 = v5[12];
        v5[12] = v24 + 1;
        *(v23 + 8 * v24) = v22;
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v20 = *(v5 + 5);
        v5[12] = v19 + 1;
        v21 = *(v20 + 8 * v19);
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }
      }

      v16 = *(this + 1);
      v25 = *(this + 2);
      if (v16 >= v25 || *v16 != 18)
      {
        break;
      }

LABEL_34:
      *(this + 1) = v16 + 1;
    }
  }

  while (v16 != v25 || !*(this + 11) && *(this + 6) != *(this + 10));
  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

uint64_t sub_10009203C(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  if (*(result + 24) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(v4 + 16) + 8 * v5);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v5;
    }

    while (v5 < *(v4 + 24));
  }

  if (*(v4 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(v4 + 40) + 8 * v7);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v7;
    }

    while (v7 < *(v4 + 48));
  }

  v11 = *(v4 + 8);
  v10 = (v4 + 8);
  v9 = v11;
  if (v11 && *v9 != v9[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v10, a2, a3);
  }

  return result;
}

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10009210C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(a1 + 24) >= 1)
  {
    v5 = 0;
    result = a2;
    while (1)
    {
      v11 = *(*(a1 + 16) + 8 * v5);
      *result = 10;
      v12 = *(v11 + 23);
      if ((v12 & 0x8000000000000000) != 0)
      {
        v12 = *(v11 + 8);
        if (v12 <= 0x7F)
        {
LABEL_15:
          *(result + 1) = v12;
          v7 = result + 2;
          goto LABEL_4;
        }
      }

      else if (v12 <= 0x7F)
      {
        goto LABEL_15;
      }

      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, result + 1, a3);
LABEL_4:
      v8 = *(v11 + 23);
      if (v8 >= 0)
      {
        v9 = v11;
      }

      else
      {
        v9 = *v11;
      }

      if (v8 >= 0)
      {
        v10 = *(v11 + 23);
      }

      else
      {
        v10 = *(v11 + 8);
      }

      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v9, v10, v7, a4);
      if (++v5 >= *(a1 + 24))
      {
        goto LABEL_17;
      }
    }
  }

  result = a2;
LABEL_17:
  if (*(a1 + 48) >= 1)
  {
    for (i = 0; i < *(a1 + 48); ++i)
    {
      v18 = *(*(a1 + 40) + 8 * i);
      *result = 18;
      v19 = *(v18 + 23);
      if ((v19 & 0x8000000000000000) != 0)
      {
        v19 = *(v18 + 8);
        if (v19 > 0x7F)
        {
LABEL_31:
          v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, result + 1, a3);
          goto LABEL_20;
        }
      }

      else if (v19 > 0x7F)
      {
        goto LABEL_31;
      }

      *(result + 1) = v19;
      v14 = result + 2;
LABEL_20:
      v15 = *(v18 + 23);
      if (v15 >= 0)
      {
        v16 = v18;
      }

      else
      {
        v16 = *v18;
      }

      if (v15 >= 0)
      {
        v17 = *(v18 + 23);
      }

      else
      {
        v17 = *(v18 + 8);
      }

      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v16, v17, v14, a4);
    }
  }

  v22 = *(a1 + 8);
  v21 = (a1 + 8);
  v20 = v22;
  if (v22 && *v20 != v20[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v21, result, a3);
  }

  return result;
}

uint64_t sub_100092298(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 < 1)
  {
    v5 = *(a1 + 24);
  }

  else
  {
    v4 = 0;
    v5 = *(a1 + 24);
    do
    {
      v10 = *(*(a1 + 16) + 8 * v4);
      v7 = *(v10 + 23);
      v9 = v7;
      v8 = *(v10 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v11 = *(v10 + 23);
      }

      else
      {
        v11 = v8;
      }

      if (v11 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
        v7 = *(v10 + 23);
        v8 = *(v10 + 8);
        v3 = *(a1 + 24);
        v9 = *(v10 + 23);
      }

      else
      {
        v6 = 1;
      }

      if (v9 < 0)
      {
        v7 = v8;
      }

      v5 += v6 + v7;
      ++v4;
    }

    while (v4 < v3);
  }

  v12 = *(a1 + 48);
  v13 = (v12 + v5);
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      v17 = *(*(a1 + 40) + 8 * i);
      v16 = *(v17 + 23);
      v18 = v16;
      v19 = *(v17 + 8);
      if ((v16 & 0x80u) == 0)
      {
        v20 = *(v17 + 23);
      }

      else
      {
        v20 = v19;
      }

      if (v20 < 0x80)
      {
        v15 = 1;
      }

      else
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
        v16 = *(v17 + 23);
        v19 = *(v17 + 8);
        v12 = *(a1 + 48);
        v18 = *(v17 + 23);
      }

      if (v18 < 0)
      {
        v16 = v19;
      }

      v13 = (v15 + v13 + v16);
    }
  }

  v21 = *(a1 + 8);
  if (v21 && *v21 != v21[1])
  {
    v13 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v13;
  }

  *(a1 + 64) = v13;
  return v13;
}

uint64_t sub_1000923DC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009192C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000924BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000924D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000924E4(uint64_t result, uint64_t a2)
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

uint64_t sub_100092578()
{
  v0 = qword_10045CC18;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10008FE9C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CAF8;
}

void sub_100092608(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009261C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v29);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 28);
    v7 = v5 + v4;
    v8 = *(a1 + 16);
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

      *(a1 + 28) = v9;
      operator new[]();
    }

    memcpy((*(a1 + 16) + 8 * v5), *(a2 + 16), 8 * *(a2 + 24));
    *(a1 + 24) += *(a2 + 24);
  }

  v10 = *(a2 + 48);
  if (v10)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 52);
    v13 = v11 + v10;
    v14 = *(a1 + 40);
    if (v12 < v13)
    {
      v15 = 2 * v12;
      if (2 * v12 <= v13)
      {
        v15 = v13;
      }

      if (v15 <= 4)
      {
        v15 = 4;
      }

      *(a1 + 52) = v15;
      operator new[]();
    }

    memcpy((*(a1 + 40) + 4 * v11), *(a2 + 40), 4 * *(a2 + 48));
    *(a1 + 48) += *(a2 + 48);
  }

  v16 = *(a2 + 72);
  if (v16)
  {
    v17 = *(a1 + 72);
    v18 = *(a1 + 76);
    v19 = v17 + v16;
    v20 = *(a1 + 64);
    if (v18 < v19)
    {
      v21 = 2 * v18;
      if (2 * v18 <= v19)
      {
        v21 = v19;
      }

      if (v21 <= 4)
      {
        v21 = 4;
      }

      *(a1 + 76) = v21;
      operator new[]();
    }

    memcpy((*(a1 + 64) + 4 * v17), *(a2 + 64), 4 * *(a2 + 72));
    *(a1 + 72) += *(a2 + 72);
  }

  v22 = *(a2 + 96);
  if (v22)
  {
    v23 = *(a1 + 96);
    v24 = *(a1 + 100);
    v25 = v23 + v22;
    v26 = *(a1 + 88);
    if (v24 < v25)
    {
      v27 = 2 * v24;
      if (2 * v24 <= v25)
      {
        v27 = v25;
      }

      if (v27 <= 4)
      {
        v27 = 4;
      }

      *(a1 + 100) = v27;
      operator new[]();
    }

    memcpy((*(a1 + 88) + 4 * v23), *(a2 + 88), 4 * *(a2 + 96));
    *(a1 + 96) += *(a2 + 96);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100092960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100092974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100092988(void *a1)
{
  *a1 = off_100437280;
  if (a1[11])
  {
    operator delete[]();
  }

  if (a1[8])
  {
    operator delete[]();
  }

  if (a1[5])
  {
    operator delete[]();
  }

  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100092A40(void *a1)
{
  sub_100092988(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100092B20(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 10) = 0;
  *(result + 16) = 0;
  *(result + 22) = 0;
  *(result + 26) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100092B44(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (v9 == 2)
          {
            v20 = *(this + 1);
            v19 = *(this + 2);
            goto LABEL_74;
          }

          if (v9 != 5)
          {
            goto LABEL_27;
          }

          result = sub_1000933DC(1, 0x1Au, this, (a1 + 64));
          if (!result)
          {
            return result;
          }

LABEL_91:
          v42 = *(this + 1);
          v15 = *(this + 2);
          if (v42 < v15 && *v42 == 34)
          {
            v16 = v42 + 1;
            *(this + 1) = v16;
LABEL_94:
            v51 = 0;
            if (v16 >= v15 || (v43 = *v16, (v43 & 0x80000000) != 0))
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51))
              {
                return 0;
              }

              v43 = v51;
            }

            else
            {
              v51 = *v16;
              *(this + 1) = v16 + 1;
            }

            v44 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v43);
            while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
            {
              LODWORD(v50) = 0;
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v50))
              {
                return 0;
              }

              v46 = v50;
              v47 = *(a1 + 96);
              v48 = *(a1 + 88);
              if (v47 == *(a1 + 100))
              {
                if (2 * v47 <= v47 + 1)
                {
                  v49 = v47 + 1;
                }

                else
                {
                  v49 = 2 * v47;
                }

                if (v49 <= 4)
                {
                  v49 = 4;
                }

                *(a1 + 100) = v49;
                operator new[]();
              }

              v45 = *(a1 + 88);
              *(a1 + 96) = v47 + 1;
              *(v45 + 4 * v47) = v46;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v44);
            if (*(this + 1) == *(this + 2))
            {
LABEL_111:
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

        else
        {
          if (v8 != 4)
          {
            goto LABEL_27;
          }

          if (v9 == 2)
          {
            v16 = *(this + 1);
            v15 = *(this + 2);
            goto LABEL_94;
          }

          if (v9 != 5)
          {
            goto LABEL_27;
          }

          result = sub_1000933DC(1, 0x22u, this, (a1 + 88));
          if (!result)
          {
            return result;
          }

          if (*(this + 1) == *(this + 2))
          {
            goto LABEL_111;
          }
        }
      }

      if (v8 != 1)
      {
        break;
      }

      if (v9 == 1)
      {
        result = sub_1000931AC(1, 0xAu, this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v18 = *(this + 1);
        v17 = *(this + 2);
        if (v18 < v17)
        {
LABEL_53:
          if (*v18 == 18)
          {
            v14 = v18 + 1;
            *(this + 1) = v14;
            v51 = 0;
            if (v14 >= v17)
            {
              goto LABEL_57;
            }

LABEL_55:
            v27 = *v14;
            if ((v27 & 0x80000000) != 0)
            {
LABEL_57:
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51))
              {
                return 0;
              }

              v27 = v51;
              goto LABEL_59;
            }

            v51 = *v14;
            *(this + 1) = v14 + 1;
LABEL_59:
            v28 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v27);
            while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
            {
              LODWORD(v50) = 0;
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v50))
              {
                return 0;
              }

              v30 = v50;
              v31 = *(a1 + 48);
              v32 = *(a1 + 40);
              if (v31 == *(a1 + 52))
              {
                if (2 * v31 <= v31 + 1)
                {
                  v33 = v31 + 1;
                }

                else
                {
                  v33 = 2 * v31;
                }

                if (v33 <= 4)
                {
                  v33 = 4;
                }

                *(a1 + 52) = v33;
                operator new[]();
              }

              v29 = *(a1 + 40);
              *(a1 + 48) = v31 + 1;
              *(v29 + 4 * v31) = v30;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v28);
LABEL_71:
            v34 = *(this + 1);
            v19 = *(this + 2);
            if (v34 < v19 && *v34 == 26)
            {
              v20 = v34 + 1;
              *(this + 1) = v20;
LABEL_74:
              v51 = 0;
              if (v20 >= v19 || (v35 = *v20, (v35 & 0x80000000) != 0))
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51))
                {
                  return 0;
                }

                v35 = v51;
              }

              else
              {
                v51 = *v20;
                *(this + 1) = v20 + 1;
              }

              v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v35);
              while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
              {
                LODWORD(v50) = 0;
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v50))
                {
                  return 0;
                }

                v38 = v50;
                v39 = *(a1 + 72);
                v40 = *(a1 + 64);
                if (v39 == *(a1 + 76))
                {
                  if (2 * v39 <= v39 + 1)
                  {
                    v41 = v39 + 1;
                  }

                  else
                  {
                    v41 = 2 * v39;
                  }

                  if (v41 <= 4)
                  {
                    v41 = 4;
                  }

                  *(a1 + 76) = v41;
                  operator new[]();
                }

                v37 = *(a1 + 64);
                *(a1 + 72) = v39 + 1;
                *(v37 + 4 * v39) = v38;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v36);
              goto LABEL_91;
            }
          }
        }
      }

      else
      {
        if (v9 != 2)
        {
          goto LABEL_27;
        }

        v51 = 0;
        v11 = *(this + 1);
        if (v11 >= *(this + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51))
          {
            return 0;
          }

          v12 = v51;
        }

        else
        {
          v51 = *v11;
          *(this + 1) = v11 + 1;
        }

        v21 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v12);
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
        {
          v50 = 0;
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v50))
          {
            return 0;
          }

          v24 = *(a1 + 24);
          v25 = *(a1 + 16);
          if (v24 == *(a1 + 28))
          {
            if (2 * v24 <= v24 + 1)
            {
              v26 = v24 + 1;
            }

            else
            {
              v26 = 2 * v24;
            }

            if (v26 <= 4)
            {
              v26 = 4;
            }

            *(a1 + 28) = v26;
            operator new[]();
          }

          v22 = *(a1 + 16);
          v23 = v50;
          *(a1 + 24) = v24 + 1;
          *(v22 + 8 * v24) = v23;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v21);
        v18 = *(this + 1);
        v17 = *(this + 2);
        if (v18 < v17)
        {
          goto LABEL_53;
        }
      }
    }

    if (v8 != 2)
    {
      goto LABEL_27;
    }

    if (v9 == 2)
    {
      v14 = *(this + 1);
      v13 = *(this + 2);
      v51 = 0;
      if (v14 >= v13)
      {
        goto LABEL_57;
      }

      goto LABEL_55;
    }

    if (v9 == 5)
    {
      result = sub_1000933DC(1, 0x12u, this, (a1 + 40));
      if (!result)
      {
        return result;
      }

      goto LABEL_71;
    }

LABEL_27:
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

uint64_t sub_1000931AC(int a1, unsigned int a2, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a4)
{
  v31 = 0;
  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v31);
  if (result)
  {
    v9 = *(a4 + 2);
    v10 = *a4;
    if (v9 == *(a4 + 3))
    {
      if (2 * v9 <= v9 + 1)
      {
        v11 = v9 + 1;
      }

      else
      {
        v11 = 2 * v9;
      }

      if (v11 <= 4)
      {
        v11 = 4;
      }

      *(a4 + 3) = v11;
      operator new[]();
    }

    v12 = *a4;
    v13 = v31;
    v14 = v9 + 1;
    *(a4 + 2) = v9 + 1;
    *(v12 + 8 * v9) = v13;
    v15 = *(this + 1);
    v16 = *(this + 4) - v15;
    if (v16 >= 1)
    {
      v17 = a1 + 8;
      v18 = *(a4 + 3) - v14;
      v19 = v16 / (a1 + 8);
      v20 = v19 >= v18 ? *(a4 + 3) - v14 : v16 / (a1 + 8);
      if (v20 >= 1)
      {
        if (a2 > 0x7F)
        {
          if (a2 >> 14)
          {
            return result;
          }

          v21 = 0;
          v26 = v9 + 2;
          v27 = v12 + 8 * v14;
          v28 = v19;
          if (v19 >= v18)
          {
            v28 = v18;
          }

          while ((a2 & 0x7F | 0x80) == *v15 && a2 >> 7 == v15[1])
          {
            v31 = *(v15 + 2);
            v29 = v31;
            *(a4 + 2) = v26;
            *(v27 + 8 * v21++) = v29;
            ++v26;
            v15 += 10;
            if (v28 == v21)
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
          v21 = 0;
          v22 = v9 + 2;
          v23 = v12 + 8 * v14;
          v24 = v19;
          if (v19 >= v18)
          {
            v24 = *(a4 + 3) - v14;
          }

          while (*v15 == a2)
          {
            v31 = *(v15 + 1);
            v25 = v31;
            *(a4 + 2) = v22;
            *(v23 + 8 * v21) = v25;
            ++v22;
            ++v21;
            v15 += 9;
            if (v24 == v21)
            {
              goto LABEL_29;
            }
          }
        }

        v20 = v21;
LABEL_29:
        if (v20 * v17 >= 1)
        {
          v30 = result;
          wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, v20 * v17);
          return v30;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000933DC(int a1, unsigned int a2, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a4)
{
  v31 = 0;
  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v31);
  if (result)
  {
    v9 = v31;
    v10 = *(a4 + 2);
    v11 = *a4;
    if (v10 == *(a4 + 3))
    {
      if (2 * v10 <= v10 + 1)
      {
        v12 = v10 + 1;
      }

      else
      {
        v12 = 2 * v10;
      }

      if (v12 <= 4)
      {
        v12 = 4;
      }

      *(a4 + 3) = v12;
      operator new[]();
    }

    v13 = *a4;
    v14 = v10 + 1;
    *(a4 + 2) = v10 + 1;
    *(v13 + 4 * v10) = v9;
    v15 = *(this + 1);
    v16 = *(this + 4) - v15;
    if (v16 >= 1)
    {
      v17 = a1 + 4;
      v18 = *(a4 + 3) - v14;
      v19 = v16 / (a1 + 4);
      v20 = v19 >= v18 ? *(a4 + 3) - v14 : v16 / (a1 + 4);
      if (v20 >= 1)
      {
        if (a2 > 0x7F)
        {
          if (a2 >> 14)
          {
            return result;
          }

          v21 = 0;
          v26 = v10 + 2;
          v27 = v13 + 4 * v14;
          v28 = v19;
          if (v19 >= v18)
          {
            v28 = v18;
          }

          while ((a2 & 0x7F | 0x80) == *v15 && a2 >> 7 == v15[1])
          {
            v29 = *(v15 + 2);
            *(a4 + 2) = v26;
            *(v27 + 4 * v21++) = v29;
            ++v26;
            v15 += 6;
            if (v28 == v21)
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
          v21 = 0;
          v22 = v10 + 2;
          v23 = v13 + 4 * v14;
          v24 = v19;
          if (v19 >= v18)
          {
            v24 = *(a4 + 3) - v14;
          }

          while (*v15 == a2)
          {
            v25 = *(v15 + 1);
            *(a4 + 2) = v22;
            *(v23 + 4 * v21) = v25;
            ++v22;
            ++v21;
            v15 += 5;
            if (v24 == v21)
            {
              goto LABEL_29;
            }
          }
        }

        v20 = v21;
LABEL_29:
        if (v20 * v17 >= 1)
        {
          v30 = result;
          wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, v20 * v17);
          return v30;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10009360C(uint64_t result, wireless_diagnostics::google::protobuf::io::CodedOutputStream *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  if (*(result + 24) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0xAu);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v4 + 32));
    if (*(v4 + 24) >= 1)
    {
      v5 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(this, *(*(v4 + 16) + 8 * v5++));
      }

      while (v5 < *(v4 + 24));
    }
  }

  if (*(v4 + 48) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x12u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v4 + 56));
    if (*(v4 + 48) >= 1)
    {
      v6 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(this, *(*(v4 + 40) + 4 * v6++));
      }

      while (v6 < *(v4 + 48));
    }
  }

  if (*(v4 + 72) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x1Au);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v4 + 80));
    if (*(v4 + 72) >= 1)
    {
      v7 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(this, *(*(v4 + 64) + 4 * v7++));
      }

      while (v7 < *(v4 + 72));
    }
  }

  if (*(v4 + 96) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x22u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v4 + 104));
    if (*(v4 + 96) >= 1)
    {
      v8 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(this, *(*(v4 + 88) + 4 * v8++));
      }

      while (v8 < *(v4 + 96));
    }
  }

  v11 = *(v4 + 8);
  v10 = (v4 + 8);
  v9 = v11;
  if (v11 && *v9 != v9[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v10, this, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000937C4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 6) >= 1)
  {
    *a2 = 10;
    v5 = a2 + 1;
    v6 = *(this + 8);
    if (v6 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, v5, a3);
      if (*(this + 6) < 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      *(v3 + 1) = v6;
      v3 = (v3 + 2);
      if (*(this + 6) < 1)
      {
        goto LABEL_8;
      }
    }

    v7 = 0;
    do
    {
      *v3 = *(*(this + 2) + 8 * v7);
      v3 = (v3 + 8);
      ++v7;
    }

    while (v7 < *(this + 6));
  }

LABEL_8:
  if (*(this + 12) <= 0)
  {
    goto LABEL_15;
  }

  *v3 = 18;
  v8 = *(this + 14);
  if (v8 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v3 + 1, a3);
    if (*(this + 12) < 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *(v3 + 1) = v8;
    v3 = (v3 + 2);
    if (*(this + 12) < 1)
    {
      goto LABEL_15;
    }
  }

  v9 = 0;
  do
  {
    *v3 = *(*(this + 5) + 4 * v9);
    v3 = (v3 + 4);
    ++v9;
  }

  while (v9 < *(this + 12));
LABEL_15:
  if (*(this + 18) <= 0)
  {
    goto LABEL_22;
  }

  *v3 = 26;
  v10 = *(this + 20);
  if (v10 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v3 + 1, a3);
    if (*(this + 18) < 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v3 + 1) = v10;
    v3 = (v3 + 2);
    if (*(this + 18) < 1)
    {
      goto LABEL_22;
    }
  }

  v11 = 0;
  do
  {
    *v3 = *(*(this + 8) + 4 * v11);
    v3 = (v3 + 4);
    ++v11;
  }

  while (v11 < *(this + 18));
LABEL_22:
  if (*(this + 24) > 0)
  {
    *v3 = 34;
    v12 = *(this + 26);
    if (v12 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v3 + 1, a3);
      if (*(this + 24) < 1)
      {
        goto LABEL_29;
      }
    }

    else
    {
      *(v3 + 1) = v12;
      v3 = (v3 + 2);
      if (*(this + 24) < 1)
      {
        goto LABEL_29;
      }
    }

    v13 = 0;
    do
    {
      *v3 = *(*(this + 11) + 4 * v13);
      v3 = (v3 + 4);
      ++v13;
    }

    while (v13 < *(this + 24));
  }

LABEL_29:
  v16 = *(this + 1);
  v15 = (this + 8);
  v14 = v16;
  if (!v16 || *v14 == v14[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v15, v3, a3);
}

uint64_t sub_1000939E4(_DWORD *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[6];
  v4 = 8 * v3;
  if (v3 < 1)
  {
    a1[8] = v4;
    v5 = 8 * v3;
    v8 = a1[12];
    v7 = (4 * v8);
    if (v8 < 1)
    {
      goto LABEL_12;
    }
  }

  else if (v4 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v3), a2);
    a1[8] = v4;
    v5 = v9 + 1 + v4;
    v10 = a1[12];
    v7 = (4 * v10);
    if (v10 < 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    a1[8] = v4;
    v5 = v4 + 2;
    v6 = a1[12];
    v7 = (4 * v6);
    if (v6 < 1)
    {
      goto LABEL_12;
    }
  }

  if (v7 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
  }

  else
  {
    v11 = 2;
  }

  v5 += v11;
LABEL_12:
  a1[14] = v7;
  v12 = v5 + v7;
  v13 = a1[18];
  v14 = 4 * v13;
  if (v13 >= 1)
  {
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((4 * v13), a2) + 1;
    }

    else
    {
      v15 = 2;
    }

    v12 += v15;
  }

  a1[20] = v14;
  v16 = v12 + v14;
  v17 = a1[24];
  v18 = 4 * v17;
  if (v17 >= 1)
  {
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((4 * v17), a2) + 1;
    }

    else
    {
      v19 = 2;
    }

    v16 += v19;
  }

  v20 = *(a1 + 1);
  a1[26] = v18;
  v21 = v16 + v18;
  if (v20 && *v20 != v20[1])
  {
    v21 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 2), a2) + v21;
  }

  a1[27] = v21;
  return v21;
}

uint64_t sub_100093B48(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009261C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100093C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100093C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100093C50(uint64_t result, uint64_t a2)
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

uint64_t sub_100093CE4()
{
  v0 = qword_10045CC18;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10008FE9C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CB08;
}

void sub_100093D74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100093D88(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
    LOBYTE(v4) = *(a2 + 32);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 32);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
  {
    v5 = *(a2 + 24);
    *(a1 + 32) |= 1u;
    *(a1 + 24) = v5;
    v4 = *(a2 + 32);
  }

  if ((v4 & 2) != 0)
  {
    *(a1 + 32) |= 2u;
    v6 = *(a1 + 16);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 16);
    if (!v7)
    {
      v7 = *(qword_10045DCC8 + 16);
    }

    sub_10009261C(v6, v7);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100093EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100093F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100093F20(void *a1)
{
  *a1 = off_100437330;
  if (qword_10045DCC8 != a1)
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

void sub_100093FB4(void *a1)
{
  *a1 = off_100437330;
  if (qword_10045DCC8 != a1)
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000940F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 24) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        v5 = *(v3 + 8);
        v4 = (v3 + 8);
        *(v4 + 4) = 0;
        *(v4 + 10) = 0;
        *(v4 + 16) = 0;
        *(v4 + 22) = 0;
        *(v4 + 26) = 0;
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
  *(result + 6) = 0;
  if (v8)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100094170(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
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
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v8 == 2)
        {
          goto LABEL_23;
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

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_14;
      }

      v23 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23);
        if (!result)
        {
          return result;
        }

        v10 = v23;
        if (v23 > 4)
        {
LABEL_19:
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 1, v10);
          goto LABEL_20;
        }
      }

      else
      {
        *(this + 1) = v9 + 1;
        if (v10 > 4)
        {
          goto LABEL_19;
        }
      }

      *(a1 + 32) |= 1u;
      *(a1 + 24) = v10;
LABEL_20:
      v12 = *(this + 1);
    }

    while (v12 >= *(this + 2) || *v12 != 18);
    *(this + 1) = v12 + 1;
LABEL_23:
    *(a1 + 32) |= 2u;
    v13 = *(a1 + 16);
    if (!v13)
    {
      operator new();
    }

    v24 = 0;
    v14 = *(this + 1);
    if (v14 >= *(this + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24))
      {
        return 0;
      }
    }

    else
    {
      v24 = *v14;
      *(this + 1) = v14 + 1;
    }

    v15 = *(this + 14);
    v16 = *(this + 15);
    *(this + 14) = v15 + 1;
    if (v15 >= v16)
    {
      return 0;
    }

    v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v24);
    if (!sub_100092B44(v13, this, v18, v19) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v17);
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

uint64_t sub_10009443C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 24), a2, a4);
    if ((*(v5 + 32) & 2) == 0)
    {
LABEL_3:
      v9 = *(v5 + 8);
      v8 = (v5 + 8);
      v7 = v9;
      if (!v9)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(v5 + 16);
  if (v10)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v10, a2, a4);
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
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(qword_10045DCC8 + 16), a2, a4);
    v12 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v12;
    if (!v12)
    {
      return result;
    }
  }

LABEL_10:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100094500(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 32))
  {
    v8 = *(this + 6);
    *a2 = 8;
    v9 = a2 + 1;
    if ((v8 & 0x80000000) != 0)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v8, v9, a3);
      if ((*(this + 32) & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    else if (v8 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v9, a3);
      if ((*(this + 32) & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *(v3 + 1) = v8;
      v3 = (v3 + 2);
      if ((*(this + 32) & 2) != 0)
      {
        goto LABEL_12;
      }
    }

LABEL_3:
    v7 = *(this + 1);
    v6 = (this + 8);
    v5 = v7;
    if (!v7)
    {
      return v3;
    }

    goto LABEL_18;
  }

  if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_12:
  v10 = *(this + 2);
  if (v10)
  {
    *v3 = 18;
    v11 = v3 + 1;
    v12 = v10[27];
    if (v12 <= 0x7F)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = *(qword_10045DCC8 + 16);
    *v3 = 18;
    v11 = v3 + 1;
    v12 = v10[27];
    if (v12 <= 0x7F)
    {
LABEL_14:
      *(v3 + 1) = v12;
      v3 = sub_1000937C4(v10, (v3 + 2), a3);
      v13 = *(this + 1);
      v6 = (this + 8);
      v5 = v13;
      if (!v13)
      {
        return v3;
      }

      goto LABEL_18;
    }
  }

  v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v11, a3);
  v3 = sub_1000937C4(v10, v14, v15);
  v16 = *(this + 1);
  v6 = (this + 8);
  v5 = v16;
  if (!v16)
  {
    return v3;
  }

LABEL_18:
  if (*v5 == v5[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v6, v3, a3);
}

uint64_t sub_100094648(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    if ((*(a1 + 32) & 1) == 0)
    {
      v4 = 0;
      if ((*(a1 + 32) & 2) == 0)
      {
        goto LABEL_19;
      }

LABEL_13:
      v6 = *(a1 + 16);
      if (v6)
      {
        v7 = sub_1000939E4(v6, a2);
        if (v7 < 0x80)
        {
LABEL_15:
          v8 = 1;
LABEL_18:
          v4 = (v4 + v7 + v8 + 1);
          goto LABEL_19;
        }
      }

      else
      {
        v7 = sub_1000939E4(*(qword_10045DCC8 + 16), a2);
        if (v7 < 0x80)
        {
          goto LABEL_15;
        }
      }

      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
      goto LABEL_18;
    }

    v5 = *(a1 + 24);
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
    if ((*(a1 + 32) & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_19:
  v9 = *(a1 + 8);
  if (v9 && *v9 != v9[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 28) = v4;
  return v4;
}

uint64_t sub_100094740(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100093D88(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100094820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100094834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100094848(uint64_t result, uint64_t a2)
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

uint64_t sub_1000948DC()
{
  v0 = qword_10045CC18;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10008FE9C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CB18;
}

void sub_10009496C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100094980(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v43);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 28);
    v7 = v5 + v4;
    v8 = *(a1 + 16);
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

      *(a1 + 28) = v9;
      operator new[]();
    }

    memcpy((*(a1 + 16) + 4 * v5), *(a2 + 16), 4 * *(a2 + 24));
    *(a1 + 24) += *(a2 + 24);
  }

  v10 = *(a2 + 48);
  if (v10)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 52);
    v13 = v11 + v10;
    v14 = *(a1 + 40);
    if (v12 < v13)
    {
      v15 = 2 * v12;
      if (2 * v12 <= v13)
      {
        v15 = v13;
      }

      if (v15 <= 4)
      {
        v15 = 4;
      }

      *(a1 + 52) = v15;
      operator new[]();
    }

    memcpy((*(a1 + 40) + 4 * v11), *(a2 + 40), 4 * *(a2 + 48));
    *(a1 + 48) += *(a2 + 48);
  }

  v16 = *(a2 + 72);
  if (v16)
  {
    v17 = *(a1 + 72);
    v18 = *(a1 + 76);
    v19 = v17 + v16;
    v20 = *(a1 + 64);
    if (v18 < v19)
    {
      v21 = 2 * v18;
      if (2 * v18 <= v19)
      {
        v21 = v19;
      }

      if (v21 <= 4)
      {
        v21 = 4;
      }

      *(a1 + 76) = v21;
      operator new[]();
    }

    memcpy((*(a1 + 64) + 4 * v17), *(a2 + 64), 4 * *(a2 + 72));
    *(a1 + 72) += *(a2 + 72);
  }

  v22 = *(a2 + 96);
  if (v22)
  {
    v23 = *(a1 + 96);
    v24 = *(a1 + 100);
    v25 = v23 + v22;
    v26 = *(a1 + 88);
    if (v24 < v25)
    {
      v27 = 2 * v24;
      if (2 * v24 <= v25)
      {
        v27 = v25;
      }

      if (v27 <= 4)
      {
        v27 = 4;
      }

      *(a1 + 100) = v27;
      operator new[]();
    }

    memcpy((*(a1 + 88) + 4 * v23), *(a2 + 88), 4 * *(a2 + 96));
    *(a1 + 96) += *(a2 + 96);
  }

  v28 = *(a2 + 120);
  if (v28)
  {
    v29 = *(a1 + 120);
    v30 = *(a1 + 124);
    v31 = v29 + v28;
    v32 = *(a1 + 112);
    if (v30 < v31)
    {
      v33 = 2 * v30;
      if (2 * v30 <= v31)
      {
        v33 = v31;
      }

      if (v33 <= 4)
      {
        v34 = 4;
      }

      else
      {
        v34 = v33;
      }

      *(a1 + 124) = v34;
      operator new[]();
    }

    memcpy((*(a1 + 112) + v29), *(a2 + 112), *(a2 + 120));
    *(a1 + 120) += *(a2 + 120);
  }

  v35 = *(a2 + 144);
  if (v35)
  {
    v36 = *(a1 + 144);
    v37 = *(a1 + 148);
    v38 = v36 + v35;
    v39 = *(a1 + 136);
    if (v37 < v38)
    {
      v40 = 2 * v37;
      if (2 * v37 <= v38)
      {
        v40 = v38;
      }

      if (v40 <= 4)
      {
        v41 = 4;
      }

      else
      {
        v41 = v40;
      }

      *(a1 + 148) = v41;
      operator new[]();
    }

    memcpy((*(a1 + 136) + v36), *(a2 + 136), *(a2 + 144));
    *(a1 + 144) += *(a2 + 144);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}