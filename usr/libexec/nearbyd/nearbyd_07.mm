uint64_t sub_1000858B0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
            if (v8 == 6)
            {
              if (v9 == 1)
              {
                goto LABEL_82;
              }

              goto LABEL_50;
            }

            if (v8 != 7 || v9 != 2)
            {
              goto LABEL_50;
            }

            v12 = *(a1 + 96);
LABEL_86:
            *(a1 + 96) = v12 | 0x40;
            v40 = *(a1 + 64);
            if (!v40)
            {
              operator new();
            }

            v72[0] = 0;
            v41 = *(this + 1);
            if (v41 >= *(this + 2) || *v41 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v72))
              {
                return 0;
              }
            }

            else
            {
              v72[0] = *v41;
              *(this + 1) = v41 + 1;
            }

            v42 = *(this + 14);
            v43 = *(this + 15);
            *(this + 14) = v42 + 1;
            if (v42 >= v43)
            {
              return 0;
            }

            v44 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v72[0]);
            if (!sub_100082C28(v40, this, v45, v46) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v44);
            v47 = *(this + 14);
            v24 = __OFSUB__(v47, 1);
            v48 = v47 - 1;
            if (v48 < 0 == v24)
            {
              *(this + 14) = v48;
            }

            v49 = *(this + 1);
            if (v49 < *(this + 2) && *v49 == 66)
            {
              *(this + 1) = v49 + 1;
LABEL_100:
              *(a1 + 96) |= 0x80u;
              v50 = *(a1 + 72);
              if (!v50)
              {
                operator new();
              }

              v72[0] = 0;
              v51 = *(this + 1);
              if (v51 >= *(this + 2) || *v51 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v72))
                {
                  return 0;
                }
              }

              else
              {
                v72[0] = *v51;
                *(this + 1) = v51 + 1;
              }

              v52 = *(this + 14);
              v53 = *(this + 15);
              *(this + 14) = v52 + 1;
              if (v52 >= v53)
              {
                return 0;
              }

              v54 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v72[0]);
              if (!sub_100082044(v50, this, v55, v56) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v54);
              v57 = *(this + 14);
              v24 = __OFSUB__(v57, 1);
              v58 = v57 - 1;
              if (v58 < 0 == v24)
              {
                *(this + 14) = v58;
              }

              v59 = *(this + 1);
              if (v59 < *(this + 2) && *v59 == 74)
              {
                *(this + 1) = v59 + 1;
                goto LABEL_114;
              }
            }
          }

          else
          {
            if (v8 == 8)
            {
              if (v9 == 2)
              {
                goto LABEL_100;
              }

              goto LABEL_50;
            }

            if (v8 != 9)
            {
              if (v8 == 10 && (TagFallback & 7) == 0)
              {
                v11 = *(this + 1);
                v10 = *(this + 2);
                goto LABEL_128;
              }

              goto LABEL_50;
            }

            if (v9 != 2)
            {
              goto LABEL_50;
            }

LABEL_114:
            *(a1 + 96) |= 0x100u;
            v60 = *(a1 + 80);
            if (!v60)
            {
              operator new();
            }

            v72[0] = 0;
            v61 = *(this + 1);
            if (v61 >= *(this + 2) || *v61 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v72))
              {
                return 0;
              }
            }

            else
            {
              v72[0] = *v61;
              *(this + 1) = v61 + 1;
            }

            v62 = *(this + 14);
            v63 = *(this + 15);
            *(this + 14) = v62 + 1;
            if (v62 >= v63)
            {
              return 0;
            }

            v64 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v72[0]);
            if (!sub_1000849BC(v60, this, v65, v66) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v64);
            v67 = *(this + 14);
            v24 = __OFSUB__(v67, 1);
            v68 = v67 - 1;
            if (v68 < 0 == v24)
            {
              *(this + 14) = v68;
            }

            v69 = *(this + 1);
            v10 = *(this + 2);
            if (v69 < v10 && *v69 == 80)
            {
              v11 = v69 + 1;
              *(this + 1) = v11;
LABEL_128:
              v72[0] = 0;
              if (v11 >= v10 || (v70 = *v11, (v70 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v72);
                if (!result)
                {
                  return result;
                }

                v70 = v72[0];
                v71 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                v71 = v11 + 1;
                *(this + 1) = v71;
              }

              *(a1 + 88) = v70 != 0;
              *(a1 + 96) |= 0x200u;
              if (v71 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

        if (v8 != 1)
        {
          if (v8 != 2 || v9 != 1)
          {
            goto LABEL_50;
          }

          goto LABEL_32;
        }

        if (v9 != 1)
        {
          goto LABEL_50;
        }

        *v72 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v72) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v72;
        *(a1 + 96) |= 1u;
        v13 = *(this + 1);
        if (v13 < *(this + 2) && *v13 == 17)
        {
          *(this + 1) = v13 + 1;
LABEL_32:
          *v72 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v72) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = *v72;
          v14 = *(a1 + 96) | 2;
          *(a1 + 96) = v14;
          v15 = *(this + 1);
          if (v15 < *(this + 2) && *v15 == 26)
          {
            *(this + 1) = v15 + 1;
LABEL_40:
            *(a1 + 96) = v14 | 4;
            v16 = *(a1 + 32);
            if (!v16)
            {
              operator new();
            }

            v72[0] = 0;
            v17 = *(this + 1);
            if (v17 >= *(this + 2) || *v17 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v72))
              {
                return 0;
              }
            }

            else
            {
              v72[0] = *v17;
              *(this + 1) = v17 + 1;
            }

            v18 = *(this + 14);
            v19 = *(this + 15);
            *(this + 14) = v18 + 1;
            if (v18 >= v19)
            {
              return 0;
            }

            v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v72[0]);
            if (!sub_100083618(v16, this, v21, v22) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v20);
            v23 = *(this + 14);
            v24 = __OFSUB__(v23, 1);
            v25 = v23 - 1;
            if (v25 < 0 == v24)
            {
              *(this + 14) = v25;
            }

            v26 = *(this + 1);
            if (v26 < *(this + 2) && *v26 == 34)
            {
              *(this + 1) = v26 + 1;
              goto LABEL_62;
            }
          }
        }
      }

      if (v8 == 3)
      {
        if (v9 != 2)
        {
          goto LABEL_50;
        }

        v14 = *(a1 + 96);
        goto LABEL_40;
      }

      if (v8 != 4)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_50;
      }

LABEL_62:
      *(a1 + 96) |= 8u;
      if (*(a1 + 40) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v28 = *(this + 1);
      if (v28 < *(this + 2) && *v28 == 42)
      {
        *(this + 1) = v28 + 1;
LABEL_68:
        *(a1 + 96) |= 0x10u;
        v29 = *(a1 + 48);
        if (!v29)
        {
          operator new();
        }

        v72[0] = 0;
        v30 = *(this + 1);
        if (v30 >= *(this + 2) || *v30 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v72))
          {
            return 0;
          }
        }

        else
        {
          v72[0] = *v30;
          *(this + 1) = v30 + 1;
        }

        v31 = *(this + 14);
        v32 = *(this + 15);
        *(this + 14) = v31 + 1;
        if (v31 >= v32)
        {
          return 0;
        }

        v33 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v72[0]);
        if (!sub_100084074(v29, this, v34, v35) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v33);
        v36 = *(this + 14);
        v24 = __OFSUB__(v36, 1);
        v37 = v36 - 1;
        if (v37 < 0 == v24)
        {
          *(this + 14) = v37;
        }

        v38 = *(this + 1);
        if (v38 < *(this + 2) && *v38 == 49)
        {
          *(this + 1) = v38 + 1;
LABEL_82:
          *v72 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v72) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 56) = *v72;
          v12 = *(a1 + 96) | 0x20;
          *(a1 + 96) = v12;
          v39 = *(this + 1);
          if (v39 < *(this + 2) && *v39 == 58)
          {
            *(this + 1) = v39 + 1;
            goto LABEL_86;
          }
        }
      }
    }

    if (v8 == 5 && v9 == 2)
    {
      goto LABEL_68;
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

uint64_t sub_100086120(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_20;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 96);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_20:
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(qword_1009F9958 + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v10, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = *(v5 + 40);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 96);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_24:
  v12 = *(v5 + 48);
  if (!v12)
  {
    v12 = *(qword_1009F9958 + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, v12, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 56), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_28:
  v13 = *(v5 + 64);
  if (!v13)
  {
    v13 = *(qword_1009F9958 + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, v13, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_34:
    v15 = *(v5 + 80);
    if (!v15)
    {
      v15 = *(qword_1009F9958 + 80);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(9, v15, a2, a4);
    if ((*(v5 + 96) & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

LABEL_31:
  v14 = *(v5 + 72);
  if (!v14)
  {
    v14 = *(qword_1009F9958 + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, v14, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_34;
  }

LABEL_10:
  if ((v6 & 0x200) != 0)
  {
LABEL_11:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, *(v5 + 88), a2, a4);
  }

LABEL_12:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000862E4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 24);
  if (v6)
  {
    v12 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v12;
    v4 = (a2 + 9);
    v6 = *(this + 24);
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

  v13 = *(this + 3);
  *v4 = 17;
  *(v4 + 1) = v13;
  v4 = (v4 + 9);
  v6 = *(this + 24);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_20:
  v14 = *(this + 4);
  if (!v14)
  {
    v14 = *(qword_1009F9958 + 32);
  }

  *v4 = 26;
  v15 = v14[8];
  if (v15 > 0x7F)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v15;
    v16 = (v4 + 2);
  }

  v4 = sub_1000839A8(v14, v16, a3);
  v6 = *(this + 24);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_26:
  v17 = *(this + 5);
  *v4 = 34;
  v18 = *(v17 + 23);
  if ((v18 & 0x8000000000000000) != 0)
  {
    v18 = *(v17 + 8);
  }

  if (v18 > 0x7F)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v18;
    v19 = v4 + 2;
  }

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
  v6 = *(this + 24);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_38:
  v23 = *(this + 6);
  if (!v23)
  {
    v23 = *(qword_1009F9958 + 48);
  }

  *v4 = 42;
  v24 = v23[9];
  if (v24 > 0x7F)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v24, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v24;
    v25 = v4 + 2;
  }

  v4 = sub_1000842F4(v23, v25, a3);
  v6 = *(this + 24);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  v26 = *(this + 7);
  *v4 = 49;
  *(v4 + 1) = v26;
  v4 = (v4 + 9);
  v6 = *(this + 24);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_51;
  }

LABEL_45:
  v27 = *(this + 8);
  if (!v27)
  {
    v27 = *(qword_1009F9958 + 64);
  }

  *v4 = 58;
  v28 = v27[7];
  if (v28 > 0x7F)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v28, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v28;
    v29 = v4 + 2;
  }

  v4 = sub_100082E48(v27, v29, a3);
  v6 = *(this + 24);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_57:
    v33 = *(this + 10);
    if (!v33)
    {
      v33 = *(qword_1009F9958 + 80);
    }

    *v4 = 74;
    v34 = *(v33 + 48);
    if (v34 > 0x7F)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v34, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v34;
      v35 = v4 + 2;
    }

    v4 = sub_100084CA8(v33, v35, a3);
    if ((*(this + 24) & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

LABEL_51:
  v30 = *(this + 9);
  if (!v30)
  {
    v30 = *(qword_1009F9958 + 72);
  }

  *v4 = 66;
  v31 = v30[15];
  if (v31 > 0x7F)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v31, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v31;
    v32 = v4 + 2;
  }

  v4 = sub_100082454(v30, v32, a3);
  v6 = *(this + 24);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_57;
  }

LABEL_10:
  if ((v6 & 0x200) != 0)
  {
LABEL_11:
    v7 = *(this + 88);
    *v4 = 80;
    *(v4 + 1) = v7;
    v4 = (v4 + 2);
  }

LABEL_12:
  v10 = *(this + 1);
  v9 = (this + 8);
  v8 = v10;
  if (!v10 || *v8 == v8[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v9, v4, a3);
}

uint64_t sub_10008668C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 96);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_48;
  }

  if ((v3 & 2) != 0)
  {
    v4 = (((v3 << 31) >> 31) & 9) + 9;
  }

  else
  {
    v4 = ((v3 << 31) >> 31) & 9;
  }

  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    v10 = *(a1 + 40);
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
      v3 = *(a1 + 96);
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

    v4 += v15 + v11 + 1;
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  v6 = *(a1 + 32);
  if (!v6)
  {
    v6 = *(qword_1009F9958 + 32);
  }

  v7 = sub_100083AB0(v6, a2);
  v8 = v7;
  if (v7 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
  }

  else
  {
    v9 = 1;
  }

  v4 += v8 + v9 + 1;
  v3 = *(a1 + 96);
  if ((v3 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v3 & 0x10) != 0)
  {
LABEL_25:
    v16 = *(a1 + 48);
    if (!v16)
    {
      v16 = *(qword_1009F9958 + 48);
    }

    v17 = sub_100084438(v16, a2);
    v18 = v17;
    if (v17 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
    }

    else
    {
      v19 = 1;
    }

    v4 += v18 + v19 + 1;
    v3 = *(a1 + 96);
  }

LABEL_31:
  if ((v3 & 0x20) != 0)
  {
    v5 = v4 + 9;
  }

  else
  {
    v5 = v4;
  }

  if ((v3 & 0x40) != 0)
  {
    v20 = *(a1 + 64);
    if (!v20)
    {
      v20 = *(qword_1009F9958 + 64);
    }

    v21 = sub_100082F3C(v20, a2);
    v22 = v21;
    if (v21 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2);
    }

    else
    {
      v23 = 1;
    }

    v5 = (v5 + v22 + v23 + 1);
    v3 = *(a1 + 96);
  }

  if ((v3 & 0x80) != 0)
  {
    v24 = *(a1 + 72);
    if (!v24)
    {
      v24 = *(qword_1009F9958 + 72);
    }

    v25 = sub_1000826AC(v24, a2);
    v26 = v25;
    if (v25 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2);
    }

    else
    {
      v27 = 1;
    }

    v5 = (v5 + v26 + v27 + 1);
    v3 = *(a1 + 96);
  }

LABEL_48:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v28 = *(a1 + 80);
      if (!v28)
      {
        v28 = *(qword_1009F9958 + 80);
      }

      v29 = sub_100084E28(v28, a2);
      v30 = v29;
      if (v29 >= 0x80)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2);
      }

      else
      {
        v31 = 1;
      }

      LODWORD(v5) = v5 + v30 + v31 + 1;
      v3 = *(a1 + 96);
    }

    v5 = ((v3 >> 8) & 2) + v5;
  }

  v32 = *(a1 + 8);
  if (v32 && *v32 != v32[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 92) = v5;
  return v5;
}

uint64_t sub_1000868F4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100085158(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000869C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000869E0(uint64_t result, uint64_t a2)
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

uint64_t sub_100086A74()
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

  return qword_1009ED540;
}

void sub_100086B08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100086B1C(uint64_t a1)
{
  *a1 = off_10098DCF0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return a1;
}

uint64_t sub_100086B94(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  v4 = *(a2 + 116);
  if (v4)
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      *(a1 + 116) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 116);
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

    else if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 24);
    *(a1 + 116) |= 2u;
    *(a1 + 24) = v6;
    v4 = *(a2 + 116);
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
    v7 = *(a2 + 32);
    *(a1 + 116) |= 4u;
    *(a1 + 32) = v7;
    v4 = *(a2 + 116);
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
    v8 = *(a2 + 40);
    *(a1 + 116) |= 8u;
    *(a1 + 40) = v8;
    v4 = *(a2 + 116);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    v9 = *(a2 + 48);
    *(a1 + 116) |= 0x10u;
    *(a1 + 48) = v9;
    v4 = *(a2 + 116);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

LABEL_18:
    v10 = *(a2 + 56);
    *(a1 + 116) |= 0x20u;
    *(a1 + 56) = v10;
    v4 = *(a2 + 116);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }

LABEL_19:
    v11 = *(a2 + 64);
    *(a1 + 116) |= 0x40u;
    *(a1 + 64) = v11;
    v4 = *(a2 + 116);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_23;
    }

LABEL_20:
    v12 = *(a2 + 72);
    *(a1 + 116) |= 0x80u;
    v13 = *(a1 + 72);
    if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v13, v12);
    v4 = *(a2 + 116);
  }

LABEL_23:
  if ((v4 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = *(a2 + 80);
    *(a1 + 116) |= 0x100u;
    *(a1 + 80) = v16;
    v4 = *(a2 + 116);
    if ((v4 & 0x200) == 0)
    {
LABEL_26:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_27;
      }

LABEL_32:
      v18 = *(a2 + 96);
      *(a1 + 116) |= 0x400u;
      *(a1 + 96) = v18;
      if ((*(a2 + 116) & 0x800) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_28;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_26;
  }

  v17 = *(a2 + 88);
  *(a1 + 116) |= 0x200u;
  *(a1 + 88) = v17;
  v4 = *(a2 + 116);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_32;
  }

LABEL_27:
  if ((v4 & 0x800) != 0)
  {
LABEL_28:
    v14 = *(a2 + 104);
    *(a1 + 116) |= 0x800u;
    *(a1 + 104) = v14;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100086DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100086DFC(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_10098DCF0;
  v2 = (a1 + 8);
  sub_100086E5C(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

uint64_t sub_100086E5C(uint64_t result)
{
  v1 = *(result + 72);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return result;
}

void sub_100086ED4(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_100086DFC(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100086F78(uint64_t a1)
{
  v1 = *(a1 + 116);
  if (v1)
  {
    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
    if (v1 < 0)
    {
      v2 = *(a1 + 72);
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

  if (*(a1 + 117))
  {
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
  }

  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 27) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100086FEC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 <= 6)
          {
            break;
          }

          if (TagFallback >> 3 > 9)
          {
            if (v8 == 10)
            {
              if (v9 == 1)
              {
                goto LABEL_78;
              }

              goto LABEL_83;
            }

            if (v8 == 11)
            {
              if (v9 == 1)
              {
                goto LABEL_86;
              }

              goto LABEL_83;
            }

            if (v8 != 12 || v9 != 1)
            {
              goto LABEL_83;
            }

LABEL_90:
            v23 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v23) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 104) = v23;
            *(a1 + 116) |= 0x800u;
            if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }

          else
          {
            if (v8 == 7)
            {
              if (v9 == 1)
              {
                goto LABEL_64;
              }

              goto LABEL_83;
            }

            if (v8 != 8)
            {
              if (v8 == 9 && v9 == 1)
              {
                goto LABEL_74;
              }

              goto LABEL_83;
            }

            if (v9 != 2)
            {
              goto LABEL_83;
            }

            v14 = *(a1 + 116);
LABEL_68:
            *(a1 + 116) = v14 | 0x80;
            if (*(a1 + 72) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v19 = *(this + 1);
            if (v19 < *(this + 2) && *v19 == 73)
            {
              *(this + 1) = v19 + 1;
LABEL_74:
              v23 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v23) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 80) = v23;
              *(a1 + 116) |= 0x100u;
              v20 = *(this + 1);
              if (v20 < *(this + 2) && *v20 == 81)
              {
                *(this + 1) = v20 + 1;
LABEL_78:
                v23 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v23) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 88) = v23;
                *(a1 + 116) |= 0x200u;
                v21 = *(this + 1);
                if (v21 < *(this + 2) && *v21 == 89)
                {
                  *(this + 1) = v21 + 1;
LABEL_86:
                  v23 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v23) & 1) == 0)
                  {
                    return 0;
                  }

                  *(a1 + 96) = v23;
                  *(a1 + 116) |= 0x400u;
                  v22 = *(this + 1);
                  if (v22 < *(this + 2) && *v22 == 97)
                  {
                    *(this + 1) = v22 + 1;
                    goto LABEL_90;
                  }
                }
              }
            }
          }
        }

        if (TagFallback >> 3 > 3)
        {
          if (v8 == 4)
          {
            if (v9 == 1)
            {
              goto LABEL_49;
            }
          }

          else if (v8 == 5)
          {
            if (v9 == 1)
            {
              goto LABEL_56;
            }
          }

          else if (v8 == 6 && v9 == 1)
          {
            goto LABEL_60;
          }

          goto LABEL_83;
        }

        if (v8 != 1)
        {
          break;
        }

        if (v9 != 1)
        {
          goto LABEL_83;
        }

        v23 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v23) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v23;
        *(a1 + 116) |= 1u;
        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 17)
        {
          *(this + 1) = v10 + 1;
          goto LABEL_41;
        }
      }

      if (v8 != 2)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_83;
      }

LABEL_41:
      v23 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v23) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 24) = v23;
      *(a1 + 116) |= 2u;
      v11 = *(this + 1);
      if (v11 < *(this + 2) && *v11 == 25)
      {
        *(this + 1) = v11 + 1;
LABEL_45:
        v23 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v23) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = v23;
        *(a1 + 116) |= 4u;
        v12 = *(this + 1);
        if (v12 < *(this + 2) && *v12 == 33)
        {
          *(this + 1) = v12 + 1;
LABEL_49:
          v23 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v23) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 40) = v23;
          *(a1 + 116) |= 8u;
          v13 = *(this + 1);
          if (v13 < *(this + 2) && *v13 == 41)
          {
            *(this + 1) = v13 + 1;
LABEL_56:
            v23 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v23) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 48) = v23;
            *(a1 + 116) |= 0x10u;
            v15 = *(this + 1);
            if (v15 < *(this + 2) && *v15 == 49)
            {
              *(this + 1) = v15 + 1;
LABEL_60:
              v23 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v23) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 56) = v23;
              *(a1 + 116) |= 0x20u;
              v16 = *(this + 1);
              if (v16 < *(this + 2) && *v16 == 57)
              {
                *(this + 1) = v16 + 1;
LABEL_64:
                v23 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v23) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 64) = v23;
                v14 = *(a1 + 116) | 0x40;
                *(a1 + 116) = v14;
                v17 = *(this + 1);
                if (v17 < *(this + 2) && *v17 == 66)
                {
                  *(this + 1) = v17 + 1;
                  goto LABEL_68;
                }
              }
            }
          }
        }
      }
    }

    if (v8 == 3 && v9 == 1)
    {
      goto LABEL_45;
    }

LABEL_83:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_100087534(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 116);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v5 = *(v4 + 116);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  v5 = *(v4 + 116);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 32), a3);
  v5 = *(v4 + 116);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 40), a3);
  v5 = *(v4 + 116);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v4 + 48), a3);
  v5 = *(v4 + 116);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v4 + 56), a3);
  v5 = *(v4 + 116);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v4 + 64), a3);
  v5 = *(v4 + 116);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  v9 = *(v4 + 72);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v5 = *(v4 + 116);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v4 + 80), a3);
  v5 = *(v4 + 116);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_30:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v4 + 96), a3);
    if ((*(v4 + 116) & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v4 + 88), a3);
  v5 = *(v4 + 116);
  if ((v5 & 0x400) != 0)
  {
    goto LABEL_30;
  }

LABEL_12:
  if ((v5 & 0x800) != 0)
  {
LABEL_13:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v4 + 104), a3);
  }

LABEL_14:
  v8 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

uint64_t sub_1000876E0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 29);
  if (v5)
  {
    v11 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v11;
    a2 += 9;
    v5 = *(this + 29);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v12 = *(this + 3);
  *a2 = 17;
  *(a2 + 1) = v12;
  a2 += 9;
  v5 = *(this + 29);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  v13 = *(this + 4);
  *a2 = 25;
  *(a2 + 1) = v13;
  a2 += 9;
  v5 = *(this + 29);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  v14 = *(this + 5);
  *a2 = 33;
  *(a2 + 1) = v14;
  a2 += 9;
  v5 = *(this + 29);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  v15 = *(this + 6);
  *a2 = 41;
  *(a2 + 1) = v15;
  a2 += 9;
  v5 = *(this + 29);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  v16 = *(this + 7);
  *a2 = 49;
  *(a2 + 1) = v16;
  a2 += 9;
  v5 = *(this + 29);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  v17 = *(this + 8);
  *a2 = 57;
  *(a2 + 1) = v17;
  a2 += 9;
  v5 = *(this + 29);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_27:
  v18 = *(this + 9);
  *a2 = 66;
  v19 = *(v18 + 23);
  if ((v19 & 0x8000000000000000) != 0)
  {
    v19 = *(v18 + 8);
  }

  if (v19 > 0x7F)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, a2 + 1, a3);
  }

  else
  {
    *(a2 + 1) = v19;
    v20 = a2 + 2;
  }

  v21 = *(v18 + 23);
  if (v21 >= 0)
  {
    v22 = v18;
  }

  else
  {
    v22 = *v18;
  }

  if (v21 >= 0)
  {
    v23 = *(v18 + 23);
  }

  else
  {
    v23 = *(v18 + 8);
  }

  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v22, v23, v20, a4);
  v5 = *(this + 29);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  v24 = *(this + 10);
  *a2 = 73;
  *(a2 + 1) = v24;
  a2 += 9;
  v5 = *(this + 29);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_41:
    v26 = *(this + 12);
    *a2 = 89;
    *(a2 + 1) = v26;
    a2 += 9;
    if ((*(this + 29) & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_40:
  v25 = *(this + 11);
  *a2 = 81;
  *(a2 + 1) = v25;
  a2 += 9;
  v5 = *(this + 29);
  if ((v5 & 0x400) != 0)
  {
    goto LABEL_41;
  }

LABEL_12:
  if ((v5 & 0x800) != 0)
  {
LABEL_13:
    v6 = *(this + 13);
    *a2 = 97;
    *(a2 + 1) = v6;
    a2 += 9;
  }

LABEL_14:
  v9 = *(this + 1);
  v8 = (this + 8);
  v7 = v9;
  if (!v9 || *v7 == v7[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v8, a2, a3);
}

uint64_t sub_100087B6C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 116);
  if (v3)
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

    if ((v3 & 0x80) != 0)
    {
      v6 = *(a1 + 72);
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
        v3 = *(a1 + 116);
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

      v5 = (v5 + v11 + v7 + 1);
    }
  }

  else
  {
    v5 = 0;
  }

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
      v5 = v12 + 9;
    }

    else
    {
      v5 = v12;
    }
  }

  v13 = *(a1 + 8);
  if (v13 && *v13 != v13[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 112) = v5;
  return v5;
}

uint64_t sub_100087CB4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100086B94(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100087D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100087DA0(uint64_t result, uint64_t a2)
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

uint64_t sub_100087E34()
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

  return qword_1009ED550;
}

void sub_100087EC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_100087EDC(void *a1)
{
  *a1 = off_10098DDA0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  a1[4] = 0;
  return a1;
}

uint64_t sub_100087F4C(uint64_t a1, uint64_t a2)
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
      v5 = *(a2 + 16);
      *(a1 + 36) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 36);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
        }

LABEL_10:
        v7 = *(a2 + 24);
        *(a1 + 36) |= 4u;
        v8 = *(a1 + 24);
        if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v8, v7);
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 20);
    *(a1 + 36) |= 2u;
    *(a1 + 20) = v6;
    if ((*(a2 + 36) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_10;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100088070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100088088(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_10098DDA0;
  v2 = (a1 + 8);
  sub_1000880E8(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

uint64_t sub_1000880E8(uint64_t result)
{
  v1 = *(result + 24);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return result;
}

void sub_100088160(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_100088088(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100088204(uint64_t a1)
{
  v1 = *(a1 + 36);
  if (v1)
  {
    *(a1 + 16) = 0;
    if ((v1 & 4) != 0)
    {
      v2 = *(a1 + 24);
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

  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10008825C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v9 != 2)
        {
          goto LABEL_16;
        }

        v15 = *(a1 + 36);
LABEL_33:
        *(a1 + 36) = v15 | 4;
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

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
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

      *(a1 + 36) |= 1u;
      if (v13 < v10 && *v13 == 16)
      {
        v14 = v13 + 1;
        *(this + 1) = v14;
LABEL_25:
        if (v14 >= v10 || (v16 = *v14, v16 < 0))
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
          v17 = v14 + 1;
          *(this + 1) = v17;
        }

        v15 = *(a1 + 36) | 2;
        *(a1 + 36) = v15;
        if (v17 < v10 && *v17 == 26)
        {
          *(this + 1) = v17 + 1;
          goto LABEL_33;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v14 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_25;
    }

LABEL_16:
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

uint64_t sub_100088470(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 20), a2, a4);
    if ((*(v5 + 36) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 16), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v6 & 4) != 0)
  {
LABEL_4:
    v7 = *(v5 + 24);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

LABEL_5:
  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100088520(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  if (*(this + 36))
  {
    v6 = *(this + 4);
    *a2 = 8;
    v7 = a2 + 1;
    if (v6 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, v7, a3);
    }

    else
    {
      *(v4 + 1) = v6;
      v4 = (v4 + 2);
    }
  }

  if ((*(this + 36) & 2) != 0)
  {
    v8 = *(this + 5);
    *v4 = 16;
    if (v8 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v8;
      v4 = (v4 + 2);
    }
  }

  if ((*(this + 36) & 4) != 0)
  {
    v9 = *(this + 3);
    *v4 = 26;
    v10 = *(v9 + 23);
    if ((v10 & 0x8000000000000000) != 0)
    {
      v10 = *(v9 + 8);
    }

    if (v10 > 0x7F)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v10;
      v11 = v4 + 2;
    }

    v12 = *(v9 + 23);
    if (v12 >= 0)
    {
      v13 = v9;
    }

    else
    {
      v13 = *v9;
    }

    if (v12 >= 0)
    {
      v14 = *(v9 + 23);
    }

    else
    {
      v14 = *(v9 + 8);
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v13, v14, v11, a4);
  }

  v17 = *(this + 1);
  v16 = (this + 8);
  v15 = v17;
  if (!v17 || *v15 == v15[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v16, v4, a3);
}

uint64_t sub_10008864C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_24;
  }

  if (*(a1 + 36))
  {
    v5 = *(a1 + 16);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 36);
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
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(a1 + 20);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 36);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 24);
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
  v14 = *(a1 + 8);
  if (v14 && *v14 != v14[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 32) = v4;
  return v4;
}

uint64_t sub_10008875C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100087F4C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100088830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100088848(uint64_t result, uint64_t a2)
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

uint64_t sub_1000888DC()
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

  return qword_1009ED560;
}

void sub_100088970(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100088984(uint64_t a1)
{
  *a1 = off_10098DE50;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_1000889F0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  sub_1000890C8((a1 + 16), a2 + 16);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100088A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100088A90(uint64_t *a1)
{
  *a1 = off_10098DE50;
  sub_100077C08(a1 + 2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100088AF4(uint64_t *a1)
{
  sub_100088A90(a1);

  operator delete();
}

uint64_t sub_100088B98(uint64_t a1)
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

uint64_t sub_100088BEC(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          sub_1000909B0();
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
        if (!sub_10008825C(v11, this, v16, v17) || *(this + 36) != 1)
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

uint64_t sub_100088DD4(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100088E70(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(this + 6) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(this + 2) + 8 * v6);
      *a2 = 10;
      v8 = v7[8];
      if (v8 > 0x7F)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, a2 + 1, a3);
      }

      else
      {
        *(a2 + 1) = v8;
        v9 = (a2 + 2);
      }

      a2 = sub_100088520(v7, v9, a3, a4);
      ++v6;
    }

    while (v6 < *(this + 6));
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

uint64_t sub_100088F3C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_10008864C(*(*(a1 + 16) + 8 * v4), a2);
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

uint64_t sub_100088FDC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000889F0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000890B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000890C8(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_1000909B0();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_100087F4C(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_1000891F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100089208(uint64_t result, uint64_t a2)
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

uint64_t sub_10008929C()
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

  return qword_1009ED570;
}

void sub_100089330(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_100089344(void *a1)
{
  *a1 = off_10098DF00;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  a1[3] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  a1[4] = 0;
  return a1;
}

uint64_t sub_1000893AC(uint64_t a1, uint64_t a2)
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
      v5 = *(a2 + 16);
      *(a1 + 36) |= 1u;
      v6 = *(a1 + 16);
      if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 36);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 24);
      *(a1 + 36) |= 2u;
      v8 = *(a1 + 24);
      if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000894DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000894F4(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_10098DF00;
  v2 = (a1 + 8);
  sub_10007A870(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100089558(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_1000894F4(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000895FC(uint64_t a1)
{
  if (*(a1 + 36))
  {
    if (*(a1 + 36))
    {
      v1 = *(a1 + 16);
      if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v1 + 23) < 0)
        {
          **v1 = 0;
          *(v1 + 8) = 0;
        }

        else
        {
          *v1 = 0;
          *(v1 + 23) = 0;
        }
      }
    }

    if ((*(a1 + 36) & 2) != 0)
    {
      v2 = *(a1 + 24);
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

  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100089684(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        goto LABEL_18;
      }

      *(a1 + 36) |= 1u;
      if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v10 = *(a1 + 16);
      if ((*(v10 + 23) & 0x8000000000000000) != 0)
      {
        v11 = *v10;
        v12 = *(*(a1 + 16) + 8);
      }

      wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
      v13 = *(this + 1);
      if (v13 < *(this + 2) && *v13 == 18)
      {
        *(this + 1) = v13 + 1;
LABEL_21:
        *(a1 + 36) |= 2u;
        if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v14 = *(a1 + 24);
        if ((*(v14 + 23) & 0x8000000000000000) != 0)
        {
          v15 = *v14;
          v16 = *(*(a1 + 24) + 8);
        }

        wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
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
      goto LABEL_21;
    }

LABEL_18:
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

uint64_t sub_10008985C(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 36);
  if (v5)
  {
    v6 = *(this + 16);
    if ((*(v6 + 23) & 0x8000000000000000) != 0)
    {
      v7 = *v6;
      v8 = *(*(v4 + 16) + 8);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v9 = *(v4 + 16);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v5 = *(v4 + 36);
  }

  if ((v5 & 2) != 0)
  {
    v10 = *(v4 + 24);
    if ((*(v10 + 23) & 0x8000000000000000) != 0)
    {
      v11 = *v10;
      v12 = *(*(v4 + 24) + 8);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v13 = *(v4 + 24);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  v16 = *(v4 + 8);
  v15 = (v4 + 8);
  v14 = v16;
  if (v16 && *v14 != v14[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v15, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100089918(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v5 = *(this + 9);
  if (v5)
  {
    v6 = *(this + 2);
    if ((*(v6 + 23) & 0x8000000000000000) != 0)
    {
      v7 = *v6;
      v8 = *(*(this + 2) + 8);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v11 = *(this + 2);
    *a2 = 10;
    v12 = *(v11 + 23);
    if ((v12 & 0x8000000000000000) != 0)
    {
      v12 = *(v11 + 8);
    }

    if (v12 > 0x7F)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, a2 + 1, v9);
    }

    else
    {
      *(a2 + 1) = v12;
      v13 = a2 + 2;
    }

    v14 = *(v11 + 23);
    if (v14 >= 0)
    {
      v15 = v11;
    }

    else
    {
      v15 = *v11;
    }

    if (v14 >= 0)
    {
      v16 = *(v11 + 23);
    }

    else
    {
      v16 = *(v11 + 8);
    }

    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v15, v16, v13, v10);
    v5 = *(this + 9);
  }

  if ((v5 & 2) != 0)
  {
    v17 = *(this + 3);
    if ((*(v17 + 23) & 0x8000000000000000) != 0)
    {
      v18 = *v17;
      v19 = *(*(this + 3) + 8);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v22 = *(this + 3);
    *a2 = 18;
    v23 = *(v22 + 23);
    if ((v23 & 0x8000000000000000) != 0)
    {
      v23 = *(v22 + 8);
    }

    if (v23 > 0x7F)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, a2 + 1, v20);
    }

    else
    {
      *(a2 + 1) = v23;
      v24 = a2 + 2;
    }

    v25 = *(v22 + 23);
    if (v25 >= 0)
    {
      v26 = v22;
    }

    else
    {
      v26 = *v22;
    }

    if (v25 >= 0)
    {
      v27 = *(v22 + 23);
    }

    else
    {
      v27 = *(v22 + 8);
    }

    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v26, v27, v24, v21);
  }

  v30 = *(this + 1);
  v29 = (this + 8);
  v28 = v30;
  if (!v30 || *v28 == v28[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v29, a2, a3);
}

uint64_t sub_100089A7C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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

uint64_t sub_100089B90(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000893AC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100089C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100089C7C(uint64_t result, uint64_t a2)
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

uint64_t sub_100089D10()
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

  return qword_1009ED580;
}

void sub_100089DA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100089DB8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v126);
  }

  v4 = *(a2 + 496);
  if (v4)
  {
    if (v4)
    {
      *(a1 + 496) |= 1u;
      v5 = *(a1 + 16);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 16);
      if (!v6)
      {
        v6 = *(qword_1009F98E0 + 16);
      }

      sub_10007A6C8(v5, v6);
      v4 = *(a2 + 496);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 496) |= 2u;
      v7 = *(a1 + 24);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 24);
      if (!v8)
      {
        v8 = *(qword_1009F98E0 + 24);
      }

      sub_1000CFE9C(v7, v8);
      v4 = *(a2 + 496);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 496) |= 4u;
      v9 = *(a1 + 32);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 32);
      if (!v10)
      {
        v10 = *(qword_1009F98E0 + 32);
      }

      sub_1000D11A4(v9, v10);
      v4 = *(a2 + 496);
    }

    if ((v4 & 8) != 0)
    {
      *(a1 + 496) |= 8u;
      v11 = *(a1 + 40);
      if (!v11)
      {
        operator new();
      }

      v12 = *(a2 + 40);
      if (!v12)
      {
        v12 = *(qword_1009F98E0 + 40);
      }

      sub_1000D1A94(v11, v12);
      v4 = *(a2 + 496);
    }

    if ((v4 & 0x10) != 0)
    {
      *(a1 + 496) |= 0x10u;
      v13 = *(a1 + 48);
      if (!v13)
      {
        operator new();
      }

      v14 = *(a2 + 48);
      if (!v14)
      {
        v14 = *(qword_1009F98E0 + 48);
      }

      sub_100153294(v13, v14);
      v4 = *(a2 + 496);
    }

    if ((v4 & 0x20) != 0)
    {
      v15 = *(a2 + 488);
      if (!sub_100079C8C(v15))
      {
        sub_10049D8A8();
      }

      *(a1 + 496) |= 0x20u;
      *(a1 + 488) = v15;
      v4 = *(a2 + 496);
    }

    if ((v4 & 0x40) != 0)
    {
      *(a1 + 496) |= 0x40u;
      v16 = *(a1 + 56);
      if (!v16)
      {
        operator new();
      }

      v17 = *(a2 + 56);
      if (!v17)
      {
        v17 = *(qword_1009F98E0 + 56);
      }

      sub_10007B1EC(v16, v17);
      v4 = *(a2 + 496);
    }

    if ((v4 & 0x80) != 0)
    {
      *(a1 + 496) |= 0x80u;
      v18 = *(a1 + 64);
      if (!v18)
      {
        operator new();
      }

      v19 = *(a2 + 64);
      if (!v19)
      {
        v19 = *(qword_1009F98E0 + 64);
      }

      sub_10007CA90(v18, v19);
      v4 = *(a2 + 496);
    }
  }

  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      *(a1 + 496) |= 0x100u;
      v20 = *(a1 + 72);
      if (!v20)
      {
        operator new();
      }

      v21 = *(a2 + 72);
      if (!v21)
      {
        v21 = *(qword_1009F98E0 + 72);
      }

      sub_10007DB64(v20, v21);
      v4 = *(a2 + 496);
    }

    if ((v4 & 0x200) != 0)
    {
      *(a1 + 496) |= 0x200u;
      v22 = *(a1 + 80);
      if (!v22)
      {
        operator new();
      }

      v23 = *(a2 + 80);
      if (!v23)
      {
        v23 = *(qword_1009F98E0 + 80);
      }

      sub_10007E4D8(v22, v23);
      v4 = *(a2 + 496);
    }

    if ((v4 & 0x400) != 0)
    {
      *(a1 + 496) |= 0x400u;
      v24 = *(a1 + 88);
      if (!v24)
      {
        operator new();
      }

      v25 = *(a2 + 88);
      if (!v25)
      {
        v25 = *(qword_1009F98E0 + 88);
      }

      sub_10007FDB0(v24, v25);
      v4 = *(a2 + 496);
    }

    if ((v4 & 0x800) != 0)
    {
      *(a1 + 496) |= 0x800u;
      v26 = *(a1 + 96);
      if (!v26)
      {
        operator new();
      }

      v27 = *(a2 + 96);
      if (!v27)
      {
        v27 = *(qword_1009F98E0 + 96);
      }

      sub_100080790(v26, v27);
      v4 = *(a2 + 496);
    }

    if ((v4 & 0x1000) != 0)
    {
      *(a1 + 496) |= 0x1000u;
      v28 = *(a1 + 104);
      if (!v28)
      {
        operator new();
      }

      v29 = *(a2 + 104);
      if (!v29)
      {
        v29 = *(qword_1009F98E0 + 104);
      }

      sub_1000811A0(v28, v29);
      v4 = *(a2 + 496);
    }

    if ((v4 & 0x2000) != 0)
    {
      *(a1 + 496) |= 0x2000u;
      v30 = *(a1 + 112);
      if (!v30)
      {
        operator new();
      }

      v31 = *(a2 + 112);
      if (!v31)
      {
        v31 = *(qword_1009F98E0 + 112);
      }

      sub_1000FD33C(v30, v31);
      v4 = *(a2 + 496);
    }

    if ((v4 & 0x4000) != 0)
    {
      *(a1 + 496) |= 0x4000u;
      v32 = *(a1 + 120);
      if (!v32)
      {
        operator new();
      }

      v33 = *(a2 + 120);
      if (!v33)
      {
        v33 = *(qword_1009F98E0 + 120);
      }

      sub_10011ACB8(v32, v33);
      v4 = *(a2 + 496);
    }

    if ((v4 & 0x8000) != 0)
    {
      *(a1 + 496) |= 0x8000u;
      v34 = *(a1 + 128);
      if (!v34)
      {
        operator new();
      }

      v35 = *(a2 + 128);
      if (!v35)
      {
        v35 = *(qword_1009F98E0 + 128);
      }

      sub_100123698(v34, v35);
      v4 = *(a2 + 496);
    }
  }

  if ((v4 & 0xFF0000) != 0)
  {
    if ((v4 & 0x10000) != 0)
    {
      *(a1 + 496) |= 0x10000u;
      v36 = *(a1 + 136);
      if (!v36)
      {
        operator new();
      }

      v37 = *(a2 + 136);
      if (!v37)
      {
        v37 = *(qword_1009F98E0 + 136);
      }

      sub_100137E60(v36, v37);
      v4 = *(a2 + 496);
    }

    if ((v4 & 0x20000) != 0)
    {
      *(a1 + 496) |= 0x20000u;
      v38 = *(a1 + 144);
      if (!v38)
      {
        operator new();
      }

      v39 = *(a2 + 144);
      if (!v39)
      {
        v39 = *(qword_1009F98E0 + 144);
      }

      sub_10010DB30(v38, v39);
      v4 = *(a2 + 496);
    }

    if ((v4 & 0x40000) != 0)
    {
      *(a1 + 496) |= 0x40000u;
      v40 = *(a1 + 152);
      if (!v40)
      {
        operator new();
      }

      v41 = *(a2 + 152);
      if (!v41)
      {
        v41 = *(qword_1009F98E0 + 152);
      }

      sub_10011F4C0(v40, v41);
      v4 = *(a2 + 496);
    }

    if ((v4 & 0x80000) != 0)
    {
      *(a1 + 496) |= 0x80000u;
      v42 = *(a1 + 160);
      if (!v42)
      {
        operator new();
      }

      v43 = *(a2 + 160);
      if (!v43)
      {
        v43 = *(qword_1009F98E0 + 160);
      }

      sub_1001227F8(v42, v43);
      v4 = *(a2 + 496);
    }

    if ((v4 & 0x100000) != 0)
    {
      *(a1 + 496) |= 0x100000u;
      v44 = *(a1 + 168);
      if (!v44)
      {
        operator new();
      }

      v45 = *(a2 + 168);
      if (!v45)
      {
        v45 = *(qword_1009F98E0 + 168);
      }

      sub_1001247A8(v44, v45);
      v4 = *(a2 + 496);
    }

    if ((v4 & 0x200000) != 0)
    {
      *(a1 + 496) |= 0x200000u;
      v46 = *(a1 + 176);
      if (!v46)
      {
        operator new();
      }

      v47 = *(a2 + 176);
      if (!v47)
      {
        v47 = *(qword_1009F98E0 + 176);
      }

      sub_100125E24(v46, v47);
      v4 = *(a2 + 496);
    }

    if ((v4 & 0x400000) != 0)
    {
      *(a1 + 496) |= 0x400000u;
      v48 = *(a1 + 184);
      if (!v48)
      {
        operator new();
      }

      v49 = *(a2 + 184);
      if (!v49)
      {
        v49 = *(qword_1009F98E0 + 184);
      }

      sub_100126860(v48, v49);
      v4 = *(a2 + 496);
    }

    if ((v4 & 0x800000) != 0)
    {
      *(a1 + 496) |= 0x800000u;
      v50 = *(a1 + 192);
      if (!v50)
      {
        operator new();
      }

      v51 = *(a2 + 192);
      if (!v51)
      {
        v51 = *(qword_1009F98E0 + 192);
      }

      sub_100129494(v50, v51);
      v4 = *(a2 + 496);
    }
  }

  if (HIBYTE(v4))
  {
    if ((v4 & 0x1000000) != 0)
    {
      *(a1 + 496) |= 0x1000000u;
      v52 = *(a1 + 200);
      if (!v52)
      {
        operator new();
      }

      v53 = *(a2 + 200);
      if (!v53)
      {
        v53 = *(qword_1009F98E0 + 200);
      }

      sub_10012B794(v52, v53);
      v4 = *(a2 + 496);
    }

    if ((v4 & 0x2000000) != 0)
    {
      *(a1 + 496) |= 0x2000000u;
      v54 = *(a1 + 208);
      if (!v54)
      {
        operator new();
      }

      v55 = *(a2 + 208);
      if (!v55)
      {
        v55 = *(qword_1009F98E0 + 208);
      }

      sub_10012D360(v54, v55);
      v4 = *(a2 + 496);
    }

    if ((v4 & 0x4000000) != 0)
    {
      *(a1 + 496) |= 0x4000000u;
      v56 = *(a1 + 216);
      if (!v56)
      {
        operator new();
      }

      v57 = *(a2 + 216);
      if (!v57)
      {
        v57 = *(qword_1009F98E0 + 216);
      }

      sub_10012B794(v56, v57);
      v4 = *(a2 + 496);
    }

    if ((v4 & 0x8000000) != 0)
    {
      *(a1 + 496) |= 0x8000000u;
      v58 = *(a1 + 224);
      if (!v58)
      {
        operator new();
      }

      v59 = *(a2 + 224);
      if (!v59)
      {
        v59 = *(qword_1009F98E0 + 224);
      }

      sub_1000E34FC(v58, v59);
      v4 = *(a2 + 496);
    }

    if ((v4 & 0x10000000) != 0)
    {
      *(a1 + 496) |= 0x10000000u;
      v60 = *(a1 + 232);
      if (!v60)
      {
        operator new();
      }

      v61 = *(a2 + 232);
      if (!v61)
      {
        v61 = *(qword_1009F98E0 + 232);
      }

      sub_100085158(v60, v61);
      v4 = *(a2 + 496);
    }

    if ((v4 & 0x20000000) != 0)
    {
      *(a1 + 496) |= 0x20000000u;
      v62 = *(a1 + 240);
      if (!v62)
      {
        operator new();
      }

      v63 = *(a2 + 240);
      if (!v63)
      {
        v63 = *(qword_1009F98E0 + 240);
      }

      sub_10012FAD4(v62, v63);
      v4 = *(a2 + 496);
    }

    if ((v4 & 0x40000000) != 0)
    {
      *(a1 + 496) |= 0x40000000u;
      v64 = *(a1 + 248);
      if (!v64)
      {
        operator new();
      }

      v65 = *(a2 + 248);
      if (!v65)
      {
        v65 = *(qword_1009F98E0 + 248);
      }

      sub_100130FC8(v64, v65);
      v4 = *(a2 + 496);
    }

    if ((v4 & 0x80000000) != 0)
    {
      *(a1 + 496) |= 0x80000000;
      v66 = *(a1 + 256);
      if (!v66)
      {
        operator new();
      }

      v67 = *(a2 + 256);
      if (!v67)
      {
        v67 = *(qword_1009F98E0 + 256);
      }

      sub_100134BF4(v66, v67);
    }
  }

  v68 = *(a2 + 500);
  if (v68)
  {
    if (v68)
    {
      *(a1 + 500) |= 1u;
      v69 = *(a1 + 264);
      if (!v69)
      {
        operator new();
      }

      v70 = *(a2 + 264);
      if (!v70)
      {
        v70 = *(qword_1009F98E0 + 264);
      }

      sub_10013566C(v69, v70);
      v68 = *(a2 + 500);
    }

    if ((v68 & 2) != 0)
    {
      *(a1 + 500) |= 2u;
      v71 = *(a1 + 272);
      if (!v71)
      {
        operator new();
      }

      v72 = *(a2 + 272);
      if (!v72)
      {
        v72 = *(qword_1009F98E0 + 272);
      }

      sub_100135E78(v71, v72);
      v68 = *(a2 + 500);
    }

    if ((v68 & 4) != 0)
    {
      *(a1 + 500) |= 4u;
      v73 = *(a1 + 280);
      if (!v73)
      {
        operator new();
      }

      v74 = *(a2 + 280);
      if (!v74)
      {
        v74 = *(qword_1009F98E0 + 280);
      }

      sub_100133074(v73, v74);
      v68 = *(a2 + 500);
    }

    if ((v68 & 8) != 0)
    {
      *(a1 + 500) |= 8u;
      v75 = *(a1 + 288);
      if (!v75)
      {
        operator new();
      }

      v76 = *(a2 + 288);
      if (!v76)
      {
        v76 = *(qword_1009F98E0 + 288);
      }

      sub_10012B794(v75, v76);
      v68 = *(a2 + 500);
    }

    if ((v68 & 0x10) != 0)
    {
      *(a1 + 500) |= 0x10u;
      v77 = *(a1 + 296);
      if (!v77)
      {
        operator new();
      }

      v78 = *(a2 + 296);
      if (!v78)
      {
        v78 = *(qword_1009F98E0 + 296);
      }

      sub_100086B94(v77, v78);
      v68 = *(a2 + 500);
    }

    if ((v68 & 0x20) != 0)
    {
      *(a1 + 500) |= 0x20u;
      v79 = *(a1 + 304);
      if (!v79)
      {
        operator new();
      }

      v80 = *(a2 + 304);
      if (!v80)
      {
        v80 = *(qword_1009F98E0 + 304);
      }

      sub_10013067C(v79, v80);
      v68 = *(a2 + 500);
    }

    if ((v68 & 0x40) != 0)
    {
      *(a1 + 500) |= 0x40u;
      v81 = *(a1 + 312);
      if (!v81)
      {
        operator new();
      }

      v82 = *(a2 + 312);
      if (!v82)
      {
        v82 = *(qword_1009F98E0 + 312);
      }

      sub_1001369C0(v81, v82);
      v68 = *(a2 + 500);
    }

    if ((v68 & 0x80) != 0)
    {
      *(a1 + 500) |= 0x80u;
      v83 = *(a1 + 320);
      if (!v83)
      {
        operator new();
      }

      v84 = *(a2 + 320);
      if (!v84)
      {
        v84 = *(qword_1009F98E0 + 320);
      }

      sub_1000889F0(v83, v84);
      v68 = *(a2 + 500);
    }
  }

  if ((v68 & 0xFF00) != 0)
  {
    if ((v68 & 0x100) != 0)
    {
      *(a1 + 500) |= 0x100u;
      v85 = *(a1 + 328);
      if (!v85)
      {
        operator new();
      }

      v86 = *(a2 + 328);
      if (!v86)
      {
        v86 = *(qword_1009F98E0 + 328);
      }

      sub_10012EEC0(v85, v86);
      v68 = *(a2 + 500);
    }

    if ((v68 & 0x200) != 0)
    {
      *(a1 + 500) |= 0x200u;
      v87 = *(a1 + 336);
      if (!v87)
      {
        operator new();
      }

      v88 = *(a2 + 336);
      if (!v88)
      {
        v88 = *(qword_1009F98E0 + 336);
      }

      sub_100138B78(v87, v88);
      v68 = *(a2 + 500);
    }

    if ((v68 & 0x400) != 0)
    {
      *(a1 + 500) |= 0x400u;
      v89 = *(a1 + 344);
      if (!v89)
      {
        operator new();
      }

      v90 = *(a2 + 344);
      if (!v90)
      {
        v90 = *(qword_1009F98E0 + 344);
      }

      sub_10013A328(v89, v90);
      v68 = *(a2 + 500);
    }

    if ((v68 & 0x800) != 0)
    {
      *(a1 + 500) |= 0x800u;
      v91 = *(a1 + 352);
      if (!v91)
      {
        operator new();
      }

      v92 = *(a2 + 352);
      if (!v92)
      {
        v92 = *(qword_1009F98E0 + 352);
      }

      sub_10013BC54(v91, v92);
      v68 = *(a2 + 500);
    }

    if ((v68 & 0x1000) != 0)
    {
      *(a1 + 500) |= 0x1000u;
      v93 = *(a1 + 360);
      if (!v93)
      {
        operator new();
      }

      v94 = *(a2 + 360);
      if (!v94)
      {
        v94 = *(qword_1009F98E0 + 360);
      }

      sub_10013D274(v93, v94);
      v68 = *(a2 + 500);
    }

    if ((v68 & 0x2000) != 0)
    {
      *(a1 + 500) |= 0x2000u;
      v95 = *(a1 + 368);
      if (!v95)
      {
        operator new();
      }

      v96 = *(a2 + 368);
      if (!v96)
      {
        v96 = *(qword_1009F98E0 + 368);
      }

      sub_100137524(v95, v96);
      v68 = *(a2 + 500);
    }

    if ((v68 & 0x4000) != 0)
    {
      *(a1 + 500) |= 0x4000u;
      v97 = *(a1 + 376);
      if (!v97)
      {
        operator new();
      }

      v98 = *(a2 + 376);
      if (!v98)
      {
        v98 = *(qword_1009F98E0 + 376);
      }

      sub_10013DDB4(v97, v98);
      v68 = *(a2 + 500);
    }

    if ((v68 & 0x8000) != 0)
    {
      *(a1 + 500) |= 0x8000u;
      v99 = *(a1 + 384);
      if (!v99)
      {
        operator new();
      }

      v100 = *(a2 + 384);
      if (!v100)
      {
        v100 = *(qword_1009F98E0 + 384);
      }

      sub_10012536C(v99, v100);
      v68 = *(a2 + 500);
    }
  }

  if ((v68 & 0xFF0000) != 0)
  {
    if ((v68 & 0x10000) != 0)
    {
      *(a1 + 500) |= 0x10000u;
      v101 = *(a1 + 392);
      if (!v101)
      {
        operator new();
      }

      v102 = *(a2 + 392);
      if (!v102)
      {
        v102 = *(qword_1009F98E0 + 392);
      }

      sub_100142624(v101, v102);
      v68 = *(a2 + 500);
    }

    if ((v68 & 0x20000) != 0)
    {
      *(a1 + 500) |= 0x20000u;
      v103 = *(a1 + 400);
      if (!v103)
      {
        operator new();
      }

      v104 = *(a2 + 400);
      if (!v104)
      {
        v104 = *(qword_1009F98E0 + 400);
      }

      sub_1001448F0(v103, v104);
      v68 = *(a2 + 500);
    }

    if ((v68 & 0x40000) != 0)
    {
      *(a1 + 500) |= 0x40000u;
      v105 = *(a1 + 408);
      if (!v105)
      {
        operator new();
      }

      v106 = *(a2 + 408);
      if (!v106)
      {
        v106 = *(qword_1009F98E0 + 408);
      }

      sub_100145A9C(v105, v106);
      v68 = *(a2 + 500);
    }

    if ((v68 & 0x80000) != 0)
    {
      *(a1 + 500) |= 0x80000u;
      v107 = *(a1 + 416);
      if (!v107)
      {
        operator new();
      }

      v108 = *(a2 + 416);
      if (!v108)
      {
        v108 = *(qword_1009F98E0 + 416);
      }

      sub_100146594(v107, v108);
      v68 = *(a2 + 500);
    }

    if ((v68 & 0x100000) != 0)
    {
      *(a1 + 500) |= 0x100000u;
      v109 = *(a1 + 424);
      if (!v109)
      {
        operator new();
      }

      v110 = *(a2 + 424);
      if (!v110)
      {
        v110 = *(qword_1009F98E0 + 424);
      }

      sub_100146D64(v109, v110);
      v68 = *(a2 + 500);
    }

    if ((v68 & 0x200000) != 0)
    {
      *(a1 + 500) |= 0x200000u;
      v111 = *(a1 + 432);
      if (!v111)
      {
        operator new();
      }

      v112 = *(a2 + 432);
      if (!v112)
      {
        v112 = *(qword_1009F98E0 + 432);
      }

      sub_100128CD4(v111, v112);
      v68 = *(a2 + 500);
    }

    if ((v68 & 0x400000) != 0)
    {
      *(a1 + 500) |= 0x400000u;
      v113 = *(a1 + 440);
      if (!v113)
      {
        operator new();
      }

      v114 = *(a2 + 440);
      if (!v114)
      {
        v114 = *(qword_1009F98E0 + 440);
      }

      sub_10013E7F8(v113, v114);
      v68 = *(a2 + 500);
    }

    if ((v68 & 0x800000) != 0)
    {
      *(a1 + 500) |= 0x800000u;
      v115 = *(a1 + 448);
      if (!v115)
      {
        operator new();
      }

      v116 = *(a2 + 448);
      if (!v116)
      {
        v116 = *(qword_1009F98E0 + 448);
      }

      sub_1000893AC(v115, v116);
      v68 = *(a2 + 500);
    }
  }

  if (HIBYTE(v68))
  {
    if ((v68 & 0x1000000) != 0)
    {
      *(a1 + 500) |= 0x1000000u;
      v117 = *(a1 + 456);
      if (!v117)
      {
        operator new();
      }

      v118 = *(a2 + 456);
      if (!v118)
      {
        v118 = *(qword_1009F98E0 + 456);
      }

      sub_1001489F8(v117, v118);
      v68 = *(a2 + 500);
    }

    if ((v68 & 0x2000000) != 0)
    {
      *(a1 + 500) |= 0x2000000u;
      v119 = *(a1 + 464);
      if (!v119)
      {
        operator new();
      }

      v120 = *(a2 + 464);
      if (!v120)
      {
        v120 = *(qword_1009F98E0 + 464);
      }

      sub_10010E748(v119, v120);
      v68 = *(a2 + 500);
    }

    if ((v68 & 0x4000000) != 0)
    {
      *(a1 + 500) |= 0x4000000u;
      v121 = *(a1 + 472);
      if (!v121)
      {
        operator new();
      }

      v122 = *(a2 + 472);
      if (!v122)
      {
        v122 = *(qword_1009F98E0 + 472);
      }

      sub_100143F00(v121, v122);
      v68 = *(a2 + 500);
    }

    if ((v68 & 0x8000000) != 0)
    {
      *(a1 + 500) |= 0x8000000u;
      v123 = *(a1 + 480);
      if (!v123)
      {
        operator new();
      }

      v124 = *(a2 + 480);
      if (!v124)
      {
        v124 = *(qword_1009F98E0 + 480);
      }

      sub_100129858(v123, v124);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10008B5C8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  JUMPOUT(0x10008B5C0);
}

uint64_t sub_10008B5E8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F98E0;
  if (!qword_1009F98E0)
  {
    sub_10007882C(0, a2, a3, a4);
    return qword_1009F98E0;
  }

  return result;
}

uint64_t sub_10008B67C(uint64_t this)
{
  v1 = this;
  v2 = *(this + 496);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 16);
      if (this)
      {
        this = sub_10007A9CC(this);
        v2 = *(v1 + 496);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = sub_1000D02BC(this);
        v2 = *(v1 + 496);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = sub_1000D1420(this);
        v2 = *(v1 + 496);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 40);
      if (this)
      {
        this = sub_1000D1D30(this);
        v2 = *(v1 + 496);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        this = sub_1001536D8(this);
        v2 = *(v1 + 496);
      }
    }

    *(v1 + 488) = 0;
    if ((v2 & 0x40) != 0)
    {
      this = *(v1 + 56);
      if (this)
      {
        this = sub_10007B518(this);
        v2 = *(v1 + 496);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      this = *(v1 + 64);
      if (this)
      {
        this = sub_10007CD20(this);
        v2 = *(v1 + 496);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      this = *(v1 + 72);
      if (this)
      {
        if (*(this + 36))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
        }

        v3 = *(this + 8);
        this += 8;
        *(this + 28) = 0;
        if (v3)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    v4 = *(v1 + 496);
    if ((v4 & 0x200) != 0)
    {
      this = *(v1 + 80);
      if (this)
      {
        this = sub_10007E8B4(this);
        v4 = *(v1 + 496);
      }
    }

    if ((v4 & 0x400) != 0)
    {
      this = *(v1 + 88);
      if (this)
      {
        this = sub_10008001C(this);
        v4 = *(v1 + 496);
      }
    }

    if ((v4 & 0x800) != 0)
    {
      this = *(v1 + 96);
      if (this)
      {
        this = sub_1000809B8(this);
        v4 = *(v1 + 496);
      }
    }

    if ((v4 & 0x1000) != 0)
    {
      this = *(v1 + 104);
      if (this)
      {
        if (*(this + 56))
        {
          *(this + 48) = 0;
          *(this + 16) = 0u;
          *(this + 32) = 0u;
        }

        v5 = *(this + 8);
        this += 8;
        *(this + 48) = 0;
        if (v5)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    v2 = *(v1 + 496);
    if ((v2 & 0x2000) != 0)
    {
      this = *(v1 + 112);
      if (this)
      {
        this = sub_1000FDE78(this);
        v2 = *(v1 + 496);
      }
    }

    if ((v2 & 0x4000) != 0)
    {
      this = *(v1 + 120);
      if (this)
      {
        this = sub_10011AFA8(this);
        v2 = *(v1 + 496);
      }
    }

    if ((v2 & 0x8000) != 0)
    {
      this = *(v1 + 128);
      if (this)
      {
        this = sub_100123AA4(this);
        v2 = *(v1 + 496);
      }
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      this = *(v1 + 136);
      if (this)
      {
        this = sub_1001380C4(this);
        v2 = *(v1 + 496);
      }
    }

    if ((v2 & 0x20000) != 0)
    {
      this = *(v1 + 144);
      if (this)
      {
        this = sub_10010DE0C(this);
        v2 = *(v1 + 496);
      }
    }

    if ((v2 & 0x40000) != 0)
    {
      this = *(v1 + 152);
      if (this)
      {
        this = sub_10011F754(this);
        v2 = *(v1 + 496);
      }
    }

    if ((v2 & 0x80000) != 0)
    {
      this = *(v1 + 160);
      if (this)
      {
        this = sub_100122BD8(this);
        v2 = *(v1 + 496);
      }
    }

    if ((v2 & 0x100000) != 0)
    {
      this = *(v1 + 168);
      if (this)
      {
        this = sub_100124AB0(this);
        v2 = *(v1 + 496);
      }
    }

    if ((v2 & 0x200000) != 0)
    {
      this = *(v1 + 176);
      if (this)
      {
        this = sub_100126098(this);
        v2 = *(v1 + 496);
      }
    }

    if ((v2 & 0x400000) != 0)
    {
      this = *(v1 + 184);
      if (this)
      {
        this = sub_100126C08(this);
        v2 = *(v1 + 496);
      }
    }

    if ((v2 & 0x800000) != 0)
    {
      this = *(v1 + 192);
      if (this)
      {
        this = sub_100128FB0(this);
        v2 = *(v1 + 496);
      }
    }
  }

  if (HIBYTE(v2))
  {
    if ((v2 & 0x1000000) != 0)
    {
      this = *(v1 + 200);
      if (this)
      {
        this = sub_10012BD00(this);
        v2 = *(v1 + 496);
      }
    }

    if ((v2 & 0x2000000) != 0)
    {
      this = *(v1 + 208);
      if (this)
      {
        this = sub_10012D688(this);
        v2 = *(v1 + 496);
      }
    }

    if ((v2 & 0x4000000) != 0)
    {
      this = *(v1 + 216);
      if (this)
      {
        this = sub_10012BD00(this);
        v2 = *(v1 + 496);
      }
    }

    if ((v2 & 0x8000000) != 0)
    {
      this = *(v1 + 224);
      if (this)
      {
        this = sub_1000E3A34(this);
        v2 = *(v1 + 496);
      }
    }

    if ((v2 & 0x10000000) != 0)
    {
      this = *(v1 + 232);
      if (this)
      {
        this = sub_100085754(this);
        v2 = *(v1 + 496);
      }
    }

    if ((v2 & 0x20000000) != 0)
    {
      this = *(v1 + 240);
      if (this)
      {
        this = sub_10012FE2C(this);
        v2 = *(v1 + 496);
      }
    }

    if ((v2 & 0x40000000) != 0)
    {
      this = *(v1 + 248);
      if (this)
      {
        this = sub_1001313B4(this);
        v2 = *(v1 + 496);
      }
    }

    if ((v2 & 0x80000000) != 0)
    {
      this = *(v1 + 256);
      if (this)
      {
        this = sub_100134E68(this);
      }
    }
  }

  v6 = *(v1 + 500);
  if (v6)
  {
    if (v6)
    {
      this = *(v1 + 264);
      if (this)
      {
        this = sub_100135898(this);
        v6 = *(v1 + 500);
      }
    }

    if ((v6 & 2) != 0)
    {
      this = *(v1 + 272);
      if (this)
      {
        this = sub_10013610C(this);
        v6 = *(v1 + 500);
      }
    }

    if ((v6 & 4) != 0)
    {
      this = *(v1 + 280);
      if (this)
      {
        this = sub_100133680(this);
        v6 = *(v1 + 500);
      }
    }

    if ((v6 & 8) != 0)
    {
      this = *(v1 + 288);
      if (this)
      {
        this = sub_10012BD00(this);
        v6 = *(v1 + 500);
      }
    }

    if ((v6 & 0x10) != 0)
    {
      this = *(v1 + 296);
      if (this)
      {
        this = sub_100086F78(this);
        v6 = *(v1 + 500);
      }
    }

    if ((v6 & 0x20) != 0)
    {
      this = *(v1 + 304);
      if (this)
      {
        this = sub_1001308C8(this);
        v6 = *(v1 + 500);
      }
    }

    if ((v6 & 0x40) != 0)
    {
      this = *(v1 + 312);
      if (this)
      {
        this = sub_100136C54(this);
        v6 = *(v1 + 500);
      }
    }

    if ((v6 & 0x80) != 0)
    {
      this = *(v1 + 320);
      if (this)
      {
        this = sub_100088B98(this);
        v6 = *(v1 + 500);
      }
    }
  }

  if ((v6 & 0xFF00) != 0)
  {
    if ((v6 & 0x100) != 0)
    {
      this = *(v1 + 328);
      if (this)
      {
        this = sub_10012F104(this);
        v6 = *(v1 + 500);
      }
    }

    if ((v6 & 0x200) != 0)
    {
      this = *(v1 + 336);
      if (this)
      {
        this = sub_100138FE8(this);
        v6 = *(v1 + 500);
      }
    }

    if ((v6 & 0x400) != 0)
    {
      this = *(v1 + 344);
      if (this)
      {
        this = sub_10013A598(this);
        v6 = *(v1 + 500);
      }
    }

    if ((v6 & 0x800) != 0)
    {
      this = *(v1 + 352);
      if (this)
      {
        this = sub_10013BEF0(this);
        v6 = *(v1 + 500);
      }
    }

    if ((v6 & 0x1000) != 0)
    {
      this = *(v1 + 360);
      if (this)
      {
        this = sub_10013D538(this);
        v6 = *(v1 + 500);
      }
    }

    if ((v6 & 0x2000) != 0)
    {
      this = *(v1 + 368);
      if (this)
      {
        this = sub_100137770(this);
        v6 = *(v1 + 500);
      }
    }

    if ((v6 & 0x4000) != 0)
    {
      this = *(v1 + 376);
      if (this)
      {
        this = sub_10013E024(this);
        v6 = *(v1 + 500);
      }
    }

    if ((v6 & 0x8000) != 0)
    {
      this = *(v1 + 384);
      if (this)
      {
        this = sub_100125654(this);
        v6 = *(v1 + 500);
      }
    }
  }

  if ((v6 & 0xFF0000) != 0)
  {
    if ((v6 & 0x10000) != 0)
    {
      this = *(v1 + 392);
      if (this)
      {
        this = sub_1001427FC(this);
        v6 = *(v1 + 500);
      }
    }

    if ((v6 & 0x20000) != 0)
    {
      this = *(v1 + 400);
      if (this)
      {
        this = sub_100144C4C(this);
        v6 = *(v1 + 500);
      }
    }

    if ((v6 & 0x40000) != 0)
    {
      this = *(v1 + 408);
      if (this)
      {
        this = sub_100145D2C(this);
        v6 = *(v1 + 500);
      }
    }

    if ((v6 & 0x80000) != 0)
    {
      this = *(v1 + 416);
      if (this)
      {
        this = sub_1001467BC(this);
        v6 = *(v1 + 500);
      }
    }

    if ((v6 & 0x100000) != 0)
    {
      this = *(v1 + 424);
      if (this)
      {
        this = sub_100147224(this);
        v6 = *(v1 + 500);
      }
    }

    if ((v6 & 0x200000) != 0)
    {
      this = *(v1 + 432);
      if (this)
      {
        this = sub_100128F50(this);
        v6 = *(v1 + 500);
      }
    }

    if ((v6 & 0x400000) != 0)
    {
      this = *(v1 + 440);
      if (this)
      {
        this = sub_10013EAE8(this);
        v6 = *(v1 + 500);
      }
    }

    if ((v6 & 0x800000) != 0)
    {
      this = *(v1 + 448);
      if (this)
      {
        this = sub_1000895FC(this);
        v6 = *(v1 + 500);
      }
    }
  }

  if (HIBYTE(v6))
  {
    if ((v6 & 0x1000000) != 0)
    {
      this = *(v1 + 456);
      if (this)
      {
        this = sub_100148C94(this);
        v6 = *(v1 + 500);
      }
    }

    if ((v6 & 0x2000000) != 0)
    {
      this = *(v1 + 464);
      if (this)
      {
        this = sub_10010E950(this);
        v6 = *(v1 + 500);
      }
    }

    if ((v6 & 0x4000000) != 0)
    {
      this = *(v1 + 472);
      if (this)
      {
        this = sub_1001440D8(this);
        v6 = *(v1 + 500);
      }
    }

    if ((v6 & 0x8000000) != 0)
    {
      this = *(v1 + 480);
      if (this)
      {
        this = sub_100129AD4(this);
      }
    }
  }

  v8 = *(v1 + 8);
  v7 = (v1 + 8);
  *(v7 + 61) = 0;
  if (v8)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v7);
  }

  return this;
}

uint64_t sub_10008BBE0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    v6 = *(this + 1);
    if (v6 < *(this + 2))
    {
      TagFallback = *v6;
      if ((TagFallback & 0x80000000) == 0)
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }

        goto LABEL_6;
      }
    }

    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
    *(this + 8) = TagFallback;
    if (!TagFallback)
    {
      return 1;
    }

LABEL_6:
    v8 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v8 != 2)
        {
          goto LABEL_130;
        }

        *(a1 + 496) |= 1u;
        v9 = *(a1 + 16);
        if (!v9)
        {
          operator new();
        }

        v604 = 0;
        v10 = *(this + 1);
        if (v10 >= *(this + 2) || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v10;
          *(this + 1) = v10 + 1;
        }

        v13 = *(this + 14);
        v14 = *(this + 15);
        *(this + 14) = v13 + 1;
        if (v13 >= v14)
        {
          return 0;
        }

        v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_10007AA54(v9, this, v16, v17) || *(this + 36) != 1)
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
        if (v21 >= *(this + 2) || *v21 != 18)
        {
          continue;
        }

        *(this + 1) = v21 + 1;
        goto LABEL_142;
      case 2u:
        if (v8 != 2)
        {
          goto LABEL_130;
        }

LABEL_142:
        *(a1 + 496) |= 2u;
        v22 = *(a1 + 24);
        if (!v22)
        {
          operator new();
        }

        v604 = 0;
        v23 = *(this + 1);
        if (v23 >= *(this + 2) || *v23 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v23;
          *(this + 1) = v23 + 1;
        }

        v24 = *(this + 14);
        v25 = *(this + 15);
        *(this + 14) = v24 + 1;
        if (v24 >= v25)
        {
          return 0;
        }

        v26 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_1000D03B4(v22, this, v27, v28) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v26);
        v29 = *(this + 14);
        v19 = __OFSUB__(v29, 1);
        v30 = v29 - 1;
        if (v30 < 0 == v19)
        {
          *(this + 14) = v30;
        }

        v31 = *(this + 1);
        if (v31 >= *(this + 2) || *v31 != 26)
        {
          continue;
        }

        *(this + 1) = v31 + 1;
LABEL_156:
        *(a1 + 496) |= 4u;
        v32 = *(a1 + 32);
        if (!v32)
        {
          operator new();
        }

        v604 = 0;
        v33 = *(this + 1);
        if (v33 >= *(this + 2) || *v33 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v33;
          *(this + 1) = v33 + 1;
        }

        v34 = *(this + 14);
        v35 = *(this + 15);
        *(this + 14) = v34 + 1;
        if (v34 >= v35)
        {
          return 0;
        }

        v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_1000D1480(v32, this, v37, v38) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v36);
        v39 = *(this + 14);
        v19 = __OFSUB__(v39, 1);
        v40 = v39 - 1;
        if (v40 < 0 == v19)
        {
          *(this + 14) = v40;
        }

        v41 = *(this + 1);
        if (v41 >= *(this + 2) || *v41 != 34)
        {
          continue;
        }

        *(this + 1) = v41 + 1;
LABEL_170:
        *(a1 + 496) |= 8u;
        v42 = *(a1 + 40);
        if (!v42)
        {
          operator new();
        }

        v604 = 0;
        v43 = *(this + 1);
        if (v43 >= *(this + 2) || *v43 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v43;
          *(this + 1) = v43 + 1;
        }

        v44 = *(this + 14);
        v45 = *(this + 15);
        *(this + 14) = v44 + 1;
        if (v44 >= v45)
        {
          return 0;
        }

        v46 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_1000D1D98(v42, this, v47, v48) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v46);
        v49 = *(this + 14);
        v19 = __OFSUB__(v49, 1);
        v50 = v49 - 1;
        if (v50 < 0 == v19)
        {
          *(this + 14) = v50;
        }

        v51 = *(this + 1);
        if (v51 >= *(this + 2) || *v51 != 42)
        {
          continue;
        }

        *(this + 1) = v51 + 1;
LABEL_184:
        *(a1 + 496) |= 0x10u;
        v52 = *(a1 + 48);
        if (!v52)
        {
          operator new();
        }

        v604 = 0;
        v53 = *(this + 1);
        if (v53 >= *(this + 2) || *v53 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v53;
          *(this + 1) = v53 + 1;
        }

        v54 = *(this + 14);
        v55 = *(this + 15);
        *(this + 14) = v54 + 1;
        if (v54 >= v55)
        {
          return 0;
        }

        v56 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_1001537BC(v52, this, v57, v58) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v56);
        v59 = *(this + 14);
        v19 = __OFSUB__(v59, 1);
        v60 = v59 - 1;
        if (v60 < 0 == v19)
        {
          *(this + 14) = v60;
        }

        v61 = *(this + 1);
        v11 = *(this + 2);
        if (v61 >= v11 || *v61 != 48)
        {
          continue;
        }

        v12 = v61 + 1;
        *(this + 1) = v12;
LABEL_198:
        v604 = 0;
        if (v12 >= v11 || (v62 = *v12, v62 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604);
          if (!result)
          {
            return result;
          }

          v62 = v604;
        }

        else
        {
          *(this + 1) = v12 + 1;
        }

        if (sub_100079C8C(v62))
        {
          *(a1 + 496) |= 0x20u;
          *(a1 + 488) = v62;
        }

        else
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 6, v62);
        }

        v64 = *(this + 1);
        if (v64 >= *(this + 2) || *v64 != 58)
        {
          continue;
        }

        *(this + 1) = v64 + 1;
LABEL_209:
        *(a1 + 496) |= 0x40u;
        v65 = *(a1 + 56);
        if (!v65)
        {
          operator new();
        }

        v604 = 0;
        v66 = *(this + 1);
        if (v66 >= *(this + 2) || *v66 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v66;
          *(this + 1) = v66 + 1;
        }

        v67 = *(this + 14);
        v68 = *(this + 15);
        *(this + 14) = v67 + 1;
        if (v67 >= v68)
        {
          return 0;
        }

        v69 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_10007B550(v65, this, v70, v71) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v69);
        v72 = *(this + 14);
        v19 = __OFSUB__(v72, 1);
        v73 = v72 - 1;
        if (v73 < 0 == v19)
        {
          *(this + 14) = v73;
        }

        v74 = *(this + 1);
        if (v74 >= *(this + 2) || *v74 != 66)
        {
          continue;
        }

        *(this + 1) = v74 + 1;
LABEL_223:
        *(a1 + 496) |= 0x80u;
        v75 = *(a1 + 64);
        if (!v75)
        {
          operator new();
        }

        v604 = 0;
        v76 = *(this + 1);
        if (v76 >= *(this + 2) || *v76 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v76;
          *(this + 1) = v76 + 1;
        }

        v77 = *(this + 14);
        v78 = *(this + 15);
        *(this + 14) = v77 + 1;
        if (v77 >= v78)
        {
          return 0;
        }

        v79 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_10007CD84(v75, this, v80, v81) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v79);
        v82 = *(this + 14);
        v19 = __OFSUB__(v82, 1);
        v83 = v82 - 1;
        if (v83 < 0 == v19)
        {
          *(this + 14) = v83;
        }

        v84 = *(this + 1);
        if (v84 >= *(this + 2) || *v84 != 74)
        {
          continue;
        }

        *(this + 1) = v84 + 1;
LABEL_237:
        *(a1 + 496) |= 0x100u;
        v85 = *(a1 + 72);
        if (!v85)
        {
          operator new();
        }

        v604 = 0;
        v86 = *(this + 1);
        if (v86 >= *(this + 2) || *v86 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v86;
          *(this + 1) = v86 + 1;
        }

        v87 = *(this + 14);
        v88 = *(this + 15);
        *(this + 14) = v87 + 1;
        if (v87 >= v88)
        {
          return 0;
        }

        v89 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_10007DDA4(v85, this, v90, v91) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v89);
        v92 = *(this + 14);
        v19 = __OFSUB__(v92, 1);
        v93 = v92 - 1;
        if (v93 < 0 == v19)
        {
          *(this + 14) = v93;
        }

        v94 = *(this + 1);
        if (v94 >= *(this + 2) || *v94 != 82)
        {
          continue;
        }

        *(this + 1) = v94 + 1;
LABEL_251:
        *(a1 + 496) |= 0x200u;
        v95 = *(a1 + 80);
        if (!v95)
        {
          operator new();
        }

        v604 = 0;
        v96 = *(this + 1);
        if (v96 >= *(this + 2) || *v96 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v96;
          *(this + 1) = v96 + 1;
        }

        v97 = *(this + 14);
        v98 = *(this + 15);
        *(this + 14) = v97 + 1;
        if (v97 >= v98)
        {
          return 0;
        }

        v99 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_10007E8F8(v95, this, v100, v101) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v99);
        v102 = *(this + 14);
        v19 = __OFSUB__(v102, 1);
        v103 = v102 - 1;
        if (v103 < 0 == v19)
        {
          *(this + 14) = v103;
        }

        v104 = *(this + 1);
        if (v104 >= *(this + 2) || *v104 != 90)
        {
          continue;
        }

        *(this + 1) = v104 + 1;
LABEL_265:
        *(a1 + 496) |= 0x400u;
        v105 = *(a1 + 88);
        if (!v105)
        {
          operator new();
        }

        v604 = 0;
        v106 = *(this + 1);
        if (v106 >= *(this + 2) || *v106 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v106;
          *(this + 1) = v106 + 1;
        }

        v107 = *(this + 14);
        v108 = *(this + 15);
        *(this + 14) = v107 + 1;
        if (v107 >= v108)
        {
          return 0;
        }

        v109 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_100080084(v105, this, v110, v111) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v109);
        v112 = *(this + 14);
        v19 = __OFSUB__(v112, 1);
        v113 = v112 - 1;
        if (v113 < 0 == v19)
        {
          *(this + 14) = v113;
        }

        v114 = *(this + 1);
        if (v114 >= *(this + 2) || *v114 != 98)
        {
          continue;
        }

        *(this + 1) = v114 + 1;
LABEL_279:
        *(a1 + 496) |= 0x800u;
        v115 = *(a1 + 96);
        if (!v115)
        {
          operator new();
        }

        v604 = 0;
        v116 = *(this + 1);
        if (v116 >= *(this + 2) || *v116 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v116;
          *(this + 1) = v116 + 1;
        }

        v117 = *(this + 14);
        v118 = *(this + 15);
        *(this + 14) = v117 + 1;
        if (v117 >= v118)
        {
          return 0;
        }

        v119 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_1000809DC(v115, this, v120, v121) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v119);
        v122 = *(this + 14);
        v19 = __OFSUB__(v122, 1);
        v123 = v122 - 1;
        if (v123 < 0 == v19)
        {
          *(this + 14) = v123;
        }

        v124 = *(this + 1);
        if (v124 >= *(this + 2) || *v124 != 106)
        {
          continue;
        }

        *(this + 1) = v124 + 1;
LABEL_293:
        *(a1 + 496) |= 0x1000u;
        v125 = *(a1 + 104);
        if (!v125)
        {
          operator new();
        }

        v604 = 0;
        v126 = *(this + 1);
        if (v126 >= *(this + 2) || *v126 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v126;
          *(this + 1) = v126 + 1;
        }

        v127 = *(this + 14);
        v128 = *(this + 15);
        *(this + 14) = v127 + 1;
        if (v127 >= v128)
        {
          return 0;
        }

        v129 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_100081448(v125, this, v130, v131) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v129);
        v132 = *(this + 14);
        v19 = __OFSUB__(v132, 1);
        v133 = v132 - 1;
        if (v133 < 0 == v19)
        {
          *(this + 14) = v133;
        }

        v134 = *(this + 1);
        if (v134 >= *(this + 2) || *v134 != 114)
        {
          continue;
        }

        *(this + 1) = v134 + 1;
LABEL_307:
        *(a1 + 496) |= 0x2000u;
        v135 = *(a1 + 112);
        if (!v135)
        {
          operator new();
        }

        v604 = 0;
        v136 = *(this + 1);
        if (v136 >= *(this + 2) || *v136 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v136;
          *(this + 1) = v136 + 1;
        }

        v137 = *(this + 14);
        v138 = *(this + 15);
        *(this + 14) = v137 + 1;
        if (v137 >= v138)
        {
          return 0;
        }

        v139 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_1000FE810(v135, this, v140, v141) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v139);
        v142 = *(this + 14);
        v19 = __OFSUB__(v142, 1);
        v143 = v142 - 1;
        if (v143 < 0 == v19)
        {
          *(this + 14) = v143;
        }

        v144 = *(this + 1);
        if (v144 >= *(this + 2) || *v144 != 122)
        {
          continue;
        }

        *(this + 1) = v144 + 1;
LABEL_321:
        *(a1 + 496) |= 0x4000u;
        v145 = *(a1 + 120);
        if (!v145)
        {
          operator new();
        }

        v604 = 0;
        v146 = *(this + 1);
        if (v146 >= *(this + 2) || *v146 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v146;
          *(this + 1) = v146 + 1;
        }

        v147 = *(this + 14);
        v148 = *(this + 15);
        *(this + 14) = v147 + 1;
        if (v147 >= v148)
        {
          return 0;
        }

        v149 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_10011AFD8(v145, this, v150, v151) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v149);
        v152 = *(this + 14);
        v19 = __OFSUB__(v152, 1);
        v153 = v152 - 1;
        if (v153 < 0 == v19)
        {
          *(this + 14) = v153;
        }

        v154 = *(this + 1);
        if (*(this + 4) - v154 <= 1 || *v154 != 130 || v154[1] != 1)
        {
          continue;
        }

        *(this + 1) = v154 + 2;
LABEL_336:
        *(a1 + 496) |= 0x8000u;
        v155 = *(a1 + 128);
        if (!v155)
        {
          operator new();
        }

        v604 = 0;
        v156 = *(this + 1);
        if (v156 >= *(this + 2) || *v156 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v156;
          *(this + 1) = v156 + 1;
        }

        v157 = *(this + 14);
        v158 = *(this + 15);
        *(this + 14) = v157 + 1;
        if (v157 >= v158)
        {
          return 0;
        }

        v159 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_100123B50(v155, this, v160, v161) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v159);
        v162 = *(this + 14);
        v19 = __OFSUB__(v162, 1);
        v163 = v162 - 1;
        if (v163 < 0 == v19)
        {
          *(this + 14) = v163;
        }

        v164 = *(this + 1);
        if (*(this + 4) - v164 <= 1 || *v164 != 138 || v164[1] != 1)
        {
          continue;
        }

        *(this + 1) = v164 + 2;
LABEL_351:
        *(a1 + 496) |= 0x10000u;
        v165 = *(a1 + 136);
        if (!v165)
        {
          operator new();
        }

        v604 = 0;
        v166 = *(this + 1);
        if (v166 >= *(this + 2) || *v166 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v166;
          *(this + 1) = v166 + 1;
        }

        v167 = *(this + 14);
        v168 = *(this + 15);
        *(this + 14) = v167 + 1;
        if (v167 >= v168)
        {
          return 0;
        }

        v169 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_10013815C(v165, this, v170, v171) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v169);
        v172 = *(this + 14);
        v19 = __OFSUB__(v172, 1);
        v173 = v172 - 1;
        if (v173 < 0 == v19)
        {
          *(this + 14) = v173;
        }

        v174 = *(this + 1);
        if (*(this + 4) - v174 <= 1 || *v174 != 146 || v174[1] != 1)
        {
          continue;
        }

        *(this + 1) = v174 + 2;
LABEL_366:
        *(a1 + 496) |= 0x20000u;
        v175 = *(a1 + 144);
        if (!v175)
        {
          operator new();
        }

        v604 = 0;
        v176 = *(this + 1);
        if (v176 >= *(this + 2) || *v176 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v176;
          *(this + 1) = v176 + 1;
        }

        v177 = *(this + 14);
        v178 = *(this + 15);
        *(this + 14) = v177 + 1;
        if (v177 >= v178)
        {
          return 0;
        }

        v179 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_10010DED0(v175, this, v180, v181) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v179);
        v182 = *(this + 14);
        v19 = __OFSUB__(v182, 1);
        v183 = v182 - 1;
        if (v183 < 0 == v19)
        {
          *(this + 14) = v183;
        }

        v184 = *(this + 1);
        if (*(this + 4) - v184 <= 1 || *v184 != 154 || v184[1] != 1)
        {
          continue;
        }

        *(this + 1) = v184 + 2;
LABEL_381:
        *(a1 + 496) |= 0x40000u;
        v185 = *(a1 + 152);
        if (!v185)
        {
          operator new();
        }

        v604 = 0;
        v186 = *(this + 1);
        if (v186 >= *(this + 2) || *v186 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v186;
          *(this + 1) = v186 + 1;
        }

        v187 = *(this + 14);
        v188 = *(this + 15);
        *(this + 14) = v187 + 1;
        if (v187 >= v188)
        {
          return 0;
        }

        v189 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_10011F7BC(v185, this, v190, v191) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v189);
        v192 = *(this + 14);
        v19 = __OFSUB__(v192, 1);
        v193 = v192 - 1;
        if (v193 < 0 == v19)
        {
          *(this + 14) = v193;
        }

        v194 = *(this + 1);
        if (*(this + 4) - v194 <= 1 || *v194 != 162 || v194[1] != 1)
        {
          continue;
        }

        *(this + 1) = v194 + 2;
LABEL_396:
        *(a1 + 496) |= 0x80000u;
        v195 = *(a1 + 160);
        if (!v195)
        {
          operator new();
        }

        v604 = 0;
        v196 = *(this + 1);
        if (v196 >= *(this + 2) || *v196 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v196;
          *(this + 1) = v196 + 1;
        }

        v197 = *(this + 14);
        v198 = *(this + 15);
        *(this + 14) = v197 + 1;
        if (v197 >= v198)
        {
          return 0;
        }

        v199 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_100122C7C(v195, this, v200, v201) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v199);
        v202 = *(this + 14);
        v19 = __OFSUB__(v202, 1);
        v203 = v202 - 1;
        if (v203 < 0 == v19)
        {
          *(this + 14) = v203;
        }

        v204 = *(this + 1);
        if (*(this + 4) - v204 <= 1 || *v204 != 170 || v204[1] != 1)
        {
          continue;
        }

        *(this + 1) = v204 + 2;
LABEL_411:
        *(a1 + 496) |= 0x100000u;
        v205 = *(a1 + 168);
        if (!v205)
        {
          operator new();
        }

        v604 = 0;
        v206 = *(this + 1);
        if (v206 >= *(this + 2) || *v206 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v206;
          *(this + 1) = v206 + 1;
        }

        v207 = *(this + 14);
        v208 = *(this + 15);
        *(this + 14) = v207 + 1;
        if (v207 >= v208)
        {
          return 0;
        }

        v209 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_100124B0C(v205, this, v210, v211) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v209);
        v212 = *(this + 14);
        v19 = __OFSUB__(v212, 1);
        v213 = v212 - 1;
        if (v213 < 0 == v19)
        {
          *(this + 14) = v213;
        }

        v214 = *(this + 1);
        if (*(this + 4) - v214 <= 1 || *v214 != 178 || v214[1] != 1)
        {
          continue;
        }

        *(this + 1) = v214 + 2;
LABEL_426:
        *(a1 + 496) |= 0x200000u;
        v215 = *(a1 + 176);
        if (!v215)
        {
          operator new();
        }

        v604 = 0;
        v216 = *(this + 1);
        if (v216 >= *(this + 2) || *v216 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v216;
          *(this + 1) = v216 + 1;
        }

        v217 = *(this + 14);
        v218 = *(this + 15);
        *(this + 14) = v217 + 1;
        if (v217 >= v218)
        {
          return 0;
        }

        v219 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_1001260F4(v215, this, v220, v221) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v219);
        v222 = *(this + 14);
        v19 = __OFSUB__(v222, 1);
        v223 = v222 - 1;
        if (v223 < 0 == v19)
        {
          *(this + 14) = v223;
        }

        v224 = *(this + 1);
        if (*(this + 4) - v224 <= 1 || *v224 != 186 || v224[1] != 1)
        {
          continue;
        }

        *(this + 1) = v224 + 2;
LABEL_441:
        *(a1 + 496) |= 0x400000u;
        v225 = *(a1 + 184);
        if (!v225)
        {
          operator new();
        }

        v604 = 0;
        v226 = *(this + 1);
        if (v226 >= *(this + 2) || *v226 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v226;
          *(this + 1) = v226 + 1;
        }

        v227 = *(this + 14);
        v228 = *(this + 15);
        *(this + 14) = v227 + 1;
        if (v227 >= v228)
        {
          return 0;
        }

        v229 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_100126C70(v225, this, v230, v231) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v229);
        v232 = *(this + 14);
        v19 = __OFSUB__(v232, 1);
        v233 = v232 - 1;
        if (v233 < 0 == v19)
        {
          *(this + 14) = v233;
        }

        v234 = *(this + 1);
        if (*(this + 4) - v234 <= 1 || *v234 != 194 || v234[1] != 1)
        {
          continue;
        }

        *(this + 1) = v234 + 2;
LABEL_456:
        *(a1 + 496) |= 0x800000u;
        v235 = *(a1 + 192);
        if (!v235)
        {
          operator new();
        }

        v604 = 0;
        v236 = *(this + 1);
        if (v236 >= *(this + 2) || *v236 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v236;
          *(this + 1) = v236 + 1;
        }

        v237 = *(this + 14);
        v238 = *(this + 15);
        *(this + 14) = v237 + 1;
        if (v237 >= v238)
        {
          return 0;
        }

        v239 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_10012A264(v235, this, v240, v241) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v239);
        v242 = *(this + 14);
        v19 = __OFSUB__(v242, 1);
        v243 = v242 - 1;
        if (v243 < 0 == v19)
        {
          *(this + 14) = v243;
        }

        v244 = *(this + 1);
        if (*(this + 4) - v244 <= 1 || *v244 != 202 || v244[1] != 1)
        {
          continue;
        }

        *(this + 1) = v244 + 2;
LABEL_471:
        *(a1 + 496) |= 0x1000000u;
        v245 = *(a1 + 200);
        if (!v245)
        {
          operator new();
        }

        v604 = 0;
        v246 = *(this + 1);
        if (v246 >= *(this + 2) || *v246 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v246;
          *(this + 1) = v246 + 1;
        }

        v247 = *(this + 14);
        v248 = *(this + 15);
        *(this + 14) = v247 + 1;
        if (v247 >= v248)
        {
          return 0;
        }

        v249 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_10012BDE4(v245, this, v250, v251) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v249);
        v252 = *(this + 14);
        v19 = __OFSUB__(v252, 1);
        v253 = v252 - 1;
        if (v253 < 0 == v19)
        {
          *(this + 14) = v253;
        }

        v254 = *(this + 1);
        if (*(this + 4) - v254 <= 1 || *v254 != 210 || v254[1] != 1)
        {
          continue;
        }

        *(this + 1) = v254 + 2;
LABEL_486:
        *(a1 + 496) |= 0x2000000u;
        v255 = *(a1 + 208);
        if (!v255)
        {
          operator new();
        }

        v604 = 0;
        v256 = *(this + 1);
        if (v256 >= *(this + 2) || *v256 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v256;
          *(this + 1) = v256 + 1;
        }

        v257 = *(this + 14);
        v258 = *(this + 15);
        *(this + 14) = v257 + 1;
        if (v257 >= v258)
        {
          return 0;
        }

        v259 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_10012D6E4(v255, this, v260, v261) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v259);
        v262 = *(this + 14);
        v19 = __OFSUB__(v262, 1);
        v263 = v262 - 1;
        if (v263 < 0 == v19)
        {
          *(this + 14) = v263;
        }

        v264 = *(this + 1);
        if (*(this + 4) - v264 <= 1 || *v264 != 218 || v264[1] != 1)
        {
          continue;
        }

        *(this + 1) = v264 + 2;
LABEL_501:
        *(a1 + 496) |= 0x4000000u;
        v265 = *(a1 + 216);
        if (!v265)
        {
          operator new();
        }

        v604 = 0;
        v266 = *(this + 1);
        if (v266 >= *(this + 2) || *v266 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v266;
          *(this + 1) = v266 + 1;
        }

        v267 = *(this + 14);
        v268 = *(this + 15);
        *(this + 14) = v267 + 1;
        if (v267 >= v268)
        {
          return 0;
        }

        v269 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_10012BDE4(v265, this, v270, v271) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v269);
        v272 = *(this + 14);
        v19 = __OFSUB__(v272, 1);
        v273 = v272 - 1;
        if (v273 < 0 == v19)
        {
          *(this + 14) = v273;
        }

        v274 = *(this + 1);
        if (*(this + 4) - v274 <= 1 || *v274 != 226 || v274[1] != 1)
        {
          continue;
        }

        *(this + 1) = v274 + 2;
LABEL_516:
        *(a1 + 496) |= 0x8000000u;
        v275 = *(a1 + 224);
        if (!v275)
        {
          operator new();
        }

        v604 = 0;
        v276 = *(this + 1);
        if (v276 >= *(this + 2) || *v276 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v276;
          *(this + 1) = v276 + 1;
        }

        v277 = *(this + 14);
        v278 = *(this + 15);
        *(this + 14) = v277 + 1;
        if (v277 >= v278)
        {
          return 0;
        }

        v279 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_1000E3B60(v275, this, v280, v281) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v279);
        v282 = *(this + 14);
        v19 = __OFSUB__(v282, 1);
        v283 = v282 - 1;
        if (v283 < 0 == v19)
        {
          *(this + 14) = v283;
        }

        v284 = *(this + 1);
        if (*(this + 4) - v284 <= 1 || *v284 != 234 || v284[1] != 1)
        {
          continue;
        }

        *(this + 1) = v284 + 2;
LABEL_531:
        *(a1 + 496) |= 0x10000000u;
        v285 = *(a1 + 232);
        if (!v285)
        {
          operator new();
        }

        v604 = 0;
        v286 = *(this + 1);
        if (v286 >= *(this + 2) || *v286 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v286;
          *(this + 1) = v286 + 1;
        }

        v287 = *(this + 14);
        v288 = *(this + 15);
        *(this + 14) = v287 + 1;
        if (v287 >= v288)
        {
          return 0;
        }

        v289 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_1000858B0(v285, this, v290, v291) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v289);
        v292 = *(this + 14);
        v19 = __OFSUB__(v292, 1);
        v293 = v292 - 1;
        if (v293 < 0 == v19)
        {
          *(this + 14) = v293;
        }

        v294 = *(this + 1);
        if (*(this + 4) - v294 <= 1 || *v294 != 242 || v294[1] != 1)
        {
          continue;
        }

        *(this + 1) = v294 + 2;
LABEL_546:
        *(a1 + 496) |= 0x20000000u;
        v295 = *(a1 + 240);
        if (!v295)
        {
          operator new();
        }

        v604 = 0;
        v296 = *(this + 1);
        if (v296 >= *(this + 2) || *v296 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v296;
          *(this + 1) = v296 + 1;
        }

        v297 = *(this + 14);
        v298 = *(this + 15);
        *(this + 14) = v297 + 1;
        if (v297 >= v298)
        {
          return 0;
        }

        v299 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_10012FECC(v295, this, v300, v301) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v299);
        v302 = *(this + 14);
        v19 = __OFSUB__(v302, 1);
        v303 = v302 - 1;
        if (v303 < 0 == v19)
        {
          *(this + 14) = v303;
        }

        v304 = *(this + 1);
        if (*(this + 4) - v304 <= 1 || *v304 != 250 || v304[1] != 1)
        {
          continue;
        }

        *(this + 1) = v304 + 2;
LABEL_561:
        *(a1 + 496) |= 0x40000000u;
        v305 = *(a1 + 248);
        if (!v305)
        {
          operator new();
        }

        v604 = 0;
        v306 = *(this + 1);
        if (v306 >= *(this + 2) || *v306 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v306;
          *(this + 1) = v306 + 1;
        }

        v307 = *(this + 14);
        v308 = *(this + 15);
        *(this + 14) = v307 + 1;
        if (v307 >= v308)
        {
          return 0;
        }

        v309 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_100131438(v305, this, v310, v311) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v309);
        v312 = *(this + 14);
        v19 = __OFSUB__(v312, 1);
        v313 = v312 - 1;
        if (v313 < 0 == v19)
        {
          *(this + 14) = v313;
        }

        v314 = *(this + 1);
        if (*(this + 4) - v314 <= 1 || *v314 != 130 || v314[1] != 2)
        {
          continue;
        }

        *(this + 1) = v314 + 2;
LABEL_576:
        *(a1 + 496) |= 0x80000000;
        v315 = *(a1 + 256);
        if (!v315)
        {
          operator new();
        }

        v604 = 0;
        v316 = *(this + 1);
        if (v316 >= *(this + 2) || *v316 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v316;
          *(this + 1) = v316 + 1;
        }

        v317 = *(this + 14);
        v318 = *(this + 15);
        *(this + 14) = v317 + 1;
        if (v317 >= v318)
        {
          return 0;
        }

        v319 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_100134EC4(v315, this, v320, v321) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v319);
        v322 = *(this + 14);
        v19 = __OFSUB__(v322, 1);
        v323 = v322 - 1;
        if (v323 < 0 == v19)
        {
          *(this + 14) = v323;
        }

        v324 = *(this + 1);
        if (*(this + 4) - v324 <= 1 || *v324 != 138 || v324[1] != 2)
        {
          continue;
        }

        *(this + 1) = v324 + 2;
LABEL_591:
        *(a1 + 500) |= 1u;
        v325 = *(a1 + 264);
        if (!v325)
        {
          operator new();
        }

        v604 = 0;
        v326 = *(this + 1);
        if (v326 >= *(this + 2) || *v326 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v326;
          *(this + 1) = v326 + 1;
        }

        v327 = *(this + 14);
        v328 = *(this + 15);
        *(this + 14) = v327 + 1;
        if (v327 >= v328)
        {
          return 0;
        }

        v329 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_1001358E8(v325, this, v330, v331) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v329);
        v332 = *(this + 14);
        v19 = __OFSUB__(v332, 1);
        v333 = v332 - 1;
        if (v333 < 0 == v19)
        {
          *(this + 14) = v333;
        }

        v334 = *(this + 1);
        if (*(this + 4) - v334 <= 1 || *v334 != 146 || v334[1] != 2)
        {
          continue;
        }

        *(this + 1) = v334 + 2;
LABEL_606:
        *(a1 + 500) |= 2u;
        v335 = *(a1 + 272);
        if (!v335)
        {
          operator new();
        }

        v604 = 0;
        v336 = *(this + 1);
        if (v336 >= *(this + 2) || *v336 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v336;
          *(this + 1) = v336 + 1;
        }

        v337 = *(this + 14);
        v338 = *(this + 15);
        *(this + 14) = v337 + 1;
        if (v337 >= v338)
        {
          return 0;
        }

        v339 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_100136168(v335, this, v340, v341) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v339);
        v342 = *(this + 14);
        v19 = __OFSUB__(v342, 1);
        v343 = v342 - 1;
        if (v343 < 0 == v19)
        {
          *(this + 14) = v343;
        }

        v344 = *(this + 1);
        if (*(this + 4) - v344 <= 1 || *v344 != 154 || v344[1] != 2)
        {
          continue;
        }

        *(this + 1) = v344 + 2;
LABEL_621:
        *(a1 + 500) |= 4u;
        v345 = *(a1 + 280);
        if (!v345)
        {
          operator new();
        }

        v604 = 0;
        v346 = *(this + 1);
        if (v346 >= *(this + 2) || *v346 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v346;
          *(this + 1) = v346 + 1;
        }

        v347 = *(this + 14);
        v348 = *(this + 15);
        *(this + 14) = v347 + 1;
        if (v347 >= v348)
        {
          return 0;
        }

        v349 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_100133798(v345, this, v350, v351) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v349);
        v352 = *(this + 14);
        v19 = __OFSUB__(v352, 1);
        v353 = v352 - 1;
        if (v353 < 0 == v19)
        {
          *(this + 14) = v353;
        }

        v354 = *(this + 1);
        if (*(this + 4) - v354 <= 1 || *v354 != 162 || v354[1] != 2)
        {
          continue;
        }

        *(this + 1) = v354 + 2;
LABEL_636:
        *(a1 + 500) |= 8u;
        v355 = *(a1 + 288);
        if (!v355)
        {
          operator new();
        }

        v604 = 0;
        v356 = *(this + 1);
        if (v356 >= *(this + 2) || *v356 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v356;
          *(this + 1) = v356 + 1;
        }

        v357 = *(this + 14);
        v358 = *(this + 15);
        *(this + 14) = v357 + 1;
        if (v357 >= v358)
        {
          return 0;
        }

        v359 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_10012BDE4(v355, this, v360, v361) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v359);
        v362 = *(this + 14);
        v19 = __OFSUB__(v362, 1);
        v363 = v362 - 1;
        if (v363 < 0 == v19)
        {
          *(this + 14) = v363;
        }

        v364 = *(this + 1);
        if (*(this + 4) - v364 <= 1 || *v364 != 170 || v364[1] != 2)
        {
          continue;
        }

        *(this + 1) = v364 + 2;
LABEL_651:
        *(a1 + 500) |= 0x10u;
        v365 = *(a1 + 296);
        if (!v365)
        {
          operator new();
        }

        v604 = 0;
        v366 = *(this + 1);
        if (v366 >= *(this + 2) || *v366 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v366;
          *(this + 1) = v366 + 1;
        }

        v367 = *(this + 14);
        v368 = *(this + 15);
        *(this + 14) = v367 + 1;
        if (v367 >= v368)
        {
          return 0;
        }

        v369 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_100086FEC(v365, this, v370, v371) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v369);
        v372 = *(this + 14);
        v19 = __OFSUB__(v372, 1);
        v373 = v372 - 1;
        if (v373 < 0 == v19)
        {
          *(this + 14) = v373;
        }

        v374 = *(this + 1);
        if (*(this + 4) - v374 <= 1 || *v374 != 178 || v374[1] != 2)
        {
          continue;
        }

        *(this + 1) = v374 + 2;
LABEL_666:
        *(a1 + 500) |= 0x20u;
        v375 = *(a1 + 304);
        if (!v375)
        {
          operator new();
        }

        v604 = 0;
        v376 = *(this + 1);
        if (v376 >= *(this + 2) || *v376 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v376;
          *(this + 1) = v376 + 1;
        }

        v377 = *(this + 14);
        v378 = *(this + 15);
        *(this + 14) = v377 + 1;
        if (v377 >= v378)
        {
          return 0;
        }

        v379 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_100130920(v375, this, v380, v381) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v379);
        v382 = *(this + 14);
        v19 = __OFSUB__(v382, 1);
        v383 = v382 - 1;
        if (v383 < 0 == v19)
        {
          *(this + 14) = v383;
        }

        v384 = *(this + 1);
        if (*(this + 4) - v384 <= 1 || *v384 != 186 || v384[1] != 2)
        {
          continue;
        }

        *(this + 1) = v384 + 2;
LABEL_681:
        *(a1 + 500) |= 0x40u;
        v385 = *(a1 + 312);
        if (!v385)
        {
          operator new();
        }

        v604 = 0;
        v386 = *(this + 1);
        if (v386 >= *(this + 2) || *v386 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v386;
          *(this + 1) = v386 + 1;
        }

        v387 = *(this + 14);
        v388 = *(this + 15);
        *(this + 14) = v387 + 1;
        if (v387 >= v388)
        {
          return 0;
        }

        v389 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_100136CAC(v385, this, v390, v391) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v389);
        v392 = *(this + 14);
        v19 = __OFSUB__(v392, 1);
        v393 = v392 - 1;
        if (v393 < 0 == v19)
        {
          *(this + 14) = v393;
        }

        v394 = *(this + 1);
        if (*(this + 4) - v394 <= 1 || *v394 != 194 || v394[1] != 2)
        {
          continue;
        }

        *(this + 1) = v394 + 2;
LABEL_696:
        *(a1 + 500) |= 0x80u;
        v395 = *(a1 + 320);
        if (!v395)
        {
          operator new();
        }

        v604 = 0;
        v396 = *(this + 1);
        if (v396 >= *(this + 2) || *v396 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v396;
          *(this + 1) = v396 + 1;
        }

        v397 = *(this + 14);
        v398 = *(this + 15);
        *(this + 14) = v397 + 1;
        if (v397 >= v398)
        {
          return 0;
        }

        v399 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_100088BEC(v395, this, v400, v401) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v399);
        v402 = *(this + 14);
        v19 = __OFSUB__(v402, 1);
        v403 = v402 - 1;
        if (v403 < 0 == v19)
        {
          *(this + 14) = v403;
        }

        v404 = *(this + 1);
        if (*(this + 4) - v404 <= 1 || *v404 != 202 || v404[1] != 2)
        {
          continue;
        }

        *(this + 1) = v404 + 2;
LABEL_711:
        *(a1 + 500) |= 0x100u;
        v405 = *(a1 + 328);
        if (!v405)
        {
          operator new();
        }

        v604 = 0;
        v406 = *(this + 1);
        if (v406 >= *(this + 2) || *v406 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v406;
          *(this + 1) = v406 + 1;
        }

        v407 = *(this + 14);
        v408 = *(this + 15);
        *(this + 14) = v407 + 1;
        if (v407 >= v408)
        {
          return 0;
        }

        v409 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_10012F194(v405, this, v410, v411) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v409);
        v412 = *(this + 14);
        v19 = __OFSUB__(v412, 1);
        v413 = v412 - 1;
        if (v413 < 0 == v19)
        {
          *(this + 14) = v413;
        }

        v414 = *(this + 1);
        if (*(this + 4) - v414 <= 1 || *v414 != 210 || v414[1] != 2)
        {
          continue;
        }

        *(this + 1) = v414 + 2;
LABEL_726:
        *(a1 + 500) |= 0x200u;
        v415 = *(a1 + 336);
        if (!v415)
        {
          operator new();
        }

        v604 = 0;
        v416 = *(this + 1);
        if (v416 >= *(this + 2) || *v416 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v416;
          *(this + 1) = v416 + 1;
        }

        v417 = *(this + 14);
        v418 = *(this + 15);
        *(this + 14) = v417 + 1;
        if (v417 >= v418)
        {
          return 0;
        }

        v419 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_100139040(v415, this, v420, v421) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v419);
        v422 = *(this + 14);
        v19 = __OFSUB__(v422, 1);
        v423 = v422 - 1;
        if (v423 < 0 == v19)
        {
          *(this + 14) = v423;
        }

        v424 = *(this + 1);
        if (*(this + 4) - v424 <= 1 || *v424 != 218 || v424[1] != 2)
        {
          continue;
        }

        *(this + 1) = v424 + 2;
LABEL_741:
        *(a1 + 500) |= 0x400u;
        v425 = *(a1 + 344);
        if (!v425)
        {
          operator new();
        }

        v604 = 0;
        v426 = *(this + 1);
        if (v426 >= *(this + 2) || *v426 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v426;
          *(this + 1) = v426 + 1;
        }

        v427 = *(this + 14);
        v428 = *(this + 15);
        *(this + 14) = v427 + 1;
        if (v427 >= v428)
        {
          return 0;
        }

        v429 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_10013A5BC(v425, this, v430, v431) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v429);
        v432 = *(this + 14);
        v19 = __OFSUB__(v432, 1);
        v433 = v432 - 1;
        if (v433 < 0 == v19)
        {
          *(this + 14) = v433;
        }

        v434 = *(this + 1);
        if (*(this + 4) - v434 <= 1 || *v434 != 226 || v434[1] != 2)
        {
          continue;
        }

        *(this + 1) = v434 + 2;
LABEL_756:
        *(a1 + 500) |= 0x800u;
        v435 = *(a1 + 352);
        if (!v435)
        {
          operator new();
        }

        v604 = 0;
        v436 = *(this + 1);
        if (v436 >= *(this + 2) || *v436 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v436;
          *(this + 1) = v436 + 1;
        }

        v437 = *(this + 14);
        v438 = *(this + 15);
        *(this + 14) = v437 + 1;
        if (v437 >= v438)
        {
          return 0;
        }

        v439 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_10013BF7C(v435, this, v440, v441) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v439);
        v442 = *(this + 14);
        v19 = __OFSUB__(v442, 1);
        v443 = v442 - 1;
        if (v443 < 0 == v19)
        {
          *(this + 14) = v443;
        }

        v444 = *(this + 1);
        if (*(this + 4) - v444 <= 1 || *v444 != 234 || v444[1] != 2)
        {
          continue;
        }

        *(this + 1) = v444 + 2;
LABEL_771:
        *(a1 + 500) |= 0x1000u;
        v445 = *(a1 + 360);
        if (!v445)
        {
          operator new();
        }

        v604 = 0;
        v446 = *(this + 1);
        if (v446 >= *(this + 2) || *v446 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v446;
          *(this + 1) = v446 + 1;
        }

        v447 = *(this + 14);
        v448 = *(this + 15);
        *(this + 14) = v447 + 1;
        if (v447 >= v448)
        {
          return 0;
        }

        v449 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_10013D5C4(v445, this, v450, v451) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v449);
        v452 = *(this + 14);
        v19 = __OFSUB__(v452, 1);
        v453 = v452 - 1;
        if (v453 < 0 == v19)
        {
          *(this + 14) = v453;
        }

        v454 = *(this + 1);
        if (*(this + 4) - v454 <= 1 || *v454 != 242 || v454[1] != 2)
        {
          continue;
        }

        *(this + 1) = v454 + 2;
LABEL_786:
        *(a1 + 500) |= 0x2000u;
        v455 = *(a1 + 368);
        if (!v455)
        {
          operator new();
        }

        v604 = 0;
        v456 = *(this + 1);
        if (v456 >= *(this + 2) || *v456 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v456;
          *(this + 1) = v456 + 1;
        }

        v457 = *(this + 14);
        v458 = *(this + 15);
        *(this + 14) = v457 + 1;
        if (v457 >= v458)
        {
          return 0;
        }

        v459 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_1001377C8(v455, this, v460, v461) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v459);
        v462 = *(this + 14);
        v19 = __OFSUB__(v462, 1);
        v463 = v462 - 1;
        if (v463 < 0 == v19)
        {
          *(this + 14) = v463;
        }

        v464 = *(this + 1);
        if (*(this + 4) - v464 <= 1 || *v464 != 250 || v464[1] != 2)
        {
          continue;
        }

        *(this + 1) = v464 + 2;
LABEL_801:
        *(a1 + 500) |= 0x4000u;
        v465 = *(a1 + 376);
        if (!v465)
        {
          operator new();
        }

        v604 = 0;
        v466 = *(this + 1);
        if (v466 >= *(this + 2) || *v466 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v466;
          *(this + 1) = v466 + 1;
        }

        v467 = *(this + 14);
        v468 = *(this + 15);
        *(this + 14) = v467 + 1;
        if (v467 >= v468)
        {
          return 0;
        }

        v469 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_10013E04C(v465, this, v470, v471) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v469);
        v472 = *(this + 14);
        v19 = __OFSUB__(v472, 1);
        v473 = v472 - 1;
        if (v473 < 0 == v19)
        {
          *(this + 14) = v473;
        }

        v474 = *(this + 1);
        if (*(this + 4) - v474 <= 1 || *v474 != 130 || v474[1] != 3)
        {
          continue;
        }

        *(this + 1) = v474 + 2;
LABEL_816:
        *(a1 + 500) |= 0x8000u;
        v475 = *(a1 + 384);
        if (!v475)
        {
          operator new();
        }

        v604 = 0;
        v476 = *(this + 1);
        if (v476 >= *(this + 2) || *v476 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v476;
          *(this + 1) = v476 + 1;
        }

        v477 = *(this + 14);
        v478 = *(this + 15);
        *(this + 14) = v477 + 1;
        if (v477 >= v478)
        {
          return 0;
        }

        v479 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_1001256AC(v475, this, v480, v481) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v479);
        v482 = *(this + 14);
        v19 = __OFSUB__(v482, 1);
        v483 = v482 - 1;
        if (v483 < 0 == v19)
        {
          *(this + 14) = v483;
        }

        v484 = *(this + 1);
        if (*(this + 4) - v484 <= 1 || *v484 != 138 || v484[1] != 3)
        {
          continue;
        }

        *(this + 1) = v484 + 2;
LABEL_831:
        *(a1 + 500) |= 0x10000u;
        v485 = *(a1 + 392);
        if (!v485)
        {
          operator new();
        }

        v604 = 0;
        v486 = *(this + 1);
        if (v486 >= *(this + 2) || *v486 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v486;
          *(this + 1) = v486 + 1;
        }

        v487 = *(this + 14);
        v488 = *(this + 15);
        *(this + 14) = v487 + 1;
        if (v487 >= v488)
        {
          return 0;
        }

        v489 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_100142850(v485, this, v490, v491) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v489);
        v492 = *(this + 14);
        v19 = __OFSUB__(v492, 1);
        v493 = v492 - 1;
        if (v493 < 0 == v19)
        {
          *(this + 14) = v493;
        }

        v494 = *(this + 1);
        if (*(this + 4) - v494 <= 1 || *v494 != 146 || v494[1] != 3)
        {
          continue;
        }

        *(this + 1) = v494 + 2;
LABEL_846:
        *(a1 + 500) |= 0x20000u;
        v495 = *(a1 + 400);
        if (!v495)
        {
          operator new();
        }

        v604 = 0;
        v496 = *(this + 1);
        if (v496 >= *(this + 2) || *v496 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v496;
          *(this + 1) = v496 + 1;
        }

        v497 = *(this + 14);
        v498 = *(this + 15);
        *(this + 14) = v497 + 1;
        if (v497 >= v498)
        {
          return 0;
        }

        v499 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_100144C8C(v495, this, v500, v501) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v499);
        v502 = *(this + 14);
        v19 = __OFSUB__(v502, 1);
        v503 = v502 - 1;
        if (v503 < 0 == v19)
        {
          *(this + 14) = v503;
        }

        v504 = *(this + 1);
        if (*(this + 4) - v504 <= 1 || *v504 != 154 || v504[1] != 3)
        {
          continue;
        }

        *(this + 1) = v504 + 2;
LABEL_861:
        *(a1 + 500) |= 0x40000u;
        v505 = *(a1 + 408);
        if (!v505)
        {
          operator new();
        }

        v604 = 0;
        v506 = *(this + 1);
        if (v506 >= *(this + 2) || *v506 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v506;
          *(this + 1) = v506 + 1;
        }

        v507 = *(this + 14);
        v508 = *(this + 15);
        *(this + 14) = v507 + 1;
        if (v507 >= v508)
        {
          return 0;
        }

        v509 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_100145D54(v505, this, v510, v511) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v509);
        v512 = *(this + 14);
        v19 = __OFSUB__(v512, 1);
        v513 = v512 - 1;
        if (v513 < 0 == v19)
        {
          *(this + 14) = v513;
        }

        v514 = *(this + 1);
        if (*(this + 4) - v514 <= 1 || *v514 != 162 || v514[1] != 3)
        {
          continue;
        }

        *(this + 1) = v514 + 2;
LABEL_876:
        *(a1 + 500) |= 0x80000u;
        v515 = *(a1 + 416);
        if (!v515)
        {
          operator new();
        }

        v604 = 0;
        v516 = *(this + 1);
        if (v516 >= *(this + 2) || *v516 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v516;
          *(this + 1) = v516 + 1;
        }

        v517 = *(this + 14);
        v518 = *(this + 15);
        *(this + 14) = v517 + 1;
        if (v517 >= v518)
        {
          return 0;
        }

        v519 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_1001467DC(v515, this, v520, v521) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v519);
        v522 = *(this + 14);
        v19 = __OFSUB__(v522, 1);
        v523 = v522 - 1;
        if (v523 < 0 == v19)
        {
          *(this + 14) = v523;
        }

        v524 = *(this + 1);
        if (*(this + 4) - v524 <= 1 || *v524 != 170 || v524[1] != 3)
        {
          continue;
        }

        *(this + 1) = v524 + 2;
LABEL_891:
        *(a1 + 500) |= 0x100000u;
        v525 = *(a1 + 424);
        if (!v525)
        {
          operator new();
        }

        v604 = 0;
        v526 = *(this + 1);
        if (v526 >= *(this + 2) || *v526 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v526;
          *(this + 1) = v526 + 1;
        }

        v527 = *(this + 14);
        v528 = *(this + 15);
        *(this + 14) = v527 + 1;
        if (v527 >= v528)
        {
          return 0;
        }

        v529 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_100147278(v525, this, v530, v531) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v529);
        v532 = *(this + 14);
        v19 = __OFSUB__(v532, 1);
        v533 = v532 - 1;
        if (v533 < 0 == v19)
        {
          *(this + 14) = v533;
        }

        v534 = *(this + 1);
        if (*(this + 4) - v534 <= 1 || *v534 != 178 || v534[1] != 3)
        {
          continue;
        }

        *(this + 1) = v534 + 2;
LABEL_906:
        *(a1 + 500) |= 0x200000u;
        v535 = *(a1 + 432);
        if (!v535)
        {
          operator new();
        }

        v604 = 0;
        v536 = *(this + 1);
        if (v536 >= *(this + 2) || *v536 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v536;
          *(this + 1) = v536 + 1;
        }

        v537 = *(this + 14);
        v538 = *(this + 15);
        *(this + 14) = v537 + 1;
        if (v537 >= v538)
        {
          return 0;
        }

        v539 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_10012901C(v535, this, v540, v541) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v539);
        v542 = *(this + 14);
        v19 = __OFSUB__(v542, 1);
        v543 = v542 - 1;
        if (v543 < 0 == v19)
        {
          *(this + 14) = v543;
        }

        v544 = *(this + 1);
        if (*(this + 4) - v544 <= 1 || *v544 != 186 || v544[1] != 3)
        {
          continue;
        }

        *(this + 1) = v544 + 2;
LABEL_921:
        *(a1 + 500) |= 0x400000u;
        v545 = *(a1 + 440);
        if (!v545)
        {
          operator new();
        }

        v604 = 0;
        v546 = *(this + 1);
        if (v546 >= *(this + 2) || *v546 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v546;
          *(this + 1) = v546 + 1;
        }

        v547 = *(this + 14);
        v548 = *(this + 15);
        *(this + 14) = v547 + 1;
        if (v547 >= v548)
        {
          return 0;
        }

        v549 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_10013EB10(v545, this, v550, v551) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v549);
        v552 = *(this + 14);
        v19 = __OFSUB__(v552, 1);
        v553 = v552 - 1;
        if (v553 < 0 == v19)
        {
          *(this + 14) = v553;
        }

        v554 = *(this + 1);
        if (*(this + 4) - v554 <= 1 || *v554 != 194 || v554[1] != 3)
        {
          continue;
        }

        *(this + 1) = v554 + 2;
LABEL_936:
        *(a1 + 500) |= 0x800000u;
        v555 = *(a1 + 448);
        if (!v555)
        {
          operator new();
        }

        v604 = 0;
        v556 = *(this + 1);
        if (v556 >= *(this + 2) || *v556 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v556;
          *(this + 1) = v556 + 1;
        }

        v557 = *(this + 14);
        v558 = *(this + 15);
        *(this + 14) = v557 + 1;
        if (v557 >= v558)
        {
          return 0;
        }

        v559 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_100089684(v555, this, v560, v561) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v559);
        v562 = *(this + 14);
        v19 = __OFSUB__(v562, 1);
        v563 = v562 - 1;
        if (v563 < 0 == v19)
        {
          *(this + 14) = v563;
        }

        v564 = *(this + 1);
        if (*(this + 4) - v564 <= 1 || *v564 != 202 || v564[1] != 3)
        {
          continue;
        }

        *(this + 1) = v564 + 2;
LABEL_951:
        *(a1 + 500) |= 0x1000000u;
        v565 = *(a1 + 456);
        if (!v565)
        {
          operator new();
        }

        v604 = 0;
        v566 = *(this + 1);
        if (v566 >= *(this + 2) || *v566 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v566;
          *(this + 1) = v566 + 1;
        }

        v567 = *(this + 14);
        v568 = *(this + 15);
        *(this + 14) = v567 + 1;
        if (v567 >= v568)
        {
          return 0;
        }

        v569 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_100148CFC(v565, this, v570, v571) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v569);
        v572 = *(this + 14);
        v19 = __OFSUB__(v572, 1);
        v573 = v572 - 1;
        if (v573 < 0 == v19)
        {
          *(this + 14) = v573;
        }

        v574 = *(this + 1);
        if (*(this + 4) - v574 <= 1 || *v574 != 210 || v574[1] != 3)
        {
          continue;
        }

        *(this + 1) = v574 + 2;
LABEL_966:
        *(a1 + 500) |= 0x2000000u;
        v575 = *(a1 + 464);
        if (!v575)
        {
          operator new();
        }

        v604 = 0;
        v576 = *(this + 1);
        if (v576 >= *(this + 2) || *v576 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v576;
          *(this + 1) = v576 + 1;
        }

        v577 = *(this + 14);
        v578 = *(this + 15);
        *(this + 14) = v577 + 1;
        if (v577 >= v578)
        {
          return 0;
        }

        v579 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_10010E970(v575, this, v580, v581) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v579);
        v582 = *(this + 14);
        v19 = __OFSUB__(v582, 1);
        v583 = v582 - 1;
        if (v583 < 0 == v19)
        {
          *(this + 14) = v583;
        }

        v584 = *(this + 1);
        if (*(this + 4) - v584 <= 1 || *v584 != 218 || v584[1] != 3)
        {
          continue;
        }

        *(this + 1) = v584 + 2;
LABEL_981:
        *(a1 + 500) |= 0x4000000u;
        v585 = *(a1 + 472);
        if (!v585)
        {
          operator new();
        }

        v604 = 0;
        v586 = *(this + 1);
        if (v586 >= *(this + 2) || *v586 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v586;
          *(this + 1) = v586 + 1;
        }

        v587 = *(this + 14);
        v588 = *(this + 15);
        *(this + 14) = v587 + 1;
        if (v587 >= v588)
        {
          return 0;
        }

        v589 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_10014412C(v585, this, v590, v591) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v589);
        v592 = *(this + 14);
        v19 = __OFSUB__(v592, 1);
        v593 = v592 - 1;
        if (v593 < 0 == v19)
        {
          *(this + 14) = v593;
        }

        v594 = *(this + 1);
        if (*(this + 4) - v594 <= 1 || *v594 != 226 || v594[1] != 3)
        {
          continue;
        }

        *(this + 1) = v594 + 2;
LABEL_996:
        *(a1 + 500) |= 0x8000000u;
        v595 = *(a1 + 480);
        if (!v595)
        {
          operator new();
        }

        v604 = 0;
        v596 = *(this + 1);
        if (v596 >= *(this + 2) || *v596 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v604))
          {
            return 0;
          }
        }

        else
        {
          v604 = *v596;
          *(this + 1) = v596 + 1;
        }

        v597 = *(this + 14);
        v598 = *(this + 15);
        *(this + 14) = v597 + 1;
        if (v597 >= v598)
        {
          return 0;
        }

        v599 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v604);
        if (!sub_100129B34(v595, this, v600, v601) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v599);
        v602 = *(this + 14);
        v19 = __OFSUB__(v602, 1);
        v603 = v602 - 1;
        if (v603 < 0 == v19)
        {
          *(this + 14) = v603;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }

        break;
      case 3u:
        if (v8 == 2)
        {
          goto LABEL_156;
        }

        goto LABEL_130;
      case 4u:
        if (v8 == 2)
        {
          goto LABEL_170;
        }

        goto LABEL_130;
      case 5u:
        if (v8 == 2)
        {
          goto LABEL_184;
        }

        goto LABEL_130;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_130;
        }

        v12 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_198;
      case 7u:
        if (v8 == 2)
        {
          goto LABEL_209;
        }

        goto LABEL_130;
      case 8u:
        if (v8 == 2)
        {
          goto LABEL_223;
        }

        goto LABEL_130;
      case 9u:
        if (v8 == 2)
        {
          goto LABEL_237;
        }

        goto LABEL_130;
      case 0xAu:
        if (v8 == 2)
        {
          goto LABEL_251;
        }

        goto LABEL_130;
      case 0xBu:
        if (v8 == 2)
        {
          goto LABEL_265;
        }

        goto LABEL_130;
      case 0xCu:
        if (v8 == 2)
        {
          goto LABEL_279;
        }

        goto LABEL_130;
      case 0xDu:
        if (v8 == 2)
        {
          goto LABEL_293;
        }

        goto LABEL_130;
      case 0xEu:
        if (v8 == 2)
        {
          goto LABEL_307;
        }

        goto LABEL_130;
      case 0xFu:
        if (v8 == 2)
        {
          goto LABEL_321;
        }

        goto LABEL_130;
      case 0x10u:
        if (v8 == 2)
        {
          goto LABEL_336;
        }

        goto LABEL_130;
      case 0x11u:
        if (v8 == 2)
        {
          goto LABEL_351;
        }

        goto LABEL_130;
      case 0x12u:
        if (v8 == 2)
        {
          goto LABEL_366;
        }

        goto LABEL_130;
      case 0x13u:
        if (v8 == 2)
        {
          goto LABEL_381;
        }

        goto LABEL_130;
      case 0x14u:
        if (v8 == 2)
        {
          goto LABEL_396;
        }

        goto LABEL_130;
      case 0x15u:
        if (v8 == 2)
        {
          goto LABEL_411;
        }

        goto LABEL_130;
      case 0x16u:
        if (v8 == 2)
        {
          goto LABEL_426;
        }

        goto LABEL_130;
      case 0x17u:
        if (v8 == 2)
        {
          goto LABEL_441;
        }

        goto LABEL_130;
      case 0x18u:
        if (v8 == 2)
        {
          goto LABEL_456;
        }

        goto LABEL_130;
      case 0x19u:
        if (v8 == 2)
        {
          goto LABEL_471;
        }

        goto LABEL_130;
      case 0x1Au:
        if (v8 == 2)
        {
          goto LABEL_486;
        }

        goto LABEL_130;
      case 0x1Bu:
        if (v8 == 2)
        {
          goto LABEL_501;
        }

        goto LABEL_130;
      case 0x1Cu:
        if (v8 == 2)
        {
          goto LABEL_516;
        }

        goto LABEL_130;
      case 0x1Du:
        if (v8 == 2)
        {
          goto LABEL_531;
        }

        goto LABEL_130;
      case 0x1Eu:
        if (v8 == 2)
        {
          goto LABEL_546;
        }

        goto LABEL_130;
      case 0x1Fu:
        if (v8 == 2)
        {
          goto LABEL_561;
        }

        goto LABEL_130;
      case 0x20u:
        if (v8 == 2)
        {
          goto LABEL_576;
        }

        goto LABEL_130;
      case 0x21u:
        if (v8 == 2)
        {
          goto LABEL_591;
        }

        goto LABEL_130;
      case 0x22u:
        if (v8 == 2)
        {
          goto LABEL_606;
        }

        goto LABEL_130;
      case 0x23u:
        if (v8 == 2)
        {
          goto LABEL_621;
        }

        goto LABEL_130;
      case 0x24u:
        if (v8 == 2)
        {
          goto LABEL_636;
        }

        goto LABEL_130;
      case 0x25u:
        if (v8 == 2)
        {
          goto LABEL_651;
        }

        goto LABEL_130;
      case 0x26u:
        if (v8 == 2)
        {
          goto LABEL_666;
        }

        goto LABEL_130;
      case 0x27u:
        if (v8 == 2)
        {
          goto LABEL_681;
        }

        goto LABEL_130;
      case 0x28u:
        if (v8 == 2)
        {
          goto LABEL_696;
        }

        goto LABEL_130;
      case 0x29u:
        if (v8 == 2)
        {
          goto LABEL_711;
        }

        goto LABEL_130;
      case 0x2Au:
        if (v8 == 2)
        {
          goto LABEL_726;
        }

        goto LABEL_130;
      case 0x2Bu:
        if (v8 == 2)
        {
          goto LABEL_741;
        }

        goto LABEL_130;
      case 0x2Cu:
        if (v8 == 2)
        {
          goto LABEL_756;
        }

        goto LABEL_130;
      case 0x2Du:
        if (v8 == 2)
        {
          goto LABEL_771;
        }

        goto LABEL_130;
      case 0x2Eu:
        if (v8 == 2)
        {
          goto LABEL_786;
        }

        goto LABEL_130;
      case 0x2Fu:
        if (v8 == 2)
        {
          goto LABEL_801;
        }

        goto LABEL_130;
      case 0x30u:
        if (v8 == 2)
        {
          goto LABEL_816;
        }

        goto LABEL_130;
      case 0x31u:
        if (v8 == 2)
        {
          goto LABEL_831;
        }

        goto LABEL_130;
      case 0x32u:
        if (v8 == 2)
        {
          goto LABEL_846;
        }

        goto LABEL_130;
      case 0x33u:
        if (v8 == 2)
        {
          goto LABEL_861;
        }

        goto LABEL_130;
      case 0x34u:
        if (v8 != 2)
        {
          goto LABEL_130;
        }

        goto LABEL_876;
      case 0x35u:
        if (v8 == 2)
        {
          goto LABEL_891;
        }

        goto LABEL_130;
      case 0x36u:
        if (v8 == 2)
        {
          goto LABEL_906;
        }

        goto LABEL_130;
      case 0x37u:
        if (v8 == 2)
        {
          goto LABEL_921;
        }

        goto LABEL_130;
      case 0x38u:
        if (v8 == 2)
        {
          goto LABEL_936;
        }

        goto LABEL_130;
      case 0x39u:
        if (v8 == 2)
        {
          goto LABEL_951;
        }

        goto LABEL_130;
      case 0x3Au:
        if (v8 == 2)
        {
          goto LABEL_966;
        }

        goto LABEL_130;
      case 0x3Bu:
        if (v8 == 2)
        {
          goto LABEL_981;
        }

        goto LABEL_130;
      case 0x3Cu:
        if (v8 == 2)
        {
          goto LABEL_996;
        }

        goto LABEL_130;
      default:
LABEL_130:
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

uint64_t sub_10008FBE0(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 496);
  if (v6)
  {
    v7 = *(this + 16);
    if (!v7)
    {
      v7 = *(qword_1009F98E0 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v7, a2, a4);
    v6 = *(v5 + 496);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(qword_1009F98E0 + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v8, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_40:
  v9 = *(v5 + 32);
  if (!v9)
  {
    v9 = *(qword_1009F98E0 + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v9, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_43:
  v10 = *(v5 + 40);
  if (!v10)
  {
    v10 = *(qword_1009F98E0 + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v10, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_49;
  }

LABEL_46:
  v11 = *(v5 + 48);
  if (!v11)
  {
    v11 = *(qword_1009F98E0 + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, v11, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 488), a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_50:
  v12 = *(v5 + 56);
  if (!v12)
  {
    v12 = *(qword_1009F98E0 + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, v12, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_56;
  }

LABEL_53:
  v13 = *(v5 + 64);
  if (!v13)
  {
    v13 = *(qword_1009F98E0 + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, v13, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_59;
  }

LABEL_56:
  v14 = *(v5 + 72);
  if (!v14)
  {
    v14 = *(qword_1009F98E0 + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(9, v14, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_62;
  }

LABEL_59:
  v15 = *(v5 + 80);
  if (!v15)
  {
    v15 = *(qword_1009F98E0 + 80);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xA, v15, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_65;
  }

LABEL_62:
  v16 = *(v5 + 88);
  if (!v16)
  {
    v16 = *(qword_1009F98E0 + 88);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xB, v16, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_68;
  }

LABEL_65:
  v17 = *(v5 + 96);
  if (!v17)
  {
    v17 = *(qword_1009F98E0 + 96);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xC, v17, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_71;
  }

LABEL_68:
  v18 = *(v5 + 104);
  if (!v18)
  {
    v18 = *(qword_1009F98E0 + 104);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xD, v18, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_74;
  }

LABEL_71:
  v19 = *(v5 + 112);
  if (!v19)
  {
    v19 = *(qword_1009F98E0 + 112);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xE, v19, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_77;
  }

LABEL_74:
  v20 = *(v5 + 120);
  if (!v20)
  {
    v20 = *(qword_1009F98E0 + 120);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xF, v20, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_80;
  }

LABEL_77:
  v21 = *(v5 + 128);
  if (!v21)
  {
    v21 = *(qword_1009F98E0 + 128);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x10, v21, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_83;
  }

LABEL_80:
  v22 = *(v5 + 136);
  if (!v22)
  {
    v22 = *(qword_1009F98E0 + 136);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x11, v22, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_86;
  }

LABEL_83:
  v23 = *(v5 + 144);
  if (!v23)
  {
    v23 = *(qword_1009F98E0 + 144);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x12, v23, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_89;
  }

LABEL_86:
  v24 = *(v5 + 152);
  if (!v24)
  {
    v24 = *(qword_1009F98E0 + 152);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x13, v24, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_92;
  }

LABEL_89:
  v25 = *(v5 + 160);
  if (!v25)
  {
    v25 = *(qword_1009F98E0 + 160);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x14, v25, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_95;
  }

LABEL_92:
  v26 = *(v5 + 168);
  if (!v26)
  {
    v26 = *(qword_1009F98E0 + 168);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x15, v26, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_98;
  }

LABEL_95:
  v27 = *(v5 + 176);
  if (!v27)
  {
    v27 = *(qword_1009F98E0 + 176);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x16, v27, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_101;
  }

LABEL_98:
  v28 = *(v5 + 184);
  if (!v28)
  {
    v28 = *(qword_1009F98E0 + 184);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x17, v28, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_104;
  }

LABEL_101:
  v29 = *(v5 + 192);
  if (!v29)
  {
    v29 = *(qword_1009F98E0 + 192);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x18, v29, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_107;
  }

LABEL_104:
  v30 = *(v5 + 200);
  if (!v30)
  {
    v30 = *(qword_1009F98E0 + 200);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x19, v30, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_110;
  }

LABEL_107:
  v31 = *(v5 + 208);
  if (!v31)
  {
    v31 = *(qword_1009F98E0 + 208);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x1A, v31, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_113;
  }

LABEL_110:
  v32 = *(v5 + 216);
  if (!v32)
  {
    v32 = *(qword_1009F98E0 + 216);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x1B, v32, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_116;
  }

LABEL_113:
  v33 = *(v5 + 224);
  if (!v33)
  {
    v33 = *(qword_1009F98E0 + 224);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x1C, v33, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_119;
  }

LABEL_116:
  v34 = *(v5 + 232);
  if (!v34)
  {
    v34 = *(qword_1009F98E0 + 232);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x1D, v34, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_122;
  }

LABEL_119:
  v35 = *(v5 + 240);
  if (!v35)
  {
    v35 = *(qword_1009F98E0 + 240);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x1E, v35, a2, a4);
  v6 = *(v5 + 496);
  if ((v6 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_125;
  }

LABEL_122:
  v36 = *(v5 + 248);
  if (!v36)
  {
    v36 = *(qword_1009F98E0 + 248);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x1F, v36, a2, a4);
  if ((*(v5 + 496) & 0x80000000) != 0)
  {
LABEL_125:
    v37 = *(v5 + 256);
    if (!v37)
    {
      v37 = *(qword_1009F98E0 + 256);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x20, v37, a2, a4);
  }

LABEL_128:
  v38 = *(v5 + 500);
  if (v38)
  {
    v39 = *(v5 + 264);
    if (!v39)
    {
      v39 = *(qword_1009F98E0 + 264);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x21, v39, a2, a4);
    v38 = *(v5 + 500);
    if ((v38 & 2) == 0)
    {
LABEL_130:
      if ((v38 & 4) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_163;
    }
  }

  else if ((v38 & 2) == 0)
  {
    goto LABEL_130;
  }

  v40 = *(v5 + 272);
  if (!v40)
  {
    v40 = *(qword_1009F98E0 + 272);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x22, v40, a2, a4);
  v38 = *(v5 + 500);
  if ((v38 & 4) == 0)
  {
LABEL_131:
    if ((v38 & 8) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_166;
  }

LABEL_163:
  v41 = *(v5 + 280);
  if (!v41)
  {
    v41 = *(qword_1009F98E0 + 280);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x23, v41, a2, a4);
  v38 = *(v5 + 500);
  if ((v38 & 8) == 0)
  {
LABEL_132:
    if ((v38 & 0x10) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_169;
  }

LABEL_166:
  v42 = *(v5 + 288);
  if (!v42)
  {
    v42 = *(qword_1009F98E0 + 288);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x24, v42, a2, a4);
  v38 = *(v5 + 500);
  if ((v38 & 0x10) == 0)
  {
LABEL_133:
    if ((v38 & 0x20) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_172;
  }

LABEL_169:
  v43 = *(v5 + 296);
  if (!v43)
  {
    v43 = *(qword_1009F98E0 + 296);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x25, v43, a2, a4);
  v38 = *(v5 + 500);
  if ((v38 & 0x20) == 0)
  {
LABEL_134:
    if ((v38 & 0x40) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_175;
  }

LABEL_172:
  v44 = *(v5 + 304);
  if (!v44)
  {
    v44 = *(qword_1009F98E0 + 304);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x26, v44, a2, a4);
  v38 = *(v5 + 500);
  if ((v38 & 0x40) == 0)
  {
LABEL_135:
    if ((v38 & 0x80) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_178;
  }

LABEL_175:
  v45 = *(v5 + 312);
  if (!v45)
  {
    v45 = *(qword_1009F98E0 + 312);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x27, v45, a2, a4);
  v38 = *(v5 + 500);
  if ((v38 & 0x80) == 0)
  {
LABEL_136:
    if ((v38 & 0x100) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_181;
  }

LABEL_178:
  v46 = *(v5 + 320);
  if (!v46)
  {
    v46 = *(qword_1009F98E0 + 320);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x28, v46, a2, a4);
  v38 = *(v5 + 500);
  if ((v38 & 0x100) == 0)
  {
LABEL_137:
    if ((v38 & 0x200) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_184;
  }

LABEL_181:
  v47 = *(v5 + 328);
  if (!v47)
  {
    v47 = *(qword_1009F98E0 + 328);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x29, v47, a2, a4);
  v38 = *(v5 + 500);
  if ((v38 & 0x200) == 0)
  {
LABEL_138:
    if ((v38 & 0x400) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_187;
  }

LABEL_184:
  v48 = *(v5 + 336);
  if (!v48)
  {
    v48 = *(qword_1009F98E0 + 336);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x2A, v48, a2, a4);
  v38 = *(v5 + 500);
  if ((v38 & 0x400) == 0)
  {
LABEL_139:
    if ((v38 & 0x800) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_190;
  }

LABEL_187:
  v49 = *(v5 + 344);
  if (!v49)
  {
    v49 = *(qword_1009F98E0 + 344);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x2B, v49, a2, a4);
  v38 = *(v5 + 500);
  if ((v38 & 0x800) == 0)
  {
LABEL_140:
    if ((v38 & 0x1000) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_193;
  }

LABEL_190:
  v50 = *(v5 + 352);
  if (!v50)
  {
    v50 = *(qword_1009F98E0 + 352);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x2C, v50, a2, a4);
  v38 = *(v5 + 500);
  if ((v38 & 0x1000) == 0)
  {
LABEL_141:
    if ((v38 & 0x2000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_196;
  }

LABEL_193:
  v51 = *(v5 + 360);
  if (!v51)
  {
    v51 = *(qword_1009F98E0 + 360);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x2D, v51, a2, a4);
  v38 = *(v5 + 500);
  if ((v38 & 0x2000) == 0)
  {
LABEL_142:
    if ((v38 & 0x4000) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_199;
  }

LABEL_196:
  v52 = *(v5 + 368);
  if (!v52)
  {
    v52 = *(qword_1009F98E0 + 368);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x2E, v52, a2, a4);
  v38 = *(v5 + 500);
  if ((v38 & 0x4000) == 0)
  {
LABEL_143:
    if ((v38 & 0x8000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_202;
  }

LABEL_199:
  v53 = *(v5 + 376);
  if (!v53)
  {
    v53 = *(qword_1009F98E0 + 376);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x2F, v53, a2, a4);
  v38 = *(v5 + 500);
  if ((v38 & 0x8000) == 0)
  {
LABEL_144:
    if ((v38 & 0x10000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_205;
  }

LABEL_202:
  v54 = *(v5 + 384);
  if (!v54)
  {
    v54 = *(qword_1009F98E0 + 384);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x30, v54, a2, a4);
  v38 = *(v5 + 500);
  if ((v38 & 0x10000) == 0)
  {
LABEL_145:
    if ((v38 & 0x20000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_208;
  }

LABEL_205:
  v55 = *(v5 + 392);
  if (!v55)
  {
    v55 = *(qword_1009F98E0 + 392);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x31, v55, a2, a4);
  v38 = *(v5 + 500);
  if ((v38 & 0x20000) == 0)
  {
LABEL_146:
    if ((v38 & 0x40000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_211;
  }

LABEL_208:
  v56 = *(v5 + 400);
  if (!v56)
  {
    v56 = *(qword_1009F98E0 + 400);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x32, v56, a2, a4);
  v38 = *(v5 + 500);
  if ((v38 & 0x40000) == 0)
  {
LABEL_147:
    if ((v38 & 0x80000) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_214;
  }

LABEL_211:
  v57 = *(v5 + 408);
  if (!v57)
  {
    v57 = *(qword_1009F98E0 + 408);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x33, v57, a2, a4);
  v38 = *(v5 + 500);
  if ((v38 & 0x80000) == 0)
  {
LABEL_148:
    if ((v38 & 0x100000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_217;
  }

LABEL_214:
  v58 = *(v5 + 416);
  if (!v58)
  {
    v58 = *(qword_1009F98E0 + 416);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x34, v58, a2, a4);
  v38 = *(v5 + 500);
  if ((v38 & 0x100000) == 0)
  {
LABEL_149:
    if ((v38 & 0x200000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_220;
  }

LABEL_217:
  v59 = *(v5 + 424);
  if (!v59)
  {
    v59 = *(qword_1009F98E0 + 424);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x35, v59, a2, a4);
  v38 = *(v5 + 500);
  if ((v38 & 0x200000) == 0)
  {
LABEL_150:
    if ((v38 & 0x400000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_223;
  }

LABEL_220:
  v60 = *(v5 + 432);
  if (!v60)
  {
    v60 = *(qword_1009F98E0 + 432);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x36, v60, a2, a4);
  v38 = *(v5 + 500);
  if ((v38 & 0x400000) == 0)
  {
LABEL_151:
    if ((v38 & 0x800000) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_226;
  }

LABEL_223:
  v61 = *(v5 + 440);
  if (!v61)
  {
    v61 = *(qword_1009F98E0 + 440);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x37, v61, a2, a4);
  v38 = *(v5 + 500);
  if ((v38 & 0x800000) == 0)
  {
LABEL_152:
    if ((v38 & 0x1000000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_229;
  }

LABEL_226:
  v62 = *(v5 + 448);
  if (!v62)
  {
    v62 = *(qword_1009F98E0 + 448);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x38, v62, a2, a4);
  v38 = *(v5 + 500);
  if ((v38 & 0x1000000) == 0)
  {
LABEL_153:
    if ((v38 & 0x2000000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_232;
  }

LABEL_229:
  v63 = *(v5 + 456);
  if (!v63)
  {
    v63 = *(qword_1009F98E0 + 456);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x39, v63, a2, a4);
  v38 = *(v5 + 500);
  if ((v38 & 0x2000000) == 0)
  {
LABEL_154:
    if ((v38 & 0x4000000) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_235;
  }

LABEL_232:
  v64 = *(v5 + 464);
  if (!v64)
  {
    v64 = *(qword_1009F98E0 + 464);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x3A, v64, a2, a4);
  v38 = *(v5 + 500);
  if ((v38 & 0x4000000) == 0)
  {
LABEL_155:
    if ((v38 & 0x8000000) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_238;
  }

LABEL_235:
  v65 = *(v5 + 472);
  if (!v65)
  {
    v65 = *(qword_1009F98E0 + 472);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x3B, v65, a2, a4);
  if ((*(v5 + 500) & 0x8000000) != 0)
  {
LABEL_238:
    v66 = *(v5 + 480);
    if (!v66)
    {
      v66 = *(qword_1009F98E0 + 480);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x3C, v66, a2, a4);
  }

LABEL_241:
  v69 = *(v5 + 8);
  v68 = (v5 + 8);
  v67 = v69;
  if (v69 && *v67 != v67[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v68, a2, a3);
  }

  return this;
}