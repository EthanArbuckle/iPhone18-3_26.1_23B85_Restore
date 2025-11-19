uint64_t sub_100001160(uint64_t a1, void *a2)
{
  v3 = [a2 position];
  if (v3 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v4 = 0;
      v5 = 0;
      v6 = 0;
      while (1)
      {
        LOBYTE(v26) = 0;
        v7 = [a2 position] + 1;
        if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
        {
          v9 = [a2 data];
          [v9 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v6 |= (v26 & 0x7F) << v4;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v4 += 7;
        if (v5++ >= 9)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 & 7;
      if (v12 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v11 >> 3) == 2)
      {
        break;
      }

      if ((v11 >> 3) == 1)
      {
        if (v12 != 2)
        {
          goto LABEL_40;
        }

        v26 = 0;
        v27 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v14 = [a2 position];
          if (v14 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v28 = 0;
          v15 = [a2 position] + 4;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
          {
            v17 = [a2 data];
            [v17 getBytes:&v28 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

LABEL_39:
        PBReaderRecallMark();
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 != 2)
    {
LABEL_40:
      LODWORD(v26) = 0;
      v22 = [a2 position] + 4;
      if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 4, v23 <= objc_msgSend(a2, "length")))
      {
        v24 = [a2 data];
        [v24 getBytes:&v26 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      PBRepeatedFloatAdd();
      goto LABEL_45;
    }

    v26 = 0;
    v27 = 0;
    result = PBReaderPlaceMark();
    if (!result)
    {
      return result;
    }

    while (1)
    {
      v18 = [a2 position];
      if (v18 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
      {
        break;
      }

      v28 = 0;
      v19 = [a2 position] + 4;
      if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 4, v20 <= objc_msgSend(a2, "length")))
      {
        v21 = [a2 data];
        [v21 getBytes:&v28 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      PBRepeatedFloatAdd();
    }

    goto LABEL_39;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000049F0(uint64_t a1, void *a2)
{
  v4 = a2;
  while (1)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v164) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v164 & 0x7F) << v6;
      if ((v164 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if ([a2 hasError])
    {
      break;
    }

    v14 = v13 & 7;
    if (v14 == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v15 = objc_alloc_init(OTAResistanceData);
        v16 = 792;
        goto LABEL_280;
      case 2u:
        v15 = objc_alloc_init(OTAResistanceData);
        v16 = 800;
        goto LABEL_280;
      case 3u:
        v15 = objc_alloc_init(OTAResistanceData);
        v16 = 688;
        goto LABEL_280;
      case 4u:
        v15 = objc_alloc_init(OTAResistanceData);
        v16 = 808;
        goto LABEL_280;
      case 5u:
        v15 = objc_alloc_init(OTAResistanceData);
        v16 = 696;
        goto LABEL_280;
      case 6u:
        v15 = objc_alloc_init(OTAResistanceData);
        v16 = 824;
        goto LABEL_280;
      case 7u:
        v15 = objc_alloc_init(OTAResistanceData);
        v16 = 832;
        goto LABEL_280;
      case 8u:
        v15 = objc_alloc_init(OTAResistanceData);
        v16 = 840;
        goto LABEL_280;
      case 9u:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v113 = [a2 position];
          if (v113 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v114 = [a2 position] + 4;
          if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 4, v115 <= objc_msgSend(a2, "length")))
          {
            v116 = [a2 data];
            [v116 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0xAu:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v75 = [a2 position];
          if (v75 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v76 = [a2 position] + 4;
          if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 4, v77 <= objc_msgSend(a2, "length")))
          {
            v78 = [a2 data];
            [v78 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0xBu:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v109 = [a2 position];
          if (v109 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v110 = [a2 position] + 4;
          if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 4, v111 <= objc_msgSend(a2, "length")))
          {
            v112 = [a2 data];
            [v112 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0xCu:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v63 = [a2 position];
          if (v63 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v64 = [a2 position] + 4;
          if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 4, v65 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0xDu:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v71 = [a2 position];
          if (v71 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v72 = [a2 position] + 4;
          if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 4, v73 <= objc_msgSend(a2, "length")))
          {
            v74 = [a2 data];
            [v74 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0xEu:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v101 = [a2 position];
          if (v101 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v102 = [a2 position] + 4;
          if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 4, v103 <= objc_msgSend(a2, "length")))
          {
            v104 = [a2 data];
            [v104 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0xFu:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v55 = [a2 position];
          if (v55 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v56 = [a2 position] + 4;
          if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 4, v57 <= objc_msgSend(a2, "length")))
          {
            v58 = [a2 data];
            [v58 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0x10u:
        v15 = objc_alloc_init(OTAResistanceData);
        v16 = 680;
        goto LABEL_280;
      case 0x11u:
        v15 = objc_alloc_init(OTABMUResistance);
        objc_storeStrong((a1 + 760), v15);
        v164 = 0;
        v165 = 0;
        if (!PBReaderPlaceMark() || (sub_10000AFA8(v15, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        goto LABEL_282;
      case 0x12u:
        v87 = 0;
        v88 = 0;
        v89 = 0;
        while (1)
        {
          LOBYTE(v164) = 0;
          v90 = [a2 position] + 1;
          if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
          {
            v92 = [a2 data];
            [v92 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v89 |= (v164 & 0x7F) << v87;
          if ((v164 & 0x80) == 0)
          {
            break;
          }

          v87 += 7;
          v12 = v88++ >= 9;
          if (v12)
          {
            v54 = 0;
            goto LABEL_338;
          }
        }

        if ([a2 hasError])
        {
          v54 = 0;
        }

        else
        {
          v54 = v89;
        }

LABEL_338:
        v153 = 768;
        goto LABEL_339;
      case 0x13u:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v105 = [a2 position];
          if (v105 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v106 = [a2 position] + 4;
          if (v106 >= [a2 position] && (v107 = objc_msgSend(a2, "position") + 4, v107 <= objc_msgSend(a2, "length")))
          {
            v108 = [a2 data];
            [v108 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0x14u:
        v15 = objc_alloc_init(OTAResistanceData);
        v16 = 704;
        goto LABEL_280;
      case 0x15u:
        *(a1 + 868) |= 8u;
        LODWORD(v164) = 0;
        v97 = [a2 position] + 4;
        if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 4, v98 <= objc_msgSend(a2, "length")))
        {
          v160 = [a2 data];
          [v160 getBytes:&v164 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v158 = v164;
        v159 = 780;
        goto LABEL_355;
      case 0x16u:
        *(a1 + 868) |= 0x10u;
        LODWORD(v164) = 0;
        v99 = [a2 position] + 4;
        if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 4, v100 <= objc_msgSend(a2, "length")))
        {
          v161 = [a2 data];
          [v161 getBytes:&v164 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v158 = v164;
        v159 = 784;
        goto LABEL_355;
      case 0x17u:
        *(a1 + 868) |= 1u;
        LODWORD(v164) = 0;
        v119 = [a2 position] + 4;
        if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 4, v120 <= objc_msgSend(a2, "length")))
        {
          v163 = [a2 data];
          [v163 getBytes:&v164 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v158 = v164;
        v159 = 752;
        goto LABEL_355;
      case 0x18u:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v129 = [a2 position];
          if (v129 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v130 = [a2 position] + 4;
          if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 4, v131 <= objc_msgSend(a2, "length")))
          {
            v132 = [a2 data];
            [v132 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0x19u:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v83 = [a2 position];
          if (v83 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v84 = [a2 position] + 4;
          if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 4, v85 <= objc_msgSend(a2, "length")))
          {
            v86 = [a2 data];
            [v86 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0x1Au:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v79 = [a2 position];
          if (v79 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v80 = [a2 position] + 4;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 4, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0x1Bu:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v137 = [a2 position];
          if (v137 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v138 = [a2 position] + 4;
          if (v138 >= [a2 position] && (v139 = objc_msgSend(a2, "position") + 4, v139 <= objc_msgSend(a2, "length")))
          {
            v140 = [a2 data];
            [v140 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0x1Cu:
        v15 = objc_alloc_init(OTAResistanceData);
        v16 = 816;
        goto LABEL_280;
      case 0x1Du:
        v15 = objc_alloc_init(OTAResistanceData);
        v16 = 848;
        goto LABEL_280;
      case 0x1Eu:
        v15 = objc_alloc_init(OTAResistanceData);
        v16 = 712;
        goto LABEL_280;
      case 0x1Fu:
        v15 = objc_alloc_init(OTAResistanceData);
        v16 = 720;
        goto LABEL_280;
      case 0x20u:
        v15 = objc_alloc_init(OTAResistanceData);
        v16 = 728;
        goto LABEL_280;
      case 0x21u:
        v15 = objc_alloc_init(OTAResistanceData);
        v16 = 736;
        goto LABEL_280;
      case 0x22u:
        v15 = objc_alloc_init(OTAResistanceData);
        v16 = 744;
        goto LABEL_280;
      case 0x23u:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v44 = [a2 position];
          if (v44 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v45 = [a2 position] + 4;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 4, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0x24u:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v36 = [a2 position];
          if (v36 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v37 = [a2 position] + 4;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 4, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0x25u:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v40 = [a2 position];
          if (v40 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v41 = [a2 position] + 4;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 4, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0x26u:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v26 = [a2 position];
          if (v26 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v27 = [a2 position] + 4;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 4, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0x27u:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v133 = [a2 position];
          if (v133 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v134 = [a2 position] + 4;
          if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 4, v135 <= objc_msgSend(a2, "length")))
          {
            v136 = [a2 data];
            [v136 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0x28u:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v121 = [a2 position];
          if (v121 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v122 = [a2 position] + 4;
          if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 4, v123 <= objc_msgSend(a2, "length")))
          {
            v124 = [a2 data];
            [v124 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0x29u:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v67 = [a2 position];
          if (v67 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v68 = [a2 position] + 4;
          if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 4, v69 <= objc_msgSend(a2, "length")))
          {
            v70 = [a2 data];
            [v70 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0x2Au:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v93 = [a2 position];
          if (v93 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v94 = [a2 position] + 4;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 4, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0x2Bu:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v125 = [a2 position];
          if (v125 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v126 = [a2 position] + 4;
          if (v126 >= [a2 position] && (v127 = objc_msgSend(a2, "position") + 4, v127 <= objc_msgSend(a2, "length")))
          {
            v128 = [a2 data];
            [v128 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0x2Cu:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v22 = [a2 position];
          if (v22 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v23 = [a2 position] + 4;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 4, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0x2Du:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 868) |= 2u;
        while (1)
        {
          LOBYTE(v164) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v164 & 0x7F) << v48;
          if ((v164 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v12 = v49++ >= 9;
          if (v12)
          {
            v54 = 0;
            goto LABEL_334;
          }
        }

        if ([a2 hasError])
        {
          v54 = 0;
        }

        else
        {
          v54 = v50;
        }

LABEL_334:
        v153 = 772;
LABEL_339:
        *(a1 + v153) = v54;
        goto LABEL_356;
      case 0x2Eu:
        *(a1 + 868) |= 0x20u;
        LODWORD(v164) = 0;
        v117 = [a2 position] + 4;
        if (v117 >= [a2 position] && (v118 = objc_msgSend(a2, "position") + 4, v118 <= objc_msgSend(a2, "length")))
        {
          v162 = [a2 data];
          [v162 getBytes:&v164 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v158 = v164;
        v159 = 864;
        goto LABEL_355;
      case 0x2Fu:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v145 = [a2 position];
          if (v145 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v146 = [a2 position] + 4;
          if (v146 >= [a2 position] && (v147 = objc_msgSend(a2, "position") + 4, v147 <= objc_msgSend(a2, "length")))
          {
            v148 = [a2 data];
            [v148 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0x30u:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v32 = [a2 position];
          if (v32 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v33 = [a2 position] + 4;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 4, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0x31u:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v59 = [a2 position];
          if (v59 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v60 = [a2 position] + 4;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 4, v61 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0x32u:
        v15 = objc_alloc_init(OTAResistanceData);
        v16 = 856;
LABEL_280:
        objc_storeStrong((a1 + v16), v15);
        v164 = 0;
        v165 = 0;
        if (!PBReaderPlaceMark() || (sub_100001160(v15, a2) & 1) == 0)
        {
LABEL_359:

          return 0;
        }

LABEL_282:
        PBReaderRecallMark();

LABEL_356:
        v4 = a2;
        break;
      case 0x33u:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v18 = [a2 position];
          if (v18 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v19 = [a2 position] + 4;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 4, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0x34u:
        if (v14 != 2)
        {
          goto LABEL_340;
        }

        v164 = 0;
        v165 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v149 = [a2 position];
          if (v149 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v166 = 0;
          v150 = [a2 position] + 4;
          if (v150 >= [a2 position] && (v151 = objc_msgSend(a2, "position") + 4, v151 <= objc_msgSend(a2, "length")))
          {
            v152 = [a2 data];
            [v152 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_330;
      case 0x35u:
        if (v14 == 2)
        {
          v164 = 0;
          v165 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v141 = [a2 position];
            if (v141 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v166 = 0;
            v142 = [a2 position] + 4;
            if (v142 >= [a2 position] && (v143 = objc_msgSend(a2, "position") + 4, v143 <= objc_msgSend(a2, "length")))
            {
              v144 = [a2 data];
              [v144 getBytes:&v166 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            PBRepeatedFloatAdd();
          }

LABEL_330:
          PBReaderRecallMark();
        }

        else
        {
LABEL_340:
          LODWORD(v164) = 0;
          v154 = [a2 position] + 4;
          if (v154 >= [a2 position] && (v155 = objc_msgSend(a2, "position") + 4, v155 <= objc_msgSend(a2, "length")))
          {
            v156 = [a2 data];
            [v156 getBytes:&v164 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_356;
      case 0x36u:
        *(a1 + 868) |= 4u;
        LODWORD(v164) = 0;
        v30 = [a2 position] + 4;
        if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 4, v31 <= objc_msgSend(a2, "length")))
        {
          v157 = [a2 data];
          [v157 getBytes:&v164 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v158 = v164;
        v159 = 776;
LABEL_355:
        *(a1 + v159) = v158;
        goto LABEL_356;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_356;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10000AFA8(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v45) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            *(a1 + 44) |= 0x40u;
            v45 = 0;
            v24 = [a2 position] + 4;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 4, v25 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:&v45 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v33 = v45;
            v34 = &OBJC_IVAR___OTABMUResistance__systemEquivalentResistance;
            goto LABEL_76;
          }

          if (v13 == 4)
          {
            *(a1 + 44) |= 1u;
            v45 = 0;
            v18 = [a2 position] + 4;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 4, v19 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v45 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v33 = v45;
            v34 = &OBJC_IVAR___OTABMUResistance__downstreamCommonResistance;
            goto LABEL_76;
          }
        }

        else
        {
          if (v13 == 1)
          {
            *(a1 + 44) |= 0x80u;
            v45 = 0;
            v22 = [a2 position] + 4;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 4, v23 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v45 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v33 = v45;
            v34 = &OBJC_IVAR___OTABMUResistance__traceResistance25C;
            goto LABEL_76;
          }

          if (v13 == 2)
          {
            *(a1 + 44) |= 0x100u;
            v45 = 0;
            v16 = [a2 position] + 4;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 4, v17 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v45 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v33 = v45;
            v34 = &OBJC_IVAR___OTABMUResistance__traceResistanceTemperatureCoeff;
            goto LABEL_76;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          *(a1 + 44) |= 2u;
          v45 = 0;
          v28 = [a2 position] + 4;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 4, v29 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v45 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v33 = v45;
          v34 = &OBJC_IVAR___OTABMUResistance__downstreamNorthResistance;
          goto LABEL_76;
        }

        if (v13 == 6)
        {
          *(a1 + 44) |= 8u;
          v45 = 0;
          v20 = [a2 position] + 4;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 4, v21 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v45 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v33 = v45;
          v34 = &OBJC_IVAR___OTABMUResistance__resistanceGGToVcut;
          goto LABEL_76;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            *(a1 + 44) |= 0x10u;
            v45 = 0;
            v26 = [a2 position] + 4;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 4, v27 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v45 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v33 = v45;
            v34 = &OBJC_IVAR___OTABMUResistance__resistancePMUToVcut;
            goto LABEL_76;
          case 8:
            *(a1 + 44) |= 0x20u;
            v45 = 0;
            v30 = [a2 position] + 4;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 4, v31 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v45 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v33 = v45;
            v34 = &OBJC_IVAR___OTABMUResistance__resistanceVcutToPmax;
            goto LABEL_76;
          case 9:
            *(a1 + 44) |= 4u;
            v45 = 0;
            v14 = [a2 position] + 4;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v45 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v33 = v45;
            v34 = &OBJC_IVAR___OTABMUResistance__resistanceCellTabToGG;
LABEL_76:
            *(a1 + *v34) = v33;
            goto LABEL_77;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_77:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_10000C5C0(void *a1)
{
  v1 = [a1 unsignedLongLongValue];
  v2 = objc_alloc_init(NSDateFormatter);
  [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v3 = [NSDate dateWithTimeIntervalSince1970:v1 / 1000000000.0];
  v4 = [v2 stringFromDate:v3];

  return v4;
}

BOOL sub_10000C664(io_registry_entry_t a1)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"PPMVector", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    return 0;
  }

  v2 = CFProperty;
  v3 = CFGetTypeID(CFProperty);
  v4 = v3 == CFDictionaryGetTypeID() && CFDictionaryGetValue(v2, @"PPMBatteryModel") != 0;
  CFRelease(v2);
  return v4;
}

BOOL sub_10000C6EC(io_registry_entry_t a1)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"TelemetrySharedQueueAllocStatus", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    return 0;
  }

  v2 = CFProperty;
  v3 = CFGetTypeID(CFProperty);
  v4 = v3 == CFBooleanGetTypeID() && CFBooleanGetValue(v2) != 0;
  CFRelease(v2);
  return v4;
}

void sub_10000C76C(io_object_t *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = a1[6];
    if (v4)
    {
      v5 = mach_port_mod_refs(mach_task_self_, v4, 1u, -1);
      if (v5)
      {
        v6 = v5;
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_10000F488(v6, v3, v7, v8, v9, v10, v11, v12);
        }
      }

      a1[6] = 0;
    }

    if (*a1)
    {
      IOObjectRelease(*a1);
      *a1 = 0;
    }

    v13 = a1[1];
    if (v13)
    {
      IOServiceClose(v13);
      a1[1] = 0;
    }
  }
}

void sub_10000C810()
{
  if (qword_100022288)
  {
    dispatch_source_cancel(qword_100022288);
    v0 = vars8;
  }

  v1 = qword_100022280;
  if (qword_100022280)
  {

    dispatch_source_cancel(v1);
  }
}

void sub_10000C854(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IOConnectCallMethod(*(a1 + 4), 0x2Au, 0, 0, 0, 0, 0, 0, 0, 0) && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000F4F4();
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = mach_port_mod_refs(mach_task_self_, v4, 1u, -1);
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10000F488(v6, v3, v7, v8, v9, v10, v11, v12);
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t sub_10000C924(void *a1, mach_port_t a2)
{
  v3 = a1;
  v4 = IOConnectCallMethod(a2, 0x29u, 0, 0, 0, 0, 0, 0, 0, 0);
  if (v4 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000F528();
  }

  return v4;
}

uint64_t sub_10000C9A8(void *a1, uint64_t a2)
{
  oslog = a1;
  for (i = 0; ; i = v24)
  {
    if (!IODataQueueDataAvailable(*(a2 + 32)))
    {
      v19 = 0;
      goto LABEL_37;
    }

    dataSize = 0;
    v3 = IODataQueuePeek(*(a2 + 32));
    if (!v3 || (size = v3->size, !size))
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_10000F694();
      }

      goto LABEL_36;
    }

    dataSize = size;
    v5 = malloc_type_malloc(size, 0x941722CDuLL);
    if (!v5)
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_10000F660();
      }

      goto LABEL_36;
    }

    if (IODataQueueDequeue(*(a2 + 32), v5, &dataSize))
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_10000F55C();
      }

      free(v5);
      goto LABEL_36;
    }

    v24 = [NSData dataWithBytesNoCopy:v5 length:dataSize freeWhenDone:1];

    if (!v24)
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_10000F62C();
      }

      i = 0;
LABEL_36:
      v19 = 5;
      goto LABEL_37;
    }

    v31 = 0;
    v6 = [NSPropertyListSerialization propertyListWithData:v24 options:0 format:0 error:&v31];
    v23 = v31;
    if (v6)
    {
      break;
    }

    v17 = oslog;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v23 localizedDescription];
      sub_10000F5D0(v18, v33, &v34, v17);
    }

LABEL_24:
    ;
  }

  v22 = [v6 objectForKeyedSubscript:@"category"];
  v7 = [v6 mutableCopy];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v9)
  {
    v10 = *v28;
    do
    {
      for (j = 0; j != v9; j = j + 1)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v27 + 1) + 8 * j);
        v13 = [v8 objectForKeyedSubscript:v12];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 length] == 4)
        {
          *buf = 0;
          [v13 getBytes:buf length:4];
          v14 = [NSNumber numberWithInt:*buf];
          [v7 setObject:v14 forKeyedSubscript:v12];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v9);
  }

  v15 = [v8 objectForKeyedSubscript:@"CaptureTimestamp"];
  v16 = sub_10000C5C0(v15);

  [v7 setObject:v16 forKeyedSubscript:@"CaptureTimestamp"];
  [v7 removeObjectForKey:@"category"];
  qword_100022268 = PPSCreateTelemetryIdentifier();
  if (qword_100022268)
  {
    PPSSendTelemetry();

    goto LABEL_24;
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    sub_10000F590(buf, &buf[1], oslog);
  }

  v19 = 5;
  i = v24;
LABEL_37:

  return v19;
}

uint64_t start()
{
  v0 = os_log_create("com.apple.peakpowermanagerd", "main");
  v1 = objc_autoreleasePoolPush();
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.peakpowermanagerd.batterymodelqueue", v2);

  v4 = +[BatteryModelDataHandler sharedInstance];
  v5 = qword_100022260;
  qword_100022260 = v4;

  if (!qword_100022260 && os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_10000F6C8();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D3A4;
  block[3] = &unk_10001C3F8;
  v6 = v0;
  v56 = v6;
  dispatch_async(v3, block);

  objc_autoreleasePoolPop(v1);
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v7 = IOServiceMatching("ApplePPM");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v7);
  LODWORD(v52) = MatchingService;
  if (!MatchingService)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000F8C4();
    }

    goto LABEL_16;
  }

  if (IOServiceOpen(MatchingService, mach_task_self_, 0, &v52 + 1))
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000F6FC();
    }

LABEL_15:
    sub_10000C76C(&v52, v6);
LABEL_16:
    v17 = 1;
    goto LABEL_17;
  }

  if (!sub_10000C6EC(v52) || !sub_10000C664(v52))
  {
    goto LABEL_33;
  }

  v9 = IOConnectMapMemory(DWORD1(v52), 0, mach_task_self_, &v52 + 1, &v53, 1u);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000F730(v10, v6, v11, v12, v13, v14, v15, v16);
    }

    goto LABEL_15;
  }

  v54 = *(&v52 + 1);
  if (!*(&v52 + 1))
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000F890();
    }

    goto LABEL_15;
  }

  NotificationPort = IODataQueueAllocateNotificationPort();
  DWORD2(v53) = NotificationPort;
  if (!NotificationPort)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000F85C();
    }

    goto LABEL_15;
  }

  v20 = IOConnectSetNotificationPort(DWORD1(v52), 1u, NotificationPort, 0);
  if (v20)
  {
    v21 = v20;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000F79C(&v53 + 2, v21, v6);
    }

    goto LABEL_15;
  }

  v22 = dispatch_get_global_queue(0, 0);
  v23 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v22);
  v24 = qword_100022280;
  qword_100022280 = v23;

  v25 = qword_100022280;
  v26 = dispatch_time(0, 1800000000000);
  dispatch_source_set_timer(v25, v26, 0x1A3185C5000uLL, 0x1B110A3A800uLL);
  v27 = qword_100022280;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  v49 = v52;
  handler[2] = sub_10000D66C;
  handler[3] = &unk_10001C420;
  v50 = v53;
  v51 = v54;
  v28 = v6;
  v48 = v28;
  dispatch_source_set_event_handler(v27, handler);
  dispatch_resume(qword_100022280);
  v29 = dispatch_queue_create("com.apple.peakpowermanagerd.telemetryqueue", 0);
  v30 = dispatch_source_create(&_dispatch_source_type_mach_recv, DWORD2(v53), 0, v29);
  v31 = qword_100022288;
  qword_100022288 = v30;

  v32 = qword_100022288;
  if (qword_100022288)
  {
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v44 = v52;
    v42[2] = sub_10000D6D0;
    v42[3] = &unk_10001C420;
    v45 = v53;
    v46 = v54;
    v33 = v28;
    v43 = v33;
    dispatch_source_set_event_handler(v32, v42);
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x4810000000;
    v38[3] = &unk_1000175A6;
    v39 = v52;
    v40 = v53;
    v41 = v54;
    v34 = qword_100022288;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10000D76C;
    v35[3] = &unk_10001C448;
    v37 = v38;
    v36 = v33;
    dispatch_source_set_cancel_handler(v34, v35);
    dispatch_resume(qword_100022288);

    _Block_object_dispose(v38, 8);
    v17 = 0;
  }

  else
  {
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10000F828();
    }

    sub_10000C854(&v52, v28);
    sub_10000C76C(&v52, v28);
    v17 = 1;
  }

  if (v32)
  {
LABEL_33:
    dispatch_main();
  }

LABEL_17:

  return v17;
}

void sub_10000D3A4(uint64_t a1)
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.peakpowermanagerd"];
  if (v2)
  {
    size = 0;
    if (!sysctlbyname("kern.bootsessionuuid", 0, &size, 0, 0))
    {
      v3 = malloc_type_malloc(size, 0x100004077774924uLL);
      if (v3)
      {
        v4 = v3;
        if (sysctlbyname("kern.bootsessionuuid", v3, &size, 0, 0))
        {
          v5 = 0;
        }

        else
        {
          v5 = [NSString stringWithUTF8String:v4];
        }

        free(v4);
        if (v5)
        {
          v6 = [v2 stringForKey:@"savedBootUUID"];
          if ([v6 isEqualToString:v5])
          {
            v7 = *(a1 + 32);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(size) = 0;
              v8 = "Main Unchanged boot UUID. Skipping battery model task\n";
              v9 = v7;
              v10 = 2;
LABEL_25:
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &size, v10);
              goto LABEL_26;
            }

            goto LABEL_26;
          }

          v11 = [qword_100022260 getBatteryChemID];
          v12 = *(a1 + 32);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            sub_10000F8F8(v11, v12);
            if (v11)
            {
LABEL_16:
              v13 = [qword_100022260 moveBatteryModelDataFromDiskToKext:v11];
              v14 = *(a1 + 32);
              if (v13)
              {
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(size) = 0;
                  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Battery data upload succeeded\n", &size, 2u);
                }

                [v2 setObject:v5 forKey:@"savedBootUUID"];
              }

              else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                sub_10000F974();
              }

              goto LABEL_26;
            }
          }

          else if (v11)
          {
            goto LABEL_16;
          }

          v15 = *(a1 + 32);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            size = 67109120;
            v8 = "Chem ID returned 0 (may indicate dev board). Skipping loading battery model %x \n";
            v9 = v15;
            v10 = 8;
            goto LABEL_25;
          }

LABEL_26:

          goto LABEL_27;
        }
      }
    }

    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
    {
      sub_10000F9A8();
    }
  }

  else if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_10000F9DC();
  }

LABEL_27:
}

void sub_10000D66C(uint64_t a1)
{
  if (*(*(a1 + 72) + 4) == *(*(a1 + 72) + 8))
  {
    v2 = sub_10000C924(*(a1 + 32), *(a1 + 44));
    v3 = qword_100022280;
    if (v2 && qword_100022280 != 0)
    {

      dispatch_source_cancel(v3);
    }
  }
}

void sub_10000D6D0(uint64_t a1)
{
  memset(v5, 0, sizeof(v5));
  v2 = mach_msg(v5, 6, 0, 0x20u, *(a1 + 64), 0, 0);
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000FA10(v4, v3);
    }

    sub_10000C810();
  }

  if (sub_10000C9A8(*(a1 + 32), a1 + 40))
  {
    sub_10000C810();
  }
}

void sub_10000D76C(uint64_t a1)
{
  sub_10000C854(*(*(a1 + 40) + 8) + 32, *(a1 + 32));
  v2 = *(a1 + 32);
  v3 = (*(*(a1 + 40) + 8) + 32);

  sub_10000C76C(v3, v2);
}

void sub_10000D7B8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10000D7E0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_10000D8D0(id a1)
{
  qword_100022270 = objc_alloc_init(BatteryModelDataHandler);

  _objc_release_x1();
}

void *sub_10000DF10(_OWORD *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 resistance25Cs];
  *a1 = *v4;
  v5 = v4[4];
  v7 = v4[1];
  v6 = v4[2];
  a1[3] = v4[3];
  a1[4] = v5;
  a1[1] = v7;
  a1[2] = v6;
  v8 = v4[8];
  v10 = v4[5];
  v9 = v4[6];
  a1[7] = v4[7];
  a1[8] = v8;
  a1[5] = v10;
  a1[6] = v9;
  v12 = v4[10];
  v11 = v4[11];
  v13 = v4[9];
  *(a1 + 188) = *(v4 + 188);
  a1[10] = v12;
  a1[11] = v11;
  a1[9] = v13;
  v14 = [v3 temperatureCoeffs];

  return memcpy(a1 + 204, v14, 0x330uLL);
}

void sub_10000DFB0(_DWORD *a1, void *a2)
{
  v3 = a2;
  [v3 downstreamCommonResistance];
  a1[3] = v4;
  [v3 downstreamNorthResistance];
  a1[4] = v5;
  [v3 systemEquivalentResistance];
  a1[2] = v6;
  [v3 traceResistance25C];
  *a1 = v7;
  [v3 traceResistanceTemperatureCoeff];
  a1[1] = v8;
  [v3 resistanceGGToVcut];
  a1[5] = v9;
  [v3 resistancePMUToVcut];
  a1[6] = v10;
  [v3 resistanceVcutToPmax];
  a1[7] = v11;
  [v3 resistanceCellTabToGG];
  v13 = v12;

  a1[8] = v13;
}

BOOL sub_10000F410(uint64_t a1)
{
  v2 = *(a1 + 16);

  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

void sub_10000F430(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10000F590(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to create stream ID to be sent to PPS\n", buf, 2u);
}

void sub_10000F5D0(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to map the deserialized data to a dictionary %@ \n", buf, 0xCu);
}

void sub_10000F79C(unsigned int *a1, int a2, os_log_t log)
{
  v3 = *a1;
  v4 = 134218240;
  v5 = v3;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "peakpowermanagerd is not able to set notification port code %lu, return status %d\n", &v4, 0x12u);
}

void sub_10000F8F8(unsigned int a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Battery data upload run for chemId 0x%lx\n", &v2, 0xCu);
}

void sub_10000FA10(void *a1, mach_error_t a2)
{
  v3 = a1;
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2080;
  v6 = mach_error_string(a2);
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to receive IOSharedDataQueue enqueue mach msg return code: %d error string: %s\n", v4, 0x12u);
}

void sub_10000FACC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v2 = 136315138;
    v3 = "[BatteryModelDataHandler getIntValueForKeyFromBatteryData:]";
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s <Error> valueCF null", &v2, 0xCu);
  }
}

void sub_10000FC60(uint64_t a1, _DWORD *a2)
{
  if (sub_10000F410(a1))
  {
    sub_10000F400();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  *a2 = 0;
}

void sub_10000FDDC(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Read HW type %s\n", &v2, 0xCu);
}

void sub_10000FE54(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(*(a1 + 16), OS_LOG_TYPE_ERROR))
  {
    sub_10000F400();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }

  *a2 = 0;
}

void sub_10000FEB8()
{
  v2[0] = 136315394;
  sub_10000F458();
  v3 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "%s workingDirURL resource: %@ \n", v2, 0x16u);
}

void sub_10000FF3C()
{
  sub_10000F458();
  sub_10000F44C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100010124(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localizedDescription];
  sub_10000F458();
  sub_10000F400();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100010248(uint64_t a1, void *a2)
{
  if (sub_10000F410(a1))
  {
    sub_10000F400();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_1000102DC(uint64_t a1, void *a2)
{
  if (sub_10000F410(a1))
  {
    sub_10000F400();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  *a2 = 0;
}

void sub_1000104D8()
{
  sub_10000F458();
  sub_10000F44C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001055C(uint64_t a1)
{
  if (sub_10000F410(a1))
  {
    sub_10000F474();
    sub_10000F400();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  }

  sub_10000F468();
}

void sub_1000105F8(uint64_t a1)
{
  if (sub_10000F410(a1))
  {
    sub_10000F474();
    sub_10000F400();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  }

  sub_10000F468();
}

void sub_100010694(uint64_t a1)
{
  if (sub_10000F410(a1))
  {
    sub_10000F400();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  sub_10000F468();
}

void sub_100010724(uint64_t a1)
{
  if (sub_10000F410(a1))
  {
    sub_10000F400();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  sub_10000F468();
}

void sub_1000107B4(uint64_t a1)
{
  if (sub_10000F410(a1))
  {
    sub_10000F400();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  sub_10000F468();
}

void sub_100010844(unsigned __int8 *a1, unsigned __int8 *a2, os_log_t log)
{
  v3 = *a1;
  v4 = *a2;
  v5 = 136315650;
  v6 = "[BatteryModelDataHandler verifyHashData:]";
  v7 = 1024;
  v8 = v3;
  v9 = 1024;
  v10 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s <Error> sentHash %x mismatches with returnedHash %x", &v5, 0x18u);
}

void sub_1000108E4(uint64_t a1)
{
  if (sub_10000F410(a1))
  {
    sub_10000F400();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  sub_10000F468();
}

void sub_100010974(uint64_t a1)
{
  if (sub_10000F410(a1))
  {
    sub_10000F400();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  sub_10000F468();
}

void sub_100010A04(uint64_t a1, char a2, _BYTE *a3)
{
  v5 = *(a1 + 16);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[BatteryModelDataHandler verifyHashData:]";
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s <Error> getPPMDebugDict failed", &v6, 0xCu);
  }

  *a3 = a2 & 1;
}