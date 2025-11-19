uint64_t sub_1001E03CC(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
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
      LOBYTE(v206[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v206[0] & 0x7F) << v5;
      if ((v206[0] & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
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
    if ((v12 >> 3) > 202)
    {
      if (v13 > 300)
      {
        if (v13 <= 305)
        {
          if (v13 <= 302)
          {
            if (v13 == 301)
            {
              v14 = PBReaderReadString();
              v15 = 240;
              goto LABEL_313;
            }

            v66 = 0;
            v67 = 0;
            v68 = 0;
            *(a1 + 280) |= 0x8000000u;
            while (1)
            {
              LOBYTE(v206[0]) = 0;
              v69 = [a2 position] + 1;
              if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
              {
                v71 = [a2 data];
                [v71 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v68 |= (v206[0] & 0x7F) << v66;
              if ((v206[0] & 0x80) == 0)
              {
                break;
              }

              v66 += 7;
              v11 = v67++ >= 9;
              if (v11)
              {
                LOBYTE(v35) = 0;
                goto LABEL_411;
              }
            }

            v35 = (v68 != 0) & ~[a2 hasError];
LABEL_411:
            v203 = 276;
          }

          else if (v13 == 303)
          {
            v164 = 0;
            v165 = 0;
            v166 = 0;
            *(a1 + 280) |= 0x10000000u;
            while (1)
            {
              LOBYTE(v206[0]) = 0;
              v167 = [a2 position] + 1;
              if (v167 >= [a2 position] && (v168 = objc_msgSend(a2, "position") + 1, v168 <= objc_msgSend(a2, "length")))
              {
                v169 = [a2 data];
                [v169 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v166 |= (v206[0] & 0x7F) << v164;
              if ((v206[0] & 0x80) == 0)
              {
                break;
              }

              v164 += 7;
              v11 = v165++ >= 9;
              if (v11)
              {
                LOBYTE(v35) = 0;
                goto LABEL_415;
              }
            }

            v35 = (v166 != 0) & ~[a2 hasError];
LABEL_415:
            v203 = 277;
          }

          else if (v13 == 304)
          {
            v140 = 0;
            v141 = 0;
            v142 = 0;
            *(a1 + 280) |= 0x1000000u;
            while (1)
            {
              LOBYTE(v206[0]) = 0;
              v143 = [a2 position] + 1;
              if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 1, v144 <= objc_msgSend(a2, "length")))
              {
                v145 = [a2 data];
                [v145 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v142 |= (v206[0] & 0x7F) << v140;
              if ((v206[0] & 0x80) == 0)
              {
                break;
              }

              v140 += 7;
              v11 = v141++ >= 9;
              if (v11)
              {
                LOBYTE(v35) = 0;
                goto LABEL_395;
              }
            }

            v35 = (v142 != 0) & ~[a2 hasError];
LABEL_395:
            v203 = 273;
          }

          else
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 280) |= 0x2000000u;
            while (1)
            {
              LOBYTE(v206[0]) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v206[0] & 0x7F) << v29;
              if ((v206[0] & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                LOBYTE(v35) = 0;
                goto LABEL_413;
              }
            }

            v35 = (v31 != 0) & ~[a2 hasError];
LABEL_413:
            v203 = 274;
          }
        }

        else
        {
          if (v13 <= 308)
          {
            if (v13 == 306)
            {
              v158 = 0;
              v159 = 0;
              v160 = 0;
              *(a1 + 280) |= 0x200000u;
              while (1)
              {
                LOBYTE(v206[0]) = 0;
                v161 = [a2 position] + 1;
                if (v161 >= [a2 position] && (v162 = objc_msgSend(a2, "position") + 1, v162 <= objc_msgSend(a2, "length")))
                {
                  v163 = [a2 data];
                  [v163 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v160 |= (v206[0] & 0x7F) << v158;
                if ((v206[0] & 0x80) == 0)
                {
                  break;
                }

                v158 += 7;
                v11 = v159++ >= 9;
                if (v11)
                {
                  v78 = 0;
                  goto LABEL_409;
                }
              }

              if ([a2 hasError])
              {
                v78 = 0;
              }

              else
              {
                v78 = v160;
              }

LABEL_409:
              v202 = 264;
            }

            else
            {
              if (v13 != 307)
              {
                v14 = PBReaderReadString();
                v15 = 248;
LABEL_313:
                v188 = *(a1 + v15);
                *(a1 + v15) = v14;

                goto LABEL_443;
              }

              v109 = 0;
              v110 = 0;
              v111 = 0;
              *(a1 + 280) |= 0x400000u;
              while (1)
              {
                LOBYTE(v206[0]) = 0;
                v112 = [a2 position] + 1;
                if (v112 >= [a2 position] && (v113 = objc_msgSend(a2, "position") + 1, v113 <= objc_msgSend(a2, "length")))
                {
                  v114 = [a2 data];
                  [v114 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v111 |= (v206[0] & 0x7F) << v109;
                if ((v206[0] & 0x80) == 0)
                {
                  break;
                }

                v109 += 7;
                v11 = v110++ >= 9;
                if (v11)
                {
                  v78 = 0;
                  goto LABEL_365;
                }
              }

              if ([a2 hasError])
              {
                v78 = 0;
              }

              else
              {
                v78 = v111;
              }

LABEL_365:
              v202 = 268;
            }

LABEL_421:
            *(a1 + v202) = v78;
            goto LABEL_443;
          }

          switch(v13)
          {
            case 0x135:
              v14 = PBReaderReadString();
              v15 = 256;
              goto LABEL_313;
            case 0x136:
              v115 = 0;
              v116 = 0;
              v117 = 0;
              *(a1 + 280) |= 0x4000000u;
              while (1)
              {
                LOBYTE(v206[0]) = 0;
                v118 = [a2 position] + 1;
                if (v118 >= [a2 position] && (v119 = objc_msgSend(a2, "position") + 1, v119 <= objc_msgSend(a2, "length")))
                {
                  v120 = [a2 data];
                  [v120 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v117 |= (v206[0] & 0x7F) << v115;
                if ((v206[0] & 0x80) == 0)
                {
                  break;
                }

                v115 += 7;
                v11 = v116++ >= 9;
                if (v11)
                {
                  LOBYTE(v35) = 0;
                  goto LABEL_367;
                }
              }

              v35 = (v117 != 0) & ~[a2 hasError];
LABEL_367:
              v203 = 275;
              break;
            case 0x137:
              v42 = 0;
              v43 = 0;
              v44 = 0;
              *(a1 + 280) |= 0x20000000u;
              while (1)
              {
                LOBYTE(v206[0]) = 0;
                v45 = [a2 position] + 1;
                if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
                {
                  v47 = [a2 data];
                  [v47 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v44 |= (v206[0] & 0x7F) << v42;
                if ((v206[0] & 0x80) == 0)
                {
                  break;
                }

                v42 += 7;
                v11 = v43++ >= 9;
                if (v11)
                {
                  LOBYTE(v35) = 0;
                  goto LABEL_405;
                }
              }

              v35 = (v44 != 0) & ~[a2 hasError];
LABEL_405:
              v203 = 278;
              break;
            default:
              goto LABEL_332;
          }
        }

LABEL_416:
        *(a1 + v203) = v35;
        goto LABEL_443;
      }

      if (v13 > 207)
      {
        if (v13 <= 209)
        {
          if (v13 == 208)
          {
            v85 = 0;
            v86 = 0;
            v87 = 0;
            *(a1 + 280) |= 0x4000u;
            while (1)
            {
              LOBYTE(v206[0]) = 0;
              v88 = [a2 position] + 1;
              if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
              {
                v90 = [a2 data];
                [v90 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v87 |= (v206[0] & 0x7F) << v85;
              if ((v206[0] & 0x80) == 0)
              {
                break;
              }

              v85 += 7;
              v11 = v86++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_349;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v87;
            }

LABEL_349:
            v201 = 120;
          }

          else
          {
            v60 = 0;
            v61 = 0;
            v62 = 0;
            *(a1 + 280) |= 0x800u;
            while (1)
            {
              LOBYTE(v206[0]) = 0;
              v63 = [a2 position] + 1;
              if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
              {
                v65 = [a2 data];
                [v65 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v62 |= (v206[0] & 0x7F) << v60;
              if ((v206[0] & 0x80) == 0)
              {
                break;
              }

              v60 += 7;
              v11 = v61++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_377;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v62;
            }

LABEL_377:
            v201 = 96;
          }
        }

        else
        {
          switch(v13)
          {
            case 0xD2:
              v133 = 0;
              v134 = 0;
              v135 = 0;
              *(a1 + 280) |= 0x400u;
              while (1)
              {
                LOBYTE(v206[0]) = 0;
                v136 = [a2 position] + 1;
                if (v136 >= [a2 position] && (v137 = objc_msgSend(a2, "position") + 1, v137 <= objc_msgSend(a2, "length")))
                {
                  v138 = [a2 data];
                  [v138 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v135 |= (v206[0] & 0x7F) << v133;
                if ((v206[0] & 0x80) == 0)
                {
                  break;
                }

                v133 += 7;
                v11 = v134++ >= 9;
                if (v11)
                {
                  v22 = 0;
                  goto LABEL_393;
                }
              }

              if ([a2 hasError])
              {
                v22 = 0;
              }

              else
              {
                v22 = v135;
              }

LABEL_393:
              v201 = 88;
              break;
            case 0xD3:
              v97 = 0;
              v98 = 0;
              v99 = 0;
              *(a1 + 280) |= 0x2000u;
              while (1)
              {
                LOBYTE(v206[0]) = 0;
                v100 = [a2 position] + 1;
                if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
                {
                  v102 = [a2 data];
                  [v102 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v99 |= (v206[0] & 0x7F) << v97;
                if ((v206[0] & 0x80) == 0)
                {
                  break;
                }

                v97 += 7;
                v11 = v98++ >= 9;
                if (v11)
                {
                  v22 = 0;
                  goto LABEL_357;
                }
              }

              if ([a2 hasError])
              {
                v22 = 0;
              }

              else
              {
                v22 = v99;
              }

LABEL_357:
              v201 = 112;
              break;
            case 0xD4:
              v23 = 0;
              v24 = 0;
              v25 = 0;
              *(a1 + 280) |= 0x1000u;
              while (1)
              {
                LOBYTE(v206[0]) = 0;
                v26 = [a2 position] + 1;
                if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
                {
                  v28 = [a2 data];
                  [v28 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v25 |= (v206[0] & 0x7F) << v23;
                if ((v206[0] & 0x80) == 0)
                {
                  break;
                }

                v23 += 7;
                v11 = v24++ >= 9;
                if (v11)
                {
                  v22 = 0;
                  goto LABEL_385;
                }
              }

              if ([a2 hasError])
              {
                v22 = 0;
              }

              else
              {
                v22 = v25;
              }

LABEL_385:
              v201 = 104;
              break;
            default:
              goto LABEL_332;
          }
        }
      }

      else if (v13 <= 204)
      {
        if (v13 == 203)
        {
          v79 = 0;
          v80 = 0;
          v81 = 0;
          *(a1 + 280) |= 0x40u;
          while (1)
          {
            LOBYTE(v206[0]) = 0;
            v82 = [a2 position] + 1;
            if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
            {
              v84 = [a2 data];
              [v84 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v81 |= (v206[0] & 0x7F) << v79;
            if ((v206[0] & 0x80) == 0)
            {
              break;
            }

            v79 += 7;
            v11 = v80++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_345;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v81;
          }

LABEL_345:
          v201 = 56;
        }

        else
        {
          if (v13 != 204)
          {
LABEL_332:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              return 0;
            }

            goto LABEL_443;
          }

          v54 = 0;
          v55 = 0;
          v56 = 0;
          *(a1 + 280) |= 0x200u;
          while (1)
          {
            LOBYTE(v206[0]) = 0;
            v57 = [a2 position] + 1;
            if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
            {
              v59 = [a2 data];
              [v59 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v56 |= (v206[0] & 0x7F) << v54;
            if ((v206[0] & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v11 = v55++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_373;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v56;
          }

LABEL_373:
          v201 = 80;
        }
      }

      else if (v13 == 205)
      {
        v127 = 0;
        v128 = 0;
        v129 = 0;
        *(a1 + 280) |= 0x100u;
        while (1)
        {
          LOBYTE(v206[0]) = 0;
          v130 = [a2 position] + 1;
          if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 1, v131 <= objc_msgSend(a2, "length")))
          {
            v132 = [a2 data];
            [v132 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v129 |= (v206[0] & 0x7F) << v127;
          if ((v206[0] & 0x80) == 0)
          {
            break;
          }

          v127 += 7;
          v11 = v128++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_389;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v129;
        }

LABEL_389:
        v201 = 72;
      }

      else if (v13 == 206)
      {
        v91 = 0;
        v92 = 0;
        v93 = 0;
        *(a1 + 280) |= 0x10000u;
        while (1)
        {
          LOBYTE(v206[0]) = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v206[0] & 0x7F) << v91;
          if ((v206[0] & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v11 = v92++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_353;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v93;
        }

LABEL_353:
        v201 = 136;
      }

      else
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 280) |= 0x8000u;
        while (1)
        {
          LOBYTE(v206[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v206[0] & 0x7F) << v16;
          if ((v206[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_381;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_381:
        v201 = 128;
      }

LABEL_442:
      *(a1 + v201) = v22;
      goto LABEL_443;
    }

    if (v13 <= 100)
    {
      switch(v13)
      {
        case 1:
          v146 = 0;
          v147 = 0;
          v148 = 0;
          *(a1 + 280) |= 0x20000u;
          while (1)
          {
            LOBYTE(v206[0]) = 0;
            v149 = [a2 position] + 1;
            if (v149 >= [a2 position] && (v150 = objc_msgSend(a2, "position") + 1, v150 <= objc_msgSend(a2, "length")))
            {
              v151 = [a2 data];
              [v151 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v148 |= (v206[0] & 0x7F) << v146;
            if ((v206[0] & 0x80) == 0)
            {
              break;
            }

            v146 += 7;
            v11 = v147++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_399;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v148;
          }

LABEL_399:
          v201 = 144;
          break;
        case 2:
          v103 = 0;
          v104 = 0;
          v105 = 0;
          *(a1 + 280) |= 8u;
          while (1)
          {
            LOBYTE(v206[0]) = 0;
            v106 = [a2 position] + 1;
            if (v106 >= [a2 position] && (v107 = objc_msgSend(a2, "position") + 1, v107 <= objc_msgSend(a2, "length")))
            {
              v108 = [a2 data];
              [v108 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v105 |= (v206[0] & 0x7F) << v103;
            if ((v206[0] & 0x80) == 0)
            {
              break;
            }

            v103 += 7;
            v11 = v104++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_361;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v105;
          }

LABEL_361:
          v201 = 32;
          break;
        case 3:
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 280) |= 0x10u;
          while (1)
          {
            LOBYTE(v206[0]) = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v206[0] & 0x7F) << v36;
            if ((v206[0] & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_337;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v38;
          }

LABEL_337:
          v201 = 40;
          break;
        default:
          goto LABEL_332;
      }

      goto LABEL_442;
    }

    switch(v13)
    {
      case 'e':
        v14 = PBReaderReadString();
        v15 = 232;
        goto LABEL_313;
      case 'f':
        v14 = PBReaderReadString();
        v15 = 168;
        goto LABEL_313;
      case 'g':
        v14 = PBReaderReadString();
        v15 = 200;
        goto LABEL_313;
      case 'h':
        v14 = PBReaderReadString();
        v15 = 152;
        goto LABEL_313;
      case 'i':
        v121 = 0;
        v122 = 0;
        v123 = 0;
        *(a1 + 280) |= 0x800000u;
        while (1)
        {
          LOBYTE(v206[0]) = 0;
          v124 = [a2 position] + 1;
          if (v124 >= [a2 position] && (v125 = objc_msgSend(a2, "position") + 1, v125 <= objc_msgSend(a2, "length")))
          {
            v126 = [a2 data];
            [v126 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v123 |= (v206[0] & 0x7F) << v121;
          if ((v206[0] & 0x80) == 0)
          {
            break;
          }

          v121 += 7;
          v11 = v122++ >= 9;
          if (v11)
          {
            LOBYTE(v35) = 0;
            goto LABEL_369;
          }
        }

        v35 = (v123 != 0) & ~[a2 hasError];
LABEL_369:
        v203 = 272;
        goto LABEL_416;
      case 'j':
        v14 = PBReaderReadString();
        v15 = 176;
        goto LABEL_313;
      case 'k':
        v14 = PBReaderReadString();
        v15 = 192;
        goto LABEL_313;
      case 'l':
        v170 = 0;
        v171 = 0;
        v172 = 0;
        *(a1 + 280) |= 0x80000u;
        while (1)
        {
          LOBYTE(v206[0]) = 0;
          v173 = [a2 position] + 1;
          if (v173 >= [a2 position] && (v174 = objc_msgSend(a2, "position") + 1, v174 <= objc_msgSend(a2, "length")))
          {
            v175 = [a2 data];
            [v175 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v172 |= (v206[0] & 0x7F) << v170;
          if ((v206[0] & 0x80) == 0)
          {
            break;
          }

          v170 += 7;
          v11 = v171++ >= 9;
          if (v11)
          {
            v78 = 0;
            goto LABEL_420;
          }
        }

        if ([a2 hasError])
        {
          v78 = 0;
        }

        else
        {
          v78 = v172;
        }

LABEL_420:
        v202 = 208;
        goto LABEL_421;
      case 'm':
        v195 = 0;
        v196 = 0;
        v197 = 0;
        *(a1 + 280) |= 1u;
        while (1)
        {
          LOBYTE(v206[0]) = 0;
          v198 = [a2 position] + 1;
          if (v198 >= [a2 position] && (v199 = objc_msgSend(a2, "position") + 1, v199 <= objc_msgSend(a2, "length")))
          {
            v200 = [a2 data];
            [v200 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v197 |= (v206[0] & 0x7F) << v195;
          if ((v206[0] & 0x80) == 0)
          {
            break;
          }

          v195 += 7;
          v11 = v196++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_441;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v197;
        }

LABEL_441:
        v201 = 8;
        goto LABEL_442;
      case 'n':
        v152 = 0;
        v153 = 0;
        v154 = 0;
        *(a1 + 280) |= 0x100000u;
        while (1)
        {
          LOBYTE(v206[0]) = 0;
          v155 = [a2 position] + 1;
          if (v155 >= [a2 position] && (v156 = objc_msgSend(a2, "position") + 1, v156 <= objc_msgSend(a2, "length")))
          {
            v157 = [a2 data];
            [v157 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v154 |= (v206[0] & 0x7F) << v152;
          if ((v206[0] & 0x80) == 0)
          {
            break;
          }

          v152 += 7;
          v11 = v153++ >= 9;
          if (v11)
          {
            v78 = 0;
            goto LABEL_403;
          }
        }

        if ([a2 hasError])
        {
          v78 = 0;
        }

        else
        {
          v78 = v154;
        }

LABEL_403:
        v202 = 224;
        goto LABEL_421;
      case 'o':
        v189 = 0;
        v190 = 0;
        v191 = 0;
        *(a1 + 280) |= 2u;
        while (1)
        {
          LOBYTE(v206[0]) = 0;
          v192 = [a2 position] + 1;
          if (v192 >= [a2 position] && (v193 = objc_msgSend(a2, "position") + 1, v193 <= objc_msgSend(a2, "length")))
          {
            v194 = [a2 data];
            [v194 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v191 |= (v206[0] & 0x7F) << v189;
          if ((v206[0] & 0x80) == 0)
          {
            break;
          }

          v189 += 7;
          v11 = v190++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_437;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v191;
        }

LABEL_437:
        v201 = 16;
        goto LABEL_442;
      case 'p':
        v72 = 0;
        v73 = 0;
        v74 = 0;
        *(a1 + 280) |= 0x40000u;
        while (1)
        {
          LOBYTE(v206[0]) = 0;
          v75 = [a2 position] + 1;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
          {
            v77 = [a2 data];
            [v77 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v74 |= (v206[0] & 0x7F) << v72;
          if ((v206[0] & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v11 = v73++ >= 9;
          if (v11)
          {
            v78 = 0;
            goto LABEL_341;
          }
        }

        if ([a2 hasError])
        {
          v78 = 0;
        }

        else
        {
          v78 = v74;
        }

LABEL_341:
        v202 = 184;
        goto LABEL_421;
      case 'q':
        v139 = objc_alloc_init(SECC2MPError);
        objc_storeStrong((a1 + 160), v139);
        v206[0] = 0xAAAAAAAAAAAAAAAALL;
        v206[1] = 0xAAAAAAAAAAAAAAAALL;
        if (PBReaderPlaceMark() && sub_100192738(v139, a2))
        {
          PBReaderRecallMark();

LABEL_443:
          v204 = [a2 position];
          if (v204 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      case 'r':
        v182 = 0;
        v183 = 0;
        v184 = 0;
        *(a1 + 280) |= 4u;
        while (1)
        {
          LOBYTE(v206[0]) = 0;
          v185 = [a2 position] + 1;
          if (v185 >= [a2 position] && (v186 = objc_msgSend(a2, "position") + 1, v186 <= objc_msgSend(a2, "length")))
          {
            v187 = [a2 data];
            [v187 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v184 |= (v206[0] & 0x7F) << v182;
          if ((v206[0] & 0x80) == 0)
          {
            break;
          }

          v182 += 7;
          v11 = v183++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_433;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v184;
        }

LABEL_433:
        v201 = 24;
        goto LABEL_442;
      case 's':
        v14 = PBReaderReadString();
        v15 = 216;
        goto LABEL_313;
      default:
        if (v13 == 201)
        {
          v176 = 0;
          v177 = 0;
          v178 = 0;
          *(a1 + 280) |= 0x20u;
          while (1)
          {
            LOBYTE(v206[0]) = 0;
            v179 = [a2 position] + 1;
            if (v179 >= [a2 position] && (v180 = objc_msgSend(a2, "position") + 1, v180 <= objc_msgSend(a2, "length")))
            {
              v181 = [a2 data];
              [v181 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v178 |= (v206[0] & 0x7F) << v176;
            if ((v206[0] & 0x80) == 0)
            {
              break;
            }

            v176 += 7;
            v11 = v177++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_429;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v178;
          }

LABEL_429:
          v201 = 48;
        }

        else
        {
          if (v13 != 202)
          {
            goto LABEL_332;
          }

          v48 = 0;
          v49 = 0;
          v50 = 0;
          *(a1 + 280) |= 0x80u;
          while (1)
          {
            LOBYTE(v206[0]) = 0;
            v51 = [a2 position] + 1;
            if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
            {
              v53 = [a2 data];
              [v53 getBytes:v206 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v50 |= (v206[0] & 0x7F) << v48;
            if ((v206[0] & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v11 = v49++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_425;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v50;
          }

LABEL_425:
          v201 = 64;
        }

        goto LABEL_442;
    }
  }
}

void sub_1001E4AB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained octagonContainerMap];
    [v4 setObject:*(a1 + 32) forKey:*(a1 + 40)];

    v5 = [v3 undeliveredCuttlefishUpdates];
    v6 = [v5 containsObject:*(a1 + 40)];

    if (v6)
    {
      v7 = [v3 undeliveredCuttlefishUpdates];
      [v7 removeObject:*(a1 + 40)];

      v8 = sub_100019104(@"octagonpush", 0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 40);
        v9 = *(a1 + 48);
        v11 = *(a1 + 32);
        v13 = 138412802;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "sending fake push to newly-registered cuttlefish receiver(%@-%@): %@", &v13, 0x20u);
      }

      [*(a1 + 32) notifyContainerChange:0];
    }

    [*(a1 + 56) fulfill];
  }

  else
  {
    v12 = sub_100019104(@"octagonpush", 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "received registration for released OctagonAPSReceiver", &v13, 2u);
    }
  }
}

void sub_1001E4DC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = sub_100019104(@"octagonpush", 0);
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Registering new CKKS push receiver: %@", buf, 0xCu);
    }

    v6 = *(a1 + 32);
    v7 = [WeakRetained zoneUpdateReceiverDictionary];
    [v7 setObject:v6 forKeyedSubscript:*(a1 + 40)];

    v8 = [WeakRetained undeliveredUpdates];
    v9 = [v8 copy];

    v20 = WeakRetained;
    v10 = [WeakRetained undeliveredUpdates];
    [v10 removeAllObjects];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = v9;
    v11 = [v9 allObjects];
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          v17 = sub_100019104(@"octagonpush", 0);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = *(a1 + 32);
            *buf = 138412546;
            v26 = v16;
            v27 = 2112;
            v28 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "sending stored push(%@) to newly-registered receiver: %@", buf, 0x16u);
          }

          [*(a1 + 32) notifyZoneChange:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v13);
    }

    [*(a1 + 48) fulfill];
    v4 = v19;
    WeakRetained = v20;
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "received registration for released OctagonAPSReceiver", buf, 2u);
  }
}

void sub_1001E53D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v3 = [WeakRetained environmentMap];
    v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];

    if (!v4)
    {
      v5 = [objc_msgSend(v13 "apsConnectionClass")];
      v6 = *(a1 + 32);
      v7 = [v13 namedDelegatePort];
      v8 = +[OctagonAPSReceiver apsDeliveryQueue];
      v4 = [v5 initWithEnvironmentName:v6 namedDelegatePort:v7 queue:v8];

      v9 = [v13 environmentMap];
      [v9 setObject:v4 forKeyedSubscript:*(a1 + 32)];

      [v4 setDelegate:v13];
      v10 = [@"com.apple.icloud-container." stringByAppendingString:@"com.apple.securityd"];
      v11 = [v13 cuttlefishPushTopics];
      v12 = [v11 arrayByAddingObject:v10];
      [v4 setEnabledTopics:v12];
    }

    WeakRetained = v13;
  }
}

void sub_1001E56F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001E5710(uint64_t a1)
{
  v2 = +[OctagonAPSReceiver apsDeliveryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E57BC;
  block[3] = &unk_1003452E8;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(v2, block);

  objc_destroyWeak(&v4);
}

void sub_1001E57BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained undeliveredUpdates];
    v3 = +[NSMutableSet set];
    [v5 setUndeliveredUpdates:v3];

    v4 = [v5 undeliveredCuttlefishUpdates];
    [v4 removeAllObjects];

    [v5 reportDroppedPushes:v2];
    WeakRetained = v5;
  }
}

void sub_1001E5A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001E5A18(uint64_t a1)
{
  v3 = [*(a1 + 32) undeliveredUpdates];
  if ([v3 count])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v2 = [*(a1 + 32) undeliveredCuttlefishUpdates];
    *(*(*(a1 + 40) + 8) + 24) = [v2 count] != 0;
  }
}

void sub_1001E5BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E5BD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001E5BE8(uint64_t a1)
{
  v5 = [*(a1 + 32) environmentMap];
  v2 = [v5 allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001E5CA4(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("aps-callback-queue", v3);
  v2 = qword_10039E2B0;
  qword_10039E2B0 = v1;
}

void sub_1001E61E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001E620C(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v5 = [WeakRetained databaseProvider];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001E633C;
  v7[3] = &unk_100344818;
  v8 = a1[4];
  v6 = v3;
  v9 = v6;
  v10 = a1[5];
  v11 = a1[6];
  objc_copyWeak(&v13, a1 + 7);
  v12 = WeakRetained;
  [v5 dispatchSyncWithReadOnlySQLTransaction:v7];

  objc_destroyWeak(&v13);
}

void sub_1001E633C(id *a1)
{
  v1 = a1 + 4;
  v2 = [a1[4] contextID];
  v3 = [*v1 zoneID];
  v117 = 0;
  v91 = [CKKSCurrentKeyPointer tryFromDatabase:@"tlk" contextID:v2 zoneID:v3 error:&v117];
  v87 = v117;

  if (v91 && (([v91 currentKeyUUID], (v4 = objc_claimAutoreleasedReturnValue()) != 0) ? (v5 = v87 == 0) : (v5 = 0), v5 ? (v6 = 0) : (v6 = 1), v4, !v6))
  {
    v90 = +[NSMutableArray array];
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    obj = a1[6];
    v10 = [obj countByEnumeratingWithState:&v113 objects:v123 count:16];
    if (v10)
    {
      v11 = *v114;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v114 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v113 + 1) + 8 * i);
          v14 = [a1[4] zoneID];
          v15 = [a1[4] contextID];
          v16 = [v13 makeTLKShareRecord:v14 contextID:v15];

          v17 = [v16 tlkUUID];
          v18 = [v91 currentKeyUUID];
          v19 = [v17 isEqualToString:v18];

          v20 = [a1[4] zoneID];
          v21 = v20;
          if ((v19 & 1) == 0)
          {
            v74 = [v20 zoneName];
            v75 = sub_100019104(@"ckks-se", v74);

            if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
            {
              v76 = [v91 currentKeyUUID];
              *buf = 138412546;
              *v122 = v76;
              *&v122[8] = 2112;
              *&v122[10] = v13;
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "TLKShare is not for the current TLK(%@): %@", buf, 0x16u);
            }

            v77 = [v91 currentKeyUUID];
            v78 = [NSString stringWithFormat:@"TLKShare is not for current TLK %@", v77];
            v79 = [NSError errorWithDomain:@"CKKSErrorDomain" code:61 description:v78];
            [a1[5] setError:v79];

            goto LABEL_66;
          }

          v22 = [v16 CKRecordWithZoneID:v20];
          [v90 addObject:v22];
        }

        v10 = [obj countByEnumeratingWithState:&v113 objects:v123 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    obj = +[NSMutableArray array];
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v84 = a1[7];
    v86 = [v84 countByEnumeratingWithState:&v109 objects:v120 count:16];
    if (v86)
    {
      v85 = *v110;
      while (2)
      {
        v23 = 0;
        do
        {
          if (*v110 != v85)
          {
            v24 = v23;
            objc_enumerationMutation(v84);
            v23 = v24;
          }

          v88 = v23;
          v89 = *(*(&v109 + 1) + 8 * v23);
          v25 = [a1[4] zoneID];
          v26 = [a1[4] contextID];
          v93 = [v89 makeTLKShareRecord:v25 contextID:v26];

          v27 = [v93 tlkUUID];
          v28 = [a1[4] contextID];
          v29 = [v93 share];
          v30 = [v29 receiverPeerID];
          v31 = [v93 share];
          v32 = [v31 senderPeerID];
          v33 = [a1[4] zoneID];
          v108 = 0;
          v34 = [CKKSTLKShareRecord fromDatabase:v27 contextID:v28 receiverPeerID:v30 senderPeerID:v32 zoneID:v33 error:&v108];
          v35 = v108;

          if (v34)
          {
            v36 = v35 == 0;
          }

          else
          {
            v36 = 0;
          }

          v37 = v36;
          v38 = [a1[4] zoneID];
          v39 = v38;
          if ((v37 & 1) == 0)
          {
            v80 = [v38 zoneName];
            v81 = sub_100019104(@"ckks-se", v80);

            if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *v122 = v89;
              *&v122[8] = 2112;
              *&v122[10] = v35;
              _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "Unable to load TLKShare (to delete): %@ %@", buf, 0x16u);
            }

            [a1[5] setError:v35];
            goto LABEL_65;
          }

          v40 = [v34 CKRecordWithZoneID:v38];

          v41 = [v40 recordID];
          [obj addObject:v41];

          v23 = v88 + 1;
        }

        while (v86 != (v88 + 1));
        v86 = [v84 countByEnumeratingWithState:&v109 objects:v120 count:16];
        if (v86)
        {
          continue;
        }

        break;
      }
    }

    if ([v90 count] || objc_msgSend(obj, "count"))
    {
      v84 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:v90 recordIDsToDelete:obj];
      [v84 setAtomic:1];
      v42 = [v84 configuration];
      [v42 setIsCloudKitSupportOperation:1];

      [v84 setSavePolicy:0];
      v43 = [a1[4] zoneID];
      v44 = [v43 zoneName];
      v45 = sub_100019104(@"ckks-se", v44);

      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = [v84 qualityOfService];
        v47 = [v84 group];
        *buf = 67109378;
        *v122 = v46;
        *&v122[4] = 2112;
        *&v122[6] = v47;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "QoS: %d; operation group is %@", buf, 0x12u);
      }

      v48 = [a1[4] zoneID];
      v49 = [v48 zoneName];
      v50 = sub_100019104(@"ckks-se", v49);

      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = [v90 count];
        v52 = [obj count];
        *buf = 67109376;
        *v122 = v51;
        *&v122[4] = 1024;
        *&v122[6] = v52;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Beginning upload for %d records, deleting %d records", buf, 0xEu);
      }

      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v53 = v90;
      v54 = [v53 countByEnumeratingWithState:&v104 objects:v119 count:16];
      if (v54)
      {
        v55 = *v105;
        do
        {
          for (j = 0; j != v54; j = j + 1)
          {
            if (*v105 != v55)
            {
              objc_enumerationMutation(v53);
            }

            v57 = *(*(&v104 + 1) + 8 * j);
            v58 = [v57 recordID];
            v59 = [v58 zoneID];
            v60 = [v59 zoneName];
            v61 = sub_100019104(@"ckks-se", v60);

            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
            {
              v62 = [v57 recordID];
              *buf = 138412290;
              *v122 = v62;
              _os_log_debug_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEBUG, "Record to save: %@", buf, 0xCu);
            }
          }

          v54 = [v53 countByEnumeratingWithState:&v104 objects:v119 count:16];
        }

        while (v54);
      }

      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      obj = obj;
      v63 = [obj countByEnumeratingWithState:&v100 objects:v118 count:16];
      if (v63)
      {
        v64 = *v101;
        do
        {
          for (k = 0; k != v63; k = k + 1)
          {
            if (*v101 != v64)
            {
              objc_enumerationMutation(obj);
            }

            v66 = *(*(&v100 + 1) + 8 * k);
            v67 = [v66 zoneID];
            v68 = [v67 zoneName];
            v69 = sub_100019104(@"ckks-se", v68);

            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *v122 = v66;
              _os_log_debug_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "Record to delete: %@", buf, 0xCu);
            }
          }

          v63 = [obj countByEnumeratingWithState:&v100 objects:v118 count:16];
        }

        while (v63);
      }

      [v84 setPerRecordSaveBlock:&stru_1003447A8];
      v70 = [CKKSResultOperation named:@"wait-until-write-finished" withBlock:&stru_1003447C8];
      [a1[5] dependOnBeforeGroupFinished:v70];
      v95[0] = _NSConcreteStackBlock;
      v95[1] = 3221225472;
      v95[2] = sub_1001E706C;
      v95[3] = &unk_1003447F0;
      objc_copyWeak(&v99, a1 + 9);
      v96 = a1[4];
      v97 = a1[5];
      v71 = v70;
      v98 = v71;
      [v84 setModifyRecordsCompletionBlock:v95];
      v72 = [a1[8] operationDependencies];
      v73 = [v72 ckdatabase];
      [v73 addOperation:v84];

      objc_destroyWeak(&v99);
LABEL_65:
      v16 = v84;
    }

    else
    {
      v82 = [a1[4] zoneID];
      v83 = [v82 zoneName];
      v16 = sub_100019104(@"ckks-se", v83);

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Requested modifications are a no-op; claiming success", buf, 2u);
      }
    }

LABEL_66:
  }

  else
  {
    v7 = [a1[4] zoneID];
    v8 = [v7 zoneName];
    v9 = sub_100019104(@"ckks-se", v8);

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v122 = v87;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to load currentTLK: %@", buf, 0xCu);
    }

    [a1[5] setError:v87];
  }
}

void sub_1001E706C(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v11 = [WeakRetained databaseProvider];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001E71B4;
  v15[3] = &unk_1003446E8;
  v16 = v9;
  v17 = a1[4];
  v18 = a1[5];
  v19 = a1[6];
  v20 = v7;
  v21 = WeakRetained;
  v22 = v8;
  v12 = v8;
  v13 = v7;
  v14 = v9;
  [v11 dispatchSyncWithSQLTransaction:v15];
}

uint64_t sub_1001E71B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) zoneID];
  v4 = [v3 zoneName];
  v5 = sub_100019104(@"ckks-se", v4);

  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v33 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "error proposing new TLK: %@", buf, 0xCu);
    }

    [*(a1 + 48) setError:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Completed modifying TLK share records!", buf, 2u);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = *(a1 + 64);
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          v13 = [*(a1 + 72) operationDependencies];
          [v13 intransactionCKRecordChanged:v12 resync:0];
        }

        v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v9);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = *(a1 + 80);
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v22 + 1) + 8 * j);
          v20 = [*(a1 + 72) operationDependencies];
          [v20 intransactionCKRecordDeleted:v19 recordType:@"tlkshare" resync:0];
        }

        v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v16);
    }
  }

  [*(a1 + 48) runBeforeGroupFinished:{*(a1 + 56), v22}];
  return 1;
}

void sub_1001E7468(id a1, CKRecordID *a2, CKRecord *a3, NSError *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [(CKRecordID *)v6 zoneID];
  v10 = [v9 zoneName];
  v11 = sub_100019104(@"ckks-se", v10);

  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "error on row: %@ %@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(CKRecordID *)v6 recordName];
    v13 = [(CKRecord *)v7 recordChangeTag];
    v14 = 138412546;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Record upload successful for %@ (%@)", &v14, 0x16u);
  }
}

void sub_1001E76D4(uint64_t a1)
{
  v2 = [*(a1 + 32) contextID];
  v3 = [*(a1 + 32) zoneName];
  v4 = [CKKSZoneStateEntry contextID:v2 zoneName:v3];

  v5 = [v4 getChangeToken];

  if (v5)
  {
    v6 = [*(a1 + 32) contextID];
    v7 = [*(a1 + 32) zoneID];
    v61 = 0;
    v8 = [CKKSCurrentKeyPointer tryFromDatabase:@"tlk" contextID:v6 zoneID:v7 error:&v61];
    v9 = v61;

    if (v9)
    {
      v10 = [*(a1 + 32) zoneID];
      v11 = [v10 zoneName];
      v12 = sub_100019104(@"ckks-se", v11);

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v64 = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error loading TLK pointer for this zone: %@", buf, 0xCu);
      }

      (*(*(a1 + 40) + 16))();
    }

    else if (v8)
    {
      v16 = [v8 currentKeyUUID];
      v17 = [*(a1 + 32) contextID];
      v18 = [*(a1 + 32) zoneID];
      v60 = 0;
      v19 = [CKKSKey fromDatabaseAnyState:v16 contextID:v17 zoneID:v18 error:&v60];
      v9 = v60;

      if (!v19 || v9)
      {
        v43 = [*(a1 + 32) zoneID];
        v44 = [v43 zoneName];
        v45 = sub_100019104(@"ckks-se", v44);

        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "No TLK for this zone", buf, 2u);
        }

        (*(*(a1 + 40) + 16))();
      }

      else
      {
        v20 = [CKKSExternalKey alloc];
        v21 = [*(a1 + 32) zoneID];
        v22 = [v21 zoneName];
        v53 = [v20 initWithViewName:v22 tlk:v19];

        v23 = [v8 currentKeyUUID];
        v24 = [*(a1 + 32) contextID];
        v25 = [*(a1 + 32) zoneID];
        v59 = 0;
        v26 = [CKKSTLKShareRecord allForUUID:v23 contextID:v24 zoneID:v25 error:&v59];
        v9 = v59;

        if (!v26 || v9)
        {
          v46 = [*(a1 + 32) zoneID];
          v47 = [v46 zoneName];
          v48 = sub_100019104(@"ckks-se", v47);

          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v64 = v9;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Unable to load TLKShares for zone: %@", buf, 0xCu);
          }

          (*(*(a1 + 40) + 16))();
          v39 = v53;
        }

        else
        {
          v50 = v19;
          v51 = v8;
          v52 = v4;
          v27 = a1;
          v28 = +[NSMutableArray array];
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v49 = v26;
          obj = v26;
          v29 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v56;
            do
            {
              for (i = 0; i != v30; i = i + 1)
              {
                if (*v56 != v31)
                {
                  objc_enumerationMutation(obj);
                }

                v33 = *(*(&v55 + 1) + 8 * i);
                v34 = [CKKSExternalTLKShare alloc];
                v35 = [*(v27 + 32) zoneID];
                v36 = [v35 zoneName];
                v37 = [v33 share];
                v38 = [v34 initWithViewName:v36 tlkShare:v37];

                [v28 addObject:v38];
              }

              v30 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
            }

            while (v30);
          }

          v39 = v53;
          (*(*(v27 + 40) + 16))();

          v8 = v51;
          v4 = v52;
          v19 = v50;
          v9 = 0;
          v26 = v49;
        }
      }
    }

    else
    {
      v40 = [*(a1 + 32) zoneID];
      v41 = [v40 zoneName];
      v42 = sub_100019104(@"ckks-se", v41);

      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "No TLK pointer for this zone", buf, 2u);
      }

      (*(*(a1 + 40) + 16))();
      v9 = 0;
    }
  }

  else
  {
    v9 = [NSError errorWithDomain:@"CKKSErrorDomain" code:66 description:@"Initial fetch results not present cannot provide accurate answer about TLK state"];;
    v13 = [*(a1 + 32) zoneID];
    v14 = [v13 zoneName];
    v15 = sub_100019104(@"ckks-se", v14);

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v64 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Haven't successfully completed a fetch for this zone; returning %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001E7F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001E7FA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [*(a1 + 32) error];

  if (v3)
  {
    v4 = [*(a1 + 40) zoneID];
    v5 = [v4 zoneName];
    v6 = sub_100019104(@"ckks-se", v5);

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) error];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error loading TLK pointer for this zone: %@", &v10, 0xCu);
    }

    v8 = *(a1 + 48);
    v9 = [*(a1 + 32) error];
    (*(v8 + 16))(v8, 0, 0, 0, v9);
  }

  else
  {
    [WeakRetained loadKeys:*(a1 + 40) reply:*(a1 + 48)];
  }
}

void sub_1001E8534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001E8560(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 9);
  v5 = [WeakRetained databaseProvider];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001E86B8;
  v7[3] = &unk_100344738;
  v8 = a1[4];
  v9 = a1[5];
  v6 = v3;
  v10 = v6;
  v11 = a1[6];
  v14 = a1[8];
  v12 = a1[7];
  objc_copyWeak(&v15, a1 + 9);
  v13 = WeakRetained;
  [v5 dispatchSyncWithReadOnlySQLTransaction:v7];

  objc_destroyWeak(&v15);
}

void sub_1001E86B8(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) zoneID];
  v5 = [*v2 contextID];
  v161 = 0;
  v127 = [v3 makeCKKSKey:v4 contextID:v5 error:&v161];
  v128 = v161;

  if (v127 && !v128)
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) contextID];
    v8 = [*(a1 + 40) zoneID];
    v160 = 0;
    v126 = [v6 makeFakeCKKSClassKey:@"classA" contextID:v7 zoneiD:v8 error:&v160];
    v9 = v160;

    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) contextID];
    v12 = [*(a1 + 40) zoneID];
    v159 = v9;
    v125 = [v10 makeFakeCKKSClassKey:@"classC" contextID:v11 zoneiD:v12 error:&v159];
    v128 = v159;

    if (!v126 || !v125)
    {
      v25 = [*(a1 + 40) zoneID];
      v26 = [v25 zoneName];
      v27 = sub_100019104(@"ckks-se", v26);

      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v164 = v128;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Unable to make fake class keys: %@", buf, 0xCu);
      }

      [*(a1 + 48) setError:v128];
      goto LABEL_80;
    }

    v13 = *(a1 + 56);
    if (v13)
    {
      v14 = [v13 uuid];
      v15 = [*(a1 + 40) contextID];
      v16 = [*(a1 + 40) zoneID];
      v158 = 0;
      v131 = [CKKSKey fromDatabase:v14 contextID:v15 zoneID:v16 error:&v158];
      v124 = v158;

      if (!v131 || v124)
      {
        v107 = [*(a1 + 40) zoneID];
        v108 = [v107 zoneName];
        v109 = sub_100019104(@"ckks-se", v108);

        if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v164 = v124;
          _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_ERROR, "Unable to load old TLK: %@", buf, 0xCu);
        }

        (*(*(a1 + 80) + 16))();
        goto LABEL_79;
      }

      v17 = *(a1 + 56);
      v18 = [*(a1 + 40) zoneID];
      v19 = [*(a1 + 40) contextID];
      v157 = 0;
      v124 = [v17 makeCKKSKey:v18 contextID:v19 error:&v157];
      v20 = v157;

      if (!v124 || v20)
      {
        v113 = [*(a1 + 40) zoneID];
        v114 = [v113 zoneName];
        v115 = sub_100019104(@"ckks-se", v114);

        if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v164 = v20;
          _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_ERROR, "Unable to convert old TLK: %@", buf, 0xCu);
        }

        [*(a1 + 48) setError:v20];
        goto LABEL_79;
      }

      v21 = [v131 storedCKRecord];
      [v124 setStoredCKRecord:v21];
    }

    else
    {
      v124 = 0;
    }

    v131 = +[NSMutableArray array];
    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v28 = *(a1 + 64);
    v29 = [v28 countByEnumeratingWithState:&v153 objects:v167 count:16];
    if (v29)
    {
      v30 = *v154;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v154 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v153 + 1) + 8 * i);
          v33 = [*(a1 + 40) zoneID];
          v34 = [*(a1 + 40) contextID];
          v35 = [v32 makeTLKShareRecord:v33 contextID:v34];

          [v131 addObject:v35];
        }

        v29 = [v28 countByEnumeratingWithState:&v153 objects:v167 count:16];
      }

      while (v29);
    }

    v36 = [*(a1 + 40) zoneID];
    v37 = [v36 zoneName];
    v38 = sub_100019104(@"ckks-se", v37);

    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v164 = v127;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Trying to set TLK %@", buf, 0xCu);
    }

    v39 = [*(a1 + 40) zoneID];
    v40 = [v39 zoneName];
    v41 = sub_100019104(@"ckks-se", v40);

    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v164 = v124;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Wrapped old TLK: %@", buf, 0xCu);
    }

    v42 = [*(a1 + 40) zoneID];
    v43 = [v42 zoneName];
    v44 = sub_100019104(@"ckks-se", v43);

    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v164 = v131;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "TLKShares: %@", buf, 0xCu);
    }

    v45 = [*(a1 + 40) contextID];
    v46 = [v127 uuid];
    v47 = [*(a1 + 40) zoneID];
    v152 = 0;
    v122 = [CKKSCurrentKeyPointer forKeyClass:@"tlk" contextID:v45 withKeyUUID:v46 zoneID:v47 error:&v152];
    v123 = v152;

    if (!v122 || v123)
    {
      v110 = [*(a1 + 40) zoneID];
      v111 = [v110 zoneName];
      v112 = sub_100019104(@"ckks-se", v111);

      if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v164 = v123;
        _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_ERROR, "Unable to create CKP: %@", buf, 0xCu);
      }

      [*(a1 + 48) setError:v123];
    }

    else
    {
      v48 = [*(a1 + 40) contextID];
      v49 = [v126 uuid];
      v50 = [*(a1 + 40) zoneID];
      v151 = 0;
      v120 = [CKKSCurrentKeyPointer forKeyClass:@"classA" contextID:v48 withKeyUUID:v49 zoneID:v50 error:&v151];
      v51 = v151;

      v52 = [*(a1 + 40) contextID];
      v53 = [v125 uuid];
      v54 = [*(a1 + 40) zoneID];
      v150 = v51;
      v119 = [CKKSCurrentKeyPointer forKeyClass:@"classC" contextID:v52 withKeyUUID:v53 zoneID:v54 error:&v150];
      v123 = v150;

      if (v120 && v119)
      {
        v55 = +[NSMutableArray array];
        v56 = [*(a1 + 40) zoneID];
        v57 = [v127 CKRecordWithZoneID:v56];
        [v55 addObject:v57];

        v58 = [*(a1 + 40) zoneID];
        v59 = [v126 CKRecordWithZoneID:v58];
        [v55 addObject:v59];

        v60 = [*(a1 + 40) zoneID];
        v61 = [v125 CKRecordWithZoneID:v60];
        [v55 addObject:v61];

        v62 = [*(a1 + 40) zoneID];
        v63 = [v122 CKRecordWithZoneID:v62];
        [v55 addObject:v63];

        v64 = [*(a1 + 40) zoneID];
        v65 = [v120 CKRecordWithZoneID:v64];
        [v55 addObject:v65];

        v66 = [*(a1 + 40) zoneID];
        v67 = [v119 CKRecordWithZoneID:v66];
        [v55 addObject:v67];

        if (v124)
        {
          v68 = [*(a1 + 40) zoneID];
          v69 = [v124 CKRecordWithZoneID:v68];
          [v55 addObject:v69];
        }

        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v70 = v131;
        v71 = [v70 countByEnumeratingWithState:&v146 objects:v166 count:16];
        if (v71)
        {
          v72 = *v147;
          do
          {
            for (j = 0; j != v71; j = j + 1)
            {
              if (*v147 != v72)
              {
                objc_enumerationMutation(v70);
              }

              v74 = *(*(&v146 + 1) + 8 * j);
              v75 = [*(a1 + 40) zoneID];
              v76 = [v74 CKRecordWithZoneID:v75];
              [v55 addObject:v76];
            }

            v71 = [v70 countByEnumeratingWithState:&v146 objects:v166 count:16];
          }

          while (v71);
        }

        v130 = +[NSMutableDictionary dictionary];
        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        v77 = v55;
        v78 = [v77 countByEnumeratingWithState:&v142 objects:v165 count:16];
        if (v78)
        {
          v79 = *v143;
          do
          {
            for (k = 0; k != v78; k = k + 1)
            {
              if (*v143 != v79)
              {
                objc_enumerationMutation(v77);
              }

              v81 = *(*(&v142 + 1) + 8 * k);
              v82 = [v81 recordID];
              [v130 setObject:v81 forKeyedSubscript:v82];
            }

            v78 = [v77 countByEnumeratingWithState:&v142 objects:v165 count:16];
          }

          while (v78);
        }

        v121 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:v77 recordIDsToDelete:&__NSArray0__struct];
        [v121 setAtomic:1];
        v83 = [v121 configuration];
        [v83 setIsCloudKitSupportOperation:1];

        [v121 setSavePolicy:0];
        v84 = [*(a1 + 40) zoneID];
        v85 = [v84 zoneName];
        v86 = sub_100019104(@"ckks-se", v85);

        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
        {
          v87 = [v121 qualityOfService];
          v88 = [v121 group];
          *buf = 67109378;
          *v164 = v87;
          *&v164[4] = 2112;
          *&v164[6] = v88;
          _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "QoS: %d; operation group is %@", buf, 0x12u);
        }

        v89 = [*(a1 + 40) zoneID];
        v90 = [v89 zoneName];
        v91 = sub_100019104(@"ckks-se", v90);

        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          v92 = [v77 count];
          *buf = 67109120;
          *v164 = v92;
          _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "Beginning upload for %d records", buf, 8u);
        }

        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        obj = v77;
        v93 = [obj countByEnumeratingWithState:&v138 objects:v162 count:16];
        if (v93)
        {
          v94 = *v139;
          do
          {
            for (m = 0; m != v93; m = m + 1)
            {
              if (*v139 != v94)
              {
                objc_enumerationMutation(obj);
              }

              v96 = *(*(&v138 + 1) + 8 * m);
              v97 = [v96 recordID];
              v98 = [v97 zoneID];
              v99 = [v98 zoneName];
              v100 = sub_100019104(@"ckks-se", v99);

              if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
              {
                v101 = [v96 recordID];
                *buf = 138412290;
                *v164 = v101;
                _os_log_debug_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEBUG, "Record to save: %@", buf, 0xCu);
              }
            }

            v93 = [obj countByEnumeratingWithState:&v138 objects:v162 count:16];
          }

          while (v93);
        }

        [v121 setPerRecordSaveBlock:&stru_1003446A0];
        v102 = [CKKSResultOperation named:@"wait-until-write-finished" withBlock:&stru_1003446C0];
        [*(a1 + 48) dependOnBeforeGroupFinished:v102];
        v132[0] = _NSConcreteStackBlock;
        v132[1] = 3221225472;
        v132[2] = sub_1001E9924;
        v132[3] = &unk_100344710;
        objc_copyWeak(&v137, (a1 + 88));
        v133 = *(a1 + 40);
        v103 = v130;
        v134 = v103;
        v135 = *(a1 + 48);
        v104 = v102;
        v136 = v104;
        [v121 setModifyRecordsCompletionBlock:v132];
        v105 = [*(a1 + 72) operationDependencies];
        v106 = [v105 ckdatabase];
        [v106 addOperation:v121];

        objc_destroyWeak(&v137);
      }

      else
      {
        v116 = [*(a1 + 40) zoneID];
        v117 = [v116 zoneName];
        v118 = sub_100019104(@"ckks-se", v117);

        if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v164 = v123;
          _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_ERROR, "Unable to create class CKP: %@", buf, 0xCu);
        }

        [*(a1 + 48) setError:v123];
      }
    }

LABEL_79:
LABEL_80:

    goto LABEL_81;
  }

  v22 = [*(a1 + 40) zoneID];
  v23 = [v22 zoneName];
  v24 = sub_100019104(@"ckks-se", v23);

  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *v164 = v128;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Unable to make TLK: %@", buf, 0xCu);
  }

  [*(a1 + 48) setError:v128];
LABEL_81:
}

void sub_1001E9924(id *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v9 = [WeakRetained databaseProvider];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001E9A5C;
  v12[3] = &unk_1003446E8;
  v13 = v7;
  v14 = a1[4];
  v15 = WeakRetained;
  v16 = a1[5];
  v17 = a1[6];
  v18 = a1[7];
  v19 = v6;
  v10 = v6;
  v11 = v7;
  [v9 dispatchSyncWithSQLTransaction:v12];
}

uint64_t sub_1001E9A5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) zoneID];
  v4 = [v3 zoneName];
  v5 = sub_100019104(@"ckks-se", v4);

  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "error proposing new TLK: %@", buf, 0xCu);
    }

    v7 = [*(a1 + 48) operationDependencies];
    [v7 intransactionCKWriteFailed:*(a1 + 32) attemptedRecordsChanged:*(a1 + 56)];

    [*(a1 + 64) setError:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Completed uploading new TLK!", buf, 2u);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = *(a1 + 80);
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          v14 = [*(a1 + 48) operationDependencies];
          [v14 intransactionCKRecordChanged:v13 resync:0];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  [*(a1 + 64) runBeforeGroupFinished:{*(a1 + 72), v16}];
  return 1;
}

void sub_1001E9C74(id a1, CKRecordID *a2, CKRecord *a3, NSError *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [(CKRecordID *)v6 zoneID];
  v10 = [v9 zoneName];
  v11 = sub_100019104(@"ckks-se", v10);

  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "error on row: %@ %@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(CKRecordID *)v6 recordName];
    v13 = [(CKRecord *)v7 recordChangeTag];
    v14 = 138412546;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Record upload successful for %@ (%@)", &v14, 0x16u);
  }
}

void sub_1001ED5A8(id a1)
{
  v1 = sub_100006274("engine");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Performing keychain backup after unlock because backing up while locked failed", buf, 2u);
  }

  v2 = sub_100245E3C();
  v3 = v2;
  if (v2)
  {
    [v2 performTransaction:&stru_1003448A8];
  }

  else
  {
    v4 = sub_100006274("ckks");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to get account object", v5, 2u);
    }
  }
}

void sub_1001ED68C(id a1, SOSAccountTransaction *a2)
{
  cf = 0;
  v2 = sub_100216A18(a2, &cf);
  if (v2)
  {
    v3 = sub_100006274("engine");
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v8 = v2;
    v4 = "SOSEnsureBackup: SOS made a backup of views: %@";
  }

  else
  {
    v3 = sub_100006274("SecError");
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v8 = cf;
    v4 = "engine: SOSEnsureBackup: encountered an error while making backup (%@)";
  }

  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, buf, 0xCu);
LABEL_7:

  v5 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v5);
  }
}

void sub_1001ED7A8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10039E2C8;
  qword_10039E2C8 = v1;

  qword_10039E2D0 = +[CKKSLockStateTracker globalTracker];

  _objc_release_x1();
}

void sub_1001F005C(id a1)
{
  v1 = CKAcceptableValueClasses();
  v2 = [NSMutableSet setWithSet:v1];
  v3 = qword_10039E2D8;
  qword_10039E2D8 = v2;

  v4 = qword_10039E2D8;
  v5 = +[SecXPCHelper safeErrorClasses];
  [v4 unionSet:v5];
}

uint64_t sub_1001F3078(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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
      if ((v12 >> 3) <= 200)
      {
        break;
      }

      if (v13 <= 202)
      {
        if (v13 == 201)
        {
          v22 = PBReaderReadString();
          v23 = 16;
          goto LABEL_50;
        }

        if (v13 == 202)
        {
          v22 = PBReaderReadString();
          v23 = 32;
          goto LABEL_50;
        }

        goto LABEL_53;
      }

      if (v13 == 203)
      {
        v22 = PBReaderReadString();
        v23 = 24;
        goto LABEL_50;
      }

      if (v13 == 301)
      {
        v22 = PBReaderReadString();
        v23 = 72;
        goto LABEL_50;
      }

      if (v13 != 302)
      {
        goto LABEL_53;
      }

      v21 = objc_alloc_init(SECC2MPInternalTestConfig);
      [a1 addInternalTestConfig:v21];
      v27[0] = 0xAAAAAAAAAAAAAAAALL;
      v27[1] = 0xAAAAAAAAAAAAAAAALL;
      if (!PBReaderPlaceMark() || !sub_100143FE4(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_51:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 102)
    {
      if (v13 == 101)
      {
        v22 = PBReaderReadString();
        v23 = 48;
        goto LABEL_50;
      }

      if (v13 == 102)
      {
        v22 = PBReaderReadString();
        v23 = 56;
LABEL_50:
        v24 = *&a1[v23];
        *&a1[v23] = v22;

        goto LABEL_51;
      }
    }

    else
    {
      switch(v13)
      {
        case 'g':
          v22 = PBReaderReadString();
          v23 = 64;
          goto LABEL_50;
        case 'h':
          v22 = PBReaderReadString();
          v23 = 40;
          goto LABEL_50;
        case 'i':
          v14 = 0;
          v15 = 0;
          v16 = 0;
          a1[84] |= 1u;
          while (1)
          {
            LOBYTE(v27[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v27[0] & 0x7F) << v14;
            if ((v27[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_56;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_56:
          a1[80] = v20;
          goto LABEL_51;
      }
    }

LABEL_53:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_51;
  }

  return [a2 hasError] ^ 1;
}

void sub_1001F3AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001F3B18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained operationDependencies];
  v3 = [v2 ckks];
  v4 = [v3 zoneChangeFetcher];
  v5 = [v4 inflightFetch];
  [WeakRetained addNullableSuccessDependency:v5];

  v6 = sub_100006274("octagon-ckks");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [WeakRetained operationDependencies];
    v8 = [v7 ckks];
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Waiting for CKKS Priority view download for %@", &v12, 0xCu);
  }

  v9 = [WeakRetained operationDependencies];
  v10 = [v9 ckks];
  v11 = [v10 rpcProcessIncomingQueue:0 errorOnClassAFailure:0];
  [WeakRetained addSuccessDependency:v11];
}

uint64_t sub_1001F41D0(uint64_t a1, void *a2)
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
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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
      if ((v12 >> 3) == 101)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v27 = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v27 & 0x7F) << v17;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            LOBYTE(v23) = 0;
            goto LABEL_35;
          }
        }

        v23 = (v19 != 0) & ~[a2 hasError];
LABEL_35:
        *(a1 + 24) = v23;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 16;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_36;
          }

          v14 = PBReaderReadString();
          v15 = 8;
        }

        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_36:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1001F5218(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v3 = [a1[4] error];

    if (v3)
    {
      v4 = sub_100019104(@"ckksfetcher", 0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = [a1[4] error];
        *buf = 138412290;
        v30 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Interrogating clients about fetch error: %@", buf, 0xCu);
      }

      v18 = WeakRetained;
      v6 = [WeakRetained strongClientMap];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v7 = [a1[4] fetchedZoneIDs];
      v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        v11 = *v25;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v25 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v24 + 1) + 8 * i);
            v14 = [v6 objectForKey:v13];
            if (v14)
            {
              v15 = [a1[4] error];
              v10 |= [v14 shouldRetryAfterFetchError:v15 zoneID:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v9);
      }

      else
      {
        LOBYTE(v10) = 0;
      }

      WeakRetained = v18;
    }

    else
    {
      LOBYTE(v10) = 0;
    }

    v17 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001F5528;
    block[3] = &unk_100344948;
    block[4] = WeakRetained;
    v20 = a1[4];
    v23 = v10 & 1;
    v21 = a1[5];
    v22 = a1[6];
    dispatch_sync(v17, block);
  }

  else
  {
    v16 = sub_100019104(@"ckksfetcher", 0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Received a null self pointer; strange.", buf, 2u);
    }
  }
}

void sub_1001F5528(uint64_t a1)
{
  v2 = [*(a1 + 40) error];
  [*(a1 + 32) setLastCKFetchError:v2];

  v3 = [*(a1 + 40) error];

  if (v3)
  {
    if ((*(a1 + 64) & 1) == 0)
    {
      v18 = sub_100019104(@"ckksfetcher", 0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [*(a1 + 40) error];
        *buf = 138412290;
        v33 = *&v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "All clients thought %@ is a fatal error. Not restarting fetch.", buf, 0xCu);
      }

      goto LABEL_25;
    }

    v4 = [*(a1 + 40) error];
    CKRetryAfterSecondsForError();
    v6 = v5;

    v7 = sub_100019104(@"ckksfetcher", 0);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6 == 0.0)
    {
      if (v8)
      {
        v20 = [*(a1 + 40) error];
        *buf = 138412290;
        v33 = *&v20;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetch failed with error, restarting soon: %@", buf, 0xCu);
      }
    }

    else
    {
      if (v8)
      {
        v9 = [*(a1 + 40) error];
        *buf = 134218242;
        v33 = v6;
        v34 = 2112;
        v35 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetch failed with rate-limiting error, restarting in %.1f seconds: %@", buf, 0x16u);
      }

      v7 = [*(a1 + 32) fetchScheduler];
      [v7 waitUntil:(v6 * 1000000000.0)];
    }

    v21 = [*(a1 + 32) currentFetchReasons];
    [v21 unionSet:*(a1 + 48)];

    v22 = [*(a1 + 32) apnsPushes];
    [v22 unionSet:*(a1 + 56)];

    v23 = [*(a1 + 32) reachabilityTracker];
    v24 = [*(a1 + 40) error];
    v25 = [v23 isNetworkError:v24];

    if (v25)
    {
      v26 = @"network";
    }

    else
    {
      v26 = @"fetchfailed";
    }

    v27 = [*(a1 + 32) currentFetchReasons];
    [v27 addObject:v26];

    [*(a1 + 32) setNewRequests:1];
LABEL_24:
    v18 = [*(a1 + 32) fetchScheduler];
    [v18 trigger];
LABEL_25:

    return;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = [*(a1 + 32) inflightFetchDependencies];
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      v14 = 0;
      do
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * v14);
        v16 = [*(a1 + 32) operationQueue];
        [v16 addOperation:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v12);
  }

  v17 = [*(a1 + 32) inflightFetchDependencies];
  [v17 removeAllObjects];

  [*(a1 + 32) setCurrentFetch:0];
  if ([*(a1 + 32) newRequests])
  {
    goto LABEL_24;
  }
}

void sub_1001F5C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F5C54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1001F5C6C(uint64_t a1)
{
  if (([*(a1 + 32) newRequests] & 1) != 0 || (objc_msgSend(*(a1 + 32), "inflightFetchDependency"), v2 = objc_claimAutoreleasedReturnValue(), v2, !v2))
  {
    v3 = [*(a1 + 32) successfulFetchDependency];
  }

  else
  {
    v3 = [*(a1 + 32) inflightFetchDependency];
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

void sub_1001F5E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001F5E30(uint64_t a1)
{
  v2 = [*(a1 + 32) successfulFetchDependency];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1 + 32) setNewRequests:1];
  v5 = [*(a1 + 32) currentFetchReasons];
  [v5 unionSet:*(a1 + 40)];

  v6 = [*(a1 + 32) fetchScheduler];
  [v6 trigger];
}

void sub_1001F619C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) apnsPushes];
    [v2 addObject:*(a1 + 32)];

    if ([*(a1 + 32) ckksPushTracingEnabled])
    {
      v3 = sub_100019104(@"ckksfetch", 0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 32);
        v15 = 138412290;
        v16 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Submitting initial CKEventMetric due to notification %@", &v15, 0xCu);
      }

      v5 = [[CKEventMetric alloc] initWithEventName:@"APNSPushMetrics"];
      [v5 setIsPushTriggerFired:1];
      v6 = [*(a1 + 32) ckksPushTracingUUID];
      [v5 setObject:v6 forKeyedSubscript:@"push_token_uuid"];

      v7 = [*(a1 + 32) ckksPushReceivedDate];
      [v5 setObject:v7 forKeyedSubscript:@"push_received_date"];

      [v5 setObject:@"CKKS APNS Push Received" forKeyedSubscript:@"push_event_name"];
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v8 = @"not-ready";
      }

      else
      {
        v8 = @"ready";
      }

      [v5 setObject:v8 forKeyedSubscript:@"zones_status"];
      v9 = [*(a1 + 40) container];
      [v9 submitEventMetric:v5];

      v10 = [[SecEventMetric alloc] initWithEventName:@"APNSPushMetrics"];
      v11 = [*(a1 + 32) ckksPushTracingUUID];
      [(SecEventMetric *)v10 setObject:v11 forKeyedSubscript:@"push_token_uuid"];

      v12 = [*(a1 + 32) ckksPushReceivedDate];
      [(SecEventMetric *)v10 setObject:v12 forKeyedSubscript:@"push_received_date"];

      [(SecEventMetric *)v10 setObject:@"CKKS APNS Push Received-webtunnel" forKeyedSubscript:@"push_event_name"];
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v13 = @"not-ready";
      }

      else
      {
        v13 = @"ready";
      }

      [v5 setObject:v13 forKeyedSubscript:@"zones_status"];
      v14 = +[SecMetrics managerObject];
      [v14 submitEvent:v10];
    }
  }
}

void sub_1001F6C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001F6C2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained maybeCreateNewFetch];
}

void sub_1001F7770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001F779C(uint64_t a1)
{
  v2 = sub_100006274("upgr-phase3");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CKKSNFS triggered!", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [[OctagonPendingFlag alloc] initWithFlag:@"schedule_pref_upgrade" conditions:1];
  v5 = [WeakRetained stateMachine];
  [v5 handlePendingFlag:v4];
}

void sub_1001F7C54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1001F7C78(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [v7 walrus];
  v10 = [v7 webAccess];

  v11 = [WeakRetained settings];
  v12 = [v11 walrus];
  if (!v12)
  {

    goto LABEL_6;
  }

  v13 = v12;
  if (v9)
  {
    v14 = [v9 value];
    v15 = [WeakRetained settings];
    v16 = [v15 walrus];
    v17 = v6;
    v18 = [v16 enabled];

    v19 = v14 == v18;
    v6 = v17;
    if (!v19)
    {
      goto LABEL_8;
    }

LABEL_6:
    v20 = 0;
    goto LABEL_19;
  }

LABEL_8:
  v21 = sub_100006274("SecError");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [WeakRetained settings];
    v23 = [v22 walrus];
    if ([v23 enabled])
    {
      v24 = @"ON";
    }

    else
    {
      v24 = @"OFF";
    }

    if (v9)
    {
      if ([v9 value])
      {
        v25 = @"ON";
      }

      else
      {
        v25 = @"OFF";
      }
    }

    else
    {
      v25 = @"none";
    }

    *buf = 138412802;
    v52 = v24;
    v53 = 2112;
    v54 = v25;
    v55 = 2112;
    v56 = v6;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "octagon: error setting walrus: Intended value: %@, final value: %@, error: %@", buf, 0x20u);
  }

  v20 = [NSError errorWithDomain:@"com.apple.security.octagon" code:51 description:@"Failed to set walrus setting" underlying:v6];
LABEL_19:
  v26 = [WeakRetained settings];
  v27 = [v26 webAccess];
  if (!v27)
  {

    if (v20)
    {
LABEL_25:
      v35 = 0;
LABEL_40:
      [WeakRetained setError:v20];
      v46 = [WeakRetained finishOp];
      [WeakRetained runBeforeGroupFinished:v46];

      goto LABEL_44;
    }

LABEL_43:
    v48 = [WeakRetained intendedState];
    [WeakRetained setNextState:v48];

    v20 = [WeakRetained finishOp];
    [WeakRetained runBeforeGroupFinished:v20];
    goto LABEL_44;
  }

  v28 = v27;
  if (v10)
  {
    v49 = [v10 value];
    v29 = [WeakRetained settings];
    [v29 webAccess];
    v30 = v9;
    v31 = v10;
    v33 = v32 = v6;
    v34 = [v33 enabled];

    v6 = v32;
    v10 = v31;
    v9 = v30;

    if (v49 == v34)
    {
      if (!v20)
      {
        goto LABEL_43;
      }

      goto LABEL_25;
    }
  }

  else
  {
  }

  v50 = v10;
  v36 = sub_100006274("SecError");
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [WeakRetained settings];
    v38 = [v37 webAccess];
    v39 = v6;
    if ([v38 enabled])
    {
      v40 = @"ON";
    }

    else
    {
      v40 = @"OFF";
    }

    v41 = [v50 value];
    *buf = 138412802;
    if (v41)
    {
      v42 = @"ON";
    }

    else
    {
      v42 = @"OFF";
    }

    v52 = v40;
    v6 = v39;
    v53 = 2112;
    v54 = v42;
    v55 = 2112;
    v56 = v39;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "octagon: Error setting web access: Intended value: %@, final value: %@, error: %@", buf, 0x20u);
  }

  v43 = [NSError errorWithDomain:@"com.apple.security.octagon" code:52 description:@"Failed to set web access setting" underlying:v6];
  v35 = v43;
  if (!v20 || !v43)
  {
    if (v20)
    {
      v10 = v50;
      goto LABEL_40;
    }

    v10 = v50;
    if (v43)
    {
      [WeakRetained setError:v43];
      v47 = [WeakRetained finishOp];
      [WeakRetained runBeforeGroupFinished:v47];

      v20 = v35;
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v44 = [NSError errorWithDomain:@"com.apple.security.octagon" code:51 description:@"Failed to set walrus setting" underlying:v43];

  [WeakRetained setError:v44];
  v45 = [WeakRetained finishOp];
  [WeakRetained runBeforeGroupFinished:v45];

  v20 = v44;
  v10 = v50;
LABEL_44:
}

void sub_1001F8720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F8768(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001F8780(uint64_t a1)
{
  v3 = +[SecDbKeychainMetadataKeyStore cachingEnabled];
  if (v3)
  {
    v4 = *(*(a1 + 32) + 24);
    v1 = [NSNumber numberWithInt:*(a1 + 80)];
    v5 = [v4 objectForKeyedSubscript:v1];
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
  if (v3)
  {
  }

  v6 = *(a1 + 48);
  if (!*(*(v6 + 8) + 40))
  {
    v7 = *(*(a1 + 64) + 8);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001F88E0;
    v12[3] = &unk_100344AA8;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v14 = v6;
    v12[4] = v8;
    v16 = *(a1 + 80);
    v10 = v9;
    v17 = *(a1 + 88);
    v11 = *(a1 + 72);
    v13 = v10;
    v15 = v11;
    v18 = v3;
    *(*(*(a1 + 56) + 8) + 24) &= sub_100008A70(1, 0, 0, v7 + 24, v12);
  }
}

BOOL sub_1001F88E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  v5 = *(a1 + 68);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 72);
  v9 = *(*(a1 + 56) + 8);
  obj = *(v9 + 40);
  v10 = [v6 fetchKeyForClass:v4 fromDb:a2 keybag:v5 specifier:v7 allowWrites:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v13 = [*(*(*(a1 + 56) + 8) + 40) domain];
    if ([v13 isEqualToString:kCFErrorDomainOSStatus])
    {
      v14 = [*(*(*(a1 + 56) + 8) + 40) code];

      if (v14 == -25308)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001F8E00;
        block[3] = &unk_100345B48;
        block[4] = *(a1 + 56);
        if (qword_10039E308 != -1)
        {
          dispatch_once(&qword_10039E308, block);
        }

        dispatch_source_merge_data(qword_10039E300, 1uLL);
        return *(*(*(a1 + 48) + 8) + 40) != 0;
      }
    }

    else
    {
    }
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
LABEL_9:
    v15 = *(*(*(a1 + 48) + 8) + 40);
    if (v15)
    {
      if (*(a1 + 73) == 1)
      {
        v16 = *(*(a1 + 32) + 24);
        v17 = [NSNumber numberWithInt:*(a1 + 64)];
        [v16 setObject:v15 forKeyedSubscript:v17];
      }
    }

    else
    {
      v35 = sub_100006274("SecError");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138412290;
        v51[0] = v36;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "SecDbMetadataKeyStore: scary error encountered: %@", buf, 0xCu);
      }
    }

    return *(*(*(a1 + 48) + 8) + 40) != 0;
  }

  if (*(a1 + 72))
  {
    v18 = *(*(*(a1 + 56) + 8) + 40);
    if (v18)
    {
      v19 = [v18 domain];
      if (([v19 isEqualToString:NSOSStatusErrorDomain] & 1) == 0)
      {

        goto LABEL_9;
      }

      v20 = [*(*(*(a1 + 56) + 8) + 40) code];

      if (v20 != -26275)
      {
        goto LABEL_9;
      }
    }

    v21 = sub_100006274("SecWarning");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [*(*(*(a1 + 56) + 8) + 40) code];
      *buf = 134217984;
      v51[0] = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "SecDbMetadataKeyStore: unable to use key (%ld), will attempt to create new one", buf, 0xCu);
    }

    v23 = *(*(a1 + 56) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = 0;

    v25 = *(a1 + 64);
    v26 = *(a1 + 68);
    v27 = *(a1 + 32);
    v28 = *(a1 + 40);
    v29 = *(*(a1 + 56) + 8);
    v45 = *(v29 + 40);
    v30 = [v27 newKeyForKeyclass:v25 withKeybag:v26 keySpecifier:v28 database:a2 error:&v45];
    objc_storeStrong((v29 + 40), v45);
    v31 = *(*(a1 + 48) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      return *(*(*(a1 + 48) + 8) + 40) != 0;
    }

    v33 = sub_100006274("SecError");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412290;
      v51[0] = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "SecDbMetadataKeyStore: unable to create or save new key: %@", buf, 0xCu);
    }
  }

  else
  {
    v38 = sub_100006274("SecWarning");
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = *(a1 + 64);
      v40 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 67109378;
      LODWORD(v51[0]) = v39;
      WORD2(v51[0]) = 2112;
      *(v51 + 6) = v40;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "SecDbMetadataKeyStore: Unable to load metadatakey for class %d from disk (%@) and not allowed to create new one", buf, 0x12u);
    }

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v48 = NSLocalizedDescriptionKey;
      v49 = @"Unable to find a suitable metadata key and not permitted to create one";
      v41 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v42 = [NSError errorWithDomain:kCFErrorDomainOSStatus code:-26275 userInfo:v41];
      v43 = *(*(a1 + 56) + 8);
      v44 = *(v43 + 40);
      *(v43 + 40) = v42;
    }
  }

  return 0;
}

void sub_1001F8E00(uint64_t a1)
{
  v2 = sub_100088500("keychainlockedlogmessage", 1);
  v3 = qword_10039E300;
  qword_10039E300 = v2;

  v4 = qword_10039E300;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1001F8EB8;
  aBlock[3] = &unk_100345B48;
  aBlock[4] = *(a1 + 32);
  context = dispatch_get_context(qword_10039E300);
  context[2] = _Block_copy(aBlock);
  dispatch_activate(v4);
}

void sub_1001F8EB8(uint64_t a1)
{
  v2 = sub_100006274("SecError");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(*(a1 + 32) + 8) + 40) code];
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: cannot decrypt metadata key because the keychain is locked (%ld)", &v4, 0xCu);
  }
}

void sub_1001F9394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

BOOL sub_1001F93D0(uint64_t a1, sqlite3_stmt *a2)
{
  *(*(*(a1 + 32) + 8) + 24) &= sub_10000CBCC(a2, 1, [NSNumber numberWithInt:*(a1 + 80)], (*(*(a1 + 40) + 8) + 24));
  v4 = *(*(a1 + 40) + 8);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001F94BC;
  v8[3] = &unk_100344A58;
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v10 = a2;
  v11 = v6;
  v9 = *(a1 + 48);
  result = sub_100015DAC(v5, a2, (v4 + 24), v8);
  *(*(*(a1 + 32) + 8) + 24) &= result;
  return result;
}

uint64_t sub_1001F94BC(uint64_t a1)
{
  v2 = [NSData alloc];
  v3 = sqlite3_column_blob(*(a1 + 48), 0);
  v4 = [v2 initWithBytes:v3 length:{sqlite3_column_bytes(*(a1 + 48), 0)}];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  result = sqlite3_column_int(*(a1 + 48), 1);
  **(a1 + 56) = result;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

void sub_1001F9890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

BOOL sub_1001F98BC(uint64_t a1, sqlite3_stmt *a2)
{
  *(*(*(a1 + 40) + 8) + 24) &= sub_10000CBCC(a2, 1, [NSNumber numberWithInt:*(a1 + 64)], (*(*(a1 + 48) + 8) + 24));
  *(*(*(a1 + 40) + 8) + 24) &= sub_10000CBCC(a2, 2, [NSNumber numberWithInt:*(a1 + 68)], (*(*(a1 + 48) + 8) + 24));
  *(*(*(a1 + 40) + 8) + 24) &= sub_10000CE9C(a2, 3, [*(a1 + 32) bytes], objc_msgSend(*(a1 + 32), "length"), (*(*(a1 + 48) + 8) + 24));
  result = sub_100015DAC(*(a1 + 56), a2, (*(*(a1 + 48) + 8) + 24), 0);
  *(*(*(a1 + 40) + 8) + 24) &= result;
  return result;
}

void sub_1001FA19C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001FA1B8(id a1)
{
  qword_10039E2F0 = dispatch_queue_create("metadata_store", 0);

  _objc_release_x1();
}

void sub_1001FA254(id a1)
{
  v1 = qword_10039E2E8;
  if (qword_10039E2E8)
  {
    [qword_10039E2E8 dropAllKeys];
    v1 = qword_10039E2E8;
  }

  qword_10039E2E8 = 0;
}

void sub_1001FA810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FA830(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001FA848(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_100006274("octagon-escrow-repair");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "failed to fetch PET: %@", &v10, 0xCu);
    }
  }

  else
  {
    v7 = [a2 objectForKeyedSubscript:AKAuthenticationPasswordKey];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1001FB6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak((v33 - 152));
  _Unwind_Resume(a1);
}

void sub_1001FB710(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained error];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [WeakRetained error];
    [v3 sendMetricWithResult:0 error:v4];

    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = [WeakRetained error];
      [v5 sendMetricWithResult:0 error:v6];
    }
  }

  else
  {
    [*(a1 + 32) sendMetricWithResult:1 error:0];
    v7 = *(a1 + 40);
    if (v7)
    {
      [v7 sendMetricWithResult:1 error:0];
    }
  }
}

void sub_1001FB7F0(uint64_t a1)
{
  v2 = [*(a1 + 32) deps];
  v3 = [v2 stateHolder];
  v4 = +[NSDate now];
  v25 = 0;
  v5 = [v3 persistLastEscrowRepairAttempted:v4 error:&v25];
  v6 = v25;

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = sub_100006274("octagon-escrow-repair");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "failed to persist escrow repair attempt date: %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) deleteRecord:*(a1 + 40)];
  v9 = *(a1 + 32);
  v10 = [*(a1 + 48) externalizedContext];
  v11 = *(a1 + 56);
  v24 = 0;
  v12 = [v9 enableWithPasscodeStashSecret:v10 account:v11 error:&v24];
  v13 = v24;

  if (v13)
  {
    if ([*(a1 + 32) shouldIgnoreError:v13])
    {
      v14 = sub_100006274("octagon-escrow-repair");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "resetting last escrow repair attempt, ignored error: %@", buf, 0xCu);
      }

      v15 = [*(a1 + 32) deps];
      v16 = [v15 stateHolder];
      v23 = 0;
      v17 = [v16 clearLastEscrowRepairAttempt:&v23];
      v18 = v23;

      if (!v17 || v18)
      {
        v19 = sub_100006274("SecError");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v29 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "octagon-escrow-repair: failed to clear last escrow repair attempt: %@", buf, 0xCu);
        }
      }

      v26 = NSUnderlyingErrorKey;
      v27 = v13;
      v20 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v21 = [NSError errorWithDomain:@"com.apple.security.octagon" code:91 userInfo:v20];

      [*(a1 + 32) setError:v21];
      goto LABEL_22;
    }
  }

  else if (v12)
  {
    goto LABEL_22;
  }

  v22 = sub_100006274("SecError");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v13;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "octagon-escrow-repair: failed to enable with passcode stash secret: %@", buf, 0xCu);
  }

  [*(a1 + 32) setError:v13];
LABEL_22:
}

void sub_1001FC184(uint64_t a1, void *a2, void *a3)
{
  v15 = a3;
  v5 = a2;
  v6 = objc_alloc_init(SECC2MPGenericEventMetric);
  [(SECC2MPGenericEventMetric *)v6 setKey:v5];

  v7 = objc_alloc_init(SECC2MPGenericEventMetricValue);
  [(SECC2MPGenericEventMetric *)v6 setValue:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [*(a1 + 32) generateError:v15];
    v9 = [(SECC2MPGenericEventMetric *)v6 value];
    [v9 setErrorValue:v8];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = *(a1 + 32);
      [v15 timeIntervalSinceReferenceDate];
      v11 = [v10 convertTimeIntervalToServerTime:?];
      v8 = [(SECC2MPGenericEventMetric *)v6 value];
      [v8 setDateValue:v11];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v15 doubleValue];
        v13 = v12;
        v8 = [(SECC2MPGenericEventMetric *)v6 value];
        [v8 setDoubleValue:v13];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_11;
        }

        v8 = [(SECC2MPGenericEventMetric *)v6 value];
        [v8 setStringValue:v15];
      }
    }
  }

  v14 = [(SECC2MPGenericEventMetric *)v6 value];

  if (v14)
  {
    [*(a1 + 40) addMetric:v6];
  }

LABEL_11:
}

void sub_1001FC82C(id a1)
{
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v1 = [NSArray arrayWithObjects:v4 count:4];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_10039E318;
  qword_10039E318 = v2;
}

void sub_1001FEC60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [WeakRetained monitors];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) accountStateUpdated:*(a1 + 32) from:*(a1 + 40)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

OTAccountMetadataClassC *__cdecl sub_1001FEF3C(id a1, OTAccountMetadataClassC *a2)
{
  v2 = a2;
  [(OTAccountMetadataClassC *)v2 setLastEscrowRepairAttempted:0];

  return v2;
}

id sub_1001FEFE8(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setEscrowRepairAttemptVersion:*(a1 + 32)];

  return v3;
}

id sub_1001FF0D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 timeIntervalSince1970];
    v6 = (v5 * 1000.0);
  }

  else
  {
    v6 = 0;
  }

  [v3 setLastEscrowRepairAttempted:v6];
  [v3 setEscrowRepairAttemptVersion:1];

  return v3;
}

id sub_1001FF1F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 timeIntervalSince1970];
    v6 = (v5 * 1000.0);
  }

  else
  {
    v6 = 0;
  }

  [v3 setLastEscrowRepairTriggered:v6];

  return v3;
}

id sub_1001FF2CC(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSendingMetricsPermitted:*(a1 + 32)];

  return v3;
}

id sub_1001FF410(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAttemptedJoin:*(a1 + 32)];

  return v3;
}

id sub_1001FF500(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) timeIntervalSince1970];
  [v3 setLastHealthCheckup:(v4 * 1000.0)];

  return v3;
}

void sub_1001FF780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FF7BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001FF7D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 56) + 8);
  obj = *(v3 + 40);
  v4 = [v2 _onqueueLoadOrCreateAccountMetadata:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 48) + 8) + 40);
  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = [v7 copy];
    v10 = (*(v8 + 16))(v8, v9);
    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = *(*(*(a1 + 64) + 8) + 40);
    if (v13)
    {
      v14 = [*(a1 + 32) containerName];
      v15 = [*(a1 + 32) contextID];
      v16 = [*(a1 + 32) personaAdapter];
      v17 = [*(a1 + 32) activeAccount];
      v18 = [v17 personaUniqueString];
      v19 = *(*(a1 + 56) + 8);
      v24 = *(v19 + 40);
      v20 = [v13 saveToKeychainForContainer:v14 contextID:v15 personaAdapter:v16 personaUniqueString:v18 error:&v24];
      objc_storeStrong((v19 + 40), v24);

      v21 = *(*(a1 + 72) + 8);
      if (!v20)
      {
        *(v21 + 24) = 0;
        v22 = *(*(a1 + 64) + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = 0;

        return;
      }
    }

    else
    {
      v21 = *(*(a1 + 72) + 8);
    }

    *(v21 + 24) = 1;
  }
}

id sub_1001FF9F4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTrustState:*(a1 + 32)];

  return v3;
}

id sub_1001FFAE4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPeerID:*(a1 + 32)];

  return v3;
}

void sub_100200010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100200034(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _onqueueLoadOrCreateAccountMetadata:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t sub_100200E68(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
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
        break;
      }

      v13 = (v12 >> 3) - 102;
      if (v13 >= 4)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = (&off_100344C80)[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

xpc_object_t sub_100201208(xpc_object_t message, CFTypeRef *a2)
{
  if (qword_10039E328 != -1)
  {
    dispatch_once(&qword_10039E328, &stru_100344CC0);
  }

  v4 = 0;
  v5 = qword_10039E330;
  v6 = 1;
  v7 = -3;
  do
  {
    if ((v6 & 1) == 0)
    {
      xpc_release(v4);
    }

    v8 = xpc_connection_send_message_with_reply_sync(v5, message);
    v6 = 0;
    v9 = v8 != &_xpc_error_connection_interrupted || v7++ == 0;
    v4 = &_xpc_error_connection_interrupted;
  }

  while (!v9);
  if (xpc_get_type(v8) == &_xpc_type_error)
  {
    if (v8 == &_xpc_error_connection_invalid || v8 == &_xpc_error_connection_interrupted)
    {
      v11 = 3;
    }

    else
    {
      v11 = 4;
    }

    v12 = xpc_copy_description(v5);
    string = xpc_dictionary_get_string(v8, _xpc_error_key_description);
    sub_1000111B4(v11, @"com.apple.security.swcagent", 0, a2, v14, @"%s: %s", v12, string);
    free(v12);
    xpc_release(v8);
    return 0;
  }

  return v8;
}

void sub_100201344(id a1)
{
  mach_service = xpc_connection_create_mach_service("com.apple.security.swcagent", 0, 0);
  xpc_connection_set_event_handler(mach_service, &stru_100344D00);
  xpc_connection_resume(mach_service);
  qword_10039E330 = mach_service;
}

void sub_100201394(id a1, void *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_error_key_description);
  v3 = sub_100006274("xpc");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = string;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "got event: %s", &v4, 0xCu);
  }
}

xpc_object_t sub_10020144C(unsigned int a1, CFTypeRef *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v6 = v4;
  if (v4)
  {
    xpc_dictionary_set_uint64(v4, "operation", a1);
  }

  else
  {
    sub_1000111B4(3, @"com.apple.security.swcagent", 0, a2, v5, @"xpc_dictionary_create returned NULL");
  }

  return v6;
}

uint64_t sub_1002014CC(void *a1, __CFString **a2)
{
  valuePtr = -1;
  value = xpc_dictionary_get_value(a1, "error");
  v5 = value;
  if (a2 && value)
  {
    length = 0;
    if (xpc_get_type(value) != &_xpc_type_dictionary)
    {
      sub_1000111B4(1, @"com.apple.security.xpc", 0, &length, v6, @"Remote error not dictionary!: %@", v5);
      v7 = length;
LABEL_21:
      *a2 = v7;
      return valuePtr;
    }

    string = xpc_dictionary_get_string(v5, "domain");
    if (string)
    {
      v13 = CFStringCreateWithCString(kCFAllocatorDefault, string, 0x8000100u);
    }

    else
    {
      v13 = @"com.apple.security.xpc";
      CFRetain(@"com.apple.security.xpc");
    }

    int64 = xpc_dictionary_get_int64(v5, "code");
    v21 = 0;
    cf = 0;
    data = xpc_dictionary_get_data(v5, "userinfo", &v21);
    if (data)
    {
      v16 = data + v21;
      v17 = sub_1000068E0(kCFAllocatorDefault, &cf, 0, data, data + v21);
      v18 = cf;
      if (v17 == v16)
      {
        v7 = CFErrorCreate(0, v13, int64, cf);
        if (v18)
        {
          CFRelease(v18);
        }

        goto LABEL_19;
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    v7 = CFErrorCreate(0, v13, int64, 0);
LABEL_19:
    if (v13)
    {
      CFRelease(v13);
    }

    goto LABEL_21;
  }

  if (!value)
  {
    length = 0;
    if (xpc_dictionary_get_data(a1, "status", &length))
    {
      v8 = sub_10000674C(a1, "status", a2);
      if (v8)
      {
        v9 = v8;
        v10 = CFGetTypeID(v8);
        if (v10 == CFBooleanGetTypeID())
        {
          v11 = CFEqual(v9, kCFBooleanTrue) != 0;
        }

        else
        {
          if (v10 != CFNumberGetTypeID() || CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr))
          {
            goto LABEL_27;
          }

          v11 = -1;
        }

        valuePtr = v11;
LABEL_27:
        CFRelease(v9);
      }
    }
  }

  return valuePtr;
}

BOOL sub_10020171C(unsigned int a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4, uint64_t a5)
{
  v9 = sub_10020144C(a1, a4);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  xpc_dictionary_set_data(v9, "client", a2, 0x20uLL);
  if (sub_100012F3C(v10, "query", a3, 0, a4) && (v11 = sub_100201208(v10, a4)) != 0)
  {
    v12 = v11;
    v13 = sub_1002014CC(v11, a4);
    v14 = v13 == 1;
    if (a5 && !v13)
    {
      Value = CFDictionaryGetValue(a3, @"srvr");
      (*(a5 + 16))(a5, Value);
    }

    xpc_release(v12);
  }

  else
  {
    v14 = 0;
  }

  xpc_release(v10);
  return v14;
}

void sub_100201CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100201CF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_100006274("octagon-ckks");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained error];
    v5 = v4;
    v6 = @"no error";
    if (v4)
    {
      v6 = v4;
    }

    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finishing a ckks-local-reset operation with %@", &v10, 0xCu);
  }

  v7 = [WeakRetained error];

  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [WeakRetained error];
    [v8 sendMetricWithResult:0 error:v9];
  }

  else
  {
    [v8 sendMetricWithResult:1 error:0];
  }
}

void sub_100201E2C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = sub_100006274("octagon-ckks");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [WeakRetained error];
    v7 = v6;
    v8 = @"no error";
    if (v6)
    {
      v8 = v6;
    }

    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished ckks-local-reset with %@", &v11, 0xCu);
  }

  if (v3)
  {
    [WeakRetained setError:v3];
  }

  else
  {
    v9 = [WeakRetained intendedState];
    [WeakRetained setNextState:v9];
  }

  v10 = [WeakRetained finishedOp];
  [WeakRetained runBeforeGroupFinished:v10];
}

void sub_10020336C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 176));
  objc_destroyWeak((v1 - 168));
  _Unwind_Resume(a1);
}

void sub_1002033B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_100006274("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained error];
    v5 = v4;
    v6 = @"no error";
    if (v4)
    {
      v6 = v4;
    }

    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finishing resetting operation with %@", &v10, 0xCu);
  }

  v7 = [WeakRetained error];

  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [WeakRetained error];
    [v8 sendMetricWithResult:0 error:v9];
  }

  else
  {
    [v8 sendMetricWithResult:1 error:0];
  }
}

void sub_1002034F4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[CKKSAnalytics logger];
  [v5 logResultForEvent:@"OctagonEventReset" hardFailure:1 result:v3];

  v6 = sub_100006274("octagon");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully reset Octagon", buf, 2u);
    }

    v10 = [WeakRetained deps];
    v11 = [v10 stateHolder];
    v20 = 0;
    [v11 persistAccountChanges:&stru_100344D78 error:&v20];
    v12 = v20;

    v13 = sub_100006274("octagon");
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v14)
      {
        *buf = 138412290;
        v22 = v12;
        v15 = "Error resetting local account metadata state: %@";
        v16 = v13;
        v17 = 12;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      }
    }

    else if (v14)
    {
      *buf = 0;
      v15 = "Successfully reset local account metadata state";
      v16 = v13;
      v17 = 2;
      goto LABEL_12;
    }

    v18 = [WeakRetained intendedState];
    [WeakRetained setNextState:v18];

    goto LABEL_14;
  }

  if (v7)
  {
    v8 = [WeakRetained containerName];
    v9 = [WeakRetained contextID];
    *buf = 138412802;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unable to reset for (%@,%@): %@", buf, 0x20u);
  }

  [WeakRetained setError:v3];
LABEL_14:
  v19 = [WeakRetained finishedOp];
  [WeakRetained runBeforeGroupFinished:v19];
}

OTAccountMetadataClassC *__cdecl sub_100203788(id a1, OTAccountMetadataClassC *a2)
{
  v2 = a2;
  [(OTAccountMetadataClassC *)v2 setTrustState:0];
  [(OTAccountMetadataClassC *)v2 setPeerID:0];
  [(OTAccountMetadataClassC *)v2 setSyncingPolicy:0];
  [(OTAccountMetadataClassC *)v2 setVoucher:0];
  [(OTAccountMetadataClassC *)v2 setVoucherSignature:0];
  [(OTAccountMetadataClassC *)v2 setTlkSharesForVouchedIdentitys:0];
  [(OTAccountMetadataClassC *)v2 setIsInheritedAccount:0];
  [(OTAccountMetadataClassC *)v2 setWarmedEscrowCache:0];
  [(OTAccountMetadataClassC *)v2 setWarnedTooManyPeers:0];

  return v2;
}

void sub_10020410C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100204128(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v5 = [WeakRetained accountConfiguration];
  v6 = [v5 storage];

  [v6 setRingUpdateFlag:0];
  v7 = [WeakRetained accountConfiguration];
  [v7 setStorage:v6];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100204438;
  v17[3] = &unk_100345048;
  v17[4] = WeakRetained;
  v17[5] = &v22;
  v17[6] = &v18;
  [WeakRetained performTransaction:v17];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100204698;
  v16[3] = &unk_1003475E8;
  v16[4] = WeakRetained;
  [WeakRetained performTransaction:v16];
  v8 = v19;
  if (*(v23 + 24) == 1)
  {
    v9 = v19[3];
    if (v9)
    {
      Count = CFSetGetCount(v9);
      v8 = v19;
      if (Count)
      {
        v11 = v19[3];
        context[0] = _NSConcreteStackBlock;
        context[1] = 3221225472;
        context[2] = sub_1002046A4;
        context[3] = &unk_100345550;
        context[4] = WeakRetained;
        CFSetApplyFunction(v11, sub_100204A84, context);
        v8 = v19;
      }
    }
  }

  v12 = v8[3];
  if (v12)
  {
    v8[3] = 0;
    CFRelease(v12);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10020474C;
  v14[3] = &unk_1003475E8;
  v14[4] = WeakRetained;
  [WeakRetained performTransaction:v14];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100204758;
  v13[3] = &unk_1003475E8;
  v13[4] = WeakRetained;
  [WeakRetained performTransaction:v13];
  if ([WeakRetained forceSyncForRecoveryRing])
  {
    [WeakRetained performTransaction:&stru_100345380];
    [WeakRetained setForceSyncForRecoveryRing:0];
  }

  [v3 setNextState:@"ready"];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
}

void sub_100204410(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100204438(uint64_t a1)
{
  if (![*(a1 + 32) accountKeyIsTrusted] || !objc_msgSend(*(a1 + 32), "isInCircle:", 0))
  {
    return;
  }

  [*(a1 + 32) _onQueueRecordRetiredPeersInCircle];
  sub_10022C730(*(a1 + 32));
  cf[1] = 0;
  v2 = *(a1 + 32);
  if (![v2 isInCircle:0] || (objc_msgSend(v2, "backup_key"), (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    LOBYTE(v6) = 0;
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v2 backup_key];
  v6 = SOSBSKBIsGoodBackupPublic();

  if (!v6)
  {
    goto LABEL_10;
  }

  [v2 peerInfo];
  v7 = SOSPeerInfoCopyBackupKey();
  v8 = [v2 backup_key];
  v9 = v8;
  if (v7 && v8)
  {
    LOBYTE(v6) = CFEqual(v7, v8) != 0;
  }

  else
  {
    LOBYTE(v6) = v7 == v8;

    if (!v7)
    {
      goto LABEL_10;
    }
  }

  CFRelease(v7);
LABEL_10:

  *(*(*(a1 + 40) + 8) + 24) = v6;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    cf[0] = 0;
    v18 = sub_100212D08(v10, v11, v12, v13, v14, v15, v16, v17);
    v19 = SecItemDelete(v18);
    if (v18)
    {
      CFRelease(v18);
    }

    if (v19 == -25300)
    {
      v20 = 0;
    }

    else
    {
      v20 = v19;
    }

    if (!sub_1000103CC(v20, cf, @"Deleting V0 Keybag failed - %d", v19))
    {
      v21 = sub_100006274("SecError");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = cf[0];
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Failed to delete v0 keybag: %@", buf, 0xCu);
      }
    }

    v22 = cf[0];
    if (cf[0])
    {
      cf[0] = 0;
      CFRelease(v22);
    }

    if ([*(a1 + 32) peerInfo])
    {
      [*(a1 + 32) peerInfo];
      PermittedViews = SOSPeerInfoGetPermittedViews();
      *(*(*(a1 + 48) + 8) + 24) = CFSetCreateMutableCopy(kCFAllocatorDefault, 0, PermittedViews);
    }
  }
}

id sub_1002046A4(uint64_t a1, CFTypeRef cf)
{
  if (!cf || (v3 = cf, v4 = CFGetTypeID(cf), v4 != CFStringGetTypeID()))
  {
    v3 = 0;
  }

  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100204A9C;
  v7[3] = &unk_100345360;
  v7[4] = v5;
  v7[5] = v3;
  return [v5 performTransaction:v7];
}

void sub_100204758(uint64_t a1, void *a2)
{
  v3 = a2;
  cf = 0;
  v4 = sub_100006274("rings");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Flushing Rings to KVS", buf, 2u);
  }

  v5 = [*(a1 + 32) circle_transport];
  v6 = [v5 flushChanges:&cf];

  if ((v6 & 1) == 0)
  {
    v13 = sub_100006274("circleOps");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = cf;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "flush circles/rings failed %@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v7 = [v3 account];
  [v7 setNeed_backup_peers_created_after_backup_key_set:1];

  v8 = [v3 account];
  v9 = [v8 getPublicKeyStatusForKey:2 error:0];

  if (v9 >= 1)
  {
    v10 = [v3 account];
    [v10 setPublicKeyStatus:3 forKey:2];
  }

  v11 = [v3 account];
  v12 = [v11 getPublicKeyStatusForKey:1 error:0];

  if (v12 >= 1)
  {
    v13 = [v3 account];
    [v13 setPublicKeyStatus:3 forKey:1];
LABEL_10:
  }

  v14 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v14);
  }

  sub_10021ED88(*(a1 + 32));
}

void sub_10020495C(id a1, SOSAccountTransaction *a2)
{
  v5 = 0;
  v2 = sub_100216A18(a2, &v5);
  if (v5)
  {
    v3 = sub_100006274("SecError");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "sos-register-recovery-public-key: Couldn't process sync with backup peers: %@", buf, 0xCu);
    }
  }

  else
  {
    v4 = sub_100006274("sos-register-recovery-public-key");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "telling CloudServices about recovery key change", buf, 2u);
    }

    notify_post("com.apple.security.itembackup");
  }
}

void sub_100204B80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100204B9C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained accountConfiguration];
  v6 = [v5 storage];

  v7 = sub_100006274("sos-sm");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 pendingBackupPeers];
    LODWORD(v13) = 138412290;
    *(&v13 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "performing backup for %@", &v13, 0xCu);
  }

  v9 = [v6 pendingBackupPeers];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [v6 pendingBackupPeers];
    *&v13 = _NSConcreteStackBlock;
    *(&v13 + 1) = 3221225472;
    v14 = sub_1002515E8;
    v15 = &unk_100346E68;
    v16 = v11;
    _os_activity_initiate(&_mh_execute_header, "CloudCircle SOSCCRequestSyncWithBackupPeerList", OS_ACTIVITY_FLAG_DEFAULT, &v13);

    [v6 clearPendingBackupPeers];
  }

  v12 = [WeakRetained accountConfiguration];
  [v12 setStorage:v6];

  [v3 setNextState:@"ready"];
}

void sub_100204E44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained accountConfiguration];
  v3 = [v2 storage];

  [v3 setRingUpdateFlag:1];
  v4 = [WeakRetained accountConfiguration];
  [v4 setStorage:v3];

  v5 = [WeakRetained performRingUpdates];
  [v5 trigger];

  v6 = sub_100006274("sos-sm");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [WeakRetained performRingUpdates];
    v8 = [v7 nextFireTime];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "trigger ring update at %@", &v9, 0xCu);
  }
}

void sub_1002052E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained accountConfiguration];
  v4 = [v3 storage];

  v5 = [v4 pendingBackupPeers];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v4 pendingBackupPeers];
    [v6 addObjectsFromArray:v7];
  }

  v8 = [*(a1 + 32) allObjects];
  v9 = [v8 mutableCopy];
  [v4 setPendingBackupPeers:v9];

  v10 = [WeakRetained accountConfiguration];
  [v10 setStorage:v4];

  v11 = [WeakRetained performBackups];
  [v11 trigger];

  v12 = sub_100006274("sos-sm");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 40);
    v14 = [WeakRetained performBackups];
    v15 = [v14 nextFireTime];
    v16 = 138412546;
    v17 = v13;
    v18 = 2112;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "trigger backup for peers: %@ at %@", &v16, 0x16u);
  }
}

void sub_100205968(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1002059A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained addBackupFlag];
}

void sub_1002059E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained addRingUpdateFlag];
}

void sub_100205A24(id a1)
{
  v4[0] = @"trigger_backup";
  v4[1] = @"trigger_ring_update";
  v1 = [NSArray arrayWithObjects:v4 count:2];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_10039E358;
  qword_10039E358 = v2;
}

void sub_100205AD0(id a1)
{
  v3[0] = @"ready";
  v3[1] = @"error";
  v4[0] = &off_1003651B8;
  v4[1] = &off_1003651D0;
  v3[2] = @"perform_backup";
  v3[3] = @"perform_ring_update";
  v4[2] = &off_1003651E8;
  v4[3] = &off_100365200;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  v2 = qword_10039E348;
  qword_10039E348 = v1;
}

void sub_100205CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100205CD4(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = [*(a1 + 32) retirees];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100205DCC;
  v8[3] = &unk_100345178;
  v5 = *(a1 + 48);
  v8[4] = *(a1 + 40);
  v8[5] = &v9;
  v8[6] = v5;
  v8[7] = a2;
  CFSetApplyFunction(v4, sub_100204A84, v8);

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_100205DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100205DCC(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == SOSPeerInfoGetTypeID())
    {
      v5 = *(a1 + 56);
      if (SOSCircleUpdatePeerInfo())
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        v6 = sub_100006274("retirement");
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(a1 + 56);
          *buf = 138412546;
          v15 = cf;
          v16 = 2112;
          v17 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updated retired peer %@ in %@", buf, 0x16u);
        }

        cfa = 0;
        v8 = [*(a1 + 32) trust];
        v9 = [*(a1 + 32) kvs_message_transport];
        v10 = [*(a1 + 32) circle_transport];
        v11 = [v8 cleanupAfterPeer:v9 circleTransport:v10 seconds:86400 circle:*(a1 + 56) cleanupPeer:cf err:&cfa];

        if ((v11 & 1) == 0)
        {
          v12 = sub_100006274("SecError");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v15 = cf;
            v16 = 2112;
            v17 = cfa;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Error cleanup up after peer (%@): %@", buf, 0x16u);
          }
        }

        if (cfa)
        {
          CFRelease(cfa);
        }

        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }
  }
}

id sub_10020649C(void *a1, uint64_t a2)
{
  v3 = [a1 trust];
  v4 = [v3 expansion];

  if (v4)
  {
    v5 = [v3 expansion];
    v6 = [v5 objectForKey:a2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void *sub_100206858(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v4 = sub_10021363C(*(a1 + 32), *(a1 + 40), a3);
  v5 = sub_100006274("backup");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "success";
    v7 = *(a1 + 40);
    if (!v4)
    {
      v6 = "failed";
    }

    v9 = 138412546;
    v10 = v7;
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reset backup ring %@ %s", &v9, 0x16u);
  }

  return v4;
}

void sub_100207154(uint64_t a1, void *a2)
{
  v3 = [a2 account];
  cf = 0;
  v4 = sub_10021A908(v3, &cf, &stru_100345800);
  v5 = v4;
  v6 = cf;
  if (cf)
  {
    cf = 0;
  }

  if (v4)
  {
    if (CFArrayGetCount(v4))
    {
      sub_10020FBF8(v3, v5, &cf);
      v7 = cf;
      if (cf)
      {
        cf = 0;
        if (!v6 || (CFRelease(v6), (v8 = cf) == 0))
        {
          v6 = v7;
          goto LABEL_14;
        }

        cf = 0;
        v6 = v7;
        goto LABEL_12;
      }
    }

    else
    {
      v8 = cf;
      if (cf)
      {
        cf = 0;
LABEL_12:
        CFRelease(v8);
      }
    }

LABEL_14:
    CFRelease(v5);
  }

  (*(*(a1 + 32) + 16))();
  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_100207810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100207840(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1002078D4;
  v3[3] = &unk_100345048;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 performTransaction:v3];
}

void sub_1002078D4(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([*(a1 + 32) count])
  {
    v3 = [NSSet setWithArray:*(a1 + 32)];
    v4 = sub_100216640(v7, v3, *(*(a1 + 40) + 8) + 24);
    if (v4)
    {
      v5 = v4;
      Count = CFSetGetCount(v4);
      if (Count == [(__CFSet *)v3 count])
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

      CFRelease(v5);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = sub_100216AF0(v7, *(*(a1 + 40) + 8) + 24);
  }
}

void sub_10020802C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = off_10039E338;
  v7 = off_10039E338;
  if (!off_10039E338)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10020815C;
    v3[3] = &unk_100345B48;
    v3[4] = &v4;
    sub_10020815C(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    v0();
  }

  else
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"BOOL soft_MetricsOverrideTestsAreEnabled(void)"];
    [v1 handleFailureInFunction:v2 file:@"SOSAccount.m" lineNumber:93 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_100208144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_10020815C(void *a1)
{
  v5[0] = 0;
  if (!qword_10039E340)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_1002082D8;
    v5[4] = &unk_100346E68;
    v5[5] = v5;
    v5[7] = 0;
    v5[8] = 0;
    v5[6] = "/System/Library/PrivateFrameworks/KeychainCircle.framework/KeychainCircle";
    qword_10039E340 = _sl_dlopen();
  }

  v2 = qword_10039E340;
  if (!qword_10039E340)
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *KeychainCircleLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"SOSAccount.m" lineNumber:90 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "MetricsOverrideTestsAreEnabled");
  *(*(a1[4] + 8) + 24) = result;
  off_10039E338 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t sub_1002082D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10039E340 = result;
  return result;
}

void sub_100208750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_100208788(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [AAFAnalyticsEventSecurity alloc];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = kSecurityRTCEventNameInitiatorJoinsSOS;
  sub_10020802C();
  LOBYTE(v11) = *(a1 + 84);
  v12 = [v4 initWithKeychainCircleMetrics:0 altDSID:v5 flowID:v6 deviceSessionID:v7 eventName:v8 testsAreEnabled:v9 canSendMetrics:v11 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];
  v10 = [v3 account];

  *(*(*(a1 + 64) + 8) + 24) = sub_1002088AC(v10, *(a1 + 56), *(a1 + 80), (*(*(a1 + 72) + 8) + 24));
  [v12 sendMetricWithResult:*(a1 + 56) != 0 error:*(*(*(a1 + 72) + 8) + 24)];
}

id sub_1002088AC(void *a1, const void *a2, int a3, void *a4)
{
  v7 = a1;
  v8 = [v7 trust];
  v36 = 0;
  cf = 0;
  v35 = 0;
  v34 = 0;
  v9 = sub_100006274("circleOps");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Joining circles through piggyback (SOSAccountCopyCircleJoiningBlob)", buf, 2u);
  }

  if (!a2 || (v10 = CFGetTypeID(a2), v10 != CFDataGetTypeID()))
  {
    v15 = sub_100006274("circleOps");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "Bad data blob: piggyback (SOSAccountCopyCircleJoiningBlob)";
      v17 = v15;
      v18 = 2;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v11 = sub_100217CE0(v7);
  if (!v11)
  {
    v15 = sub_100006274("circleOps");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *a4;
      *buf = 138412290;
      v39 = v19;
      v16 = "Failed - no private credential %@: piggyback (SOSAccountCopyCircleJoiningBlob)";
LABEL_14:
      v17 = v15;
      v18 = 12;
      goto LABEL_15;
    }

LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  v12 = v11;
  if ((SOSPiggyBackBlobCreateFromData() & 1) == 0)
  {
    v15 = sub_100006274("circleOps");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *a4;
      *buf = 138412290;
      v39 = v20;
      v16 = "Failed - decoding blob %@: piggyback (SOSAccountCopyCircleJoiningBlob)";
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v13 = sub_100006274("circleOps");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "clearing flag in account for piggyback v0", buf, 2u);
  }

  sub_100228AD0(v7, @"initialsynctimeout", 0);
  sub_100220520(v7);
  sub_100208C80(@"Joining", v7, cf, v35, v36, a3);
  v23 = [v7 circle_transport];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100208E7C;
  v27[3] = &unk_100345230;
  v29 = v12;
  v30 = cf;
  v31 = v35;
  v32 = v36;
  v28 = v8;
  v33 = a4;
  v21 = [v28 modifyCircle:v23 err:a4 action:v27];

  v24 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v24);
  }

  v25 = v35;
  if (v35)
  {
    v35 = 0;
    CFRelease(v25);
  }

  v26 = v36;
  if (v36)
  {
    v36 = 0;
    CFRelease(v26);
  }

  v15 = v28;
LABEL_17:

  return v21;
}

void sub_100208C80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = a2;
  Copy = SOSCopyIDOfKey();
  if (!Copy)
  {
    Copy = CFStringCreateCopy(kCFAllocatorDefault, @"Unknown");
  }

  v10 = SOSCopyIDOfDataBuffer();
  if (!v10)
  {
    v10 = CFStringCreateCopy(kCFAllocatorDefault, @"No Signature");
  }

  v11 = sub_10020649C(v8, @"AccountName");
  v12 = [v8 trust];

  [v12 trustedCircle];
  v13 = SOSCircleCopyHashString();

  v14 = SOSGenerationCountCopyDescription();
  v15 = sub_100006274("circleOps");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"Unavailable";
    v17 = 138413826;
    if (v11)
    {
      v16 = v11;
    }

    v18 = a1;
    v19 = 2112;
    v20 = v16;
    v21 = 1024;
    v22 = a6;
    v23 = 2112;
    v24 = v14;
    v25 = 2112;
    v26 = Copy;
    v27 = 2112;
    v28 = v10;
    v29 = 2112;
    v30 = v13;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@: Joining blob for account: %@ for piggyback (V%d) gencount: %@  pubkey: %@ signatureID: %@  starting circle hash: %@", &v17, 0x44u);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }
}

uint64_t sub_100208E7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) fullPeerInfo];
  v9 = *(a1 + 72);

  return _SOSCircleAcceptPeerFromHSA2(a2, v7, v4, v5, v6, v8, v9);
}

void sub_1002091A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002091D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002091F0(uint64_t a1)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002092DC;
  v8[3] = &unk_100344FD0;
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = v2;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v12 = *(a1 + 88);
  v11 = *(a1 + 72);
  [v3 performTransaction:v8];
}

void sub_1002092DC(uint64_t a1, void *a2)
{
  v6 = [a2 account];
  v3 = sub_100209358(v6, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 80), *(a1 + 72), (*(*(a1 + 64) + 8) + 24));
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t sub_100209358(void *a1, void *a2, void *a3, void *a4, char a5, uint64_t a6, uint64_t *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = sub_100006274("circleOps");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Making circle joining piggyback blob as sponsor (SOSAccountCopyCircleJoiningBlob)", buf, 2u);
  }

  if (![v13 getCircleStatus:a7])
  {
    if (sub_100218428(v13))
    {
      if (a6)
      {
        v23 = [AAFAnalyticsEventSecurity alloc];
        v24 = kSecurityRTCEventNameVerifySOSApplication;
        sub_10020802C();
        LOBYTE(v39) = a5;
        v20 = [v23 initWithKeychainCircleMetrics:0 altDSID:v14 flowID:v15 deviceSessionID:v16 eventName:v24 testsAreEnabled:v25 canSendMetrics:v39 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];
        if ((SOSPeerInfoApplicationVerify() & 1) == 0)
        {
          v41 = v14;
          v35 = sub_100006274("circleOps");
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Peer application wasn't signed with the correct userKey", buf, 2u);
          }

          v27 = 0;
          GenSignatureWithPeerAdded = 0;
          v32 = 0;
          v31 = 0;
          v21 = 0;
          if (!a7)
          {
            goto LABEL_27;
          }

          goto LABEL_18;
        }

        [v20 sendMetricWithResult:1 error:0];
        [v13 fullPeerInfo];
        v26 = SOSFullPeerInfoCopyDeviceKey();
        if (v26)
        {
          v27 = v26;
          v41 = v14;
          v28 = [v13 trust];
          v29 = [v28 getCircle:a7];

          if (!v29 || (v30 = SOSCircleCopyCircle()) == 0)
          {
            v21 = 0;
            v14 = v41;
            goto LABEL_34;
          }

          v31 = v30;
          if (!SOSCirclePreGenerationSign())
          {
            v21 = 0;
            v32 = 0;
            GenSignatureWithPeerAdded = 0;
            goto LABEL_28;
          }

          SOSCircleGetGeneration();
          v32 = SOSGenerationIncrementAndCreate();
          GenSignatureWithPeerAdded = SOSCircleCopyNextGenSignatureWithPeerAdded();
          if (!GenSignatureWithPeerAdded)
          {
            v21 = 0;
            goto LABEL_28;
          }

          sub_100208C80(@"Accepting", v13, v32, v27, GenSignatureWithPeerAdded, 1);
          v21 = SOSPiggyBackBlobCopyEncodedData();
          if (!a7)
          {
LABEL_27:
            [NSError errorWithDomain:kSOSErrorDomain code:12 description:@"Peer application wasn't signed with the correct userKey"];
            v40 = v16;
            v37 = v36 = v15;
            [v20 sendMetricWithResult:0 error:v37];

            v15 = v36;
            v16 = v40;
            if (!v31)
            {
              goto LABEL_29;
            }

            goto LABEL_28;
          }

LABEL_18:
          if (*a7)
          {
            [v20 sendMetricWithResult:0 error:?];
            if (!v31)
            {
LABEL_29:
              if (v32)
              {
                CFRelease(v32);
              }

              v14 = v41;
              if (GenSignatureWithPeerAdded)
              {
                CFRelease(GenSignatureWithPeerAdded);
              }

              if (!v27)
              {
LABEL_35:
                if (!a7)
                {
                  goto LABEL_8;
                }

LABEL_42:
                if (v21)
                {
                  goto LABEL_8;
                }

                v18 = sub_100006274("circleOps");
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  v38 = *a7;
                  *buf = 138412290;
                  v43 = v38;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Failed to make circle joining piggyback blob as sponsor %@", buf, 0xCu);
                }

                goto LABEL_7;
              }

LABEL_34:
              CFRelease(v27);
              goto LABEL_35;
            }

LABEL_28:
            CFRelease(v31);
            goto LABEL_29;
          }

          goto LABEL_27;
        }

LABEL_41:
        v21 = 0;
        if (!a7)
        {
          goto LABEL_8;
        }

        goto LABEL_42;
      }

      if (a7)
      {
        v34 = *a7;
      }

      SOSCreateError();
    }

    v20 = 0;
    goto LABEL_41;
  }

  v18 = sub_100006274("circleOps");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = SOSCCGetStatusDescription();
    *buf = 138412290;
    v43 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Invalid circle status: %@ to accept piggyback as sponsor (SOSAccountCopyCircleJoiningBlob)", buf, 0xCu);
  }

  v20 = 0;
LABEL_7:

  v21 = 0;
LABEL_8:

  return v21;
}

CFStringRef sub_100209CB8(void *a1)
{
  v1 = a1;
  v2 = [v1 accountKey];
  v3 = [v1 accountKeyIsTrusted];
  v4 = [v1 accountPrivateKey];
  v19 = SOSVisibleKeychainNotAllowed();
  v5 = [v1 getCircleStatus:0];
  if ([v1 accountKey])
  {
    [v1 accountKey];
    Copy = SOSCopyIDOfKeyWithLength();
    v7 = kCFAllocatorDefault;
  }

  else
  {
    v7 = kCFAllocatorDefault;
    Copy = CFStringCreateCopy(kCFAllocatorDefault, @"*No Key*");
  }

  if (v2)
  {
    v8 = 85;
  }

  else
  {
    v8 = 117;
  }

  if (v3)
  {
    v9 = 84;
  }

  else
  {
    v9 = 116;
  }

  if (v4)
  {
    v10 = 73;
  }

  else
  {
    v10 = 105;
  }

  if (v5 + 1 > 4)
  {
    v11 = @"kSOSCCError";
  }

  else
  {
    v11 = off_1003454A8[v5 + 1];
  }

  v12 = getuid();
  v13 = geteuid();
  v14 = [v1 SOSMonitorModeSOSIsActiveDescription];
  v15 = v14;
  v16 = "Unrestricted User Visible Views";
  if (v19)
  {
    v16 = "User Visible Keychain Disallowed by Profile";
  }

  v17 = CFStringCreateWithFormat(v7, 0, @"ACCOUNT: [keyStatus: %c%c%c hpub %@] [SOSCCStatus: %@] [UID: %d  EUID: %d] %@ %s", v8, v9, v10, Copy, v11, v12, v13, v14, v16);

  if (Copy)
  {
    CFRelease(Copy);
  }

  return v17;
}

void sub_100209E64(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  [*(a1 + 40) accountKey];
  v4 = *(a1 + 56);
  v5 = SOSCirclePeerInfoCopyStateString();
  [v2 addObject:v5];
}

void sub_100209EDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  [*(a1 + 40) accountKey];
  v4 = *(a1 + 56);
  v5 = SOSCirclePeerInfoCopyStateString();
  [v2 addObject:v5];
}

void sub_100209F54(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  [*(a1 + 40) accountKey];
  v4 = *(a1 + 56);
  v5 = SOSCirclePeerInfoCopyStateString();
  [v2 addObject:v5];
}

void sub_100209FCC(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) accountKey];
  v3 = *(a1 + 48);
  v4 = SOSPeerInfoCopyStateString();
  [v2 addObject:v4];
}

void sub_10020A040(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) accountKey];
  v3 = *(a1 + 48);
  v4 = SOSPeerInfoCopyStateString();
  [v2 addObject:v4];
}

void sub_10020A148(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v3 = [NSJSONSerialization dataWithJSONObject:a2 options:3 error:&v7];
  v4 = v7;
  if (!v3)
  {
    v5 = sub_100006274("iCloudIdentity");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 localizedDescription];
      *buf = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error during iCloudIdentityStatus JSONification: %@", buf, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_10020A7B8(uint64_t a1)
{
  PeerID = SOSPeerInfoGetPeerID();
  Copy = CFStringCreateCopy(kCFAllocatorDefault, PeerID);
  if (Copy)
  {
    [*(a1 + 32) addObject:Copy];
  }

  return _objc_release_x1();
}

void sub_10020A82C(uint64_t a1)
{
  v2 = SOSCopyIDOfKey();
  if (v2)
  {
    v3 = v2;
    [*(a1 + 32) addObject:v2];
  }

  else
  {
    v3 = sub_100006274("iCloudIdentity");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "couldn't make ID from key (%@)", buf, 0xCu);
    }
  }
}

void sub_10020AD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_10020AD68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SOSAuthKitHelpers alloc] initWithActiveMIDS:v3];

  if (v4)
  {
    v7 = *(*(a1 + 48) + 8);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10020AE6C;
    v9[3] = &unk_100344EE0;
    v8 = *(a1 + 56);
    v9[4] = *(a1 + 32);
    v11 = v8;
    v10 = v4;
    v12 = *(a1 + 64);
    sub_100089884(0, (v7 + 24), v9);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), *(*(*(a1 + 56) + 8) + 24), 0, v5, v6);
}

void sub_10020AE6C(uint64_t a1)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10020AF0C;
  v6[3] = &unk_100344EB8;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v9 = *(a1 + 48);
  v4 = v2;
  v10 = *(a1 + 56);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 performTransaction:v6];
}

id sub_10020AF0C(uint64_t a1, void *a2)
{
  v3 = [a2 account];
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = v3;
  v7 = v4;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 9999;
  cf = 0;
  v8 = objc_opt_new();
  v9 = [v6 trust];
  [v9 trustedCircle];
  v10 = SOSCircleCountPeers();

  if ((v5 & 0x10) != 0 && [v6 isInCircle:0])
  {
    v11 = sub_100006274("ghostBust");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Callout to cleanup icloud identities", &v28, 2u);
    }

    v12 = v6;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v54 = 0;
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_1002333DC;
    v31 = &unk_100346438;
    v32 = buf;
    [v12 iCloudIdentityStatus_internal:&v28];
    v13 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);

    v41[3] = v13;
    if (v13)
    {
      v14 = [NSNumber numberWithUnsignedInteger:v13];
      [v8 setObject:v14 forKeyedSubscript:@"iCloudPrivKeysBusted"];

      v15 = +[SOSAnalytics logger];
      [v15 logSoftFailureForEventNamed:@"GhostBust" withAttributes:v8];

      *(v50 + 24) = 1;
    }

    *(v46 + 24) = 1;
  }

  if ((v5 & 0xFFFFFFEF) != 0 && [v7 isUseful])
  {
    v16 = [v6 isInCircle:0];
    v17 = v10 > 1 ? v16 : 0;
    if (v17 == 1)
    {
      v18 = [v6 trust];
      v19 = [v6 circle_transport];
      v28 = _NSConcreteStackBlock;
      v29 = 3221225472;
      v30 = sub_100233878;
      v31 = &unk_100346378;
      v38 = v5;
      v35 = &v40;
      v32 = v6;
      v33 = v7;
      v34 = v8;
      v36 = &v45;
      v39 = v10;
      v37 = &v49;
      [v18 modifyCircle:v19 err:&cf action:&v28];

      v20 = sub_100006274("circleOps");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = @"Not Performed";
        if (*(v50 + 24))
        {
          v21 = @"Performed";
        }

        *buf = 138412546;
        *&buf[4] = v21;
        *&buf[12] = 2112;
        *&buf[14] = cf;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Ghostbusting %@ (%@)", buf, 0x16u);
      }

      v22 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v22);
      }
    }
  }

  v23 = v50;
  if (*(v46 + 24) == 1)
  {
    if (*(v50 + 24) == 1)
    {
      v24 = +[SOSAnalytics logger];
      [v24 logSoftFailureForEventNamed:@"GhostBust" withAttributes:v8];
    }

    else if (v41[3])
    {
      v24 = +[SOSAnalytics logger];
      [v24 logHardFailureForEventNamed:@"GhostBust" withAttributes:0];
    }

    else
    {
      v24 = +[SOSAnalytics logger];
      [v24 logSuccessForEventNamed:@"GhostBust"];
    }

    v23 = v50;
  }

  v25 = *(v23 + 24);

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);

  *(*(*(a1 + 48) + 8) + 24) = v25;
  v26 = *(a1 + 40);

  return [v26 ghostBustFollowup];
}

void sub_10020B404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_10020B760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10020B77C(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10020B7F0;
  v3[3] = &unk_100347300;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 performTransaction:v3];
}

void sub_10020B7F0(uint64_t a1, void *a2)
{
  v7 = [a2 account];
  v3 = [v7 trust];
  [v3 trustedCircle];
  v4 = SOSCircleCopyHashString();
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_10020BA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10020BA88(uint64_t a1, void *a2)
{
  v3 = [a2 account];
  v4 = sub_10020BB34(v3, *(*(a1 + 32) + 8) + 24);

  if (v4)
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = SOSPeerInfoCopyEncodedData();
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    CFRelease(v4);
  }
}

uint64_t sub_10020BB34(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 trust];
  if (sub_100217CE0(v3) && [v4 ensureFullPeerAvailable:v3 err:a2] && (objc_msgSend(v4, "fullPeerInfo"), SOSFullPeerInfoPromoteToApplication()))
  {
    [v4 peerInfo];
    Copy = SOSPeerInfoCreateCopy();
  }

  else
  {
    Copy = 0;
  }

  return Copy;
}

uint64_t sub_10020BDE4(uint64_t a1)
{
  v16 = 0;
  if ([*(a1 + 32) syncWaitAndFlush:*(a1 + 40) flowID:*(a1 + 48) deviceSessionID:*(a1 + 56) canSendMetrics:*(a1 + 80) error:&v16])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    sleep(1u);
    v2 = *(a1 + 32);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10020BFF4;
    v7[3] = &unk_100344E40;
    v8 = *(a1 + 64);
    v3 = *(a1 + 72);
    v9 = *(a1 + 32);
    v10 = v3;
    v11 = &v12;
    [v2 performTransaction:v7];
    if (*(v13 + 24) == 1 && (sub_10020C374() & 1) == 0)
    {
      v4 = sub_100006274("pairing");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "failed final flush: %@", buf, 0xCu);
      }
    }

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    (*(*(a1 + 72) + 16))();
    v5 = v16;
    if (v16)
    {
      v16 = 0;
      CFRelease(v5);
    }
  }

  return 1;
}

void sub_10020BFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10020BFF4(uint64_t a1)
{
  error = 0;
  v16[0] = kSecAttrKeyClass;
  v16[1] = kSecAttrKeyType;
  v17[0] = kSecAttrKeyClassPrivate;
  v17[1] = kSecAttrKeyTypeEC;
  v2 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  v3 = SecKeyCreateWithData(*(a1 + 32), v2, &error);
  if (!v3)
  {
    (*(*(a1 + 48) + 16))();
    v9 = sub_100006274("pairing");
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 138412290;
    v15 = error;
    v10 = "SecKeyCreateWithData failed: %@";
    goto LABEL_16;
  }

  v4 = v3;
  v5 = *(a1 + 40);
  if (sub_100218498(v5, v4, &error))
  {
    sub_10021875C(v5, 0, v4, [v5 accountKeyIsTrusted]);
    sub_100217F74(v5);
    v6 = sub_100006274("circleop");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting account.key_interests_need_updating to true in SOSAccountTryUserPrivateKey", buf, 2u);
    }

    [v5 setKey_interests_need_updating:1];
    v7 = sub_100006274("circleOps");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Accepted provided user_private as credential", buf, 2u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    v8 = sub_100006274("pairing");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SOSAccountTryUserPrivateKey succeeded", buf, 2u);
    }

    CFRelease(v4);
    (*(*(a1 + 48) + 16))();
    goto LABEL_19;
  }

  v11 = sub_100006274("circleOps");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed to accept provided user_private as credential", buf, 2u);
  }

  CFRelease(v4);
  (*(*(a1 + 48) + 16))();
  v9 = sub_100006274("pairing");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = error;
    v10 = "SOSAccountTryUserPrivateKey failed: %@";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
  }

LABEL_17:

  v12 = error;
  if (error)
  {
    error = 0;
    CFRelease(v12);
  }

LABEL_19:
}

uint64_t sub_10020C374()
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v0 = dispatch_semaphore_create(0);
  v1 = sub_100006274("flush");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Starting", buf, 2u);
  }

  v2 = dispatch_get_global_queue(-2, 0);
  v3 = v0;
  SOSCloudKeychainFlush();

  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v4 = sub_100006274("flush");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v9 + 24))
    {
      v5 = "Success";
    }

    else
    {
      v5 = "Failure";
    }

    *buf = 136315138;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Returned %s", buf, 0xCu);
  }

  v6 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v6 & 1;
}

void sub_10020C564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10020C584(void *a1, int a2, CFTypeRef cf)
{
  v4 = a1[6];
  *(*(a1[5] + 8) + 24) = cf == 0;
  if (v4)
  {
    v6 = *v4;
    if (*v4 != cf)
    {
      if (!cf || (CFRetain(cf), (v6 = *v4) != 0))
      {
        CFRelease(v6);
      }

      *v4 = cf;
    }
  }

  v7 = a1[4];

  return dispatch_semaphore_signal(v7);
}

void sub_10020C77C(uint64_t a1)
{
  v2 = [AAFAnalyticsEventSecurity alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = kSecurityRTCEventNameValidatedStashedAccountCredential;
  sub_10020802C();
  LOBYTE(v20) = *(a1 + 72);
  v8 = [v2 initWithKeychainCircleMetrics:0 altDSID:v3 flowID:v4 deviceSessionID:v5 eventName:v6 testsAreEnabled:v7 canSendMetrics:v20 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];
  error = 0;
  v9 = sub_100218278(&error);
  if (v9)
  {
    v10 = v9;
    v11 = SecKeyCopyPublicKey(v9);
    if (v11)
    {
      v12 = v11;
      v13 = sub_100006274("pairing");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "returning stash credential: %@", buf, 0xCu);
      }

      CFRelease(v12);
    }

    v14 = SecKeyCopyExternalRepresentation(v10, &error);
    CFRelease(v10);
    (*(*(a1 + 64) + 16))();
    v15 = error;
    if (error)
    {
      error = 0;
      CFRelease(v15);
    }

    v22 = kSecurityRTCFieldNumberOfKeychainItemsCollected;
    v23 = &off_1003651A0;
    v16 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    [v8 addMetrics:v16];

    [v8 sendMetricWithResult:1 error:0];
  }

  else
  {
    v17 = sub_100006274("pairing");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "no stashed credential", buf, 2u);
    }

    v26 = kSecurityRTCFieldNumberOfKeychainItemsCollected;
    v27 = &off_100365188;
    v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [v8 addMetrics:v18];

    [v8 sendMetricWithResult:0 error:error];
    (*(*(a1 + 64) + 16))();
    v19 = error;
    if (error)
    {
      error = 0;
      CFRelease(v19);
    }
  }
}

void sub_10020CE50(uint64_t a1)
{
  v2 = dispatch_get_global_queue(-2, 0);
  v8 = *(a1 + 48);
  v7 = *(a1 + 32);
  v3 = v7;
  SOSCloudKeychainSynchronizeAndWait();

  dispatch_semaphore_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v4 = sub_100006274("fresh");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v6 = "success";
    }

    else
    {
      v6 = "failure";
    }

    if (v5)
    {
      v5 = *v5;
    }

    *buf = 136315394;
    v10 = v6;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EFP complete: %s %@", buf, 0x16u);
  }
}

intptr_t sub_10020CFD0(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = sub_100006274("fresh");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "EFP returned, callback error: %@", &v9, 0xCu);
  }

  v6 = *(a1 + 48);
  *(*(*(a1 + 40) + 8) + 24) = a3 == 0;
  if (v6)
  {
    v7 = *v6;
    if (*v6 != a3)
    {
      if (!a3 || (CFRetain(a3), (v7 = *v6) != 0))
      {
        CFRelease(v7);
      }

      *v6 = a3;
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10020D184(uint64_t a1)
{
  cf = 0;
  sub_100218648(*(a1 + 32), &cf);
  (*(*(a1 + 40) + 16))();
  v2 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v2);
  }
}

void sub_10020D298(uint64_t a1)
{
  cf = 0;
  v2 = sub_100218278(&cf);
  if (v2)
  {
    v3 = v2;
    v4 = SecKeyCopySubjectPublicKeyInfo();
    CFRelease(v3);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    v5 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v5);
    }
  }
}

uint64_t sub_10020D48C(uint64_t a1)
{
  [*(a1 + 32) setAccountInBypassMode:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_10020D64C(uint64_t a1)
{
  if ([*(a1 + 32) accountKeyIsTrusted] && objc_msgSend(*(a1 + 32), "accountKey"))
  {
    [*(a1 + 32) accountKey];
    v2 = SecKeyCopySubjectPublicKeyInfo();
    if (v2)
    {
      v3 = v2;
      (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) accountKeyIsTrusted], v2, 0);
    }

    else
    {
      v11 = kCFErrorDescriptionKey;
      v12 = @"User public not available";
      v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) accountKeyIsTrusted];
      v10 = [NSError errorWithDomain:kSOSErrorDomain code:2 userInfo:v7];
      (*(v8 + 16))(v8, v9, 0, v10);

      v3 = 0;
    }
  }

  else
  {
    v13 = kCFErrorDescriptionKey;
    v14 = @"User public key not trusted";
    v3 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) accountKeyIsTrusted];
    v6 = [NSError errorWithDomain:kSOSErrorDomain code:2 userInfo:v3];
    (*(v4 + 16))(v4, v5, 0, v6);
  }
}

const __CFString *sub_10020E324(void *a1)
{
  result = sub_10020649C(a1, kSOSDSIDKey);
  if (result)
  {
    v2 = result;
    v3 = CFGetTypeID(result);
    if (v3 == CFStringGetTypeID() && !CFEqual(v2, kCFNull))
    {
      if (CFStringCompare(v2, &stru_100348050, 0))
      {
        return v2;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10020E3A8(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_10020E324(v3);
  if (!v4)
  {
    v7 = sub_100006274("updates");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting dsid, current dsid is empty for this account: %@", &v9, 0xCu);
    }

    sub_10020E534(v3, a2);
    goto LABEL_10;
  }

  if (!a2)
  {
    goto LABEL_11;
  }

  v5 = v4;
  if (CFStringCompare(a2, v4, 0) == kCFCompareEqualTo)
  {
LABEL_10:
    a2 = 0;
    goto LABEL_11;
  }

  v6 = sub_100006274("updates");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Changing DSID from: %@ to %@", &v9, 0x16u);
  }

  sub_100089FEC(@"DSID Change is unexpected", 1405091857);
  sub_10020E5C0(v3);
  sub_10020E534(v3, a2);
  a2 = 1;
LABEL_11:

  return a2;
}

void sub_10020E534(void *a1, uint64_t a2)
{
  v3 = kSOSDSIDKey;
  v4 = a1;
  sub_100228C18(v4, v3, a2, 0);
  v5 = [v4 circle_transport];

  [v5 kvsSendOfficialDSID:a2 err:0];
}

void sub_10020E5C0(void *a1)
{
  v1 = a1;
  v2 = sub_100006274("accountChange");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting Account to New", buf, 2u);
  }

  v10 = sub_10001104C(kCFAllocatorDefault, v3, v4, v5, v6, v7, v8, v9, kSecClass, kSecClassGenericPassword);
  sub_10020EA9C(v10);
  if (v10)
  {
    CFRelease(v10);
  }

  v18 = sub_10001104C(kCFAllocatorDefault, v11, v12, v13, v14, v15, v16, v17, kSecClass, kSecClassKey);
  sub_10020EA9C(v18);
  if (v18)
  {
    CFRelease(v18);
  }

  v26 = sub_10001104C(kCFAllocatorDefault, v19, v20, v21, v22, v23, v24, v25, kSecClass, kSecClassGenericPassword);
  sub_10020EA9C(v26);
  if (v26)
  {
    CFRelease(v26);
  }

  v34 = sub_10001104C(kCFAllocatorDefault, v27, v28, v29, v30, v31, v32, v33, kSecClass, kSecClassGenericPassword);
  sub_10020EA9C(v34);
  if (v34)
  {
    CFRelease(v34);
  }

  v35 = [v1 user_private_timer];

  if (v35)
  {
    v36 = [v1 user_private_timer];
    dispatch_source_cancel(v36);

    [v1 setUser_private_timer:0];
    xpc_transaction_end();
  }

  if ([v1 lock_notification_token] != -1)
  {
    notify_cancel([v1 lock_notification_token]);
    [v1 setLock_notification_token:0xFFFFFFFFLL];
  }

  v37 = [v1 key_transport];
  sub_100236194(v37);

  v38 = [v1 kvs_message_transport];
  sub_100236018(v38);

  v39 = [v1 circle_transport];
  sub_1002360F8(v39);

  [v1 setCircle_transport:0];
  [v1 setKvs_message_transport:0];
  [v1 set_password_tmp:0];
  [v1 setCircle_rings_retirements_need_attention:1];
  [v1 setEngine_peer_state_needs_repair:1];
  [v1 setKey_interests_need_updating:1];
  [v1 setNeed_backup_peers_created_after_backup_key_set:1];
  [v1 setAccountKeyIsTrusted:0];
  [v1 setAccountKeyDerivationParameters:0];
  [v1 setAccountPrivateKey:0];
  [v1 setAccountKey:0];
  [v1 setPreviousAccountKey:0];
  [v1 setPeerPublicKey:0];
  [v1 setBackup_key:0];
  [v1 setNotifyCircleChangeOnExit:1];
  [v1 setNotifyViewChangeOnExit:1];
  [v1 setNotifyBackupOnExit:1];
  [v1 setOctagonSigningFullKeyRef:0];
  [v1 setOctagonEncryptionFullKeyRef:0];
  [v1 setTrust:0];
  v40 = [SOSAccountTrustClassic alloc];
  v41 = +[NSMutableSet set];
  v42 = +[NSMutableDictionary dictionary];
  v43 = [(SOSAccountTrustClassic *)v40 initWithRetirees:v41 fpi:0 circle:0 departureCode:0 peerExpansion:v42];
  [v1 setTrust:v43];

  [v1 ensureFactoryCircles];
  v44 = sub_100228CC0(v1);
  if (v44)
  {
    CFRelease(v44);
  }

  v45 = sub_100006274("circleop");
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Setting account.key_interests_need_updating to true in SOSAccountSetToNew", v46, 2u);
  }

  [v1 setKey_interests_need_updating:1];
}

void sub_10020EA9C(const __CFDictionary *a1)
{
  v1 = SecItemDelete(a1);
  if (v1)
  {
    v2 = v1;
    v3 = sub_100006274("SecError");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4[0] = 67109120;
      v4[1] = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SecItemDelete: %d", v4, 8u);
    }
  }
}

SOSAccount *sub_10020EB50(uint64_t a1, uint64_t a2)
{
  v2 = [[SOSAccount alloc] initWithGestalt:a1 factory:a2];
  v3 = [(SOSAccount *)v2 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020EC20;
  block[3] = &unk_100346018;
  v4 = v2;
  v7 = v4;
  dispatch_sync(v3, block);

  return v4;
}

id sub_10020EC20(uint64_t a1)
{
  v2 = sub_100006274("circleop");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting account.key_interests_need_updating to true in SOSAccountCreate", v4, 2u);
  }

  return [*(a1 + 32) setKey_interests_need_updating:1];
}

void sub_10020ECA0(uint64_t a1, const void *a2)
{
  v2 = a2;
  CFSetSetValue(*(a1 + 32), a2);
  cf = 0;
  v4 = [*(a1 + 40) trust];
  v5 = [*(a1 + 40) kvs_message_transport];
  v6 = [*(a1 + 40) circle_transport];
  LOBYTE(v2) = [v4 cleanupAfterPeer:v5 circleTransport:v6 seconds:86400 circle:*(a1 + 48) cleanupPeer:v2 err:&cf];

  if ((v2 & 1) == 0)
  {
    v7 = sub_100006274("retirement");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = cf;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error cleaning up after peer, probably orphaned some stuff in KVS: (%@) – moving on", buf, 0xCu);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t sub_10020EDE4(uint64_t result, CFTypeRef cf)
{
  if (cf)
  {
    v2 = result;
    v3 = CFGetTypeID(cf);
    result = SOSPeerInfoGetTypeID();
    if (v3 == result)
    {
      v4 = *(v2 + 40);
      result = SOSCircleUpdatePeerInfo();
      *(*(*(v2 + 32) + 8) + 24) = 1;
    }
  }

  return result;
}

void sub_10020EE4C(void *a1, void *a2)
{
  v3 = a1;
  v6 = objc_retainBlock(a2);
  v4 = [v3 change_blocks];

  v5 = objc_retainBlock(v6);
  [v4 addObject:v5];
}

BOOL sub_10020EED0(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 trust];
  v5 = [v4 fullPeerInfo];
  v6 = [v4 retirees];
  if (v5)
  {
    v23[1] = 0;
    v7 = SOSFullPeerInfoPromoteToRetiredAndCopy();
    if (v7)
    {
      if (SOSCircleHasApplicant())
      {
        SOSCircleWithdrawRequest();
      }

      else if (SOSCircleHasPeer() && SOSCircleUpdatePeerInfo())
      {
        v23[0] = 0;
        v9 = [v3 trust];
        v10 = [v3 kvs_message_transport];
        v11 = [v3 circle_transport];
        v12 = [v9 cleanupAfterPeer:v10 circleTransport:v11 seconds:86400 circle:a2 cleanupPeer:v7 err:v23];

        if ((v12 & 1) == 0)
        {
          v13 = sub_100006274("SecError");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v25 = v7;
            v26 = 2112;
            v27 = v23[0];
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Error cleanup up after peer (%@): %@", buf, 0x16u);
          }
        }

        if (v23[0])
        {
          CFRelease(v23[0]);
        }
      }

      CFSetAddValue(v6, v7);
      [v4 setRetirees:v6];
      v23[0] = 0;
      v14 = [v3 circle_transport];
      v15 = [v14 postRetirement:SOSCircleGetName() peer:v7 err:v23];

      if ((v15 & 1) == 0)
      {
        v16 = sub_100006274("SecWarning");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v23[0];
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Couldn't post retirement (%@)", buf, 0xCu);
        }
      }

      v17 = [v3 circle_transport];
      v18 = [v17 flushChanges:v23];

      if ((v18 & 1) == 0)
      {
        v19 = sub_100006274("SecWarning");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v23[0];
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Couldn't flush retirement data (%@)", buf, 0xCu);
        }
      }

      v20 = v23[0];
      if (v23[0])
      {
        v23[0] = 0;
        CFRelease(v20);
      }
    }

    else
    {
      v8 = sub_100006274("SecError");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v25 = v5;
        v26 = 2112;
        v27 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Create ticket failed for peer %@: %@", buf, 0x16u);
      }
    }

    v21 = [v3 trust];
    [v21 purgeIdentity];

    if (v7)
    {
      CFRelease(v7);
    }
  }

  return v5 != 0;
}

void sub_10020F320(uint64_t a1, const void *a2)
{
  if (SOSPeerInfoIsCloudIdentity())
  {
    CloudIdentity = SOSFullPeerInfoCreateCloudIdentity();
    if (CloudIdentity)
    {

      CFRelease(CloudIdentity);
    }

    else
    {
      v5 = *(a1 + 32);

      CFSetAddValue(v5, a2);
    }
  }
}

uint64_t sub_10020F3AC(void *a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = [v5 account];
  v7 = [v6 trust];
  v8 = sub_100217CE0(v6);
  if (!v8)
  {
    goto LABEL_45;
  }

  v9 = v8;
  if ([v7 trustedCircle] && (objc_msgSend(v7, "trustedCircle"), SOSCircleCountPeers()))
  {
    if (([v6 accountInScriptBypassMode] & 1) == 0)
    {
      [v7 trustedCircle];
      v10 = [v6 peerID];
      HasPeerWithID = SOSCircleHasPeerWithID();

      if (HasPeerWithID)
      {
        v12 = sub_100006274("circleops");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "attempt to join a circle we're in - continuing.", buf, 2u);
        }

        goto LABEL_43;
      }
    }

    [v7 trustedCircle];
    [v6 accountKey];
    if (SOSCircleVerify())
    {
      if (([v6 accountInScriptBypassMode] & 1) == 0 && objc_msgSend(v7, "fullPeerInfo"))
      {
        [v7 peerInfo];
        [v7 trustedCircle];
        if (SOSCircleHasPeer())
        {
LABEL_43:
          v15 = 1;
          goto LABEL_44;
        }

        [v7 trustedCircle];
        SOSCircleRemoveRejectedPeer();
        [v7 trustedCircle];
        if ((SOSCircleHasApplicant() & 1) == 0)
        {
          v16 = sub_100006274("SecError");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            PeerID = SOSPeerInfoGetPeerID();
            [v7 trustedCircle];
            *buf = 138412546;
            *&buf[4] = PeerID;
            *&buf[12] = 2112;
            *&buf[14] = SOSCircleGetName();
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Resetting my peer (ID: %@) for circle '%@' during application", buf, 0x16u);
          }

          [v7 setFullPeerInfo:0];
        }
      }

      v34 = v5;
      v18 = [v34 account];
      v19 = [v18 trust];
      v39 = 0;
      v40 = &v39;
      v41 = 0x2020000000;
      v42 = 0;
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v38 = 0;
      if ([v19 trustedCircle])
      {
        v20 = [v18 trust];
        v21 = [v20 ensureFullPeerAvailable:v18 err:a3];

        if (v21)
        {
          if ([v18 accountInScriptBypassMode])
          {
            v22 = [v18 trust];
            [v22 setFullPeerInfo:0];

            v23 = [v18 trust];
            [v23 ensureFullPeerAvailable:v18 err:a3];
          }

          v33 = [v19 fullPeerInfo];
          [v19 trustedCircle];
          if (SOSCircleCountPeers() && (([v18 accountInScriptBypassMode] & 1) != 0 || !sub_100232DC8(v18)))
          {
            sub_100220520(v18);
            if (a2)
            {
              [v19 trustedCircle];
              v36[3] = SOSCircleCopyiCloudFullPeerInfoRef();
            }

            v27 = [v18 trust];
            v28 = [v18 circle_transport];
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&buf[16] = sub_10020FA30;
            v44 = &unk_1003453A8;
            v47 = &v39;
            v45 = v18;
            v49 = v33;
            v50 = a3;
            v51 = v9;
            v46 = v19;
            v48 = &v35;
            [v27 modifyCircle:v28 err:a3 action:buf];

            if (a2)
            {
              AllCurrent = SOSViewsGetAllCurrent();
              sub_100220C6C(v34, AllCurrent);
            }

            v25 = v45;
          }

          else
          {
            v24 = sub_100006274("resetToOffering");
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Resetting circle to offering since there are no peers", buf, 2u);
            }

            v25 = [v18 trust];
            v26 = [v25 resetCircleToOffering:v34 userKey:v9 err:a3];
            *(v40 + 24) = v26;
          }
        }
      }

      else
      {
        SOSCreateErrorWithFormat();
      }

      v30 = v36[3];
      if (v30)
      {
        v36[3] = 0;
        CFRelease(v30);
      }

      v31 = *(v40 + 24);
      _Block_object_dispose(&v35, 8);
      _Block_object_dispose(&v39, 8);

      if (v31)
      {
        [v7 setDepartureCode:1];
        goto LABEL_43;
      }

LABEL_45:
      v15 = 0;
      goto LABEL_44;
    }

    v13 = sub_100006274("resetToOffering");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Resetting circle to offering since we are new and it doesn't verify with current userKey", buf, 2u);
    }
  }

  else
  {
    v13 = sub_100006274("resetToOffering");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Resetting circle to offering because it's empty and we're joining", buf, 2u);
    }
  }

  v14 = [v6 trust];
  v15 = [v14 resetCircleToOffering:v5 userKey:v9 err:a3];

LABEL_44:
  return v15;
}

void sub_10020FA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10020FA30(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  sub_10020649C(*(a1 + 32), @"EscrowRecord");
  *(*(*(a1 + 48) + 8) + 24) = SOSFullPeerInfoReplaceEscrowRecords();
  v5 = *(a1 + 72);
  v4 = *(a1 + 80);
  v6 = *(a1 + 64);
  *(*(*(a1 + 48) + 8) + 24) &= SOSCircleRequestAdmission();
  [*(a1 + 40) setDepartureCode:1];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      SOSFullPeerInfoGetPeerInfo();
      if (SOSPeerInfoGetPeerID() && SOSCircleHasActivePeerWithID())
      {
        v7 = *(a1 + 80);
        v8 = *(a1 + 64);
        v9 = *(*(*(a1 + 56) + 8) + 24);
        SOSFullPeerInfoGetPeerInfo();
        SOSCircleAcceptRequest();
      }

      v10 = *(*(*(a1 + 48) + 8) + 24);
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_10020FBF8(void *a1, const __CFArray *a2, uint64_t a3)
{
  v5 = a1;
  sub_100085ABC(a2, @"[", @"]", &stru_100345090);
  v6 = sub_100217CE0(v5);
  if (!v6)
  {
    v17 = sub_100006274("circleOps");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Can't remove without userKey", buf, 2u);
    }

    goto LABEL_14;
  }

  v7 = v6;
  v8 = [v5 fullPeerInfo];
  v9 = [v5 peerInfo];
  if (!v8 || (v10 = v9) == 0)
  {
    v18 = sub_100006274("circleOps");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Can't remove without being active peer", buf, 2u);
    }

    SOSErrorCreate();
LABEL_14:
    v16 = 0;
    goto LABEL_15;
  }

  MutableForSOSPeerInfosByIDWithArray = CFSetCreateMutableForSOSPeerInfosByIDWithArray();
  if (MutableForSOSPeerInfosByIDWithArray)
  {
    v12 = MutableForSOSPeerInfosByIDWithArray;
    v13 = CFSetContainsValue(MutableForSOSPeerInfosByIDWithArray, v10) != 0;
    CFSetRemoveValue(v12, v10);
    v14 = [v5 trust];
    v15 = [v5 circle_transport];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10020FEA4;
    v21[3] = &unk_1003450B8;
    v23 = v12;
    v24 = v7;
    v25 = v8;
    v26 = a3;
    v22 = v5;
    v27 = v13;
    v16 = [v14 modifyCircle:v15 err:a3 action:v21];

    if (v16)
    {
      sub_100085CC8(v12, &stru_1003450D8);
    }

    CFRelease(v12);
  }

  else
  {
    v20 = sub_100006274("circleOps");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No peerSet to remove", buf, 2u);
    }

    v16 = 1;
  }

LABEL_15:

  return v16;
}

uint64_t sub_10020FEA4(uint64_t a1, uint64_t a2)
{
  if (!CFSetGetCount(*(a1 + 40)) || (v5 = *(a1 + 40), v4 = *(a1 + 48), v6 = *(a1 + 56), v7 = *(a1 + 64), result = SOSCircleRemovePeers(), result) && (v9 = *(a1 + 64), result = sub_100217C70(*(a1 + 32)), result))
  {
    if (*(a1 + 72) == 1)
    {
      v10 = sub_100006274("circleOps");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Leaving circle by client request (SOSAccountRemovePeersFromCircle)", v12, 2u);
      }

      v11 = *(a1 + 64);
      return sub_10020EED0(*(a1 + 32), a2);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void sub_10020FF78(id a1, __CFString *a2)
{
  v3 = sub_100006274("circleOps");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removed Peers from circle %@", &v4, 0xCu);
  }
}

void sub_100210024(id a1, __CFString *a2)
{
  v3 = sub_100006274("circleOps");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Attempting to remove peer set %@", &v4, 0xCu);
  }
}

void sub_1002100D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) circle_transport];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100210184;
  v7[3] = &unk_1003467B0;
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  [v2 modifyCircle:v3 err:v4 action:v7];
}

BOOL sub_100210184(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006274("circleOps");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Leaving circle by client request (Bail)", v7, 2u);
  }

  v5 = *(a1 + 40);
  return sub_10020EED0(*(a1 + 32), a2);
}

uint64_t sub_100210210(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  result = SOSCircleAcceptRequest();
  if (result)
  {
    ++*(*(a1[4] + 8) + 24);
  }

  return result;
}

void sub_100210258(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [v5 trust];
  v8 = [v7 peerInfo];
  cf = 0;
  if ([v7 trustedCircle] && v8)
  {
    [v7 trustedCircle];
    if (SOSCircleHasPeer())
    {
      v9 = [v5 trust];
      v10 = [v5 circle_transport];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100210434;
      v12[3] = &unk_1003453F8;
      v15 = a2;
      v14 = v6;
      v13 = v7;
      [v9 modifyCircle:v10 err:0 action:v12];
    }

    if (cf)
    {
      v11 = sub_100006274("SecError");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = cf;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Got error in SOSCircleHasPeer: %@", buf, 0xCu);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }
}

uint64_t sub_100210434(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100210558;
  v7[3] = &unk_1003453D0;
  v11 = a2;
  v3 = *(a1 + 48);
  v9 = *(a1 + 40);
  v8 = *(a1 + 32);
  v10 = &v12;
  v4 = v7;
  v16.length = CFArrayGetCount(v3);
  v16.location = 0;
  CFArrayApplyFunction(v3, v16, sub_100204A84, v4);

  v5 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v5;
}

void sub_100210540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100210558(uint64_t result, CFTypeRef cf)
{
  if (cf)
  {
    v3 = result;
    v4 = CFGetTypeID(cf);
    result = SOSPeerInfoGetTypeID();
    if (v4 == result)
    {
      v5 = *(v3 + 56);
      result = SOSCircleHasApplicant();
      if (result)
      {
        result = (*(*(v3 + 40) + 16))(*(v3 + 40), *(v3 + 56), [*(v3 + 32) fullPeerInfo], cf);
        if (result)
        {
          *(*(*(v3 + 48) + 8) + 24) = 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1002105F4(void *a1)
{
  v2 = a1[6];
  v3 = SOSCircleRejectRequest();
  if (v3)
  {
    v4 = *(*(a1[5] + 8) + 24);
    v5 = SOSCircleCountPeers();
    if (v4 > v5)
    {
      v5 = v4;
    }

    *(*(a1[5] + 8) + 24) = v5;
  }

  else
  {
    *(*(a1[4] + 8) + 24) = 0;
  }

  return v3;
}

void sub_100210680(void *a1)
{
  v1 = a1;
  v2 = [v1 trust];
  v3 = sub_100006274("updates");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ensuring peer registration.", buf, 2u);
  }

  if (!v2)
  {
    v4 = sub_100006274("updates");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to get trust object in Ensuring peer registration.", buf, 2u);
    }

    goto LABEL_11;
  }

  if (![v1 getCircleStatus:0])
  {
    v4 = [v1 trust];
    [v4 fullPeerInfo];
    [v4 trustedCircle];
    if (!SOSFullPeerInfoGetPeerInfo())
    {
LABEL_11:

      goto LABEL_12;
    }

    HasActivePeer = SOSCircleHasActivePeer();

    if (HasActivePeer && [v1 SOSMonitorModeSOSIsActive])
    {
      [v2 peerInfo];
      SOSPeerInfoGetPeerID();
      [v2 trustedCircle];
      [v1 accountKey];
      v6 = v1;
      v7 = v2;
      SOSCircleForEachValidSyncingPeer();

      v4 = v6;
      goto LABEL_11;
    }
  }

LABEL_12:
}

void sub_100210874(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  if ((SOSPeerInfoPeerIDEqual() & 1) == 0)
  {
    cf = 0;
    v5 = [*(a1 + 32) kvs_message_transport];
    v6 = [v5 SOSTransportMessageGetEngine];
    v7 = [*(a1 + 40) fullPeerInfo];
    if ([OTSOSActualAdapter sosEnabled]_0())
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 1;
      PeerID = SOSPeerInfoGetPeerID();
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100147BD8;
      v19 = &unk_100338098;
      v20 = &v14;
      v21 = v6;
      v22 = PeerID;
      v23 = v7;
      v24 = a2;
      p_cf = &cf;
      v9 = sub_10014811C(v6, PeerID, &cf, buf);
      *(v15 + 24) &= v9;
      _Block_object_dispose(&v14, 8);
    }

    else
    {
      SOSCCSetSOSDisabledError();
    }

    if (cf)
    {
      v10 = sub_100006274("updates");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [*(a1 + 40) fullPeerInfo];
        *buf = 138412802;
        *&buf[4] = a2;
        *&buf[12] = 2112;
        *&buf[14] = v11;
        *&buf[22] = 2112;
        v19 = cf;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "can't initialize transport for peer %@ with %@ (%@)", buf, 0x20u);
      }

      v12 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v12);
      }
    }
  }
}

void sub_100210A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100210A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_100006274("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SOSCloudKeychainPutObjectsInCloud returned error: %@", &v7, 0xCu);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100210B48(void *a1, uint64_t *a2)
{
  v42 = a1;
  v3 = dispatch_get_global_queue(-2, 0);
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = dispatch_time(0, 30000000000);
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  *context = _NSConcreteStackBlock;
  *&context[8] = 3221225472;
  *&context[16] = sub_100211334;
  v53 = &unk_100345420;
  v55 = &v43;
  v56 = &v47;
  v6 = v4;
  v54 = v6;
  v7 = objc_retainBlock(context);
  SOSCloudKeychainGetAllObjectsFromCloud();
  dispatch_semaphore_wait(v6, v5);
  v8 = v44;
  v9 = v44[3];
  if (v9)
  {
    if (!a2 || (CFRetain(v44[3]), *a2 = v9, v8 = v44, (v9 = v44[3]) != 0))
    {
      v8[3] = 0;
      CFRelease(v9);
    }
  }

  v10 = *(v48 + 24);

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);

  if (v10)
  {
    v11 = v42;
    Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
    v13 = [v11 trust];
    [v13 trustedCircle];
    sub_100218428(v11);

    *context = _NSConcreteStackBlock;
    *&context[8] = 3221225472;
    *&context[16] = sub_100211470;
    v53 = &unk_100346068;
    v54 = Mutable;
    SOSCircleForEachActiveValidPeer();

    v14 = v11;
    v15 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
    v16 = [v14 trust];

    [v16 trustedCircle];
    *context = _NSConcreteStackBlock;
    *&context[8] = 3221225472;
    *&context[16] = sub_1002114B0;
    v53 = &unk_100346068;
    v54 = v15;
    SOSCircleForEachRetiredPeer();

    v17 = +[NSMutableArray array];
    v18 = v17;
    if (Mutable && v15)
    {
      *context = _NSConcreteStackBlock;
      *&context[8] = 3221225472;
      *&context[16] = sub_100211680;
      v53 = &unk_1003451C8;
      v55 = v15;
      v56 = Mutable;
      v54 = v17;
      CFDictionaryApplyFunction(v10, sub_1002117CC, context);
    }

    else if (!Mutable)
    {
LABEL_16:
      if (v15)
      {
        CFRelease(v15);
      }

      v22 = sub_100006274("key-cleanup");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        Count = CFDictionaryGetCount(v10);
        v24 = [v18 count];
        *context = 134218240;
        *&context[4] = Count;
        *&context[12] = 2048;
        *&context[14] = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "total keys: %lu, cleaning up %lu", context, 0x16u);
      }

      v25 = sub_100006274("key-cleanup");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *context = 138412290;
        *&context[4] = v18;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "message keys that we should remove! %@", context, 0xCu);
      }

      v20 = v18;
      v26 = v3;
      v27 = sub_100228CC0(v14);
      v28 = dispatch_semaphore_create(0);
      v29 = dispatch_time(0, 30000000000);
      *context = _NSConcreteStackBlock;
      *&context[8] = 3221225472;
      *&context[16] = sub_1002114F0;
      v53 = &unk_1003465E8;
      v30 = v28;
      v54 = v30;
      v31 = objc_retainBlock(context);
      SOSCloudKeychainRemoveKeys();

      dispatch_semaphore_wait(v30, v29);
      if (v27)
      {
        CFRelease(v27);
      }

      v32 = v14;
      v33 = +[NSDate date];
      v34 = [v32 settings];

      [v34 setObject:v33 forKey:@"lastKVSCleanup"];
      v35 = +[NSMutableDictionary dictionary];
      MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, @"[");
      Current = CFAbsoluteTimeGetCurrent();
      *context = _NSConcreteStackBlock;
      *&context[8] = 3221225472;
      *&context[16] = sub_1002115B4;
      v53 = &unk_100346A98;
      v54 = MutableCopy;
      sub_10008629C(context, Current);
      CFStringAppend(MutableCopy, @"]");
      [v35 setObject:MutableCopy forKey:kSOSKVSLastCleanupTimestampKey];
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      v38 = dispatch_semaphore_create(0);
      v39 = dispatch_time(0, 30000000000);
      v47 = _NSConcreteStackBlock;
      v48 = 3221225472;
      v49 = sub_1002115BC;
      v50 = &unk_1003465E8;
      v51 = v38;
      v40 = v38;
      v41 = objc_retainBlock(&v47);
      SOSCloudKeychainPutObjectsInCloud();
      dispatch_semaphore_wait(v40, v39);

      CFRelease(v10);
LABEL_27:

      goto LABEL_28;
    }

    CFRelease(Mutable);
    goto LABEL_16;
  }

  v19 = sub_100006274("key-cleanup");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *context = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "KVS data returned is nil, cleanup complete", context, 2u);
  }

  if (a2)
  {
    v20 = sub_100006274("SecError");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *a2;
      *context = 138412290;
      *&context[4] = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "key-cleanup: SOSAccountCopyObjectsFromCloud hit an error: %@", context, 0xCu);
    }

    goto LABEL_27;
  }

LABEL_28:
}