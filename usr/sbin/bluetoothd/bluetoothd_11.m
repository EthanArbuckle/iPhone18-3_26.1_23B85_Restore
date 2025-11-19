uint64_t sub_1000BC58C(uint64_t a1)
{
  if (!qword_100B60318)
  {
    goto LABEL_15;
  }

  v2 = qword_100B60318;
  while (*(v2 + 24) != *(a1 + 20))
  {
    v2 = *(v2 + 80);
    if (v2 == qword_100B60318 || v2 == 0)
    {
      goto LABEL_15;
    }
  }

  if (*(v2 + 16))
  {
    sub_10000C248(*(v2 + 8));
    v4 = sub_10000C248(*(v2 + 8));
    v5 = sub_100007618(0x40uLL, 0x10A0040CDCE5640uLL);
    if (!v5)
    {
      return 106;
    }

    v6 = v5;
    *v5 = 1;
    *(v5 + 1) = *a1;
    *(v5 + 1) = 0;
    *(v5 + 1) = *(a1 + 8);
    *(v5 + 4) = *(a1 + 16);
    if (sub_1000B8BE0(v5 + 3, a1 + 40, 0))
    {
      sub_10000C1E8(v6);
      return 106;
    }

    *(v6 + 32) = *(v2 + 27);
    *(v6 + 33) = *(a1 + 24);
    *(v6 + 34) = *(a1 + 26);
    *(v6 + 36) = *(v2 + 24);
    *(v6 + 48) = 0;
    *(v6 + 56) = 0;
    *(v6 + 40) = 0;
    if (*(v2 + 56) == 0xFFFFFFFFLL && !v4)
    {
      *(v2 + 48) = sub_1000B11F4();
    }

    sub_1000B8B8C(*(v2 + 8), v6, 8);
    result = 0;
    dword_100B6033C = 2;
  }

  else
  {
LABEL_15:
    if (sub_10000C240())
    {
      sub_10000AF54("Can't retransmit a basic flow control channel.", v8, v9, v10, v11, v12, v13, v14, v16);
      v15 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1000D660C();
    return 509;
  }

  return result;
}

void sub_1000BC728(void *ptr)
{
  v2 = *ptr;
  v3 = ptr[3];
  if (!v2)
  {
    if (v3)
    {
      sub_1000BB9CC(v3);
    }

    v3 = ptr[5];
  }

  if (v3)
  {
    sub_1000BC14C(v3);
  }

  sub_10000C1E8(ptr);
}

void sub_1000BC77C(uint64_t a1, void *ptr, int a3)
{
  v3 = (a1 + 16);
  v4 = *(a1 + 16);
  if (v4)
  {
    if (v4 == ptr)
    {
      v6 = 0;
LABEL_8:
      v7 = ptr[1];
      if (v6)
      {
        v3 = v6 + 1;
      }

      *v3 = v7;
      if (!v7)
      {
        *(a1 + 24) = v6;
      }

      --*(a1 + 32);
      if (a3)
      {
        v8 = *(a1 + 8);
        if (v8)
        {
          v8(*ptr);
        }
      }

      sub_10000C1E8(ptr);
    }

    else
    {
      while (1)
      {
        v6 = v4;
        v4 = v4[1];
        if (!v4)
        {
          break;
        }

        if (v4 == ptr)
        {
          goto LABEL_8;
        }
      }
    }
  }
}

uint64_t sub_1000BC828(uint64_t result)
{
  if (result)
  {
    v1 = *(*result + 8);
    *result = v1;
    return v1 != 0;
  }

  return result;
}

uint64_t sub_1000BC844(uint64_t a1, unsigned int a2)
{
  v4 = (a2 >> 2) & 3;
  if (v4 <= 1)
  {
    if (!v4)
    {
      if (a2 & 0x80 | (a2 >> 4) & 1)
      {
        if ((a2 & 0x80) == 0)
        {
          if ((a2 >> 4))
          {
            v5 = (a2 >> 8) & 0x3F;
            if (*(*(sub_1000B12AC(a1) + 128) + 6) <= v5 && v5 <= *(*(sub_1000B12AC(a1) + 128) + 4))
            {
              goto LABEL_10;
            }

            v6 = *(*(sub_1000B12AC(a1) + 128) + 6);
            v7 = *(*(sub_1000B12AC(a1) + 128) + 6);
            if (v6 <= v5)
            {
              if (v5 - v7 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
              {
                goto LABEL_10;
              }
            }

            else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v7) & 0x3Fu) >= v5)
            {
LABEL_10:
              sub_1000B4F34(a1, (a2 >> 8) & 0x3F, 0);
              sub_1002996D4(a1);
              v8 = sub_1000B12AC(a1);
              v9 = 0;
              *(*(v8 + 128) + 15) = 0;
              return v9;
            }

            if (sub_10000C240())
            {
              if (*(*(sub_1000B12AC(a1) + 128) + 6) <= v5 && v5 <= *(*(sub_1000B12AC(a1) + 128) + 4))
              {
                v159 = 1;
              }

              else
              {
                v157 = *(*(sub_1000B12AC(a1) + 128) + 6);
                v158 = *(*(sub_1000B12AC(a1) + 128) + 6);
                v159 = v157 <= v5 ? v5 - v158 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) : ((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v158) & 0x3Fu) >= v5;
              }

              sub_10000AF54("S-Frame Receiver Ready Error: ValidReqSeq %d, ValidF-bit %d", v150, v151, v152, v153, v154, v155, v156, v159);
              v224 = sub_10000C050(0x2Fu);
              if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_226;
              }
            }
          }

LABEL_227:
          v225 = sub_1000B12AC(a1);
          sub_1002976B0(*(v225 + 128));
          if (!sub_10000C240())
          {
            return sub_10029104C(*(a1 + 4), 436);
          }

          v226 = *(*(sub_1000B12AC(a1) + 128) + 6);
          v227 = (a2 >> 8) & 0x3F;
          sub_1000B12AC(a1);
          sub_1000B12AC(a1);
          if (*(*(sub_1000B12AC(a1) + 128) + 6) > v227 || v227 > *(*(sub_1000B12AC(a1) + 128) + 4))
          {
            sub_1000B12AC(a1);
            sub_1000B12AC(a1);
            sub_1000B12AC(a1);
          }

          if (*(*(sub_1000B12AC(a1) + 128) + 6) > v227 || v227 > *(*(sub_1000B12AC(a1) + 128) + 4))
          {
            sub_1000B12AC(a1);
            sub_1000B12AC(a1);
            sub_1000B12AC(a1);
          }

          sub_1000B12AC(a1);
          sub_1000B12AC(a1);
          sub_1000B12AC(a1);
          sub_10000AF54("Invalid S-Frame header while in RECV e:%d, r:%d, n:%d, u:%d, WITH_VALID_REQSEQ=%d, WITH_VALID_REQSEQ_VALUE=%d, WITH_VALID_REQSEQ_BOUNDS=%d", v228, v229, v230, v231, v232, v233, v234, v226);
          v235 = sub_10000C050(0x2Fu);
          if (!os_log_type_enabled(v235, OS_LOG_TYPE_ERROR))
          {
            return sub_10029104C(*(a1 + 4), 436);
          }

LABEL_235:
          sub_10080F604();
          return sub_10029104C(*(a1 + 4), 436);
        }

        v52 = (a2 >> 8) & 0x3F;
        if (*(*(sub_1000B12AC(a1) + 128) + 6) > v52 || v52 > *(*(sub_1000B12AC(a1) + 128) + 4))
        {
          v53 = *(*(sub_1000B12AC(a1) + 128) + 6);
          v54 = *(*(sub_1000B12AC(a1) + 128) + 6);
          if (v53 <= v52)
          {
            if (v52 - v54 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
            {
LABEL_132:
              if (!sub_10000C240())
              {
                goto LABEL_227;
              }

              if (*(*(sub_1000B12AC(a1) + 128) + 6) <= v52 && v52 <= *(*(sub_1000B12AC(a1) + 128) + 4))
              {
                v122 = 1;
              }

              else
              {
                v120 = *(*(sub_1000B12AC(a1) + 128) + 6);
                v121 = *(*(sub_1000B12AC(a1) + 128) + 6);
                v122 = v120 <= v52 ? v52 - v121 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) : ((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v121) & 0x3Fu) >= v52;
              }

              sub_1000B12AC(a1);
              sub_10000AF54("S-Frame Receiver Ready Error: ValidReqSeq %d, ValidF-bit %d", v188, v189, v190, v191, v192, v193, v194, v122);
              v195 = sub_10000C050(0x2Fu);
              if (!os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_227;
              }

              goto LABEL_226;
            }
          }

          else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v54) & 0x3Fu) < v52)
          {
            goto LABEL_132;
          }
        }

        if (*(*(sub_1000B12AC(a1) + 128) + 2))
        {
          goto LABEL_132;
        }

        *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
        sub_1000B4F34(a1, (a2 >> 8) & 0x3F, 1);
        if (*(*(sub_1000B12AC(a1) + 128) + 148))
        {
LABEL_157:
          v145 = sub_1000B12AC(a1);
          v9 = 0;
          *(*(v145 + 128) + 148) = 0;
          return v9;
        }

        v196 = sub_1002993EC(a1, (a2 >> 8) & 0x3F, (a2 & 0x10) != 0);
        if (!v196)
        {
          goto LABEL_53;
        }

        v197 = v196;
        if (!sub_10000C240())
        {
          goto LABEL_53;
        }

        sub_10000AF54("Failed to retransmit I-Frames %!.", v198, v199, v200, v201, v202, v203, v204, v197);
        v205 = sub_10000C050(0x2Fu);
        if (!os_log_type_enabled(v205, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }

LABEL_155:
        sub_1000E09C0();
LABEL_53:
        sub_1000BE1E4(a1, 0);
        return 0;
      }

      v27 = (a2 >> 8) & 0x3F;
      if (*(*(sub_1000B12AC(a1) + 128) + 6) > v27 || v27 > *(*(sub_1000B12AC(a1) + 128) + 4))
      {
        v28 = *(*(sub_1000B12AC(a1) + 128) + 6);
        v29 = *(*(sub_1000B12AC(a1) + 128) + 6);
        if (v28 > v27)
        {
          if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v29) & 0x3Fu) >= v27)
          {
            goto LABEL_46;
          }

LABEL_112:
          if (!sub_10000C240())
          {
            goto LABEL_227;
          }

          if (*(*(sub_1000B12AC(a1) + 128) + 6) <= v27 && v27 <= *(*(sub_1000B12AC(a1) + 128) + 4))
          {
            v105 = 1;
          }

          else
          {
            v103 = *(*(sub_1000B12AC(a1) + 128) + 6);
            v104 = *(*(sub_1000B12AC(a1) + 128) + 6);
            v105 = v103 <= v27 ? v27 - v104 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) : ((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v104) & 0x3Fu) >= v27;
          }

          sub_10000AF54("S-Frame Receiver Ready Error: ValidReqSeq %d, ValidF-bit %d", v96, v97, v98, v99, v100, v101, v102, v105);
          v215 = sub_10000C050(0x2Fu);
          if (!os_log_type_enabled(v215, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_227;
          }

          goto LABEL_226;
        }

        if (v27 - v29 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
        {
          goto LABEL_112;
        }
      }

LABEL_46:
      sub_1000B4F34(a1, (a2 >> 8) & 0x3F, 0);
      if (*(*(sub_1000B12AC(a1) + 128) + 15) == 1)
      {
        v30 = sub_1000B12AC(a1);
        if (sub_10000C248(*(*(v30 + 128) + 176)))
        {
          v31 = sub_1000BBA6C(a1);
          if (v31)
          {
            v32 = v31;
            if (sub_10000C240())
            {
              sub_10000AF54("Failed to start retransmission timer %!.", v33, v34, v35, v36, v37, v38, v39, v32);
              v40 = sub_10000C050(0x2Fu);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }
          }
        }
      }

      *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
      goto LABEL_53;
    }

    v14 = *(*(sub_1000B12AC(a1) + 128) + 6);
    v15 = (a2 >> 8) & 0x3F;
    if ((a2 & 0x80) == 0)
    {
      if (v14 <= v15 && v15 <= *(*(sub_1000B12AC(a1) + 128) + 4))
      {
        goto LABEL_69;
      }

      v16 = *(*(sub_1000B12AC(a1) + 128) + 6);
      v17 = *(*(sub_1000B12AC(a1) + 128) + 6);
      if (v16 > v15)
      {
        if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v17) & 0x3Fu) < v15)
        {
          goto LABEL_85;
        }

        goto LABEL_69;
      }

      if (v15 - v17 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
      {
LABEL_69:
        if (*(sub_1000B12AC(a1) + 67))
        {
          v55 = sub_100297AC4(a1, (a2 >> 8) & 0x3F);
          if (v55 >= *(sub_1000B12AC(a1) + 67))
          {
            goto LABEL_85;
          }
        }

        *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
        sub_1000B4F34(a1, (a2 >> 8) & 0x3F, 0);
        v56 = sub_1002993EC(a1, (a2 >> 8) & 0x3F, (a2 & 0x10) != 0);
        if (v56)
        {
          v57 = v56;
          if (sub_10000C240())
          {
            sub_10000AF54("Failed to retransmit I-Frames %!.", v58, v59, v60, v61, v62, v63, v64, v57);
            v65 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }
        }

        sub_1000BE1E4(a1, 0);
        if (!*(*(sub_1000B12AC(a1) + 128) + 2))
        {
          v66 = sub_1000B12AC(a1);
          v9 = 0;
          *(*(v66 + 128) + 148) = 1;
          return v9;
        }

        return 0;
      }

LABEL_85:
      if (!sub_10000C240())
      {
        goto LABEL_227;
      }

      if (*(*(sub_1000B12AC(a1) + 128) + 6) <= v15 && v15 <= *(*(sub_1000B12AC(a1) + 128) + 4))
      {
        v70 = 1;
      }

      else
      {
        v68 = *(*(sub_1000B12AC(a1) + 128) + 6);
        v69 = *(*(sub_1000B12AC(a1) + 128) + 6);
        if (v68 <= v15)
        {
          v70 = v15 - v69 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32);
        }

        else
        {
          v70 = ((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v69) & 0x3Fu) >= v15;
        }
      }

      if (*(sub_1000B12AC(a1) + 67))
      {
        sub_100297AC4(a1, (a2 >> 8) & 0x3F);
        sub_1000B12AC(a1);
      }

      sub_10000AF54("S-Frame Reject Error: ValidReqSeq_Retrans %d, MaxRetransExceeded %d", v127, v128, v129, v130, v131, v132, v133, v70);
      v134 = sub_10000C050(0x2Fu);
      if (!os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_227;
      }

      goto LABEL_226;
    }

    if (v14 > v15 || v15 > *(*(sub_1000B12AC(a1) + 128) + 4))
    {
      v23 = *(*(sub_1000B12AC(a1) + 128) + 6);
      v24 = *(*(sub_1000B12AC(a1) + 128) + 6);
      if (v23 <= v15)
      {
        if (v15 - v24 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
        {
          goto LABEL_85;
        }
      }

      else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v24) & 0x3Fu) < v15)
      {
        goto LABEL_85;
      }
    }

    if (!*(sub_1000B12AC(a1) + 67) || (v67 = sub_100297AC4(a1, (a2 >> 8) & 0x3F), v67 < *(sub_1000B12AC(a1) + 67)))
    {
      if (!*(*(sub_1000B12AC(a1) + 128) + 2))
      {
        *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
        sub_1000B4F34(a1, (a2 >> 8) & 0x3F, 1);
        if (*(*(sub_1000B12AC(a1) + 128) + 148))
        {
          goto LABEL_157;
        }

        v135 = sub_1002993EC(a1, (a2 >> 8) & 0x3F, (a2 & 0x10) != 0);
        if (!v135)
        {
          goto LABEL_53;
        }

        v136 = v135;
        if (!sub_10000C240())
        {
          goto LABEL_53;
        }

        sub_10000AF54("Failed to retransmit I-Frames %!.", v137, v138, v139, v140, v141, v142, v143, v136);
        v144 = sub_10000C050(0x2Fu);
        if (!os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }

        goto LABEL_155;
      }
    }

    goto LABEL_85;
  }

  if (v4 == 3)
  {
    if (a2 & 0x10 | (a2 >> 7) & 1)
    {
      v10 = (a2 >> 7) & 1;
      if ((a2 & 0x10) == 0 && v10)
      {
        v11 = (a2 >> 8) & 0x3F;
        if (*(*(sub_1000B12AC(a1) + 128) + 6) > v11 || v11 > *(*(sub_1000B12AC(a1) + 128) + 4))
        {
          v12 = *(*(sub_1000B12AC(a1) + 128) + 6);
          v13 = *(*(sub_1000B12AC(a1) + 128) + 6);
          if (v12 <= v11)
          {
            if (v11 - v13 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
            {
LABEL_141:
              if (!sub_10000C240())
              {
                goto LABEL_227;
              }

              if (*(*(sub_1000B12AC(a1) + 128) + 6) <= v11 && v11 <= *(*(sub_1000B12AC(a1) + 128) + 4))
              {
                v126 = 1;
              }

              else
              {
                v124 = *(*(sub_1000B12AC(a1) + 128) + 6);
                v125 = *(*(sub_1000B12AC(a1) + 128) + 6);
                if (v124 <= v11)
                {
                  v126 = v11 - v125 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32);
                }

                else
                {
                  v126 = ((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v125) & 0x3Fu) >= v11;
                }
              }

              if (*(sub_1000B12AC(a1) + 67))
              {
                sub_100297AC4(a1, (a2 >> 8) & 0x3F);
                sub_1000B12AC(a1);
              }

              sub_10000AF54("S-Frame p 0, f 1, Error: ValidReqSeq_Retrans %d, MaxRetransExceeded %d", v180, v181, v182, v183, v184, v185, v186, v126);
              v187 = sub_10000C050(0x2Fu);
              if (!os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_227;
              }

              goto LABEL_226;
            }
          }

          else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v13) & 0x3Fu) < v11)
          {
            goto LABEL_141;
          }
        }

        if (!*(sub_1000B12AC(a1) + 67) || (v123 = sub_100297AC4(a1, (a2 >> 8) & 0x3F), v123 < *(sub_1000B12AC(a1) + 67)))
        {
          if (!*(*(sub_1000B12AC(a1) + 128) + 2))
          {
            *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
            sub_1002997C8(a1, 1);
            if (*(*(sub_1000B12AC(a1) + 128) + 149) == 1 && v11 == *(*(sub_1000B12AC(a1) + 128) + 150))
            {
              v160 = sub_1000B12AC(a1);
              v9 = 0;
              *(*(v160 + 128) + 149) = 0;
              return v9;
            }

            v9 = sub_1002998A0(a1, (a2 >> 8) & 0x3F, 0);
            if (!v9)
            {
              return v9;
            }

            if (sub_10000C240())
            {
              sub_10000AF54("Failed to retransmit requested I-Frames %!.", v172, v173, v174, v175, v176, v177, v178, v9);
              v179 = sub_10000C050(0x2Fu);
              if (os_log_type_enabled(v179, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }

            return 0;
          }
        }

        goto LABEL_141;
      }

      if ((a2 & 0x10) == 0)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Got S_FRAME but something is not correct", v44, v45, v46, v47, v48, v49, v50, v237);
          v51 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        goto LABEL_227;
      }

      v41 = (a2 >> 8) & 0x3F;
      if (*(*(sub_1000B12AC(a1) + 128) + 6) > v41 || v41 > *(*(sub_1000B12AC(a1) + 128) + 4))
      {
        v87 = *(*(sub_1000B12AC(a1) + 128) + 6);
        v88 = *(*(sub_1000B12AC(a1) + 128) + 6);
        if (v87 <= v41)
        {
          if (v41 - v88 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
          {
LABEL_163:
            if (!sub_10000C240())
            {
              goto LABEL_227;
            }

            if (*(*(sub_1000B12AC(a1) + 128) + 6) <= v41 && v41 <= *(*(sub_1000B12AC(a1) + 128) + 4))
            {
              v149 = 1;
            }

            else
            {
              v147 = *(*(sub_1000B12AC(a1) + 128) + 6);
              v148 = *(*(sub_1000B12AC(a1) + 128) + 6);
              if (v147 <= v41)
              {
                v149 = v41 - v148 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32);
              }

              else
              {
                v149 = ((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v148) & 0x3Fu) >= v41;
              }
            }

            if (*(sub_1000B12AC(a1) + 67))
            {
              sub_100297AC4(a1, (a2 >> 8) & 0x3F);
              sub_1000B12AC(a1);
            }

            sub_10000AF54("S-Frame p == 1 Error ValidReqSeq_Retrans %d, MaxRetransExceeded %d", v216, v217, v218, v219, v220, v221, v222, v149);
            v223 = sub_10000C050(0x2Fu);
            if (!os_log_type_enabled(v223, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_227;
            }

            goto LABEL_226;
          }
        }

        else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v88) & 0x3Fu) < v41)
        {
          goto LABEL_163;
        }
      }

      if (*(sub_1000B12AC(a1) + 67))
      {
        v146 = sub_100297AC4(a1, (a2 >> 8) & 0x3F);
        if (v146 >= *(sub_1000B12AC(a1) + 67))
        {
          goto LABEL_163;
        }
      }

      if (v10 && *(*(sub_1000B12AC(a1) + 128) + 2))
      {
        goto LABEL_163;
      }

      *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
      sub_1000B4F34(a1, (a2 >> 8) & 0x3F, (a2 >> 7) & 1);
      v161 = sub_1002998A0(a1, (a2 >> 8) & 0x3F, 1);
      if (v161)
      {
        v162 = v161;
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to retransmit requested I-Frames %!.", v163, v164, v165, v166, v167, v168, v169, v162);
          v170 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      sub_1000BE1E4(a1, 0);
LABEL_183:
      if (!*(*(sub_1000B12AC(a1) + 128) + 2))
      {
        *(*(sub_1000B12AC(a1) + 128) + 149) = 1;
        v171 = sub_1000B12AC(a1);
        v9 = 0;
        *(*(v171 + 128) + 150) = v41 != 0;
        return v9;
      }

      return 0;
    }

    v41 = (a2 >> 8) & 0x3F;
    if (*(*(sub_1000B12AC(a1) + 128) + 6) > v41 || v41 > *(*(sub_1000B12AC(a1) + 128) + 4))
    {
      v42 = *(*(sub_1000B12AC(a1) + 128) + 6);
      v43 = *(*(sub_1000B12AC(a1) + 128) + 6);
      if (v42 <= v41)
      {
        if (v41 - v43 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
        {
          goto LABEL_124;
        }
      }

      else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v43) & 0x3Fu) < v41)
      {
        goto LABEL_124;
      }
    }

    if (!*(sub_1000B12AC(a1) + 67) || (v106 = sub_100297AC4(a1, (a2 >> 8) & 0x3F), v106 < *(sub_1000B12AC(a1) + 67)))
    {
      *(*(sub_1000B12AC(a1) + 128) + 15) = 0;
      sub_1000B12AC(a1);
      v107 = sub_1002998A0(a1, (a2 >> 8) & 0x3F, 0);
      if (v107)
      {
        v108 = v107;
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to retransmit requested I-Frames %!.", v109, v110, v111, v112, v113, v114, v115, v108);
          v116 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      goto LABEL_183;
    }

LABEL_124:
    if (!sub_10000C240())
    {
      goto LABEL_227;
    }

    if (*(*(sub_1000B12AC(a1) + 128) + 6) <= v41 && v41 <= *(*(sub_1000B12AC(a1) + 128) + 4))
    {
      v119 = 1;
    }

    else
    {
      v117 = *(*(sub_1000B12AC(a1) + 128) + 6);
      v118 = *(*(sub_1000B12AC(a1) + 128) + 6);
      if (v117 <= v41)
      {
        v119 = v41 - v118 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32);
      }

      else
      {
        v119 = ((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v118) & 0x3Fu) >= v41;
      }
    }

    if (*(sub_1000B12AC(a1) + 67))
    {
      sub_100297AC4(a1, (a2 >> 8) & 0x3F);
      sub_1000B12AC(a1);
    }

    sub_10000AF54("S-Frame Select Reject Error: ValidReqSeq_Retrans %d, MaxRetransExceeded %d", v206, v207, v208, v209, v210, v211, v212, v119);
    v213 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_227;
    }

LABEL_226:
    sub_10080F604();
    goto LABEL_227;
  }

  v18 = a2 >> 4;
  v19 = *(*(sub_1000B12AC(a1) + 128) + 6);
  v20 = (a2 >> 8) & 0x3F;
  if ((v18 & 1) == 0)
  {
    if (v19 > v20 || v20 > *(*(sub_1000B12AC(a1) + 128) + 4))
    {
      v21 = *(*(sub_1000B12AC(a1) + 128) + 6);
      v22 = *(*(sub_1000B12AC(a1) + 128) + 6);
      if (v21 <= v20)
      {
        if (v20 - v22 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
        {
          goto LABEL_93;
        }
      }

      else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v22) & 0x3Fu) < v20)
      {
        goto LABEL_93;
      }
    }

    if (((a2 >> 7) & 1) == 0 || !*(*(sub_1000B12AC(a1) + 128) + 2))
    {
      *(*(sub_1000B12AC(a1) + 128) + 15) = 1;
      sub_1000B4F34(a1, (a2 >> 8) & 0x3F, (a2 >> 7) & 1);
      sub_1000B47C0(a1);
      return 0;
    }

LABEL_93:
    if (*(*(sub_1000B12AC(a1) + 128) + 6) > v20 || v20 > *(*(sub_1000B12AC(a1) + 128) + 4))
    {
      if (!sub_10000C240())
      {
        return sub_10029104C(*(a1 + 4), 436);
      }

      sub_10000AF54("Invalid reqseq", v71, v72, v73, v74, v75, v76, v77, v237);
      v78 = sub_10000C050(0x2Fu);
      if (!os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        return sub_10029104C(*(a1 + 4), 436);
      }

      goto LABEL_235;
    }

    if (sub_10000C240())
    {
      if (*(*(sub_1000B12AC(a1) + 128) + 6) > v20 || v20 > *(*(sub_1000B12AC(a1) + 128) + 4))
      {
        sub_1000B12AC(a1);
        sub_1000B12AC(a1);
        sub_1000B12AC(a1);
      }

      if ((a2 & 0x80) != 0)
      {
        sub_1000B12AC(a1);
      }

      sub_10000AF54("S-Frame Receiver Not Ready Error: P-bit %d, ValidReqSeq %d, ValidF-bit %d", v89, v90, v91, v92, v93, v94, v95, (a2 >> 4) & 1);
      v214 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v214, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_226;
      }
    }

    goto LABEL_227;
  }

  if (v19 > v20 || v20 > *(*(sub_1000B12AC(a1) + 128) + 4))
  {
    v25 = *(*(sub_1000B12AC(a1) + 128) + 6);
    v26 = *(*(sub_1000B12AC(a1) + 128) + 6);
    if (v25 <= v20)
    {
      if (v20 - v26 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
      {
        goto LABEL_93;
      }
    }

    else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v26) & 0x3Fu) < v20)
    {
      goto LABEL_93;
    }
  }

  if (((a2 >> 7) & 1) != 0 && *(*(sub_1000B12AC(a1) + 128) + 2))
  {
    goto LABEL_93;
  }

  *(*(sub_1000B12AC(a1) + 128) + 15) = 1;
  sub_1000B4F34(a1, (a2 >> 8) & 0x3F, (a2 >> 7) & 1);
  sub_1000B47C0(a1);
  v9 = sub_10029936C(a1, 0, 1);
  if (v9)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send RR or RNR %!", v79, v80, v81, v82, v83, v84, v85, v9);
      v86 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  return v9;
}

uint64_t sub_1000BE1E4(uint64_t a1, char a2)
{
  if ((*(*(sub_1000B12AC(a1) + 128) + 14) & 1) == 0)
  {
    *(*(sub_1000B12AC(a1) + 128) + 14) = a2;
  }

  v4 = *(a1 + 4);

  return sub_1000BE23C(v4);
}

uint64_t sub_1000BE23C(uint64_t result)
{
  if (qword_100B60318)
  {
    v1 = qword_100B60318;
    do
    {
      if (*(v1 + 24) == result)
      {
        break;
      }

      v1 = *(v1 + 80);
    }

    while (v1 != qword_100B60318 && v1 != 0);
  }

  dword_100B6033C = 2;
  return result;
}

BOOL sub_1000BE280(uint64_t a1)
{
  result = 0;
  if (a1 && dword_100BCE338)
  {
    result = sub_1000ABD24(a1);
    if (result)
    {
      return *(a1 + 70) == 1;
    }
  }

  return result;
}

uint64_t sub_1000BE2D0(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v3 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v4 = 0;
    v5 = &dword_100BC9D68;
    do
    {
      if (*(v5 - 23) == result)
      {
        *a2 = *(v5 - 2);
        *a3 = *(v5 - 1);
        *v5 = 0;
        *(v5 - 2) = 0;
        v3 = dword_100BC9C74;
      }

      ++v4;
      v5 += 268;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t sub_1000BE324(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  while (1)
  {
    if (*(a1 + 2))
    {
      v4 = *(a1 + 4);
      if (*(a1 + 2) - 1 > v4)
      {
        goto LABEL_8;
      }
    }

    if (*a1 != 1)
    {
      return 0;
    }

    if (!sub_1000D5E38(a1))
    {
      return 106;
    }

    v4 = *(a1 + 4);
LABEL_8:
    --v2;
    v5 = *(a1 + 8);
    *(a1 + 4) = v4 + 1;
    *(v5 + v4) = 32;
    if (!v2)
    {
      return 0;
    }
  }
}

uint64_t sub_1000BE3D4(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = sub_1000BE4EC(v7, a2, "DeviceTags");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (*(a3 + 23) >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    v10 = [NSString stringWithUTF8String:v9];
    *a4 = [v8 containsObject:v10];

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  objc_autoreleasePoolPop(v7);
  return v11;
}

uint64_t sub_1000BE4B4()
{
  if (qword_100B6D7F0 != -1)
  {
    sub_10082C1A0();
  }

  return qword_100B6D7E8;
}

id sub_1000BE4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_100829EC4();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    v12 = *(a2 + 128);
    v13 = *(a2 + 132);
    sub_1000BE6F8(&v12, __p);
    if (v15 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = *__p;
    }

    v6 = [NSString stringWithUTF8String:v5];
    if (v15 < 0)
    {
      operator delete(*__p);
    }

    v7 = [NSString stringWithUTF8String:a3];
    v8 = sub_1000BE814(v6);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 objectForKey:v7];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 136315138;
      *&__p[4] = a3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "System has not passed first unlock (or device prefs not read yet). Do not read device property %s", __p, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

size_t sub_1000BE6F8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  *__str = 0;
  v6 = 0;
  v7 = 0;
  snprintf(__str, 0x12uLL, "%02X:%02X:%02X:%02X:%02X:%02X", *a1, a1[1], a1[2], a1[3], a1[4], a1[5]);
  v8 = 0;
  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000C7698();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, __str, result);
  }

  a2[v4] = 0;
  return result;
}

CFPropertyListRef sub_1000BE814(CFStringRef key)
{
  if (byte_100B54330 == 1)
  {
    v2 = sub_1000BE8A8();

    return __CFPreferencesCopyAppValueWithContainer(key, @"com.apple.MobileBluetooth.devices", v2);
  }

  else
  {

    return CFPreferencesCopyValue(key, @"com.apple.MobileBluetooth.devices", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  }
}

CFStringRef sub_1000BE8A8()
{
  result = qword_100B6D788;
  if (!qword_100B6D788)
  {
    __p[0] = 0;
    __p[1] = 0;
    v4 = 0;
    v1 = sub_100017E6C();
    (*(*v1 + 176))(v1, __p);
    if (v4 >= 0)
    {
      v2 = __p;
    }

    else
    {
      v2 = __p[0];
    }

    result = CFStringCreateWithCString(kCFAllocatorDefault, v2, 0x8000100u);
    qword_100B6D788 = result;
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
      return qword_100B6D788;
    }
  }

  return result;
}

void sub_1000BE950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_1000BE96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 + 448);

  return [v12 setObject:0 forKeyedSubscript:a10];
}

uint64_t sub_1000BE994(uint64_t a1, uint64_t a2, int a3)
{
  v20 = 0;
  v6 = sub_1000C7D9C(a1, a2, 1, &v20);
  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100875B08();
    }
  }

  else
  {
    v8 = v20;
    v21 = v20;
    *buf = &v21;
    v9 = sub_1000BED44(a1 + 1832, &v21);
    v10 = *(v9 + 29);
    v11 = *(v9 + 15);
    v12 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *&buf[4] = v8;
      *&buf[8] = 1024;
      *&buf[10] = a2;
      *&buf[14] = 1024;
      LODWORD(v24) = a3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Creating a match table with handle %x for type %d and mask: %d", buf, 0x14u);
    }

    v13 = sub_10000C7D0();
    v7 = (*(*v13 + 3384))(v13, v8, 7, 255, 76, a2, 0, 1, 0, 0, 16, 0, 0, 0);
    if (!v7)
    {
      v35 = 0u;
      memset(v36, 0, sizeof(v36));
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      *buf = 0u;
      v24 = 0u;
      buf[6] = 2;
      v14 = *sub_10000C7D0();
      v15 = (*(v14 + 3432))();
      if (v15)
      {
        v7 = v15;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
        {
          sub_1008750D4();
        }
      }

      else
      {
        v19 = v11;
        v22 = &v19;
        v16 = sub_1000BED44(a1 + 1832, &v19);
        *(v16 + 28) = a2;
        *(v16 + 29) = v10;
        *(v16 + 15) = v11;
        *(v16 + 8) = 65537;
        *(v16 + 18) = 1;
        *(v16 + 19) = a3;
        v17 = *sub_10000C7D0();
        v7 = (*(v17 + 3408))();
        if (v7 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
        {
          sub_100875B70();
        }
      }
    }
  }

  return v7;
}

uint64_t sub_1000BECC4(uint64_t a1, __int16 a2, char a3, char a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000BEE24;
  v5[3] = &unk_100AF24D0;
  v6 = a2;
  v7 = a3;
  v8 = a4;
  return sub_10002173C(a1, 116, 1, v5, 0);
}

uint64_t *sub_1000BED44(uint64_t a1, unsigned __int8 *a2)
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
      v5 = *(v2 + 26);
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

uint64_t sub_1000BEE48()
{
  if (off_100B60B58)
  {
    v0 = off_100B60B58();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1000BEED4(__int16 a1, char a2, char a3, uint64_t (*a4)())
{
  v20 = 0;
  v21 = 0;
  result = sub_10001FFD8(&v20);
  if (!result)
  {
    if (HIBYTE(v21))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v12 = WORD2(v21);
      if (WORD1(v21) > WORD2(v21))
      {
        if (BYTE6(v21) == 2)
        {
          ++WORD2(v21);
          *(v20 + v12) = 7;
          if (HIBYTE(v21))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v21) - WORD2(v21) > 1)
          {
            if (BYTE6(v21) == 2)
            {
              *(v20 + WORD2(v21)) = a1;
              v13 = WORD2(v21);
              v14 = WORD2(v21) + 2;
              WORD2(v21) += 2;
              if (HIBYTE(v21))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v21) > v14)
              {
                if (BYTE6(v21) == 2)
                {
                  WORD2(v21) = v13 + 3;
                  *(v20 + v14) = a2;
                  if (HIBYTE(v21))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else
                  {
                    v15 = WORD2(v21);
                    if (WORD1(v21) > WORD2(v21))
                    {
                      if (BYTE6(v21) == 2)
                      {
                        ++WORD2(v21);
                        *(v20 + v15) = a3;
                        return sub_100020078(556, v20, BYTE4(v21), a4, sub_1000C0198, v9, v10, v11);
                      }

                      v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6570, v19);
                    }
                  }

                  v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_31;
                }

                v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6569, v18);
              }

              v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_27;
            }

            v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6568, v17);
          }

          v17 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_23;
        }

        v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6567, v16);
      }
    }

    v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

void sub_1000BF144(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 255;
    goto LABEL_10;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_18;
  }

  v14 = *(a3 + 6);
  if (*(a3 + 5) <= v14)
  {
LABEL_18:
    v24 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_20;
  }

  if (*(a3 + 14) != 1)
  {
    v24 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_20:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 571, v24);
  }

  v15 = *a3;
  *(a3 + 6) = v14 + 1;
  v13 = *(v15 + v14);
  if (v13 == 4)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!sub_10000C240() || (sub_10000AF54("SubOpcode Incorrect %!", v16, v17, v18, v19, v20, v21, v22, a1), v23 = sub_10000C050(0x54u), !os_log_type_enabled(v23, OS_LOG_TYPE_ERROR)))
  {
LABEL_12:
    if (!a2)
    {
      return;
    }

    goto LABEL_13;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_13:
    a2(a1, v13);
  }
}

uint64_t sub_1000BF2A4(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x78u);
}

uint64_t sub_1000BF2F4(uint64_t a1, __int16 a2, char a3, char a4, uint64_t a5)
{
  if (!sub_10006CDA4(a1))
  {
    return 2;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000BFAB0;
  v11[3] = &unk_100AF25D0;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v11[4] = a5;
  return sub_10002173C(a1, 120, 1, v11, 0);
}

void sub_1000BF3B8(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 255;
    goto LABEL_10;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_18;
  }

  v14 = *(a3 + 6);
  if (*(a3 + 5) <= v14)
  {
LABEL_18:
    v24 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_20;
  }

  if (*(a3 + 14) != 1)
  {
    v24 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_20:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 470, v24);
  }

  v15 = *a3;
  *(a3 + 6) = v14 + 1;
  v13 = *(v15 + v14);
  if (v13 == 3)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!sub_10000C240() || (sub_10000AF54("SubOpcode Incorrect %!", v16, v17, v18, v19, v20, v21, v22, a1), v23 = sub_10000C050(0x54u), !os_log_type_enabled(v23, OS_LOG_TYPE_ERROR)))
  {
LABEL_12:
    if (!a2)
    {
      return;
    }

    goto LABEL_13;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_13:
    a2(a1, v13);
  }
}

uint64_t sub_1000BF518(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x6Fu);
}

uint64_t sub_1000BF568(_DWORD *a1, unsigned int a2, __int16 a3, int a4, int a5, int a6, int a7, char a8, char a9, unsigned __int16 a10, unsigned __int16 a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, char a16)
{
  if (!sub_10006CDA4(a1))
  {
    return 2;
  }

  v24 = a3 & 0xFFF0;
  if (a4)
  {
    ++v24;
  }

  v25 = v24 | (2 * (a5 != 0)) | (4 * (a6 != 0)) | (8 * (a7 != 0));
  v26 = sub_10000C798();
  if ((*(*v26 + 264))(v26))
  {
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_1003EE780;
    v60[3] = &unk_100AF29F0;
    v61 = a2;
    v62 = v25 & 0xFF1F | (32 * (a9 != 0)) | ((a10 != 0) << 6) | ((a11 != 0) << 7);
    v65 = a4;
    v63 = a5;
    v66 = a6;
    v67 = a7;
    v68 = a8;
    v69 = a9;
    v64 = a11;
    v70 = a13;
    v60[4] = a12;
    v60[5] = a14;
    v60[6] = a15;
    v71 = a16;
    v27 = v60;
    v28 = a1;
    v29 = 113;
    return sub_10002173C(v28, v29, 1, v27, 0);
  }

  v31 = sub_10000C798();
  if ((*(*v31 + 256))(v31))
  {
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_1003EE84C;
    v50[3] = &unk_100AF2670;
    v51 = a2;
    v52 = v25 & 0xFF1F | (32 * (a9 != 0)) | ((a10 != 0) << 6) | ((a11 != 0) << 7);
    v55 = a4;
    v53 = a5;
    v56 = a6;
    v57 = a7;
    v58 = a8;
    v59 = a9;
    v54 = a11;
    v27 = v50;
    v28 = a1;
    v29 = 112;
    return sub_10002173C(v28, v29, 1, v27, 0);
  }

  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000C87C0;
  v42[3] = &unk_100AF2430;
  v43 = a2;
  v44 = v25;
  v46 = a4;
  v45 = a5;
  v47 = a6;
  v48 = a7;
  v49 = a8;
  v30 = sub_10002173C(a1, 111, 1, v42, 0);
  v34 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v35 = sub_100020304(a1, 111);
    *buf = 136446466;
    v73 = v35;
    v74 = 1024;
    v75 = v30;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%{public}s returned with result: %d", buf, 0x12u);
  }

  v36 = sub_10000C798();
  if ((*(*v36 + 384))(v36))
  {
    v37 = a1[200];
    if (v37)
    {
      if (v37 <= 0x7CF && !v30)
      {
        v38 = a9 != 0;
        if (a9)
        {
          v39 = 3;
        }

        else
        {
          v39 = 2;
        }

        if (a10)
        {
          v38 = v39;
        }

        v30 = a11 ? v38 | 4 : v38;
        if (v30)
        {
          v40 = (*(*a1 + 2856))(a1);
          v41 = *a1;
          if (v40)
          {
            return (*(v41 + 3400))(a1, a2, v30, a9, a10, a11, a12, a13, a14, a15, a16);
          }

          else
          {
            return (*(v41 + 3392))(a1, a2, v30, a9, a10, a11);
          }
        }
      }
    }
  }

  return v30;
}

uint64_t sub_1000BFAD8()
{
  if (off_100B60B78)
  {
    v0 = off_100B60B78();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("%s VSC failed %!", v1, v2, v3, v4, v5, v6, v7, "BT_VSC_MatchTableParams");
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1000BFB6C(__int16 a1, char a2, char a3, uint64_t a4, uint64_t (*a5)())
{
  v44 = 0;
  v45 = 0;
  result = sub_10001FFD8(&v44);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v45))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_69;
  }

  v14 = WORD2(v45);
  if (WORD1(v45) <= WORD2(v45))
  {
LABEL_69:
    v40 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_71;
  }

  if (BYTE6(v45) != 2)
  {
    v40 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_71:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6652, v40);
  }

  ++WORD2(v45);
  *(v44 + v14) = 4;
  if (HIBYTE(v45))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_73;
  }

  if (WORD1(v45) - WORD2(v45) <= 1)
  {
LABEL_73:
    v41 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_75;
  }

  if (BYTE6(v45) != 2)
  {
    v41 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_75:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6653, v41);
  }

  *(v44 + WORD2(v45)) = a1;
  v15 = WORD2(v45);
  v16 = WORD2(v45) + 2;
  WORD2(v45) += 2;
  if (HIBYTE(v45))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_77;
  }

  if (WORD1(v45) <= v16)
  {
LABEL_77:
    v42 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_79;
  }

  if (BYTE6(v45) != 2)
  {
    v42 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_79:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6654, v42);
  }

  WORD2(v45) = v15 + 3;
  *(v44 + v16) = a2;
  if (HIBYTE(v45))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_81;
  }

  v17 = WORD2(v45);
  if (WORD1(v45) <= WORD2(v45))
  {
LABEL_81:
    v43 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_83;
  }

  if (BYTE6(v45) != 2)
  {
    v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_83:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6655, v43);
  }

  v18 = a3 - a2 + 1;
  ++WORD2(v45);
  *(v44 + v17) = a3;
  if (v18)
  {
    v19 = 0;
    while (!HIBYTE(v45))
    {
      if (WORD1(v45) - WORD2(v45) <= 5)
      {
        goto LABEL_60;
      }

      if (BYTE6(v45) != 2)
      {
        v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_61;
      }

      sub_1000075EC((v44 + WORD2(v45)), a4, 6uLL);
      v20 = WORD2(v45);
      v21 = WORD2(v45) + 6;
      WORD2(v45) += 6;
      if (HIBYTE(v45))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_56:
        v37 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_57:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6660, v37);
      }

      if (WORD1(v45) <= v21)
      {
        goto LABEL_56;
      }

      if (BYTE6(v45) != 2)
      {
        v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_57;
      }

      v22 = *(a4 + 6);
      WORD2(v45) = v20 + 7;
      *(v44 + v21) = v22;
      if (HIBYTE(v45))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_52:
        v36 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
LABEL_53:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6661, v36);
      }

      if (WORD1(v45) - WORD2(v45) <= 5)
      {
        goto LABEL_52;
      }

      if (BYTE6(v45) != 2)
      {
        v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_53;
      }

      v23 = (a4 + 7);
      sub_1000075EC((v44 + WORD2(v45)), v23, 6uLL);
      v24 = WORD2(v45);
      v25 = WORD2(v45) + 6;
      WORD2(v45) += 6;
      if (HIBYTE(v45))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_48:
        v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_49:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6662, v35);
      }

      if (WORD1(v45) <= v25)
      {
        goto LABEL_48;
      }

      if (BYTE6(v45) != 2)
      {
        v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_49;
      }

      v26 = v23[6];
      WORD2(v45) = v24 + 7;
      *(v44 + v25) = v26;
      if (HIBYTE(v45))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_44:
        v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_45:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6663, v34);
      }

      v27 = WORD2(v45);
      if (WORD1(v45) <= WORD2(v45))
      {
        goto LABEL_44;
      }

      if (BYTE6(v45) != 2)
      {
        v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_45;
      }

      v28 = v23[7];
      ++WORD2(v45);
      *(v44 + v27) = v28;
      if (HIBYTE(v45))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_41:
        v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_67:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6664, v33);
      }

      v29 = WORD2(v45);
      if (WORD1(v45) <= WORD2(v45))
      {
        goto LABEL_41;
      }

      if (BYTE6(v45) != 2)
      {
        v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_67;
      }

      v30 = v23[8];
      ++WORD2(v45);
      *(v44 + v29) = v30;
      if (HIBYTE(v45))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_64:
        v39 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_65:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6665, v39);
      }

      v31 = WORD2(v45);
      if (WORD1(v45) <= WORD2(v45))
      {
        goto LABEL_64;
      }

      if (BYTE6(v45) != 2)
      {
        v39 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_65;
      }

      v32 = v23[9];
      ++WORD2(v45);
      *(v44 + v31) = v32;
      ++v19;
      a4 = (v23 + 10);
      if (v19 >= v18)
      {
        return sub_100020078(556, v44, BYTE4(v45), a5, sub_1000BF144, v11, v12, v13);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_60:
    v38 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
LABEL_61:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6659, v38);
  }

  return sub_100020078(556, v44, BYTE4(v45), a5, sub_1000BF144, v11, v12, v13);
}

void sub_1000C0198(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 255;
    goto LABEL_10;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_18;
  }

  v14 = *(a3 + 6);
  if (*(a3 + 5) <= v14)
  {
LABEL_18:
    v24 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_20;
  }

  if (*(a3 + 14) != 1)
  {
    v24 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_20:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 512, v24);
  }

  v15 = *a3;
  *(a3 + 6) = v14 + 1;
  v13 = *(v15 + v14);
  if (v13 == 7)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!sub_10000C240() || (sub_10000AF54("SubOpcode Incorrect %!", v16, v17, v18, v19, v20, v21, v22, a1), v23 = sub_10000C050(0x54u), !os_log_type_enabled(v23, OS_LOG_TYPE_ERROR)))
  {
LABEL_12:
    if (!a2)
    {
      return;
    }

    goto LABEL_13;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_13:
    a2(a1, v13);
  }
}

uint64_t sub_1000C02F8(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x74u);
}

BOOL sub_1000C0348(uint64_t a1)
{
  if (qword_100B50F68 != -1)
  {
    sub_100840890();
  }

  v2 = off_100B50F60;

  return sub_1000C039C(v2, a1);
}

BOOL sub_1000C039C(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 56);
  for (i = *(a1 + 120); ; i += 8)
  {
    if (i == *(a1 + 128))
    {
      v6 = 0;
      goto LABEL_6;
    }

    v5 = *i;
    if (*(*i + 8) == a2)
    {
      break;
    }
  }

  v6 = *v5 == 2 || v5[6] != 0;
LABEL_6:
  sub_1000088CC(v8);
  return v6;
}

uint64_t **sub_1000C0430(void *a1, unsigned __int8 *a2)
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
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 16) == v3)
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
  }

  return result;
}

uint64_t **sub_1000C04E8(void *a1, unsigned __int8 *a2)
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
      v5 = v2 % a1[1];
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1000C073C(id a1, NSString *a2, CBPowerSource *a3, BOOL *a4)
{
  v4 = a3;
  if ([(CBPowerSource *)v4 sourceID])
  {
    [(CBPowerSource *)v4 setPresent:0];
  }

  else if ([(CBPowerSource *)v4 partID]== 1)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(CBPowerSource *)v4 components];
    v6 = [v5 allValues];

    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v11 + 1) + 8 * i);
          if ([v10 sourceID])
          {
            [v10 setPresent:0];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

BOOL sub_1000C08D0(uint64_t a1)
{
  v1 = a1;
  if (!a1)
  {
    a1 = sub_1000D660C(0);
  }

  v2 = *v1;
  if (*v1)
  {
    v3 = qword_100B5FBF0;
    if (qword_100B5FBF0)
    {
      while (v3 != v2)
      {
        v3 = *(v3 + 40);
        if (!v3)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      sub_1000D660C(a1);
      v2 = *v1;
    }

    v4 = (v2 + 40);
  }

  else
  {
    v4 = &qword_100B5FBF0;
  }

  v5 = *v4;
  *v1 = v5;
  return v5 != 0;
}

void sub_1000C0944(char *__src, uint64_t __len, _BYTE *a3, int a4, int a5, uint64_t a6)
{
  v9 = __len;
  v10 = __src;
  v11 = a3[2];
  if (a4)
  {
    if (a3[2])
    {
      goto LABEL_15;
    }

    v12 = 168;
  }

  else if (a3[2])
  {
    if (v11 == 8)
    {
      v12 = 64;
    }

    else
    {
      if (v11 != 4)
      {
        goto LABEL_15;
      }

      v12 = 224;
    }
  }

  else
  {
    v12 = 160;
  }

  v13 = *&a3[v12];
  if (!v13 || (v14 = *(v13 + 14), !*(v13 + 14)))
  {
LABEL_15:
    if (sub_10000C240())
    {
      sub_10000AF54("CONTINUE packet with no FIRST packet - discarding this CONTINUE packet", v16, v17, v18, v19, v20, v21, v22, v79);
      v23 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }
    }

    return;
  }

  if ((v14 + __len) <= 3)
  {
    memmove((v13 + v14 + 8), __src, __len);
    v15 = *(v13 + 14) + v9;
LABEL_14:
    *(v13 + 14) = v15;
    return;
  }

  if (v14 > 3)
  {
    LOWORD(v25) = *(v13 + 8);
    v35 = v14 - 4;
    v26 = *(v13 + 12);
    v36 = __len;
    goto LABEL_25;
  }

  v24 = 4 - v14;
  memmove((v13 + 8 + v14), __src, 4 - v14);
  v25 = *(v13 + 8);
  v26 = *(v13 + 12);
  if (v25 > v26)
  {
    if (!sub_10000C240())
    {
      goto LABEL_29;
    }

    sub_10000AF54("Length in L2CAP header %d exceeds MTU %d", v27, v28, v29, v30, v31, v32, v33, v25);
    v34 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (v25 >= v9)
  {
    v35 = 0;
    v10 += v24;
    LOWORD(v9) = v9 - v24;
    v36 = v9;
LABEL_25:
    v37 = v36 + v35;
    if (v37 > v26)
    {
      if (!sub_10000C240())
      {
        goto LABEL_29;
      }

      sub_10000AF54("Received data %d exceeds exceeds buffer size %d", v38, v39, v40, v41, v42, v43, v44, v37);
      v45 = sub_10000C050(0x2Fu);
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

LABEL_28:
      sub_10080F7A0();
      goto LABEL_29;
    }

    v46 = *(v13 + 10);
    v84 = 0;
    if (sub_1000ABC7C(v46, &v84) || (v80 = *(v84 + 48)) == 0)
    {
      memmove((*v13 + v35), v10, v9);
      v47 = 0;
      v48 = 1;
      if (!a5)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v83 = 0;
      v82 = 0;
      v81 = 0;
      if (sub_1000C0D40(v46, &v82, &v81, &v83) || v37 > v81)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Received %d length data exceeding upper layer l2cap buffer size %d", v71, v72, v73, v74, v75, v76, v77, v37);
          v78 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        return;
      }

      v70 = v80 + v35;
      v47 = v80;
      memmove(v70, v10, v9);
      v48 = 0;
      if (!a5)
      {
LABEL_34:
        if (v37 == v25)
        {
          *(v13 + 14) = 0;
          if (v48)
          {
            v49 = *v13;
            v50 = *(v13 + 16) != 0;
            v51 = v25;
            v52 = a3;
            v53 = v46;
          }

          else
          {
            v50 = *(v13 + 16) != 0;
            v51 = v25;
            v52 = a3;
            v53 = v46;
            v49 = v47;
          }

          sub_1000B13B4(v52, v53, v49, v51, v50, a6);
          goto LABEL_30;
        }

        if (v37 <= v25)
        {
          v15 = v37 + 4;
          goto LABEL_14;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Received data %d exceeds size in L2CAP header %d", v62, v63, v64, v65, v66, v67, v68, v37);
          v69 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

LABEL_29:
        *(v13 + 14) = 0;
LABEL_30:
        *(v13 + 16) = 0;
        return;
      }
    }

    *(v13 + 16) = 1;
    goto LABEL_34;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Packet size of %d exceeds the expected payload length %d", v54, v55, v56, v57, v58, v59, v60, v9);
    v61 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      sub_10080F7A0();
    }
  }
}

uint64_t sub_1000C0D40(unsigned int a1, _WORD *a2, _WORD *a3, _BYTE *a4)
{
  v19 = 0;
  v7 = sub_1000ABC7C(a1, &v19);
  if (v7)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_L2CAP_getL2CAPChannelInfo Get Channel failed", v8, v9, v10, v11, v12, v13, v14, v18);
      v15 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    v16 = v19;
    *a2 = *(v19 + 6);
    *a3 = *(*(v16 + 112) + 36);
    *a4 = *(sub_1000B12AC(v16) + 52);
  }

  return v7;
}

BOOL sub_1000C0E08(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    for (i = qword_100B5FBE0; i; i = *(i + 40))
    {
      v1 = i == a1;
      if (i == a1)
      {
        break;
      }
    }
  }

  return v1;
}

uint64_t sub_1000C0E38()
{
  v2 = 0;
  v0 = 0;
  while (sub_1000C08D0(&v2))
  {
    if (*(v2 + 124) == 7)
    {
      v0 = v0;
    }

    else
    {
      v0 = (v0 + 1);
    }
  }

  return v0;
}

uint64_t sub_1000C0E90()
{
  if (DWORD2(xmmword_100BCE2E0))
  {
    v1 = dword_100BCE0C0 == 2;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    return word_100BCE180;
  }

  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("OI_HCIAPI_GetTotalNumAclBuffers - not initialized", v3, v4, v5, v6, v7, v8, v9, v0);
    v10 = sub_10000C050(0x2Eu);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100814AEC();
      return 0;
    }
  }

  return result;
}

void sub_1000C0F64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100066098();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C10D8;
  v6[3] = &unk_100AE1200;
  v8 = a1;
  v5 = v3;
  v7 = v5;
  sub_10000CA94(v4, v6);
}

void *sub_1000C1030(void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      sub_100062A98(a1, v4, a2);
      a2 += 3;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

void sub_1000C10E8(uint64_t a1)
{
  v2 = sub_10000C7D0();
  if ((*(*v2 + 4080))(v2))
  {
    v3 = *(a1 + 17104);
    if (v3)
    {
      v4 = qword_100BCE9C8;
      if (!os_log_type_enabled(qword_100BCE9C8, OS_LOG_TYPE_DEFAULT) || (v5 = (*(*v3 + 16))(v3), v6 = 136446210, v7 = v5, _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Destroying %{public}s", &v6, 0xCu), (v3 = *(a1 + 17104)) != 0))
      {
        (*(*v3 + 8))(v3);
      }

      *(a1 + 17104) = 0;
      if (qword_100B50910 != -1)
      {
        sub_10086AEE8();
      }

      sub_10008D970(off_100B50908, 1);
    }
  }
}

uint64_t sub_1000C1254()
{
  if (qword_100B6E388 != -1)
  {
    sub_100831328();
  }

  return byte_100B6E380;
}

void sub_1000C128C(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("multipleAdvStartCb Could not start advertising : %!", v2, v3, v4, v5, v6, v7, v8, a1);
      v9 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    BYTE5(qword_100B61170[421 * byte_100B65344 + 417]) = 2;
  }

  sub_100092D80(a1, 0, byte_100B65344);
}

uint64_t *sub_1000C1358(uint64_t a1, uint64_t *__p, uint64_t *a3)
{
  if (__p != a3)
  {
    v5 = *(*a3 + 8);
    v6 = *__p;
    *(v6 + 8) = v5;
    *v5 = v6;
    do
    {
      v7 = __p[1];
      --*(a1 + 16);
      operator delete(__p);
      __p = v7;
    }

    while (v7 != a3);
  }

  return a3;
}

void sub_1000C13C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v2 = off_100B512F0;
  v3 = *(v1 + 128);

  sub_1000C141C(v2, v3);
}

void sub_1000C141C(uint64_t a1, unint64_t a2)
{
  sub_100066F74(16, a2);
  v4 = sub_10005D040(a1, a2, 0);
  if (v4)
  {
    v5 = v4;
    sub_100023D10(v4, a2);
    if (qword_100B51088 != -1)
    {
      sub_100823E14();
    }

    sub_100078364(qword_100B51080, a2);
    v6 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v5 + 88);
      v8 = *(v5 + 344);
      v9 = 138543618;
      v10 = v7;
      v11 = 2048;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Stopping scan for session %{public}@ - %llu advertisements delivered", &v9, 0x16u);
    }

    if (*(v5 + 24) == 1)
    {
      if (*(v5 + 96))
      {
        sub_100078BCC(a1);
      }
    }
  }
}

void sub_1000C154C(uint64_t a1)
{
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000C13C8;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000D334(v2, v3);
}

void sub_1000C1600(uint64_t a1)
{
  *a1 = &off_100B0C418;
  v3 = (a1 + 28);
  v2 = *(a1 + 28);
  if (v2)
  {
    v4 = IOPMAssertionRelease(v2);
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v4 = -536870206;
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    v12 = *v3;
    *buf = 67109376;
    *&buf[4] = v12;
    LOWORD(v16) = 1024;
    *(&v16 + 2) = v4;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to release assertionId: %d, return value was %d", buf, 0xEu);
    v5 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_100872DBC(v3, v4, v5);
  }

  if (qword_100B53FE8 != -1)
  {
    sub_100872E48();
  }

  v6 = qword_100B53FE0;
  sub_100007E30(buf, "Assertion");
  sub_100007E30(__p, "FailedToReleaseAssertion");
  sub_1005780BC(v6, buf, __p, 0.0);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(*buf);
  }

LABEL_15:
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  Current = CFAbsoluteTimeGetCurrent();
  v10 = *(a1 + 24);
  v11 = *(a1 + 28);
  if (qword_100B512C8 != -1)
  {
    sub_100872D94();
  }

  *buf = v8;
  *&buf[4] = 1;
  v16 = v7;
  v17 = Current;
  v18 = v4;
  v19 = v10;
  v20 = 0;
  v21 = 0;
  v22 = v11;
  v23 = 0;
  sub_10008D9FC(off_100B512C0);
}

void sub_1000C186C()
{
  v0 = &byte_100B65345[8 * byte_100B65344 - byte_100B65344];
  v1 = (&qword_100B61170[421 * byte_100B65344 + 417] + 6);
  *v0 = *v1;
  *(v0 + 3) = *(v1 + 3);
  if (byte_100B65339)
  {
    v2 = sub_100018960(207, sub_1000C128C);
    if (!v2)
    {
      return;
    }

    v3 = v2;
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to start advertising OI_HCI_CMD_LE_SetExtendedAdvertisingEnable returned %!", v4, v5, v6, v7, v8, v9, v10, v3);
      v11 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    v3 = sub_1002A48BC();
    if (!v3)
    {
      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("setAdvertisingSetAddressBeforeEnablingCB Could not start advertising : %!", v12, v13, v14, v15, v16, v17, v18, v3);
    v19 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  v20 = byte_100B65344;
  BYTE5(qword_100B61170[421 * byte_100B65344 + 417]) = 0;
  sub_100092D80(v3, 0, v20);
}

void sub_1000C1A10(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
LABEL_2:
    if (sub_10000C240())
    {
      sub_10000AF54("setLEAdvTxPowerIncreaseCB Could not start advertising : %!", v2, v3, v4, v5, v6, v7, v8, v1);
      v9 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v10 = byte_100B65344;
    BYTE5(qword_100B61170[421 * byte_100B65344 + 417]) = 0;
    sub_100092D80(v1, 0, v10);
    return;
  }

  v11 = byte_100B65344;
  if ((byte_100B660C0[byte_100B65344] & 1) == 0)
  {
    v12 = &qword_100B61170[421 * byte_100B65344];
    if (*(v12 + 3350) == 1 && *(v12 + 3341) == 1)
    {
      byte_100B660C0[byte_100B65344] = 1;
    }
  }

  v13 = &byte_100B65345[8 * v11 - v11];
  v14 = (&qword_100B61170[421 * v11 + 417] + 6);
  v15 = *v13;
  v16 = *(v13 + 3);
  if (v15 != *v14 || v16 != *(&qword_100B61170[421 * v11 + 418] + 1))
  {
    v18 = sub_1002B213C(v14, v11, sub_1000C186C);
    if (!v18)
    {
      return;
    }

    v1 = v18;
    if (sub_10000C240())
    {
      sub_10000AF54("LE_UpdateMultiAdvertisingSetAddress returned %!", v19, v20, v21, v22, v23, v24, v25, v1);
      v26 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    goto LABEL_2;
  }

  sub_1000C186C();
}

void sub_1000C1BA8(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("setMultipleAdvertisingScanRspDataCompleteCb Could not start advertising : %!", v2, v3, v4, v5, v6, v7, v8, a1);
      v9 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v10 = byte_100B65344;
    BYTE5(qword_100B61170[421 * byte_100B65344 + 417]) = 0;
    sub_100092D80(a1, 0, v10);
  }

  else if ((qword_100B61170[421 * byte_100B65344 + 418] & 0x1000000000000) != 0)
  {
    if ((byte_100B660C0[byte_100B65344] & 1) == 0)
    {
      v11 = byte_100B65338 <= byte_100B65344 ? 0 : byte_100B6533A[byte_100B65344];
      if (sub_1002A9EC0())
      {
        if (sub_10000C240())
        {
          sub_10000AF54("setLEAdvTxPowerIncrease cmd failed on handle %d returned %d", v12, v13, v14, v15, v16, v17, v18, v11);
          v19 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }
    }
  }

  else
  {

    sub_1000C1A10(0);
  }
}

void sub_1000C1D2C(uint64_t a1)
{
  v1 = a1;
  if (!a1)
  {
    if (HIWORD(qword_100B61170[421 * byte_100B65344 + 210]) && !byte_100B65344)
    {
      if (byte_100B65339)
      {
        v11 = sub_100018960(206, sub_1000C1BA8);
        if (!v11)
        {
          return;
        }

        v1 = v11;
        if (sub_10000C240())
        {
          sub_10000AF54("OI_HCI_CMD_LE_SetExtendedScanResponseData returned %!", v12, v13, v14, v15, v16, v17, v18, v1);
          v19 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      else
      {
        v1 = sub_1002A4830();
      }

      if (HIWORD(qword_100B61170[421 * byte_100B65344 + 210]))
      {
        v20 = v1 == 0;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
        if (!v1)
        {
          return;
        }

        goto LABEL_2;
      }
    }

    sub_1000C1BA8(0);
    return;
  }

LABEL_2:
  if (sub_10000C240())
  {
    sub_10000AF54("setMultipleAdvertisingDataCompleteCb Could not start advertising : %!", v2, v3, v4, v5, v6, v7, v8, v1);
    v9 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  v10 = byte_100B65344;
  BYTE5(qword_100B61170[421 * byte_100B65344 + 417]) = 0;
  sub_100092D80(v1, 0, v10);
}

void sub_1000C1EF0(uint64_t a1)
{
  if (a1 || HIWORD(qword_100B61170[421 * byte_100B65344 + 3]) == WORD1(qword_100B61170[421 * byte_100B65344 + 210]) || (a1 = sub_1000C2610(a1), a1))
  {

    sub_1000C1D2C(a1);
  }
}

void sub_1000C1F4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_100017F4C();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000C1FC8;
  v3[3] = &unk_100ADF8F8;
  v3[4] = v1;
  sub_10000CA94(v2, v3);
}

void sub_1000C1FC8(uint64_t a1)
{
  v21 = *(a1 + 32);
  *(v21 + 248) = 0;
  v1 = +[AVAudioSession sharedInstance];
  v2 = [v1 currentRoute];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v20 = v2;
  v3 = [v2 outputs];
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = *v24;
  obj = v3;
  while (2)
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v24 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v23 + 1) + 8 * i);
      v8 = [v7 portType];
      if ([v8 isEqualToString:AVAudioSessionPortBluetoothA2DP])
      {

LABEL_9:
        v11 = [v7 UID];
        v12 = [v11 componentsSeparatedByString:@"-"];

        v13 = [v12 firstObject];
        v14 = sub_100777FF4(v13);

        v15 = 1;
        goto LABEL_11;
      }

      v9 = [v7 portType];
      v10 = [v9 isEqualToString:AVAudioSessionPortBluetoothHFP];

      if (v10)
      {
        goto LABEL_9;
      }

      v15 = 0;
      v14 = 0;
LABEL_11:
      v16 = sub_10000F034();
      Current = CFAbsoluteTimeGetCurrent();
      (*(*v16 + 464))(v16, v15, v14, Current);
      v18 = [v7 portType];
      LODWORD(v16) = [v18 isEqualToString:AVAudioSessionPortBuiltInReceiver];

      if (v16)
      {
        v3 = obj;
        *(v21 + 248) = 1;
        goto LABEL_16;
      }
    }

    v3 = obj;
    v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v4)
    {
      continue;
    }

    break;
  }

LABEL_16:

  v19 = sub_10000C7D0();
  (*(*v19 + 72))(v19, 1, *(v21 + 248));
}

uint64_t sub_1000C2318(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = *(result + 16);
    while (v3)
    {
      v4 = v3;
      v3 = *(v3 + 8);
      if (v3 == a2)
      {
        *(v4 + 8) = *(a2 + 8);
        *(a2 + 8) = v2;
        *(result + 16) = a2;
        if (*(result + 24) == a2)
        {
          *(result + 24) = v4;
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1000C2364(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  result = *(a1 + 1124);
  if (result == 1)
  {
    *a2 = *(a1 + 1128);
    *a3 = *(a1 + 1132);
    *a4 = *(a1 + 1136);
    *a5 = *(a1 + 1140);
  }

  return result;
}

uint64_t sub_1000C2398(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 424);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1000C23E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = a1 + 280;
  if (*(a1 + 303) < 0)
  {
    v5 = *(a1 + 288);
    if (v5)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  if (!*(a1 + 303))
  {
LABEL_5:
    v4 = a1 + 240;
    if ((*(a1 + 263) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v5 = *(a1 + 248);
LABEL_8:
    sub_100008904(a2, *v4, v5);
    return sub_1000088CC(v7);
  }

LABEL_6:
  *a2 = *v4;
  *(a2 + 16) = *(v4 + 16);
  return sub_1000088CC(v7);
}

void sub_1000C2484(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_1000C7698();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_100008108(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_1000C2558()
{
  if (qword_100B5B560 != -1)
  {
    sub_100812AD0();
  }

  if (!atomic_fetch_add(dword_100B5B430, 1u))
  {
    v0 = qword_100B5B438;

    dispatch_async(v0, &stru_100AE5348);
  }
}

void sub_1000C25C0(id a1)
{
  if (dword_100B5B440)
  {
    sub_1000D660C();
    v1 = vars8;
  }

  IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, @"com.apple.BTStack", &dword_100B5B440);
}

uint64_t sub_1000C2610()
{
  v0 = &qword_100B61170[421 * byte_100B65344];
  v1 = *(v0 + 841);
  if ((*(v0 + 15) - v1) >= 0xFBu)
  {
    v2 = 251;
  }

  else
  {
    v2 = *(v0 + 15) - v1;
  }

  v3 = sub_100018960(205, sub_1000C1EF0);
  if (v3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCI_CMD_LE_SetExtendedAdvertisingData returned %!", v4, v5, v6, v7, v8, v9, v10, v3);
      v11 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    WORD1(qword_100B61170[421 * byte_100B65344 + 210]) += v2;
  }

  return v3;
}

void sub_1000C2730(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
LABEL_2:
    if (sub_10000C240())
    {
      sub_10000AF54("setMultipleAdvParamsCompleteCb Could not start advertising : %!", v2, v3, v4, v5, v6, v7, v8, v1);
      v9 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v10 = byte_100B65344;
    BYTE5(qword_100B61170[421 * byte_100B65344 + 417]) = 0;
    sub_100092D80(v1, 0, v10);
    return;
  }

  v11 = &qword_100B61170[421 * byte_100B65344];
  if (!*(v11 + 15) || byte_100B65344 == 4 && (*(v11 + 1684) & 1) == 0)
  {

    sub_1000C1D2C(0);
    return;
  }

  if (!byte_100B65339)
  {
    if (*(v11 + 15) >= 0x20u)
    {
      sub_1000D660C();
    }

    v29 = sub_1002A47A4();
LABEL_26:
    v1 = v29;
    if (!v29)
    {
      return;
    }

    goto LABEL_2;
  }

  if (!*(v11 + 3355))
  {
    v29 = sub_1000C2610();
    goto LABEL_26;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("We are using DBAF! Sending Decision Ind Data instead.", v12, v13, v14, v15, v16, v17, v18, v30);
    v19 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v32 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, " %{public}s", buf, 0xCu);
    }
  }

  v20 = sub_100018960(258, sub_1002B4808);
  if (v20)
  {
    v1 = v20;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCI_CMD_LE_SetDecisionDataCommand returned %!", v21, v22, v23, v24, v25, v26, v27, v1);
      v28 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    goto LABEL_2;
  }
}

void sub_1000C29D4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_1000C2C34(a2, byte_100B65344);
  v4 = byte_100B65344;
  if (!byte_100B65344)
  {
    v5 = word_100B6118E;
    if (word_100B6118E >= 2uLL && word_100B6118E != 2)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = byte_100B61190[v7];
        if (v8 == 2 && byte_100B61190[v6 + 1] == 10)
        {
          v10 = &qword_100B61170[4] + (v6 + 2);
          goto LABEL_12;
        }

        v7 += v8 + 1;
        v6 = v7;
      }

      while (v7 < (word_100B6118E - 2));
      if (word_100B6118E > 0x1Bu)
      {
        goto LABEL_13;
      }
    }

    word_100B6118E += 3;
    *&byte_100B61190[v5] = 2562;
    v10 = &byte_100B61190[v5 + 2];
LABEL_12:
    *v10 = v2;
  }

LABEL_13:
  v11 = &qword_100B61170[421 * v4];
  if (!*(v11 + 3353) && !*(v11 + 3354) || (v12 = sub_100098124(), a1) || v12)
  {

    sub_1000C2730(a1);
  }

  else
  {
    v13 = sub_1002B226C(byte_100B6533A[byte_100B65344], BYTE1(qword_100B61170[421 * byte_100B65344 + 419]), BYTE2(qword_100B61170[421 * byte_100B65344 + 419]));
    if (v13)
    {

      sub_1002B480C(v13);
    }
  }
}

uint64_t sub_1000C2B58(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
  }

  else
  {
    v5 = *(a3 + 5);
    v6 = *(a3 + 6);
    if (v5 != v6)
    {
      if (v5 > v6)
      {
        if (*(a3 + 14) == 1)
        {
          v9 = *a3;
          *(a3 + 6) = v6 + 1;
          v7 = *(v9 + v6);
          goto LABEL_7;
        }

        v10 = "(*pBs).__RWFlag == BYTESTREAM_READ";
      }

      else
      {
        v10 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 135, v10);
    }
  }

  v7 = 0;
  if (a1)
  {
    a1 = a1;
  }

  else
  {
    a1 = 605;
  }

LABEL_7:

  return v3(a1, v7);
}

void sub_1000C2C44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100066098();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C5794;
  v5[3] = &unk_100AE0860;
  v5[4] = a1;
  v5[5] = a2;
  sub_10000CA94(v4, v5);
}

void sub_1000C2CC4(void *a1)
{
  v2 = a1[9];
  clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  *(*(a1[4] + 8) + 24) = sub_100066A74(off_100B512F0, *(v2 + 128), a1[10]);
  clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  operator new();
}

void sub_1000C3018(uint64_t a1)
{
  if (qword_100BC7CF8 != -1)
  {
    sub_100874610();
  }

  if (!*(a1 + 2224))
  {
    sub_100088DD4();
  }
}

uint64_t sub_1000C3138(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000C31F0();
    }

    if (qword_100B51088 != -1)
    {
      sub_10080AA70();
    }

    sub_100078364(qword_100B51080, *(a1 + 32));
  }

  if (qword_100B50B88 != -1)
  {
    sub_10080AA84();
  }

  v2 = qword_100B50B80;
  v3 = *(a1 + 40);

  return sub_100079604(v2, v3);
}

BOOL sub_1000C320C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v7 = sub_10004B1D8(a1, v5);
  if (v7)
  {
    v6[2](v6, v7);
  }

  sub_1000088CC(v9);

  return v7 != 0;
}

uint64_t sub_1000C32F0(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x104u);
}

uint64_t sub_1000C3340(uint64_t a1, char a2, uint64_t a3, __int16 a4, uint64_t a5, __int16 a6)
{
  result = (*(*a1 + 4152))(a1);
  if (result)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000C34D8;
    v13[3] = &unk_100AF24B0;
    v16 = a2;
    v14 = a4;
    v13[4] = a3;
    v13[5] = a5;
    v15 = a6;
    return sub_10002173C(a1, 260, 1, v13, 0);
  }

  return result;
}

uint64_t sub_1000C3428(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v5 = 101;
  if (a5 == 3 && a3 == 3 && a2 && a4)
  {
    if (off_100B60750)
    {
      v5 = off_100B60750();
      if (!v5)
      {
        return v5;
      }
    }

    else
    {
      v5 = 3601;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("VSC failed %!", v6, v7, v8, v9, v10, v11, v12, v5);
      v13 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v5;
}

uint64_t sub_1000C3500(char a1, const void *a2, int a3, const void *a4, int a5, uint64_t (*a6)())
{
  v38 = 0;
  v39 = 0;
  result = sub_10001FFD8(&v38);
  if (!result)
  {
    if (HIBYTE(v39))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v13 = WORD2(v39);
      if (WORD1(v39) > WORD2(v39))
      {
        if (BYTE6(v39) == 2)
        {
          ++WORD2(v39);
          *(v38 + v13) = 91;
          if (HIBYTE(v39))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v14 = WORD2(v39);
            if (WORD1(v39) > WORD2(v39))
            {
              if (BYTE6(v39) == 2)
              {
                ++WORD2(v39);
                *(v38 + v14) = a1;
                v15 = v38;
                v16 = WORD2(v39);
                if (HIBYTE(v39))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  v17 = 0;
                }

                else
                {
                  v17 = WORD1(v39) - WORD2(v39);
                }

                if (v17 < a3)
                {
                  v34 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
                }

                else
                {
                  if (BYTE6(v39) == 2)
                  {
                    memmove((v15 + v16), a2, a3);
                    v18 = WORD2(v39) + a3;
                    WORD2(v39) += a3;
                    v19 = v38;
                    if (HIBYTE(v39))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      v20 = 0;
                    }

                    else
                    {
                      v20 = WORD1(v39) - v18;
                    }

                    v21 = 3 - a3;
                    if (v20 < v21)
                    {
                      v35 = "ByteStream_NumReadBytesAvail(bs) >= (3 - dataLen)";
                    }

                    else
                    {
                      if (BYTE6(v39) == 2)
                      {
                        bzero((v19 + v18), v21);
                        v22 = WORD2(v39) + v21;
                        WORD2(v39) = v22;
                        v23 = v38;
                        if (HIBYTE(v39))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                          v24 = 0;
                        }

                        else
                        {
                          v24 = WORD1(v39) - v22;
                        }

                        if (v24 < a5)
                        {
                          v36 = "ByteStream_NumReadBytesAvail(bs) >= (maskLen)";
                        }

                        else
                        {
                          if (BYTE6(v39) == 2)
                          {
                            memmove((v23 + v22), a4, a5);
                            v25 = WORD2(v39) + a5;
                            WORD2(v39) += a5;
                            v26 = v38;
                            if (HIBYTE(v39))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                              v27 = 0;
                            }

                            else
                            {
                              v27 = WORD1(v39) - v25;
                            }

                            v28 = 3 - a5;
                            if (v27 < v28)
                            {
                              v37 = "ByteStream_NumReadBytesAvail(bs) >= (3 - maskLen)";
                            }

                            else
                            {
                              if (BYTE6(v39) == 2)
                              {
                                bzero((v26 + v25), v28);
                                WORD2(v39) += v28;
                                return sub_100020078(233, v38, BYTE4(v39), a6, sub_100022AD0, v29, v30, v31);
                              }

                              v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                            }

                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3893, v37);
                          }

                          v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                        }

                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3892, v36);
                      }

                      v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                    }

                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3891, v35);
                  }

                  v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                }

                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3890, v34);
              }

              v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3889, v33);
            }
          }

          v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_37;
        }

        v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3888, v32);
      }
    }

    v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_33;
  }

  return result;
}

void sub_1000C38C8(uint64_t a1)
{
  *(a1 + 176) = 0;
  sub_1000C39CC(a1);
  if (qword_100B508B0 != -1)
  {
    sub_10082366C();
  }

  v2 = sub_100029630(off_100B508A8);
  if ([v2 count])
  {

LABEL_6:

    sub_1000C51E4(a1);
    return;
  }

  v3 = [*(a1 + 328) count];

  if (v3)
  {
    goto LABEL_6;
  }

  v4 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Stopping device disconnection watchdog, as there are no more devices connected", v5, 2u);
  }
}

void sub_1000C39CC(uint64_t a1)
{
  v1 = +[NSMutableSet set];
  if ((*(a1 + 180) & 1) == 0)
  {
    v81 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Stack is shutting down, unused devices will be cleaned up", buf, 2u);
    }

    goto LABEL_163;
  }

  v2 = *(a1 + 224);
  v83 = (a1 + 232);
  if (v2 != (a1 + 232))
  {
    while (1)
    {
      v85 = v2;
      v3 = (*(*v2[5] + 16))(v2[5]);
      v4 = v85[5];
      if (!v3)
      {
        break;
      }

      if ((*(*v4 + 2))(v4) == 1)
      {
        v5 = v85[5];
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
        v120 = 0u;
        v87 = v5;
        v6 = *(v5 + 192);
        v7 = [v6 countByEnumeratingWithState:&v117 objects:v140 count:16];
        if (v7)
        {
          v86 = *v118;
          do
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v118 != v86)
              {
                objc_enumerationMutation(v6);
              }

              v9 = [*(v87 + 192) objectForKeyedSubscript:{*(*(&v117 + 1) + 8 * i), v83}];
              v115 = 0u;
              v116 = 0u;
              v113 = 0u;
              v114 = 0u;
              v10 = v9;
              v11 = [v10 countByEnumeratingWithState:&v113 objects:v139 count:16];
              if (v11)
              {
                v12 = *v114;
                do
                {
                  for (j = 0; j != v11; j = j + 1)
                  {
                    if (*v114 != v12)
                    {
                      objc_enumerationMutation(v10);
                    }

                    v14 = *(*(&v113 + 1) + 8 * j);
                    v15 = [v10 objectForKey:v14];
                    [v15 timeIntervalSinceNow];
                    if (v16 >= -30.0)
                    {
                      [v1 addObject:v14];
                    }
                  }

                  v11 = [v10 countByEnumeratingWithState:&v113 objects:v139 count:16];
                }

                while (v11);
              }
            }

            v7 = [v6 countByEnumeratingWithState:&v117 objects:v140 count:16];
          }

          while (v7);
        }

LABEL_32:
      }

      v24 = v85;
      v25 = v85[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v24[2];
          v27 = *v26 == v24;
          v24 = v26;
        }

        while (!v27);
      }

      v2 = v26;
      if (v26 == v83)
      {
        goto LABEL_39;
      }
    }

    v17 = v4[28];
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v6 = v17;
    v18 = [v6 countByEnumeratingWithState:&v121 objects:v141 count:16];
    if (v18)
    {
      v19 = *v122;
      do
      {
        for (k = 0; k != v18; k = k + 1)
        {
          if (*v122 != v19)
          {
            objc_enumerationMutation(v6);
          }

          v21 = *(*(&v121 + 1) + 8 * k);
          v22 = [v6 objectForKeyedSubscript:{v21, v83}];
          v23 = [v22 opportunistic];

          if ((v23 & 1) == 0)
          {
            [v1 addObject:v21];
          }
        }

        v18 = [v6 countByEnumeratingWithState:&v121 objects:v141 count:16];
      }

      while (v18);
    }

    goto LABEL_32;
  }

LABEL_39:
  if (qword_100B541E8 != -1)
  {
    sub_100823970();
  }

  v28 = sub_1000C4B1C(qword_100B541E0);
  [v1 addObjectsFromArray:v28];

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  if (qword_100B53FD8 != -1)
  {
    sub_100823998();
  }

  v29 = sub_1000C4C60(qword_100B53FD0);
  v30 = [v29 countByEnumeratingWithState:&v109 objects:v138 count:16];
  if (v30)
  {
    v31 = *v110;
    do
    {
      v32 = 0;
      do
      {
        if (*v110 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v109 + 1) + 8 * v32);
        __p[0] = 0;
        if (qword_100B508B0 != -1)
        {
          sub_100823824();
        }

        v34 = off_100B508A8;
        sub_10004DFB4(buf, v33);
        if (sub_1000C4FCC(v34, buf, __p))
        {
          LOBYTE(v96) = 0;
          sub_1000216B4(&v96);
          if (sub_1000BE280(__p[0]))
          {
            v35 = qword_100BCE988;
            if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              *&buf[4] = v33;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Skipping LE L2CAP device %{public}@", buf, 0xCu);
            }

            [v1 addObject:{v33, v83}];
          }

          sub_10002249C(&v96);
        }

        v32 = v32 + 1;
      }

      while (v30 != v32);
      v30 = [v29 countByEnumeratingWithState:&v109 objects:v138 count:16];
    }

    while (v30);
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  if (qword_100B540F0 != -1)
  {
    sub_1008239C0();
  }

  v36 = sub_1000C4DA4(qword_100B540E8);
  v37 = [v36 countByEnumeratingWithState:&v105 objects:v137 count:16];
  if (v37)
  {
    v38 = *v106;
    do
    {
      v39 = 0;
      do
      {
        if (*v106 != v38)
        {
          objc_enumerationMutation(v36);
        }

        v40 = *(*(&v105 + 1) + 8 * v39);
        __p[0] = 0;
        if (qword_100B508B0 != -1)
        {
          sub_100823824();
        }

        v41 = off_100B508A8;
        sub_10004DFB4(buf, v40);
        if (sub_1000C4FCC(v41, buf, __p))
        {
          LOBYTE(v96) = 0;
          sub_1000216B4(&v96);
          if (sub_1000BE280(__p[0]))
          {
            v42 = sub_1001974A0(__p[0]);
            v43 = qword_100BCE988;
            v44 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO);
            if (v42)
            {
              if (v44)
              {
                *buf = 138543362;
                *&buf[4] = v40;
                _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "disconnecting device device %{public}@ since its scalable pipes are idle", buf, 0xCu);
              }
            }

            else
            {
              if (v44)
              {
                *buf = 138543362;
                *&buf[4] = v40;
                _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Skipping scalable pipe device %{public}@ since it is still active", buf, 0xCu);
              }

              [v1 addObject:{v40, v83}];
            }
          }

          sub_10002249C(&v96);
        }

        v39 = v39 + 1;
      }

      while (v37 != v39);
      v37 = [v36 countByEnumeratingWithState:&v105 objects:v137 count:16];
    }

    while (v37);
  }

  if (qword_100B50F78 != -1)
  {
    sub_1008239E8();
  }

  v45 = sub_1000C505C(qword_100B50F70);
  [v1 addObjectsFromArray:v45];

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  if (qword_100B508B0 != -1)
  {
    sub_100823824();
  }

  v46 = sub_1000C5064(off_100B508A8);
  v47 = [v46 countByEnumeratingWithState:&v101 objects:v136 count:16];
  if (v47)
  {
    v48 = *v102;
    do
    {
      v49 = 0;
      do
      {
        if (*v102 != v48)
        {
          objc_enumerationMutation(v46);
        }

        v50 = *(*(&v101 + 1) + 8 * v49);
        if (([v1 containsObject:{v50, v83}] & 1) == 0)
        {
          if (qword_100B508B0 != -1)
          {
            sub_100823824();
          }

          v51 = off_100B508A8;
          sub_10004DFB4(buf, v50);
          sub_10074CD90(v51, buf, 0);
        }

        v49 = v49 + 1;
      }

      while (v47 != v49);
      v47 = [v46 countByEnumeratingWithState:&v101 objects:v136 count:16];
    }

    while (v47);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  if (qword_100B508B0 != -1)
  {
    sub_100823824();
  }

  v52 = sub_100029630(off_100B508A8);
  v53 = [v52 countByEnumeratingWithState:&v97 objects:v135 count:16];
  if (!v53)
  {
    goto LABEL_144;
  }

  v54 = *v98;
  while (2)
  {
    v55 = 0;
    do
    {
      if (*v98 != v54)
      {
        objc_enumerationMutation(v52);
      }

      v56 = *(*(&v97 + 1) + 8 * v55);
      if (([v1 containsObject:{v56, v83}] & 1) == 0)
      {
        if (qword_100B508B0 != -1)
        {
          sub_100823824();
        }

        v57 = off_100B508A8;
        sub_10004DFB4(buf, v56);
        if (sub_1000501F8(v57, buf) == 1)
        {
          v96 = 0;
          sub_1000D42DC(&v96, 0);
          if (qword_100B508D0 != -1)
          {
            sub_100823A10();
          }

          v58 = sub_100786988(off_100B508C8, v56) + word_100B541D8;
          v59 = qword_100BCE988;
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
          {
            v60 = v96;
            if (qword_100B508D0 != -1)
            {
              sub_100823A10();
            }

            v61 = sub_100786988(off_100B508C8, v56);
            *buf = 138544386;
            *&buf[4] = v56;
            v127 = 1024;
            v128 = v58;
            v129 = 1024;
            v130 = v60;
            v131 = 1024;
            v132 = v61;
            v133 = 1024;
            v134 = word_100B541D8;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is unused, graceTime=%d curSecs=%d lastConnected=%d fConnectionGracePeriod=%d", buf, 0x24u);
          }

          v62 = v58 - v96;
          if (v58 >= v96)
          {
            v66 = qword_100BCE988;
            if (!os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
            {
              goto LABEL_142;
            }

            *buf = 138543618;
            *&buf[4] = v56;
            v127 = 1024;
            v128 = v62;
            v67 = v66;
            v68 = "Device %{public}@ is unused, but is within the grace period for %d more seconds - skipping";
            v69 = 18;
LABEL_130:
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, v68, buf, v69);
            goto LABEL_142;
          }

          v63 = sub_10000C798();
          if ((*(*v63 + 368))(v63))
          {
            __p[0] = 0;
            if (qword_100B508B0 != -1)
            {
              sub_100823824();
            }

            v64 = off_100B508A8;
            sub_10004DFB4(buf, v56);
            if (sub_1000C4FCC(v64, buf, __p))
            {
              v95 = 0;
              sub_1000216B4(&v95);
              if (sub_1001990A4(__p[0]))
              {
                if (qword_100B508C0 != -1)
                {
                  sub_100823A38();
                }

                if (sub_10004EE74(off_100B508B8, v56))
                {
                  v65 = qword_100BCE988;
                  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138543362;
                    *&buf[4] = v56;
                    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "Device %{public}@ is unused, but is in the middle of pipe negotiaion - skipping", buf, 0xCu);
                  }

                  sub_10002249C(&v95);
                  goto LABEL_142;
                }
              }

              sub_10002249C(&v95);
            }
          }
        }

        if (qword_100B508C0 != -1)
        {
          sub_100823A38();
        }

        if (sub_1007C32DC(off_100B508B8, v56))
        {
          v70 = qword_100BCE988;
          if (!os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
          {
            goto LABEL_142;
          }

          *buf = 138543362;
          *&buf[4] = v56;
          v67 = v70;
          v68 = "Device %{public}@ is unused, but is in the middle of pairing - skipping";
          v69 = 12;
          goto LABEL_130;
        }

        v71 = sub_10000E92C();
        if ((*(*v71 + 8))(v71))
        {
          LOBYTE(v96) = 0;
          v72 = sub_10000E92C();
          sub_100007E30(buf, "CATT");
          sub_100007E30(__p, "DisableLEGraceTimer");
          (*(*v72 + 72))(v72, buf, __p, &v96);
          if (v94 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v130) < 0)
          {
            operator delete(*buf);
          }

          if (v96 == 1)
          {
            v82 = qword_100BCE988;
            if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = v56;
              _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "Grace timer disabled for LE devices, not disconnecting %{public}@", buf, 0xCu);
            }

            goto LABEL_163;
          }
        }

        v73 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v56;
          _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Disconnecting GATT for unused LE device %{public}@", buf, 0xCu);
        }

        if (qword_100B508B0 != -1)
        {
          sub_100823824();
        }

        v74 = off_100B508A8;
        sub_10004DFB4(buf, v56);
        sub_10074CD90(v74, buf, 1u);
      }

LABEL_142:
      v55 = v55 + 1;
    }

    while (v53 != v55);
    v53 = [v52 countByEnumeratingWithState:&v97 objects:v135 count:16];
    if (v53)
    {
      continue;
    }

    break;
  }

LABEL_144:

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v75 = *(a1 + 328);
  v76 = [v75 countByEnumeratingWithState:&v89 objects:v125 count:16];
  if (v76)
  {
    v77 = *v90;
    do
    {
      v78 = 0;
      do
      {
        if (*v90 != v77)
        {
          objc_enumerationMutation(v75);
        }

        v79 = *(*(&v89 + 1) + 8 * v78);
        if (([v1 containsObject:{v79, v83}] & 1) == 0)
        {
          if (qword_100B508D0 != -1)
          {
            sub_100823A10();
          }

          v80 = sub_100046458(off_100B508C8, v79, 0);
          if (qword_100B50AC0 != -1)
          {
            sub_100823A60();
          }

          v88[0] = _NSConcreteStackBlock;
          v88[1] = 3221225472;
          v88[2] = sub_1003BD94C;
          v88[3] = &unk_100AE1200;
          v88[4] = v79;
          v88[5] = v80;
          sub_100592E70(off_100B50AB8, v88);
        }

        v78 = v78 + 1;
      }

      while (v76 != v78);
      v76 = [v75 countByEnumeratingWithState:&v89 objects:v125 count:16];
    }

    while (v76);
  }

LABEL_163:
}

void sub_1000C4ACC(id a1)
{
  if (qword_100B512F8 != -1)
  {
    sub_1000D5C5C();
  }

  v2 = off_100B512F0;

  sub_1000C38C8(v2);
}

id sub_1000C4B1C(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 40);
  v3 = *(a1 + 408);
  v4 = (a1 + 416);
  if (v3 != (a1 + 416))
  {
    do
    {
      v6 = v3[5];
      v5 = v3[6];
      while (v6 != v5)
      {
        if (*(v6 + 16))
        {
          v7 = sub_10004DF60(v6);
          [v2 addObject:v7];

          v5 = v3[6];
        }

        v6 += 18;
      }

      v8 = v3[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v3[2];
          v10 = *v9 == v3;
          v3 = v9;
        }

        while (!v10);
      }

      v3 = v9;
    }

    while (v9 != v4);
  }

  v11 = [v2 allObjects];
  sub_1000088CC(v13);

  return v11;
}

void sub_1000C4C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

id sub_1000C4C60(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  v3 = *(a1 + 24);
  v4 = (a1 + 32);
  if (v3 != (a1 + 32))
  {
    do
    {
      v5 = v3[5];
      if (*(v5 + 40) == 1)
      {
        v7 = *(v5 + 8);
        v6 = *(v5 + 16);
        while (v7 != v6)
        {
          v8 = *v7;
          v9 = *(*v7 + 120);
          if (v9 != *(*v7 + 128))
          {
            do
            {
              v10 = sub_10004DF60((v9 + 2));
              [v2 addObject:v10];

              v9 += 26;
            }

            while (v9 != *(v8 + 128));
            v6 = *(v5 + 16);
          }

          ++v7;
        }
      }

      v11 = v3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v3[2];
          v13 = *v12 == v3;
          v3 = v12;
        }

        while (!v13);
      }

      v3 = v12;
    }

    while (v12 != v4);
  }

  v14 = [v2 allObjects];

  return v14;
}

id sub_1000C4DA4(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 80);
  v3 = *(a1 + 144);
  v4 = (a1 + 152);
  if (v3 != (a1 + 152))
  {
    do
    {
      v5 = v3[5];
      for (i = *(v5 + 32); i != *(v5 + 40); ++i)
      {
        v7 = *i;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v8 = *(v7 + 40);
        v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v9)
        {
          v10 = *v19;
          do
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v19 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = [*(*(&v18 + 1) + 8 * j) identifier];
              [v2 addObject:v12];
            }

            v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
          }

          while (v9);
        }
      }

      v13 = v3[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v3[2];
          v15 = *v14 == v3;
          v3 = v14;
        }

        while (!v15);
      }

      v3 = v14;
    }

    while (v14 != v4);
  }

  v16 = [v2 allObjects];
  sub_1000088CC(v22);

  return v16;
}

void sub_1000C4F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

BOOL sub_1000C4FCC(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 120);
  v6 = sub_10004E34C(a1 + 384, a2);
  if (a1 + 392 != v6)
  {
    *a3 = *(v6 + 48);
  }

  v7 = a1 + 392 != v6;
  sub_1000088CC(v9);
  return v7;
}

id sub_1000C5064(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 120);
  v3 = *(a1 + 336);
  if (v3 != (a1 + 344))
  {
    do
    {
      v4 = sub_10004DF60(v3 + 25);
      [v2 addObject:v4];

      v5 = *(v3 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v3 + 2);
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != (a1 + 344));
  }

  v8 = [*(a1 + 752) allObjects];
  [v2 addObjectsFromArray:v8];

  v9 = [*(a1 + 768) allObjects];
  [v2 addObjectsFromArray:v9];

  v10 = [*(a1 + 760) allObjects];
  [v2 addObjectsFromArray:v10];

  sub_1000088CC(v12);

  return v2;
}

void sub_1000C51A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_1000C51E4(uint64_t a1)
{
  if ((*(a1 + 176) & 1) == 0)
  {
    v2 = sub_100007EE8();
    sub_10008E008(v2, 5000, &stru_100AF05C8);
    *(a1 + 176) = 1;
  }
}

void sub_1000C522C(uint64_t a1, unsigned __int16 a2)
{
  if (qword_100B5C8D8)
  {
    Count = CFSetGetCount(qword_100B5C8D8);
    if (&lockdown_copy_checkin_info)
    {
      if (Count >= 1)
      {
        v5 = a1;
        v6 = a2;
        CFSetApplyFunction(qword_100B5C8D8, sub_1001C5500, &v5);
        if (BYTE2(v6) == 1)
        {
          sub_1001C37FC();
        }
      }
    }
  }

  if (qword_100B5C8E0)
  {
    if (CFSetGetCount(qword_100B5C8E0) >= 1)
    {
      v5 = a1;
      v6 = a2;
      CFSetApplyFunction(qword_100B5C8E0, sub_1001C5550, &v5);
    }
  }
}

void sub_1000C52F4(uint64_t a1)
{
  sub_1000E771C(a1);
  sub_1001BA814(a1);
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v3 = sub_10009B9DC();
  if ((a1 - 1205) <= 1 && v3 == 6 || ((v4 = sub_10009B9DC(), a1 == 162) ? (v5 = v4 == 9) : (v5 = 0), !v5 ? (v6 = 0) : (v6 = 1), a1 == 1214 || v6))
  {
    if (has_internal_diagnostics)
    {
      sub_100304AF8("Bluetooth fatal error - crashing { build=internal, reason=%d, description=%! }", a1, a1);
    }

    else
    {
      sub_100304AF8("Bluetooth fatal error - crashing { build=release, reason=%d }");
    }

    sub_1001C3FC8();
    sub_100304AF8("OI_FatalError: ID !! (ID %d)\n", dword_100BC922D);
    sub_100304AF8("OI_FatalError: PC !!(PC 0x%x)\n", dword_100BC9241);
    sub_100304AF8("OI_FatalError: LR !!(LR0 0x%x, LR1 0x%x, LR2 0x%x, LR3 0x%x)\n", dword_100BC9245, unk_100BC9249, dword_100BC924D, unk_100BC9251);
    sub_100304AF8("OI_FatalError: MAC Version !! (%d.%d.%d.%d)\n", word_100BC921D, word_100BC921F, word_100BC9221, word_100BC9223);
    sub_100304AF8("OI_FatalError: PHY Version !!( %d.%d.%d.%d)\n", word_100BC9225, word_100BC9227, word_100BC9229, word_100BC922B);
    if (a1 == 162)
    {
      if (sub_10009B9DC() != 9)
      {
LABEL_23:
        abort_with_payload();
        goto LABEL_24;
      }

      v10 = "Proxima";
      v11 = "InvalidACLDataLength";
      v12 = 60.0;
    }

    else
    {
      v10 = "Marconi";
      v11 = "BluetoothChip";
      v12 = 0.0;
    }

    sub_10057930C(v10, v11, v12);
    goto LABEL_23;
  }

  sub_1001C3FC8();
  if (!has_internal_diagnostics)
  {
LABEL_24:
    _os_log_pack_size();
    __chkstk_darwin();
    __error();
    v13 = _os_log_pack_fill();
    *v13 = 67109120;
    v13[1] = a1;
    goto LABEL_25;
  }

  _os_log_pack_size();
  __chkstk_darwin();
  __error();
  v7 = _os_log_pack_fill();
  sub_1000CDD74(a1);
  v9 = "?";
  if (v8)
  {
    v9 = v8;
  }

  *v7 = 67109378;
  *(v7 + 4) = a1;
  *(v7 + 8) = 2082;
  *(v7 + 10) = v9;
LABEL_25:
  os_log_create("com.apple.bluetooth", "CBCrash");
  qword_100B55118 = os_log_pack_send_and_compose();
  v14 = abort_with_payload();
  [(CBStackBLEScannerBTStack *)v14 .cxx_destruct];
}

const char *sub_1000C572C(const char *result)
{
  if (byte_100BC7CC5 == 1)
  {
    v1 = result;
    v2 = 0;
    sub_1000216B4(&v2);
    sub_1001C429C(v1);
    return sub_10002249C(&v2);
  }

  return result;
}

uint64_t sub_1000C5794(uint64_t a1)
{
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C5860;
  v5[3] = &unk_100AF6B10;
  v5[4] = v1;
  sub_100028B38(v3, 0x64u, v5);
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
  {
    sub_10082DB70();
  }

  result = *v2;
  if (*v2)
  {
    operator delete();
  }

  return result;
}

id sub_1000C5860(uint64_t a1)
{
  v11[0] = @"ProcessingMsec";
  v2 = a1 + 32;
  v3 = [NSNumber numberWithUnsignedInt:**(a1 + 32)];
  v12[0] = v3;
  v11[1] = @"XPCMsec";
  v4 = [NSNumber numberWithUnsignedInt:*(*v2 + 4)];
  v12[1] = v4;
  v11[2] = @"ScanPrepMsec";
  v5 = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 8)];
  v12[2] = v5;
  v11[3] = @"SyncMsec";
  v6 = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 12)];
  v12[3] = v6;
  v11[4] = @"HandlingMsec";
  v7 = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 16)];
  v12[4] = v7;
  v11[5] = @"TotalMsec";
  v8 = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 20)];
  v12[5] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:6];

  return v9;
}

void sub_1000C5A64(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 168);
  v4 = *(a1 + 56);
  if (v3 == 0.0)
  {
    if (*(a1 + 56))
    {
      *(v2 + 168) = *(a1 + 48);
      *(v2 + 144) = v4;
      *(v2 + 152) = *(a1 + 40);
    }
  }

  else if (*(a1 + 56) && *(v2 + 152) == *(a1 + 40))
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
    {
      sub_10082DA48();
    }
  }

  else
  {
    *(v2 + 160) = v4;
    v5 = *(a1 + 48);
    v6 = [NSMutableString stringWithString:@"AudioRouteTransition"];
    v7 = v6;
    v8 = @"fromBTtoNonBT";
    if (*(v2 + 160) == 1 && *(v2 + 144))
    {
      v8 = @"fromBTtoBT";
    }

    [v6 appendString:v8];
    v9 = v5 - v3;
    if (v5 - v3 <= 0.0 || v9 > 5.0)
    {
      if (v9 <= 5.0 || v9 > 10.0)
      {
        if (v9 > 60.0 || v9 <= 10.0)
        {
          v13 = @"over60seconds";
        }

        else
        {
          v13 = @"within10to60seconds";
        }
      }

      else
      {
        v13 = @"within5to10seconds";
      }
    }

    else
    {
      v13 = @"within0to5seconds";
    }

    [v7 appendString:v13];
    v14 = *(v2 + 360);
    v15 = [v14 objectForKey:v7];
    v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v15 intValue] + 1);
    [v14 setObject:v16 forKey:v7];

    v17 = qword_100BCE8D8;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = [*(v2 + 360) description];
      sub_10082D9F0(v18, v19, v17);
    }

    if (*(a1 + 56) == 1)
    {
      *(v2 + 144) = 1;
      *(v2 + 152) = *(a1 + 40);
      *(v2 + 160) = 0;
      *(v2 + 168) = *(a1 + 48);
    }

    else
    {
      *(v2 + 144) = 0u;
      *(v2 + 160) = 0u;
    }
  }
}

uint64_t sub_1000C5CF0(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 1832);
  if (v6 == (a1 + 1840))
  {
LABEL_13:
    v10 = 0;
  }

  else
  {
    while (1)
    {
      v7 = *(v6 + 28) != a2 || *(v6 + 16) == 0;
      if (!v7)
      {
        break;
      }

      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v7 = *v9 == v6;
          v6 = v9;
        }

        while (!v7);
      }

      v6 = v9;
      if (v9 == (a1 + 1840))
      {
        goto LABEL_13;
      }
    }

    v10 = *(v6 + 15);
  }

  v11 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    v33 = v10;
    *buf = &v33;
    v12 = *(sub_1000BED44(a1 + 1832, &v33) + 28);
    v32 = v10;
    *buf = &v32;
    v13 = *(sub_1000BED44(a1 + 1832, &v32) + 16) != 0;
    v31 = v10;
    *buf = &v31;
    v14 = *(sub_1000BED44(a1 + 1832, &v31) + 17) != 0;
    *buf = 67110144;
    *&buf[4] = v10;
    v35 = 1024;
    v36 = v12;
    v37 = 1024;
    *v38 = a3;
    *&v38[4] = 1024;
    *&v38[6] = v13;
    v39 = 1024;
    v40 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "enableMatchTable handle:%d type:%d enable=%d created=%d enabled=%d", buf, 0x20u);
  }

  if (v10 < 0x100 || v10 >= *(a1 + 1818))
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_1008753BC();
    }

    return 7;
  }

  else
  {
    v33 = v10;
    *buf = &v33;
    if (*(sub_1000BED44(a1 + 1832, &v33) + 16))
    {
      v33 = v10;
      *buf = &v33;
      v15 = (*(sub_1000BED44(a1 + 1832, &v33) + 17) != 0) ^ a3;
      v16 = qword_100BCE918;
      v17 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
      if (v15)
      {
        if (v17)
        {
          v33 = v10;
          *buf = &v33;
          v18 = *(sub_1000BED44(a1 + 1832, &v33) + 28);
          v19 = "pausing";
          *buf = 67109634;
          *&buf[4] = v10;
          if (a3)
          {
            v19 = "activating";
          }

          v35 = 1024;
          v36 = v18;
          v37 = 2082;
          *v38 = v19;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Match Table handle:%d type:%d mode change -> %{public}s ", buf, 0x18u);
        }

        v20 = sub_10000C7D0();
        v21 = (*(*v20 + 3408))(v20, v10, 1, a3 ^ 1u);
        v22 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
        {
          v33 = v10;
          *buf = &v33;
          v23 = *(sub_1000BED44(a1 + 1832, &v33) + 28);
          *buf = 67109632;
          *&buf[4] = v10;
          v35 = 1024;
          v36 = v23;
          v37 = 1024;
          *v38 = v21;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Match Table handle:%d type:%d advBufMatchControl returned %d", buf, 0x14u);
        }

        if (v21)
        {
          v24 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
          {
            v33 = v10;
            *buf = &v33;
            v25 = *(sub_1000BED44(a1 + 1832, &v33) + 28);
            *buf = 67109632;
            *&buf[4] = v10;
            v35 = 1024;
            v36 = v25;
            v37 = 1024;
            *v38 = v21;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Match Table handle:%d type:%d Failed to enable match table : %d", buf, 0x14u);
          }
        }

        else
        {
          v33 = v10;
          *buf = &v33;
          *(sub_1000BED44(a1 + 1832, &v33) + 17) = a3;
        }

        sub_1000C71BC(a1, a2, a3);
      }

      else
      {
        if (v17)
        {
          v33 = v10;
          *buf = &v33;
          v28 = *(sub_1000BED44(a1 + 1832, &v33) + 28);
          v29 = "paused";
          *buf = 67109634;
          *&buf[4] = v10;
          if (a3)
          {
            v29 = "active";
          }

          v35 = 1024;
          v36 = v28;
          v37 = 2082;
          *v38 = v29;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Match Table handle:%d type:%d already %{public}s", buf, 0x18u);
        }

        return 0;
      }
    }

    else
    {
      v27 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        v33 = v10;
        *buf = &v33;
        v30 = *(sub_1000BED44(a1 + 1832, &v33) + 28);
        *buf = 67109376;
        *&buf[4] = v10;
        v35 = 1024;
        v36 = v30;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Match Table handle:%d type:%d not created", buf, 0xEu);
      }

      return 12;
    }
  }

  return v21;
}

uint64_t sub_1000C62E8(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x72u);
}

uint64_t sub_1000C6338(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 255;
    goto LABEL_12;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_19;
  }

  v14 = *(a3 + 6);
  if (*(a3 + 5) <= v14)
  {
LABEL_19:
    v25 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_21;
  }

  if (*(a3 + 14) != 1)
  {
    v25 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_21:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 490, v25);
  }

  v15 = *a3;
  *(a3 + 6) = v14 + 1;
  v13 = *(v15 + v14);
  if (v13 == 12)
  {
    result = 0;
    if (!a2)
    {
      return result;
    }

    return a2(result);
  }

LABEL_12:
  if (sub_10000C240())
  {
    sub_10000AF54("SubOpcode Incorrect %x!", v17, v18, v19, v20, v21, v22, v23, v13);
    v24 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  result = 101;
  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_1000C6490(uint64_t a1, uint64_t a2)
{
  v31 = 0;
  if (a2)
  {
    v4 = 7;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
    {
      sub_100874C30();
    }

    v4 = 3;
  }

  v5 = sub_1000C7D9C(a1, a2, 1, &v31);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100874C6C();
    }

    return v6;
  }

  v7 = v31;
  v32 = v31;
  *buf = &v32;
  v8 = sub_1000BED44(a1 + 1832, &v32);
  v29 = *(v8 + 15);
  v27 = *(v8 + 29);
  v28 = *(v8 + 17);
  v9 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v7;
    *&buf[8] = 1024;
    *&buf[10] = a2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Creating an AOP match table with handle %d for type %d", buf, 0xEu);
  }

  if (a2 == 22)
  {
    if (qword_100BC7D30 != -1)
    {
      sub_100874CFC();
    }

    _os_feature_enabled_impl();
    v10 = 0;
  }

  else
  {
    v11 = _os_feature_enabled_impl();
    v10 = a2 == 16;
    if (a2 == 16)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v12 == 1)
    {
      if (qword_100BC7D38 != -1)
      {
        sub_100874CD4();
      }

      v10 = 1;
    }
  }

  v26 = v10;
  if (qword_100B51098 != -1)
  {
    sub_1008746E4();
  }

  v13 = sub_1000C6B04(qword_100B51090, a2);
  if (a2 == 22 && *(a1 + 1880) == 0.0)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    *(a1 + 1880) = v14;
  }

  v15 = sub_10000C7D0();
  v6 = (*(*v15 + 3384))(v15, v7, v4, 255, 76, a2, 0, 1, v13, 0, 0, 0, 0, 0);
  if (v6)
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100874D24();
    }

    return v6;
  }

  *buf = 0u;
  v52 = 0u;
  memset(v53, 0, sizeof(v53));
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  buf[6] = 2;
  v16 = sub_10000C7D0();
  v6 = (*(*v16 + 3432))(v16, v7, 0, 0, buf);
  if (v6)
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100874D94();
    }

    return v6;
  }

  if (a2 <= 14)
  {
    if (!a2)
    {
      v17 = 2;
      goto LABEL_45;
    }

    if (a2 == 7)
    {
      v17 = 4;
      goto LABEL_45;
    }

LABEL_44:
    v17 = 0;
    goto LABEL_45;
  }

  if (a2 == 15)
  {
    v17 = 8;
    goto LABEL_45;
  }

  if (a2 == 16)
  {
    v17 = 16;
    goto LABEL_45;
  }

  if (a2 != 22)
  {
    goto LABEL_44;
  }

  v17 = 1;
LABEL_45:
  v30 = v29;
  v33 = &v30;
  v18 = sub_1000BED44(a1 + 1832, &v30);
  *(v18 + 28) = a2;
  *(v18 + 29) = v27;
  *(v18 + 15) = v29;
  *(v18 + 16) = 1;
  *(v18 + 17) = v28;
  *(v18 + 18) = 1;
  *(v18 + 19) = v17;
  v19 = *(a1 + 1872);
  if (!(v19 & 1 | (a2 != 22)))
  {
    if (qword_100B51098 != -1)
    {
      sub_1008746E4();
    }

    v38[1] = @"descriptor";
    v39[0] = &off_100B33C60;
    v38[0] = @"type";
    v36 = @"conf";
    v20 = qword_100B51090;
    v34[0] = @"appleType";
    v34[1] = @"payloadLengthLimits";
    v35[0] = &off_100B33C78;
    v35[1] = &off_100B346A8;
    v35[2] = &off_100B33CC0;
    v34[2] = @"pktSize";
    v34[3] = @"numLines";
    v21 = [NSNumber numberWithInt:40];
    v35[3] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:4];
    v37 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v39[1] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
    sub_10048A1BC(v20, v24);

    v19 = *(a1 + 1872) | 1;
    *(a1 + 1872) = v19;
  }

  if (((!v26 | ((v19 & 0x10) >> 4)) & 1) == 0 && _os_feature_enabled_impl())
  {
    if (qword_100B51098 != -1)
    {
      sub_1008746E4();
    }

    sub_10048A1BC(qword_100B51090, &off_100B34518);
    *(a1 + 1872) |= 0x10u;
  }

  return v6;
}

uint64_t sub_1000C6B04(uint64_t a1, unsigned __int8 a2)
{
  v6 = a2;
  v5 = 0.0;
  sub_1000C6B88(a1, a2, &v5, &v4);
  if (sub_1000C0430((a1 + 112), &v6))
  {
    v7 = &v6;
    *(sub_1000C04E8((a1 + 112), &v6) + 28) = 0;
  }

  return rintf(v5);
}

uint64_t **sub_1000C6B88(uint64_t a1, unsigned __int8 a2, _DWORD *a3, _DWORD *a4)
{
  v9 = a2;
  result = sub_1000C0430((a1 + 112), &v9);
  if (result)
  {
    v10 = &v9;
    *a3 = *(sub_1000C04E8((a1 + 112), &v9) + 5);
    v10 = &v9;
    result = sub_1000C04E8((a1 + 112), &v9);
    v8 = *(result + 6);
  }

  else
  {
    *a3 = 0;
    v8 = 0;
  }

  *a4 = v8;
  return result;
}

uint64_t sub_1000C6C44(uint64_t a1, __int16 a2, char a3, char a4, __int16 a5, __int16 a6)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C6CCC;
  v7[3] = &unk_100AF2390;
  v8 = a2;
  v11 = a3;
  v12 = a4;
  v9 = a5;
  v10 = a6;
  return sub_10002173C(a1, 114, 1, v7, 0);
}

uint64_t sub_1000C6CF8(__int16 a1, char a2, char a3, __int16 a4, __int16 a5, uint64_t (*a6)())
{
  v27 = 0;
  v28 = 0;
  result = sub_10001FFD8(&v27);
  if (!result)
  {
    if (HIBYTE(v28))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v16 = WORD2(v28);
      if (WORD1(v28) > WORD2(v28))
      {
        if (BYTE6(v28) == 2)
        {
          ++WORD2(v28);
          *(v27 + v16) = 12;
          if (HIBYTE(v28))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v28) - WORD2(v28) > 1)
          {
            if (BYTE6(v28) == 2)
            {
              *(v27 + WORD2(v28)) = a1;
              v17 = WORD2(v28);
              v18 = WORD2(v28) + 2;
              WORD2(v28) += 2;
              if (HIBYTE(v28))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v28) > v18)
              {
                if (BYTE6(v28) == 2)
                {
                  WORD2(v28) = v17 + 3;
                  *(v27 + v18) = a2;
                  if (HIBYTE(v28))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else if (WORD1(v28) > WORD2(v28))
                  {
                    if (BYTE6(v28) == 2)
                    {
                      *(v27 + WORD2(v28)) = a3;
                      v19 = ++WORD2(v28);
                      if (HIBYTE(v28))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else if (WORD1(v28) - v19 > 1)
                      {
                        if (BYTE6(v28) == 2)
                        {
                          *(v27 + v19) = a4;
                          *(v27 + WORD2(v28) + 1) = HIBYTE(a4);
                          v20 = WORD2(v28) + 2;
                          WORD2(v28) += 2;
                          if (HIBYTE(v28))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                          }

                          else if (WORD1(v28) - v20 > 1)
                          {
                            if (BYTE6(v28) == 2)
                            {
                              *(v27 + v20) = a5;
                              *(v27 + WORD2(v28) + 1) = HIBYTE(a5);
                              WORD2(v28) += 2;
                              return sub_100020078(556, v27, BYTE4(v28), a6, sub_1000C6338, v13, v14, v15);
                            }

                            v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6502, v26);
                          }

                          v26 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                          goto LABEL_45;
                        }

                        v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6501, v25);
                      }

                      v25 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                      goto LABEL_41;
                    }

                    v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6500, v24);
                  }

                  v24 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                  goto LABEL_37;
                }

                v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6499, v23);
              }

              v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_33;
            }

            v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6498, v22);
          }

          v22 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_29;
        }

        v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6497, v21);
      }
    }

    v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1000C70A4()
{
  if (off_100B60B48)
  {
    v0 = off_100B60B48();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

BOOL sub_1000C7130(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (v1)
  {
    if (v1 > 0x7CF)
    {
      if (v1 - 3000 < 0x3E8)
      {
        return 1;
      }
    }

    else if (v1 - 20 < 6)
    {
      return 1;
    }
  }

  v2 = 1;
  v3 = sub_1000271F0();
  if ((v3 - 169) > 0x3A || ((1 << (v3 + 87)) & 0x7FE1E1E00000083) == 0)
  {
    return (v3 - 230) < 0xD;
  }

  return v2;
}

double *sub_1000C71BC(double *result, int a2, int a3)
{
  if (a2 == 22)
  {
    v12[3] = v3;
    v12[4] = v4;
    v5 = result;
    v6 = result[235];
    if (a3)
    {
      if (v6 == 0.0)
      {
        result = +[NSDate timeIntervalSinceReferenceDate];
        *(v5 + 235) = v7;
      }
    }

    else if (v6 > 0.0)
    {
      v12[0] = 0;
      if (qword_100B51098 != -1)
      {
        sub_1008743A8();
      }

      sub_1000C6B88(qword_100B51090, 0x16u, v12 + 1, v12);
      v8 = sub_10000F034();
      v9.n128_f64[0] = v5[235];
      v10.n128_u32[0] = HIDWORD(v12[0]);
      v11.n128_u32[0] = v12[0];
      result = (*(*v8 + 472))(v9, v10, v11);
      v5[235] = 0.0;
    }
  }

  return result;
}

BOOL sub_1000C7294(uint64_t a1)
{
  if (!(*(*a1 + 8))(a1))
  {
    return 0;
  }

  v7 = 0;
  sub_100007E30(v5, "Scan");
  sub_100007E30(__p, "EnableNearbyActionNoWakeAdvMatchingRuleScan");
  (*(*a1 + 72))(a1, v5, __p, &v7);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  return (v7 & 1) != 0;
}

void sub_1000C7370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000C73A4(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = 0;
  result = *sub_1000C7430(a1, &v3, uu1);
  if (!result)
  {
    sub_1000C74B8();
  }

  return result;
}

const unsigned __int8 *sub_1000C7430(uint64_t a1, const unsigned __int8 **a2, unsigned __int8 *uu1)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((uuid_compare(uu1, v4 + 25) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((uuid_compare(v7 + 25, uu1) & 0x80000000) == 0)
      {
        break;
      }

      v5 = v7 + 8;
      v4 = *(v7 + 1);
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_1000C7520(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000C7538(uint64_t **a1, uint64_t *a2)
{
  v4 = sub_10002717C(a1, a2);
  sub_1000C7584(a1, a2 + 4);
  operator delete(a2);
  return v4;
}

void sub_1000C7584(uint64_t a1, void *a2)
{
  a2[10] = &off_100AE0AB8;
  v3 = a2[11];
  if (v3)
  {
    sub_10000C808(v3);
  }

  a2[8] = &off_100AE0AB8;
  v4 = a2[9];
  if (v4)
  {
    sub_10000C808(v4);
  }

  a2[6] = &off_100AE0AB8;
  v5 = a2[7];
  if (v5)
  {
    sub_10000C808(v5);
  }

  a2[4] = &off_100AE0AB8;
  v6 = a2[5];
  if (v6)
  {
    sub_10000C808(v6);
  }

  a2[2] = &off_100AE0AB8;
  v7 = a2[3];
  if (v7)
  {

    sub_10000C808(v7);
  }
}

uint64_t sub_1000C76A8(uint64_t a1, int a2)
{
  v4 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Destroying match table for type %d", buf, 8u);
    v4 = qword_100BCE918;
  }

  v5 = *(a1 + 1832);
  if (v5 == (a1 + 1840))
  {
    goto LABEL_24;
  }

  while (1)
  {
    v6 = *(v5 + 28);
    v7 = *(v5 + 15);
    v8 = *(v5 + 16);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(v5 + 18);
      v13 = *(v5 + 17) != 0;
      *buf = 67110144;
      *&buf[4] = v7;
      v26 = 1024;
      v27 = v6;
      v28 = 1024;
      v29 = v12;
      v30 = 1024;
      v31 = v8 != 0;
      v32 = 1024;
      v33 = v13;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "handle:%d type:%d length:%d isCreated:%d isEnabled:%d", buf, 0x20u);
      v4 = qword_100BCE918;
    }

    v9 = v6 != a2 || v8 == 0;
    if (!v9)
    {
      break;
    }

    v10 = v5[1];
    if (v10)
    {
      do
      {
        v11 = v10;
        v10 = *v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        v11 = v5[2];
        v9 = *v11 == v5;
        v5 = v11;
      }

      while (!v9);
    }

    v5 = v11;
    if (v11 == (a1 + 1840))
    {
      goto LABEL_24;
    }
  }

  if (!v7)
  {
LABEL_24:
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100874BC4();
    }

    return 3;
  }

  else
  {
    v24 = v7;
    *buf = &v24;
    v14 = sub_1000BED44(a1 + 1832, &v24);
    v15 = *(v14 + 14);
    v16 = *(v14 + 15);
    v17 = *(v14 + 9);
    v24 = v7;
    *buf = &v24;
    v18 = sub_1000BED44(a1 + 1832, &v24);
    *(v18 + 14) = v15;
    *(v18 + 15) = v16;
    *(v18 + 8) = 0;
    *(v18 + 9) = v17;
    v19 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *&buf[4] = a2;
      v26 = 1024;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Destroying match table for type %d with handle %d", buf, 0xEu);
    }

    v20 = sub_10000C7D0();
    v21 = (*(*v20 + 3408))(v20, v16, 0, 1);
    if (v21)
    {
      v22 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109632;
        *&buf[4] = a2;
        v26 = 1024;
        v27 = v7;
        v28 = 1024;
        v29 = v21;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to destroy match table for type %d on handle %d: %d", buf, 0x14u);
      }
    }

    else
    {
      sub_1000C71BC(a1, a2, 0);
    }
  }

  return v21;
}

id sub_1000C7A04(uint64_t a1)
{
  v2 = *(a1 + 512);
  if (v2)
  {
    v3 = [v2 allKeys];
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  return v3;
}

uint64_t sub_1000C7A50(void *a1, unsigned __int8 *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, (a1 + 12));
  v4 = a1[22];
  v5 = sub_10004DF60(a2);
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    if ((v6[97] & 1) == 0 && (v6[96] & 1) == 0)
    {
      sub_10004ADAC(a1, a2);
    }
  }

  else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
  {
    memset(out, 0, 37);
    uuid_unparse_upper(a2, out);
    sub_100007E30(v9, out);
    sub_1000D5668();
  }

  return sub_1000088CC(v8);
}

void sub_1000C7C78(uint64_t a1, void *a2)
{
  if (!*a2 && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
  {
    sub_10082A560();
  }

  v4 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C7D30;
  block[3] = &unk_100ADF8F8;
  block[4] = a2;
  dispatch_sync(v4, block);
}

void sub_1000C7D30(uint64_t a1)
{
  v2 = +[LeDeviceCache sharedInstance];
  [v2 writeDevice:*(a1 + 32)];
}

uint64_t sub_1000C7D9C(uint64_t a1, int a2, int a3, _WORD *a4)
{
  v4 = a1;
  *a4 = 0;
  v5 = *(a1 + 1832);
  v6 = (a1 + 1840);
  if (v5 == (a1 + 1840))
  {
    v8 = 0;
LABEL_39:
    v22 = 0;
LABEL_40:
    v23 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v37 = v22;
      _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "MATCH TABLE nextHandle:%d", buf, 8u);
      if (!*a4)
      {
        return 4;
      }
    }

    else if (!v22)
    {
      return 4;
    }

    if (*(v4 + 1816) != v8)
    {
      return 0;
    }

    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_10087696C();
    }

    return 4;
  }

  v8 = 0;
  v9 = *(a1 + 1832);
  do
  {
    if (*(v9 + 16))
    {
      ++v8;
    }

    v10 = v9[1];
    if (v10)
    {
      do
      {
        v11 = v10;
        v10 = *v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        v11 = v9[2];
        v17 = *v11 == v9;
        v9 = v11;
      }

      while (!v17);
    }

    v9 = v11;
  }

  while (v11 != v6);
  if (v5 == v6)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v12 = *(v5 + 28);
    v13 = *(v5 + 15);
    v14 = *(v5 + 16);
    v15 = *(v5 + 18);
    v16 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
    {
      break;
    }

    if (!v14)
    {
      goto LABEL_24;
    }

LABEL_14:
    v17 = v12 == 255 || v15 == 0;
    if (v17 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_FAULT))
    {
      sub_10087681C(&v34, v35);
    }

    if (v12 == a2)
    {
      v25 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109632;
        v37 = a2;
        v38 = 1024;
        v39 = v13;
        v40 = 1024;
        v41 = v15;
        _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "MATCH TABLE table for type:%d is already created with handle %d and size:%d", buf, 0x14u);
      }

      *a4 = v13;
      return 15;
    }

LABEL_31:
    v20 = v5[1];
    if (v20)
    {
      do
      {
        v21 = v20;
        v20 = *v20;
      }

      while (v20);
    }

    else
    {
      do
      {
        v21 = v5[2];
        v17 = *v21 == v5;
        v5 = v21;
      }

      while (!v17);
    }

    v5 = v21;
    if (v21 == v6)
    {
      v22 = *a4;
      v4 = a1;
      goto LABEL_40;
    }
  }

  v18 = *(v5 + 17);
  *buf = 67110144;
  v37 = v13;
  v38 = 1024;
  v39 = v12;
  v40 = 1024;
  v41 = v15;
  v42 = 1024;
  v43 = v14 != 0;
  v44 = 1024;
  v45 = v18 != 0;
  _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "MATCH TABLE handle:%d type:%d length:%d isCreated:%d isEnabled:%d", buf, 0x20u);
  if (v14)
  {
    goto LABEL_14;
  }

LABEL_24:
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
  {
    sub_100876854(&v32, v33);
  }

  if (v12 != a2)
  {
    if (v12 == 255 && !*a4)
    {
      *a4 = v13;
      v19 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v37 = v13;
        _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "MATCH TABLE first empty unused and uninitialized handle:%d", buf, 8u);
      }
    }

    goto LABEL_31;
  }

  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
  {
    sub_100876888();
  }

  v27 = qword_100BCE918;
  v28 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG);
  if (v15 != a3)
  {
    if (v28)
    {
      *buf = 67109632;
      v37 = a2;
      v38 = 1024;
      v39 = v13;
      v40 = 1024;
      v41 = v15;
      _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "MATCH TABLE so close! table for type:%d is already registered with handle %d and size:%d", buf, 0x14u);
    }

    *a4 = 0;
    return 15;
  }

  if (v28)
  {
    sub_1008768F8();
  }

  result = 0;
  *a4 = v13;
  return result;
}

uint64_t sub_1000C8238()
{
  if (qword_100B6E628 != -1)
  {
    sub_10083147C();
  }

  return byte_100B6E620;
}

uint64_t sub_1000C8270()
{
  if (qword_100B6E618 != -1)
  {
    sub_100831468();
  }

  return byte_100B6E610;
}

uint64_t sub_1000C82A8(__int16 a1, char a2, char a3, __int16 a4, char a5, char a6, char a7, uint64_t (*a8)())
{
  v36 = 0;
  v37 = 0;
  result = sub_10001FFD8(&v36);
  if (!result)
  {
    if (HIBYTE(v37))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v20 = WORD2(v37);
      if (WORD1(v37) > WORD2(v37))
      {
        if (BYTE6(v37) == 2)
        {
          ++WORD2(v37);
          *(v36 + v20) = 3;
          if (HIBYTE(v37))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v37) - WORD2(v37) > 1)
          {
            if (BYTE6(v37) == 2)
            {
              *(v36 + WORD2(v37)) = a1;
              v21 = WORD2(v37);
              v22 = WORD2(v37) + 2;
              WORD2(v37) += 2;
              if (HIBYTE(v37))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v37) > v22)
              {
                if (BYTE6(v37) == 2)
                {
                  WORD2(v37) = v21 + 3;
                  *(v36 + v22) = a2;
                  if (HIBYTE(v37))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else
                  {
                    v23 = WORD2(v37);
                    if (WORD1(v37) > WORD2(v37))
                    {
                      if (BYTE6(v37) == 2)
                      {
                        ++WORD2(v37);
                        *(v36 + v23) = a3;
                        if (HIBYTE(v37))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        }

                        else if (WORD1(v37) - WORD2(v37) > 1)
                        {
                          if (BYTE6(v37) == 2)
                          {
                            *(v36 + WORD2(v37)) = a4;
                            v24 = WORD2(v37);
                            v25 = WORD2(v37) + 2;
                            WORD2(v37) += 2;
                            if (HIBYTE(v37))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                            }

                            else if (WORD1(v37) > v25)
                            {
                              if (BYTE6(v37) == 2)
                              {
                                WORD2(v37) = v24 + 3;
                                *(v36 + v25) = a5;
                                if (HIBYTE(v37))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                }

                                else
                                {
                                  v26 = WORD2(v37);
                                  if (WORD1(v37) > WORD2(v37))
                                  {
                                    if (BYTE6(v37) == 2)
                                    {
                                      ++WORD2(v37);
                                      *(v36 + v26) = a6;
                                      if (HIBYTE(v37))
                                      {
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                      }

                                      else
                                      {
                                        v27 = WORD2(v37);
                                        if (WORD1(v37) > WORD2(v37))
                                        {
                                          if (BYTE6(v37) == 2)
                                          {
                                            ++WORD2(v37);
                                            *(v36 + v27) = a7;
                                            return sub_100020078(556, v36, BYTE4(v37), a8, sub_1000BF3B8, v17, v18, v19);
                                          }

                                          v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_59:
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6482, v35);
                                        }
                                      }

                                      v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                      goto LABEL_59;
                                    }

                                    v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_55:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6481, v34);
                                  }
                                }

                                v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                goto LABEL_55;
                              }

                              v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_51:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6480, v33);
                            }

                            v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_51;
                          }

                          v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_47:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6479, v32);
                        }

                        v32 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                        goto LABEL_47;
                      }

                      v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_43:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6478, v31);
                    }
                  }

                  v31 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_43;
                }

                v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_39:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6477, v30);
              }

              v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_39;
            }

            v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_35:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6476, v29);
          }

          v29 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_35;
        }

        v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6475, v28);
      }
    }

    v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_1000C8734()
{
  if (off_100B60B30)
  {
    v0 = off_100B60B30();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1000C87F4()
{
  v1 = *(__chkstk_darwin() + 72);
  if (v1)
  {
    v2 = v0;
    bzero(v14, 0xFF7uLL);
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    if (v4 < 0xFF8)
    {
      v12 = 4;
      v13 = v4;
      memcpy(v14, v3, v4);
      v11 = 0;
      v6 = [v1 setReport:&v12 reportLength:v4 + 9 withIdentifier:0 forType:1 error:&v11];
      v7 = v11;
      v8 = qword_100BCEA68;
      if (v6)
      {
        v5 = 0;
        if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully sent report to AOP. setPrecisionFindingIRKs", v10, 2u);
          v5 = 0;
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
        {
          sub_10082EEF0();
        }

        v5 = 1;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
      {
        sub_10082EF60();
      }

      return 1;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
    {
      sub_10082EFD0();
    }

    return 22;
  }

  return v5;
}

void sub_1000C89B4(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_1000C7698();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void sub_1000C8CF0(const void **a1)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = a1[2] - *a1;
  v5 = v2 - *a1;
  if (v4 > v5)
  {
    if (v2 != v3)
    {
      sub_100008108(a1, v5 >> 3);
    }

    v7 = 0;
    if (v4 >> 3)
    {
      v8 = 8 * (v5 >> 3);
      v9 = a1[1] - v3;
      v10 = v8 - v9;
      memcpy((v8 - v9), v3, v9);
      v7 = *a1;
      *a1 = v10;
      a1[1] = v8;
      a1[2] = 0;
    }

    if (v7)
    {

      operator delete(v7);
    }
  }
}

uint64_t sub_1000C8DAC(uint64_t a1)
{
  if ((*(*a1 + 2824))(a1))
  {
    return 27;
  }

  else
  {
    return 0;
  }
}

void sub_1000C8DF8(uint64_t a1)
{
  if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000C8EE0();
  }

  if (qword_100B51078 != -1)
  {
    sub_10080AA5C();
  }

  sub_100023EC0(off_100B51070, *(a1 + 40), 1, 1, 0);
  v2 = *(a1 + 32);
  v3 = *(v2 + 264);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C3128;
  block[3] = &unk_100ADF820;
  block[4] = v2;
  dispatch_async(v3, block);
}

void sub_1000C8F9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1000C9B4C();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000C9154;
  v10[3] = &unk_100AF7CB8;
  v13 = a1;
  v8 = v5;
  v11 = v8;
  v9 = v6;
  v12 = v9;
  sub_10000CA94(v7, v10);
}

void *sub_1000C90A0(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    sub_1000C9104(result, a3);
  }

  return result;
}

void sub_1000C9104(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_1000C7698();
}

void sub_1000C9154(uint64_t a1)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v11 = 0;
  sub_1000C90A0(&__p, &v11, 1);
  sub_1000C93CC(&v12, 3, 1u, &__p);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  sub_1000C9540(*(a1 + 32), &v12);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_1000C93CC(&v12, 4, 0, &__p);
  v2 = sub_1000C87F4();
  if (!v2)
  {
    v3 = *(a1 + 32);
    v4 = [NSNumber numberWithUnsignedInt:1];
    v5 = [v3 objectForKey:v4];
    LOBYTE(v3) = v5 == 0;

    if ((v3 & 1) == 0)
    {
      v6 = sub_10000F034();
      v7 = *(a1 + 32);
      v8 = [NSNumber numberWithUnsignedInt:1];
      v9 = [v7 objectForKey:v8];
      (*(*v6 + 440))(v6, [v9 count]);
    }
  }

  v10 = qword_100BCEA68;
  if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p) = 67109120;
    HIDWORD(__p) = v2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notifying listeners with replaceProxyOOBKeys result %d", &__p, 8u);
  }

  (*(*(a1 + 40) + 16))();
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }
}

void sub_1000C9360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000C93CC(void *a1, __int16 a2, unsigned int a3, uint64_t *a4)
{
  v6 = HIBYTE(a2);
  v20 = a2;
  sub_1000C89B4(a1, &v20);
  v19 = v6;
  sub_1000C89B4(a1, &v19);
  v22 = a3;
  sub_1000C89B4(a1, &v22);
  v21 = BYTE1(a3);
  sub_1000C89B4(a1, &v21);
  if (a3)
  {
    v8 = 0;
    v9 = a1[1];
    v10 = a3;
    do
    {
      v11 = *a4;
      v12 = a1[2];
      if (v9 >= v12)
      {
        v13 = *a1;
        v14 = &v9[-*a1];
        v15 = (v14 + 1);
        if ((v14 + 1) < 0)
        {
          sub_1000C7698();
        }

        v16 = v12 - v13;
        if (2 * v16 > v15)
        {
          v15 = 2 * v16;
        }

        if (v16 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          operator new();
        }

        v18 = &v9[-*a1];
        *v14 = *(v11 + v8);
        v9 = v14 + 1;
        memcpy(0, v13, v18);
        *a1 = 0;
        a1[1] = v14 + 1;
        a1[2] = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v9++ = *(v11 + v8);
      }

      a1[1] = v9;
      ++v8;
    }

    while (v10 != v8);
  }
}

void sub_1000C9540(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = qword_100BCEA68;
  v21 = v3;
  if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v36) = [v3 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sendProxyOOBKeys: %d keys", buf, 8u);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v6)
  {
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = qword_100BCEA68;
        if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(*(&v29 + 1) + 8 * i);
          *buf = 138412290;
          v36 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "keyType: %@", buf, 0xCu);
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v6);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v12)
  {
    v22 = *v26;
    do
    {
      v23 = v12;
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v11);
        }

        v14 = *(*(&v25 + 1) + 8 * j);
        buf[0] = 2;
        sub_1000C89B4(a2, buf);
        buf[0] = 0;
        sub_1000C89B4(a2, buf);
        v15 = [v11 objectForKeyedSubscript:v14];
        v16 = [v15 count];
        v17 = 16 * v16;
        buf[0] = 16 * v16;
        sub_1000C89B4(a2, buf);
        buf[0] = HIBYTE(v17);
        sub_1000C89B4(a2, buf);

        memset(v24, 0, sizeof(v24));
        v18 = [v11 objectForKeyedSubscript:v14];
        if ([v18 countByEnumeratingWithState:v24 objects:v33 count:16])
        {
          v19 = [**(&v24[0] + 1) irkData];
          v20 = v19;
          [v19 bytes];

          operator new();
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v12);
  }
}

uint64_t sub_1000C9980(void *a1, uint64_t a2)
{
  if (xpc_get_type(a1) == &_xpc_type_data)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(a1);
    length = xpc_data_get_length(a1);
    sub_10000C704(&v7, bytes_ptr, length);
    sub_10000AE20(a2, &v7);
    v7 = &off_100AE0A78;
    if (v8)
    {
      sub_10000C808(v8);
    }

    return 0;
  }

  if (xpc_get_type(a1) == &_xpc_type_null)
  {
    return 0;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100820A88(a1);
  }

  return 3;
}

void sub_1000C9A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    sub_10000C808(a10);
  }

  _Unwind_Resume(exception_object);
}

id sub_1000C9AAC(void *a1, const char *a2)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (value)
  {
    v3 = value;
    if (xpc_get_type(value) == &_xpc_type_int64)
    {
      value = [NSNumber numberWithLongLong:xpc_int64_get_value(v3)];
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100820C60();
      }

      value = 0;
    }
  }

  return value;
}

uint64_t sub_1000C9B4C()
{
  if (qword_100B6F048 != -1)
  {
    sub_100843EF4();
  }

  return qword_100B6F040;
}

void *sub_1000C9B84(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 364);
  if (v2 < a2)
  {
    v6 = sub_10000E92C();
    sub_100693F88(v6, 1);
    _os_log_pack_size();
    __chkstk_darwin();
    __error();
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "fWriteBufferUsed >= length";
    os_log_create("com.apple.bluetooth", "CBCrash");
    qword_100B55118 = os_log_pack_send_and_compose();
    abort_with_payload();
  }

  v3 = a2;
  result = memmove(*(a1 + 352), (*(a1 + 352) + a2), v2 - a2);
  *(a1 + 364) -= v3;
  return result;
}

void sub_1000C9CD8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = v2 + 72;
    do
    {
      if (*(v3 + 28) >= v4)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 28) < v4));
    }

    while (v3);
    if (v5 != v2 + 72 && v4 >= *(v5 + 28))
    {
      v6 = *(v2 + 24);
      if (!v6)
      {
        goto LABEL_24;
      }

      v7 = *(v5 + 32);
      v8 = v2 + 24;
      do
      {
        v9 = *(v6 + 32);
        v10 = v9 >= v7;
        v11 = v9 < v7;
        if (v10)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * v11);
      }

      while (v6);
      if (v8 != v2 + 24 && v7 >= *(v8 + 32))
      {
        v12 = *(v8 + 40);

        sub_1000CA7EC(v2, v7, v12);
      }

      else
      {
LABEL_24:
        if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_FAULT))
        {
          sub_10081F4B4();
        }
      }
    }
  }
}

uint64_t sub_1000C9DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  bzero(v77, 0xA0AuLL);
  v5 = *(a3 + 224);
  v55 = 0;
  v46 = a2;
  if (!v5)
  {
    while (1)
    {
      *buf = v77;
      LODWORD(v71) = 2570;
      v25 = *(a3 + 372);
      if (v25 == 2)
      {
        break;
      }

      if (v25 == 1)
      {
        if (*(a3 + 376) >= 0xA0Au)
        {
          v28 = 2570;
        }

        else
        {
          v28 = *(a3 + 376);
        }

        LODWORD(v71) = v28;
        v29 = qword_100BCE958;
        if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *(a3 + 364);
          LODWORD(v73) = 67109376;
          DWORD1(v73) = v28;
          WORD4(v73) = 1024;
          *(&v73 + 10) = v30;
          v31 = v29;
          v32 = "MAX buffer size for the L2CAP Channel is %d getWriteBufferUsed=%d";
          goto LABEL_73;
        }

        goto LABEL_74;
      }

      if (v25)
      {
        v11 = 0;
        v26 = 0;
      }

      else
      {
        v53 = 0;
        sub_1000216B4(&v53);
        v26 = sub_1002327CC(*(a3 + 112), buf, &v71);
        sub_100022214(&v53);
        v11 = v26 == 0;
        if (v26)
        {
          v27 = qword_100BCE958;
          if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v73) = 67109632;
            DWORD1(v73) = a2;
            WORD4(v73) = 1024;
            *(&v73 + 10) = v26;
            HIWORD(v73) = 1024;
            LODWORD(v74) = v71;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to get a buffer from the stack for pipe 0x%04x with result %{bluetooth:OI_STATUS}u, default size %d", &v73, 0x14u);
          }
        }

        sub_10002249C(&v53);
      }

LABEL_76:
      v36 = read(*(a3 + 200), *buf, v71);
      v37 = v36;
      if (v36 < 1)
      {
        if (v36)
        {
          if (*__error() == 35)
          {
            if (v11)
            {
              LOBYTE(v73) = 0;
              sub_1000216B4(&v73);
              sub_10023281C(*buf);
              sub_100022214(&v73);
              sub_10002249C(&v73);
            }

            return 1;
          }

          if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
          {
            sub_100820238();
          }
        }

        else if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
        {
          sub_1008202C8();
        }

        if (!v11)
        {
          return v11;
        }

        LOBYTE(v73) = 0;
        sub_1000216B4(&v73);
        sub_10023281C(*buf);
        sub_100022214(&v73);
        v41 = &v73;
LABEL_92:
        sub_10002249C(v41);
        return 0;
      }

      if (*(a1 + 139) == 1)
      {
        sub_1000CAA0C(a2);
        sub_100374308();
      }

      v53 = 0;
      sub_1000216B4(&v53);
      v38 = *(a3 + 372);
      if (v38 == 2)
      {
        v39 = sub_1002EF8A4(sub_10037465C, a2, *buf, v37);
      }

      else if (v38 == 1)
      {
        v39 = sub_10028E1F0(sub_10037465C, a2, 0, *buf, v37);
      }

      else
      {
        if (v38)
        {
          goto LABEL_86;
        }

        v39 = sub_1000B7BFC(sub_10037465C, *(a3 + 112), a2, *buf, v37, v11);
      }

      v26 = v39;
LABEL_86:
      sub_100022214(&v53);
      if (v26 != 412)
      {
        if (v26)
        {
          v40 = qword_100BCE958;
          if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v73) = 67109376;
            DWORD1(v73) = a2;
            WORD4(v73) = 1024;
            *(&v73 + 10) = v26;
            _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Failed to transmit data from socket on pipe 0x%04x with result %{bluetooth:OI_STATUS}u", &v73, 0xEu);
          }
        }

        v41 = &v53;
        goto LABEL_92;
      }

      sub_10002249C(&v53);
    }

    if (*(a3 + 376) >= 0xA0Au)
    {
      v33 = 2570;
    }

    else
    {
      v33 = *(a3 + 376);
    }

    LODWORD(v71) = v33;
    v34 = qword_100BCE958;
    if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(a3 + 364);
      LODWORD(v73) = 67109376;
      DWORD1(v73) = v33;
      WORD4(v73) = 1024;
      *(&v73 + 10) = v35;
      v31 = v34;
      v32 = "MAX buffer size for the RFCOMM Channel is %d getWriteBufferUsed=%d";
LABEL_73:
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v32, &v73, 0xEu);
    }

LABEL_74:
    v11 = 0;
    v26 = 0;
    a2 = v46;
    goto LABEL_76;
  }

  if (!*(a3 + 240) && os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_FAULT))
  {
    sub_100820128();
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  next_slot = os_channel_get_next_slot();
  v45 = 0;
  v44 = 0;
  v7 = 0;
  v71 = 0;
  v72 = 0;
  while (1)
  {
    if (*(a3 + 372) && os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_FAULT))
    {
      sub_1008201A8(&v53, v54);
    }

    if (next_slot)
    {
      v8 = *(a3 + 364);
      if (*(a3 + 360) - v8 >= WORD1(v73))
      {
        v9 = 0;
        while (1)
        {
          v19 = next_slot;
          if (v8 && *(a3 + 368) == 3)
          {
            goto LABEL_12;
          }

          os_channel_slot_get_packet();
          if (!os_packet_get_next_buflet() && os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_FAULT))
          {
            sub_1008201D4(&v51, v52);
          }

          data_offset = os_buflet_get_data_offset();
          object_address = os_buflet_get_object_address();
          data_length = os_buflet_get_data_length();
          os_packet_get_flow_uuid();
          v23 = WORD1(v73);
          if (*(a3 + 368) == 3 && WORD1(v73) >= 0x2A4u && (v24 = qword_100BCE958, os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_FAULT)))
          {
            *buf = 67109120;
            *&buf[4] = v23;
            _os_log_fault_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "Payload length %d exceeds supported MTU for isoch channel", buf, 8u);
            v23 = WORD1(v73);
            if (data_length)
            {
              goto LABEL_43;
            }
          }

          else if (data_length)
          {
            goto LABEL_43;
          }

          if (v23)
          {
            sub_1000CA8B0(a3, v74, v23);
            goto LABEL_47;
          }

LABEL_43:
          if (data_length)
          {
            sub_1000CA8B0(a3, (object_address + data_offset), data_length);
          }

          else if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
          {
            sub_100820200(&v49, v50);
          }

LABEL_47:
          if (!v9)
          {
            v9 = v72;
          }

          next_slot = os_channel_get_next_slot();
          if (!next_slot)
          {
            v7 = v19;
            goto LABEL_12;
          }

          v8 = *(a3 + 364);
          v7 = v19;
          if (*(a3 + 360) - v8 < WORD1(v73))
          {
            goto LABEL_12;
          }
        }
      }
    }

    v9 = 0;
LABEL_12:
    v10 = *(a3 + 364);
    v11 = v10 == 0;
    if (!v10)
    {
      goto LABEL_96;
    }

    v48 = 0;
    sub_1000216B4(&v48);
    v12 = sub_1000B77E0(*(a3 + 112), &v55);
    if (v12 && v12 != 5007)
    {
      v55 = 1015;
    }

    v13 = *(a3 + 364);
    if (v55 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v55;
    }

    if ((*(a3 + 378) & 1) == 0)
    {
      v45 = sub_1000CAA0C(a2);
    }

    if (*(a1 + 139) == 1)
    {
      sub_100374308();
    }

    v15 = sub_1000B7BFC(sub_10037465C, *(a3 + 112), a2, *(a3 + 352), v14, 0);
    if ((*(a3 + 378) & 1) == 0)
    {
      v44 = sub_1000CAA0C(a2);
    }

    sub_100022214(&v48);
    if (*(a1 + 138) == 1)
    {
      v16 = v72;
      v17 = qword_100BCE990;
      if (os_log_type_enabled(qword_100BCE990, OS_LOG_TYPE_DEFAULT))
      {
        v18 = byte_100BCE998++;
        *buf = 67110912;
        *&buf[4] = 20;
        v57 = 1024;
        v58 = 60;
        v59 = 1024;
        v60 = v9;
        v61 = 1024;
        v62 = v16;
        v63 = 1024;
        v64 = v14;
        v65 = 1024;
        v66 = v45;
        v67 = 1024;
        v68 = (v44 - 1);
        v69 = 1024;
        v70 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "28 {curProtocol: %hhu, prevProtocol: %hhu, prevSeqnStart: %hu, prevSeqnEnd: %hu, prevLen: %hu, curSeqNStart: %hu, curSeqnEnd:%hu, logSeqn: %hhu}", buf, 0x32u);
      }
    }

    ++*(a3 + 268);
    if (v15 != 412)
    {
      break;
    }

    sub_1000C9B84(a3, v14);
    a2 = v46;
    sub_10002249C(&v48);
  }

  if (v15)
  {
    v42 = qword_100BCE958;
    if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *&buf[4] = v46;
      v57 = 1024;
      v58 = v15;
      _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Failed to transmit data from socket on pipe 0x%04x with result %{bluetooth:OI_STATUS}u", buf, 0xEu);
    }
  }

  else
  {
    sub_1000C9B84(a3, v14);
  }

  sub_10002249C(&v48);
LABEL_96:
  if (v7)
  {
    os_channel_advance_slot();
  }

  if (*(a3 + 368) == 3 || *(a3 + 268) >= *(a3 + 260) || os_channel_available_slot_count() <= 1)
  {
    *(a3 + 268) = 0;
    os_channel_sync();
  }

  return v11;
}

void sub_1000CA7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if ((sub_1000C9DC8(a1, a2, a3) & 1) == 0)
  {
    v5 = qword_100BCE958;
    if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_INFO))
    {
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Stack is now full on pipe 0x%04x - stopping read source", v6, 8u);
    }

    sub_100374D90(a3, 1);
  }
}

void *sub_1000CA8B0(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 364);
  if (v3 + a3 > *(a1 + 360))
  {
    v7 = sub_10000E92C();
    sub_100693F88(v7, 1);
    _os_log_pack_size();
    __chkstk_darwin();
    __error();
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "fWriteBufferUsed + length <= fWriteBufferSize";
    os_log_create("com.apple.bluetooth", "CBCrash");
    qword_100B55118 = os_log_pack_send_and_compose();
    abort_with_payload();
  }

  v4 = a3;
  result = memcpy((*(a1 + 352) + v3), a2, a3);
  *(a1 + 364) += v4;
  return result;
}

uint64_t sub_1000CAA0C(unsigned int a1)
{
  v2 = 0;
  if (sub_1000ABC7C(a1, &v2))
  {
    return 0;
  }

  else
  {
    return sub_1000CAA48(v2);
  }
}

void sub_1000CAA68()
{
  if (dword_100BC9C74)
  {
    for (i = 0; i < dword_100BC9C74; ++i)
    {
      v1 = &qword_100BC9CB0[134 * i];
      if (*(v1 + 18))
      {
        v2 = *(v1 + 12);
        if (v2 == 11)
        {
          v3 = sub_1000B78F0(&qword_100BC9CB0[134 * i]);
          if (sub_1000B8B5C(v3) || sub_1000C0E08(v3) || sub_1000ABD24(v3) || sub_1000B7994(v3))
          {
            if (!sub_1000CBF58(v3))
            {
              if (sub_1000B6E74(*v1))
              {
                sub_1000CB3A0(*v1, *(v1 + 28));
              }

              else
              {
                if (sub_1000B7994(v3) && byte_100BC9C70)
                {
                  v4 = 0;
                  v5 = 1;
                  while (*(v3 + 14) != *(qword_100BC9C68 + v4))
                  {
                    if (sub_1000B7994(v3))
                    {
                      v4 += 64;
                      if (v5++ < byte_100BC9C70)
                      {
                        continue;
                      }
                    }

                    goto LABEL_46;
                  }

                  v23 = *(qword_100BC9C68 + v4 + 48);
                  if (v23)
                  {
                    v23(*v3);
                  }
                }

LABEL_46:
                sub_10023229C(*v1, 0, v3);
              }
            }

            continue;
          }

          if (off_100BC9CA0)
          {
            off_100BC9CA0(v3, 81, 779, 408);
          }

          *(v1 + 12) = 6;
          sub_1000D660C();
          v2 = *(v1 + 12);
        }

        if (v2 == 6)
        {
          if (*(v1 + 10) && (v7 = *(v1 + 18), v7))
          {
            v8 = 0;
            v9 = (v1[8] + 1);
            while (1)
            {
              v10 = *v9;
              v9 += 64;
              if (v10 == *(v1 + 76))
              {
                break;
              }

              if (v7 == ++v8)
              {
                goto LABEL_29;
              }
            }
          }

          else
          {
LABEL_29:
            LODWORD(v8) = 0;
          }

          v11 = *(v1 + 29);
          v12 = *(v1[8] + (v11 << 6) + 1);
          if (*(v1 + 20) == v12)
          {
            if (!sub_1000B6E74(*v1))
            {
              continue;
            }
          }

          else
          {
            *(v1 + 20) = v12;
          }

          if (sub_1000B6E74(*v1))
          {
            v13 = v1[8];
            v14 = *(v13 + (v11 << 6) + 1);
            v15 = *(v1 + 21);
            if (v15 != v14)
            {
              v16 = *(v1 + 18);
              if (v16)
              {
                v17 = 0;
                v18 = 0;
                v19 = 0;
                v20 = (v13 + 1);
                do
                {
                  v22 = *v20;
                  v20 += 64;
                  v21 = v22;
                  if (v22 == v14)
                  {
                    v19 = v17;
                  }

                  if (v15 == v21)
                  {
                    v18 = v17;
                  }

                  ++v17;
                }

                while (v16 != v17);
              }

              else
              {
                v19 = 0;
                v18 = 0;
              }

              if (v19 <= v18)
              {
                v24 = v18;
              }

              else
              {
                v24 = v19;
              }

              if (v24 > v11)
              {
                LODWORD(v11) = v24;
              }
            }
          }

          if (v8 != v11)
          {
            v35 = v1[8];
            if (*(v35 + (v8 << 6) + 1) == 1)
            {
              if (sub_10000C240())
              {
                v11 = v11;
                v36 = sub_1000B74A0(*(v1[8] + (v11 << 6) + 1));
                sub_10000AF54("Upgrade requested to tech %s", v37, v38, v39, v40, v41, v42, v43, v36);
                v44 = sub_10000C050(0x57u);
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_70;
                }
              }

              else
              {
                v11 = v11;
              }

LABEL_72:
              sub_10022FE34(*v1, *(v1[8] + (v11 << 6) + 1), *(v1 + 28));
              continue;
            }

            v45 = *(v35 + (v11 << 6) + 1);
            v46 = sub_10000C240();
            if (v45 != 1)
            {
              if (v46)
              {
                v57 = sub_1000B74A0(*(v1[8] + (v11 << 6) + 1));
                sub_10000AF54("Downgrade to upgrade requested to tech %s", v58, v59, v60, v61, v62, v63, v64, v57);
                v65 = sub_10000C050(0x57u);
                if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                {
                  v66 = sub_10000C0FC();
                  *buf = 136446210;
                  v68 = v66;
                  _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
                }
              }

              sub_1002307C0(*v1, *(v1[8] + (v11 << 6) + 1), *(v1 + 28));
              continue;
            }

            if (v46)
            {
              v47 = sub_1000B74A0(*(v1[8] + (v11 << 6) + 1));
              sub_10000AF54("Downgrade requested to tech %s", v48, v49, v50, v51, v52, v53, v54, v47);
              v34 = sub_10000C050(0x57u);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
LABEL_66:
                v55 = sub_10000C0FC();
                *buf = 136446210;
                v68 = v55;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

LABEL_67:
            sub_1000CB010(*v1, *(v1 + 28));
            continue;
          }

          if (!sub_1000B6E74(*v1))
          {
            v11 = v8;
            v25 = *(v1[8] + (v8 << 6) + 1);
            v26 = sub_10000C240();
            if (v25 != 1)
            {
              if (v26)
              {
                sub_10000AF54("Peripheral %i send central wish upgrade", v27, v28, v29, v30, v31, v32, v33, i);
                v44 = sub_10000C050(0x57u);
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                {
LABEL_70:
                  v56 = sub_10000C0FC();
                  *buf = 136446210;
                  v68 = v56;
                  _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
                }
              }

              goto LABEL_72;
            }

            if (v26)
            {
              sub_10000AF54("Peripheral %i send central wish downgrade", v27, v28, v29, v30, v31, v32, v33, i);
              v34 = sub_10000C050(0x57u);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_66;
              }
            }

            goto LABEL_67;
          }
        }
      }
    }
  }
}

uint64_t sub_1000CB010(unsigned __int16 *a1, int a2)
{
  if (sub_1000CC63C(a1))
  {
    if (sub_1000B6E74(a1))
    {

      return sub_1000CB3A0(a1, a2);
    }

    v13 = dword_100BC9C74;
    if (dword_100BC9C74)
    {
      v14 = &word_100BC9CB8;
      v15 = dword_100BC9C74;
      while (*(v14 - 1) != a1)
      {
        v14 += 536;
        if (!--v15)
        {
          v16 = 0xFFFFLL;
          goto LABEL_17;
        }
      }

      v16 = *v14;
LABEL_17:
      v39 = 34;
      v17 = &dword_100BC9CE0;
      while (*(v17 - 20) != v16)
      {
        v17 += 268;
        if (!--v13)
        {
          goto LABEL_28;
        }
      }

      if (*v17 == 6)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Sending DOWNGRADE_REQ to lmhandle 0x%4x", v18, v19, v20, v21, v22, v23, v24, *a1);
          v25 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            *&buf[4] = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        result = sub_1000B7BFC(0, a1, v16, &v39, 2, 0);
        if (result == 412 || !result)
        {
          v41 = 0u;
          v42 = 0u;
          LOBYTE(v41) = 1;
          WORD1(v41) = 4;
          DWORD2(v41) = 11;
          LOBYTE(v42) = 1;
          WORD1(v42) = 4;
          DWORD2(v42) = a2;
          memcpy(buf, "state", sizeof(buf));
          sub_1000CC0B0("Magnet Operation", buf, &v41, 2u);
          return 0;
        }

        return result;
      }
    }

    else
    {
      LODWORD(v16) = 0xFFFF;
    }

LABEL_28:
    if (sub_10000C240())
    {
      v26 = dword_100BC9C74;
      if (dword_100BC9C74)
      {
        v27 = &dword_100BC9CE0;
        while (*(v27 - 20) != v16)
        {
          v27 += 268;
          if (!--v26)
          {
            goto LABEL_33;
          }
        }

        v28 = *v27;
      }

      else
      {
LABEL_33:
        v28 = 0;
      }

      v29 = sub_1000CC6B0(v28);
      sub_10000AF54("Message should only be send when in ##state state. Current state is %s", v30, v31, v32, v33, v34, v35, v36, v29);
      v37 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 408;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Link is not encrypted, can't send upgrade", v5, v6, v7, v8, v9, v10, v11, v38);
      v12 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4802;
  }
}

uint64_t sub_1000CB318(uint64_t a1)
{
  if (sub_1000ABD24(a1))
  {
    return *(a1 + 168) == 1;
  }

  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("Invalid LE connection handle 0x%x", v3, v4, v5, v6, v7, v8, v9, a1);
    v10 = sub_10000C050(0x43u);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10080F7A0();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000CB3A0(unsigned __int16 *a1, int a2)
{
  v60 = 32;
  v2 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v5 = &word_100BC9CB8;
    v6 = dword_100BC9C74;
    while (*(v5 - 1) != a1)
    {
      v5 += 536;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    if (!*(v5 + 2))
    {
      if (!sub_10000C240())
      {
        return 408;
      }

      sub_10000AF54("No alternate handle to downgrade from.", v21, v22, v23, v24, v25, v26, v27, v59);
      v28 = sub_10000C050(0x56u);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        return 408;
      }

      goto LABEL_50;
    }

    v17 = *v5;
    if (v17 != 0xFFFF)
    {
      v18 = *(v5 + 1);
      v19 = &dword_100BC9CE0;
      v20 = dword_100BC9C74;
      while (*(v19 - 20) != v17)
      {
        v19 += 268;
        if (!--v20)
        {
          goto LABEL_20;
        }
      }

      if (*v19 == 6)
      {
LABEL_25:
        sub_1000CB7DC(v18);
        if ((sub_1000B8B5C(v18) || sub_1000C0E08(v18) || sub_1000ABD24(v18) || sub_1000B7994(v18)) && sub_1000CBF58(v18))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Waiting for data on lmhandle 0x%4x to be flushed before sending downgrade.", v30, v31, v32, v33, v34, v35, v36, *v18);
            v37 = sub_10000C050(0x56u);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446210;
              *&buf[4] = sub_10000C0FC();
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          sub_1000CBF60(v17, 0xBu);
          sub_1002592C4(1, v18, sub_1002321C0);
          return 0;
        }

        else
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Sending DOWNGRADE to lmhandle 0x%4x", v41, v42, v43, v44, v45, v46, v47, *a1);
            v48 = sub_10000C050(0x56u);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446210;
              *&buf[4] = sub_10000C0FC();
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          v49 = sub_1000B7BFC(0, a1, v17, &v60, 2, 0);
          if (v49 == 412)
          {
            v15 = 0;
          }

          else
          {
            v15 = v49;
          }

          if (v15)
          {
            sub_1000D4200(v18);
          }

          else
          {
            sub_1000CBF60(v17, 0xCu);
            sub_1000CC6D4(v17, 0x3A98u);
          }

          v62 = 0u;
          v63 = 0u;
          LOBYTE(v62) = 1;
          WORD1(v62) = 4;
          DWORD2(v62) = 10;
          LOBYTE(v63) = 1;
          WORD1(v63) = 4;
          DWORD2(v63) = a2;
          memcpy(buf, "state", sizeof(buf));
          sub_1000CC0B0("Magnet Operation", buf, &v62, 2u);
        }

        return v15;
      }

LABEL_20:
      v29 = &dword_100BC9CE0;
      while (*(v29 - 20) != v17)
      {
        v29 += 268;
        if (!--v2)
        {
          goto LABEL_34;
        }
      }

      if (*v29 == 11)
      {
        goto LABEL_25;
      }

LABEL_34:
      if (!sub_10000C240())
      {
        return 408;
      }

      v38 = dword_100BC9C74;
      if (dword_100BC9C74)
      {
        v39 = &dword_100BC9CE0;
        while (*(v39 - 20) != v17)
        {
          v39 += 268;
          if (!--v38)
          {
            goto LABEL_39;
          }
        }

        v40 = *v39;
      }

      else
      {
LABEL_39:
        v40 = 0;
      }

      v50 = sub_1000CC6B0(v40);
      sub_10000AF54("Message should only be send when in IDLE/DOWNGRADE_STALL state. Current state is %s", v51, v52, v53, v54, v55, v56, v57, v50);
      v58 = sub_10000C050(0x56u);
      if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        return 408;
      }

LABEL_50:
      sub_1000E09C0();
      return 408;
    }
  }

LABEL_5:
  if (sub_10000C240())
  {
    sub_10000AF54("Invalid handle for downgrade", v7, v8, v9, v10, v11, v12, v13, v59);
    v14 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return 414;
}

uint64_t sub_1000CB7DC(unsigned __int16 *a1)
{
  v53 = 99;
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  if (a1)
  {
    sub_1000CBBAC(a1, v56, &v53);
  }

  if (sub_10000C240())
  {
    sub_10000AF54("stallL2CAPForHandle Number of LeOnlyPipe CID %d", v2, v3, v4, v5, v6, v7, v8, v53);
    v9 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = sub_10000C0FC();
      *buf = 136446210;
      v55 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (v53)
  {
    v11 = 0;
    v12 = 1;
    do
    {
      if (sub_10000C240())
      {
        sub_10000AF54("stallL2CAPForHandle LeOnlyPipe CID 0x%4x", v13, v14, v15, v16, v17, v18, v19, *(v56 + v11));
        v20 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = sub_10000C0FC();
          *buf = 136446210;
          v55 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v11 = v12;
      v22 = v53 > v12++;
    }

    while (v22);
  }

  if (dword_100BC9C74)
  {
    v23 = 0;
    v24 = &qword_100BC9CC0;
    while (1)
    {
      v25 = &qword_100BC9CB0[134 * v23];
      if (*v25 == a1)
      {
        break;
      }

      v26 = *(v25 + 10);
      v27 = v24;
      if (*(v25 + 10))
      {
        while (*v27 != a1)
        {
          v27 += 2;
          if (!--v26)
          {
            goto LABEL_20;
          }
        }

        v28 = *(v25 + 4);
        if (*(v25 + 4))
        {
          goto LABEL_23;
        }
      }

LABEL_20:
      ++v23;
      v24 += 134;
      if (v23 == dword_100BC9C74)
      {
        goto LABEL_21;
      }
    }

    v28 = *(v25 + 4);
  }

  else
  {
LABEL_21:
    v28 = 0;
  }

LABEL_23:
  if (sub_10000C240())
  {
    sub_10000AF54("stallL2CAPForHandle lTsPeers cid 0x%4x", v29, v30, v31, v32, v33, v34, v35, v28);
    v36 = sub_10000C050(0x56u);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = sub_10000C0FC();
      *buf = 136446210;
      v55 = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v38 = v53;
  if (v28)
  {
    if (v53)
    {
      v39 = 0;
      v40 = 1;
      while (*(v56 + v39) != v28)
      {
        v39 = v40;
        v22 = v53 > v40++;
        if (!v22)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
LABEL_31:
      *(v56 + v53) = v28;
      v53 = v38 + 1;
    }
  }

  else if (!v53)
  {
    v51 = 0;
    return sub_1000CBE7C(a1, v56, v51, 1);
  }

  v41 = 1;
  do
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Stalling lmhandle 0x%4x with an exception for cid 0x%4x", v42, v43, v44, v45, v46, v47, v48, *a1);
      v49 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = sub_10000C0FC();
        *buf = 136446210;
        v55 = v50;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v51 = v53;
    v22 = v53 > v41++;
  }

  while (v22);
  return sub_1000CBE7C(a1, v56, v51, 1);
}

uint64_t sub_1000CBBAC(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = *a3;
  *a3 = 0;
  if (sub_10000C240())
  {
    sub_10000AF54("Searching for LE Only pipes:", v6, v7, v8, v9, v10, v11, v12, v34);
    v13 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!word_100B5A19A)
  {
    return 0;
  }

  v14 = 0;
  while (1)
  {
    v15 = *(&xmmword_100B5A1A0 + v14);
    if (*v15 == a1)
    {
      break;
    }

    if (word_100B5A19A == ++v14)
    {
      return 0;
    }
  }

  if (!*(v15 + 16))
  {
    return 0;
  }

  v16 = 0;
  while (1)
  {
    v40 = 0;
    *buf = 0u;
    v39 = 0u;
    __memcpy_chk();
    v17 = word_100B5A220;
    if (word_100B5A220)
    {
      v18 = (*(v15 + 8) + 88 * v16);
      v19 = v18[8];
      v20 = &qword_100B5A228;
      while (v19 != *(v20 + 8) || memcmp(*v20, v18, v19))
      {
        v20 += 9;
        if (!--v17)
        {
          goto LABEL_16;
        }
      }

      v21 = *(v20 + 26);
    }

    else
    {
LABEL_16:
      v21 = 0;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("    peerID:%d channelID=0x%04x CID:0x%04x stayOnLe=%d name:%s priority:%d serviceID:%d peerSupportsLeOnlyPipes:%d listSize:%d(%d)", v22, v23, v24, v25, v26, v27, v28, v14);
      v29 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = sub_10000C0FC();
        *v36 = 136446210;
        v37 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, " %{public}s", v36, 0xCu);
      }
    }

    v15 = *(&xmmword_100B5A1A0 + v14);
    if (v21)
    {
      v31 = *(*(v15 + 8) + 88 * v16 + 64);
      if (v31)
      {
        if ((*(v15 + 53) & 0x10) != 0)
        {
          v32 = *a3;
          *(a2 + 2 * *a3) = *(v31 + 4);
          *a3 = v32 + 1;
          if (v32 + 1 > v5)
          {
            return 106;
          }
        }
      }
    }

    if (++v16 >= *(v15 + 16))
    {
      return 0;
    }
  }
}

uint64_t sub_1000CBE7C(uint64_t result, unsigned __int16 *a2, uint64_t a3, char a4)
{
  v7 = result;
  v13 = 0;
  v8 = qword_100B60318;
  do
  {
    if (!v8)
    {
      break;
    }

    result = *(v8 + 24);
    v9 = 0;
    if (a3)
    {
      v10 = a3;
      v11 = a2;
      do
      {
        v12 = *v11++;
        v9 |= result == v12;
        --v10;
      }

      while (v10);
    }

    if (result >= 0x40 && (v9 & 1) == 0)
    {
      result = sub_1000ABC7C(result, &v13);
      if (!result)
      {
        result = v13;
        if (*v13 == 4)
        {
          result = sub_1000B12AC(v13);
          if (*result == v7)
          {
            *(v8 + 29) = a4;
          }
        }
      }
    }

    v8 = *(v8 + 80);
  }

  while (v8 != qword_100B60318);
  if ((a4 & 1) == 0)
  {
    dword_100B6033C = 2;
  }

  return result;
}

void sub_1000CBF60(int a1, unsigned int a2)
{
  v2 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v5 = 0;
    v6 = &dword_100BC9CE0;
    do
    {
      if (*(v6 - 20) == a1)
      {
        if (sub_10000C240())
        {
          sub_1000CC6B0(*v6);
          sub_1000CC6B0(a2);
          sub_10000AF54("Peer %d state updated %s -> %s", v7, v8, v9, v10, v11, v12, v13, v5);
          v14 = sub_10000C050(0x56u);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = sub_10000C0FC();
            *buf = 136446210;
            v17 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        *v6 = a2;
        v2 = dword_100BC9C74;
      }

      ++v5;
      v6 += 268;
    }

    while (v5 < v2);
  }
}

void sub_1000CC0B0(char *cStr, const char *a2, _OWORD *a3, unsigned int a4)
{
  if (qword_100B5B520 != -1)
  {
    sub_100812AF8();
  }

  if (!off_100B5B518)
  {
    return;
  }

  v8 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  Mutable = CFDictionaryCreateMutable(0, 1, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!a4)
  {
    goto LABEL_48;
  }

  v20 = v8;
  v10 = 0;
  v11 = a4;
  do
  {
    v12 = CFStringCreateWithCString(0, a2, 0x8000100u);
    *length = *a3;
    if (LOBYTE(length[0]) <= 4u)
    {
      switch(LOBYTE(length[0]))
      {
        case 1u:
          switch(WORD1(length[0]))
          {
            case 4u:
              v16 = &length[1];
              v17 = kCFNumberIntType;
              break;
            case 2u:
              v21 = length[1];
              v16 = &v21;
              v17 = kCFNumberShortType;
              break;
            case 1u:
              LOBYTE(v21) = length[1];
              v16 = &v21;
              v17 = kCFNumberCharType;
              break;
            default:
              goto LABEL_43;
          }

          break;
        case 2u:
          switch(WORD1(length[0]))
          {
            case 4u:
              v16 = &length[1];
              v17 = kCFNumberSInt32Type;
              break;
            case 2u:
              v21 = length[1];
              v16 = &v21;
              v17 = kCFNumberSInt16Type;
              break;
            case 1u:
              LOBYTE(v21) = length[1];
              v16 = &v21;
              v17 = kCFNumberSInt8Type;
              break;
            default:
              goto LABEL_43;
          }

          break;
        case 4u:
          v15 = length[1];
LABEL_23:
          v18 = CFStringCreateWithCString(0, v15, 0x8000100u);
          goto LABEL_41;
        default:
          goto LABEL_22;
      }

      v18 = CFNumberCreate(0, v17, v16);
LABEL_41:
      v19 = v18;
      if (!v18)
      {
        goto LABEL_43;
      }

LABEL_42:
      CFDictionaryAddValue(Mutable, v12, v19);
      CFRelease(v19);
      v10 = 1;
      goto LABEL_43;
    }

    if (LOBYTE(length[0]) > 0x11u)
    {
      if (LOBYTE(length[0]) == 18)
      {
        v13 = length[1];
        goto LABEL_30;
      }

      if (LOBYTE(length[0]) == 19)
      {
        v13 = LODWORD(length[1]);
LABEL_30:
        v14 = WORD1(length[0]);
        goto LABEL_31;
      }

LABEL_22:
      v15 = "(NULL)";
      goto LABEL_23;
    }

    if (LOBYTE(length[0]) != 5)
    {
      if (LOBYTE(length[0]) == 17)
      {
        v13 = length[1];
        v14 = 6;
LABEL_31:
        v18 = CFDataCreate(0, v13, v14);
        goto LABEL_41;
      }

      goto LABEL_22;
    }

    if (LOBYTE(length[1]))
    {
      v19 = kCFBooleanTrue;
    }

    else
    {
      v19 = kCFBooleanFalse;
    }

    if (v19)
    {
      goto LABEL_42;
    }

LABEL_43:
    if (v12)
    {
      CFRelease(v12);
    }

    a2 += 256;
    ++a3;
    --v11;
  }

  while (v11);
  v8 = v20;
  if (v10)
  {
    off_100B5B518(35, v20, Mutable, 0);
  }

LABEL_48:
  if (v8)
  {
    CFRelease(v8);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1000CC39C()
{
  if (!atomic_load(dword_100B5B430))
  {
    sub_1000D660C();
  }

  if (atomic_fetch_add(dword_100B5B430, 0xFFFFFFFF) == 1)
  {
    v1 = qword_100B5B438;

    dispatch_async(v1, &stru_100AE5388);
  }
}

void sub_1000CC408(id a1)
{
  if (dword_100B5B440)
  {
    IOPMAssertionRelease(dword_100B5B440);
    dword_100B5B440 = 0;
  }
}

uint64_t sub_1000CC438@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, unsigned __int8 *a3@<X8>)
{
  v27[0] = 0;
  v27[1] = 0;
  sub_100007F88(v27, a1 + 96);
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = a2[5];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = *(a1 + 176);
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v13)
  {
    v14 = (v6 << 40) | (v7 << 32) | (v8 << 24) | (v9 << 16) | (v10 << 8) | v11;
    v15 = *v24;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        v18 = [*(a1 + 176) objectForKey:v17];
        v19 = v18[3];
        if (!v19)
        {
          v19 = v18[2];
        }

        if (v14 == v19)
        {
          sub_10004DFB4(a3, v17);

          return sub_1000088CC(v27);
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v20 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "BD Addr not in deviceMap, generating new UUID", v22, 2u);
  }

  uuid_clear(a3);
  return sub_1000088CC(v27);
}

void sub_1000CC604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CC63C(uint64_t a1)
{
  if (sub_1000ABD24(a1))
  {

    return sub_1000CB318(a1);
  }

  else
  {
    result = sub_1000B8B5C(a1);
    if (result)
    {

      return sub_1002FCEB8(a1);
    }
  }

  return result;
}

const char *sub_1000CC6B0(unsigned int a1)
{
  if (a1 > 0xC)
  {
    return "??";
  }

  else
  {
    return off_100AE7F10[a1];
  }
}

uint64_t sub_1000CC6D4(uint64_t result, unsigned int a2)
{
  v14 = result;
  v2 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    for (i = &dword_100BC9CE4; *(i - 22) != result; i += 268)
    {
      if (!--v2)
      {
        return result;
      }
    }

    v13[1] = &v14;
    v13[0] = 2;
    if (*i)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("An older timer is still active, canceling a previously started timer (%x).", v5, v6, v7, v8, v9, v10, v11, *i);
        v12 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      sub_10002242C(*i);
      *i = 0;
    }

    return sub_10002195C(sub_1002375D0, v13, (a2 / 0x64), i);
  }

  return result;
}

void sub_1000CC7D0(unsigned __int16 *a1)
{
  if (sub_1000B6E74(a1))
  {
    if (!dword_100BC9C74)
    {
      goto LABEL_49;
    }

    v2 = 0;
    while (1)
    {
      v3 = &qword_100BC9CB0[134 * v2];
      if (*v3 == a1)
      {
        break;
      }

      if (++v2 == dword_100BC9C74)
      {
        goto LABEL_49;
      }
    }

    v12 = *(v3 + 4);
    v13 = *(v3 + 10);
    v14 = *(v3 + 76);
    sub_1000CCC34(v2, 1u);
    sub_1000CCE28(v12);
    v15 = dword_100BC9C74;
    if (!dword_100BC9C74)
    {
      goto LABEL_17;
    }

    v16 = &dword_100BC9CE0;
    while (*(v16 - 20) != v12)
    {
      v16 += 268;
      if (!--v15)
      {
        goto LABEL_17;
      }
    }

    if (*v16 != 12)
    {
LABEL_17:
      if (sub_10000C240())
      {
        v17 = sub_1000CC6B0(*(v3 + 12));
        sub_10000AF54("ERROR ! Remote sent us a DOWNGRADE_CFM but we are in %s state, disconnecting.", v18, v19, v20, v21, v22, v23, v24, v17);
        v25 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      sub_1002CDF48(a1);
    }

    sub_1000CBF60(v12, 6u);
    if (v13)
    {
      v67 = v14;
      for (i = 0; i != v13; ++i)
      {
        v27 = &v3[2 * i + 2];
        sub_1000CCE84(*v27, a1);
        v28 = sub_1000B8B5C(*v27);
        v29 = *v27;
        if (v28)
        {
          if (*(v29 + 148))
          {
            sub_1000CDA00(v29, 19);
          }
        }

        else
        {
          if (*(v29 + 2) != 8)
          {
            sub_1000D660C();
          }

          v30 = byte_100BC9C70;
          if (byte_100BC9C70)
          {
            v31 = qword_100BC9C68;
            while (*(*v27 + 56) != *v31)
            {
              v31 += 64;
              if (!--v30)
              {
                goto LABEL_35;
              }
            }

            v32 = *(v31 + 6);
            if (v32)
            {
              v32(**v27);
            }
          }
        }

LABEL_35:
        ;
      }

      sub_1000D29F4(a1, 0);
      sub_1000D4200(a1);
      v14 = v67;
    }

    else
    {
      sub_1000D29F4(a1, 0);
      sub_1000D4200(a1);
      if (sub_10000C240())
      {
        sub_10000AF54("DOWNGRADE_CFM no alternate handle to downgrade from.", v33, v34, v35, v36, v37, v38, v39, v66);
        v40 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }

    sub_1000D2C0C(v2, v14, 0);
    if (*(v3 + 77) != 1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("DOWNGRADE_CFM upgrading transport since this downgrade was triggered by a upgrade to different alternate transport", v41, v42, v43, v44, v45, v46, v47, v66);
        v48 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v69 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      sub_10022FF14(a1, *(v3 + 77), *(v3 + 28));
    }

    if (v12 == 0xFFFF)
    {
LABEL_49:
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid handle for downgrade", v58, v59, v60, v61, v62, v63, v64, v66);
        v65 = sub_10000C050(0x56u);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Got a downgrade confirmation from lmhandle 0x%4x", v49, v50, v51, v52, v53, v54, v55, *a1);
      v56 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = sub_10000C0FC();
        *buf = 136446210;
        v69 = v57;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("DOWNGRADE_CFM not supposed to get a downgrade CFM from the central.", v4, v5, v6, v7, v8, v9, v10, v66);
      v11 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v69 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    sub_100236DDC(a1, 33, 2);
  }
}