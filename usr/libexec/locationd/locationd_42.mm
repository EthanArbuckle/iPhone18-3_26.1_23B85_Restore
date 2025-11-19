uint64_t sub_1002C714C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_37;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v22 = 0;
      v11 = *(this + 1);
      v8 = *(this + 2);
      if (v11 >= v8 || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
        if (!result)
        {
          return result;
        }

        v12 = v22;
        v13 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        v13 = v11 + 1;
        *(this + 1) = v13;
      }

      *(a1 + 8) = v12 != 0;
      *(a1 + 16) |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(this + 1) = v9;
LABEL_29:
        v22 = 0;
        if (v9 >= v8 || (v15 = *v9, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
          if (!result)
          {
            return result;
          }

          v15 = v22;
          v16 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v16 = v9 + 1;
          *(this + 1) = v16;
        }

        *(a1 + 9) = v15 != 0;
        *(a1 + 16) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(this + 1) = v14;
LABEL_37:
          v22 = 0;
          if (v14 >= v8 || (v17 = *v14, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
            if (!result)
            {
              return result;
            }

            v17 = v22;
            v18 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            v18 = v14 + 1;
            *(this + 1) = v18;
          }

          *(a1 + 10) = v17 != 0;
          *(a1 + 16) |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(this + 1) = v10;
LABEL_45:
            v22 = 0;
            if (v10 >= v8 || (v19 = *v10, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
              if (!result)
              {
                return result;
              }

              v19 = v22;
              v20 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              v20 = v10 + 1;
              *(this + 1) = v20;
            }

            *(a1 + 11) = v19 != 0;
            *(a1 + 16) |= 8u;
            if (v20 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_29;
    }

LABEL_20:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1002C73F8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_37;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v22 = 0;
      v11 = *(this + 1);
      v8 = *(this + 2);
      if (v11 >= v8 || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
        if (!result)
        {
          return result;
        }

        v12 = v22;
        v13 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        v13 = v11 + 1;
        *(this + 1) = v13;
      }

      *(a1 + 8) = v12 != 0;
      *(a1 + 16) |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(this + 1) = v9;
LABEL_29:
        v22 = 0;
        if (v9 >= v8 || (v15 = *v9, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
          if (!result)
          {
            return result;
          }

          v15 = v22;
          v16 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v16 = v9 + 1;
          *(this + 1) = v16;
        }

        *(a1 + 9) = v15 != 0;
        *(a1 + 16) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(this + 1) = v14;
LABEL_37:
          v22 = 0;
          if (v14 >= v8 || (v17 = *v14, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
            if (!result)
            {
              return result;
            }

            v17 = v22;
            v18 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            v18 = v14 + 1;
            *(this + 1) = v18;
          }

          *(a1 + 10) = v17 != 0;
          *(a1 + 16) |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(this + 1) = v10;
LABEL_45:
            v22 = 0;
            if (v10 >= v8 || (v19 = *v10, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
              if (!result)
              {
                return result;
              }

              v19 = v22;
              v20 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              v20 = v10 + 1;
              *(this + 1) = v20;
            }

            *(a1 + 11) = v19 != 0;
            *(a1 + 16) |= 8u;
            if (v20 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_29;
    }

LABEL_20:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1002C76A4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_37;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v22 = 0;
      v11 = *(this + 1);
      v8 = *(this + 2);
      if (v11 >= v8 || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
        if (!result)
        {
          return result;
        }

        v12 = v22;
        v13 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        v13 = v11 + 1;
        *(this + 1) = v13;
      }

      *(a1 + 8) = v12 != 0;
      *(a1 + 16) |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(this + 1) = v9;
LABEL_29:
        v22 = 0;
        if (v9 >= v8 || (v15 = *v9, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
          if (!result)
          {
            return result;
          }

          v15 = v22;
          v16 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v16 = v9 + 1;
          *(this + 1) = v16;
        }

        *(a1 + 9) = v15 != 0;
        *(a1 + 16) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(this + 1) = v14;
LABEL_37:
          v22 = 0;
          if (v14 >= v8 || (v17 = *v14, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
            if (!result)
            {
              return result;
            }

            v17 = v22;
            v18 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            v18 = v14 + 1;
            *(this + 1) = v18;
          }

          *(a1 + 10) = v17 != 0;
          *(a1 + 16) |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(this + 1) = v10;
LABEL_45:
            v22 = 0;
            if (v10 >= v8 || (v19 = *v10, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
              if (!result)
              {
                return result;
              }

              v19 = v22;
              v20 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              v20 = v10 + 1;
              *(this + 1) = v20;
            }

            *(a1 + 11) = v19 != 0;
            *(a1 + 16) |= 8u;
            if (v20 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_29;
    }

LABEL_20:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1002C7950(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 > 5)
        {
          if (TagFallback >> 3 <= 7)
          {
            if (v7 == 6)
            {
              if ((TagFallback & 7) == 0)
              {
                v16 = *(this + 1);
                v8 = *(this + 2);
                goto LABEL_81;
              }
            }

            else if (v7 == 7 && (TagFallback & 7) == 0)
            {
              v12 = *(this + 1);
              v8 = *(this + 2);
              goto LABEL_89;
            }
          }

          else if (v7 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(this + 1);
              v8 = *(this + 2);
              goto LABEL_97;
            }
          }

          else if (v7 == 9)
          {
            if ((TagFallback & 7) == 0)
            {
              v20 = *(this + 1);
              v8 = *(this + 2);
              goto LABEL_105;
            }
          }

          else if (v7 == 10 && (TagFallback & 7) == 0)
          {
            v10 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_113;
          }

          goto LABEL_40;
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_40;
          }

          v11 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_49;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v40 = 0;
        v13 = *(this + 1);
        v8 = *(this + 2);
        if (v13 >= v8 || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
          if (!result)
          {
            return result;
          }

          v14 = v40;
          v15 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v15 = v13 + 1;
          *(this + 1) = v15;
        }

        *(a1 + 8) = v14 != 0;
        *(a1 + 24) |= 1u;
        if (v15 < v8 && *v15 == 16)
        {
          v11 = v15 + 1;
          *(this + 1) = v11;
LABEL_49:
          v40 = 0;
          if (v11 >= v8 || (v21 = *v11, (v21 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
            if (!result)
            {
              return result;
            }

            v21 = v40;
            v22 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            v22 = v11 + 1;
            *(this + 1) = v22;
          }

          *(a1 + 9) = v21 != 0;
          *(a1 + 24) |= 2u;
          if (v22 < v8 && *v22 == 24)
          {
            v17 = v22 + 1;
            *(this + 1) = v17;
LABEL_57:
            v40 = 0;
            if (v17 >= v8 || (v23 = *v17, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
              if (!result)
              {
                return result;
              }

              v23 = v40;
              v24 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              v24 = v17 + 1;
              *(this + 1) = v24;
            }

            *(a1 + 10) = v23 != 0;
            *(a1 + 24) |= 4u;
            if (v24 < v8 && *v24 == 32)
            {
              v19 = v24 + 1;
              *(this + 1) = v19;
              goto LABEL_65;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v17 = *(this + 1);
        v8 = *(this + 2);
        goto LABEL_57;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_40;
      }

      v19 = *(this + 1);
      v8 = *(this + 2);
LABEL_65:
      v40 = 0;
      if (v19 >= v8 || (v25 = *v19, (v25 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
        if (!result)
        {
          return result;
        }

        v25 = v40;
        v26 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        v26 = v19 + 1;
        *(this + 1) = v26;
      }

      *(a1 + 11) = v25 != 0;
      *(a1 + 24) |= 8u;
      if (v26 < v8 && *v26 == 40)
      {
        v9 = v26 + 1;
        *(this + 1) = v9;
LABEL_73:
        v40 = 0;
        if (v9 >= v8 || (v27 = *v9, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
          if (!result)
          {
            return result;
          }

          v27 = v40;
          v28 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v28 = v9 + 1;
          *(this + 1) = v28;
        }

        *(a1 + 12) = v27 != 0;
        *(a1 + 24) |= 0x10u;
        if (v28 < v8 && *v28 == 48)
        {
          v16 = v28 + 1;
          *(this + 1) = v16;
LABEL_81:
          v40 = 0;
          if (v16 >= v8 || (v29 = *v16, (v29 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
            if (!result)
            {
              return result;
            }

            v29 = v40;
            v30 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            v30 = v16 + 1;
            *(this + 1) = v30;
          }

          *(a1 + 13) = v29 != 0;
          *(a1 + 24) |= 0x20u;
          if (v30 < v8 && *v30 == 56)
          {
            v12 = v30 + 1;
            *(this + 1) = v12;
LABEL_89:
            v40 = 0;
            if (v12 >= v8 || (v31 = *v12, (v31 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
              if (!result)
              {
                return result;
              }

              v31 = v40;
              v32 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              v32 = v12 + 1;
              *(this + 1) = v32;
            }

            *(a1 + 14) = v31 != 0;
            *(a1 + 24) |= 0x40u;
            if (v32 < v8 && *v32 == 64)
            {
              v18 = v32 + 1;
              *(this + 1) = v18;
LABEL_97:
              v40 = 0;
              if (v18 >= v8 || (v33 = *v18, (v33 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
                if (!result)
                {
                  return result;
                }

                v33 = v40;
                v34 = *(this + 1);
                v8 = *(this + 2);
              }

              else
              {
                v34 = v18 + 1;
                *(this + 1) = v34;
              }

              *(a1 + 15) = v33 != 0;
              *(a1 + 24) |= 0x80u;
              if (v34 < v8 && *v34 == 72)
              {
                v20 = v34 + 1;
                *(this + 1) = v20;
LABEL_105:
                v40 = 0;
                if (v20 >= v8 || (v35 = *v20, (v35 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
                  if (!result)
                  {
                    return result;
                  }

                  v35 = v40;
                  v36 = *(this + 1);
                  v8 = *(this + 2);
                }

                else
                {
                  v36 = v20 + 1;
                  *(this + 1) = v36;
                }

                *(a1 + 16) = v35 != 0;
                *(a1 + 24) |= 0x100u;
                if (v36 < v8 && *v36 == 80)
                {
                  v10 = v36 + 1;
                  *(this + 1) = v10;
LABEL_113:
                  v40 = 0;
                  if (v10 >= v8 || (v37 = *v10, (v37 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
                    if (!result)
                    {
                      return result;
                    }

                    v37 = v40;
                    v38 = *(this + 1);
                    v8 = *(this + 2);
                  }

                  else
                  {
                    v38 = v10 + 1;
                    *(this + 1) = v38;
                  }

                  *(a1 + 17) = v37 != 0;
                  *(a1 + 24) |= 0x200u;
                  if (v38 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_73;
    }

LABEL_40:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1002C7F0C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1002C7F98(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    v5 = *(a2 + 32);
    v6 = *(a2 + 48);
    v7 = *(a2 + 80);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 80) = v7;
    *(v3 + 32) = v5;
    *(v3 + 48) = v6;
    v8 = *(a2 + 96);
    v9 = *(a2 + 112);
    v10 = *(a2 + 128);
    *(v3 + 137) = *(a2 + 137);
    *(v3 + 112) = v9;
    *(v3 + 128) = v10;
    *(v3 + 96) = v8;
    v11 = *(a2 + 160);
    *(a2 + 160) = 0;
    *(v3 + 160) = v11;
    LODWORD(v11) = *(a2 + 168);
    *(v3 + 172) = *(a2 + 172);
    *(v3 + 168) = v11;
    result = v3 + 176;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1002C7F98(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1745D1745D1745DLL)
  {
    sub_10028C64C();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v6 = 0x1745D1745D1745DLL;
  }

  else
  {
    v6 = v3;
  }

  v25 = a1;
  if (v6)
  {
    sub_1002C811C(a1, v6);
  }

  v7 = 176 * v2;
  v22 = 0;
  v23 = v7;
  *(&v24 + 1) = 0;
  v8 = *(a2 + 80);
  v10 = *(a2 + 32);
  v9 = *(a2 + 48);
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 80) = v8;
  *(v7 + 32) = v10;
  *(v7 + 48) = v9;
  v12 = *(a2 + 112);
  v11 = *(a2 + 128);
  v13 = *(a2 + 96);
  *(v7 + 137) = *(a2 + 137);
  *(v7 + 112) = v12;
  *(v7 + 128) = v11;
  *(v7 + 96) = v13;
  v14 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v14;
  v15 = *(a2 + 160);
  *(a2 + 160) = 0;
  *(v7 + 160) = v15;
  LODWORD(v15) = *(a2 + 168);
  *(v7 + 172) = *(a2 + 172);
  *(v7 + 168) = v15;
  *&v24 = 176 * v2 + 176;
  v16 = a1[1];
  v17 = 176 * v2 + *a1 - v16;
  sub_1002C8178(a1, *a1, v16, v17);
  v18 = *a1;
  *a1 = v17;
  v19 = a1[2];
  v21 = v24;
  *(a1 + 1) = v24;
  *&v24 = v18;
  *(&v24 + 1) = v19;
  v22 = v18;
  v23 = v18;
  sub_1002C8224(&v22);
  return v21;
}

void sub_1002C8108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1002C8224(va);
  _Unwind_Resume(a1);
}

void sub_1002C811C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1745D1745D1745ELL)
  {
    operator new();
  }

  sub_1001D0818();
}

void *sub_1002C8178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *a4 = *v6;
      *(a4 + 16) = v7;
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      v10 = *(v6 + 80);
      *(a4 + 64) = *(v6 + 64);
      *(a4 + 80) = v10;
      *(a4 + 32) = v8;
      *(a4 + 48) = v9;
      v11 = *(v6 + 96);
      v12 = *(v6 + 112);
      v13 = *(v6 + 128);
      *(a4 + 137) = *(v6 + 137);
      *(a4 + 112) = v12;
      *(a4 + 128) = v13;
      *(a4 + 96) = v11;
      v14 = *(v6 + 160);
      *(v6 + 160) = 0;
      *(a4 + 160) = v14;
      LODWORD(v14) = *(v6 + 168);
      *(a4 + 172) = *(v6 + 172);
      *(a4 + 168) = v14;
      v6 += 176;
      a4 += 176;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      result = sub_1002C827C((v5 + 160), 0);
      v5 += 176;
    }
  }

  return result;
}

uint64_t sub_1002C8224(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 176;
    sub_1002C827C((i - 16), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1002C827C(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[16];
    if (v3)
    {
      v2[17] = v3;
      operator delete(v3);
    }

    v4 = v2[12];
    if (v4)
    {
      v2[13] = v4;
      operator delete(v4);
    }

    operator delete();
  }

  return result;
}

void sub_1002C82F4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1002C834C(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 24);
  if ((v2 & 0x200) != 0)
  {
    a2[9] = *(result + 17);
    if ((v2 & 0x10) == 0)
    {
LABEL_3:
      if ((v2 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  a2[4] = *(result + 12);
  if ((v2 & 8) == 0)
  {
LABEL_4:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  a2[3] = *(result + 11);
  if ((v2 & 0x100) == 0)
  {
LABEL_5:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  a2[8] = *(result + 16);
  if ((v2 & 0x80) == 0)
  {
LABEL_6:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  a2[7] = *(result + 15);
  if ((v2 & 0x40) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  a2[6] = *(result + 14);
  if ((v2 & 0x20) == 0)
  {
LABEL_8:
    if ((v2 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  a2[5] = *(result + 13);
  if ((v2 & 2) == 0)
  {
LABEL_9:
    if ((v2 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  a2[1] = *(result + 9);
  if ((v2 & 1) == 0)
  {
LABEL_10:
    if ((v2 & 4) == 0)
    {
      return result;
    }

LABEL_21:
    a2[2] = *(result + 10);
    return result;
  }

LABEL_20:
  *a2 = *(result + 8);
  if ((v2 & 4) != 0)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t *sub_1002C83F4(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1002C8654(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002A8894(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002C8668(uint64_t a1, unsigned int *a2)
{
  v2 = *sub_1002C86FC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_1002C86FC(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      v8 = v4;
      v9 = *(v4 + 7);
      if (v6 == v9)
      {
        v10 = *(v8 + 8);
        if (v7 >= v10)
        {
          v11 = v10 == v7;
          if (v10 >= v7)
          {
            v12 = 1;
          }

          else
          {
            v12 = -1;
          }

          if (v11)
          {
            v12 = 0;
          }

          if ((v12 & 0x80) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }

LABEL_13:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v6 < v9)
        {
          goto LABEL_13;
        }

        if (v9 >= v6)
        {
          v13 = 1;
        }

        else
        {
          v13 = -1;
        }

        if ((v13 & 0x80) == 0)
        {
          goto LABEL_22;
        }

LABEL_19:
        result = v8 + 1;
        v4 = v8[1];
        if (!v4)
        {
          goto LABEL_22;
        }
      }
    }
  }

  v8 = result;
LABEL_22:
  *a2 = v8;
  return result;
}

uint64_t *sub_1002C8778(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1002C89B8(uint64_t a1, void *a2, float64x2_t a3, float64_t a4, double a5, double a6)
{
  sub_1002C8AAC(v13, a3, a4, a5);
  if (v14)
  {
    v9 = *(a1 + 176);
    v10 = *(a1 + 184);
    while (v9 != v10)
    {
      if ((v14 & 1) == 0)
      {
        sub_100173BA0();
      }

      sub_1002AEC08(v9, a6, v13, a2);
      v9 += 144;
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016B21F4();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#SatReport,RX conversion from LLA to ECEF failed", v12, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016B23F8();
    }
  }
}

double sub_1002C8AAC@<D0>(uint64_t a1@<X8>, float64x2_t a2@<Q0>, float64_t a3@<D1>, double a4@<D2>)
{
  a2.f64[1] = a3;
  v11 = vmulq_f64(vdivq_f64(a2, vdupq_n_s64(0x4066800000000000uLL)), vdupq_n_s64(0x400921FB54442D18uLL));
  v12 = a4;
  v9 = 0uLL;
  *&v10 = 0;
  BYTE8(v10) = 1;
  if (cnnavigation::LLAToECEF())
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016B22EC();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "#SatReport,ECEF conversion failed", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016B2314();
    }

    *a1 = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    result = *&v9;
    v7 = v10;
    *a1 = v9;
    *(a1 + 16) = v7;
  }

  return result;
}

uint64_t *sub_1002C8BCC(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

float sub_1002C8CAC(float **a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = v1 - *a1;
  if (v3 > 1)
  {
    if (v2 == v1)
    {
      v9 = v3;
    }

    else
    {
      v6 = 0.0;
      v7 = *a1;
      do
      {
        v8 = *v7++;
        v6 = v6 + v8;
      }

      while (v7 != v1);
      v9 = v3;
      if (v2 != v1)
      {
        v10 = 0.0;
        v11 = v6 / v9;
        do
        {
          v12 = *v2++;
          v10 = v10 + ((v12 - v11) * (v12 - v11));
        }

        while (v2 != v1);
        return v10 / v9;
      }
    }

    v10 = 0.0;
    return v10 / v9;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1016B21F4();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
  {
    v14[0] = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "findVariance, less than min samples", v14, 2u);
  }

  v5 = 0.0;
  if (sub_10000A100(121, 0))
  {
    sub_1016B2208();
  }

  return v5;
}

uint64_t *sub_1002C8DC0(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

_DWORD *sub_1002C8E98(_DWORD *result, uint64_t a2, unsigned int a3)
{
  v4 = *(a2 + 104) > 0.0 && (*(a2 + 96) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  v5 = v4 & (*(a2 + 112) ^ 1);
  v6 = *(a2 + 120);
  if (v6 != -1)
  {
    v7 = *(a2 + 128);
    v8 = v7 == -1 || v6 > v7;
    if (!v8 && (*(a2 + 136) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && *(a2 + 144) > 0.0)
    {
      v5 |= *(a2 + 152) ^ 1;
      v4 = 1;
    }
  }

  v9 = *(a2 + 168);
  v11 = v9 < 20.0 || v9 >= 25.0 || a3 > 8;
  v12 = (1 << a3) & 0x1EC;
  if (v11 || v12 == 0)
  {
    if (v9 < 25.0 || v9 >= 30.0 || a3 > 8 || v12 == 0)
    {
      if (v9 >= 30.0)
      {
        ++result[488];
        if (v5)
        {
          ++result[494];
        }

        if (v4)
        {
          v17 = 493;
LABEL_50:
          ++result[v17];
        }
      }
    }

    else
    {
      ++result[487];
      if (v5)
      {
        ++result[492];
      }

      if (v4)
      {
        v17 = 491;
        goto LABEL_50;
      }
    }
  }

  else
  {
    ++result[486];
    if (v5)
    {
      ++result[490];
    }

    if (v4)
    {
      v17 = 489;
      goto LABEL_50;
    }
  }

  return result;
}

uint64_t sub_1002C8FE0(uint64_t a1, float *a2)
{
  v2 = *a2;
  if ((*a2 & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    return 0;
  }

  if (v2 < 0.0)
  {
    return 1;
  }

  if (v2 < 16.0)
  {
    return 2;
  }

  if (v2 < 20.0)
  {
    return 3;
  }

  if (v2 < 24.0)
  {
    return 4;
  }

  if (v2 < 28.0)
  {
    return 5;
  }

  if (v2 < 32.0)
  {
    return 6;
  }

  if (v2 < 36.0)
  {
    return 7;
  }

  if (v2 < 40.0)
  {
    return 8;
  }

  if (v2 >= 44.0)
  {
    return 10;
  }

  return 9;
}

void sub_1002C90C0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A8978;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1002C9114(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A83D8;
  sub_1002A2DA4(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1002C917C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A8450;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1002C91D0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A84C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1002C9224(uint64_t *a1)
{
  sub_1002CD924(a1);

  operator delete();
}

void *sub_1002C925C(void *result)
{
  if (qword_102637C38 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[2];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_1002C92FC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A8180;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1002C9350(uint64_t a1, unsigned int *a2, int *a3, int *a4, uint64_t *a5)
{
  if (*(a1 + 8))
  {
    v10 = 1.0;
    if (CLMotionActivity::isTypeCycling())
    {
      v11 = 3;
    }

    else if (CLMotionActivity::isTypeSwimming())
    {
      v11 = 15;
    }

    else if (CLMotionActivity::isTypeRunning() && sub_10001CF3C() && sub_10006FE64())
    {
      v11 = 5;
      v10 = 1.02;
    }

    else
    {
      v11 = 5;
    }

    sub_10116584C(*(a1 + 8), v11);
    sub_101165958(*(a1 + 8), v10);
  }

  if (!*(a1 + 16))
  {
    goto LABEL_25;
  }

  v12 = sub_1011300AC(a1, a2, a5);
  v67 = v12;
  if (qword_1025D4650 != -1)
  {
    sub_101B3FE80();
  }

  v13 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v14 = (a1 + 624);
    if (*(a1 + 647) < 0)
    {
      v14 = *v14;
    }

    v15 = *a2;
    *buf = 136315650;
    v78 = v14;
    v79 = 1026;
    LODWORD(v80) = v15;
    WORD2(v80) = 1026;
    *(&v80 + 6) = v12;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "GPSODOM%s,overriding activity type,%{public}d,with,%{public}d", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101B3FE94();
    }

    v64 = (a1 + 624);
    if (*(a1 + 647) < 0)
    {
      v64 = *v64;
    }

    v65 = *a2;
    v68 = 136315650;
    v69 = v64;
    v70 = 1026;
    v71 = v65;
    v72 = 1026;
    *v73 = v67;
    v66 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLGpsOdometryInterface::switchContext(const CLMotionActivity &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentType &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentFidelityLevel &, const CMWorkoutType &)", "%s\n", v66);
    if (v66 != buf)
    {
      free(v66);
    }
  }

  v16 = sub_100F925C0();
  sub_100F95160(v16, &v67, a3, a4, a5);
  v17 = sub_100F925C0();
  v18 = sub_100F95D5C(v17);
  v19 = sub_100F925C0();
  v20 = sub_100F95E48(v19);
  if (CLMotionActivity::isTypeCycling())
  {
    v21 = *(a1 + 16);
    v22 = 3;
LABEL_24:
    sub_1002A4908(v21, v22);
    sub_1002CA0B0(*(a1 + 16), v18);
    goto LABEL_25;
  }

  if (CLMotionActivity::isTypeSwimming())
  {
    v21 = *(a1 + 16);
    v22 = 15;
    goto LABEL_24;
  }

  if (CLMotionActivity::isTypeRunning())
  {
    sub_1002A4908(*(a1 + 16), 5);
    sub_1002CA0B0(*(a1 + 16), v18);
    if (qword_1025D4650 != -1)
    {
      sub_101B3FE94();
    }

    v24 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v25 = (a1 + 624);
      if (*(a1 + 647) < 0)
      {
        v25 = *v25;
      }

      v26 = *a3;
      v27 = *a4;
      *buf = 136316162;
      v78 = v25;
      v79 = 1026;
      LODWORD(v80) = v67;
      WORD2(v80) = 1026;
      *(&v80 + 6) = v26;
      WORD5(v80) = 1024;
      HIDWORD(v80) = v27;
      *v81 = 2050;
      *&v81[2] = v18;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "GPSODOM%s,activity type,%{public}d,sigEnv,%{public}d,sigFidelity,%d,distance multiplier,%{public}.3f", buf, 0x28u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101B3FE94();
      }

      v28 = (a1 + 624);
      if (*(a1 + 647) < 0)
      {
        v28 = *v28;
      }

LABEL_53:
      v33 = *a3;
      v34 = *a4;
      v68 = 136316162;
      v69 = v28;
      v70 = 1026;
      v71 = v67;
      v72 = 1026;
      *v73 = v33;
      *&v73[4] = 1024;
      *&v73[6] = v34;
      *v74 = 2050;
      *&v74[2] = v18;
      goto LABEL_54;
    }

    goto LABEL_25;
  }

  if (!CLMotionActivity::isTypeWalking())
  {
    v36 = *a5;
    if (*a5 <= 37)
    {
      switch(v36)
      {
        case 0x17uLL:
          goto LABEL_70;
        case 0x1BuLL:
          goto LABEL_80;
        case 0x25uLL:
LABEL_70:
          sub_1002A4908(*(a1 + 16), 3);
          sub_1002CA0B0(*(a1 + 16), v20);
          if (qword_1025D4650 != -1)
          {
            sub_101B3FE94();
          }

          v40 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            v41 = (a1 + 624);
            if (*(a1 + 647) < 0)
            {
              v41 = *v41;
            }

            v42 = *a5;
            *buf = 136315394;
            v78 = v41;
            v79 = 2050;
            *&v80 = v42;
            _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEFAULT, "GPSODOM%s,downhill snow sports workout type,%{public}ld,", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B400B4();
          }

          goto LABEL_25;
      }
    }

    else if (v36 <= 0x31)
    {
      if (((1 << v36) & 0x23E8000000000) != 0)
      {
        sub_1002A4908(*(a1 + 16), 5);
        sub_1002CA0B0(*(a1 + 16), v20);
        if (qword_1025D4650 != -1)
        {
          sub_101B3FE94();
        }

        v37 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          v38 = (a1 + 624);
          if (*(a1 + 647) < 0)
          {
            v38 = *v38;
          }

          v39 = *a5;
          *buf = 136315394;
          v78 = v38;
          v79 = 2050;
          *&v80 = v39;
          _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEFAULT, "GPSODOM%s,field sports workout type,%{public}ld,", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B3FFB8();
        }

        goto LABEL_25;
      }

      if (v36 == 38)
      {
        sub_1002A4908(*(a1 + 16), 5);
        sub_1002CA0B0(*(a1 + 16), v20);
        if (qword_1025D4650 != -1)
        {
          sub_101B3FE94();
        }

        v52 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          v53 = (a1 + 624);
          if (*(a1 + 647) < 0)
          {
            v53 = *v53;
          }

          v54 = *a5;
          *buf = 136315394;
          v78 = v53;
          v79 = 2050;
          *&v80 = v54;
          _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEFAULT, "GPSODOM%s,paddle sports workout type,%{public}ld,", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B3FEBC();
        }

        goto LABEL_25;
      }

      if (v36 == 46)
      {
LABEL_80:
        if (CLMotionActivity::isTypeRunning())
        {
          sub_1002A4908(*(a1 + 16), 5);
          sub_1002CA0B0(*(a1 + 16), v18);
          if (qword_1025D4650 != -1)
          {
            sub_101B3FE94();
          }

          v43 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            v44 = (a1 + 624);
            if (*(a1 + 647) < 0)
            {
              v44 = *v44;
            }

            v45 = *a5;
            v46 = *a3;
            v47 = *a4;
            *buf = 136316418;
            v78 = v44;
            v79 = 1026;
            LODWORD(v80) = v67;
            WORD2(v80) = 2050;
            *(&v80 + 6) = v45;
            HIWORD(v80) = 1026;
            *v81 = v46;
            *&v81[4] = 1024;
            *&v81[6] = v47;
            v82 = 2050;
            v83 = v18;
            _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEFAULT, "GPSODOM%s,activity type,%{public}d,workout type,%{public}ld,sigEnv,%{public}d,sigFidelity,%d,distance multiplier,%{public}.3f", buf, 0x32u);
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_25;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1025D4650 != -1)
          {
            sub_101B3FE94();
          }

          v48 = (a1 + 624);
          if (*(a1 + 647) < 0)
          {
            v48 = *v48;
          }
        }

        else
        {
          if (!CLMotionActivity::isTypeWalking())
          {
            goto LABEL_25;
          }

          sub_1002A4908(*(a1 + 16), 5);
          sub_1002CA0B0(*(a1 + 16), v18);
          if (qword_1025D4650 != -1)
          {
            sub_101B3FE94();
          }

          v55 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            v56 = (a1 + 624);
            if (*(a1 + 647) < 0)
            {
              v56 = *v56;
            }

            v57 = *a5;
            v58 = *a3;
            v59 = *a4;
            *buf = 136316418;
            v78 = v56;
            v79 = 1026;
            LODWORD(v80) = v67;
            WORD2(v80) = 2050;
            *(&v80 + 6) = v57;
            HIWORD(v80) = 1026;
            *v81 = v58;
            *&v81[4] = 1024;
            *&v81[6] = v59;
            v82 = 2050;
            v83 = v18;
            _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_DEFAULT, "GPSODOM%s,activity type,%{public}d,workout type,%{public}ld,sigEnv,%{public}d,sigFidelity,%d,distance multiplier,%{public}.3f", buf, 0x32u);
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_25;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1025D4650 != -1)
          {
            sub_101B3FE94();
          }

          v48 = (a1 + 624);
          if (*(a1 + 647) < 0)
          {
            v48 = *v48;
          }
        }

        v49 = *a5;
        v50 = *a3;
        v51 = *a4;
        v68 = 136316418;
        v69 = v48;
        v70 = 1026;
        v71 = v67;
        v72 = 2050;
        *v73 = v49;
        *&v73[8] = 1026;
        *v74 = v50;
        *&v74[4] = 1024;
        *&v74[6] = v51;
        v75 = 2050;
        v76 = v18;
LABEL_54:
        v35 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLGpsOdometryInterface::switchContext(const CLMotionActivity &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentType &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentFidelityLevel &, const CMWorkoutType &)", "%s\n", v35);
        if (v35 != buf)
        {
          free(v35);
        }

        goto LABEL_25;
      }
    }

    sub_1002A4908(*(a1 + 16), 5);
    sub_1002CA0B0(*(a1 + 16), v18);
    if (qword_1025D4650 != -1)
    {
      sub_101B3FE94();
    }

    v60 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v61 = (a1 + 624);
      if (*(a1 + 647) < 0)
      {
        v61 = *v61;
      }

      v62 = *a3;
      v63 = *a4;
      *buf = 136316162;
      v78 = v61;
      v79 = 1026;
      LODWORD(v80) = v67;
      WORD2(v80) = 1026;
      *(&v80 + 6) = v62;
      WORD5(v80) = 1024;
      HIDWORD(v80) = v63;
      *v81 = 2050;
      *&v81[2] = v18;
      _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_DEFAULT, "GPSODOM%s,activity type,%{public}d,sigEnv,%{public}d,sigFidelity,%d,distance multiplier,%{public}.3f", buf, 0x28u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101B3FE94();
      }

      v28 = (a1 + 624);
      if (*(a1 + 647) < 0)
      {
        v28 = *v28;
      }

      goto LABEL_53;
    }

    goto LABEL_25;
  }

  sub_1002A4908(*(a1 + 16), 5);
  sub_1002CA0B0(*(a1 + 16), v18);
  if (qword_1025D4650 != -1)
  {
    sub_101B3FE94();
  }

  v29 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v30 = (a1 + 624);
    if (*(a1 + 647) < 0)
    {
      v30 = *v30;
    }

    v31 = *a3;
    v32 = *a4;
    *buf = 136316162;
    v78 = v30;
    v79 = 1026;
    LODWORD(v80) = v67;
    WORD2(v80) = 1026;
    *(&v80 + 6) = v31;
    WORD5(v80) = 1024;
    HIDWORD(v80) = v32;
    *v81 = 2050;
    *&v81[2] = v18;
    _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "GPSODOM%s,activity type,%{public}d,sigEnv,%{public}d,sigFidelity,%d,distance multiplier,%{public}.3f", buf, 0x28u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101B3FE94();
    }

    v28 = (a1 + 624);
    if (*(a1 + 647) < 0)
    {
      v28 = *v28;
    }

    goto LABEL_53;
  }

LABEL_25:
  v23 = *(a1 + 24);
  if (v23)
  {
    sub_1002CA1C0(v23, a2);
  }
}

void sub_1002CA0B0(uint64_t a1, double a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_101AF24D8();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v5 = (a1 + 168);
    if (*(a1 + 191) < 0)
    {
      v5 = *v5;
    }

    v6 = 136315394;
    v7 = v5;
    v8 = 2050;
    v9 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "GPSODOM%s, setting distance multiplier to,%{public}.3f", &v6, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AF289C(a1, a2);
  }

  if (*(a1 + 8) != a2)
  {
    *(a1 + 8) = a2;
  }
}

void sub_1002CA1C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    *(v4 + 432) = *a2;
    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    v7 = *(a2 + 64);
    *(v4 + 480) = *(a2 + 48);
    *(v4 + 496) = v7;
    *(v4 + 448) = v5;
    *(v4 + 464) = v6;
    v8 = *(a2 + 80);
    v9 = *(a2 + 96);
    v10 = *(a2 + 112);
    *(v4 + 560) = *(a2 + 128);
    *(v4 + 528) = v9;
    *(v4 + 544) = v10;
    *(v4 + 512) = v8;
    sub_1002CA274(v4);
  }

  v11 = *(a1 + 24);
  if (v11)
  {
    *(v11 + 400) = *a2;
    v12 = *(a2 + 16);
    v13 = *(a2 + 32);
    v14 = *(a2 + 64);
    *(v11 + 448) = *(a2 + 48);
    *(v11 + 464) = v14;
    *(v11 + 416) = v12;
    *(v11 + 432) = v13;
    v15 = *(a2 + 80);
    v16 = *(a2 + 96);
    v17 = *(a2 + 112);
    *(v11 + 528) = *(a2 + 128);
    *(v11 + 496) = v16;
    *(v11 + 512) = v17;
    *(v11 + 480) = v15;

    sub_1002CA720(v11);
  }
}

void sub_1002CA274(uint64_t a1)
{
  if (CLMotionActivity::isTypeWalking())
  {
    sub_1002CA59C(a1 + 568, 0, &v15);
    v2 = v16;
    *(a1 + 608) = v15;
    *(a1 + 624) = v2;
    *(a1 + 640) = v17;
    *(a1 + 656) = v18;
    if (qword_1025D4650 != -1)
    {
      sub_10172DFAC();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 608);
      LODWORD(v15) = 67240192;
      DWORD1(v15) = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "GPSODOM-MM,set walking activity settings,enabled,%{public}d", &v15, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10172FFEC((a1 + 608));
    }
  }

  else
  {
    v5 = (a1 + 608);
    if (CLMotionActivity::isTypeRunning())
    {
      sub_1002CA59C(a1 + 568, 1, &v15);
      v6 = v16;
      *v5 = v15;
      *(a1 + 624) = v6;
      *(a1 + 640) = v17;
      *(a1 + 656) = v18;
      if (qword_1025D4650 != -1)
      {
        sub_10172DFAC();
      }

      v7 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        v8 = *v5;
        LODWORD(v15) = 67240192;
        DWORD1(v15) = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "GPSODOM-MM,set running activity settings,enabled,%{public}d", &v15, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10172FF00(v5);
      }
    }

    else if (CLMotionActivity::isTypeCycling())
    {
      sub_1002CA59C(a1 + 568, 2, &v15);
      v9 = v16;
      *v5 = v15;
      *(a1 + 624) = v9;
      *(a1 + 640) = v17;
      *(a1 + 656) = v18;
      if (qword_1025D4650 != -1)
      {
        sub_10172DFAC();
      }

      v10 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        v11 = *v5;
        LODWORD(v15) = 67240192;
        DWORD1(v15) = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "GPSODOM-MM,set cycling activity settings,enabled,%{public}d", &v15, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10172FE14(v5);
      }
    }

    else
    {
      sub_1002CA59C(a1 + 568, 0, &v15);
      v12 = v16;
      *v5 = v15;
      *(a1 + 624) = v12;
      *(a1 + 640) = v17;
      *(a1 + 656) = v18;
      if (qword_1025D4650 != -1)
      {
        sub_10172DFAC();
      }

      v13 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        v14 = *v5;
        LODWORD(v15) = 67240192;
        DWORD1(v15) = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "GPSODOM-MM,set default activity, using walking settings,enabled,%{public}d", &v15, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10172FD28(v5);
      }
    }
  }
}

__n128 sub_1002CA59C@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v9 = a2;
  for (i = *(a1 + 8); i; i = *i)
  {
    v5 = *(i + 8);
    if (v5 <= a2)
    {
      if (v5 >= a2)
      {
        v10 = &v9;
        v6 = sub_1002CA63C(a1, &v9);
        v7 = *(v6 + 7);
        *a3 = *(v6 + 5);
        *(a3 + 16) = v7;
        result = *(v6 + 9);
        *(a3 + 32) = result;
        *(a3 + 48) = v6[11];
        return result;
      }

      ++i;
    }
  }

  *(a3 + 48) = 0;
  result.n128_u64[0] = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

uint64_t *sub_1002CA63C(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_1002CA720(void *a1)
{
  if (CLMotionActivity::isTypeWalking())
  {
    sub_1002CA9C4(a1 + 44, &v11);
    v2 = a1[36];
    if (v2)
    {
      a1[37] = v2;
      operator delete(v2);
    }

    *(a1 + 18) = v11;
    a1[38] = v12;
    if (qword_1025D4650 != -1)
    {
      sub_10172DFAC();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v4 = (a1[37] - a1[36]) >> 3;
      LODWORD(v11) = 134349056;
      *(&v11 + 4) = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "GPSODOM,Rhythmic,Distance Multiplier Model Coefficients For Hike/Walk,Size,%{public}lu", &v11, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10172EE3C();
    }
  }

  else if (CLMotionActivity::isTypeRunning())
  {
    sub_100AADAA8((a1 + 44), &v11);
    v5 = a1[36];
    if (v5)
    {
      a1[37] = v5;
      operator delete(v5);
    }

    *(a1 + 18) = v11;
    a1[38] = v12;
    if (qword_1025D4650 != -1)
    {
      sub_10172DFAC();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v7 = (a1[37] - a1[36]) >> 3;
      LODWORD(v11) = 134349056;
      *(&v11 + 4) = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "GPSODOM,Rhythmic,Distance Multiplier Model Coefficients For Run,Size,%{public}lu", &v11, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10172ED3C();
    }
  }

  else
  {
    sub_1002CA9C4(a1 + 44, &v11);
    v8 = a1[36];
    if (v8)
    {
      a1[37] = v8;
      operator delete(v8);
    }

    *(a1 + 18) = v11;
    a1[38] = v12;
    if (qword_1025D4650 != -1)
    {
      sub_10172DFAC();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v10 = (a1[37] - a1[36]) >> 3;
      LODWORD(v11) = 134349056;
      *(&v11 + 4) = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "GPSODOM,Rhythmic,Distance Multiplier Model Coefficients For Default,Size,%{public}lu", &v11, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10172EC3C();
    }
  }
}

uint64_t sub_1002CA9C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_1002AD2D8(a2, *a1, a1[1], (a1[1] - *a1) >> 3);
}

uint64_t sub_1002CA9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 1264))
  {
    sub_10000B230(v154);
    if (v155 == 1)
    {
      Current = v154[2] + *(a2 + 1176) + *(a2 + 1168) - v154[0];
    }

    else
    {
      Current = CFAbsoluteTimeGetCurrent();
    }

    v148 = 0;
    v151 = 0x300000003;
    v150 = xmmword_101CF0650;
    v149 = off_10249DB60;
    v152 = &v153;
    *v158 = *(a2 + 1272);
    *&v158[16] = *(a2 + 1288);
    if (cnnavigation::ECEFToLLA())
    {
      if (qword_1025D4680 != -1)
      {
        sub_101A20320();
      }

      v9 = qword_1025D4688;
      if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Raven: Conversion to client location failed in ECEF to LLA conversion.", buf, 2u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_49;
      }

      sub_101A20348(buf);
      *v129 = 0;
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRavenController::ConvertRavenSolutionToClientLocation(const raven::RavenSolutionEvent &, CLLocationProvider_Type::NotificationData &) const", "%s\n", v10);
      goto LABEL_195;
    }

    v11 = *&v172;
    v12 = v173;
    sub_1002C1240(buf);
    v148 = buf[8];
    sub_1000AC16C(&v149, &buf[16]);
    cnnavigation::ECEFToENUJacobian::~ECEFToENUJacobian(buf);
    if ((v148 & 1) == 0)
    {
      if (qword_1025D4680 != -1)
      {
        sub_101A20320();
      }

      v18 = qword_1025D4688;
      if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "Raven: Conversion to client location failed: ENU Jacobian.", buf, 2u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_49;
      }

      sub_101A20348(buf);
      *v129 = 0;
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRavenController::ConvertRavenSolutionToClientLocation(const raven::RavenSolutionEvent &, CLLocationProvider_Type::NotificationData &) const", "%s\n", v10);
      goto LABEL_195;
    }

    *&v129[24] = 0x300000003;
    *&v129[8] = xmmword_101CF0650;
    *v129 = off_10249DB60;
    *&v129[32] = &v129[40];
    if ((sub_1002C12EC(a2 + 1168, v129) & 1) == 0)
    {
      if (qword_1025D4680 != -1)
      {
        sub_101A20320();
      }

      v19 = qword_1025D4688;
      if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "Raven: Conversion to client location failed: Get user ECEF position covariance.", buf, 2u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_49;
      }

      sub_101A20348(buf);
      *v168 = 0;
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRavenController::ConvertRavenSolutionToClientLocation(const raven::RavenSolutionEvent &, CLLocationProvider_Type::NotificationData &) const", "%s\n", v10);
      goto LABEL_195;
    }

    v169 = 0x300000003;
    *&v168[8] = xmmword_101CF0650;
    *v168 = off_10249DB60;
    v170 = &v171;
    if ((sub_1002981C8(&v147, v129, v168) & 1) == 0)
    {
      if (qword_1025D4680 != -1)
      {
        sub_101A20320();
      }

      v20 = qword_1025D4688;
      if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "Raven: Conversion to client location failed: rotate variance.", buf, 2u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_49;
      }

      sub_101A20348(buf);
      LOWORD(v162) = 0;
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRavenController::ConvertRavenSolutionToClientLocation(const raven::RavenSolutionEvent &, CLLocationProvider_Type::NotificationData &) const", "%s\n", v10);
      goto LABEL_195;
    }

    v13 = *sub_1000AC220(v168, 0, 0);
    v14 = sqrt(v13 + *sub_1000AC220(v168, 1, 1));
    v15 = sqrt(*sub_1000AC220(v168, 2, 2));
    v16 = (*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
    if (!v16 || v14 <= 0.0 || v15 <= 0.0)
    {
      if (qword_1025D4680 != -1)
      {
        sub_101A20320();
      }

      v17 = qword_1025D4688;
      if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_INFO))
      {
        *buf = 134349312;
        *&buf[4] = v14;
        *&buf[12] = 2050;
        *&buf[14] = v15;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "Raven: Conversion to client location failed: Invalid accuracy: horizontalAccuracy %{public}.4f, verticalAccuracy %{public}.4f", buf, 0x16u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_49;
      }

      sub_101A20348(buf);
      v162 = 134349312;
      v163 = v14;
      v164 = 2050;
      v165 = v15;
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRavenController::ConvertRavenSolutionToClientLocation(const raven::RavenSolutionEvent &, CLLocationProvider_Type::NotificationData &) const", "%s\n", v10);
      goto LABEL_195;
    }

    v22 = *sub_1000AC220(v168, 0, 0);
    v117 = v15;
    v23 = *sub_1000AC220(v168, 0, 1);
    v24 = *sub_1000AC220(v168, 1, 1);
    v25 = v22 + v24;
    v26 = (v23 * v23 - v22 * v24) * 4.0 + v25 * v25;
    v27 = fabs(v26);
    v28 = sqrt(v26);
    if (v27 <= 0.0000001)
    {
      v28 = 0.0;
    }

    v29.f64[0] = v25 + v28;
    v29.f64[1] = v25 - v28;
    __asm { FMOV            V0.2D, #0.5 }

    v33 = vmulq_f64(v29, _Q0);
    v35 = (*&v33.f64[0] <= -1 || ((*&v33.f64[0] & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v33.f64[0] - 1) >= 0xFFFFFFFFFFFFFLL;
    if (v35 || (*&v33.f64[1] > -1 ? (v36 = ((*&v33.f64[1] & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) : (v36 = 1), v36 ? (v37 = (*&v33.f64[1] - 1) >= 0xFFFFFFFFFFFFFLL) : (v37 = 0), v37))
    {
      if (qword_1025D4680 != -1)
      {
        sub_101A20320();
      }

      v40 = qword_1025D4688;
      if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_INFO))
      {
        *buf = 134349568;
        *&buf[4] = v22;
        *&buf[12] = 2050;
        *&buf[14] = v23;
        *&buf[22] = 2050;
        v178 = *&v24;
        _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_INFO, "Raven: Conversion to client location failed in computing error ellipse: a, %{public}.4f, b, %{public}.4f, c, %{public}.4f.", buf, 0x20u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_49;
      }

      sub_101A20348(buf);
      v162 = 134349568;
      v163 = v22;
      v164 = 2050;
      v165 = v23;
      v166 = 2050;
      v167 = v24;
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRavenController::ConvertRavenSolutionToClientLocation(const raven::RavenSolutionEvent &, CLLocationProvider_Type::NotificationData &) const", "%s\n", v10);
      goto LABEL_195;
    }

    v38 = v11 * 57.2957795;
    v116 = *&v12 * 57.2957795;
    v115 = v33;
    if (fabs(v23) <= 0.0000001)
    {
      if (v24 >= v22 + -0.0000001)
      {
        v39 = 0.0;
      }

      else
      {
        v39 = 90.0;
      }
    }

    else
    {
      v39 = atan((v33.f64[0] - v24) / v23) * 57.2957795;
    }

    v146 = 0.0;
    v145 = -1;
    *&v129[12] = 0;
    *&v129[4] = 0;
    *&v129[20] = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v129[36] = _Q0;
    v130 = _Q0;
    v131 = _Q0;
    *v129 = 0xFFFF;
    v132 = 0;
    v134 = 0;
    v135 = 0;
    v133 = 0xBFF0000000000000;
    v137 = 0xBFF0000000000000;
    v136 = 0;
    v138 = 0x7FFFFFFF;
    v140 = 0;
    v141 = 0;
    v139 = 0;
    v142 = 0;
    sub_100021ED8(&v143);
    *&v129[4] = v38;
    v42 = *&v12 * 57.2957795;
    *&v129[12] = *&v12 * 57.2957795;
    *(&v131 + 1) = Current;
    if (*(a2 + 1344) == 1)
    {
      *&v129[44] = *(a2 + 1352);
    }

    v162 = 0;
    v43 = *(a1 + 232);
    if (v43 && [v43 syncgetAltitude:v129 rel:&v162 undulation:&v146])
    {
      sub_100218038(*(a1 + 4672), 2, v146, Current);
      sub_100214CE0(*(a1 + 4672), &v146, &v145, Current);
      if (qword_1025D4680 != -1)
      {
        sub_101A20320();
      }

      v44 = qword_1025D4688;
      if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134283777;
        *&buf[4] = v146;
        *&buf[12] = 1026;
        *&buf[14] = v145;
        _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEBUG, "Raven: DEM,EGM08,undulation,%{private}.2lf,undulationModel,%{public}d", buf, 0x12u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_102;
      }
    }

    else
    {
      if (qword_1025D4680 != -1)
      {
        sub_101A20320();
        v42 = *&v12 * 57.2957795;
      }

      v45 = qword_1025D4688;
      if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_INFO, "Raven: DEM unavailable. Using DMA instead.", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A20348(buf);
        *v168 = 0;
        v103 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRavenController::ConvertRavenSolutionToClientLocation(const raven::RavenSolutionEvent &, CLLocationProvider_Type::NotificationData &) const", "%s\n", v103);
        if (v103 != buf)
        {
          free(v103);
        }

        v42 = *&v12 * 57.2957795;
      }

      *v158 = 0;
      if ((sub_1001D381C(v158, v38, v42) & 1) == 0)
      {
        if (qword_1025D4680 != -1)
        {
          sub_101A20320();
        }

        v49 = qword_1025D4688;
        if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_INFO, "Raven: Conversion to client location failed in computing undulation.", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A20348(buf);
          *v168 = 0;
          v104 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRavenController::ConvertRavenSolutionToClientLocation(const raven::RavenSolutionEvent &, CLLocationProvider_Type::NotificationData &) const", "%s\n", v104);
          if (v104 != buf)
          {
            free(v104);
          }
        }

        v48 = 0;
        v47 = -1.0;
LABEL_109:
        if (v144)
        {
          sub_100008080(v144);
        }

        if (!v48)
        {
          goto LABEL_49;
        }

        v111 = v47;
        v50 = -1.0;
        if (*(a2 + 1344) == 1)
        {
          v112 = sqrt(*(a2 + 1384));
          v113 = *(a2 + 1352);
          if (*(a2 + 1345) == 1 && (v127 = *(a2 + 1360), v128 = *(a2 + 1376), v174 = 0x300000003, v173 = xmmword_101CF0650, *&v172 = COERCE_DOUBLE(off_10249DB60), v175 = &v176, *&v129[24] = 0x400000004, *&v129[8] = xmmword_101CF0660, *v129 = off_10249DBF0, *&v129[32] = &v129[40], sub_1002C14DC(&v147, &v127, &v124)) && v148 == 1)
          {
            sub_1000AC16C(&v172, &v149);
            v118 = v39;
            v51 = v38;
            if (!sub_1002C1614(a2 + 1168, v129) || (v109 = v125, v110 = v124, v52 = sqrt(v109 * v109 + v110 * v110), (*&v52 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL) || (v53 = v52, fabs(v52) <= 0.0000001))
            {
              v54 = -1.0;
LABEL_193:
              v38 = v51;
              v39 = v118;
              goto LABEL_161;
            }

            v54 = -1.0;
            if (fabs(v126) <= 0.866025404)
            {
              sub_1003236F8(1, 3, buf);
              sub_100323864(buf, v123);
              sub_100323A14(4u, 4u, v168);
              *sub_1000AC220(v168, 0, 0) = 0x3FF0000000000000;
              sub_100323C60(buf, v168, v123, v123);
              sub_100323E98(buf, &v172);
              sub_100323F74(v168, v129, buf);
              sub_100323FF4(v168, v158);
              sub_100323F74(buf, v158, &v162);
              v55 = 1.0 / v53;
              v56 = *(a2 + 1352);
              v113 = v53 * v56;
              v57 = fabs(v53 * v56);
              if (COERCE__INT64(v53 * v56) > -1 && (*&v57 - 0x10000000000000) >> 53 < 0x3FF || (COERCE__INT64(v53 * v56) - 1) < 0xFFFFFFFFFFFFFLL || *&v57 == 0)
              {
                v159 = 0x400000001;
                *&v158[8] = xmmword_101CF0670;
                *v158 = off_10249E090;
                v160 = &v161;
                *sub_1000AC220(v158, 0, 0) = v53;
                *sub_1000AC220(v158, 0, 1) = v55 * (v110 * v56);
                *sub_1000AC220(v158, 0, 2) = v55 * (v109 * v56);
                *sub_1000AC220(v158, 0, 3) = 0;
                sub_100324050(v158, &v162, buf);
                sub_1003240D4(v158, &v156);
                sub_1003241FC(buf, &v156, v120);
                if (v121 != 1)
                {
                  __assert_rtn("operator double", "cnmatrixbase.h", 979, "num_elements_ == 1");
                }

                v61 = *v122;
                v62 = *v122;
                v63 = *v122 & 0x7FFFFFFFFFFFFFFFLL;
                v64 = (v63 - 1) < 0xFFFFFFFFFFFFFLL;
                v65 = (v63 - 0x10000000000000) >> 53 < 0x3FF;
                if (*v122 >= 0)
                {
                  v65 = 0;
                }

                if (v62 >= 0.0)
                {
                  v64 = 0;
                }

                v66 = *&v62 & 0x7FFFFFFFFFFFFFFFLL;
                if (!v66)
                {
                  v64 = 1;
                }

                v67 = v66 <= 0x7FF0000000000000;
                v68 = v66 == 0x7FF0000000000000 || v64;
                if (!v67)
                {
                  v68 = 1;
                }

                if (((v68 | v65) & 1) != 0 || v61 > *(a2 + 1384))
                {
                  if (qword_1025D4680 != -1)
                  {
                    sub_101A20320();
                  }

                  v69 = qword_1025D4688;
                  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134349056;
                    *&buf[4] = v61;
                    _os_log_impl(dword_100000000, v69, OS_LOG_TYPE_DEFAULT, "Raven: using simplified speed uncertainty formulation,speedVar,%{public}.2lf", buf, 0xCu);
                  }

                  if (sub_10000A100(121, 2))
                  {
                    sub_101A20348(buf);
                    v156 = 134349056;
                    v157 = v61;
                    v107 = _os_log_send_and_compose_impl();
                    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRavenController::ConvertRavenSolutionToClientLocation(const raven::RavenSolutionEvent &, CLLocationProvider_Type::NotificationData &) const", "%s\n", v107);
                    if (v107 != buf)
                    {
                      free(v107);
                    }
                  }

                  v61 = v53 * (v53 * *sub_1000AC220(&v162, 0, 0));
                }

                if (*&v61 > -1 && ((*&v61 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v61 - 1) < 0xFFFFFFFFFFFFFLL)
                {
                  v112 = sqrt(v61);
                  goto LABEL_212;
                }

                if (qword_1025D4680 != -1)
                {
                  sub_101A20320();
                }

                v95 = qword_1025D4688;
                if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134349056;
                  *&buf[4] = v61;
                  _os_log_impl(dword_100000000, v95, OS_LOG_TYPE_ERROR, "Raven: client speed uncertainty invalid,speedVar,%{public}.2lf", buf, 0xCu);
                }

                if (sub_10000A100(121, 0))
                {
                  sub_101A20348(buf);
                  v156 = 134349056;
                  v157 = v61;
                  v108 = _os_log_send_and_compose_impl();
                  sub_100152C7C("Generic", 1, 0, 0, "BOOL CLRavenController::ConvertRavenSolutionToClientLocation(const raven::RavenSolutionEvent &, CLLocationProvider_Type::NotificationData &) const", "%s\n", v108);
                  if (v108 != buf)
                  {
                    free(v108);
                  }
                }

                v93 = -1.0;
                v112 = -1.0;
              }

              else
              {
                if (qword_1025D4680 != -1)
                {
                  sub_101A20320();
                }

                v91 = qword_1025D4688;
                if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134283521;
                  *&buf[4] = v53 * v56;
                  _os_log_impl(dword_100000000, v91, OS_LOG_TYPE_ERROR, "Raven: client speed invalid,speed,%{private}.2lf", buf, 0xCu);
                }

                v92 = sub_10000A100(121, 0);
                v93 = -1.0;
                v112 = -1.0;
                if (v92)
                {
                  sub_101A20348(buf);
                  *v158 = 134283521;
                  *&v158[4] = v53 * v56;
                  v94 = _os_log_send_and_compose_impl();
                  sub_100152C7C("Generic", 1, 0, 0, "BOOL CLRavenController::ConvertRavenSolutionToClientLocation(const raven::RavenSolutionEvent &, CLLocationProvider_Type::NotificationData &) const", "%s\n", v94);
                  if (v94 != buf)
                  {
                    free(v94);
                  }

                  v93 = -1.0;
                }
              }

              v113 = v93;
LABEL_212:
              v96 = atan2(v124, v125) * 57.2957795;
              if (v96 >= 0.0)
              {
                v97 = v96;
              }

              else
              {
                v97 = v96 + 360.0;
              }

              v54 = -1.0;
              if ((*&v97 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                v178 = 0x400000001;
                *&buf[8] = xmmword_101CF0670;
                *buf = off_10249E090;
                v179 = &v180;
                *sub_1000AC220(buf, 0, 0) = 0;
                *sub_1000AC220(buf, 0, 1) = v109 * v55;
                *sub_1000AC220(buf, 0, 2) = -(v110 * v55);
                *sub_1000AC220(buf, 0, 3) = 0;
                sub_100324050(buf, &v162, v158);
                sub_1003240D4(buf, &v156);
                sub_1003241FC(v158, &v156, v120);
                if (v121 != 1)
                {
                  __assert_rtn("operator double", "cnmatrixbase.h", 979, "num_elements_ == 1");
                }

                v98 = sqrt(*v122);
                v101 = ((*v122 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && *v122 >= 0 || (*v122 - 1) < 0xFFFFFFFFFFFFFLL;
                v102 = fmin(v98 * 57.2957795, 180.0);
                if (v101)
                {
                  v50 = v102;
                }

                else
                {
                  v50 = -1.0;
                }

                if (v101)
                {
                  v54 = v97;
                }

                else
                {
                  v54 = -1.0;
                }
              }

              goto LABEL_193;
            }
          }

          else
          {
            v54 = -1.0;
          }
        }

        else
        {
          v54 = -1.0;
          v112 = -1.0;
          v113 = -1.0;
        }

LABEL_161:
        v72 = vcvtmd_s64_f64(*(a2 + 216) * 100.0);
        if (v72 >= 95)
        {
          v73 = 95;
        }

        else
        {
          v73 = v72;
        }

        if (*(a2 + 1184))
        {
          v74 = v38;
          v75 = *(a2 + 1192);
          v76 = *(a2 + 1200);
          *v129 = *(a3 + 192);
          *buf = *(a2 + 1176) + *(a2 + 1168);
          v8 = sub_1002A879C(a1 + 4600, buf, v129);
          v77 = v115;
          if (v8)
          {
            v119 = v39;
            v78 = *(a2 + 1168);
            v79 = *(a2 + 1176);
            v80 = *(a2 + 2624);
            if (v80 >= 3)
            {
              v114 = *(a2 + 1176);
              if (qword_1025D4680 != -1)
              {
                sub_101A20320();
              }

              v81 = qword_1025D4688;
              if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v81, OS_LOG_TYPE_ERROR, "Raven: Received unhandled position context state type", buf, 2u);
              }

              if (sub_10000A100(121, 0))
              {
                sub_101A20348(buf);
                *v168 = 0;
                v106 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 0, "BOOL CLRavenController::ConvertRavenSolutionToClientLocation(const raven::RavenSolutionEvent &, CLLocationProvider_Type::NotificationData &) const", "%s\n", v106);
                if (v106 != buf)
                {
                  free(v106);
                }
              }

              LOBYTE(v80) = 0;
              v77 = v115;
              v79 = v114;
            }

            v82 = v79 + v78;
            v83 = *(a2 + 2632);
            v84 = *(a2 + 2640);
            *a3 = 0xFFFF;
            *(a3 + 4) = v74;
            *(a3 + 12) = v116;
            *(a3 + 20) = v14;
            *(a3 + 28) = v111;
            *(a3 + 36) = v117;
            *(a3 + 44) = v113;
            *(a3 + 52) = v112;
            *(a3 + 60) = v54;
            *(a3 + 68) = v50;
            *(a3 + 76) = Current;
            *(a3 + 84) = v73 & ~(v73 >> 31);
            *(a3 + 88) = 0x4024000000000000;
            *(a3 + 96) = 1;
            *(a3 + 100) = v74;
            *(a3 + 108) = v116;
            *(a3 + 116) = v54;
            *(a3 + 128) = 0x100000032;
            *(a3 + 136) = 1;
            v85 = *v129;
            *(a3 + 184) = v76 + v75;
            *(a3 + 192) = v85;
            *(a3 + 200) = vcvt_f32_f64(vmulq_f64(vsqrtq_f64(v77), vdupq_n_s64(0x400394FC4A554B4FuLL)));
            *(a3 + 208) = v119;
            *(a3 + 472) = v145;
            v86 = v146;
            *(a3 + 476) = v86;
            *(a3 + 504) = v82;
            *(a3 + 736) = v80;
            *(a3 + 744) = v83;
            *(a3 + 752) = v84;
            if (*(a2 + 1160) <= 0.5)
            {
              if (*(a2 + 1152) <= 0.5)
              {
                v87 = 2;
              }

              else
              {
                v87 = 3;
              }
            }

            else
            {
              v87 = 4;
            }

            *(a3 + 796) = v87;
          }

          else
          {
            if (qword_1025D4680 != -1)
            {
              sub_101A20320();
            }

            v89 = qword_1025D4688;
            if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v89, OS_LOG_TYPE_INFO, "Raven: Conversion to client location failed in mach time conversion.", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A20348(buf);
              *v168 = 0;
              v90 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRavenController::ConvertRavenSolutionToClientLocation(const raven::RavenSolutionEvent &, CLLocationProvider_Type::NotificationData &) const", "%s\n", v90);
              if (v90 != buf)
              {
                free(v90);
              }
            }
          }

          goto LABEL_50;
        }

        if (qword_1025D4680 != -1)
        {
          sub_101A20320();
        }

        v88 = qword_1025D4688;
        if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v88, OS_LOG_TYPE_INFO, "Raven: Conversion to client location failed: iOS time not valid", buf, 2u);
        }

        if (!sub_10000A100(121, 2))
        {
LABEL_49:
          v8 = 0;
LABEL_50:
          cnnavigation::ECEFToENUJacobian::~ECEFToENUJacobian(&v147);
          return v8;
        }

        sub_101A20348(buf);
        *v129 = 0;
        v10 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRavenController::ConvertRavenSolutionToClientLocation(const raven::RavenSolutionEvent &, CLLocationProvider_Type::NotificationData &) const", "%s\n", v10);
LABEL_195:
        if (v10 != buf)
        {
          free(v10);
        }

        goto LABEL_49;
      }

      v146 = *v158;
      sub_100218038(*(a1 + 4672), 1, *v158, Current);
      sub_100214CE0(*(a1 + 4672), &v146, &v145, Current);
      if (qword_1025D4680 != -1)
      {
        sub_101A20320();
      }

      v46 = qword_1025D4688;
      if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134283777;
        *&buf[4] = v146;
        *&buf[12] = 1026;
        *&buf[14] = v145;
        _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEBUG, "Raven: DEM,DMA,undulation,%{private}.2lf,undulationModel,%{public}d", buf, 0x12u);
      }

      if (!sub_10000A100(121, 2))
      {
LABEL_102:
        v47 = *(&v12 + 1) - v146;
        v48 = 1;
        goto LABEL_109;
      }
    }

    sub_101A20348(buf);
    *v168 = 134283777;
    *&v168[4] = v146;
    *&v168[12] = 1026;
    *&v168[14] = v145;
    v105 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRavenController::ConvertRavenSolutionToClientLocation(const raven::RavenSolutionEvent &, CLLocationProvider_Type::NotificationData &) const", "%s\n", v105);
    if (v105 != buf)
    {
      free(v105);
    }

    goto LABEL_102;
  }

  if (qword_1025D4680 != -1)
  {
    sub_101A2038C();
  }

  v7 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "Raven: Conversion to client location failed due to invalid user position.", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A260A4();
  }

  return 0;
}

uint64_t sub_1002CC8B0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
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

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_20;
        }

        v12 = *(this + 1);
        v10 = *(this + 2);
LABEL_24:
        v16[0] = 0;
        if (v12 >= v10 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v16);
          if (!result)
          {
            return result;
          }

          v13 = v16[0];
          v14 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(this + 1) = v14;
        }

        *(a1 + 24) = v13 != 0;
        *(a1 + 32) |= 4u;
        if (v14 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

      if (v7 != 1 || v8 != 1)
      {
        goto LABEL_20;
      }

      *v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v16) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = *v16;
      *(a1 + 32) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
      {
        *(this + 1) = v9 + 1;
LABEL_15:
        *v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v16) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v16;
        *(a1 + 32) |= 2u;
        v11 = *(this + 1);
        v10 = *(this + 2);
        if (v11 < v10 && *v11 == 24)
        {
          v12 = v11 + 1;
          *(this + 1) = v12;
          goto LABEL_24;
        }
      }
    }

    if (v8 == 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t *sub_1002CCA8C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

float *sub_1002CCB64(float *result, float *a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  v9 = result;
LABEL_2:
  v10 = v9;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v9 = v10;
    v12 = v11;
    v13 = a2 - v10;
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:
          v56 = v10[1];
          v57 = *(a2 - 1);
          if (v56 > v57)
          {
            v58 = *(v10 + 1);
          }

          else
          {
            v58 = *(a2 - 1);
          }

          if (v56 > v57)
          {
            v56 = *(a2 - 1);
          }

          *(a2 - 1) = v56;
          *(v10 + 1) = v58;
          v59 = *(a2 - 1);
          if (v59 > *v10)
          {
            v60 = *(a2 - 1);
          }

          else
          {
            v60 = *v10;
          }

          if (v59 > *v10)
          {
            v59 = *v10;
          }

          *(a2 - 1) = v59;
          v62 = *v10;
          v61 = v10[1];
          if (v60 <= v61)
          {
            v62 = v10[1];
            v61 = v60;
          }

          *v10 = v62;
          v10[1] = v61;
          return result;
        case 4:
          v86 = v10[1];
          v85 = v10[2];
          if (*v10 > v85)
          {
            v87 = *v10;
          }

          else
          {
            v87 = v10[2];
          }

          if (*v10 <= v85)
          {
            v85 = *v10;
          }

          v10[2] = v85;
          *v10 = v87;
          v88 = *(a2 - 1);
          if (v86 > v88)
          {
            v89 = v86;
          }

          else
          {
            v89 = *(a2 - 1);
          }

          if (v86 <= v88)
          {
            v88 = v86;
          }

          *(a2 - 1) = v88;
          v90 = *v10;
          if (*v10 > v89)
          {
            v91 = *v10;
          }

          else
          {
            v91 = v89;
          }

          if (*v10 > v89)
          {
            v90 = v89;
          }

          *v10 = v91;
          v10[1] = v90;
          v92 = v10[2];
          v93 = *(a2 - 1);
          if (v92 > v93)
          {
            v94 = v10[2];
          }

          else
          {
            v94 = *(a2 - 1);
          }

          if (v92 > v93)
          {
            v92 = *(a2 - 1);
          }

          *(a2 - 1) = v92;
          v95 = v10[1];
          if (v95 > v94)
          {
            v96 = v10[1];
          }

          else
          {
            v96 = v94;
          }

          if (v95 > v94)
          {
            v95 = v94;
          }

          v10[1] = v96;
          v10[2] = v95;
          return result;
        case 5:
          v63 = *v10;
          v64 = v10[1];
          if (*v10 > v64)
          {
            v65 = *v10;
          }

          else
          {
            v65 = v10[1];
          }

          if (*v10 > v64)
          {
            v63 = v10[1];
          }

          *v10 = v65;
          v10[1] = v63;
          v66 = v10[3];
          v67 = *(a2 - 1);
          if (v66 > v67)
          {
            v68 = *(v10 + 3);
          }

          else
          {
            v68 = *(a2 - 1);
          }

          if (v66 > v67)
          {
            v66 = *(a2 - 1);
          }

          *(a2 - 1) = v66;
          *(v10 + 3) = v68;
          v69 = *(a2 - 1);
          v70 = v10[2];
          if (v69 > v70)
          {
            v71 = *(a2 - 1);
          }

          else
          {
            v71 = v10[2];
          }

          if (v69 > v70)
          {
            v69 = v10[2];
          }

          *(a2 - 1) = v69;
          v73 = *(v10 + 2);
          v72 = v10[3];
          v74 = v10[1];
          if (v71 <= v72)
          {
            v73 = *(v10 + 3);
            v72 = v71;
          }

          *(v10 + 2) = v73;
          v10[3] = v72;
          v75 = *(a2 - 1);
          if (v74 > v75)
          {
            v76 = v74;
          }

          else
          {
            v76 = *(a2 - 1);
          }

          if (v74 <= v75)
          {
            v75 = v74;
          }

          *(a2 - 1) = v75;
          v77 = *v10;
          v79 = v10[2];
          v78 = v10[3];
          if (v78 > *v10)
          {
            v80 = v10[3];
          }

          else
          {
            v80 = *v10;
          }

          if (v78 > *v10)
          {
            v78 = *v10;
          }

          if (v80 <= v79)
          {
            v77 = v10[2];
            v79 = v80;
          }

          if (v78 > v76)
          {
            v81 = v78;
          }

          else
          {
            v81 = v76;
          }

          if (v78 > v76)
          {
            v78 = v76;
          }

          if (v81 <= v79)
          {
            v76 = v79;
          }

          *v10 = v77;
          v10[1] = v76;
          if (v81 > v79)
          {
            v82 = v79;
          }

          else
          {
            v82 = v81;
          }

          v10[2] = v82;
          v10[3] = v78;
          return result;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v83 = *(a2 - 1);
        v84 = *v10;
        if (v83 > *v10)
        {
          *v10 = v83;
          *(a2 - 1) = v84;
        }

        return result;
      }
    }

    if (v13 <= 23)
    {
      break;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        return sub_1003D1168(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = *(a2 - 1);
    if (v13 < 0x81)
    {
      if (*v10 > v15)
      {
        v47 = *v10;
      }

      else
      {
        v47 = *(a2 - 1);
      }

      if (*v10 <= v15)
      {
        v15 = *v10;
      }

      *(a2 - 1) = v15;
      *v10 = v47;
      v48 = *(a2 - 1);
      v49 = v10[v14];
      if (v48 > v49)
      {
        v50 = *(a2 - 1);
      }

      else
      {
        v50 = v10[v14];
      }

      if (v48 > v49)
      {
        v48 = v10[v14];
      }

      *(a2 - 1) = v48;
      v51 = *v10;
      v52 = v50 <= *v10;
      if (v50 > *v10)
      {
        v51 = v10[v14];
      }

      v10[v14] = v51;
      *&a6 = *v10;
      if (v52)
      {
        *&a6 = v50;
      }

      *v10 = *&a6;
      if (a5)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v16 = &v10[v14];
      if (*v16 > v15)
      {
        v17 = *v16;
      }

      else
      {
        v17 = *(a2 - 1);
      }

      if (*v16 <= v15)
      {
        v15 = *v16;
      }

      *(a2 - 1) = v15;
      *v16 = v17;
      v18 = *(a2 - 1);
      if (v18 > *v10)
      {
        v19 = *(a2 - 1);
      }

      else
      {
        v19 = *v10;
      }

      if (v18 > *v10)
      {
        v18 = *v10;
      }

      *(a2 - 1) = v18;
      v20 = *v16;
      v21 = v19 <= *v16;
      if (v19 > *v16)
      {
        v20 = *v10;
      }

      *v10 = v20;
      v23 = *(v16 - 1);
      v22 = *v16;
      if (v21)
      {
        v22 = v19;
      }

      *v16 = v22;
      v24 = *(a2 - 2);
      if (v23 > v24)
      {
        v25 = v23;
      }

      else
      {
        v25 = *(a2 - 2);
      }

      if (v23 <= v24)
      {
        v24 = v23;
      }

      *(a2 - 2) = v24;
      *(v16 - 1) = v25;
      v26 = *(a2 - 2);
      v27 = v10[1];
      if (v26 > v27)
      {
        v28 = *(a2 - 2);
      }

      else
      {
        v28 = v10[1];
      }

      if (v26 > v27)
      {
        v26 = v10[1];
      }

      *(a2 - 2) = v26;
      v29 = *(v16 - 1);
      v30 = v28 <= v29;
      if (v28 > v29)
      {
        v29 = v10[1];
      }

      v10[1] = v29;
      v31 = *(v16 - 1);
      if (v30)
      {
        v31 = v28;
      }

      *(v16 - 1) = v31;
      v32 = v16[1];
      v33 = *(a2 - 3);
      if (v32 > v33)
      {
        v34 = *(v16 + 1);
      }

      else
      {
        v34 = *(a2 - 3);
      }

      if (v32 > v33)
      {
        v32 = *(a2 - 3);
      }

      *(a2 - 3) = v32;
      *(v16 + 1) = v34;
      v35 = *(a2 - 3);
      v36 = v10[2];
      if (v35 > v36)
      {
        v37 = *(a2 - 3);
      }

      else
      {
        v37 = v10[2];
      }

      if (v35 > v36)
      {
        v35 = v10[2];
      }

      *(a2 - 3) = v35;
      v38 = v16[1];
      v39 = v37 <= v38;
      if (v37 > v38)
      {
        v38 = v10[2];
      }

      v10[2] = v38;
      v41 = *v16;
      v40 = v16[1];
      if (v39)
      {
        v40 = v37;
      }

      v42 = *(v16 - 1);
      if (v41 > v40)
      {
        v43 = *v16;
      }

      else
      {
        v43 = v40;
      }

      if (v41 <= v40)
      {
        v40 = *v16;
      }

      if (v40 > v42)
      {
        v44 = v40;
      }

      else
      {
        v44 = *(v16 - 1);
      }

      if (v40 > v42)
      {
        v45 = *(v16 - 1);
      }

      else
      {
        v45 = v40;
      }

      if (v44 > v43)
      {
        v46 = *(v16 - 1);
      }

      else
      {
        v46 = v43;
      }

      if (v44 > v43)
      {
        v44 = v43;
      }

      *(v16 - 1) = v46;
      *v16 = v44;
      v16[1] = v45;
      *&a6 = *v10;
      *v10 = v44;
      *v16 = *&a6;
      if (a5)
      {
        goto LABEL_90;
      }
    }

    *&a6 = *(v10 - 1);
    if (*&a6 <= *v10)
    {
      result = sub_1003D0A58(v10, a2);
      v10 = result;
      goto LABEL_95;
    }

LABEL_90:
    v53 = sub_1003D0B08(v10, a2, a6);
    if ((v54 & 1) == 0)
    {
      goto LABEL_93;
    }

    v55 = sub_1003D0ED4(v10, v53);
    v10 = v53 + 1;
    result = sub_1003D0ED4(v53 + 1, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v53;
      if (v55)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v55)
    {
LABEL_93:
      result = sub_1002CCB64(v9, v53, a3, -v12, a5 & 1);
      v10 = v53 + 1;
LABEL_95:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  v97 = v10 + 1;
  v99 = v10 == a2 || v97 == a2;
  if (a5)
  {
    if (!v99)
    {
      v100 = 0;
      v101 = v10;
      do
      {
        v103 = *v101;
        v102 = v101[1];
        v101 = v97;
        if (v102 > v103)
        {
          v104 = v100;
          while (1)
          {
            *(v10 + v104 + 4) = v103;
            if (!v104)
            {
              break;
            }

            v103 = *(v10 + v104 - 4);
            v104 -= 4;
            if (v102 <= v103)
            {
              v105 = (v10 + v104 + 4);
              goto LABEL_194;
            }
          }

          v105 = v10;
LABEL_194:
          *v105 = v102;
        }

        v97 = v101 + 1;
        v100 += 4;
      }

      while (v101 + 1 != a2);
    }
  }

  else if (!v99)
  {
    do
    {
      v107 = *v9;
      v106 = v9[1];
      v9 = v97;
      if (v106 > v107)
      {
        v108 = v97;
        do
        {
          *v108 = v107;
          v107 = *(v108 - 2);
          --v108;
        }

        while (v106 > v107);
        *v108 = v106;
      }

      ++v97;
    }

    while (v9 + 1 != a2);
  }

  return result;
}

unint64_t sub_1002CD0DC(int a1, int a2)
{
  if (a1 > 6)
  {
    if (a1 > 8)
    {
      if (a1 == 9)
      {
        v3 = &dword_100000000;
        v2 = 7;
      }

      else
      {
        if (a1 != 10)
        {
          goto LABEL_22;
        }

        v3 = &dword_100000000;
        v2 = 9;
      }
    }

    else
    {
      v3 = &dword_100000000;
      if (a1 == 7)
      {
        v2 = 8;
      }

      else
      {
        v2 = 2;
      }
    }
  }

  else
  {
    if (a1 <= 4)
    {
      switch(a1)
      {
        case 1:
          v2 = a2 == 16;
          goto LABEL_20;
        case 3:
          if (a2 == 16)
          {
            v2 = 6;
          }

          else
          {
            v2 = 5;
          }

          goto LABEL_20;
        case 4:
          v2 = 4;
LABEL_20:
          v3 = &dword_100000000;
          return v2 | v3;
      }

LABEL_22:
      v3 = 0;
      v2 = 0;
      return v2 | v3;
    }

    v3 = &dword_100000000;
    v2 = 3;
  }

  return v2 | v3;
}

uint64_t *sub_1002CD1A0(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_1002CD280(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A8810;
  sub_1002CD2E8(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_1002CD2E8(void *result)
{
  if (qword_102637C58 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[6];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[7];
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

    v8 = v1[11];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    result = v1[12];
    if (result)
    {
      v9 = *(*result + 8);

      return v9();
    }
  }

  return result;
}

void sub_1002CD490(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A7FA0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1002CD4E4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A8090;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1002CD538(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A85B8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1002CD58C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A8720;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_1002CD5E0(void *result)
{
  v1 = result;
  v2 = result[10];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (qword_102637C50 != result)
  {
    v4 = result[2];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[3];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[4];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    result = v1[5];
    if (result)
    {
      v7 = *(*result + 8);

      return v7();
    }
  }

  return result;
}

void sub_1002CD718(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A8108;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1002CD76C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A81F8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1002CD7C0(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    if (*(a1 + 24))
    {
      v5 = *(a1 + 16);
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        if ((*(a1 + 24) & 2) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((*(a1 + 24) & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    v6 = *(a1 + 8);
    if (!v6)
    {
      v6 = *(qword_102637BC0 + 8);
    }

    v7 = sub_1002BEDE4(v6, a2);
    v9 = v7;
    if (v7 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, v8);
    }

    else
    {
      v10 = 1;
    }

    v4 = (v4 + v9 + v10 + 1);
  }

  else
  {
    v4 = 0;
  }

LABEL_16:
  *(a1 + 20) = v4;
  return v4;
}

double *sub_1002CD878(uint64_t a1, _DWORD *a2)
{
  if (a1 == a2)
  {
    sub_101A26924();
  }

  result = sub_1000AB298(a2, *(a1 + 12), *(a1 + 8));
  v5 = a2[2];
  if (v5)
  {
    v6 = 0;
    v7 = a2[3];
    do
    {
      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          v9 = sub_1000AB4C0(a1, i, v6);
          result = sub_1000AC220(a2, v6, i);
          *result = v9;
        }
      }

      ++v6;
    }

    while (v6 != v5);
  }

  return result;
}

void sub_1002CD924(uint64_t *a1)
{
  *a1 = off_1024A8798;
  v2 = a1 + 11;
  sub_1002CD5E0(a1);
  sub_100027438(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1002CD988(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A8630;
  sub_1002C925C(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1002CD9F0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A82E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1002CDA44(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (v3)
  {
    if (*(a1 + 32))
    {
      v6 = *(a1 + 16);
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
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 8) != 0)
    {
      result = v4 + 5;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  *(a1 + 28) = result;
  return result;
}

uint64_t sub_1002CDAD4(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 132);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102637D30 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 132);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      v8 = *(qword_102637D30 + 16);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  if (*(v5 + 32) >= 1)
  {
    v9 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 24) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 32));
  }

  if (*(v5 + 56) >= 1)
  {
    v10 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 48) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 56));
  }

  v11 = *(v5 + 132);
  if ((v11 & 0x10) != 0)
  {
    v12 = *(v5 + 72);
    if (!v12)
    {
      v12 = *(qword_102637D30 + 72);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v12, a2, a4);
    v11 = *(v5 + 132);
    if ((v11 & 0x20) == 0)
    {
LABEL_17:
      if ((v11 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_24;
    }
  }

  else if ((v11 & 0x20) == 0)
  {
    goto LABEL_17;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 80), a3);
  v11 = *(v5 + 132);
  if ((v11 & 0x40) == 0)
  {
LABEL_18:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 88), a3);
  if ((*(v5 + 132) & 0x80) == 0)
  {
    goto LABEL_28;
  }

LABEL_25:
  v13 = *(v5 + 96);
  if (!v13)
  {
    v13 = *(qword_102637D30 + 96);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v13, a2, a4);
LABEL_28:
  if (*(v5 + 112) >= 1)
  {
    v14 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, *(*(v5 + 104) + 8 * v14++), a2, a4);
    }

    while (v14 < *(v5 + 112));
  }

  return result;
}

void sub_1002CDC7C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019597BC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLOdometerNotifierCompanion::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019597D0();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLOdometerNotifierCompanion::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1002CDE48(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1002CDE48(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v5 = *a3;
  if (*a3 == 23)
  {
    v9 = *(a4 + 808);
    if (v9 && sub_10030D934(v9) >= 2)
    {
      if (qword_1025D4390 != -1)
      {
        sub_101959820();
      }

      v10 = (a4 + 808);
      v11 = qword_1025D4398;
      if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEBUG))
      {
        v12 = sub_10030D934(*v10);
        *buf = 134349056;
        v19 = v12;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "Location batch notification size %{public}ld", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101959D48(v10);
      }

      if (sub_10030D934(*v10))
      {
        v13 = 0;
        do
        {
          sub_10030E2C0(*v10, v13, v17);
          sub_10030D6E4(*v10, v13, buf);
          sub_1002A24FC(a1, v17, buf);
          if (v20)
          {
            sub_100008080(v20);
          }

          ++v13;
        }

        while (v13 < sub_10030D934(*v10));
      }
    }

    else
    {

      sub_1002A24FC(a1, a4, a4 + 160);
    }
  }

  else if (v5 == 13)
  {
    v7 = sub_1004D2FB8(a1);

    sub_100858B00(a1, v7);
  }

  else if (v5)
  {
    if (qword_1025D4390 != -1)
    {
      sub_101959820();
    }

    v15 = qword_1025D4398;
    if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_ERROR))
    {
      v16 = *a3;
      *buf = 67240192;
      LODWORD(v19) = v16;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "#Warning Received unhandled location notification, %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101959E5C();
    }
  }

  else
  {
    v6 = a1 + 1856;

    sub_100B55A20(v6);
  }
}

void sub_1002CE138(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 528);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002CE27C(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 4 || *a3 == 2)
  {
    return (*(*result + 32))(result, a4);
  }

  return result;
}

void sub_1002CE2B8(uint64_t a1, int *a2, __int128 *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onOdometerNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onOdometerNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1002A2A10(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1002CE484(uint64_t *a1, uint64_t *a2)
{
  if (qword_1025D4760 != -1)
  {
    sub_100325278();
  }

  v4 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1;
    if (*(a1 + 23) < 0)
    {
      v5 = *a1;
    }

    v6 = *a2;
    v8 = a2[4];
    v7 = a2[5];
    v9 = a2[7];
    v10 = 136316418;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    v14 = 2048;
    v15 = v7;
    v16 = 2048;
    v17 = v8;
    v18 = 2048;
    v19 = v9;
    v20 = 2048;
    v21 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Odometer,context,%s,startTime,%f,rawSpeed,%f,speed,%f,speedAccuracy,%f,startTime,%f", &v10, 0x3Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019CAC90();
  }
}

void sub_1002CE5BC(int *a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_101AE9E4C();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v3 = *a1;
    v5 = *(a1 + 4);
    v4 = *(a1 + 5);
    v6 = *(a1 + 7);
    v7 = 134219008;
    v8 = v3;
    v9 = 2048;
    v10 = v4;
    v11 = 2048;
    v12 = v5;
    v13 = 2048;
    v14 = v6;
    v15 = 2048;
    v16 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Odometer,%f,rawSpeed,%f,speed,%f,speedAccuracy,%f,startTime,%f", &v7, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AEB118(a1);
  }
}

id sub_1002CE6C0(uint64_t a1, unsigned int *a2, _OWORD *a3, void *a4)
{
  v4 = *a2;
  v5 = a3[9];
  v12[8] = a3[8];
  v12[9] = v5;
  v6 = a3[11];
  v12[10] = a3[10];
  v12[11] = v6;
  v7 = a3[5];
  v12[4] = a3[4];
  v12[5] = v7;
  v8 = a3[7];
  v12[6] = a3[6];
  v12[7] = v8;
  v9 = a3[1];
  v12[0] = *a3;
  v12[1] = v9;
  v10 = a3[3];
  v12[2] = a3[2];
  v12[3] = v10;
  return [a4 onOdometerNotification:v4 data:v12];
}

uint64_t sub_1002CE758(uint64_t a1)
{
  v2 = (*(**(a1 + 48) + 64))(*(a1 + 48));
  v3 = v2 - *(a1 + 152);
  if (v3 < 0.0 || v3 >= 3240.0)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101AEEF1C();
    }

    v4 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v9 = v3;
      v10 = 2048;
      v11 = 0x40A9500000000000;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "#proactive Extending proactive harvesting power assertion. Elapsed proactive time, %0.2f, minimum elapsed interval, %0.2f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AEF3F8();
    }

    sub_10026ED10(a1 + 344);
    if (*(a1 + 352) >= 1)
    {
      sub_101AEF518();
    }

    sub_10000EC00(__p, "Extend");
    sub_10023B1D0(a1 + 344, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 152) = v2;
  }

  return (*(**(a1 + 328) + 24))(*(a1 + 328), v2 + 180.0);
}

void sub_1002CE914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002CE938(uint64_t a1)
{
  if (*(a1 + 65))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(a1 + 68);
  }

  return v1 & 1;
}

uint64_t sub_1002CE97C(void *a1, uint64_t a2)
{
  v2 = a1[5];
  if (!v2)
  {
    return 0;
  }

  v5 = *a1 + 696 * ((a1[3] + a1[4]) % v2);
  v6 = *(a2 + 80);
  v8 = *(a2 + 32);
  v7 = *(a2 + 48);
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 80) = v6;
  *(v5 + 32) = v8;
  *(v5 + 48) = v7;
  v9 = *(a2 + 144);
  v11 = *(a2 + 96);
  v10 = *(a2 + 112);
  *(v5 + 128) = *(a2 + 128);
  *(v5 + 144) = v9;
  *(v5 + 96) = v11;
  *(v5 + 112) = v10;
  v12 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v12;
  *(v5 + 160) = *(a2 + 160);
  std::string::operator=((v5 + 168), (a2 + 168));
  *(v5 + 192) = *(a2 + 192);
  std::string::operator=((v5 + 208), (a2 + 208));
  std::string::operator=((v5 + 232), (a2 + 232));
  memcpy((v5 + 256), (a2 + 256), 0x1A0uLL);
  if (v5 != a2)
  {
    sub_100731D80((v5 + 672), *(a2 + 672), *(a2 + 680), (*(a2 + 680) - *(a2 + 672)) >> 2);
  }

  v13 = a1[4];
  if (v13 == a1[5])
  {
    result = 0;
    a1[3] = (a1[3] + 1) % v13;
  }

  else
  {
    a1[4] = v13 + 1;
    return 1;
  }

  return result;
}

uint64_t sub_1002CEAA0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 616) == 1)
  {
    v4 = *(a1 + 624);
    if (v4 > 0.0 && *(a2 + 76) > v4 + 300.0)
    {
      *(a1 + 616) = 0;
      *(a1 + 624) = 0xBFF0000000000000;
    }
  }

  sub_1002D110C(a1, *(a2 + 76));
  if ((*(a1 + 111) & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 111))
    {
      goto LABEL_13;
    }

LABEL_9:
    if ((*(a1 + 632) & 1) == 0)
    {
      v5 = *(a2 + 76);
      if ((v5 - *(a1 + 600) <= 900.0 || v5 - *(a1 + 608) <= 900.0) && v5 - *(a1 + 80) <= *(a1 + 72))
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  if (*(a1 + 96))
  {
    goto LABEL_9;
  }

LABEL_13:
  sub_1012551A0(a1);
LABEL_14:
  if (((*(*a1 + 24))(a1, a2) & 1) != 0 || (result = (*(*a1 + 32))(a1, a2), result))
  {
    v7 = sub_1002D0630(a1);
    result = (*(**(a1 + 8) + 16))(*(a1 + 8), a1 + 80, v7);
    *(a1 + 180) = *(a1 + 616);
  }

  return result;
}

double sub_1002CEC0C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  if (result == -1.0)
  {
    sub_101B36600(a1, a2);
  }

  return result;
}

void sub_1002CEC90(uint64_t a1)
{
  if (sub_1002D01B8(a1))
  {
    v2 = (*(*a1 + 136))(a1);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 344);
  if ((v2 & 1) != 0 || *(a1 + 344))
  {
    (*(**(a1 + 56) + 64))(*(a1 + 56));
    v5 = 232;
    if (v3)
    {
      v5 = 224;
    }

    *(a1 + v5) = v4 - *(a1 + 336) + *(a1 + v5);
    *(a1 + 336) = v4;
    v6 = (*(**(a1 + 56) + 64))(*(a1 + 56));
    *v24 = *(a1 + 104);
    *&v24[16] = *(a1 + 120);
    v7 = sub_1002CFA10(a1 + 280, v24);
    if (qword_1025D47D0 != -1)
    {
      sub_101A3BD6C();
    }

    v8 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 16);
      v10 = *(a1 + 96);
      v11 = *(a1 + 328);
      *v24 = 68290307;
      *&v24[8] = 2082;
      *&v24[10] = "";
      *&v24[18] = 2050;
      *&v24[20] = v9;
      v25 = 2049;
      v26 = v10;
      v27 = 2049;
      v28 = v11;
      v29 = 2049;
      v30 = v6 - v10;
      v31 = 2049;
      v32 = v11 - v6;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#uploadTimer ATU, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, fLastUploadTime_s:%{private}.09f, fNextUploadTime_s:%{private}.09f, sinceLU_s:%{private}.09f, tillNU_s:%{private}.09f}", v24, 0x44u);
    }

    if (!v2)
    {
      v6 = 1.79769313e308;
LABEL_23:
      *(a1 + 344) = v2;
      *(a1 + 328) = v6;
      (*(**(a1 + 56) + 56))(*(a1 + 56), *(a1 + 16), v6);
      return;
    }

    v12 = *(a1 + 328);
    v13 = v7 + *(a1 + 96);
    if (v12 <= v6 || v12 >= v13)
    {
      if (v13 >= v6)
      {
        if (qword_1025D47D0 != -1)
        {
          sub_101A3BD6C();
        }

        v21 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
        {
          v22 = *(a1 + 16);
          v23 = *(a1 + 96);
          *v24 = 68289795;
          *&v24[8] = 2082;
          *&v24[10] = "";
          *&v24[18] = 2050;
          *&v24[20] = v22;
          v25 = 2049;
          v26 = v23;
          v27 = 2049;
          v28 = v7;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#uploadTimer option B, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, fLastUploadTime:%{private}f, interval:%{private}f}", v24, 0x30u);
        }

        v6 = v7 + *(a1 + 96);
      }

      else
      {
        if (qword_1025D47D0 != -1)
        {
          sub_101A3BD6C();
        }

        v15 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
        {
          v16 = *(a1 + 16);
          v17 = *(a1 + 96);
          *v24 = 68289795;
          *&v24[8] = 2082;
          *&v24[10] = "";
          *&v24[18] = 2050;
          *&v24[20] = v16;
          v25 = 2049;
          v26 = v17;
          v27 = 2049;
          v28 = v7;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#uploadTimer option C, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, fLastUploadTime:%{private}f, interval:%{private}f}", v24, 0x30u);
        }
      }

      goto LABEL_23;
    }

    if (qword_1025D47D0 != -1)
    {
      sub_101A3BD6C();
    }

    v18 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 16);
      v20 = *(a1 + 96);
      *v24 = 68289795;
      *&v24[8] = 2082;
      *&v24[10] = "";
      *&v24[18] = 2050;
      *&v24[20] = v19;
      v25 = 2049;
      v26 = v20;
      v27 = 2049;
      v28 = v7;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#uploadTimer option A, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, fLastUploadTime:%{private}f, interval:%{private}f}", v24, 0x30u);
    }
  }
}

BOOL sub_1002CF0E4(uint64_t a1)
{
  v2 = (*(*a1 + 64))(a1);
  v3 = sub_1002CFD14();
  if ((*(**(a1 + 168) + 104))(*(a1 + 168)) & 1) != 0 || ((*(*a1 + 128))(a1) & 1) != 0 || v3[1] == 1 && ((*(*a1 + 120))(a1))
  {
    return 1;
  }

  if ((*(*a1 + 136))(a1))
  {
    return 1;
  }

  LOBYTE(v4) = *(a1 + 800);
  if (v2 - v4 < 60.0 || ((*(*a1 + 144))(a1) & 1) != 0)
  {
    return 1;
  }

  LOBYTE(v5) = *(a1 + 801);
  return v2 - v5 < 60.0;
}

void sub_1002CF2E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002CF304(uint64_t a1, char *a2, CLMotionActivity *a3)
{
  sub_1002CFA48(a1, a2);

  return sub_1002CF344((a1 + 392), a3);
}

uint64_t sub_1002CF344(_DWORD *a1, CLMotionActivity *this)
{
  ++*a1;
  result = CLMotionActivity::isWalking(this);
  if (result & 1) != 0 || (result = CLMotionActivity::isRunning(this), (result))
  {
    v5 = 1;
LABEL_4:
    ++a1[v5];
    return result;
  }

  result = CLMotionActivity::isCycling(this);
  if (result)
  {
    v5 = 2;
    goto LABEL_4;
  }

  result = CLMotionActivity::isInVehicle(this);
  if (result)
  {
    v5 = 3;
    goto LABEL_4;
  }

  return result;
}

id sub_1002CF3CC(void *a1)
{
  if (![a1 length])
  {
    return 0;
  }

  v6 = 0;
  v2 = +[NSJSONSerialization JSONObjectWithData:options:error:](NSJSONSerialization, "JSONObjectWithData:options:error:", [a1 dataUsingEncoding:4], 1, &v6);
  if (v6)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101B4BBE0();
    }

    v3 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [objc_msgSend(v6 "localizedDescription")];
      *buf = 136315138;
      v8 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#warning: error deserializing app bundle ids, %s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B4BC08(&v6);
    }
  }

  return v2;
}

const void **sub_1002CF4F0(void *a1, const void **a2)
{
  v4 = sub_100007070(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_100E493A0();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100019DF4(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1002CF744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1003C9358(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002CF770(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 == 1000)
  {
    sub_101B36498();
  }

  v3 = *(a1 + 36);
  if (v3 == 1000)
  {
    sub_101B36330();
  }

  if (*(a2 + 9))
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

BOOL sub_1002CF7B0(uint64_t a1)
{
  if (*(a1 + 416))
  {
    if ((*(**(a1 + 400) + 16))(*(a1 + 400)))
    {
      v2 = (*(*a1 + 168))(a1);
      v3 = *(a1 + 420);
      if (v2 >= (v3 / sub_1002CEC0C(a1 + 280, v4)))
      {
        return 1;
      }

      else
      {
        if (qword_1025D47D0 != -1)
        {
          sub_101AA5B70();
        }

        v5 = qword_1025D47D8;
        result = os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG);
        if (result)
        {
          v8 = 68289282;
          v9 = 0;
          v10 = 2082;
          v11 = "";
          v12 = 2050;
          v13 = 4;
          v7 = "{msg%{public}.0s:not ready to upload: not enough locations, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
LABEL_16:
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, v7, &v8, 0x1Cu);
          return 0;
        }
      }
    }

    else
    {
      if (qword_1025D47D0 != -1)
      {
        sub_101AA5B70();
      }

      v5 = qword_1025D47D8;
      result = os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        v8 = 68289282;
        v9 = 0;
        v10 = 2082;
        v11 = "";
        v12 = 2050;
        v13 = 4;
        v7 = "{msg%{public}.0s:not ready to upload: motion requirements not met, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
        goto LABEL_16;
      }
    }
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101AA5B70();
    }

    v5 = qword_1025D47D8;
    result = os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v8 = 68289282;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2050;
      v13 = 4;
      v7 = "{msg%{public}.0s:not ready to upload: turned off, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
      goto LABEL_16;
    }
  }

  return result;
}

double sub_1002CFA10(uint64_t a1, uint64_t a2)
{
  v2 = 24;
  if (*(a2 + 9))
  {
    v2 = 16;
  }

  result = *(a1 + v2);
  if (result == -1.0)
  {
    sub_101B361C8(a1, a2);
  }

  return result;
}

void sub_1002CFA48(uint64_t a1, char *a2)
{
  if (*(a1 + 40) >= 0.0 && vabdd_f64(sub_1000081AC(), *(a1 + 40)) >= 86400.0 && *(a1 + 72))
  {
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    [NSString stringWithFormat:@"%s", v4];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100739C48;
    v13 = &unk_10246AFF8;
    v14 = a1;
    v15 = a1 + 88;
    v16 = a1 + 104;
    v17 = a1 + 120;
    AnalyticsSendEventLazy();
    if (a2[23] >= 0)
    {
      v5 = a2[23];
    }

    else
    {
      v5 = *(a2 + 1);
    }

    v6 = __p;
    sub_100070148(__p, v5 + 10);
    if (v9 < 0)
    {
      v6 = __p[0];
    }

    if (v5)
    {
      if (a2[23] >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      memmove(v6, v7, v5);
    }

    strcpy(v6 + v5, ",Submitted");
    sub_100739688(a1, __p);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10073A774(a1);
    if (*(a1 + 40) < 0.0)
    {
      *(a1 + 40) = sub_1000081AC();
    }
  }
}

void sub_1002CFBE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CFD84(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(a1 + 8) "vendor")];
  v4 = [v3 syncgetNonSystemLocationClientKey];
  if (v4)
  {
    v5 = [v4 UTF8String];
    v6 = strlen(v5);
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100061080();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v18) = v6;
    if (v6)
    {
      memmove(&__dst, v5, v6);
    }

    *(&__dst + v7) = 0;
    if (*(a2 + 71) < 0)
    {
      operator delete(*(a2 + 48));
    }

    *(a2 + 48) = __dst;
    *(a2 + 64) = v18;
  }

  else
  {
    if (*(a2 + 71) < 0)
    {
      *(a2 + 56) = 0;
      v8 = *(a2 + 48);
    }

    else
    {
      v8 = (a2 + 48);
      *(a2 + 71) = 0;
    }

    *v8 = 0;
  }

  v9 = [v3 syncgetLocationClientKeys];
  if ([v9 count])
  {
    v16 = 0;
    v10 = +[NSJSONSerialization dataWithJSONObject:options:error:](NSJSONSerialization, "dataWithJSONObject:options:error:", [v9 allObjects], 1, &v16);
    if (v16)
    {
      if (qword_1025D47D0 != -1)
      {
        sub_10194BD68();
      }

      v11 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [objc_msgSend(v16 "description")];
        LODWORD(__dst) = 136315138;
        *(&__dst + 4) = v12;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#warning: error serializing json data, error, %s", &__dst, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194BD90(&v16);
      }
    }

    else
    {
      v14 = [[NSString alloc] initWithData:v10 encoding:4];
      v15 = v14;
      if (v14)
      {
        sub_100006044((a2 + 72), [v14 UTF8String]);
      }
    }
  }

  else
  {
    if (*(a2 + 95) < 0)
    {
      *(a2 + 80) = 0;
      v13 = *(a2 + 72);
    }

    else
    {
      v13 = (a2 + 72);
      *(a2 + 95) = 0;
    }

    *v13 = 0;
  }
}

BOOL sub_1002D0004(uint64_t a1, std::string *this)
{
  v2 = *(a1 + 792);
  if (v2)
  {
    std::string::operator=(this, (*(a1 + 776) + 32));
    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v5 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *v7 = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "retrieved empty non-system location client key", v7, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101932CDC();
      }
    }
  }

  return v2 != 0;
}

char *sub_1002D0190@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[111] < 0)
  {
    return sub_100007244(a2, *(result + 11), *(result + 12));
  }

  *a2 = *(result + 88);
  *(a2 + 16) = *(result + 13);
  return result;
}

uint64_t sub_1002D01B8(uint64_t a1)
{
  if (*(a1 + 88))
  {
    if ((*(*a1 + 168))(a1) || *(a1 + 320) != 1)
    {
      *buf = *(a1 + 104);
      *&buf[16] = *(a1 + 120);
      v7 = sub_1002CF770(a1 + 280, buf);
      if (*(a1 + 128) >= v7)
      {
        return 1;
      }

      else
      {
        if (qword_1025D47D0 != -1)
        {
          sub_101A3BD6C();
        }

        v8 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
        {
          sub_100AF3EAC(*(a1 + 16), v17);
          v9 = v21 >= 0 ? v17 : *v17;
          v10 = *(a1 + 128);
          *buf = 136315650;
          *&buf[4] = v9;
          *&buf[12] = 1024;
          *&buf[14] = v10;
          *&buf[18] = 1024;
          *&buf[20] = v7;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "%s not ready to upload: invalid reachability. Have %d and need %d", buf, 0x18u);
          if (SHIBYTE(v21) < 0)
          {
            operator delete(*v17);
          }
        }

        result = sub_10000A100(121, 2);
        if (result)
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D47D0 != -1)
          {
            sub_101A3BD6C();
          }

          sub_100AF3EAC(*(a1 + 16), __p);
          if (v15 >= 0)
          {
            v11 = __p;
          }

          else
          {
            v11 = __p[0];
          }

          v12 = *(a1 + 128);
          *v17 = 136315650;
          *&v17[4] = v11;
          v18 = 1024;
          v19 = v12;
          v20 = 1024;
          v21 = v7;
          v13 = _os_log_send_and_compose_impl();
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLSubHarvester::baseUploadRequirementsMet()", "%s\n", v13);
          if (v13 != buf)
          {
            free(v13);
          }

          return 0;
        }
      }
    }

    else
    {
      if (qword_1025D47D0 != -1)
      {
        sub_101A3BD14();
      }

      v2 = qword_1025D47D8;
      result = os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        v4 = *(a1 + 16);
        *buf = 68289282;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2050;
        *&buf[20] = v4;
        v5 = "{msg%{public}.0s:not ready to upload: no locations, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
LABEL_12:
        _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, v5, buf, 0x1Cu);
        return 0;
      }
    }
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101A3BD14();
    }

    v2 = qword_1025D47D8;
    result = os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v6 = *(a1 + 16);
      *buf = 68289282;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2050;
      *&buf[20] = v6;
      v5 = "{msg%{public}.0s:not ready to upload: turned off, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
      goto LABEL_12;
    }
  }

  return result;
}

id sub_1002D0560(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v1 syncgetConnectedAccessory];
}

__n128 sub_1002D0630(uint64_t a1)
{
  *(a1 + 181) = (*(**(a1 + 24) + 208))(*(a1 + 24));
  *(a1 + 182) = (*(**(a1 + 24) + 216))(*(a1 + 24));
  v2 = (*(**(a1 + 24) + 80))(*(a1 + 24));
  *(a1 + 184) = *v2;
  v3 = *(v2 + 48);
  v4 = *(v2 + 64);
  v5 = *(v2 + 32);
  *(a1 + 200) = *(v2 + 16);
  *(a1 + 248) = v4;
  *(a1 + 232) = v3;
  *(a1 + 216) = v5;
  v7 = *(v2 + 96);
  v6 = *(v2 + 112);
  v8 = *(v2 + 80);
  *(a1 + 312) = *(v2 + 128);
  *(a1 + 280) = v7;
  *(a1 + 296) = v6;
  *(a1 + 264) = v8;
  v9 = (*(**(a1 + 24) + 88))(*(a1 + 24));
  *(a1 + 320) = *v9;
  v10 = *(v9 + 64);
  v12 = *(v9 + 16);
  v11 = *(v9 + 32);
  *(a1 + 368) = *(v9 + 48);
  *(a1 + 384) = v10;
  *(a1 + 336) = v12;
  *(a1 + 352) = v11;
  v14 = *(v9 + 96);
  v13 = *(v9 + 112);
  v15 = *(v9 + 80);
  *(a1 + 448) = *(v9 + 128);
  *(a1 + 416) = v14;
  *(a1 + 432) = v13;
  *(a1 + 400) = v15;
  v16 = (*(**(a1 + 24) + 96))(*(a1 + 24));
  *(a1 + 456) = *v16;
  v17 = *(v16 + 64);
  v19 = *(v16 + 16);
  v18 = *(v16 + 32);
  *(a1 + 504) = *(v16 + 48);
  *(a1 + 520) = v17;
  *(a1 + 472) = v19;
  *(a1 + 488) = v18;
  v21 = *(v16 + 96);
  result = *(v16 + 112);
  v22 = *(v16 + 80);
  *(a1 + 584) = *(v16 + 128);
  *(a1 + 552) = v21;
  *(a1 + 568) = result;
  *(a1 + 536) = v22;
  return result;
}

uint64_t sub_1002D07F8(uint64_t a1)
{
  v2 = sub_1002D0184();
  if ((*(**(a1 + 40) + 104))(*(a1 + 40)) & 1) != 0 || ((*(**(a1 + 24) + 128))(*(a1 + 24)) & 1) != 0 || v2[1] == 1 && ((*(**(a1 + 24) + 120))(*(a1 + 24)) & 1) != 0 || v2[2] == 1 && ((*(**(a1 + 24) + 136))(*(a1 + 24)))
  {
    return 1;
  }

  if (v2[3] != 1)
  {
    return 0;
  }

  v4 = *(**(a1 + 24) + 144);

  return v4();
}

uint64_t sub_1002D0948(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_100007244((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  *(a1 + 32) = *(a2 + 32);
  if (*(a2 + 71) < 0)
  {
    sub_100007244((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v5 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v5;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100007244((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v6 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v6;
  }

  memcpy((a1 + 96), (a2 + 96), 0x1A0uLL);
  return a1;
}

void sub_1002D0A14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D0A48(uint64_t a1, signed int a2, double a3)
{
  v18 = a2;
  v3 = *(a1 + 72);
  if (!v3)
  {
    goto LABEL_8;
  }

  v6 = a1 + 72;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v6 == a1 + 72 || *(v6 + 32) > a2)
  {
LABEL_8:
    if (qword_1025D47D0 != -1)
    {
      sub_100248BFC();
    }

    v7 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v20 = 2082;
      v21 = "";
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unknown SubHarvester notifying of #uploadTimer fire date.}", buf, 0x12u);
      if (qword_1025D47D0 != -1)
      {
        sub_1018C4FA8();
      }
    }

    v8 = qword_1025D47D8;
    if (os_signpost_enabled(qword_1025D47D8))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v20 = 2082;
      v21 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unknown SubHarvester notifying of #uploadTimer fire date.", "{msg%{public}.0s:Unknown SubHarvester notifying of #uploadTimer fire date.}", buf, 0x12u);
    }

    return;
  }

  *buf = &v18;
  if (*(sub_1003E3DEC(a1 + 112, &v18) + 5) != a3)
  {
    *buf = &v18;
    *(sub_1003E3DEC(a1 + 112, &v18) + 5) = a3;
    if (a3 == 1.79769313e308)
    {
      if (qword_1025D47D0 != -1)
      {
        sub_1018C4FA8();
      }

      v10 = qword_1025D47D8;
      if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      *buf = 68289282;
      *&buf[4] = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2050;
      v23 = v18;
      v11 = "{msg%{public}.0s:#uploadTimer invalid time reported, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
      v12 = v10;
      v13 = 28;
    }

    else
    {
      if (qword_1025D47D0 != -1)
      {
        sub_1018C4FA8();
      }

      v14 = qword_1025D47D8;
      if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      v15 = v18;
      v16 = (*(*a1 + 64))(a1);
      *buf = 68289795;
      *&buf[4] = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2050;
      v23 = v15;
      v24 = 2049;
      v25 = a3;
      v26 = 2049;
      v27 = a3 - v16;
      v11 = "{msg%{public}.0s:#uploadTimer upload time set, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, notifiedAttemptTime_s:%{private}.09f, timeUntilAttempt_s:%{private}.09f}";
      v12 = v14;
      v13 = 48;
    }

    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_31:
    if (*(a1 + 973) == 1)
    {
      *(a1 + 974) = 1;
    }

    else
    {
      v17 = sub_1005731B4(a1);
      sub_100572DDC(a1, v17);
    }

    return;
  }

  if (qword_1025D47D0 != -1)
  {
    sub_1018C4FA8();
  }

  v9 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2050;
    v23 = v18;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:next attempt time is equal to existing attempt time, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x1Cu);
  }
}

__n128 sub_1002D0E48(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 468;
  v5 = a1 + 464;
  if (*(a1 + 484) < 0.0 || (sub_1001097CC((a1 + 624), v5, a2), result.n128_f64[0] > 80000.0))
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101B3BD34();
    }

    v7 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a2 + 4);
      v9 = *(a2 + 12);
      v10 = *v4;
      v11 = *(v4 + 8);
      v12 = *(a2 + 76) - *(v4 + 72);
      v19 = 134219265;
      v20 = 0x40F3880000000000;
      v21 = 2053;
      v22 = v8;
      v23 = 2053;
      v24 = v9;
      v25 = 2053;
      v26 = v10;
      v27 = 2053;
      v28 = v11;
      v29 = 2048;
      v30 = v12;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "moved over %.2fm to <%{sensitive}+.8f,%{sensitive}+.8f> from <%{sensitive}+.8f,%{sensitive}+.8f> %.3fs ago - checking harvest rules", &v19, 0x3Eu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B3BD48(a2, a1);
    }

    (*(**(a1 + 56) + 48))(*(a1 + 56));
    v13 = *(a2 + 16);
    *v5 = *a2;
    *(v5 + 16) = v13;
    v14 = *(a2 + 32);
    v15 = *(a2 + 48);
    v16 = *(a2 + 80);
    *(v5 + 64) = *(a2 + 64);
    *(v5 + 80) = v16;
    *(v5 + 32) = v14;
    *(v5 + 48) = v15;
    result = *(a2 + 96);
    v17 = *(a2 + 112);
    v18 = *(a2 + 128);
    *(v5 + 140) = *(a2 + 140);
    *(v5 + 112) = v17;
    *(v5 + 128) = v18;
    *(v5 + 96) = result;
  }

  return result;
}

void *sub_1002D110C(void *result, double a2)
{
  v2 = result;
  v5 = a2;
  v3 = result[85];
  if (!v3 || *(*(result[81] + ((result[84] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * result[84]) < a2)
  {
    v4 = 1;
    result = sub_1002D11AC(result + 80, &v5, &v4);
    v3 = v2[85];
  }

  if (v3 >= 0xB5)
  {
    do
    {
      v2[85] = v3 - 1;
      result = sub_1001151D0(v2 + 80, 1);
      v3 = v2[85];
    }

    while (v3 > 0xB4);
  }

  return result;
}

uint64_t sub_1002D11AC(void *a1, void *a2, char *a3)
{
  v6 = a1[4];
  if (!v6)
  {
    sub_101255B10(a1);
    v6 = a1[4];
  }

  v7 = a1[1];
  v8 = (v7 + 8 * (v6 >> 8));
  v9 = *v8 + 16 * v6;
  if (a1[2] == v7)
  {
    v9 = 0;
  }

  if (v9 == *v8)
  {
    v9 = *(v8 - 1) + 4096;
  }

  v10 = *a3;
  *(v9 - 16) = *a2;
  *(v9 - 8) = v10;
  v11 = v6 - 1;
  v12 = a1[5] + 1;
  a1[4] = v11;
  a1[5] = v12;
  return *(v7 + ((v11 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v11;
}

void sub_1002D1254(uint64_t a1, void **a2, std::string *__str, int a4, uint64_t a5, CLMotionActivity *a6)
{
  if (*(a1 + 40) < 0.0)
  {
    *(a1 + 40) = sub_1000081AC();
  }

  v12 = (a1 + 48);
  v13 = *(a1 + 71);
  if (v13 >= 0)
  {
    v14 = *(a1 + 71);
  }

  else
  {
    v14 = *(a1 + 56);
  }

  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  v16 = size;
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (v14 != size || (v13 >= 0 ? (v17 = (a1 + 48)) : (v17 = *v12), v16 >= 0 ? (v18 = __str) : (v18 = __str->__r_.__value_.__r.__words[0]), memcmp(v17, v18, v14)))
  {
    std::string::operator=((a1 + 48), __str);
    v19 = *(a1 + 136);
    if (v19)
    {
      sub_100739598((a1 + 152), v19);
      if (*(a1 + 424) > 0.0 && !sub_10002807C(*(a1 + 408), *(a1 + 416)))
      {
        v20 = vabdd_f64(*(a5 + 76), *(a1 + 424));
        sub_100739598((a1 + 232), v20);
        v21 = sub_100109D18(a1, *(a1 + 408), *(a1 + 416), *(a5 + 4), *(a5 + 12), 0.0);
        sub_100739598((a1 + 312), v21);
        if (qword_1025D47D0 != -1)
        {
          sub_101924E70();
        }

        v22 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 23) >= 0)
          {
            v23 = a2;
          }

          else
          {
            v23 = *a2;
          }

          v24 = (a1 + 48);
          if (*(a1 + 71) < 0)
          {
            v24 = *v12;
          }

          v25 = *(a1 + 176);
          v26 = *(a1 + 136);
          v27 = *(a5 + 76);
          v29 = *(a1 + 416);
          v28 = *(a1 + 424);
          v30 = *(a5 + 4);
          v31 = *(a5 + 12);
          v32 = *(a1 + 408);
          *buf = 136449027;
          v77 = v23;
          v78 = 2082;
          v79 = v24;
          v80 = 1026;
          v81 = v25;
          v82 = 1026;
          v83 = v26;
          v84 = 2050;
          v85 = v20;
          v86 = 2050;
          v87 = v21;
          v88 = 2050;
          v89 = v27;
          v90 = 2050;
          v91 = v28;
          v92 = 2053;
          v93 = v30;
          v94 = 2053;
          v95 = v31;
          v96 = 2053;
          v97 = v32;
          v98 = 2053;
          v99 = v29;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "MapsHarvestMetric,%{public}s,newTrip,%{public}s,numTrips,%{public}d,numHarvestedInLastTrip,%{public}d,durationBetweenTrips,%{public}.1lf,distanceBetweenTrip,%{public}.1lf,locationTime,%{public}.1lf,lastLocationTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,lastLL,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x72u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D47D0 != -1)
          {
            sub_101924E84();
          }

          if (*(a2 + 23) >= 0)
          {
            v38 = a2;
          }

          else
          {
            v38 = *a2;
          }

          if (*(a1 + 71) < 0)
          {
            v12 = *v12;
          }

          v39 = *(a1 + 176);
          v40 = *(a1 + 136);
          v41 = *(a5 + 76);
          v43 = *(a1 + 416);
          v42 = *(a1 + 424);
          v44 = *(a5 + 4);
          v45 = *(a5 + 12);
          v46 = *(a1 + 408);
          v52 = 136449027;
          v53 = v38;
          v54 = 2082;
          v55 = v12;
          v56 = 1026;
          v57 = v39;
          v58 = 1026;
          v59 = v40;
          v60 = 2050;
          v61 = v20;
          v62 = 2050;
          v63 = v21;
          v64 = 2050;
          v65 = v41;
          v66 = 2050;
          v67 = v42;
          v68 = 2053;
          v69 = v44;
          v70 = 2053;
          v71 = v45;
          v72 = 2053;
          v73 = v46;
          v74 = 2053;
          v75 = v43;
          v47 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLMapsTracksAndRealTimeHarvestingMetric::update(const std::string &, const std::string &, const BOOL, const CLDaemonLocation &, const CLMotionActivity &)", "%s\n", v47);
          if (v47 != buf)
          {
            free(v47);
          }
        }
      }
    }

    if (*(a2 + 23) < 0)
    {
      sub_100007244(__p, *a2, a2[1]);
    }

    else
    {
      *__p = *a2;
      v51 = a2[2];
    }

    sub_100739688(a1, __p);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
  }

  sub_1002CF344((a1 + 72), a6);
  sub_1002CF344((a1 + 136), a6);
  v33 = *(a5 + 96);
  if ((v33 & 0xFFFFFFF7) == 1)
  {
    v34 = a4;
  }

  else
  {
    v34 = 3;
  }

  if (v33 == 3)
  {
    v35 = 2;
  }

  else
  {
    v35 = v34;
  }

  if (v35 != 3)
  {
    sub_1002CF344((a1 + 16 * v35 + 88), a6);
  }

  *(a1 + 408) = *(a5 + 4);
  v36 = *(a5 + 76);
  *(a1 + 424) = v36;
  HIDWORD(v37) = -2023406815 * v36 + 9544368;
  LODWORD(v37) = HIDWORD(v37);
  if ((v37 >> 4) <= 0x123456)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100007244(__dst, *a2, a2[1]);
    }

    else
    {
      *__dst = *a2;
      v49 = a2[2];
    }

    sub_100739688(a1, __dst);
    if (SHIBYTE(v49) < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_1002D1754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1002D17C8(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 16);
  v2 = *(*a1 + 24);
  if (v3 == v2)
  {
    return 0;
  }

  v4 = v3 + 8;
  do
  {
    v5 = *(v4 - 8);
    result = v5 == a2;
    v7 = v5 == a2 || v4 == v2;
    v4 += 8;
  }

  while (!v7);
  return result;
}

void sub_1002D1800(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101BB9A84();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLKappaNotifier::onLocation", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101BB9A98();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLKappaNotifier::onLocation, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1002D19CC(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1002D19CC(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (*a3 != 5 && *a3 != 0)
  {
    if (qword_1025D4340 != -1)
    {
      sub_101BB96A4();
    }

    v37 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
    {
      v38 = *a3;
      *buf = 67240192;
      *&buf[4] = v38;
      _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_ERROR, "Unhandled location notification %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101BBBA14(a3);
    }

    return;
  }

  if (!sub_100072814(a4))
  {
    return;
  }

  v8 = *(a4 + 112);
  v101 = *(a4 + 96);
  v102 = v8;
  v103[0] = *(a4 + 128);
  *(v103 + 12) = *(a4 + 140);
  v9 = *(a4 + 48);
  *&buf[32] = *(a4 + 32);
  *v99 = v9;
  v10 = *(a4 + 80);
  *&v99[16] = *(a4 + 64);
  v100 = v10;
  v11 = *(a4 + 16);
  *buf = *a4;
  *&buf[16] = v11;
  v12 = sub_1001FB69C(buf, *(a4 + 936));
  v13 = *(a4 + 96);
  Current = CFAbsoluteTimeGetCurrent();
  v15 = *(a4 + 76);
  if (qword_1025D4340 != -1)
  {
    sub_101BB9C9C();
  }

  v16 = Current - v15;
  v17 = qword_1025D4348;
  if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
  {
    v19 = v12 == 1 || v13 == 3;
    v20 = *(a4 + 52);
    *buf = 67110144;
    *&buf[4] = v19;
    *&buf[8] = 2048;
    *&buf[10] = v20;
    *&buf[18] = 1024;
    *&buf[20] = v20 > 0.0;
    *&buf[24] = 1024;
    *&buf[26] = v20 <= 4.0;
    *&buf[30] = 1024;
    *&buf[32] = v16 >= 0.0;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "GPS filter %d %f %d %d %d", buf, 0x24u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4340 != -1)
    {
      sub_101BB9C9C();
    }

    v55 = v12 == 1 || v13 == 3;
    v56 = *(a4 + 52);
    v79 = 67110144;
    *v80 = v55;
    *&v80[4] = 2048;
    *&v80[6] = v56;
    *&v80[14] = 1024;
    *&v80[16] = v56 > 0.0;
    *v81 = 1024;
    *&v81[2] = v56 <= 4.0;
    *&v81[6] = 1024;
    *&v81[8] = v16 >= 0.0;
    v57 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLKappaNotifier::onLocation(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v57);
    if (v57 != buf)
    {
      free(v57);
    }
  }

  sub_100126E84(buf, "KappaFilterGPS", &unk_101D80208, 0);
  if (buf[1] != 1 || v13 == 3 && v16 >= 0.0 || v12 == 1 && (v52 = *(a4 + 52), v52 > 0.0) && v52 <= 4.0 && v16 >= 0.0)
  {
    v21 = *(a4 + 44);
    if (v21 > 31.293)
    {
      v21 = 31.293;
    }

    v69 = v21;
    v22.f64[0] = *(a4 + 68);
    v22.f64[1] = *(a4 + 4);
    v70 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a4 + 52)), v22);
    v23 = *(a4 + 12);
    v71 = v23;
    v72 = *(a4 + 248);
    v73 = *(a1 + 864);
    v74 = (v16 * 1000000.0);
    v24 = *(a4 + 20);
    v75 = v24;
    v76 = *(a4 + 784);
    v77 = *(a4 + 788);
    v78 = *(a4 + 96);
    if (qword_1025D4340 != -1)
    {
      sub_101BB9C9C();
    }

    v25 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
    {
      v26 = *(a4 + 76);
      v27 = *a3;
      *buf = 134220801;
      *&buf[4] = v26;
      *&buf[12] = 2048;
      *&buf[14] = v74;
      *&buf[22] = 1024;
      *&buf[24] = v27;
      *&buf[28] = 2048;
      *&buf[30] = v69;
      *&buf[38] = 2048;
      *&buf[40] = v70.f32[0];
      *v99 = 2048;
      *&v99[2] = v70.f32[1];
      *&v99[10] = 2053;
      *&v99[12] = v70.f32[3];
      *&v99[20] = 2053;
      *&v99[22] = v71;
      *&v99[30] = 2048;
      *&v100 = v75;
      WORD4(v100) = 1024;
      *(&v100 + 10) = v76;
      HIWORD(v100) = 2048;
      *&v101 = v77;
      WORD4(v101) = 1024;
      *(&v101 + 10) = v78;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "GPS timestamp %.6f, delta %llu, notify(type) = %u, speed = %f accuracy = %f course = %f lat(tr) = %{sensitive}f long(tr) = %{sensitive}f horAcc = %f dem %d conf %f type %d", buf, 0x6Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4340 != -1)
      {
        sub_101BB9C9C();
      }

      v58 = *(a4 + 76);
      v59 = *a3;
      v79 = 134220801;
      *v80 = v58;
      *&v80[8] = 2048;
      *&v80[10] = v74;
      *&v80[18] = 1024;
      *v81 = v59;
      *&v81[4] = 2048;
      *&v81[6] = v69;
      v82 = 2048;
      v83 = v70.f32[0];
      v84 = 2048;
      v85 = v70.f32[1];
      v86 = 2053;
      v87 = v70.f32[3];
      v88 = 2053;
      v89 = v71;
      v90 = 2048;
      v91 = v75;
      v92 = 1024;
      v93 = v76;
      v94 = 2048;
      v95 = v77;
      v96 = 1024;
      v97 = v78;
      v60 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLKappaNotifier::onLocation(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v60);
      if (v60 != buf)
      {
        free(v60);
      }
    }

    sub_10012888C(4, &v69, 0x40uLL);
  }

  if (!sub_1002D17C8(a1 + 112, a1 + 240) || *(a1 + 672) || (*(a4 + 96) & 0xFFFFFFF7) == 1)
  {
    sub_10004FD18(&v69);
    v28 = sub_1000206B4();
    sub_100185ADC(v28, "Kappa", &v69);
    v29 = sub_10007005C(&v69);
    v30 = [v29 valueForKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "roadHorizontalAccuracy")}];
    v31 = [v29 valueForKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "roadSearchRadius")}];
    v32 = v31;
    if (v30)
    {
      [v30 floatValue];
      v34 = v33;
      if (v32)
      {
LABEL_34:
        [v32 floatValue];
        v36 = v35;
        goto LABEL_43;
      }
    }

    else
    {
      v34 = 25.0;
      if (v31)
      {
        goto LABEL_34;
      }
    }

    v36 = 300.0;
LABEL_43:
    if (sub_1002D17C8(a1 + 112, a1 + 240) && !*(a1 + 672) && *(a4 + 20) < v34)
    {
      *(a1 + 672) = (v16 * 1000000.0);
      *(a1 + 656) = *(a4 + 100);
      if (qword_1025D4340 != -1)
      {
        sub_101BB9C9C();
      }

      v39 = qword_1025D4348;
      if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
      {
        v40 = *(a1 + 656);
        v41 = *(a1 + 664);
        v42 = *(a4 + 20);
        *buf = 134546177;
        *&buf[4] = v40;
        *&buf[12] = 2053;
        *&buf[14] = v41;
        *&buf[22] = 2048;
        *&buf[24] = v42;
        _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "Querying distance from lat:%{sensitive}f long:%{sensitive}f, location uncertainty:%f", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BBB9D0(buf);
        v61 = *(a1 + 656);
        v62 = *(a1 + 664);
        v63 = *(a4 + 20);
        v79 = 134546177;
        *v80 = v61;
        *&v80[8] = 2053;
        *&v80[10] = v62;
        *&v80[18] = 2048;
        *v81 = v63;
        v64 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLKappaNotifier::onLocation(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v64);
        if (v64 != buf)
        {
          free(v64);
        }
      }

      v43 = *(a1 + 632);
      v44 = *(a1 + 640);
      if (v44)
      {
        atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v44->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100008080(v44);
      }

      v45 = *(a1 + 648);
      v46 = *(a1 + 656);
      v47 = *(a1 + 664);
      v48 = *(a4 + 20);
      *&v48 = v48;
      v67[0] = _NSConcreteStackBlock;
      v67[1] = 3321888768;
      v67[2] = sub_101327934;
      v67[3] = &unk_1024E07E8;
      v67[4] = v43;
      v68 = v44;
      if (v44)
      {
        atomic_fetch_add_explicit(&v44->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_100D3C1BC(v46, v47, v48, v36, v45, v67);
      if (v68)
      {
        std::__shared_weak_count::__release_weak(v68);
      }

      if (v44)
      {
        std::__shared_weak_count::__release_weak(v44);
      }
    }

    if (sub_1002D17C8(a1 + 112, a1 + 240) && !*(a1 + 672))
    {
      v49 = v34;
      if (*(a4 + 20) >= v49)
      {
        if (qword_1025D4340 != -1)
        {
          sub_101BB9C9C();
        }

        v50 = qword_1025D4348;
        if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
        {
          v51 = *(a4 + 20);
          *buf = 134218240;
          *&buf[4] = v51;
          *&buf[12] = 2048;
          *&buf[14] = v49;
          _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEBUG, "Not querying roads because location uncertainty %f is greater or equal than %f", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BBB9D0(buf);
          v65 = *(a4 + 20);
          v79 = 134218240;
          *v80 = v65;
          *&v80[8] = 2048;
          *&v80[10] = v49;
          v66 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLKappaNotifier::onLocation(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v66);
          if (v66 != buf)
          {
            free(v66);
          }
        }
      }
    }

    sub_100005DA4(&v69);
    return;
  }

  if (qword_1025D4340 != -1)
  {
    sub_101BB9C9C();
  }

  v53 = qword_1025D4348;
  if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEBUG, "Not querying roads because location is not from GPS", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101BBB8EC();
  }
}

BOOL sub_1002D260C(const void *a1, void *a2)
{
  v4 = CFGetTypeID(a1);
  TypeID = CFDictionaryGetTypeID();
  if (v4 == TypeID)
  {
    sub_1002D2740(a2, a1);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = 134349312;
      v9 = CFGetTypeID(a1);
      v10 = 2050;
      v11 = CFDictionaryGetTypeID();
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "type IDs do not match - %{public}lu vs %{public}lu", &v8, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AAAEC();
    }
  }

  return v4 == TypeID;
}

uint64_t sub_1002D2740(void *a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    v4 = a1[1];
    if (v4)
    {
      CFRelease(v4);
    }

    a1[1] = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
    v5 = *(*a1 + 848);

    return v5(a1);
  }

  else
  {
    v7 = *(*a1 + 872);

    return v7();
  }
}

uint64_t sub_1002D2820(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = sub_100226C1C(a1 + 816, a2);
  if (a1 + 824 == v6)
  {
    return 0;
  }

  v7 = (v6 + 280);
  if (*(v6 + 303) < 0)
  {
    sub_100007244(__dst, *(v6 + 280), *(v6 + 288));
  }

  else
  {
    *__dst = *v7;
    v24 = *(v6 + 296);
  }

  sub_10080B25C(v19, v7, a2);
  v8 = sub_1002D2A04(a1 + 792, v19);
  v9 = v8;
  if (a1 + 800 == v8)
  {
    if (v22 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(__dst[0]);
    }

    return 0;
  }

  v10 = v8 + 80;
  std::string::operator=(a3, (v8 + 80));
  std::string::operator=((a3 + 24), (v9 + 104));
  std::string::operator=((a3 + 48), (v9 + 128));
  v11 = *(v9 + 152);
  v12 = *(v9 + 168);
  v13 = *(v9 + 184);
  *(a3 + 120) = *(v9 + 200);
  *(a3 + 104) = v13;
  *(a3 + 88) = v12;
  *(a3 + 72) = v11;
  v14 = *(v9 + 216);
  v15 = *(v9 + 232);
  v16 = *(v9 + 248);
  *(a3 + 181) = *(v9 + 261);
  *(a3 + 168) = v16;
  *(a3 + 152) = v15;
  *(a3 + 136) = v14;
  std::string::operator=((a3 + 192), (v9 + 272));
  v17 = *(a3 + 216);
  *(a3 + 216) = *(v9 + 296);

  if (v10 != a3)
  {
    sub_1006BA434((a3 + 224), *(v9 + 304), *(v9 + 312), (*(v9 + 312) - *(v9 + 304)) >> 4);
  }

  if (v22 < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__dst[0]);
  }

  return 1;
}

void sub_1002D29D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002D2A04(uint64_t a1, void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_1002D8A2C((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (sub_1002D8A2C(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

void sub_1002D2A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 1963) == 1)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101A2900C();
    }

    v3 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2050;
      *&buf[20] = 11;
      v4 = "{msg%{public}.0s:device SKU is restricted; discarding location, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
LABEL_11:
      v6 = v3;
      v7 = 28;
LABEL_12:
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, v4, buf, v7);
      return;
    }

    return;
  }

  if (*(a1 + 1962) != 1)
  {
    v10 = *(a1 + 1968);
    buf[0] = 0;
    if (sub_10022C954(v10, (a2 + 4), (a2 + 12), (a2 + 20), buf) && (_os_feature_enabled_impl() & 1) == 0)
    {
      if (qword_1025D47D0 != -1)
      {
        sub_101A28FA8();
      }

      v23 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2050;
        *&buf[20] = 11;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:location inside excluded zone; discarding, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x1Cu);
      }

      *(a1 + 1964) = 1;
      return;
    }

    if (((*(**(a1 + 56) + 176))(*(a1 + 56)) & 1) == 0)
    {
      v11 = *(a1 + 1992);
      v12 = *(a2 + 112);
      *v67 = *(a2 + 96);
      *&v67[16] = v12;
      v68[0] = *(a2 + 128);
      *(v68 + 12) = *(a2 + 140);
      v13 = *(a2 + 48);
      *&buf[32] = *(a2 + 32);
      *&buf[48] = v13;
      v14 = *(a2 + 80);
      v65 = *(a2 + 64);
      v66 = v14;
      v15 = *(a2 + 16);
      *buf = *a2;
      *&buf[16] = v15;
      [v11 receiveLocation:buf];
    }

    if (!sub_1002D321C(a1, a2))
    {
      if (qword_1025D47D0 != -1)
      {
        sub_101A28FA8();
      }

      v26 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
      {
        v63 = LocationLogEncryptionDataSize();
        v62 = LocationLogEncryptionEncryptData();
        v27 = LocationLogEncryptionDataSize();
        v28 = LocationLogEncryptionEncryptData();
        v29 = *(a2 + 20);
        v30 = *(a2 + 76);
        v31 = LocationLogEncryptionDataSize();
        v32 = LocationLogEncryptionEncryptData();
        v33 = LocationLogEncryptionDataSize();
        v34 = LocationLogEncryptionEncryptData();
        if (*(a1 + 796) == 1)
        {
          v35 = *(a1 + 660);
          v36 = *(a1 + 716);
        }

        else
        {
          v35 = 0;
          v36 = 0;
        }

        *buf = 68292355;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1040;
        *&buf[20] = v63;
        *&buf[24] = 2098;
        *&buf[26] = v62;
        *&buf[34] = 1040;
        *&buf[36] = v27;
        *&buf[40] = 2098;
        *&buf[42] = v28;
        *&buf[50] = 1025;
        *&buf[52] = v29;
        *&buf[56] = 1025;
        *&buf[58] = v30;
        *&buf[62] = 1040;
        LODWORD(v65) = v31;
        WORD2(v65) = 2098;
        *(&v65 + 6) = v32;
        HIWORD(v65) = 1040;
        LODWORD(v66) = v33;
        WORD2(v66) = 2098;
        *(&v66 + 6) = v34;
        HIWORD(v66) = 1025;
        *v67 = v35;
        *&v67[4] = 1025;
        *&v67[6] = v36;
        *&v67[10] = 2050;
        *&v67[12] = 11;
        v4 = "{msg%{public}.0s:location is filtered due to lack of additional information, lat:%{public, location:Encrypted_latitude}.*P, lng:%{public, location:Encrypted_longitude}.*P, ucc:%{private}d, timestamp:%{private}d, last.lat:%{public, location:Encrypted_latitude}.*P, last.lng:%{public, location:Encrypted_longitude}.*P, last.ucc:%{private}d, last.timestamp:%{private}d, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
        v6 = v26;
        v7 = 116;
        goto LABEL_12;
      }

      return;
    }

    v16 = *(a1 + 1984);
    v17 = *(a2 + 112);
    *v67 = *(a2 + 96);
    *&v67[16] = v17;
    v68[0] = *(a2 + 128);
    *(v68 + 12) = *(a2 + 140);
    v18 = *(a2 + 48);
    *&buf[32] = *(a2 + 32);
    *&buf[48] = v18;
    v19 = *(a2 + 80);
    v65 = *(a2 + 64);
    v66 = v19;
    v20 = *(a2 + 16);
    *buf = *a2;
    *&buf[16] = v20;
    [v16 receiveLocation:buf];
    if (*(a1 + 1672) == 1 && (v21 = *(a2 + 96), v21 <= 0xB) && ((1 << v21) & 0xC02) != 0)
    {
      v22 = 2;
    }

    else if (*(a1 + 1649) == 1)
    {
      v24 = *(a2 + 96);
      if (v24 == 4 || v24 == 13)
      {
        v22 = 3;
      }

      else
      {
        v22 = 1;
      }
    }

    else
    {
      v22 = 1;
    }

    *(a1 + 1456) = v22;
    v37 = (a1 + 640);
    if (*(a1 + 796) == 1)
    {
      if (*(a1 + 716) >= *(a2 + 76))
      {
LABEL_50:
        if (*(a1 + 796) == 1 && ((*(**(a1 + 56) + 176))(*(a1 + 56)) & 1) == 0)
        {
          v59 = *(a1 + 1832);
          if (v59 > 0.0)
          {
            v60 = *(a1 + 716);
            if (v60 > v59)
            {
              v61 = v60 - v59;
              ++*(a1 + 1904);
              *(a1 + 1912) = v61 + *(a1 + 1912);
              *(a1 + 1920) = *(a1 + 1920) + v61 * v61;
            }
          }
        }

        if ([*(a1 + 1472) count])
        {
          sub_10028A848(a1);
        }

        sub_1002D32E4(a1, 0);
        sub_1002D34C8(a1, 0);
        return;
      }

      v38 = *(a2 + 16);
      *v37 = *a2;
      *(a1 + 656) = v38;
      v39 = *(a2 + 32);
      v40 = *(a2 + 48);
      v41 = *(a2 + 80);
      *(a1 + 704) = *(a2 + 64);
      *(a1 + 720) = v41;
      *(a1 + 672) = v39;
      *(a1 + 688) = v40;
      v42 = *(a2 + 96);
      v43 = *(a2 + 112);
      v44 = *(a2 + 128);
      *(a1 + 780) = *(a2 + 140);
      *(a1 + 752) = v43;
      *(a1 + 768) = v44;
      *(a1 + 736) = v42;
    }

    else
    {
      v45 = *(a2 + 16);
      *v37 = *a2;
      *(a1 + 656) = v45;
      v46 = *(a2 + 32);
      v47 = *(a2 + 48);
      v48 = *(a2 + 80);
      *(a1 + 704) = *(a2 + 64);
      *(a1 + 720) = v48;
      *(a1 + 672) = v46;
      *(a1 + 688) = v47;
      v49 = *(a2 + 96);
      v50 = *(a2 + 112);
      v51 = *(a2 + 128);
      *(a1 + 780) = *(a2 + 140);
      *(a1 + 752) = v50;
      *(a1 + 768) = v51;
      *(a1 + 736) = v49;
      *(a1 + 796) = 1;
    }

    sub_1002D3628(a1 + 800, a3);
    *(a1 + 1720) = 0;
    *(a1 + 1976) = sub_100287088(a1, (a1 + 1504));
    sub_1002D3720(a1);
    if (qword_1025D47D0 != -1)
    {
      sub_101A28FA8();
    }

    v52 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      v53 = LocationLogEncryptionDataSize();
      v54 = LocationLogEncryptionEncryptData();
      v55 = LocationLogEncryptionDataSize();
      v56 = LocationLogEncryptionEncryptData();
      v57 = *(a2 + 20);
      v58 = *(a2 + 76);
      *buf = 68290819;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1040;
      *&buf[20] = v53;
      *&buf[24] = 2098;
      *&buf[26] = v54;
      *&buf[34] = 1040;
      *&buf[36] = v55;
      *&buf[40] = 2098;
      *&buf[42] = v56;
      *&buf[50] = 1025;
      *&buf[52] = v57;
      *&buf[56] = 1025;
      *&buf[58] = v58;
      *&buf[62] = 2050;
      *&v65 = 11;
      _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:location is set, lat:%{public, location:Encrypted_latitude}.*P, lng:%{public, location:Encrypted_longitude}.*P, ucc:%{private}d, timestamp:%{private}d, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x48u);
    }

    goto LABEL_50;
  }

  if (qword_1025D47D0 != -1)
  {
    sub_101A2900C();
  }

  v3 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2050;
    *&buf[20] = 11;
    v4 = "{msg%{public}.0s:the country code is restricted; discarding location, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
    goto LABEL_11;
  }
}

BOOL sub_1002D321C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 796) != 1)
  {
    return 1;
  }

  v4 = (a1 + 644);
  if ((*(**(a1 + 56) + 64))(*(a1 + 56)) - *(a1 + 716) >= *(a1 + 1696) || *(a2 + 20) <= 250.0)
  {
    return 1;
  }

  if ((*(a1 + 796) & 1) == 0)
  {
    sub_100173BA0();
  }

  return sub_100117154(*(a2 + 4), *(a2 + 12), *v4, v4[1]) - *(a2 + 20) > v4[2];
}

_BYTE *sub_1002D32E4(_BYTE *result, int a2)
{
  if (result[1672] == 1)
  {
    v3 = result;
    if (qword_1025D4650 != -1)
    {
      sub_101A29358();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#wigo,off,BlueAvengerHarvest", v9, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A2936C();
    }

    AnalyticsSendEventLazy();
    v5 = *(v3 + 77);
    v9[0] = 0;
    (*(*v5 + 56))(v5, v9);
    v3[1672] = 0;
    if (qword_1025D47D0 != -1)
    {
      sub_101A28FA8();
    }

    v6 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v3 + 48);
      if ((a2 & 1) == 0)
      {
        [*(v3 + 210) nextFireDelay];
        v7 = v7 - v8;
      }

      v9[0] = 68289794;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 1026;
      v13 = a2;
      v14 = 2050;
      v15 = v7;
      v16 = 2050;
      v17 = 11;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:BlueAvengerKPI: terminate active best location request, didTimeout:%{public}hhd, runtime:%{public}f, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", v9, 0x2Cu);
    }

    return [*(v3 + 210) invalidate];
  }

  return result;
}

void *sub_1002D34C8(void *result, int a2)
{
  if (*(result + 1649) == 1)
  {
    v3 = result;
    v4 = result[77];
    v8[0] = 1;
    (*(*v4 + 56))(v4, v8);
    *(v3 + 1649) = 0;
    if (qword_1025D47D0 != -1)
    {
      sub_101A28FA8();
    }

    v5 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(v3 + 49);
      if ((a2 & 1) == 0)
      {
        [v3[207] nextFireDelay];
        v6 = v6 - v7;
      }

      v8[0] = 68289794;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      v11 = 1026;
      v12 = a2;
      v13 = 2050;
      v14 = v6;
      v15 = 2050;
      v16 = 11;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:BlueAvengerKPI: terminate active fine location request, didTimeout:%{public}hhd, runtime:%{public}f, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", v8, 0x2Cu);
    }

    return [v3[207] invalidate];
  }

  return result;
}

uint64_t sub_1002D3628(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 648);
  memcpy(a1, a2, 0x201uLL);
  v5 = *(a2 + 520);
  if (v4 == 1)
  {
    v6 = *(a2 + 528);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 520) = v5;
    v7 = *(a1 + 528);
    *(a1 + 528) = v6;
    if (v7)
    {
      sub_100008080(v7);
    }

    v8 = *(a2 + 536);
    v9 = *(a2 + 568);
    *(a1 + 552) = *(a2 + 552);
    *(a1 + 568) = v9;
    *(a1 + 536) = v8;
    v10 = *(a2 + 584);
    v11 = *(a2 + 600);
    v12 = *(a2 + 616);
    *(a1 + 625) = *(a2 + 625);
    *(a1 + 600) = v11;
    *(a1 + 616) = v12;
    *(a1 + 584) = v10;
  }

  else
  {
    *(a1 + 520) = v5;
    v13 = *(a2 + 528);
    *(a1 + 528) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(a2 + 536);
    v15 = *(a2 + 568);
    *(a1 + 552) = *(a2 + 552);
    *(a1 + 568) = v15;
    *(a1 + 536) = v14;
    v16 = *(a2 + 584);
    v17 = *(a2 + 600);
    v18 = *(a2 + 616);
    *(a1 + 625) = *(a2 + 625);
    *(a1 + 600) = v17;
    *(a1 + 616) = v18;
    *(a1 + 584) = v16;
    *(a1 + 648) = 1;
  }

  return a1;
}

void sub_1002D3720(uint64_t a1)
{
  v2 = sub_1002D39E4(a1);
  v3 = 376;
  if (v2)
  {
    v3 = 368;
  }

  *(a1 + 1696) = *(a1 + v3);
  if (qword_1025D47D0 != -1)
  {
    sub_101A2900C();
  }

  v4 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 1696);
    v6[0] = 68289538;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2050;
    v10 = v5;
    v11 = 2050;
    v12 = 11;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:updateOperationalModeIfNecessary, fCurrentTimeOffsetThreshold:%{public}f, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", v6, 0x26u);
  }
}

void *sub_1002D3834(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void sub_1002D38EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1025D47D0 != -1)
  {
    sub_101A2900C();
  }

  v6 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289282;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2050;
    v11 = 11;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:got location notification, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", v7, 0x1Cu);
  }

  sub_1002D2A84(a1, a4, a4 + 160);
}

uint64_t sub_1002D39E4(uint64_t a1)
{
  if (*(a1 + 1640) == 1 && (*(a1 + 1504) - 1) <= 1 && *(a1 + 1720) != 1)
  {
    return 0;
  }

  sub_10001A3E8();
  return sub_1000F42C0() ^ 1;
}

void sub_1002D3A38(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  v6 = a4[7];
  v21 = a4[6];
  v22 = v6;
  v23[0] = a4[8];
  *(v23 + 12) = *(a4 + 140);
  v7 = a4[3];
  v17 = a4[2];
  v18 = v7;
  v8 = a4[5];
  v19 = a4[4];
  v20 = v8;
  v9 = a4[1];
  v15 = *a4;
  v16 = v9;
  if (qword_1025D47D0 != -1)
  {
    sub_101B665DC();
  }

  v10 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    buf = 68290051;
    v25 = 2082;
    v26 = "";
    v27 = 2050;
    v28 = 5;
    v29 = 2049;
    v30 = a3;
    v31 = 1040;
    v32 = LocationLogEncryptionDataSize();
    v33 = 2098;
    v34 = LocationLogEncryptionEncryptData();
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onLocationNotification, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, notification:%{private, location:CLLocationProvider_Type::Notification}lld, location:%{public, location:Encrypted_CLClientLocation}.*P}", &buf, 0x36u);
  }

  if ((a3 == 5 || !a3) && (sub_1002D41C8(a1, &v15) & 1) == 0)
  {
    v11 = v22;
    *(a1 + 504) = v21;
    *(a1 + 520) = v11;
    *(a1 + 536) = v23[0];
    *(a1 + 548) = *(v23 + 12);
    v12 = v18;
    *(a1 + 440) = v17;
    *(a1 + 456) = v12;
    v13 = v20;
    *(a1 + 472) = v19;
    *(a1 + 488) = v13;
    v14 = v16;
    *(a1 + 408) = v15;
    *(a1 + 424) = v14;
    sub_1002D3BFC(a1);
  }
}

void sub_1002D3BFC(uint64_t a1)
{
  if ([*(a1 + 352) count])
  {
    if (*(a1 + 400))
    {
      if (qword_1025D47D0 != -1)
      {
        sub_101B665DC();
      }

      v2 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289282;
        *v14 = 2082;
        *&v14[2] = "";
        *&v14[10] = 2050;
        *&v14[12] = 5;
        v3 = "{msg%{public}.0s:Already have an appHarvestGroup, not harvesting, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
LABEL_32:
        _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, v3, buf, 0x1Cu);
      }
    }

    else if ((*(**(a1 + 56) + 160))(*(a1 + 56)))
    {
      if ((*(*a1 + 208))(a1))
      {
        if (sub_1011D5958(a1, a1 + 408))
        {
          if ((*(**(a1 + 360) + 64))(*(a1 + 360)))
          {
            v4 = dispatch_group_create();
            *(a1 + 400) = v4;
            *buf = 0;
            *v14 = buf;
            *&v14[8] = 0x2020000000;
            *&v14[16] = 0;
            dispatch_group_enter(v4);
            v5 = *(a1 + 360);
            v12[0] = _NSConcreteStackBlock;
            v12[1] = 3221225472;
            v12[2] = sub_1011D5AD0;
            v12[3] = &unk_102470C10;
            v12[4] = buf;
            v12[5] = a1;
            (*(*v5 + 72))(v5, a1 + 408, v12);
            v11[0] = 0;
            v11[1] = v11;
            v11[2] = 0x2020000000;
            v11[3] = -1;
            dispatch_group_enter(*(a1 + 400));
            v6 = *(a1 + 360);
            v10[0] = _NSConcreteStackBlock;
            v10[1] = 3221225472;
            v10[2] = sub_1011D5C10;
            v10[3] = &unk_102470C10;
            v10[4] = v11;
            v10[5] = a1;
            (*(*v6 + 80))(v6, a1 + 408, v10);
            v7 = *(a1 + 400);
            v8 = [objc_msgSend(*(a1 + 8) "silo")];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1011D5D5C;
            block[3] = &unk_1024D5918;
            block[4] = v11;
            block[5] = buf;
            block[6] = a1;
            dispatch_group_notify(v7, v8, block);
            _Block_object_dispose(v11, 8);
            _Block_object_dispose(buf, 8);
            return;
          }

          if (qword_1025D47D0 != -1)
          {
            sub_101B665DC();
          }

          v2 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289282;
            *v14 = 2082;
            *&v14[2] = "";
            *&v14[10] = 2050;
            *&v14[12] = 5;
            v3 = "{msg%{public}.0s:CLRoutineMonitor is not supported, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
            goto LABEL_32;
          }
        }

        else
        {
          if (qword_1025D47D0 != -1)
          {
            sub_101B665DC();
          }

          v2 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289282;
            *v14 = 2082;
            *&v14[2] = "";
            *&v14[10] = 2050;
            *&v14[12] = 5;
            v3 = "{msg%{public}.0s:leeched postion is invalid or too old, not harvesting, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
            goto LABEL_32;
          }
        }
      }

      else
      {
        if (qword_1025D47D0 != -1)
        {
          sub_101B665DC();
        }

        v2 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68289282;
          *v14 = 2082;
          *&v14[2] = "";
          *&v14[10] = 2050;
          *&v14[12] = 5;
          v3 = "{msg%{public}.0s:App Genius not authorized, not harvesting, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
          goto LABEL_32;
        }
      }
    }

    else
    {
      if (qword_1025D47D0 != -1)
      {
        sub_101B665DC();
      }

      v2 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289282;
        *v14 = 2082;
        *&v14[2] = "";
        *&v14[10] = 2050;
        *&v14[12] = 5;
        v3 = "{msg%{public}.0s:Harvesting is not allowed, not harvesting, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101B665DC();
    }

    v2 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      *v14 = 2082;
      *&v14[2] = "";
      *&v14[10] = 2050;
      *&v14[12] = 5;
      v3 = "{msg%{public}.0s:Cache is empty, not harvesting, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
      goto LABEL_32;
    }
  }
}

uint64_t sub_1002D41C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  if (v3 > 10000.0)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101B665DC();
    }

    v4 = qword_1025D47D8;
    if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      return 1;
    }

    v5 = LocationLogEncryptionDataSize();
    v6 = LocationLogEncryptionEncryptData();
    v7 = LocationLogEncryptionDataSize();
    v8 = LocationLogEncryptionEncryptData();
    v9 = *(a2 + 20);
    v18 = 68290563;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2050;
    v23 = 5;
    v24 = 1040;
    v25 = v5;
    v26 = 2098;
    v27 = v6;
    v28 = 1040;
    v29 = v7;
    v30 = 2098;
    v31 = v8;
    v32 = 2049;
    v33 = v9;
    v10 = "{msg%{public}.0s:ignoring since accuracy is too large, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, lat:%{public, location:Encrypted_latitude}.*P, lon:%{public, location:Encrypted_longitude}.*P, horizontalAccuracy:%{private}f}";
LABEL_6:
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, v10, &v18, 0x46u);
    return 1;
  }

  v13 = a1 + 428;
  v14 = *(a1 + 428);
  v15 = v3 * 0.5;
  v16 = v14 < 0.0 || v14 > v15;
  if (!v16 && (*(**(a1 + 56) + 64))(*(a1 + 56)) - *(a1 + 484) < 630.0)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101B665DC();
    }

    v4 = qword_1025D47D8;
    if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      return 1;
    }

    v17 = (*(**(a1 + 56) + 64))(*(a1 + 56)) - *(v13 + 56);
    v18 = 68290563;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2050;
    v23 = 5;
    v24 = 1040;
    v25 = 156;
    v26 = 2097;
    v27 = a2;
    v28 = 1040;
    v29 = 156;
    v30 = 2097;
    v31 = a1 + 408;
    v32 = 2049;
    v33 = v17;
    v10 = "{msg%{public}.0s:ignoring location, previous was more accurate and fresh enough, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, newLocation:%{private, location:CLClientLocation}.*P, oldLocation:%{private, location:CLClientLocation}.*P, timeSinceLastLocation_s:%{private}.09f}";
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_1002D4484(uint64_t a1, double *a2)
{
  v3 = a2[8];
  v4 = a2[32];
  v5 = fabs(v3);
  v6 = vabdd_f64(v3, v4);
  v7 = (*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v5 <= 2.22044605e-16;
  v8 = fabs(v4);
  v12 = !v7 && (*&v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v8 > 2.22044605e-16 && v6 <= 1.5 && v8 > 2.22044605e-16;
  if (v12 && fabs(a2[33]) > 2.22044605e-16)
  {
    return 1;
  }

  if (qword_1025D4600 != -1)
  {
    sub_10025BBF4();
  }

  v13 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v14 = *(a2 + 32);
    v15 = *(a2 + 33);
    v17 = 134349313;
    v18 = v14;
    v19 = 2049;
    v20 = v15;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "BaroAlt,#Warning,no recent device pressure available,fTimeOfLastCMAltitudeData,%{public}.3lf,pressure,%{private}.3lf", &v17, 0x16u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1016BC10C();
    return 0;
  }

  return result;
}

uint64_t sub_1002D45E8(uint64_t a1, uint64_t a2, double *a3, double *a4, double *a5, double *a6, void *a7, double *a8)
{
  if (*a8 <= 2.22044605e-16 || *(a2 + 184) <= 2.22044605e-16)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10025BBF4();
    }

    v15 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v16 = *a8;
      v17 = *(a2 + 184);
      v19 = 134349312;
      v20 = v16;
      v21 = 2050;
      v22 = v17;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "BaroAlt,#Warning,not DEM calibrated or no odometer data ever received,calTime,%{public}lf,odomTime,%{public}lf,", &v19, 0x16u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1016BC9A8();
      return 0;
    }
  }

  else
  {
    *a5 = *a3 + *(a2 + 168);
    v10 = (*(a2 + 64) - *a8) * 0.000555555556 * ((*(a2 + 64) - *a8) * 0.000555555556) + *a4 * *a4 + 0.25 + (*(a2 + 64) - *(a2 + 184)) * 0.2;
    v11 = (COERCE__INT64(fabs(v10)) - 0x10000000000000) >> 53;
    if (*&v10 > -1 && v11 < 0x3FF || (*&v10 - 1) < 0xFFFFFFFFFFFFFLL)
    {
      *a6 = sqrt(v10);
      *a7 = *(a2 + 184);
      return 1;
    }

    if (qword_1025D4600 != -1)
    {
      sub_10025BBF4();
    }

    v18 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "BaroAlt,#Warning,calibratedAltitudeVariance unexpectedly negative", &v19, 2u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_1016BCAB0();
      return 0;
    }
  }

  return result;
}

BOOL sub_1002D4814()
{
  sub_10001CAF4(&v6);
  v0 = v6;
  v1 = sub_1002D48A8();
  v8 = 0;
  v2 = sub_10001CB4C(v0, "IsTrackRunEnabledIfInstantiated", &v8);
  v3 = v8;
  if (v7)
  {
    sub_100008080(v7);
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

void sub_1002D4890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002D48A8()
{
  result = sub_1001AE054();
  if (result)
  {
    if (qword_102659170 != -1)
    {
      sub_10191C0D0();
    }

    return byte_102659168;
  }

  return result;
}

void sub_1002D48E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 192);
  if (v4)
  {
    if ((*(a2 + 96) - 6) >= 3)
    {
      v5 = sub_1002D4A38(a1);
      sub_1002D4C90(v4, v5);
      sub_1002D4D90(*(a1 + 192), (a2 + 4), a1, 0);
    }
  }

  else
  {
    if (qword_1025D41D0 != -1)
    {
      sub_101B95F94();
    }

    v6 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "TrackRun,could not query track data manager as it has not been created", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B9847C();
    }
  }

  if ((*(a1 + 34) & 1) != 0 || *(a1 + 40))
  {
    sub_10000AED0(buf);
    v9 = -1;
    sub_10000B230(v8);
    sub_1002D5600(v7, v8, &v9, a2, buf);
    sub_1002D61B8(a1, buf, 0);
    sub_10000CE1C(buf);
  }
}

void sub_1002D4A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D4A38(uint64_t a1)
{
  v2 = sub_1000081AC();
  sub_10001CAF4(buf);
  v10 = 0.0;
  if (sub_1000B9370(*buf, "TimeSinceStaForegroundingThresholdSeconds", &v10))
  {
    v3 = v10;
  }

  else
  {
    v3 = 600.0;
  }

  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  v4 = v2 - *(a1 + 432);
  if (v4 > v3 || *(a1 + 50)) && (*(a1 + 49) != 1 || (*(a1 + 48)))
  {
    return 0;
  }

  if (qword_1025D41D0 != -1)
  {
    sub_101B95E90();
  }

  v6 = qword_1025D41D8;
  if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 49);
    v8 = *(a1 + 50);
    v9 = *(a1 + 48);
    *buf = 134349824;
    *&buf[4] = v4;
    *&buf[12] = 1026;
    *&buf[14] = v7;
    v12 = 1026;
    v13 = v8;
    v14 = 1026;
    v15 = v9;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#cltm,Tile loading from network allowed,secondsSinceLastSessionTrackerAppForegrounding,%{public}.1lf,currentlyInATrackRunSupportedWorkoutType,%{public}d,currentlyInAWorkout,%{public}d,gnssInRhythmicMode,%{public}d", buf, 0x1Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B98560(a1, v4);
  }

  return 1;
}

void sub_1002D4BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D4BE4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 3968);
  if (v4)
  {

    sub_1002D48E4(v4, a2);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    if (qword_1025D41D0 != -1)
    {
      sub_101956624();
    }

    v5 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#cltr,cannot send unfiltered location to TrackRunController,TrackRunController not instantiated", v6, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101958F14();
    }
  }
}

void sub_1002D4C90(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 88);
  v2 = *(a1 + 88);
  if (v2 && [v2 allowNetworkTileLoad] != a2)
  {
    [*v3 setAllowNetworkTileLoad:a2];
    if (qword_1025D41D0 != -1)
    {
      sub_101920FA8();
    }

    v5 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*v3 allowNetworkTileLoad];
      v7[0] = 67240192;
      v7[1] = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#cltm,Changed allowNetworkTileLoad to %{public}d", v7, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101921E34(v3);
    }
  }
}

void sub_1002D4D90(uint64_t a1, double *a2, uint64_t a3, void *a4)
{
  if (qword_1025D41D0 != -1)
  {
    sub_101920FA8();
  }

  v8 = qword_1025D41D8;
  if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240192;
    LODWORD(v42) = a4;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#cltm,Setting up RunningTrack data query,forceFullDataQuery,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019210C0(a4);
    if (a4)
    {
LABEL_7:
      if ((*(a1 + 144) & 1) == 0)
      {
        sub_1002D5358(a1, a2);
LABEL_18:
        if (qword_1025D41D0 != -1)
        {
          sub_101921098();
        }

        v10 = qword_1025D41D8;
        if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67240192;
          LODWORD(v42) = a4;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#cltm,Query is needed and will occur,forceFullDataQuery,%{public}d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019211AC(a4);
        }

        v11 = objc_autoreleasePoolPush();
        v12 = *a2;
        v13 = a2[1];
        v30 = *a2;
        v14 = +[NSMutableArray array];
        v15 = sub_1000081AC();
        if (qword_1025D41D0 != -1)
        {
          sub_101921098();
        }

        v16 = qword_1025D41D8;
        if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#cltm,Setting up trackHandler data query", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101921298();
        }

        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_1007337F4;
        v29[3] = &unk_10246DFC8;
        v29[4] = v14;
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_100733940;
        v26[3] = &unk_10246DFF0;
        v26[4] = v14;
        v26[5] = a1;
        v26[6] = a3;
        v27 = v30;
        v28 = v15;
        v24[4] = v26;
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_100733EBC;
        v25[3] = &unk_10246E018;
        v25[4] = v26;
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100733ED0;
        v24[3] = &unk_10246E018;
        if (*(a1 + 88))
        {
          sub_100733EE4(a1);
          v17 = 120;
          if (a4)
          {
            v17 = 128;
          }

          v18 = *(a1 + v17);
          if (qword_1025D41D0 != -1)
          {
            sub_101921098();
          }

          v19 = qword_1025D41D8;
          if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [*(a1 + 88) allowNetworkTileLoad];
            *buf = 134546689;
            v42 = v12;
            v43 = 2053;
            v44 = v13;
            v45 = 2050;
            v46 = v18;
            v47 = 1026;
            v48 = a4;
            v49 = 1026;
            v50 = v20;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "#cltm,Querying for tracks,centerCoordinate,%{sensitive}.7lf,%{sensitive}.7lf,radius_m,%{public}.0lf,forceFullDataQuery,%{public}d,allowNetworkTileLoad,%{public}d", buf, 0x2Cu);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D41D0 != -1)
            {
              sub_101921098();
            }

            v22 = [*(a1 + 88) allowNetworkTileLoad];
            v31 = 134546689;
            v32 = v12;
            v33 = 2053;
            v34 = v13;
            v35 = 2050;
            v36 = v18;
            v37 = 1026;
            v38 = a4;
            v39 = 1026;
            v40 = v22;
            v23 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLTrackRunGeoMapRunningTrackDataManager::QueryAndSerializeRunningTrackData(const CLClientLocationCoordinate &, CLTrackRunController *, const BOOL)", "%s\n", v23);
            if (v23 != buf)
            {
              free(v23);
            }
          }

          if (a4)
          {
            *(a1 + 144) = 1;
            v21 = v25;
          }

          else
          {
            *(a1 + 145) = 1;
            v21 = v24;
          }

          [*(a1 + 88) findRunningTracksNear:v29 radius:v21 handler:v12 completionHandler:{v13, v18}];
        }

        objc_autoreleasePoolPop(v11);
        return;
      }

      goto LABEL_11;
    }
  }

  else if (a4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 145) != 1)
  {
    if (!sub_1002D5358(a1, a2))
    {
      return;
    }

    goto LABEL_18;
  }

LABEL_11:
  if (qword_1025D41D0 != -1)
  {
    sub_101921098();
  }

  v9 = qword_1025D41D8;
  if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    LODWORD(v42) = a4;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#cltm,Warning,Not querying,query already in progress,forceFullDataQuery,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101921374(a4);
  }
}

uint64_t sub_1002D5358(uint64_t a1, double *a2)
{
  if (*(a1 + 112))
  {
    v3 = sub_100109D18((a1 + 32), *a2, a2[1], *(a1 + 96), *(a1 + 104), 0.0);
    *(a1 + 72) = v3;
    *(a1 + 80) = 1;
    v4 = *(a1 + 136);
    v5 = v3 >= v4;
    if (qword_1025D41D0 != -1)
    {
      sub_101920FA8();
    }

    v6 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 80) & 1) == 0)
      {
        goto LABEL_21;
      }

      v7 = *(a1 + 72);
      v8 = *(a1 + 136);
      *buf = 134349568;
      v13 = v7;
      v14 = 2050;
      v15 = v8;
      v16 = 1026;
      v17 = v3 >= v4;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#cltm,fDistanceFromLastQueryLocation_m,%{public}.1f,fMinimumDistanceForNewQuery_m,%{public}.1f,isQueryNeeded,%{public}d", buf, 0x1Cu);
    }

    if (!sub_10000A100(121, 2))
    {
      return v5;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D41D0 != -1)
    {
      sub_101921098();
    }

    if (*(a1 + 80))
    {
      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTrackRunGeoMapRunningTrackDataManager::IsQueryNeeded(const CLClientLocationCoordinate &) const", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }

      return v5;
    }

LABEL_21:
    sub_100173BA0();
  }

  if (qword_1025D41D0 != -1)
  {
    sub_101920FA8();
  }

  v10 = qword_1025D41D8;
  if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#cltm,Will query,last query location has no value", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101920FBC();
  }

  return 1;
}

void sub_1002D5600(uint64_t a1, uint64_t *a2, int *a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 52) |= 2u;
  v8 = *(a5 + 40);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 488) |= 8u;
  v9 = *(v8 + 32);
  if (!v9)
  {
    operator new();
  }

  sub_1002D6118(a2, a5);
  *(v9 + 100) |= 1u;
  v10 = *(v9 + 8);
  if (!v10)
  {
    operator new();
  }

  if ((sub_10027E930(a2, v10) & 1) == 0)
  {
    if (qword_1025D41D0 != -1)
    {
      sub_101B95F94();
    }

    v11 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEBUG))
    {
      *v13 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "TrackRun,Warning,failed to convert location notification receipt time to protobuf", v13, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B986A4();
    }
  }

  v12 = *a3;
  *(v9 + 100) |= 2u;
  *(v9 + 40) = v12;
  sub_1002AAE10(a4, v9);
}

uint64_t sub_1002D57E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 384) == 1 && *(a1 + 400) == 1)
  {
    *(a2 + 4) = *(a1 + 376);
    *(a2 + 12) = *(a1 + 392);
  }

  if (*(a1 + 336) == 1 && *(a1 + 352) == 1 && *(a1 + 368) == 1)
  {
    v6 = *(a2 + 96) - 1;
    if (v6 <= 0xA && ((0x509u >> v6) & 1) != 0)
    {
      v7 = 0x508u >> (*(a2 + 96) - 1);
      v8 = sub_100109D18((a1 + 280), *(a2 + 4), *(a2 + 12), *(a1 + 328), *(a1 + 344), 0.0);
      if (v7)
      {
        if ((*(a1 + 368) & 1) == 0)
        {
LABEL_103:
          sub_100173BA0();
        }

LABEL_14:
        v9 = *(a1 + 360);
        if (v8 <= v9 + v9)
        {
          v10 = 3;
        }

        else if (v8 <= v9 * 3.0)
        {
          v10 = 2;
        }

        else
        {
          v10 = 1;
        }

        goto LABEL_18;
      }

      if ((*(a1 + 368) & 1) == 0)
      {
        goto LABEL_103;
      }

      if (v8 > *(a1 + 360))
      {
        goto LABEL_14;
      }

      v10 = 4;
    }

    else
    {
      v10 = 0;
    }

LABEL_18:
    *(a1 + 428) = v10;
  }

  if (*(a1 + 412) == 1)
  {
    v11 = *(a1 + 408);
  }

  else
  {
    v11 = -1;
  }

  *(a3 + 168) = v11;
  if (*(a1 + 420) == 1)
  {
    v12 = *(a1 + 416);
  }

  else
  {
    v12 = -1;
  }

  *(a3 + 248) = v12;
  *(a3 + 264) = v12;
  v13 = *(a1 + 424);
  if (v13 >= 4)
  {
    v13 = 0;
  }

  *(a3 + 272) = v13;
  v14 = *(a1 + 428);
  if ((v14 - 1) >= 4)
  {
    v14 = 0;
  }

  *(a3 + 276) = v14;
  if (*(a1 + 34) != 1 || !*(a1 + 104) || *(a1 + 96) == a1 + 56)
  {
    return 0;
  }

  sub_1002D6054(v39);
  std::mutex::lock((a1 + 112));
  TrackRunSolution = trackrun::TrackRunSupervisor::GetTrackRunSolution(*(a1 + 104), v39);
  if (TrackRunSolution)
  {
    if (qword_1025D41D0 != -1)
    {
      sub_101B95E90();
    }

    v16 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = TrackRunSolution;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "TrackRun,could not retrieve latest TrackRun solution,retval,%d", &buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B96244(&buf);
      v74 = 67109120;
      v75 = TrackRunSolution;
      v35 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTrackRunController::GetLocation(CLDaemonLocation &, CLDaemonLocationPrivate &)", "%s\n", v35);
      if (v35 != &buf)
      {
        free(v35);
      }
    }

    v17 = 0;
  }

  else
  {
    if (qword_1025D41D0 != -1)
    {
      sub_101B95E90();
    }

    v18 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 67174657;
      DWORD1(buf) = v43;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "TrackRun,obtained latest TrackRun solution with track proximity %{private}d", &buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B96244(&buf);
      v74 = 67174657;
      v75 = v43;
      v36 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTrackRunController::GetLocation(CLDaemonLocation &, CLDaemonLocationPrivate &)", "%s\n", v36);
      if (v36 != &buf)
      {
        free(v36);
      }
    }

    v17 = 0;
    v19 = v43;
    if ((v43 - 1) >= 4)
    {
      v19 = 0;
    }

    *(a3 + 276) = v19;
    if (v57 == 1)
    {
      *(a3 + 268) = v45;
      *(a3 + 280) = v44;
      *(a3 + 256) = v56;
      if (v53 == 1)
      {
        *(a3 + 264) = v52;
      }

      if (v55 == 1)
      {
        *(a3 + 248) = v54;
      }

      if (v49 == 1)
      {
        *(a2 + 60) = v48;
      }

      v17 = v47;
      if (v47 == 1)
      {
        *(a2 + 4) = v46;
      }

      if (v51 == 1)
      {
        *(a2 + 20) = v50;
      }

      if (v72 == 1 && (sub_1002D4C90(*(a1 + 192), 1), sub_1002D4D90(*(a1 + 192), (a2 + 4), a1, 1), (v72 & 1) != 0) && (*(a1 + 49) & 1) != 0)
      {
        v20 = *(a1 + 52);
        *(a1 + 52) = v20 + 1;
        if (v20 >= 1)
        {
          if (qword_1025D41D0 != -1)
          {
            sub_101B95E90();
          }

          v21 = qword_1025D41D8;
          if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_ERROR))
          {
            v22 = *(a1 + 52);
            LODWORD(buf) = 67109120;
            DWORD1(buf) = v22;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "CLTR,consective epochs requesting full track geometry during a trackrun supported workout,count,%d", &buf, 8u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_101B96244(&buf);
            v37 = *(a1 + 52);
            v74 = 67109120;
            v75 = v37;
            v38 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "BOOL CLTrackRunController::GetLocation(CLDaemonLocation &, CLDaemonLocationPrivate &)", "%s\n", v38);
            if (v38 != &buf)
            {
              free(v38);
            }
          }

          if (*(a1 + 52) == 4)
          {
            sub_1016B1A70([objc_msgSend(*(a1 + 184) "silo")], "trackrun", "need_full_track_geometry", 0);
          }
        }
      }

      else
      {
        *(a1 + 52) = 0;
      }
    }

    if ((*(a2 + 96) & 0xFFFFFFF7) == 1)
    {
      if (v62 == 1 && v58 == 1)
      {
        v23 = *(a3 + 8);
        v24 = v23 & 0x7FFFFFFFFFFFFFFFLL;
        v25 = (v23 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
        v26 = v23 < 0;
        v27 = v23 < 0 && ((v23 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
        if (!v26)
        {
          v25 = 0;
        }

        v28 = v24 <= 0x7FF0000000000000;
        v29 = v24 == 0x7FF0000000000000 || v25;
        if (!v28)
        {
          v29 = 1;
        }

        v30 = v60;
        if (((v29 | v27) & 1) == 0)
        {
          *(a1 + 320) = *(a1 + 320) + v60 - *(a3 + 8);
        }

        v31 = v61;
        *(a3 + 8) = v30;
        *(a3 + 16) = v31;
        if (v59 == 1)
        {
          *(a3 + 288) = v59;
        }
      }

      if (*a3 > 0.0)
      {
        *a3 = *a3 + *(a1 + 320);
      }
    }

    if (v71 == 1)
    {
      *(a3 + 168) = v69;
      v32 = v65;
      v33 = v66;
      *(a3 + 176) = v64 + v63;
      *(a3 + 184) = v32;
      *(a3 + 192) = v33;
      *(a3 + 200) = v67;
      *(a3 + 216) = v68;
      *(a3 + 232) = v70;
    }

    v77 = 0u;
    v78 = 0u;
    buf = 0u;
    sub_1002D5FFC(&buf);
    v40 = buf;
    v41 = v77;
    v42 = v78;
    v73 = 0;
  }

  std::mutex::unlock((a1 + 112));
  trackrun::TrackRunSolutionEvent::~TrackRunSolutionEvent(v39);
  if (TrackRunSolution)
  {
    return 0;
  }

  return v17;
}