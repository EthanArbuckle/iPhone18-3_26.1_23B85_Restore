uint64_t sub_100034618(uint64_t a1, const char *a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v5 = 1;
  if (a4 && a5)
  {
    if (a5 == 1)
    {
      if (a4 <= 8)
      {
        __memmove_chk();
        return sub_10003B668(a1, "", a2, 0);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v10 = 0;
      v11 = 0;
      do
      {
        if (a4 <= 8)
        {
          __memmove_chk();
          snprintf(__str, 0x64uLL, "%d", v10);
          __str[100] = 0;
          v5 = sub_10003B668(a1, a2, __str, 0) & v5;
        }

        else
        {
          v5 = 0;
        }

        v10 = ++v11;
      }

      while (v11 < a5);
    }
  }

  return v5;
}

uint64_t sub_10003477C(uint64_t a1, unint64_t *a2, unsigned int a3)
{
  v5 = 0;
  v6 = a3 >> 3;
  *__str = 0u;
  v22 = 0u;
LABEL_2:
  v7 = -v6;
  while (v7)
  {
    v9 = *a2++;
    v8 = v9;
    ++v7;
    v10 = HIDWORD(v9);
    if (HIDWORD(v9))
    {
      if (v8 != 0xFFFF && v8 <= 0x30000000 && -v7 >= v10)
      {
        if (v8 >> 33)
        {
          snprintf(__str, 0x20uLL, "Stat_%d_");
        }

        else
        {
          snprintf(__str, 0x20uLL, "Stat_%d");
        }

        if (sub_100034618(a1, __str, a2, 8u, v10))
        {
          v5 = (v5 + v10);
          a2 += v10;
          v6 = -v7 - v10;
          goto LABEL_2;
        }

        sub_100022624("ASPFTLParseBufferToCxt %d: Cannot add %d elements to context", v13, v14, v15, v16, v17, v18, v19, v8);
      }

      return v5;
    }
  }

  return v5;
}

uint64_t sub_1000348AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  v9 = "ASPMSPParseBufferToCxt: Passed in invalid buffer or empty buffer";
  if (!a2)
  {
    goto LABEL_2105;
  }

  v10 = a3;
  if (!a3)
  {
    goto LABEL_2105;
  }

  v11 = a2;
  v8 = 0;
  v13 = "avg_rd_window_size";
  v9 = "ASPMSPParseBufferToCxt: avg_rd_window_size(8193): Error adding 5 elements to context";
  v14 = "ASPMSPParseBufferToCxt: avg_rd_window_size(8193): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes";
  v15 = "num_zq_failures";
  v16 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): Error adding 1 elements to context";
  v17 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes";
  v18 = "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context";
  while (1)
  {
    do
    {
      if (!v10)
      {
        return v8;
      }

      v19 = v11;
      v20 = *(v11 + 2);
      v11 += 4;
      v10 -= 4;
    }

    while (!v20);
    v21 = *v19;
    if (v21 != 12286)
    {
      if (v21 == 12287 || v10 < v20)
      {
        return v8;
      }

      switch(v21)
      {
        case 4097:
          v23 = v16;
          v24 = v14;
          v25 = v13;
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: passWithTmodeFS1_2b(4097): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v26 = 1;
          }

          else
          {
            v26 = v20 >> 2;
          }

          if (!sub_100034618(a1, "passWithTmodeFS1_2b", v11, 4u, v26))
          {
            v9 = "ASPMSPParseBufferToCxt: passWithTmodeFS1_2b(4097): Error adding 1 elements to context";
            goto LABEL_2105;
          }

          v8 = v8 + v26;
          v13 = v25;
          v14 = v24;
          v16 = v23;
          goto LABEL_20;
        case 4098:
          v28 = v18;
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: passWithTmodeFS1_4b(4098): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v29 = 1;
          }

          else
          {
            v29 = v20 >> 2;
          }

          if (!sub_100034618(a1, "passWithTmodeFS1_4b", v11, 4u, v29))
          {
            v9 = "ASPMSPParseBufferToCxt: passWithTmodeFS1_4b(4098): Error adding 1 elements to context";
            goto LABEL_2105;
          }

          v8 = v8 + v29;
          v13 = "avg_rd_window_size";
          v14 = "ASPMSPParseBufferToCxt: avg_rd_window_size(8193): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes";
          v16 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): Error adding 1 elements to context";
          v18 = v28;
          break;
        case 4100:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: passWithTmodeFS1_2b_fast(4100): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "passWithTmodeFS1_2b_fast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: passWithTmodeFS1_2b_fast(4100): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4101:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: passWithTmodeFS1_4b_fast(4101): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "passWithTmodeFS1_4b_fast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: passWithTmodeFS1_4b_fast(4101): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4102:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: numOfCwFailedInTmodeFS2_EOL(4102): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "numOfCwFailedInTmodeFS2_EOL", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: numOfCwFailedInTmodeFS2_EOL(4102): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4103:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: numOfCwFailedInTmodeFS2_DSP_EOL(4103): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "numOfCwFailedInTmodeFS2_DSP_EOL", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: numOfCwFailedInTmodeFS2_DSP_EOL(4103): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4104:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readAlgoPassWithHardAfterAcq(4104): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readAlgoPassWithHardAfterAcq", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithHardAfterAcq(4104): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4105:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: firstReadWasHardWithDefaultBDBFastRead(4105): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "firstReadWasHardWithDefaultBDBFastRead", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: firstReadWasHardWithDefaultBDBFastRead(4105): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4110:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: firstReadWasHardWithAcq(4110): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "firstReadWasHardWithAcq", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: firstReadWasHardWithAcq(4110): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4117:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: firstReadWasHardWithDefaultBDB(4117): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "firstReadWasHardWithDefaultBDB", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: firstReadWasHardWithDefaultBDB(4117): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4118:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readAlgoPassedThroughSyndSumAcquisition(4118): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readAlgoPassedThroughSyndSumAcquisition", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassedThroughSyndSumAcquisition(4118): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4119:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readAlgoPassedThroughSlip(4119): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readAlgoPassedThroughSlip", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassedThroughSlip(4119): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4123:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readAlgoPassWithHardAfterSlip_fast(4123): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readAlgoPassWithHardAfterSlip_fast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithHardAfterSlip_fast(4123): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4124:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readAlgoPassWithFS12BitAfterSlip_fast(4124): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readAlgoPassWithFS12BitAfterSlip_fast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithFS12BitAfterSlip_fast(4124): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4125:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readAlgoPassWithFS14BitAfterSlip_fast(4125): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readAlgoPassWithFS14BitAfterSlip_fast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithFS14BitAfterSlip_fast(4125): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4126:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readAlgoPassWithFS3_fast(4126): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readAlgoPassWithFS3_fast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithFS3_fast(4126): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4128:
          if (v20 != 40)
          {
            sub_100022624("ASPMSPParseBufferToCxt: deepSoft2Decoded(4128): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x2C)
          {
            v27 = 10;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "deepSoft2Decoded", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: deepSoft2Decoded(4128): Error adding 10 elements to context";
          goto LABEL_2105;
        case 4131:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readAlgoPassedThroughSlip_fast(4131): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readAlgoPassedThroughSlip_fast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassedThroughSlip_fast(4131): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4132:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readAlgoPassedThroughFS3_fast(4132): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readAlgoPassedThroughFS3_fast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassedThroughFS3_fast(4132): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4135:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readZeroPage(4135): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readZeroPage", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readZeroPage(4135): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4136:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readErasedPage(4136): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readErasedPage", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readErasedPage(4136): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4137:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readFail(4137): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readFail", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readFail(4137): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4140:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: bdbDefaultMoveFastToNormal(4140): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "bdbDefaultMoveFastToNormal", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: bdbDefaultMoveFastToNormal(4140): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4141:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: bdbDefaultMoveNormalToFast(4141): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "bdbDefaultMoveNormalToFast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: bdbDefaultMoveNormalToFast(4141): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4145:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: firstReadWasFS2EOL_DSP(4145): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "firstReadWasFS2EOL_DSP", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: firstReadWasFS2EOL_DSP(4145): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4146:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: firstReadWasFS2EOL(4146): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "firstReadWasFS2EOL", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: firstReadWasFS2EOL(4146): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4150:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readAlgoPassedThroughFS3(4150): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readAlgoPassedThroughFS3", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassedThroughFS3(4150): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4153:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readAlgoPassWithHardAfterSlip(4153): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readAlgoPassWithHardAfterSlip", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithHardAfterSlip(4153): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4154:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readAlgoPassWithFS12BitAfterSlip(4154): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readAlgoPassWithFS12BitAfterSlip", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithFS12BitAfterSlip(4154): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4155:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readAlgoPassWithFS14BitAfterSlip(4155): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readAlgoPassWithFS14BitAfterSlip", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithFS14BitAfterSlip(4155): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4156:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readAlgoPassWithFS3(4156): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readAlgoPassWithFS3", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithFS3(4156): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4158:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readAlgoPassWithFS12BitAfterAcq(4158): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readAlgoPassWithFS12BitAfterAcq", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithFS12BitAfterAcq(4158): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4159:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readAlgoPassWithFS14BitAfterAcq(4159): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readAlgoPassWithFS14BitAfterAcq", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithFS14BitAfterAcq(4159): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4164:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: syndSumAcqConvergedToStaticWalls(4164): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "syndSumAcqConvergedToStaticWalls", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: syndSumAcqConvergedToStaticWalls(4164): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4196:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readStageNumOfFails100(4196): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readStageNumOfFails100", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails100(4196): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4197:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readStageNumOfFails101(4197): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readStageNumOfFails101", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails101(4197): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4198:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readStage100(4198): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readStage100", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage100(4198): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4199:
          if (v20 != 16)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readStage101(4199): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readStage101", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage101(4199): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4200:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: initialReadStage100(4200): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "initialReadStage100", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: initialReadStage100(4200): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4201:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readStage102(4201): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readStage102", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage102(4201): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4202:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: initialReadStage101(4202): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "initialReadStage101", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: initialReadStage101(4202): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4203:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: nandStageOfLife100(4203): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "nandStageOfLife100", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: nandStageOfLife100(4203): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4204:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: nandStageOfLife101(4204): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "nandStageOfLife101", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: nandStageOfLife101(4204): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4205:
          if (v20 != 16)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readStageNumOfFails102(4205): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readStageNumOfFails102", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails102(4205): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4206:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: initialReadStage102(4206): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "initialReadStage102", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: initialReadStage102(4206): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4207:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readStage103(4207): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readStage103", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage103(4207): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4208:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readStage104(4208): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readStage104", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage104(4208): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4209:
          if (v20 != 16)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readStage105(4209): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readStage105", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage105(4209): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4210:
          if (v20 != 16)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readStage106(4210): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readStage106", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage106(4210): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4211:
          if (v20 != 16)
          {
            sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter100(4211): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "dspExceptionParameter100", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter100(4211): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4212:
          if (v20 != 16)
          {
            sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter101(4212): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "dspExceptionParameter101", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter101(4212): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4213:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: initialReadStage103(4213): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "initialReadStage103", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: initialReadStage103(4213): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4214:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: initialReadStage104(4214): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "initialReadStage104", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: initialReadStage104(4214): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4215:
          if (v20 != 16)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readStage107(4215): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readStage107", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage107(4215): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4216:
          if (v20 != 16)
          {
            sub_100022624("ASPMSPParseBufferToCxt: readStage108(4216): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "readStage108", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage108(4216): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4217:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: nandStageOfLife102(4217): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "nandStageOfLife102", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: nandStageOfLife102(4217): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4218:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: nandStageOfLife103(4218): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "nandStageOfLife103", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: nandStageOfLife103(4218): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4219:
          if (v20 != 4)
          {
            sub_100022624("ASPMSPParseBufferToCxt: nandStageOfLife104(4219): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "nandStageOfLife104", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: nandStageOfLife104(4219): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4220:
          if (v20 != 16)
          {
            sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter102(4220): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "dspExceptionParameter102", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter102(4220): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4221:
          if (v20 != 16)
          {
            sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter103(4221): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "dspExceptionParameter103", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter103(4221): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4222:
          if (v20 != 16)
          {
            sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter104(4222): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "dspExceptionParameter104", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter104(4222): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4223:
          if (v20 != 16)
          {
            sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter105(4223): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "dspExceptionParameter105", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter105(4223): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4224:
          if (v20 != 16)
          {
            sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter106(4224): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "dspExceptionParameter106", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter106(4224): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4225:
          if (v20 != 16)
          {
            sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter107(4225): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100034618(a1, "dspExceptionParameter107", v11, 4u, v27))
          {
LABEL_462:
            v8 = v8 + v27;
            v13 = "avg_rd_window_size";
            v14 = "ASPMSPParseBufferToCxt: avg_rd_window_size(8193): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes";
            v16 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): Error adding 1 elements to context";
            v18 = "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context";
            break;
          }

          v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter107(4225): Error adding 4 elements to context";
LABEL_2105:
          sub_100022624(v9, a2, a3, a4, a5, a6, a7, a8, v39);
          return v8;
        default:
          switch(v21)
          {
            case 4226:
              v30 = v15;
              v31 = v16;
              v32 = v13;
              if (v20 != 16)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter108(4226): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v33 = 4;
              }

              else
              {
                v33 = v20 >> 2;
              }

              if (!sub_100034618(a1, "dspExceptionParameter108", v11, 4u, v33))
              {
                v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter108(4226): Error adding 4 elements to context";
                goto LABEL_2105;
              }

              v8 = v8 + v33;
              v13 = v32;
              v14 = "ASPMSPParseBufferToCxt: avg_rd_window_size(8193): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes";
              v16 = v31;
              v15 = v30;
              goto LABEL_21;
            case 4227:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter109(4227): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter109", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter109(4227): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4228:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter110(4228): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter110", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter110(4228): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4229:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter111(4229): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter111", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter111(4229): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4230:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter112(4230): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter112", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter112(4230): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4231:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter113(4231): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter113", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter113(4231): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4232:
              v34 = v17;
              v35 = v16;
              if (v20 != 256)
              {
                sub_100022624("ASPMSPParseBufferToCxt: readStageNumOfFails108(4232): cfg 64 elements; (64*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x104)
              {
                v36 = 64;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "readStageNumOfFails108", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails108(4232): Error adding 64 elements to context";
              goto LABEL_2105;
            case 4233:
              v34 = v17;
              v35 = v16;
              if (v20 != 256)
              {
                sub_100022624("ASPMSPParseBufferToCxt: readStageNumOfFails103(4233): cfg 64 elements; (64*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x104)
              {
                v36 = 64;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "readStageNumOfFails103", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails103(4233): Error adding 64 elements to context";
              goto LABEL_2105;
            case 4234:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100022624("ASPMSPParseBufferToCxt: readStageNumOfFails104(4234): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "readStageNumOfFails104", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails104(4234): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4235:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100022624("ASPMSPParseBufferToCxt: readStageNumOfFails105(4235): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "readStageNumOfFails105", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails105(4235): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4236:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100022624("ASPMSPParseBufferToCxt: readStageNumOfFails106(4236): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "readStageNumOfFails106", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails106(4236): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4237:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100022624("ASPMSPParseBufferToCxt: readStageNumOfFails107(4237): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "readStageNumOfFails107", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails107(4237): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4238:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100022624("ASPMSPParseBufferToCxt: readStage109(4238): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "readStage109", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStage109(4238): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4239:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100022624("ASPMSPParseBufferToCxt: readStage110(4239): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "readStage110", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStage110(4239): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4240:
              v34 = v17;
              v35 = v16;
              if (v20 != 80)
              {
                sub_100022624("ASPMSPParseBufferToCxt: readStageNumOfErrorsBin100(4240): cfg 20 elements; (20*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x54)
              {
                v36 = 20;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "readStageNumOfErrorsBin100", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStageNumOfErrorsBin100(4240): Error adding 20 elements to context";
              goto LABEL_2105;
            case 4241:
              v34 = v17;
              v35 = v16;
              if (v20 != 80)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter114(4241): cfg 20 elements; (20*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x54)
              {
                v36 = 20;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter114", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter114(4241): Error adding 20 elements to context";
              goto LABEL_2105;
            case 4242:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter115(4242): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter115", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter115(4242): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4243:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter116(4243): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter116", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter116(4243): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4244:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter117(4244): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter117", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter117(4244): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4245:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter118(4245): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter118", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter118(4245): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4246:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter119(4246): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter119", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter119(4246): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4247:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter120(4247): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter120", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter120(4247): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4248:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter121(4248): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter121", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter121(4248): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4249:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100022624("ASPMSPParseBufferToCxt: cbdr_ref_1(4249): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "cbdr_ref_1", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_ref_1(4249): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4250:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100022624("ASPMSPParseBufferToCxt: cbdr_ref_2(4250): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "cbdr_ref_2", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_ref_2(4250): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4251:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100022624("ASPMSPParseBufferToCxt: cbdr_outlier(4251): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "cbdr_outlier", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_outlier(4251): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4252:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                sub_100022624("ASPMSPParseBufferToCxt: cbdr_step_1(4252): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "cbdr_step_1", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_step_1(4252): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4253:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                sub_100022624("ASPMSPParseBufferToCxt: cbdr_step_2(4253): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "cbdr_step_2", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_step_2(4253): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4254:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                sub_100022624("ASPMSPParseBufferToCxt: cbdr_step_3(4254): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "cbdr_step_3", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_step_3(4254): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4255:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                sub_100022624("ASPMSPParseBufferToCxt: cbdr_step_4(4255): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "cbdr_step_4", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_step_4(4255): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4256:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                sub_100022624("ASPMSPParseBufferToCxt: cbdr_step_5(4256): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "cbdr_step_5", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_step_5(4256): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4257:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                sub_100022624("ASPMSPParseBufferToCxt: cbdr_step_6(4257): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "cbdr_step_6", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_step_6(4257): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4258:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                sub_100022624("ASPMSPParseBufferToCxt: cbdr_step_7(4258): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "cbdr_step_7", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_step_7(4258): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4259:
              v34 = v17;
              v35 = v16;
              if (v20 != 80)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter122(4259): cfg 20 elements; (20*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x54)
              {
                v36 = 20;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter122", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter122(4259): Error adding 20 elements to context";
              goto LABEL_2105;
            case 4260:
              v34 = v17;
              v35 = v16;
              if (v20 != 32)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter123(4260): cfg 8 elements; (8*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x24)
              {
                v36 = 8;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter123", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter123(4260): Error adding 8 elements to context";
              goto LABEL_2105;
            case 4261:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter124(4261): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter124", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter124(4261): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4262:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter125(4262): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter125", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter125(4262): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4263:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter126(4263): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter126", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter126(4263): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4264:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter127(4264): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter127", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter127(4264): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4265:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter128(4265): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter128", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter128(4265): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4266:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter129(4266): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter129", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter129(4266): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4267:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter130(4267): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter130", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter130(4267): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4268:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter131(4268): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter131", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter131(4268): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4269:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter132(4269): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter132", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter132(4269): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4270:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter133(4270): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter133", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter133(4270): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4271:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter134(4271): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter134", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter134(4271): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4272:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter135(4272): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter135", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter135(4272): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4273:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter136(4273): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter136", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter136(4273): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4274:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter137(4274): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter137", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter137(4274): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4275:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter138(4275): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter138", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter138(4275): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4276:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter139(4276): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter139", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter139(4276): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4277:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter140(4277): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter140", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter140(4277): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4278:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter141(4278): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dspExceptionParameter141", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter141(4278): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4279:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100022624("ASPMSPParseBufferToCxt: fs1_4b_fail(4279): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "fs1_4b_fail_", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: fs1_4b_fail(4279): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4280:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100022624("ASPMSPParseBufferToCxt: fs1_4b_fast_fail(4280): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "fs1_4b_fast_fail_", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: fs1_4b_fast_fail(4280): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4281:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                sub_100022624("ASPMSPParseBufferToCxt: dyce_decoded_bit_flips(4281): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "dyce_decoded_bit_flips_", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dyce_decoded_bit_flips(4281): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4282:
              v34 = v17;
              v35 = v16;
              if (v20 != 60)
              {
                sub_100022624("ASPMSPParseBufferToCxt: slip_bch(4282): cfg 15 elements; (15*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x40)
              {
                v36 = 15;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "slip_bch_", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: slip_bch(4282): Error adding 15 elements to context";
              goto LABEL_2105;
            case 4283:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                sub_100022624("ASPMSPParseBufferToCxt: read_fail(4283): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "read_fail_", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: read_fail(4283): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4284:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                sub_100022624("ASPMSPParseBufferToCxt: tr_read_fail(4284): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "tr_read_fail_", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: tr_read_fail(4284): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4285:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                sub_100022624("ASPMSPParseBufferToCxt: tr_aux_bfs_percent(4285): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "tr_aux_bfs_percent_", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: tr_aux_bfs_percent(4285): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4286:
              v34 = v17;
              v35 = v16;
              if (v20 != 20)
              {
                sub_100022624("ASPMSPParseBufferToCxt: tr_reconstruct_pass_step(4286): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x18)
              {
                v36 = 5;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "tr_reconstruct_pass_step_", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: tr_reconstruct_pass_step(4286): Error adding 5 elements to context";
              goto LABEL_2105;
            case 4287:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100022624("ASPMSPParseBufferToCxt: tr_reconstruct_num(4287): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "tr_reconstruct_num", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: tr_reconstruct_num(4287): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4301:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100022624("ASPMSPParseBufferToCxt: nandStageOfLife105(4301): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100034618(a1, "nandStageOfLife105", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: nandStageOfLife105(4301): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4302:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100022624("ASPMSPParseBufferToCxt: nandStageOfLife106(4302): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (!sub_100034618(a1, "nandStageOfLife106", v11, 4u, v36))
              {
                v9 = "ASPMSPParseBufferToCxt: nandStageOfLife106(4302): Error adding 1 elements to context";
                goto LABEL_2105;
              }

LABEL_912:
              v8 = v8 + v36;
              v13 = "avg_rd_window_size";
              v14 = "ASPMSPParseBufferToCxt: avg_rd_window_size(8193): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes";
              v16 = v35;
              v17 = v34;
              goto LABEL_913;
            default:
              a3 = 12297;
              a2 = 12294;
              a5 = 12295;
              a8 = 12290;
              a7 = 12289;
              a6 = 12292;
              switch(v21)
              {
                case 4303:
                  if (v20 != 8)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter145(4303): cfg 2 elements; (2*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0xC)
                  {
                    v37 = 2;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "dspExceptionParameter145_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter145(4303): Error adding 2 elements to context";
                  goto LABEL_2105;
                case 4304:
                  if (v20 != 8)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter146(4304): cfg 2 elements; (2*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0xC)
                  {
                    v37 = 2;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "dspExceptionParameter146_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter146(4304): Error adding 2 elements to context";
                  goto LABEL_2105;
                case 4305:
                  if (v20 != 8)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter147(4305): cfg 2 elements; (2*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0xC)
                  {
                    v37 = 2;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "dspExceptionParameter147_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter147(4305): Error adding 2 elements to context";
                  goto LABEL_2105;
                case 4306:
                  if (v20 != 8)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter148(4306): cfg 2 elements; (2*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0xC)
                  {
                    v37 = 2;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "dspExceptionParameter148_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter148(4306): Error adding 2 elements to context";
                  goto LABEL_2105;
                case 4307:
                  if (v20 != 32)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter149(4307): cfg 8 elements; (8*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x24)
                  {
                    v37 = 8;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "dspExceptionParameter149_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter149(4307): Error adding 8 elements to context";
                  goto LABEL_2105;
                case 4308:
                  if (v20 != 24)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter150(4308): cfg 6 elements; (6*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x1C)
                  {
                    v37 = 6;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "dspExceptionParameter150_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter150(4308): Error adding 6 elements to context";
                  goto LABEL_2105;
                case 4309:
                  if (v20 != 20)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter151(4309): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "dspExceptionParameter151_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter151(4309): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4310:
                  if (v20 != 20)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: nandStageOfLife107(4310): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "nandStageOfLife107_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife107(4310): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4311:
                  if (v20 != 20)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: nandStageOfLife108(4311): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "nandStageOfLife108_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife108(4311): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4312:
                  if (v20 != 20)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: nandStageOfLife109(4312): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "nandStageOfLife109_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife109(4312): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4313:
                  if (v20 != 20)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: nandStageOfLife110(4313): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "nandStageOfLife110_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife110(4313): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4314:
                  if (v20 != 4)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: nandStageOfLife111(4314): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "nandStageOfLife111", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife111(4314): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4315:
                  if (v20 != 4)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter152(4315): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "dspExceptionParameter152", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter152(4315): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4316:
                  if (v20 != 4)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter153(4316): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "dspExceptionParameter153", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter153(4316): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4317:
                  if (v20 != 4)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter154(4317): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "dspExceptionParameter154", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter154(4317): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4318:
                  if (v20 != 4)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: nandStageOfLife112(4318): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "nandStageOfLife112", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife112(4318): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4319:
                  if (v20 != 4)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: nandStageOfLife113(4319): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "nandStageOfLife113", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife113(4319): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4320:
                  if (v20 != 4)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: nandStageOfLife114(4320): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "nandStageOfLife114", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife114(4320): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4321:
                  if (v20 != 4)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter155(4321): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "dspExceptionParameter155", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter155(4321): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4322:
                  if (v20 != 4)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter156(4322): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "dspExceptionParameter156", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter156(4322): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4323:
                  if (v20 != 4)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter157(4323): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "dspExceptionParameter157", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter157(4323): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4324:
                  if (v20 != 4)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: readStage111(4324): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "readStage111", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStage111(4324): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4325:
                  if (v20 != 4)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: nandStageOfLife115(4325): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "nandStageOfLife115", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife115(4325): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4326:
                  if (v20 != 4)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: nandStageOfLife116(4326): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "nandStageOfLife116", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife116(4326): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4327:
                  if (v20 != 4)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: nandStageOfLife117(4327): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "nandStageOfLife117", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife117(4327): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4328:
LABEL_930:
                  if (v21 < 12288)
                  {
                    switch(v21)
                    {
                      case 8208:
                        if (v20 != 4)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: boot_block_read_failures(8208): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "boot_block_read_failures", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_block_read_failures(8208): Error adding 1 elements to context";
                        break;
                      case 8209:
                        if (v20 != 4)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: boot_block_refresh(8209): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "boot_block_refresh", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_block_refresh(8209): Error adding 1 elements to context";
                        break;
                      case 8210:
                        if (v20 != 4)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: boot_block_convert_to_main(8210): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "boot_block_convert_to_main", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_block_convert_to_main(8210): Error adding 1 elements to context";
                        break;
                      case 8211:
                        if (v20 != 4)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: boot_block_read_source_changed(8211): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "boot_block_read_source_changed", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_block_read_source_changed(8211): Error adding 1 elements to context";
                        break;
                      case 8219:
                        if (v20 != 4)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: number_of_dcc_failures(8219): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "number_of_dcc_failures", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: number_of_dcc_failures(8219): Error adding 1 elements to context";
                        break;
                      case 8234:
                        if (v20 != 4)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: msp_number_sram_flips(8234): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "msp_number_sram_flips", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: msp_number_sram_flips(8234): Error adding 1 elements to context";
                        break;
                      case 8250:
                        if (v20 != 120)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: lower_die_temperature(8250): cfg 30 elements; (30*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x7C)
                        {
                          v37 = 30;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "lower_die_temperature", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: lower_die_temperature(8250): Error adding 30 elements to context";
                        break;
                      case 8251:
                        if (v20 != 120)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: higher_die_temperature(8251): cfg 30 elements; (30*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x7C)
                        {
                          v37 = 30;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "higher_die_temperature", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: higher_die_temperature(8251): Error adding 30 elements to context";
                        break;
                      case 8258:
                        if (v20 != 4)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: msp_number_hw_sram_flips(8258): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "msp_number_hw_sram_flips", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: msp_number_hw_sram_flips(8258): Error adding 1 elements to context";
                        break;
                      case 8259:
                        if (v20 != 12)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: boot_rd_training_failure(8259): cfg 3 elements; (3*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v37 = 3;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "boot_rd_training_failure_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_rd_training_failure(8259): Error adding 3 elements to context";
                        break;
                      case 8260:
                        if (v20 != 12)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: boot_wr_training_failure(8260): cfg 3 elements; (3*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v37 = 3;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "boot_wr_training_failure_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_wr_training_failure(8260): Error adding 3 elements to context";
                        break;
                      case 8261:
                        if (v20 != 4)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: boot_rd_sdl_overflow(8261): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "boot_rd_sdl_overflow", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_rd_sdl_overflow(8261): Error adding 1 elements to context";
                        break;
                      case 8262:
                        if (v20 != 4)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: boot_wr_sdl_overflow(8262): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "boot_wr_sdl_overflow", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_wr_sdl_overflow(8262): Error adding 1 elements to context";
                        break;
                      case 8263:
                        if (v20 != 20)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: boot_rd_pos_win_hist_all_dies(8263): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "boot_rd_pos_win_hist_all_dies_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_rd_pos_win_hist_all_dies(8263): Error adding 5 elements to context";
                        break;
                      case 8264:
                        if (v20 != 20)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: boot_rd_neg_win_hist_all_dies(8264): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "boot_rd_neg_win_hist_all_dies_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_rd_neg_win_hist_all_dies(8264): Error adding 5 elements to context";
                        break;
                      case 8265:
                        if (v20 != 20)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: boot_wr_win_hist_all_dies(8265): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "boot_wr_win_hist_all_dies_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_wr_win_hist_all_dies(8265): Error adding 5 elements to context";
                        break;
                      case 8266:
                        if (v20 != 20)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: boot_rd_pos_win_hist_ch0_die0(8266): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "boot_rd_pos_win_hist_ch0_die0_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_rd_pos_win_hist_ch0_die0(8266): Error adding 5 elements to context";
                        break;
                      case 8267:
                        if (v20 != 20)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: boot_rd_neg_win_hist_ch0_die0(8267): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "boot_rd_neg_win_hist_ch0_die0_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_rd_neg_win_hist_ch0_die0(8267): Error adding 5 elements to context";
                        break;
                      case 8268:
                        if (v20 != 20)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: boot_wr_win_hist_ch0_die0(8268): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "boot_wr_win_hist_ch0_die0_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_wr_win_hist_ch0_die0(8268): Error adding 5 elements to context";
                        break;
                      case 8269:
                        if (v20 != 64)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: pts_vs_boot_mid_rd_p_c0d0_hist(8269): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "pts_vs_boot_mid_rd_p_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pts_vs_boot_mid_rd_p_c0d0_hist(8269): Error adding 16 elements to context";
                        break;
                      case 8270:
                        if (v20 != 64)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: pts_vs_boot_mid_rd_n_c0d0_hist(8270): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "pts_vs_boot_mid_rd_n_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pts_vs_boot_mid_rd_n_c0d0_hist(8270): Error adding 16 elements to context";
                        break;
                      case 8271:
                        if (v20 != 64)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: pts_vs_boot_mid_wr_c0d0_hist(8271): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "pts_vs_boot_mid_wr_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pts_vs_boot_mid_wr_c0d0_hist(8271): Error adding 16 elements to context";
                        break;
                      case 8272:
                        if (v20 != 4)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: pge_rd_training_failure(8272): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "pge_rd_training_failure", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_rd_training_failure(8272): Error adding 1 elements to context";
                        break;
                      case 8273:
                        if (v20 != 4)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: pge_wr_training_failure(8273): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "pge_wr_training_failure", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_wr_training_failure(8273): Error adding 1 elements to context";
                        break;
                      case 8274:
                        if (v20 != 4)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: pge_rd_sdl_overflow(8274): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "pge_rd_sdl_overflow", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_rd_sdl_overflow(8274): Error adding 1 elements to context";
                        break;
                      case 8275:
                        if (v20 != 4)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: pge_wr_sdl_overflow(8275): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "pge_wr_sdl_overflow", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_wr_sdl_overflow(8275): Error adding 1 elements to context";
                        break;
                      case 8276:
                        if (v20 != 20)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: pge_rd_pos_win_hist_all_dies(8276): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "pge_rd_pos_win_hist_all_dies_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_rd_pos_win_hist_all_dies(8276): Error adding 5 elements to context";
                        break;
                      case 8277:
                        if (v20 != 20)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: pge_rd_neg_win_hist_all_dies(8277): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "pge_rd_neg_win_hist_all_dies_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_rd_neg_win_hist_all_dies(8277): Error adding 5 elements to context";
                        break;
                      case 8278:
                        if (v20 != 20)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: pge_wr_win_hist_all_dies(8278): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "pge_wr_win_hist_all_dies_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_wr_win_hist_all_dies(8278): Error adding 5 elements to context";
                        break;
                      case 8279:
                        if (v20 != 20)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: pge_rd_pos_win_hist_ch0_die0(8279): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "pge_rd_pos_win_hist_ch0_die0_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_rd_pos_win_hist_ch0_die0(8279): Error adding 5 elements to context";
                        break;
                      case 8280:
                        if (v20 != 20)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: pge_rd_neg_win_hist_ch0_die0(8280): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "pge_rd_neg_win_hist_ch0_die0_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_rd_neg_win_hist_ch0_die0(8280): Error adding 5 elements to context";
                        break;
                      case 8281:
                        if (v20 != 20)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: pge_wr_win_hist_ch0_die0(8281): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "pge_wr_win_hist_ch0_die0_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_wr_win_hist_ch0_die0(8281): Error adding 5 elements to context";
                        break;
                      case 8282:
                        if (v20 != 64)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: boot_vs_pge_rd_p_c0d0_hist(8282): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "boot_vs_pge_rd_p_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_vs_pge_rd_p_c0d0_hist(8282): Error adding 16 elements to context";
                        break;
                      case 8283:
                        if (v20 != 64)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: boot_vs_pge_rd_n_c0d0_hist(8283): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "boot_vs_pge_rd_n_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_vs_pge_rd_n_c0d0_hist(8283): Error adding 16 elements to context";
                        break;
                      case 8284:
                        if (v20 != 64)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: boot_vs_pge_wr_c0d0_hist(8284): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "boot_vs_pge_wr_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_vs_pge_wr_c0d0_hist(8284): Error adding 16 elements to context";
                        break;
                      case 8285:
                        if (v20 != 4)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: periodic_rd_training_failure(8285): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "periodic_rd_training_failure", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: periodic_rd_training_failure(8285): Error adding 1 elements to context";
                        break;
                      case 8286:
                        if (v20 != 4)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: periodic_wr_training_failure(8286): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "periodic_wr_training_failure", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: periodic_wr_training_failure(8286): Error adding 1 elements to context";
                        break;
                      case 8287:
                        if (v20 != 64)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: pge_vs_periodic_rd_p_c0d0_hist(8287): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "pge_vs_periodic_rd_p_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_vs_periodic_rd_p_c0d0_hist(8287): Error adding 16 elements to context";
                        break;
                      case 8288:
                        if (v20 != 64)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: pge_vs_periodic_rd_n_c0d0_hist(8288): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "pge_vs_periodic_rd_n_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_vs_periodic_rd_n_c0d0_hist(8288): Error adding 16 elements to context";
                        break;
                      case 8289:
                        if (v20 != 64)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: pge_vs_periodic_wr_c0d0_hist(8289): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "pge_vs_periodic_wr_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_vs_periodic_wr_c0d0_hist(8289): Error adding 16 elements to context";
                        break;
                      case 8290:
                        if (v20 != 4)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: periodic_rd_sdl_overflow(8290): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "periodic_rd_sdl_overflow", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: periodic_rd_sdl_overflow(8290): Error adding 1 elements to context";
                        break;
                      case 8291:
                        if (v20 != 4)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: periodic_wr_sdl_overflow(8291): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "periodic_wr_sdl_overflow", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: periodic_wr_sdl_overflow(8291): Error adding 1 elements to context";
                        break;
                      case 8292:
                        if (v20 != 4)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: too_frequent_temp_change_rd(8292): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "too_frequent_temp_change_rd", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: too_frequent_temp_change_rd(8292): Error adding 1 elements to context";
                        break;
                      case 8293:
                        if (v20 != 4)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: too_frequent_temp_change_wr(8293): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "too_frequent_temp_change_wr", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: too_frequent_temp_change_wr(8293): Error adding 1 elements to context";
                        break;
                      case 8294:
                        if (v20 != 28)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: periodic_rd_training_hist(8294): cfg 7 elements; (7*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x20)
                        {
                          v37 = 7;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "periodic_rd_training_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: periodic_rd_training_hist(8294): Error adding 7 elements to context";
                        break;
                      case 8295:
                        if (v20 != 28)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: periodic_wr_training_hist(8295): cfg 7 elements; (7*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x20)
                        {
                          v37 = 7;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "periodic_wr_training_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: periodic_wr_training_hist(8295): Error adding 7 elements to context";
                        break;
                      case 8296:
                        if (v20 != 28)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: periodic_rd_training_latency(8296): cfg 7 elements; (7*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x20)
                        {
                          v37 = 7;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "periodic_rd_training_latency_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: periodic_rd_training_latency(8296): Error adding 7 elements to context";
                        break;
                      case 8297:
                        if (v20 != 28)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: periodic_wr_training_latency(8297): cfg 7 elements; (7*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x20)
                        {
                          v37 = 7;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "periodic_wr_training_latency_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: periodic_wr_training_latency(8297): Error adding 7 elements to context";
                        break;
                      case 8298:
                        if (v20 != 48)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: system_temp(8298): cfg 12 elements; (12*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x34)
                        {
                          v37 = 12;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "system_temp_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: system_temp(8298): Error adding 12 elements to context";
                        break;
                      case 8299:
                        if (v20 != 48)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: temp_diff_150ms(8299): cfg 12 elements; (12*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x34)
                        {
                          v37 = 12;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "temp_diff_150ms_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: temp_diff_150ms(8299): Error adding 12 elements to context";
                        break;
                      case 8300:
                        if (v20 != 48)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: temp_diff_1s(8300): cfg 12 elements; (12*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x34)
                        {
                          v37 = 12;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "temp_diff_1s_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: temp_diff_1s(8300): Error adding 12 elements to context";
                        break;
                      case 8301:
                        if (v20 != 28)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: num_of_steps_bigger_win(8301): cfg 7 elements; (7*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x20)
                        {
                          v37 = 7;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "num_of_steps_bigger_win_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: num_of_steps_bigger_win(8301): Error adding 7 elements to context";
                        break;
                      case 8302:
                        if (v20 != 28)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: num_of_steps_smaller_win(8302): cfg 7 elements; (7*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x20)
                        {
                          v37 = 7;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "num_of_steps_smaller_win_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: num_of_steps_smaller_win(8302): Error adding 7 elements to context";
                        break;
                      default:
                        goto LABEL_1826;
                    }

                    goto LABEL_2105;
                  }

                  if (v21 <= 12292)
                  {
                    if (v21 <= 12289)
                    {
                      if (v21 == 12288)
                      {
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: readStageNumOfFails200(12288): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 3;
                        }

                        if (!sub_100034618(a1, "readStageNumOfFails200", v11, 8u, v37))
                        {
                          v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails200(12288): Error adding 1 elements to context";
                          goto LABEL_2105;
                        }
                      }

                      else
                      {
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: initialReadStage200(12289): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 3;
                        }

                        if (!sub_100034618(a1, "initialReadStage200", v11, 8u, v37))
                        {
                          v9 = "ASPMSPParseBufferToCxt: initialReadStage200(12289): Error adding 1 elements to context";
                          goto LABEL_2105;
                        }
                      }
                    }

                    else if (v21 == 12290)
                    {
                      if (v20 != 8)
                      {
                        sub_100022624("ASPMSPParseBufferToCxt: initialReadStage201(12290): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!sub_100034618(a1, "initialReadStage201", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: initialReadStage201(12290): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }
                    }

                    else if (v21 == 12291)
                    {
                      if (v20 != 8)
                      {
                        sub_100022624("ASPMSPParseBufferToCxt: readStageNumOfFails201(12291): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!sub_100034618(a1, "readStageNumOfFails201", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails201(12291): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }
                    }

                    else
                    {
                      if (v20 != 8)
                      {
                        sub_100022624("ASPMSPParseBufferToCxt: initialReadStage202(12292): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!sub_100034618(a1, "initialReadStage202", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: initialReadStage202(12292): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }
                    }

                    goto LABEL_1372;
                  }

                  if (v21 <= 12295)
                  {
                    if (v21 == 12293)
                    {
                      if (v20 != 8)
                      {
                        sub_100022624("ASPMSPParseBufferToCxt: initialReadStage203(12293): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!sub_100034618(a1, "initialReadStage203", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: initialReadStage203(12293): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }
                    }

                    else if (v21 == 12294)
                    {
                      if (v20 != 8)
                      {
                        sub_100022624("ASPMSPParseBufferToCxt: readStageNumOfFails202(12294): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!sub_100034618(a1, "readStageNumOfFails202", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails202(12294): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }
                    }

                    else
                    {
                      if (v20 != 8)
                      {
                        sub_100022624("ASPMSPParseBufferToCxt: readStageNumOfFails203(12295): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!sub_100034618(a1, "readStageNumOfFails203", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails203(12295): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }
                    }

                    goto LABEL_1372;
                  }

                  switch(v21)
                  {
                    case 12296:
                      if (v20 != 8)
                      {
                        sub_100022624("ASPMSPParseBufferToCxt: initialReadStage204(12296): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!sub_100034618(a1, "initialReadStage204", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: initialReadStage204(12296): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }

                      goto LABEL_1372;
                    case 12297:
                      if (v20 != 8)
                      {
                        sub_100022624("ASPMSPParseBufferToCxt: initialReadStage205(12297): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!sub_100034618(a1, "initialReadStage205", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: initialReadStage205(12297): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }

                      goto LABEL_1372;
                    case 12298:
                      if (v20 != 8)
                      {
                        sub_100022624("ASPMSPParseBufferToCxt: initialReadStage206(12298): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!sub_100034618(a1, "initialReadStage206", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: initialReadStage206(12298): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }

                      goto LABEL_1372;
                  }

LABEL_1826:
                  if (v21 < 0x4000)
                  {
                    v13 = "avg_rd_window_size";
                    v14 = "ASPMSPParseBufferToCxt: avg_rd_window_size(8193): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes";
                    v16 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): Error adding 1 elements to context";
                    v15 = "num_zq_failures";
                    v17 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes";
                    v18 = "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context";
                    switch(v21)
                    {
                      case 12299:
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: initialReadStage207(12299): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "initialReadStage207", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage207(12299): Error adding 1 elements to context";
                        break;
                      case 12300:
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: initialReadStage208(12300): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "initialReadStage208", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage208(12300): Error adding 1 elements to context";
                        break;
                      case 12301:
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: initialReadStage209(12301): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "initialReadStage209", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage209(12301): Error adding 1 elements to context";
                        break;
                      case 12302:
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: readStage200(12302): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "readStage200", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage200(12302): Error adding 1 elements to context";
                        break;
                      case 12303:
                        if (v20 != 32)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: readStage201(12303): cfg 4 elements; (4*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x28)
                        {
                          v27 = 4;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "readStage201", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage201(12303): Error adding 4 elements to context";
                        break;
                      case 12304:
                        if (v20 != 32)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: readStage202(12304): cfg 4 elements; (4*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x28)
                        {
                          v27 = 4;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "readStage202", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage202(12304): Error adding 4 elements to context";
                        break;
                      case 12305:
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: initialReadStage210(12305): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "initialReadStage210", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage210(12305): Error adding 1 elements to context";
                        break;
                      case 12306:
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: initialReadStage211(12306): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "initialReadStage211", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage211(12306): Error adding 1 elements to context";
                        break;
                      case 12307:
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: readStage203(12307): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "readStage203", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage203(12307): Error adding 1 elements to context";
                        break;
                      case 12308:
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: readStage204(12308): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "readStage204", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage204(12308): Error adding 1 elements to context";
                        break;
                      case 12309:
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: readStage205(12309): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "readStage205", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage205(12309): Error adding 1 elements to context";
                        break;
                      case 12310:
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: readStage206(12310): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "readStage206", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage206(12310): Error adding 1 elements to context";
                        break;
                      case 12311:
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: readStage207(12311): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "readStage207", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage207(12311): Error adding 1 elements to context";
                        break;
                      case 12312:
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: readStage208(12312): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "readStage208", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage208(12312): Error adding 1 elements to context";
                        break;
                      case 12313:
                        if (v20 != 32)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: readStage209(12313): cfg 4 elements; (4*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x28)
                        {
                          v27 = 4;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "readStage209", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage209(12313): Error adding 4 elements to context";
                        break;
                      case 12314:
                        if (v20 != 32)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: readStage210(12314): cfg 4 elements; (4*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x28)
                        {
                          v27 = 4;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "readStage210", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage210(12314): Error adding 4 elements to context";
                        break;
                      case 12315:
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: initialReadStage212(12315): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "initialReadStage212", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage212(12315): Error adding 1 elements to context";
                        break;
                      case 12316:
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: initialReadStage213(12316): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "initialReadStage213", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage213(12316): Error adding 1 elements to context";
                        break;
                      case 12317:
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: readStage211(12317): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "readStage211", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage211(12317): Error adding 1 elements to context";
                        break;
                      case 12318:
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: readStage212(12318): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "readStage212", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage212(12318): Error adding 1 elements to context";
                        break;
                      case 12319:
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: readStage213(12319): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "readStage213", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage213(12319): Error adding 1 elements to context";
                        break;
                      case 12320:
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: readStage214(12320): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "readStage214", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage214(12320): Error adding 1 elements to context";
                        break;
                      case 12321:
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: readStage215(12321): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "readStage215", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage215(12321): Error adding 1 elements to context";
                        break;
                      case 12322:
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter142(12322): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "dspExceptionParameter142", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter142(12322): Error adding 1 elements to context";
                        break;
                      case 12323:
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter143(12323): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "dspExceptionParameter143", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter143(12323): Error adding 1 elements to context";
                        break;
                      case 12324:
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter144(12324): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "dspExceptionParameter144", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter144(12324): Error adding 1 elements to context";
                        break;
                      case 12325:
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: initialReadStageParameter1(12325): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "initialReadStageParameter1", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStageParameter1(12325): Error adding 1 elements to context";
                        break;
                      case 12326:
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: initialReadStageParameter2(12326): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100034618(a1, "initialReadStageParameter2", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStageParameter2(12326): Error adding 1 elements to context";
                        break;
                      case 12331:
                        if (v20 != 20)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: initialReadStage11(12331): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v27 = 5;
                        }

                        else
                        {
                          v27 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "initialReadStage11_", v11, 4u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage11(12331): Error adding 5 elements to context";
                        break;
                      case 12332:
                        if (v20 != 32)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: initialReadStage12(12332): cfg 8 elements; (8*4) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x24)
                        {
                          v27 = 8;
                        }

                        else
                        {
                          v27 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "initialReadStage12_", v11, 4u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage12(12332): Error adding 8 elements to context";
                        break;
                      case 12333:
                        if (v20 != 24)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: initialReadStage13(12333): cfg 6 elements; (6*4) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x1C)
                        {
                          v27 = 6;
                        }

                        else
                        {
                          v27 = v20 >> 2;
                        }

                        if (sub_100034618(a1, "initialReadStage13_", v11, 4u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage13(12333): Error adding 6 elements to context";
                        break;
                      default:
                        goto LABEL_463;
                    }

                    goto LABEL_2105;
                  }

                  if (v21 <= 16395)
                  {
                    switch(v21)
                    {
                      case 16384:
                        if (v20 != 8)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: fw_version_identifier(16384): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 3;
                        }

                        if (!sub_100034618(a1, "fw_version_identifier", v11, 8u, v37))
                        {
                          v9 = "ASPMSPParseBufferToCxt: fw_version_identifier(16384): Error adding 1 elements to context";
                          goto LABEL_2105;
                        }

                        goto LABEL_1372;
                      case 16394:
                        if (v20 != 4)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: coge_cache_hit_read(16394): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (!sub_100034618(a1, "coge_cache_hit_read", v11, 4u, v37))
                        {
                          v9 = "ASPMSPParseBufferToCxt: coge_cache_hit_read(16394): Error adding 1 elements to context";
                          goto LABEL_2105;
                        }

                        goto LABEL_1372;
                      case 16395:
                        if (v20 != 4)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: coge_cache_miss_read(16395): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (!sub_100034618(a1, "coge_cache_miss_read", v11, 4u, v37))
                        {
                          v9 = "ASPMSPParseBufferToCxt: coge_cache_miss_read(16395): Error adding 1 elements to context";
                          goto LABEL_2105;
                        }

                        goto LABEL_1372;
                    }
                  }

                  else
                  {
                    if (v21 <= 16397)
                    {
                      if (v21 == 16396)
                      {
                        if (v20 != 4)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: coge_cache_hit_program(16396): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (!sub_100034618(a1, "coge_cache_hit_program", v11, 4u, v37))
                        {
                          v9 = "ASPMSPParseBufferToCxt: coge_cache_hit_program(16396): Error adding 1 elements to context";
                          goto LABEL_2105;
                        }
                      }

                      else
                      {
                        if (v20 != 4)
                        {
                          sub_100022624("ASPMSPParseBufferToCxt: coge_cache_miss_program(16397): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (!sub_100034618(a1, "coge_cache_miss_program", v11, 4u, v37))
                        {
                          v9 = "ASPMSPParseBufferToCxt: coge_cache_miss_program(16397): Error adding 1 elements to context";
                          goto LABEL_2105;
                        }
                      }

                      goto LABEL_1372;
                    }

                    if (v21 == 16398)
                    {
                      if (v20 != 4)
                      {
                        sub_100022624("ASPMSPParseBufferToCxt: coge_lru_num_of_replacement(16398): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (!sub_100034618(a1, "coge_lru_num_of_replacement", v11, 4u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: coge_lru_num_of_replacement(16398): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }

LABEL_1372:
                      v8 = v8 + v37;
                      goto LABEL_1373;
                    }

                    if (v21 == 16399)
                    {
                      if (v20 != 4)
                      {
                        sub_100022624("ASPMSPParseBufferToCxt: coge_lru_num_of_searches(16399): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (!sub_100034618(a1, "coge_lru_num_of_searches", v11, 4u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: coge_lru_num_of_searches(16399): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }

                      goto LABEL_1372;
                    }
                  }

LABEL_1373:
                  v13 = "avg_rd_window_size";
                  v14 = "ASPMSPParseBufferToCxt: avg_rd_window_size(8193): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes";
                  v16 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): Error adding 1 elements to context";
LABEL_20:
                  v15 = "num_zq_failures";
LABEL_21:
                  v17 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes";
LABEL_913:
                  v18 = "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context";
                  break;
                case 4329:
                  if (v20 != 32)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter158(4329): cfg 8 elements; (8*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x24)
                  {
                    v37 = 8;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "dspExceptionParameter158_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter158(4329): Error adding 8 elements to context";
                  goto LABEL_2105;
                case 4330:
                  if (v20 != 20)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter159(4330): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "dspExceptionParameter159_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter159(4330): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4331:
                  if (v20 != 24)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: readStage112(4331): cfg 6 elements; (6*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x1C)
                  {
                    v37 = 6;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "readStage112_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStage112(4331): Error adding 6 elements to context";
                  goto LABEL_2105;
                case 4332:
                  if (v20 != 32)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: readStageFail0(4332): cfg 8 elements; (8*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x24)
                  {
                    v37 = 8;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "readStageFail0_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStageFail0(4332): Error adding 8 elements to context";
                  goto LABEL_2105;
                case 4333:
                  if (v20 != 16)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: readStage113(4333): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x14)
                  {
                    v37 = 4;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "readStage113_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStage113(4333): Error adding 4 elements to context";
                  goto LABEL_2105;
                case 4334:
                  if (v20 != 16)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: readStage114(4334): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x14)
                  {
                    v37 = 4;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "readStage114_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStage114(4334): Error adding 4 elements to context";
                  goto LABEL_2105;
                case 4335:
                  if (v20 != 48)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter160(4335): cfg 12 elements; (12*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x34)
                  {
                    v37 = 12;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "dspExceptionParameter160_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter160(4335): Error adding 12 elements to context";
                  goto LABEL_2105;
                case 4336:
                  if (v20 != 4)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: nandStageOfLife118(4336): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "nandStageOfLife118", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife118(4336): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4337:
                  if (v20 != 4)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: nandStageOfLife119(4337): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "nandStageOfLife119", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife119(4337): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4338:
                  if (v20 != 40)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: readStage115(4338): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x2C)
                  {
                    v37 = 10;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "readStage115_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStage115(4338): Error adding 10 elements to context";
                  goto LABEL_2105;
                case 4339:
                  if (v20 != 40)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: readStageFail1(4339): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x2C)
                  {
                    v37 = 10;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "readStageFail1_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStageFail1(4339): Error adding 10 elements to context";
                  goto LABEL_2105;
                case 4340:
                  if (v20 != 12)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: readStageFail2(4340): cfg 3 elements; (3*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x10)
                  {
                    v37 = 3;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "readStageFail2_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStageFail2(4340): Error adding 3 elements to context";
                  goto LABEL_2105;
                case 4341:
                  if (v20 != 16)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: readStage116(4341): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x14)
                  {
                    v37 = 4;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "readStage116_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStage116(4341): Error adding 4 elements to context";
                  goto LABEL_2105;
                case 4342:
                  if (v20 != 40)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: readStage117(4342): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x2C)
                  {
                    v37 = 10;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "readStage117_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStage117(4342): Error adding 10 elements to context";
                  goto LABEL_2105;
                case 4343:
                  if (v20 != 20)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter161(4343): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "dspExceptionParameter161_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter161(4343): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4344:
                  if (v20 != 12)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter162(4344): cfg 3 elements; (3*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x10)
                  {
                    v37 = 3;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "dspExceptionParameter162_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter162(4344): Error adding 3 elements to context";
                  goto LABEL_2105;
                case 4345:
                  if (v20 != 40)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: readStage118(4345): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x2C)
                  {
                    v37 = 10;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "readStage118_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStage118(4345): Error adding 10 elements to context";
                  goto LABEL_2105;
                case 4346:
                  if (v20 != 32)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter163(4346): cfg 8 elements; (8*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x24)
                  {
                    v37 = 8;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "dspExceptionParameter163_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter163(4346): Error adding 8 elements to context";
                  goto LABEL_2105;
                case 4347:
                  if (v20 != 32)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter164(4347): cfg 8 elements; (8*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x24)
                  {
                    v37 = 8;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "dspExceptionParameter164_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter164(4347): Error adding 8 elements to context";
                  goto LABEL_2105;
                case 4348:
                  if (v20 != 32)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter165(4348): cfg 8 elements; (8*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x24)
                  {
                    v37 = 8;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "dspExceptionParameter165_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter165(4348): Error adding 8 elements to context";
                  goto LABEL_2105;
                case 4349:
                  if (v20 != 20)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter166(4349): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "dspExceptionParameter166_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter166(4349): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4350:
                  if (v20 != 20)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter167(4350): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "dspExceptionParameter167_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter167(4350): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4351:
                  if (v20 != 12)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter168(4351): cfg 3 elements; (3*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x10)
                  {
                    v37 = 3;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "dspExceptionParameter168_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter168(4351): Error adding 3 elements to context";
                  goto LABEL_2105;
                case 4352:
                  if (v20 != 4)
                  {
                    sub_100022624("ASPMSPParseBufferToCxt: dspExceptionParameter169(4352): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100034618(a1, "dspExceptionParameter169", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter169(4352): Error adding 1 elements to context";
                  goto LABEL_2105;
                default:
                  switch(v21)
                  {
                    case 8193:
                      if (v20 != 20)
                      {
                        sub_100022624("ASPMSPParseBufferToCxt: avg_rd_window_size(8193): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x18)
                      {
                        v37 = 5;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (!sub_100034618(a1, "avg_rd_window_size", v11, 4u, v37))
                      {
                        goto LABEL_2105;
                      }

                      goto LABEL_1372;
                    case 8194:
                      if (v20 != 4)
                      {
                        sub_100022624("ASPMSPParseBufferToCxt: num_zq_failures(8194): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100034618(a1, "num_zq_failures", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): Error adding 1 elements to context";
                      break;
                    case 8195:
                      if (v20 != 64)
                      {
                        sub_100022624("ASPMSPParseBufferToCxt: lower_die_temperature(8195): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x44)
                      {
                        v37 = 16;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100034618(a1, "lower_die_temperature", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context";
                      break;
                    case 8196:
                      if (v20 != 64)
                      {
                        sub_100022624("ASPMSPParseBufferToCxt: higher_die_temperature(8196): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x44)
                      {
                        v37 = 16;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100034618(a1, "higher_die_temperature", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: higher_die_temperature(8196): Error adding 16 elements to context";
                      break;
                    case 8197:
                      if (v20 != 4)
                      {
                        sub_100022624("ASPMSPParseBufferToCxt: number_of_sram_flips(8197): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100034618(a1, "number_of_sram_flips", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: number_of_sram_flips(8197): Error adding 1 elements to context";
                      break;
                    case 8198:
                      if (v20 != 4)
                      {
                        sub_100022624("ASPMSPParseBufferToCxt: number_of_reset_failures(8198): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100034618(a1, "number_of_reset_failures", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: number_of_reset_failures(8198): Error adding 1 elements to context";
                      break;
                    case 8199:
                      if (v20 != 4)
                      {
                        sub_100022624("ASPMSPParseBufferToCxt: device_config(8199): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100034618(a1, "device_config", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: device_config(8199): Error adding 1 elements to context";
                      break;
                    case 8200:
                      if (v20 != 4)
                      {
                        sub_100022624("ASPMSPParseBufferToCxt: number_of_throttling_events(8200): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100034618(a1, "number_of_throttling_events", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: number_of_throttling_events(8200): Error adding 1 elements to context";
                      break;
                    case 8201:
                      if (v20 != 4)
                      {
                        sub_100022624("ASPMSPParseBufferToCxt: link_speed_recoveries(8201): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100034618(a1, "link_speed_recoveries", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: link_speed_recoveries(8201): Error adding 1 elements to context";
                      break;
                    case 8202:
                      if (v20 != 4)
                      {
                        sub_100022624("ASPMSPParseBufferToCxt: fw_updates(8202): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100034618(a1, "fw_updates", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: fw_updates(8202): Error adding 1 elements to context";
                      break;
                    case 8203:
                      if (v20 != 4)
                      {
                        sub_100022624("ASPMSPParseBufferToCxt: maintenance_backup_to_main(8203): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100034618(a1, "maintenance_backup_to_main", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: maintenance_backup_to_main(8203): Error adding 1 elements to context";
                      break;
                    case 8204:
                      if (v20 != 4)
                      {
                        sub_100022624("ASPMSPParseBufferToCxt: maintenance_main_to_backup(8204): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100034618(a1, "maintenance_main_to_backup", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: maintenance_main_to_backup(8204): Error adding 1 elements to context";
                      break;
                    case 8205:
                      if (v20 != 4)
                      {
                        sub_100022624("ASPMSPParseBufferToCxt: boot_block_erase_failures(8205): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100034618(a1, "boot_block_erase_failures", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: boot_block_erase_failures(8205): Error adding 1 elements to context";
                      break;
                    case 8206:
                      if (v20 != 4)
                      {
                        sub_100022624("ASPMSPParseBufferToCxt: boot_block_program_failures(8206): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100034618(a1, "boot_block_program_failures", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: boot_block_program_failures(8206): Error adding 1 elements to context";
                      break;
                    case 8207:
                      if (v20 != 4)
                      {
                        sub_100022624("ASPMSPParseBufferToCxt: boot_block_read_verify_failures(8207): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100034618(a1, "boot_block_read_verify_failures", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: boot_block_read_verify_failures(8207): Error adding 1 elements to context";
                      break;
                    default:
                      goto LABEL_930;
                  }

                  goto LABEL_2105;
              }

              break;
          }

          break;
      }
    }

LABEL_463:
    v11 += v20;
    v10 -= v20;
  }
}

uint64_t sub_10003B668(uint64_t result, const char *a2, const char *a3, uint64_t a4)
{
  if (result)
  {
    v7 = result;
    v8 = malloc_type_calloc(1uLL, 0x78uLL, 0x102004060B2607BuLL);
    v9 = malloc_type_calloc(1uLL, 0x78uLL, 0x102004060B2607BuLL);
    v10 = v9;
    if (v8 && v9)
    {
      v11 = v7[1];
      if (v11 && (v12 = v7[3]) != 0)
      {
        *(v11 + 112) = v9;
        v13 = (v12 + 112);
      }

      else
      {
        *v7 = v9;
        v13 = (v7 + 2);
      }

      *v13 = v8;
      v7[1] = v9;
      v7[3] = v8;
      *(v8 + 14) = 0;
      *(v9 + 14) = 0;
      snprintf(v9, 0x63uLL, "%s%s", a2, a3);
      v10[99] = 0;
      snprintf(v8, 0x63uLL, "%llu", a4);
      v8[99] = 0;
      *(v8 + 13) = a4;
      return 1;
    }

    else
    {
      if (v8)
      {
        free(v8);
      }

      if (v10)
      {
        free(v10);
      }

      return 0;
    }
  }

  return result;
}

double sub_10003B78C(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      do
      {
        v3 = v2[14];
        free(v2);
        v2 = v3;
      }

      while (v3);
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      do
      {
        v5 = v4[14];
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10003B7EC(void *a1, const char *a2, const char *a3, uint64_t a4)
{
  v8 = malloc_type_malloc(0x78uLL, 0x102004060B2607BuLL);
  v9 = malloc_type_malloc(0x78uLL, 0x102004060B2607BuLL);
  v10 = v9;
  v11 = a1[1];
  if (v11 && (v12 = a1[3]) != 0)
  {
    *(v11 + 112) = v9;
    v13 = (v12 + 112);
  }

  else
  {
    *a1 = v9;
    v13 = (a1 + 2);
  }

  *v13 = v8;
  a1[1] = v9;
  a1[3] = v8;
  *(v8 + 14) = 0;
  v9[14] = 0;
  snprintf(v9, 0x63uLL, "%s%s", a2, a3);
  *(v10 + 99) = 0;
  result = snprintf(v8, 0x63uLL, "%llu", a4);
  v8[99] = 0;
  *(v8 + 13) = a4;
  return result;
}

uint64_t sub_10003B8D4(uint64_t a1, int a2, char *__str, size_t *a4, uint64_t a5, unsigned int *a6)
{
  *v74 = 0u;
  v75 = 0u;
  if (!a5)
  {
    return 0;
  }

  v6 = a5;
  v7 = *(a5 + 12) - 1;
  v8 = *a6;
  if (*a6 >= v7)
  {
    v9 = 0;
    result = 1;
    goto LABEL_103;
  }

  v9 = 0;
  v10 = (a5 + *(a5 + 24));
  v11 = v10 + 2;
  v72 = *v10;
  v12 = *a4;
  v61 = v10;
  v60 = a4;
  v13 = 1;
  v14 = __str;
  v68 = v10 + 2;
  v65 = a6;
  v66 = __str;
  v63 = a1;
  v62 = *(a5 + 12) - 1;
  while (1)
  {
    v71 = a1 + *(v6 + 8) * v8;
    if (!*(v71 + v10[3]))
    {
      goto LABEL_98;
    }

    v64 = v9;
    v70 = *(v6 + 8) * v8;
    if (v13)
    {
      break;
    }

LABEL_37:
    v35 = snprintf(v14, v12, ",");
    if (v12 <= v35)
    {
      goto LABEL_102;
    }

    v36 = &v14[v35];
    v37 = v12 - v35;
    if (v72)
    {
      for (i = 0; i < v72; ++i)
      {
        v39 = &v11[7 * i];
        v40 = *v39;
        if (v40 < 2)
        {
          if (*(v39 + 12))
          {
            __sprintf_chk(v73, 0, 0x10uLL, "%s", "%u");
            if (i + 1 < v72)
            {
              strchr(&v11[7 * i + 10], 47);
            }

            __strcat_chk();
            v47 = fmtcheck(v73, "%u");
            v48 = snprintf(v36, v37, v47, *(v71 + v39[1]), v59);
            goto LABEL_93;
          }
        }

        else
        {
          if (v40 == 2)
          {
            v49 = *(v71 + v39[1]);
            v48 = snprintf(v36, v37, "%u %u,");
LABEL_93:
            if (v37 <= v48)
            {
              goto LABEL_102;
            }

            v36 += v48;
            v37 -= v48;
            continue;
          }

          if (v40 == 3)
          {
            v42 = v39[1];
            v41 = v39[2];
            v69 = v41 / 0xC;
            if (v41 < 0xC)
            {
              goto LABEL_61;
            }

            v43 = 0;
            v44 = 0;
            do
            {
              if (v44)
              {
                v44 = 1;
              }

              else
              {
                if (v43)
                {
                  v45 = snprintf(v36, v37, "/%u");
                }

                else
                {
                  v45 = snprintf(v36, v37, "%u");
                }

                if (v37 <= v45)
                {
                  v44 = 1;
                }

                else
                {
                  v36 += v45;
                  v37 -= v45;
                  v44 = 0;
                }
              }

              v43 += 12;
            }

            while (12 * (v41 / 0xC) != v43);
            if (v44)
            {
              v46 = 1;
            }

            else
            {
LABEL_61:
              v50 = snprintf(v36, v37, ",");
              if (v37 <= v50)
              {
                v46 = 1;
              }

              else
              {
                v36 += v50;
                v37 -= v50;
                v46 = 0;
              }
            }

            if (v41 >= 0xC)
            {
              v51 = 0;
              do
              {
                if (v46)
                {
                  v46 = 1;
                }

                else
                {
                  if (v51)
                  {
                    v52 = snprintf(v36, v37, "/%u");
                  }

                  else
                  {
                    v52 = snprintf(v36, v37, "%u");
                  }

                  if (v37 <= v52)
                  {
                    v46 = 1;
                  }

                  else
                  {
                    v36 += v52;
                    v37 -= v52;
                    v46 = 0;
                  }
                }

                v51 += 12;
              }

              while (12 * v69 != v51);
            }

            if (v46)
            {
              v53 = 1;
            }

            else
            {
              v54 = snprintf(v36, v37, ",");
              if (v37 <= v54)
              {
                v53 = 1;
              }

              else
              {
                v36 += v54;
                v37 -= v54;
                v53 = 0;
              }
            }

            if (v41 >= 0xC)
            {
              v55 = 0;
              do
              {
                if (v53)
                {
                  v53 = 1;
                }

                else
                {
                  if (v55)
                  {
                    v56 = snprintf(v36, v37, "/%u");
                  }

                  else
                  {
                    v56 = snprintf(v36, v37, "%u");
                  }

                  if (v37 <= v56)
                  {
                    v53 = 1;
                  }

                  else
                  {
                    v36 += v56;
                    v37 -= v56;
                    v53 = 0;
                  }
                }

                v55 += 12;
              }

              while (12 * v69 != v55);
            }

            v6 = a5;
            v11 = v68;
            if (v53)
            {
              goto LABEL_102;
            }

            v48 = snprintf(v36, v37, ",");
            goto LABEL_93;
          }
        }
      }
    }

    v57 = snprintf(v36, v37, "\n");
    if (v37 <= v57)
    {
      goto LABEL_102;
    }

    v13 = 0;
    v14 = &v36[v57];
    v12 = v37 - v57;
    a6 = v65;
    __str = v66;
    v9 = v14 - v66;
    a1 = v63;
    v7 = v62;
    v10 = v61;
LABEL_98:
    v8 = *a6 + 1;
    *a6 = v8;
    if (v8 >= v7)
    {
      result = 1;
      a4 = v60;
      goto LABEL_103;
    }
  }

  v15 = snprintf(v14, v12, "Capture Timestamp,");
  if (v12 <= v15)
  {
LABEL_33:
    v32 = 1;
  }

  else
  {
    v14 += v15;
    v12 -= v15;
    if (v72)
    {
      v16 = 0;
      while (1)
      {
        v17 = &v11[7 * v16];
        v19 = *v17;
        v18 = (v17 + 3);
        if (v19 == 3)
        {
          break;
        }

        snprintf(&__stra, 0x10uLL, "\n%s", v18);
        v23 = strchr(&__stra, 61);
        if (v23)
        {
          *v23 = 0;
          v24 = v76;
          __strcpy_chk();
          __strcpy_chk();
          __strcat_chk();
          __strcat_chk();
          xmmword_1000904E0 = 0u;
          *algn_1000904F0 = 0u;
          xmmword_100090500 = 0u;
          unk_100090510 = 0u;
          xmmword_100090520 = 0u;
          unk_100090530 = 0u;
          v25 = 1;
          xmmword_100090540 = 0u;
          unk_100090550 = 0u;
          while (1)
          {
            v26 = v25;
            v27 = strstr((v6 + 36), v24);
            if (v27)
            {
              break;
            }

            v25 = 0;
            v24 = &v78;
            if ((v26 & 1) == 0)
            {
              __strcat_chk();
              __strcat_chk();
              v11 = v68;
              goto LABEL_28;
            }
          }

          v28 = 0;
          v29 = v27 + 1;
          v11 = v68;
          while (v29[v28] && v29[v28] != 10)
          {
            ++v28;
          }

          if (v28 >= 0x7E)
          {
            v31 = 126;
          }

          else
          {
            v31 = v28;
          }

          __strncpy_chk();
          *(&xmmword_1000904E0 + v31) = 44;
LABEL_28:
          v22 = snprintf(v14, v12, "%s", &xmmword_1000904E0);
          goto LABEL_29;
        }

LABEL_31:
        if (++v16 >= v72)
        {
          goto LABEL_32;
        }
      }

      xmmword_1000904C0 = 0u;
      unk_1000904D0 = 0u;
      xmmword_1000904A0 = 0u;
      unk_1000904B0 = 0u;
      xmmword_100090480 = 0u;
      unk_100090490 = 0u;
      xmmword_100090460 = 0u;
      *algn_100090470 = 0u;
      v20 = strchr(v18, 87);
      v21 = 87;
      if (!v20)
      {
        v21 = 82;
      }

      snprintf(&xmmword_100090460, 0x80uLL, "%cO: Ops p 0/1/2/3,%cL: SumLatency p 0/1/2/3,%cM: MaxLatency p 0/1/2/3,", v21, v21, v21);
      v22 = snprintf(v14, v12, "%s", &xmmword_100090460);
LABEL_29:
      if (v12 <= v22)
      {
        goto LABEL_33;
      }

      v14 += v22;
      v12 -= v22;
      goto LABEL_31;
    }

LABEL_32:
    v32 = 0;
  }

  __stra.tv_sec = 0;
  *&__stra.tv_usec = 0;
  *v76 = 0;
  v77 = 0;
  v78 = 0;
  gettimeofday(&__stra, 0);
  v33 = localtime(&__stra.tv_sec);
  strftime(v76, 0x18uLL, "%Y-%m-%d %H:%M:%S", v33);
  __sprintf_chk(v74, 0, 0x20uLL, "%s.%03d", v76, __stra.tv_usec / 1000);
  if ((v32 & 1) == 0)
  {
    v34 = snprintf(v14, v12, "\n%s", v74);
    if (v12 > v34)
    {
      v14 += v34;
      v12 -= v34;
      goto LABEL_37;
    }
  }

LABEL_102:
  result = 0;
  __str = v66;
  ++*v65;
  a4 = v60;
  v9 = v64;
LABEL_103:
  __str[v9] = 0;
  *a4 = v9 + 1;
  return result;
}

uint64_t sub_10003C0F8(uint64_t a1, unint64_t a2, char *__str, size_t *a4)
{
  v4 = a4;
  v8 = *a4;
  v9 = snprintf(__str, *a4, "Key: \nT   - Timestamp\nE   - Erased bands during this time interval\nHR  - Host Reads (in 4k sectors)\nHW  - Host Writes (in 4k sectors)\nNR  - Nand Reads (in 4k sectors)\nNW  - Nand Writes (in 4k sectors)\nTH  - Time in Hysteresis in this time interval (in ms)\nGC  - Number of sectors (4k bytes) completed GC in this time interval\nW   - Number of wear level bands completed in this time interval\nBI  - Bands Intermediate (SLC) PendingErase\nBU  - Bands User (MLC) PendingErase\nV   - Number of Free Nodes\nBF  - Buffer Fragments/BufferHighWater\nP   - Percent of time in DoPreempt rather than DoNormal\nH   - Qos Delays: Normal/Extreme\nX   - Successful expedite commands/Failed expedite commands\nL   - Age of the oldest command in ms (calculated every second)/Qos Interval (in 100us units)\nC   - Command tags in use by host (Min/Max)S   - Number of free segs\nU   - Sectors of host unmaps\nRO  - Num read ops for this time interval: priority0/priority1/...\nRL  - Total Read Latency (in us) for this time interval: priority0/priority1/...\nRM  - Max Read Latency (int us) for this time interval: priority0/priority1/...\nWO  - Num write ops for this time interval: priority0/priority1/...\nWL  - Total write latency (in us) for this time interval: priority0/priority1/...\nWM  - Max write latency (in us) for this time interval: priority0/priority1/...\n\n");
  if (v8 > v9)
  {
    v10 = v9;
    v11 = &__str[v9];
    v12 = v8 - v10;
    if ((a2 / 0xF8))
    {
      v51 = (a2 / 0xF8);
      v52 = a1;
      v13 = 0;
      v14 = a1 + 68;
      v55 = a1 + 76;
      v56 = a1 + 72;
      v57 = a1;
      v53 = v4;
LABEL_4:
      v54 = v13;
      v15 = (a1 + 248 * v13);
      v16 = v11;
      v17 = snprintf(v11, v12, "T=%04u E=%02u HR=%4u HW=%4u NR=%4u NW=%4u TH=%8u.%02u GC=%4u W=%2u BI=%3u BU=%3u V=%5u BF=%2u/%2u P=%2u H=%2u/%2u X=%2u/%2u L=%3u/%3u C=%2u/%2u S=%4u U=%8u RO=%4u", *v15, v15[26], v15[27], v15[28], v15[29], v15[30], v15[38] / 0x3E8u, v15[38] % 0x3E8u / 0xA, v15[31], v15[32], v15[35], v15[36], v15[44], v15[46], v15[47], v15[1], v15[40], v15[39], v15[49], v15[50], v15[42], v15[43], v15[52], v15[53], v15[41], v15[51], v15[14]);
      if (v12 > v17)
      {
        v18 = 0;
        v19 = &v16[v17];
        v20 = v12 - v17;
        while (1)
        {
          v21 = snprintf(v19, v20, "/%4u", *(v14 + v18));
          if (v20 <= v21)
          {
            break;
          }

          v18 += 12;
          v19 += v21;
          v20 -= v21;
          if (v18 == 36)
          {
            v22 = snprintf(v19, v20, " RL=%7u", v15[15]);
            if (v20 > v22)
            {
              v23 = 0;
              v24 = &v19[v22];
              v25 = v20 - v22;
              while (1)
              {
                v26 = snprintf(v24, v25, "/%7u", *(v56 + v23));
                if (v25 <= v26)
                {
                  break;
                }

                v23 += 12;
                v24 += v26;
                v25 -= v26;
                if (v23 == 36)
                {
                  v27 = snprintf(v24, v25, " RM=%5u", v15[16]);
                  if (v25 > v27)
                  {
                    v28 = 0;
                    v29 = &v24[v27];
                    v30 = v25 - v27;
                    while (1)
                    {
                      v31 = snprintf(v29, v30, "/%5u", *(v55 + v28));
                      if (v30 <= v31)
                      {
                        break;
                      }

                      v28 += 12;
                      v29 += v31;
                      v30 -= v31;
                      if (v28 == 36)
                      {
                        v32 = snprintf(v29, v30, " WO=%4u", v15[2]);
                        if (v30 > v32)
                        {
                          v33 = &v29[v32];
                          v34 = v30 - v32;
                          v35 = 20;
                          while (1)
                          {
                            v36 = snprintf(v33, v34, "/%4u", *(v57 + v35));
                            if (v34 <= v36)
                            {
                              break;
                            }

                            v35 += 12;
                            v33 += v36;
                            v34 -= v36;
                            if (v35 == 56)
                            {
                              v37 = snprintf(v33, v34, " WL=%7u", v15[3]);
                              if (v34 > v37)
                              {
                                v38 = &v33[v37];
                                v39 = v34 - v37;
                                v40 = 24;
                                while (1)
                                {
                                  v41 = snprintf(v38, v39, "/%7u", *(v57 + v40));
                                  if (v39 <= v41)
                                  {
                                    break;
                                  }

                                  v40 += 12;
                                  v38 += v41;
                                  v39 -= v41;
                                  if (v40 == 60)
                                  {
                                    v42 = snprintf(v38, v39, " WM=%5u", v15[4]);
                                    if (v39 > v42)
                                    {
                                      v43 = &v38[v42];
                                      v44 = v39 - v42;
                                      v45 = 28;
                                      while (1)
                                      {
                                        v46 = snprintf(v43, v44, "/%5u", *(v57 + v45));
                                        if (v44 <= v46)
                                        {
                                          break;
                                        }

                                        v45 += 12;
                                        v43 += v46;
                                        v44 -= v46;
                                        if (v45 == 64)
                                        {
                                          v47 = snprintf(v43, v44, "\n");
                                          if (v44 <= v47)
                                          {
                                            return 0;
                                          }

                                          v48 = v47;
                                          v11 = &v43[v47];
                                          v12 = v44 - v48;
                                          v13 = v54 + 1;
                                          v14 += 248;
                                          v55 += 248;
                                          v56 += 248;
                                          v57 += 248;
                                          a1 = v52;
                                          v4 = v53;
                                          if (v54 + 1 != v51)
                                          {
                                            goto LABEL_4;
                                          }

                                          goto LABEL_30;
                                        }
                                      }
                                    }

                                    return 0;
                                  }
                                }
                              }

                              return 0;
                            }
                          }
                        }

                        return 0;
                      }
                    }
                  }

                  return 0;
                }
              }
            }

            return 0;
          }
        }
      }
    }

    else
    {
LABEL_30:
      v49 = snprintf(v11, v12, "\n");
      if (v49 < v12)
      {
        *v4 += v49 - v12;
        return 1;
      }
    }
  }

  return 0;
}

CFDictionaryRef ASP_GetIndirectionTableStatistics()
{
  v16 = IND_POOL_KEY[0];
  v12 = 0;
  v0 = sub_10003CB48(10, &v12);
  v1 = v0;
  if (v0)
  {
    v13 = 0.0;
    keys[0] = IND_POOL_SIZE_KEY[0];
    keys[1] = IND_POOL_FREE_KEY[0];
    keys[2] = IND_POOL_FULL_KEY;
    if ((v12 & 0xFFFFFFF8) != 0)
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = v0;
      do
      {
        v9 = *v6;
        v7 = (v6 + 8);
        v8 = v9;
        if (v9 == 12)
        {
          v4 = *v7;
          v2 = 1;
        }

        else if (v8 == 13)
        {
          v5 = *v7;
          v3 = 1;
        }

        if (v2 & v3)
        {
          break;
        }

        v6 = &v7[HIDWORD(v8)];
      }

      while (v6 < (v0 + (v12 & 0xFFFFFFF8)));
      v14 = v4;
      valuePtr = v5;
      if (v5)
      {
        v13 = 1.0 - (v4 / v5);
      }
    }

    else
    {
      v14 = 0;
      valuePtr = 0;
    }

    values = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    cf = CFNumberCreate(0, kCFNumberSInt64Type, &v14);
    v19 = CFNumberCreate(0, kCFNumberFloat32Type, &v13);
    v10 = CFDictionaryCreate(0, keys, &values, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFRelease(values);
    CFRelease(cf);
    CFRelease(v19);
    free(v1);
    keys[0] = v10;
    v1 = CFDictionaryCreate(0, &v16, keys, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFRelease(keys[0]);
  }

  return v1;
}

void *sub_10003C7AC(char **a1, int a2, int a3, int a4, void *a5, char a6, char a7)
{
  v13 = a1;
  v21 = 0;
  *a5 = 0;
  if (!a1 && (!sub_10003CBE0(&v21) || (v13 = v21) == 0 || !*(v21 + 4)))
  {
    fwrite("Err: Finding internal NAND exporter failed for fetch tunnel buffer.\n", 0x44uLL, 1uLL, __stderrp);
LABEL_11:
    v19 = 0;
    goto LABEL_14;
  }

  v14 = a3;
  v15 = sub_10003C95C(v13, a2, a3, a4, a7);
  if (!v15)
  {
    fprintf(__stderrp, "failed to get data size for cmd option %d\n", a2);
    goto LABEL_11;
  }

  v16 = v15;
  v17 = (vm_page_size + v15 - 1) / vm_page_size * vm_page_size;
  v18 = malloc_type_valloc(v17, 0x100004077774924uLL);
  v19 = v18;
  if (v18)
  {
    bzero(v18, v17);
    if (sub_10003CA24(v13, a2, v14, a4, v19, v17, a6, a7))
    {
      *a5 = v16;
    }

    else
    {
      free(v19);
      v19 = 0;
      *a5 = 0;
    }
  }

  else
  {
    fwrite("can't allocate buffer!\n", 0x17uLL, 1uLL, __stderrp);
  }

LABEL_14:
  if (v21)
  {
    sub_10003CD2C(v21);
  }

  return v19;
}

uint64_t sub_10003C95C(uint64_t a1, int a2, int a3, int a4, char a5)
{
  v13 = 0;
  v12 = 0;
  outputStruct = 0;
  inputStruct[0] = a2;
  outputStructCnt = 4;
  inputStruct[2] = a4;
  inputStruct[1] = a3 | 1;
  v7 = IOConnectCallStructMethod(*(a1 + 16), *(a1 + 28), inputStruct, 0x18uLL, &outputStruct, &outputStructCnt);
  if (v7)
  {
    if ((a5 & 1) == 0)
    {
      fprintf(__stderrp, "Error calling CoreDebugTunnel method! - 0x%X\n", v7);
    }

    return 0;
  }

  else
  {
    result = outputStruct;
    if (!outputStruct && (a5 & 1) == 0)
    {
      fprintf(__stderrp, "SizeOnly for tunnel command 0x%x returned 0\n", a2);
      return outputStruct;
    }
  }

  return result;
}

uint64_t sub_10003CA24(uint64_t a1, int a2, int a3, int a4, void *outputStruct, size_t a6, char a7, char a8)
{
  LOBYTE(v9) = a7;
  outputStructCnt = a6;
  v20 = 0;
  v19 = 0;
  while (1)
  {
    inputStruct[0] = a2;
    inputStruct[1] = a3;
    inputStruct[2] = a4;
    v15 = IOConnectCallStructMethod(*(a1 + 16), *(a1 + 28), inputStruct, 0x18uLL, outputStruct, &outputStructCnt);
    if (v15 != -536870211)
    {
      break;
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }

    if ((a8 & 1) == 0)
    {
      fprintf(__stderrp, "CoreDebugTunnel 0x%x returned kIOReturnNoMemory\n", a2);
    }

    v16 = outputStructCnt;
    outputStructCnt = vm_page_size;
    v9 = 1;
    if (vm_page_size == v16)
    {
      return v9;
    }
  }

  if (!v15)
  {
    return 1;
  }

LABEL_10:
  if ((a8 & 1) == 0)
  {
    fprintf(__stderrp, "Error calling CoreDebugTunnel method! - 0x%X\n", v15);
  }

  return 0;
}

char *sub_10003CBE0(char ***a1)
{
  connect = 0;
  *a1 = 0;
  v2 = pthread_mutex_trylock(&stru_100090000);
  if (v2)
  {
    if (v2 != 16 || (syslog(4, "Warning: NANDInfo: NANDExporter: serializeAccess already locked. waiting for lock !\n"), pthread_mutex_lock(&stru_100090000)))
    {
      v3 = __error();
      syslog(3, "Error: NANDInfo: NANDExporter: pthread_mutex_trylock() (%d) failed \n", *v3);
      return 0;
    }
  }

  syslog(5, "NANDInfo: NANDExporter object locked ! \n");
  v5 = &off_100090040;
  result = off_100090040;
  if (!off_100090040)
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  while (1)
  {
    v6 = IOServiceMatching(result);
    if (!v6)
    {
      goto LABEL_10;
    }

    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v6);
    if (!MatchingService)
    {
      goto LABEL_10;
    }

    v8 = MatchingService;
    if (!IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
    {
      break;
    }

    IOServiceClose(connect);
    connect = 0;
    IOObjectRelease(v8);
LABEL_10:
    v9 = v5[21];
    v5 += 21;
    result = v9;
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  syslog(5, "NANDInfo: findNandExporter_tunnel: Controller found: %s\n", *v5);
  result = 1;
LABEL_12:
  *(v5 + 4) = connect;
  *(v5 + 5) = v8;
  *a1 = v5;
  return result;
}

uint64_t sub_10003CD2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    IOServiceClose(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 20);
  if (v3)
  {
    IOObjectRelease(v3);
    *(a1 + 20) = 0;
  }

  syslog(5, "NANDInfo: NANDExporter object unlocked ! \n");

  return pthread_mutex_unlock(&stru_100090000);
}

uint64_t nand_get_snapshot(uint64_t a1, char *a2, size_t a3, size_t *a4)
{
  v13 = 0;
  *v14 = 0;
  v12 = a3;
  v7 = sub_10003CB48(145, &v13);
  v8 = sub_10003CB48(22, v14);
  if (!v8)
  {
    return 5;
  }

  v9 = v8;
  if (v7 && v7[1] >= 6u)
  {
    v15 = 0;
    if (sub_10003B8D4(v8, v14[0], a2, &v12, v7, &v15))
    {
      v10 = 0;
    }

    else
    {
      v10 = 52;
    }

    *a4 = v12;
    free(v9);
    goto LABEL_14;
  }

  *a4 = a3;
  if (sub_10003C0F8(v8, *v14, a2, a4))
  {
    v10 = 0;
  }

  else
  {
    v10 = 3;
  }

  free(v9);
  if (v7)
  {
LABEL_14:
    free(v7);
  }

  return v10;
}

void sub_10003CEA8()
{
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = sub_100008438(v1);
  sub_100008428();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10003CF54()
{
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = sub_100008438(v1);
  sub_100008428();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10003D000()
{
  objc_opt_class();
  sub_10000845C();
  v1 = v0;
  sub_100008428();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10003D0D0()
{
  sub_10000845C();
  v3 = 2048;
  v4 = v0;
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "The provided stateInfoArray '%@' only has state objects AFTER then end of the hang (%llu matu).", v2, 0x16u);
}

void sub_10003D1DC()
{
  v0 = objc_opt_class();
  v1 = sub_100009EF0(v0);
  sub_100009F30(&_mh_execute_header, v2, v3, "Value of %@ for key %@ is unexpected class %@. Values in %@ domain were modified", v4, v5, v6, v7, v8);
}

void sub_10003D2EC(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100009EBC();
  sub_100009ED0(&_mh_execute_header, v2, v3, "%s: %@", v4, v5, v6, v7, 2u);
}

void sub_10003D37C()
{
  sub_100009EBC();
  sub_100009F24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003D494(int a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Hangreporter has processed more tailspins than hangtracerd has requested. tailspinsProcessed:%u successfulTailspinSaves:%u. This should never happen.", v3, 0xEu);
}

void sub_10003D51C()
{
  sub_10000845C();
  sub_100009F24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003D58C()
{
  sub_10000845C();
  sub_100009F24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003D5FC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No parent url for %@", &v2, 0xCu);
}

void sub_10003D674(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "No parent record for %@", &v2, 0xCu);
}

void sub_10003D6EC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "No extension record for %@: %@", &v3, 0x16u);
}

void sub_10003D774(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "HangTracer: pathForPid was found invalid UTF8 string, trying ascii encoding = %@", &v2, 0xCu);
}

void sub_10003D7EC()
{
  sub_100009EBC();
  sub_100009F24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003D868(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error: error creating directory at path %@ %@", &v3, 0x16u);
}

void sub_10003D940()
{
  sub_1000141E4();
  sub_100014224();
  sub_1000142A8(v0, v1, v2, v3, v4);
}

void sub_10003D9B0()
{
  v0 = __error();
  strerror(*v0);
  sub_1000141E4();
  sub_100008428();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10003DA40()
{
  sub_10000845C();
  sub_1000141F8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003DABC()
{
  sub_10000845C();
  sub_100009F24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003DB2C()
{
  sub_10000845C();
  sub_100009F24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003DB9C()
{
  sub_10000845C();
  sub_100009F24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003DC0C()
{
  sub_10000845C();
  sub_100009F24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003DC7C()
{
  sub_10000845C();
  sub_100009F24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003DCEC()
{
  sub_10000845C();
  sub_100009F24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003DD5C(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_100014290();
  sub_100008428();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10003DE04(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_100014290();
  sub_100008428();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10003DEAC()
{
  sub_100014218();
  sub_100014284();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003DEE8()
{
  sub_100014218();
  sub_100009F24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003DF24()
{
  sub_10000845C();
  sub_100014224();
  sub_1000142A8(v0, v1, v2, v3, v4);
}

void sub_10003DFAC()
{
  sub_100014218();
  sub_100014284();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003DFE8()
{
  sub_10000845C();
  sub_100009F24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003E058()
{
  sub_100014218();
  sub_100009F24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003E094()
{
  sub_100014218();
  sub_100009F24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003E0D0()
{
  sub_100014218();
  sub_100009F24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003E164()
{
  sub_1000141E4();
  sub_100014224();
  sub_1000142A8(v0, v1, v2, v3, v4);
}

void sub_10003E1D4()
{
  v0 = __error();
  strerror(*v0);
  sub_100008428();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10003E270()
{
  sub_10000845C();
  sub_100009F24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003E2E0(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_100009F24();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10003E358()
{
  sub_10000845C();
  sub_100014284();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003E3C8()
{
  sub_10000845C();
  sub_100009F24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003E438()
{
  sub_1000141A0();
  sub_100014208();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10003E4A8()
{
  sub_1000141A0();
  sub_1000141F8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10003E518()
{
  sub_1000141A0();
  sub_1000141F8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10003E588()
{
  sub_1000141A0();
  sub_1000141F8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10003E5F8()
{
  sub_1000141A0();
  sub_1000141F8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10003E668()
{
  sub_1000141A0();
  sub_1000141F8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10003E844(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 debugDescription];
  v7 = 138412546;
  v8 = a1;
  sub_100014290();
  v9 = v6;
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "Post Processing %@: No hang in info dict array %@", &v7, 0x16u);
}

void sub_10003E8F8(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error walking tree", buf, 2u);
}

void sub_10003E938()
{
  sub_10000845C();
  sub_100009F24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003E9A8()
{
  sub_100014218();
  sub_100014284();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003E9E4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 localizedDescription];
  sub_100014290();
  sub_100008428();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10003EA8C()
{
  sub_10000845C();
  sub_100014208();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003EB08()
{
  sub_10000845C();
  sub_100014284();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003EB78()
{
  sub_100014218();
  sub_100009F24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003EBB4()
{
  sub_100014218();
  sub_100014284();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003EBF0()
{
  sub_100014218();
  sub_100009F24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003ECAC()
{
  sub_10000845C();
  sub_100014284();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003ED1C(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v7 = a1;
  *a3 = 138412546;
  *(a3 + 4) = v7;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Post-Processing %@: Failed to write spindump %@!\n", a3, 0x16u);
}

void sub_10003ED9C()
{
  sub_100014218();
  sub_100009F24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003EDD8()
{
  sub_100014218();
  sub_1000142C0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003EE14()
{
  sub_100014218();
  sub_1000142C0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003EE50()
{
  sub_100014218();
  sub_100009F24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003EE8C()
{
  sub_100014218();
  sub_100009F24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003EEC8()
{
  sub_100014218();
  sub_100009F24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003EF04(void *a1)
{
  v1 = [a1 lastPathComponent];
  sub_1000141E4();
  sub_100008428();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10003EFAC()
{
  sub_100014218();
  sub_100009F24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003EFE8(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_100009F24();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10003F060(uint64_t **a1)
{
  sub_100014230(a1, __stack_chk_guard);
  sub_1000141B8();
  sub_100014284();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_10003F0D0(uint64_t **a1)
{
  sub_100014230(a1, __stack_chk_guard);
  sub_1000141B8();
  sub_100014284();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_10003F140(uint64_t **a1)
{
  sub_100014230(a1, __stack_chk_guard);
  sub_1000141B8();
  sub_100014284();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_10003F1B0(uint64_t *a1)
{
  sub_10001429C(a1, __stack_chk_guard);
  v7 = *(v1 + 24);
  sub_100014208();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10003F234(uint64_t *a1)
{
  sub_10001429C(a1, __stack_chk_guard);
  sub_1000142CC(v1);
  sub_100014248();
  sub_100014208();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x36u);
}

void sub_10003F2A8(uint64_t *a1)
{
  sub_10001429C(a1, __stack_chk_guard);
  sub_1000142CC(v1);
  sub_100014248();
  sub_100014208();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x36u);
}

void sub_10003F31C()
{
  sub_10000845C();
  sub_100014284();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003F38C()
{
  sub_100014218();
  sub_100009F24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003F3C8(uint64_t *a1)
{
  sub_10001429C(a1, __stack_chk_guard);
  v7 = *(*(*v1 + 8) + 24);
  sub_100014208();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10003F454(unsigned int *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_100014F20();
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "start index: %d, state: %d", v4, 0xEu);
}

void sub_10003F4CC(unsigned int *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_100014F20();
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "end index  : %d, state: %d", v4, 0xEu);
}

void sub_10003F588(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "getMKRunnableDatafromKTraceforThreadId: ktrace_set_file failed with error# = %i", v2, 8u);
}

void sub_10003F758(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error iterating over tailspin file: %s", buf, 0xCu);
}

void sub_10003F814(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error creating JSON data from reason string: '%@'", &v3, 0xCu);
}

void sub_10003F894(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = a3;
  *(buf + 6) = 2080;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not open tailspin file %s for parsing reason string, error: %s", buf, 0x16u);
}

void sub_10003FC5C(uint64_t a1, NSObject *a2)
{
  v4 = *__error();
  v5 = 138412546;
  v6 = a1;
  v7 = 1024;
  v8 = v4;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Could not open tailspin file %@ for finding timeout hang end time: %d", &v5, 0x12u);
}

void sub_10003FD90(uint64_t a1, uint64_t *a2)
{
  v7 = *a2;
  sub_100014208();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10003FE24()
{
  sub_10001F540();
  sub_10001F550();
  sub_100014208();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10003FEC8()
{
  sub_10001F540();
  sub_10001F550();
  sub_100014208();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10003FF6C()
{
  sub_10001F540();
  sub_10001F550();
  sub_100014208();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100040010()
{
  sub_10001F540();
  sub_10001F550();
  sub_100014208();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100040138(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 136315394;
  v5 = "enumerateHangIntervalsInTimeRange";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s completed with error: %@\n", &v4, 0x16u);
}

void sub_10004020C(uint64_t a1, NSObject *a2)
{
  v4 = *__error();
  v5 = 136315394;
  v6 = a1;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to retrieve extended attributes of file at path %s (%{darwin.errno}d)", &v5, 0x12u);
}

void sub_1000403E4(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = -1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Bad file desctiptor %d", v1, 8u);
}

void sub_100040464(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error iterating over tailspin file: %{darwin.errno}d", v2, 8u);
}

void sub_100040534(uint64_t a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 67109378;
  *(buf + 1) = a3;
  *(buf + 4) = 2080;
  *(buf + 10) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to fetch launch_service_stats(%d):%s", buf, 0x12u);
}