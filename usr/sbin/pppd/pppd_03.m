void sub_1000274E8(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (!acsp_intercept_dhcp || (v8 = *(a2 + 16), ntohl() != -1) || (v9 = *(a2 + 20), ntohs() != 68) || (v10 = *(a2 + 22), ntohs() != 67))
  {
    if (!acsp_use_dhcp)
    {
      return;
    }

    if (*(a2 + 16) != a4)
    {
      return;
    }

    v36 = *(a2 + 20);
    if (ntohs() != 67)
    {
      return;
    }

    v37 = *(a2 + 22);
    if (ntohs() != 68)
    {
      return;
    }

    if (a3 > 0x10E)
    {
      if (!qword_10004BF70)
      {
        return;
      }

      v39 = *(a2 + 40);
      ntohl();
      if (bswap32(*(a2 + 264)) == 1669485411)
      {
        if (*(a2 + 268) == 53 && *(a2 + 269) == 1 && *(a2 + 270) == 5)
        {
          __stringp = 0;
          v40 = a3 - 271;
          if ((a3 - 271) >= 1)
          {
            v41 = *(a2 + 271);
            if (v41 != 255)
            {
              v42 = 0;
              v43 = (a2 + 271);
              do
              {
                if (v41)
                {
                  v44 = v43[1];
                  v45 = v40 - 2;
                  v28 = __OFSUB__(v45, v44);
                  v46 = v45 - v44;
                  if ((v46 < 0) ^ v28 | (v46 == 0))
                  {
LABEL_106:
                    v38 = "DHCP packet received with incorrect message option\n";
                    goto LABEL_104;
                  }

                  v47 = (v43 + 2);
                  v136 = v46;
                  switch(v41)
                  {
                    case 1:
                      v62 = *v47;
                      v63 = qword_10004BF70;
                      if (*v47)
                      {
                        v64 = *(qword_10004BF70 + 36) == a4;
                      }

                      else
                      {
                        v64 = 0;
                      }

                      if (v64 && *(qword_10004BF70 + 24) != v62)
                      {
                        *(qword_10004BF70 + 24) = v62;
                        if (!uifaddr(a1, a4, *(v63 + 40), v62))
                        {
                          v79 = v43[2];
                          v135 = v43[3];
                          v134 = v43[4];
                          v80 = v43[5];
                          v81 = qword_10004BF70;
                          v82 = *(qword_10004BF70 + 36);
                          ntohl();
                          v83 = *(v81 + 40);
                          ntohl();
                          notice("failed to configure dhcp option 'subnet mask' = %d.%d.%d.%d, our %x, his %x\n", v84, v85, v86, v87, v88, v89, v90, v79);
                        }
                      }

                      else
                      {
                        v65 = *v47;
                        ntohl();
                        v66 = *(v63 + 24);
                        ntohl();
                        info("ignoring dhcp option 'subnet mask' = %d.%d.%d.%d, current addr %x, current mask %x\n", v67, v68, v69, v70, v71, v72, v73, v65);
                      }

                      break;
                    case 15:
                      if (v42)
                      {
                        notice("ignoring dhcp option 'domain name', option already processed.\n", v11, v12, v13, v14, v15, v16, v17, v133);
                        break;
                      }

                      __memcpy_chk();
                      __s[v44] = 0;
                      __stringp = __s;
                      v74 = ",";
                      if (!strchr(__s, 44))
                      {
                        v74 = ";";
                        if (!strchr(__s, 59))
                        {
                          v74 = "\n";
                          if (!strchr(__s, 10))
                          {
                            v74 = "\r";
                            if (!strchr(__s, 13))
                            {
                              if (strchr(__s, 32))
                              {
                                v74 = " ";
                              }

                              else
                              {
                                v74 = &unk_10002EF18;
                              }
                            }
                          }
                        }
                      }

                      v75 = strsep(&__stringp, v74);
                      v76 = 0;
                      while (1)
                      {
                        if (v75 && !*v75)
                        {
                          v42 = v76;
                        }

                        else
                        {
                          v77 = malloc_type_malloc(0x18uLL, 0x1030040A9CFD972uLL);
                          if (!v77)
                          {
                            error("failed to allocate domain from DHCP packet\n", v11, v12, v13, v14, v15, v16, v17, v133);
                            v42 = v76;
                            goto LABEL_91;
                          }

                          v42 = v77;
                          v77[1] = 0;
                          v77[2] = 0;
                          *v77 = v76;
                          if (!v75)
                          {
                            v77[2] = __s;
                            goto LABEL_91;
                          }

                          v77[2] = v75;
                          v76 = v77;
                        }

                        v75 = strsep(&__stringp, v74);
                        if (!v75)
                        {
                          goto LABEL_91;
                        }
                      }

                    case 249:
                      if (v43[1])
                      {
                        v48 = 0;
                        do
                        {
                          v49 = malloc_type_malloc(0x20uLL, 0x1020040983EA955uLL);
                          if (!v49)
                          {
                            error("DHCP: no memory\n", v50, v51, v52, v53, v54, v55, v56, v133);
                            return;
                          }

                          v57 = v49;
                          *v49 = 0u;
                          v49[1] = 0u;
                          v58 = *(v47 + v48);
                          v59 = htonl();
                          *(v57 + 3) = v59;
                          LODWORD(v60) = v58 >> 3;
                          if ((v58 & 7) != 0)
                          {
                            v60 = (v60 + 1);
                          }

                          else
                          {
                            v60 = v60;
                          }

                          *(v57 + 2) = *(v47 + v48 + 1) & v59;
                          *(v57 + 4) = *(v47 + v60 + v48 + 1);
                          *(v57 + 10) = 1;
                          *(v57 + 6) = 0;
                          v61 = qword_10004BF70;
                          *v57 = *(qword_10004BF70 + 8);
                          *(v61 + 8) = v57;
                          v48 += v60 + 5;
                        }

                        while (v48 < v44);
                      }

                      else
                      {
                        v57 = *(qword_10004BF70 + 8);
                      }

                      sub_100029A40(v57);
                      break;
                  }

LABEL_91:
                  v43 = v47 + v44;
                  v40 = v136;
                }

                else
                {
                  ++v43;
                  --v40;
                }

                v41 = *v43;
              }

              while (v41 != 255 && v40 > 0);
              if (v42)
              {
                sub_100029C18(v42);
                do
                {
                  v124 = *v42;
                  free(v42);
                  v42 = v124;
                }

                while (v124);
              }
            }
          }

          untimeout(sub_100029F94, qword_10004BF70);
          *qword_10004BF70 = 5;
          notify(acspdhcpready_notifier, 0);
          return;
        }

LABEL_103:
        v38 = "DHCP packet received with incorrect message type\n";
        goto LABEL_104;
      }

LABEL_102:
      v38 = "DHCP packet received with incorrect cookie\n";
      goto LABEL_104;
    }

LABEL_41:
    v38 = "DHCP packet received with incorrect length\n";
    goto LABEL_104;
  }

  if (a3 <= 0x10E)
  {
    goto LABEL_41;
  }

  if (bswap32(*(a2 + 264)) != 1669485411)
  {
    goto LABEL_102;
  }

  if (*(a2 + 268) != 53 || *(a2 + 269) != 1 || *(a2 + 270) != 8)
  {
    goto LABEL_103;
  }

  v18 = 0;
  v19 = *(a2 + 40);
  WORD2(__stringp) = 0;
  LODWORD(__stringp) = 0;
  *__s = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v20 = a3 - 271;
  v152 = 0;
  if ((a3 - 271) < 1)
  {
    v22 = 0;
  }

  else
  {
    v21 = *(a2 + 271);
    v22 = 0;
    if (v21 != 255)
    {
      v23 = 0;
      v24 = 0;
      v25 = (a2 + 271);
      do
      {
        if (v21)
        {
          v26 = v25[1];
          v27 = v20 - 2;
          v28 = __OFSUB__(v27, v26);
          v20 = v27 - v26;
          if ((v20 < 0) ^ v28 | (v20 == 0))
          {
            goto LABEL_106;
          }

          v29 = v25 + 2;
          if (v21 == 55 && v26)
          {
            v30 = v29;
            v31 = v26;
            do
            {
              v11 = qword_10004BF60 != 0;
              v33 = *v30++;
              v32 = v33;
              v13 = v33 == 15;
              if (qword_10004BF58)
              {
                v34 = v32 == 249;
              }

              else
              {
                v34 = 0;
              }

              if (v34)
              {
                v12 = 1;
              }

              else
              {
                v12 = v23;
              }

              if (v13 && v11)
              {
                v24 = 1;
              }

              else
              {
                v23 = v12;
              }

              --v31;
            }

            while (v31);
          }

          v25 = &v29[v26];
        }

        else
        {
          ++v25;
          --v20;
        }

        v21 = *v25;
      }

      while (v21 != 255 && v20 > 0);
      v18 = v24 != 0;
      v22 = v23 != 0;
    }
  }

  if (!v18 && !v22)
  {
    return;
  }

  outpacket_buf = 553649151;
  qword_100048134 = 0;
  v91 = *(a2 + 30);
  v92 = *(a2 + 34);
  v93 = *(a2 + 214);
  v94 = *(a2 + 246);
  v150 = *(a2 + 230);
  v151 = v94;
  v95 = *(a2 + 150);
  v96 = *(a2 + 182);
  v146 = *(a2 + 166);
  v147 = v96;
  v148 = *(a2 + 198);
  v149 = v93;
  v97 = *(a2 + 86);
  v98 = *(a2 + 118);
  v142 = *(a2 + 102);
  v143 = v98;
  v144 = *(a2 + 134);
  v145 = v95;
  v99 = *(a2 + 54);
  v100 = *(a2 + 70);
  v101 = *(a2 + 262);
  *__s = *(a2 + 38);
  v139 = v99;
  v140 = v100;
  v141 = v97;
  unk_1000481F6 = v149;
  unk_100048206 = v150;
  unk_100048216 = v151;
  unk_1000481B6 = v95;
  unk_1000481C6 = v146;
  unk_1000481D6 = v147;
  unk_1000481E6 = v148;
  unk_100048176 = v97;
  unk_100048186 = v142;
  unk_100048196 = v143;
  unk_1000481A6 = v144;
  *(&dword_100048144 + 2) = *__s;
  unk_100048156 = v99;
  *&byte_100048128 = 0;
  *&word_100048120 = 0;
  dword_100048130 = 0;
  LODWORD(__stringp) = v91;
  WORD2(__stringp) = v92;
  v152 = v101;
  word_10004813C = 258;
  *&byte_10004813E = v91;
  word_100048142 = v92;
  LOWORD(dword_100048144) = 0;
  word_100048226 = v101;
  unk_100048166 = v100;
  qword_100048228 = 0x3605013563538263;
  LOBYTE(word_100048230) = 4;
  v102 = ntohl();
  *(&word_100048230 + 1) = bswap32(v102);
  if (v18)
  {
    v103 = qword_10004BF60;
    do
    {
      v104 = v103;
      v103 = *v103;
    }

    while (v103);
    LOBYTE(word_100048235) = 15;
    v105 = strlen(v104[2]);
    if ((v105 << 32) + 0x11B00000000 > 0x5DF00000000)
    {
      v38 = "Domain name too large for DHCP\n";
      goto LABEL_104;
    }

    v106 = v105;
    v107 = v105 << 32;
    HIBYTE(word_100048235) = v105;
    memcpy(&qword_100048237, v104[2], v105);
    v108 = (&qword_100048237 + (v107 >> 32));
    v109 = v106 + 283;
  }

  else
  {
    v108 = &word_100048235;
    v109 = 281;
  }

  if (!v22 || (v110 = qword_10004BF58) == 0)
  {
LABEL_143:
    *v108 = -1;
    v126 = (v109 + 1);
    if (v126 <= 0)
    {
      v127 = -(-v126 & 3);
    }

    else
    {
      v127 = (v109 + 1) & 3;
    }

    if (v126 <= 0x5DF)
    {
      v28 = __OFSUB__(v127, 1);
      v128 = v127 - 1;
      if (v128 < 0 == v28)
      {
        if (v128 >= (1502 - v109))
        {
          v129 = (1502 - v109);
        }

        else
        {
          v129 = v128;
        }

        bzero(v108 + 1, v129 + 1);
        v126 = (v109 + v129 + 2);
      }
    }

    v130 = ntohl();
    sub_100029DA4(a1, v126, v102, 0x43u, v130, 68, v131, v132, v133);
    return;
  }

  v111 = 0;
  v112 = 1;
  while (1)
  {
    while ((*(v110 + 20) & 1) == 0)
    {
      v110 = *v110;
      if (!v110)
      {
        if (v112)
        {
          goto LABEL_143;
        }

LABEL_142:
        v125 = v108 - (v111 + 1);
        *v125 = v111;
        v108 = &v125[v111 + 1];
        v109 += v111 + 2;
        goto LABEL_143;
      }
    }

    if (v112)
    {
      break;
    }

LABEL_125:
    v113 = *(v110 + 12);
    v114 = ntohl();
    v115 = *(v110 + 8);
    v116 = ntohl();
    v117 = 32;
    if ((v114 & 1) == 0)
    {
      v118 = v114;
      do
      {
        if (!--v117)
        {
          break;
        }

        v119 = v118;
        v118 >>= 1;
      }

      while ((v119 & 2) == 0);
    }

    if ((v117 & 7) != 0)
    {
      v120 = (v117 >> 3) + 1;
    }

    else
    {
      v120 = v117 >> 3;
    }

    if ((v109 - 1499 + v120) < 0xFFFFFA20)
    {
      v38 = "Static routes list too large DHCP\n";
      goto LABEL_104;
    }

    v121 = v116 & v114;
    *v108 = v117;
    *(v108 + 1) = (v116 & v114) >> 24;
    *(v108 + 2) = (v116 & v114) >> 16;
    *(v108 + 3) = (v116 & v114) >> 8;
    v122 = v108 - (4 - v120);
    *(v108 + 4) = v121;
    v123 = ntohl();
    v112 = 0;
    v108 = (v122 + 9);
    *(v122 + 5) = bswap32(v123);
    v111 += v120 + 5;
    v110 = *v110;
    if (!v110)
    {
      goto LABEL_142;
    }
  }

  if ((v109 - 1502) > 0xFFFFFA1F)
  {
    *v108++ = 249;
    goto LABEL_125;
  }

  v38 = "No space for DHCP routes\n";
LABEL_104:
  warning(v38, v11, v12, v13, v14, v15, v16, v17, v133);
}

void sub_100027EEC(unsigned int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (acsp_use_dhcp && off_100046F48(a1) != 9)
  {
    v12 = malloc_type_malloc(0x30uLL, 0x1090040B760FDDAuLL);
    qword_10004BF70 = v12;
    if (v12)
    {
      v12[2] = 0u;
      *(v12 + 20) = 0u;
      *(v12 + 4) = 0u;
      *(v12 + 8) = a1;
      *(v12 + 9) = a2;
      *(v12 + 10) = a3;
      *v12 = 1;

      sub_10002A024(a1);
    }

    else
    {

      error("ACSP plugin: no memory to allocate DHCP routes context\n", v13, v14, v15, v16, v17, v18, v19, a9);
    }
  }
}

void sub_100027FD8()
{
  if (acsp_use_dhcp)
  {
    v0 = qword_10004BF70 == 0;
  }

  else
  {
    v0 = 1;
  }

  if (!v0)
  {
    sub_10002988C(*(qword_10004BF70 + 8));
    untimeout(sub_100029F94, qword_10004BF70);
    free(qword_10004BF70);
    qword_10004BF70 = 0;
  }
}

uint64_t sub_100028040(uint64_t a1, unsigned int a2, void (*a3)(uint64_t, const char *, ...), uint64_t a4)
{
  v8 = *(a1 + 20);
  if (ntohs() - 67 > 1)
  {
    return 0;
  }

  v9 = *(a1 + 22);
  if (ntohs() - 67 > 1)
  {
    return 0;
  }

  v10.s_addr = *(a1 + 12);
  v11 = inet_ntoa(v10);
  a3(a4, " <src addr %s>", v11);
  v12.s_addr = *(a1 + 16);
  v13 = inet_ntoa(v12);
  a3(a4, " <dst addr %s>", v13);
  v14 = *(a1 + 28);
  if ((v14 - 1) >= 2)
  {
    v58 = " <bootp code invalid!>";
    goto LABEL_78;
  }

  if (v14 == 1)
  {
    v15 = "Request";
  }

  else
  {
    v15 = "Reply";
  }

  a3(a4, " <BOOTP %s>", v15);
  if (debug >= 2)
  {
    a3(a4, " <htype %d>", *(a1 + 29));
    a3(a4, " <hlen %d>", *(a1 + 30));
    a3(a4, " <hops %d>", *(a1 + 31));
    a3(a4, " <xid %d>", *(a1 + 32));
    a3(a4, " <flags %d>", *(a1 + 38));
    v16.s_addr = *(a1 + 40);
    v17 = inet_ntoa(v16);
    a3(a4, " <client address %s>", v17);
    v18.s_addr = *(a1 + 44);
    v19 = inet_ntoa(v18);
    a3(a4, " <your address %s>", v19);
    v20.s_addr = *(a1 + 48);
    v21 = inet_ntoa(v20);
    a3(a4, " <server address %s>", v21);
    v22.s_addr = *(a1 + 52);
    v23 = inet_ntoa(v22);
    a3(a4, " <gateway address %s>", v23);
    snprintf(__str, 0x800uLL, "%02x", *(a1 + 56));
    for (i = 0; i != 15; ++i)
    {
      snprintf(v64, 0x10uLL, ":%02x", *(a1 + 57 + i));
      __strlcat_chk();
    }

    a3(a4, " <hardware address %s>", __str);
    a3(a4, " <server host name %s>", (a1 + 72));
    a3(a4, " <boot file name %s>", (a1 + 136));
  }

  if (bswap32(*(a1 + 264)) != 1669485411)
  {
    v58 = " <cookie invalid!>";
    goto LABEL_78;
  }

  if (debug >= 2)
  {
    a3(a4, " <cookie 0x%x>", 1669485411);
  }

  if (*(a1 + 268) != 53 || *(a1 + 269) != 1 || (v25 = *(a1 + 270), v25 != 5) && v25 != 8)
  {
    v58 = " <type invalid!>";
    goto LABEL_78;
  }

  if (v25 == 8)
  {
    v26 = "INFORM";
  }

  else
  {
    v26 = "ACK";
  }

  a3(a4, " <type %s>", v26);
  v27 = *(a1 + 271);
  if (v27 == 255 || (v28 = a2 - 271, (a2 - 271) < 1))
  {
LABEL_72:
    if (debug <= 1)
    {
      return a2;
    }

    else
    {
      return 0;
    }
  }

  v29 = (a1 + 271);
  while (!v27)
  {
    ++v29;
    --v28;
LABEL_67:
    v27 = *v29;
    if (v27 == 255 || v28 <= 0)
    {
      goto LABEL_72;
    }
  }

  v30 = v28 - 2;
  if (v28 != 2)
  {
    v31 = v29 + 2;
    v32 = v29[1];
    __str[0] = 0;
    if (v27 <= 53)
    {
      if (v27 > 14)
      {
        if (v27 == 15)
        {
          __memcpy_chk();
          __str[v32] = 0;
          v42 = a4;
          v43 = " <domain name %s>";
          goto LABEL_65;
        }

        if (v27 == 51)
        {
          v59 = bswap32(*(v29 + 2));
          v42 = a4;
          v43 = " <lease time %d sec>";
          goto LABEL_65;
        }
      }

      else
      {
        if (v27 == 1)
        {
          v47 = v29[2];
          v61 = v29[4];
          v62 = v29[5];
          v60 = v29[3];
          v42 = a4;
          v43 = " <subnet mask %d.%d.%d.%d>";
          goto LABEL_65;
        }

        if (v27 == 12)
        {
          __memcpy_chk();
          __str[v32] = 0;
          v42 = a4;
          v43 = " <host name %s>";
          goto LABEL_65;
        }
      }
    }

    else
    {
      if (v27 > 59)
      {
        if (v27 != 60)
        {
          if (v27 != 61)
          {
            if (v27 == 249)
            {
              v63 = v28 - 2;
              a3(a4, " <static routes");
              if (v32)
              {
                v33 = 0;
                do
                {
                  v34 = v31[v33];
                  v35 = -1 << -v34;
                  v36 = v34 >> 3;
                  if ((v34 & 7) != 0)
                  {
                    v37 = v36 + 1;
                  }

                  else
                  {
                    v37 = v36;
                  }

                  v38 = *&v31[v33 + 1];
                  v39 = v35 & ntohl();
                  v40 = *&v31[v37 + 1 + v33];
                  v41 = ntohl();
                  v33 += v37 + 5;
                  a3(a4, " %d.%d.%d.%d/%d.%d.%d.%d/%d.%d.%d.%d", HIBYTE(v39), BYTE2(v39), BYTE1(v39), v39, HIBYTE(v35), BYTE2(v35), BYTE1(v35), v35, HIBYTE(v41), BYTE2(v41), BYTE1(v41), v41);
                }

                while (v33 < v32);
              }

              a3(a4, ">");
              goto LABEL_63;
            }

            goto LABEL_64;
          }

          v63 = v28 - 2;
          strcpy(__str, "0x");
          if (v32)
          {
            v53 = v32;
            v54 = v29 + 2;
            do
            {
              v55 = *v54++;
              snprintf(v64, 0x10uLL, "%02x", v55);
              __strlcat_chk();
              --v53;
            }

            while (v53);
          }

          v51 = a4;
          v52 = " <client id %s>";
LABEL_62:
          a3(v51, v52);
LABEL_63:
          v30 = v63;
LABEL_66:
          v29 = &v31[v32];
          v28 = v30 - v32;
          goto LABEL_67;
        }

        __memcpy_chk();
        __str[v32] = 0;
        v42 = a4;
        v43 = " <vendor class id %s>";
LABEL_65:
        a3(v42, v43);
        goto LABEL_66;
      }

      if (v27 == 54)
      {
        v63 = v28 - 2;
        strcpy(__str, "0x");
        if (v32)
        {
          v48 = v32;
          v49 = v29 + 2;
          do
          {
            v50 = *v49++;
            snprintf(v64, 0x10uLL, "%02x", v50);
            __strlcat_chk();
            --v48;
          }

          while (v48);
        }

        v51 = a4;
        v52 = " <server id %s>";
        goto LABEL_62;
      }

      if (v27 == 55)
      {
        v63 = v28 - 2;
        v44 = v32;
        v45 = v29 + 2;
        if (v32)
        {
          do
          {
            v46 = *v45++;
            snprintf(v64, 0x10uLL, " 0x%x", v46);
            __strlcat_chk();
            --v44;
          }

          while (v44);
        }

        a3(a4, " <parameters =%s>", __str);
        goto LABEL_63;
      }
    }

LABEL_64:
    v42 = a4;
    v43 = " <option %d>";
    goto LABEL_65;
  }

  v58 = " <option %d zero len!>";
LABEL_78:
  a3(a4, v58);
  return 0;
}

void acsp_start(__int16 a1)
{
  sub_100027FD8();
  for (i = qword_10004BF50; i; i = *i)
  {
    *(i + 18) = a1;
    *(i + 20) = 1;
    *(i + 24) = 0;
    *(i + 50) = 0;
    *(i + 56) = 0;
    (*(i + 96))(*(i + 72), i + 16, i + 48);
    sub_100028A0C(i, v3, v4, v5, v6, v7, v8, v9);
  }
}

uint64_t acsp_stop()
{
  for (i = qword_10004BF50; i; i = *i)
  {
    if (*(i + 12))
    {
      untimeout(sub_1000289AC, i);
      *(i + 12) = 0;
    }

    *(i + 20) = 2;
    *(i + 24) = 0;
    *(i + 50) = 0;
    *(i + 56) = 0;
    result = (*(i + 96))(*(i + 72), i + 16, i + 48);
  }

  return result;
}

void acsp_data_input(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (a3 >= 8)
  {
    v10 = a3;
    v12 = &qword_10004BF50;
    do
    {
      v12 = *v12;
      if (!v12)
      {
        v9 = "ACSP packet received with invalid type\n";
        goto LABEL_14;
      }
    }

    while (*(v12 + 64) != *a2);
    v13 = *(a2 + 2);
    if ((ntohs() & 4) != 0 && *(v12 + 3) == 1 && a2[1] == *(v12 + 8))
    {
      untimeout(sub_1000289AC, v12);
      *(v12 + 3) = 0;
    }

    *(v12 + 10) = 3;
    v12[3] = a2;
    *(v12 + 11) = v10;
    v12[7] = 0;
    *(v12 + 50) = 0;
    (v12[12])(v12[9], v12 + 2, v12 + 6);

    sub_100028A0C(v12, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v9 = "ACSP packet received was too short\n";
LABEL_14:

    error(v9, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

uint64_t sub_1000289AC(uint64_t a1)
{
  *(a1 + 12) = 0;
  *(a1 + 20) = 4;
  *(a1 + 24) = 0;
  *(a1 + 50) = 0;
  *(a1 + 56) = 0;
  (*(a1 + 96))(*(a1 + 72), a1 + 16, a1 + 48);

  return sub_100028A0C(a1);
}

void sub_100028A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  while (1)
  {
    v9 = *(a1 + 50);
    if (v9 <= 2)
    {
      if (v9 != 1)
      {
        v10 = "ACSP plugin for option # %d attempted to invoke UI - not supported\n";
        if (v9 == 2)
        {
          goto LABEL_17;
        }

        if (!*(a1 + 50))
        {
          return;
        }

        goto LABEL_16;
      }

LABEL_10:
      v11 = *(a1 + 52);
      v12 = v11 < 8 || v11 > *(a1 + 18);
      v10 = "ACSP plugin for option # %d trying to send packet of invalid length\n";
      if (!v12)
      {
        v13 = *(a1 + 56);
        *v13 = 1023;
        v14 = htons();
        *(v13 + 2) = v14;
        if (*(a1 + 50) == 3)
        {
          if (*(a1 + 12))
          {
            untimeout(sub_1000289AC, a1);
          }

          *(a1 + 12) = 1;
          *(a1 + 8) = *(v13 + 5);
          timeout(sub_1000289AC);
        }

        output(0, *(a1 + 56), *(a1 + 52), v15, v16, v17, v18, v19, v23);
        v20 = *(a1 + 88);
        if (v20)
        {
          v21 = *(a1 + 72);

          v20(v21, a1 + 48);
        }

        return;
      }

      goto LABEL_17;
    }

    if (v9 == 3)
    {
      goto LABEL_10;
    }

    if (v9 != 4)
    {
      break;
    }

    v10 = "ACSP plugin for option # %d attempted timeout action with invalid time value\n";
    if (*(a1 + 52) == 4)
    {
      *(a1 + 12) = 2;
      v22 = **(a1 + 56);

      timeout(sub_1000289AC);
      return;
    }

LABEL_17:
    error(v10, a2, a3, a4, a5, a6, a7, a8, *(a1 + 64));
    *(a1 + 20) = 6;
    *(a1 + 24) = 0;
    *(a1 + 56) = 0;
    *(a1 + 50) = 0;
    (*(a1 + 96))(*(a1 + 72), a1 + 16, a1 + 48);
  }

  if (v9 != 5)
  {
LABEL_16:
    v10 = "ACSP plugin for option # %d trying to perform invalid action\n";
    goto LABEL_17;
  }

  if (*(a1 + 12))
  {
    untimeout(sub_1000289AC, a1);
    *(a1 + 12) = 0;
  }
}

uint64_t acsp_printpkt(unsigned __int8 *a1, int a2, void (*a3)(uint64_t, const char *, ...), uint64_t a4)
{
  result = 0;
  if (a1 && a2 >= 8)
  {
    v34 = 0;
    v8 = *(a1 + 1);
    v9 = ntohs();
    if (v9 >= 8)
    {
      v10 = v9 - 8;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(a1 + 2);
    v12 = ntohs();
    v13 = *a1;
    v14 = " START";
    v15 = a1[1];
    v16 = " END";
    if ((v12 & 2) == 0)
    {
      v14 = &unk_10002F9F2;
    }

    if ((v12 & 1) == 0)
    {
      v16 = &unk_10002F9F2;
    }

    v17 = " REQUIRE-ACK";
    if ((v12 & 8) == 0)
    {
      v17 = &unk_10002F9F2;
    }

    v18 = " ACK";
    if ((v12 & 4) == 0)
    {
      v18 = &unk_10002F9F2;
    }

    v33 = a1;
    if (v13 == 2)
    {
      v19 = a1 + 8;
      a3(a4, " <payload len %d, packet seq %d, %s, flags:%s%s%s%s>", v10, v15, "CI_DOMAINS", v14, v16, v17, v18);
      if (v10 >= 8)
      {
        do
        {
          v26 = *v19;
          v34 = *v19;
          v27 = ntohs();
          v28 = v27;
          if (v27 >= 0x100)
          {
            v29 = 256;
          }

          else
          {
            v29 = v27;
          }

          if (v27)
          {
            __memcpy_chk();
          }

          v35[v29] = 0;
          if (v26)
          {
            addr2ascii(2, &v34, 4, v36);
            v30 = a4;
            v31 = "\n    <domain: name %s, server %s>";
          }

          else
          {
            v30 = a4;
            v31 = "\n    <domain: name %s>";
          }

          a3(v30, v31);
          v32 = v28 + 6;
          v10 -= v32;
          v19 += v32;
        }

        while (v10 > 7);
      }
    }

    else if (v13 == 1)
    {
      v19 = a1 + 8;
      a3(a4, " <payload len %d, packet seq %d, %s, flags:%s%s%s%s>", v10, v15, "CI_ROUTES", v14, v16, v17, v18);
      if (v10 >= 0xC)
      {
        do
        {
          v20 = *(v19 + 4);
          v21 = ntohs();
          v22 = addr2ascii(2, v19, 4, v36);
          v23 = addr2ascii(2, v19 + 4, 4, v35);
          if (v21)
          {
            v24 = " PRIVATE";
          }

          else
          {
            v24 = &unk_10002F9F2;
          }

          if ((v21 & 2) != 0)
          {
            v25 = " PUBLIC";
          }

          else
          {
            v25 = &unk_10002F9F2;
          }

          a3(a4, "\n    <route: address %s, mask %s, flags:%s%s>", v22, v23, v24, v25);
          v10 -= 12;
          v19 += 12;
        }

        while (v10 > 0xB);
      }
    }

    else
    {
      a3(a4, " <payload len %d, packet seq %d, CI_TYPE %d, flags:%s%s%s%s>", v10, v15, v13, v14, v16, v17, v18);
      LODWORD(v19) = a1 + 8;
    }

    return (v19 - v33);
  }

  return result;
}

uint64_t sub_100028F04(void *a1, char a2)
{
  v4 = malloc_type_malloc(0x40uLL, 0x109004061D8AE16uLL);
  if (v4)
  {
    v12 = v4;
    v13 = malloc_type_malloc(0x5DCuLL, 0xDA9BF509uLL);
    v12[4] = v13;
    if (v13)
    {
      result = 0;
      *(v12 + 10) = 1500;
      *v12 = a2;
      *(v12 + 4) = &_mh_execute_header;
      v12[2] = 0;
      *(v12 + 12) = 0;
      v12[6] = 0;
      *(v12 + 14) = 0;
      a1[9] = v12;
      a1[10] = sub_100029084;
      a1[11] = 0;
      a1[12] = sub_100029088;
      a1[13] = 0;
      a1[14] = nullsub_1;
      return result;
    }

    error("ACSP plugin: no memory\n", v14, v15, v16, v17, v18, v19, v20, v22);
    free(v12);
  }

  else
  {
    error("ACSP plugin: no memory\n", v5, v6, v7, v8, v9, v10, v11, v22);
  }

  return 0xFFFFFFFFLL;
}

uint64_t **sub_100028FF0(uint64_t a1)
{
  *(a1 + 16) = 1;
  if (*(a1 + 4) == 1 && *(a1 + 8) == 5 && !*(a1 + 56))
  {
    return sub_1000297C4(a1);
  }

  else
  {
    return notify(acspdhcpready_notifier, 0);
  }
}

void sub_100029030(uint64_t a1)
{
  *(a1 + 16) = 0;
  if (*(a1 + 4) == 1 && *(a1 + 56))
  {
    if (*a1 == 1)
    {
      sub_10002988C(*(a1 + 48));
    }

    *(a1 + 56) = 0;
  }
}

void sub_100029088(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v11 = *(a2 + 4);
  if (v11 > 3)
  {
    switch(v11)
    {
      case 4u:
        if (*(a1 + 2) != 4)
        {
          v16 = "ACSP plugin: received unexpected timeout\n";
          goto LABEL_38;
        }

        v18 = *(a1 + 5);
        *(a1 + 5) = v18 + 1;
        if (v18 <= 9)
        {
          *(a3 + 8) = *(a1 + 4);
          *(a3 + 4) = *(a1 + 21) + 4;
          *(a3 + 2) = 3;
          return;
        }

        error("ACSP plugin: no acknowlegement from peer\n", a2, a3, a4, a5, a6, a7, a8, v48);
        break;
      case 6u:
        error("ACSP plugin: error notificationr received\n", a2, a3, a4, a5, a6, a7, a8, v48);
        if (*(a1 + 2) == 4)
        {
          *(a3 + 2) = 5;
        }

        break;
      case 5u:
        v16 = "ACSP plugin: unexpected notification received\n";
        goto LABEL_38;
      default:
        return;
    }

    goto LABEL_42;
  }

  if (v11 == 1)
  {
    if (*a1 == 1)
    {
      if (!acscp_gotoptions)
      {
        if (acscp_hisoptions)
        {
LABEL_17:
          *(a1 + 1) = 2;
          a1[12] = 0;
          *(a1 + 5) = 0;
          sub_1000295E4(a1, a2, a3);
          ++a1[12];
          v17 = 4;
LABEL_30:
          *(a1 + 2) = v17;
          return;
        }

        goto LABEL_49;
      }
    }

    else if (!BYTE8(acscp_gotoptions))
    {
      if (byte_10004A188)
      {
        goto LABEL_17;
      }

LABEL_49:
      *(a1 + 1) = 0;
      goto LABEL_35;
    }

    *(a1 + 4) = 0x200000001;
LABEL_35:
    a1[12] = 0;
    *(a1 + 5) = 0;
    return;
  }

  if (v11 == 2)
  {
    v19 = *(a1 + 2);
    if (v19 != 5)
    {
      if (v19 != 4)
      {
LABEL_27:
        if (*(a1 + 1) == 1)
        {
          sub_100029590(a1);
        }

        v17 = 1;
        goto LABEL_30;
      }

      *(a3 + 2) = 5;
    }

    if (*(a1 + 14))
    {
      *(a1 + 14) = 0;
      if (*a1 == 1)
      {
        sub_10002988C(*(a1 + 6));
        *(a1 + 14) = 0;
      }
    }

    goto LABEL_27;
  }

  if (v11 != 3)
  {
    return;
  }

  v13 = *(a2 + 8);
  v14 = *(a1 + 2);
  if (v14 == 4)
  {
    v21 = *(v13 + 4);
    if ((ntohs() & 4) == 0)
    {
      return;
    }

    if (*(a1 + 3))
    {
      sub_1000295E4(a1, a2, a3);
      ++a1[12];
      return;
    }

LABEL_42:
    *(a1 + 2) = 5;
    v20 = acspdhcpready_notifier;

    notify(v20, 0);
    return;
  }

  if (v14 != 3)
  {
    if (v14 != 2)
    {
      return;
    }

    v15 = *(v13 + 4);
    if ((ntohs() & 2) == 0)
    {
      v16 = "ACSP plugin: received first packet with no start flag\n";
LABEL_38:

      error(v16, a2, a3, a4, a5, a6, a7, a8, a9);
      return;
    }

    *(a1 + 2) = 3;
  }

  if (*(v13 + 1) == a1[12])
  {
    v22 = *(a2 + 6);
    v23 = *a1;
    if (v23 == 2)
    {
      if (v22 >= 0xB)
      {
        v24 = v22 - 8;
        v25 = (v13 + 8);
        do
        {
          v26 = *v25;
          v27 = *(v25 + 2);
          v28 = malloc_type_malloc(0x18uLL, 0x1030040A9CFD972uLL);
          if (!v28)
          {
            goto LABEL_69;
          }

          v29 = v28;
          v30 = ntohs();
          v31 = malloc_type_malloc(v30 + 1, 0xDCBC7B3AuLL);
          v29[2] = v31;
          if (!v31)
          {
            error("ACSP plugin: no memory\n", v32, v33, v34, v35, v36, v37, v38, v48);

            free(v29);
            return;
          }

          *(v29 + 2) = v26;
          memcpy(v31, v25 + 6, v30);
          *(v29[2] + v30) = 0;
          *v29 = *(a1 + 6);
          *(a1 + 6) = v29;
          v39 = v30 + 6;
          v24 -= v39;
          v25 = (v25 + v39);
        }

        while (v24 > 2);
      }
    }

    else
    {
      if (v23 != 1)
      {
        return;
      }

      if ((v22 & 3) != 0)
      {
        v16 = "ACSP plugin: received packet with invalid len\n";
        goto LABEL_38;
      }

      if (v22 >= 0xD)
      {
        v40 = v13 + 8;
        v41 = v22 + 4;
        while (1)
        {
          v42 = malloc_type_malloc(0x20uLL, 0x1020040983EA955uLL);
          if (!v42)
          {
            break;
          }

          v43 = v42;
          *v42 = 0u;
          v42[1] = 0u;
          v44 = *(v40 + 4);
          *(v42 + 2) = v44 & *v40;
          *(v42 + 3) = v44;
          v45 = *(v40 + 8);
          *(v43 + 10) = ntohs();
          *v43 = *(a1 + 6);
          *(a1 + 6) = v43;
          v40 += 12;
          v41 -= 12;
          if (v41 <= 16)
          {
            goto LABEL_66;
          }
        }

LABEL_69:
        v16 = "ACSP plugin: no memory\n";
        goto LABEL_38;
      }
    }

LABEL_66:
    ++a1[12];
    v46 = *(v13 + 4);
    if (ntohs())
    {
      *(a1 + 2) = 5;
      if (*(a1 + 4))
      {
        sub_1000297C4(a1);
      }

      else
      {
        notify(acspdhcpready_notifier, 0);
      }
    }
  }

  v47 = *(v13 + 4);
  if ((ntohs() & 8) != 0)
  {

    sub_100029828(a1, a2, a3);
  }
}

void sub_100029590(uint64_t a1)
{
  for (i = *(a1 + 48); i; i = *(a1 + 48))
  {
    if (*a1 != 1)
    {
      free(i[2]);
    }

    *(a1 + 48) = *i;
    free(i);
  }
}

uint64_t sub_1000295E4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 4);
  if (*(a1 + 20) >= *(a2 + 2))
  {
    v6 = *(a2 + 2);
  }

  else
  {
    v6 = *(a1 + 20);
  }

  if (*(a1 + 2) == 1)
  {
    htons();
    *(a1 + 3) = *(a1 + 6);
  }

  v7 = v6 - 4;
  v8 = *a1;
  *(v5 + 4) = v8;
  *(v5 + 5) = a1[12];
  ntohs();
  *(v5 + 8) = htons();
  *(v5 + 10) = 0;
  if (v8 == 1)
  {
    v17 = *(a1 + 3);
    v11 = 8;
    if (v17 && v7 >= 0x14u)
    {
      v18 = (v5 + 22);
      LOWORD(v19) = 20;
      do
      {
        v11 = v19;
        *(v18 - 5) = v17[1];
        v20 = *(v17 + 10);
        *(v18 - 1) = htons();
        *v18 = htons();
        v18 += 6;
        v17 = *v17;
        *(a1 + 3) = v17;
        v19 = v11 + 12;
        if (v17)
        {
          v21 = v19 > v7;
        }

        else
        {
          v21 = 1;
        }
      }

      while (!v21);
    }

LABEL_23:
    if (v17)
    {
      goto LABEL_27;
    }

LABEL_26:
    v22 = *(v5 + 8);
    ntohs();
    *(v5 + 8) = htons();
    goto LABEL_27;
  }

  if (v8 != 2)
  {
    v17 = *(a1 + 3);
    v11 = 8;
    goto LABEL_23;
  }

  v9 = *(a1 + 3);
  if (!v9)
  {
    v11 = 8;
    goto LABEL_26;
  }

  v10 = v5 + 12;
  v11 = 8;
  while (1)
  {
    v12 = strlen(*(v9 + 16));
    v13 = v12 + 6;
    if (v12 + 6 + v11 > v7)
    {
      break;
    }

    v14 = *(v9 + 8);
    v15 = htons();
    *v10 = v14;
    *(v10 + 4) = v15;
    memcpy((v10 + 6), *(*(a1 + 3) + 16), v12);
    v11 += v13;
    v16 = *(a1 + 3);
    v9 = *v16;
    *(a1 + 3) = *v16;
    v10 += v13;
    if (!v9)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  *(a3 + 2) = 3;
  *(a1 + 21) = v11;
  result = htons();
  *(v5 + 6) = result;
  *(a3 + 4) = v11 + 4;
  *(a3 + 8) = *(a1 + 4);
  return result;
}

uint64_t **sub_1000297C4(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 6);
  if (v2 == 1)
  {
    sub_100029A40(v3);
  }

  else
  {
    sub_100029C18(v3);
  }

  *(a1 + 14) = 1;
  v4 = acspdhcpready_notifier;

  return notify(v4, 0);
}

uint64_t sub_100029828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 32);
  *(v5 + 4) = *a1;
  *(v5 + 5) = *(v4 + 1);
  *(v5 + 8) = htons();
  result = htons();
  *(v5 + 6) = result;
  *(v5 + 10) = 0;
  *(a3 + 2) = 786433;
  *(a3 + 8) = v5;
  return result;
}

void sub_10002988C(uint64_t *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      if (*(v1 + 6))
      {
        *(v1 + 6) = 0;
        v2 = *(v1 + 10);
        if ((v2 & 1) == 0)
        {
          if ((v2 & 2) == 0)
          {
            goto LABEL_14;
          }

          v3 = *(v1 + 2);
          if (!v3 || route_gateway(2, v3, *(v1 + 3), dword_10004BF68, 0))
          {
            goto LABEL_14;
          }

          v4 = addr2ascii(2, v1 + 1, 4, v23);
          addr2ascii(2, v1 + 12, 4, v22);
          addr2ascii(2, &dword_10004BF68, 4, v21);
          error("ACSP plugin: error removing public net route. (%s/%s -> %s).", v5, v6, v7, v8, v9, v10, v11, v4);
          goto LABEL_12;
        }

        v12 = *(v1 + 2);
        if (!v12)
        {
          cifdefaultroute();
          goto LABEL_14;
        }

        if (!route_interface(2, v12, *(v1 + 3), 23, &ifname, 0))
        {
          v13 = addr2ascii(2, v1 + 1, 4, v23);
          addr2ascii(2, v1 + 12, 4, v22);
          error("ACSP plugin: error removing private net route. (%s/%s).", v14, v15, v16, v17, v18, v19, v20, v13);
LABEL_12:
          *(v1 + 6) = 1;
        }
      }

LABEL_14:
      v1 = *v1;
    }

    while (v1);
  }
}

void sub_100029A40(uint64_t *a1)
{
  if (a1)
  {
    v1 = a1;
    sleep(1u);
    cifdefaultroute();
    cifroute();
    do
    {
      *(v1 + 6) = 1;
      v2 = *(v1 + 10);
      if (v2)
      {
        v12 = *(v1 + 2);
        if (!v12)
        {
          sifdefaultroute();
          goto LABEL_14;
        }

        if (!route_interface(1, v12, *(v1 + 3), 23, &ifname, 0))
        {
          v13 = addr2ascii(2, v1 + 1, 4, v23);
          addr2ascii(2, v1 + 12, 4, v22);
          error("ACSP plugin: error installing private net route. (%s/%s).", v14, v15, v16, v17, v18, v19, v20, v13);
          goto LABEL_11;
        }
      }

      else if ((v2 & 2) != 0)
      {
        v3 = *(v1 + 2);
        if (!v3)
        {
          cifdefaultroute();
          goto LABEL_14;
        }

        if (!route_gateway(1, v3, *(v1 + 3), dword_10004BF68, 1))
        {
          v4 = addr2ascii(2, v1 + 1, 4, v23);
          addr2ascii(2, v1 + 12, 4, v22);
          addr2ascii(2, &dword_10004BF68, 4, v21);
          error("ACSP plugin: error installing public net route. (%s/%s -> %s).", v5, v6, v7, v8, v9, v10, v11, v4);
LABEL_11:
          *(v1 + 6) = 0;
        }
      }

LABEL_14:
      v1 = *v1;
    }

    while (v1);
  }
}

void sub_100029C18(uint64_t **a1)
{
  valuePtr = 100000;
  v2 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  if (v2)
  {
    v10 = v2;
    if (a1)
    {
      v11 = 1;
      while (1)
      {
        v12 = CFStringCreateWithCString(0, a1[2], 0x8000100u);
        if (!v12)
        {
          v21 = "ACSP plugin: error adding domain name - could not create CFString\n";
          goto LABEL_11;
        }

        v20 = v12;
        if (!publish_dns_wins_entry(kSCEntNetDNS, kSCPropNetDNSSearchDomains, v20, 0, kSCPropNetDNSSupplementalMatchDomains, v20, kSCPropNetDNSSupplementalMatchOrders, v10, @"ConfirmedServiceID", serviceidRef, v11))
        {
          break;
        }

        publish_dns_wins_entry(kSCEntNetProxies, kSCPropNetDNSSupplementalMatchDomains, v20, 0, kSCPropNetDNSSupplementalMatchOrders, v10, 0, 0, 0, 0, v11);
        CFRelease(v20);
        v11 = 0;
        a1 = *a1;
        if (!a1)
        {
          goto LABEL_12;
        }
      }

      CFRelease(v20);
      v21 = "ACSP plugin: error adding domain name\n";
LABEL_11:
      error(v21, v13, v14, v15, v16, v17, v18, v19, key);
    }

LABEL_12:
    CFRelease(v10);
  }

  else
  {
    error("ACSP plugin: error adding domain name - could not create CFNumber\n", v3, v4, v5, v6, v7, v8, v9, key);
  }
}

void sub_100029DA4(unsigned int a1, uint64_t a2, unsigned int a3, unsigned __int8 a4, unsigned int a5, char a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = a5;
  v10 = a3;
  v24 = HIBYTE(a3);
  byte_100048128 = HIBYTE(a3);
  v12 = HIWORD(a3);
  byte_100048129 = BYTE2(a3);
  v13 = a3 >> 8;
  LOBYTE(word_10004812A) = BYTE1(a3);
  HIBYTE(word_10004812A) = a3;
  v14 = HIBYTE(a5);
  byte_10004812C = HIBYTE(a5);
  v15 = HIWORD(a5);
  byte_10004812D = BYTE2(a5);
  v16 = a5 >> 8;
  byte_10004812E = BYTE1(a5);
  byte_10004812F = a5;
  LOWORD(dword_100048130) = 4352;
  v17 = a2 - 4;
  BYTE2(dword_100048130) = (a2 - 24) >> 8;
  BYTE5(qword_100048134) = a2 - 24;
  BYTE4(qword_100048134) = (a2 - 24) >> 8;
  HIBYTE(dword_100048130) = a2 - 24;
  LOBYTE(qword_100048134) = 0;
  *(&qword_100048134 + 1) = a4;
  BYTE3(qword_100048134) = a6;
  HIWORD(qword_100048134) = 0;
  sub_100029F20(&byte_100048128, a2 - 12);
  word_100048120 = 69;
  LOBYTE(word_100048122) = HIBYTE(v17);
  HIBYTE(word_100048122) = v17;
  v18 = word_100046FD0;
  byte_100048124 = HIBYTE(word_100046FD0);
  word_100046FD0 += 2;
  byte_100048125[0] = v18 + 1;
  *algn_100048126 = 289406976;
  word_10004812A = 0;
  byte_10004812C = v24;
  byte_10004812D = v12;
  byte_10004812E = v13;
  byte_10004812F = v10;
  LOBYTE(dword_100048130) = v14;
  BYTE1(dword_100048130) = v15;
  BYTE2(dword_100048130) = v16;
  HIBYTE(dword_100048130) = v9;
  sub_100029F20(&word_100048120, 20);
  word_10004812A = __rev16(ntohs());

  output(a1, &outpacket_buf, a2, v19, v20, v21, v22, v23, a9);
}

uint64_t sub_100029F20(unsigned __int8 *a1, int a2)
{
  if (a2 < 2)
  {
    v2 = 0;
    if (a2)
    {
LABEL_7:
      v2 += *a1;
    }
  }

  else
  {
    v2 = 0;
    v3 = a2;
    do
    {
      v4 = *a1;
      a1 += 2;
      v2 += v4;
      if (v2 < 0)
      {
        v2 = (v2 >> 16) + v2;
      }

      v5 = v3 - 2;
      v6 = v3 > 3;
      v3 -= 2;
    }

    while (v6);
    if (v5)
    {
      goto LABEL_7;
    }
  }

  if (v2 >= 0x10000)
  {
    do
    {
      v2 = (v2 >> 16) + v2;
    }

    while (v2 >> 16);
  }

  return ~v2;
}

void sub_100029F94(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1 == 4)
  {
    v11 = a1[1];
    a1[1] = v11 + 1;
    if (v11 > 3)
    {
      dbglog("No DHCP server replied\n", a2, a3, a4, a5, a6, a7, a8, v8);
      *a1 = 5;
    }

    else
    {
      v12 = a1[9];
      sub_10002A024(a1[8]);
    }

    if (a1[1] == 2)
    {
      v13 = acspdhcpready_notifier;

      notify(v13, 0);
    }
  }
}

void sub_10002A024(unsigned int a1)
{
  bzero(&word_100048120, 0x5DCuLL);
  outpacket_buf = 553649151;
  word_10004813C = 2049;
  byte_10004813E = 6;
  v2 = word_100046FD2;
  word_100048140 = 0;
  LOBYTE(word_100048142) = (word_100046FD2 + 2) >> 8;
  word_100046FD2 += 4;
  HIBYTE(word_100048142) = v2 + 3;
  v3 = ntohl();
  dword_100048144 = 0;
  byte_100048148 = HIBYTE(v3);
  byte_100048149 = BYTE2(v3);
  byte_10004814A = BYTE1(v3);
  byte_10004814B = v3;
  qword_10004814C = 0;
  *(&qword_10004814C + 7) = 0;
  byte_10004815B = 1;
  qword_10004815C = 0;
  *(&qword_10004815C + 7) = 0;
  byte_100048167 = 1;
  qword_100048228 = 0x3D08013563538263;
  word_100048230 = 2055;
  byte_100048233 = 0;
  LOBYTE(word_100048235) = 1;
  qword_100048237 = 0xF9012B2C06063700;
  word_10004823F = -241;
  sub_100029DA4(a1, 294, v3, 0x44u, 0xFFFFFFFF, 67, v4, v5, v6);
  *qword_10004BF70 = 4;

  timeout(sub_100029F94);
}

uint64_t chap_register_digest(uint64_t result)
{
  *(result + 64) = qword_10004BF78;
  qword_10004BF78 = result;
  return result;
}

void chap_auth_peer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if ((dword_10004BF80 & 2) != 0)
  {

    error("CHAP: peer authentication already started!", a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    v9 = qword_10004BF78;
    if (!qword_10004BF78)
    {
LABEL_5:
      fatal();
    }

    while (*v9 != a3)
    {
      v9 = *(v9 + 64);
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    qword_10004BF88 = a2;
    qword_10004BF90 = v9;
    v17 = drand48();
    v18 = dword_10004BF80;
    dword_10004BF80 |= 2u;
    *algn_10004BF84 = vcvtd_n_s64_f64(v17, 8uLL);
    if (v18)
    {

      sub_10002A264(&dword_10004BF80, v10, v11, v12, v13, v14, v15, v16);
    }
  }
}

void sub_10002A264(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  *a1 &= ~0x10u;
  if ((v9 & 0x20) == 0)
  {
    a1[6] = 0;
    a1[8] = 599917567;
    (*(*(a1 + 2) + 8))(a1 + 10);
    v10 = *(a1 + 40);
    v11 = strlen(*(a1 + 1));
    memcpy(a1 + v10 + 41, *(a1 + 1), v11);
    v12 = v10 + v11 + 5;
    v13 = (v10 + v11 + 9);
    a1[7] = v13;
    *(a1 + 36) = 1;
    *(a1 + 38) = HIBYTE(v12);
    *(a1 + 39) = v12;
    v14 = *a1;
    v15 = a1[1] + 1;
    *(a1 + 37) = *(a1 + 4) + 1;
    *a1 = v14 | 0x20;
    a1[1] = v15;
LABEL_5:
    output(0, (a1 + 8), v13, a4, a5, a6, a7, a8, v16);
    ++a1[6];
    *a1 |= 0x10u;

    timeout(sub_10002A264);
    return;
  }

  if (a1[6] < chap_max_transmits)
  {
    v13 = a1[7];
    goto LABEL_5;
  }

  *a1 = v9 & 0xFFFFFFC3 | 0xC;

  auth_peer_fail(0, 49699, a3, a4, a5, a6, a7, a8);
}

void chap_auth_with_peer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if ((xmmword_10004C1F0 & 2) != 0)
  {

    error("CHAP: authentication with peer already started!", a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    v9 = qword_10004BF78;
    if (!qword_10004BF78)
    {
LABEL_5:
      fatal();
    }

    while (*v9 != a3)
    {
      v9 = *(v9 + 64);
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    *(&xmmword_10004C1F0 + 1) = a2;
    *&xmmword_10004C200 = v9;
    LODWORD(xmmword_10004C1F0) = xmmword_10004C1F0 | 2;
  }
}

void *sub_10002A450()
{
  xmmword_10004C380 = 0u;
  unk_10004C390 = 0u;
  xmmword_10004C360 = 0u;
  unk_10004C370 = 0u;
  xmmword_10004C340 = 0u;
  unk_10004C350 = 0u;
  xmmword_10004C320 = 0u;
  unk_10004C330 = 0u;
  xmmword_10004C300 = 0u;
  unk_10004C310 = 0u;
  xmmword_10004C2E0 = 0u;
  unk_10004C2F0 = 0u;
  xmmword_10004C2C0 = 0u;
  unk_10004C2D0 = 0u;
  xmmword_10004C2A0 = 0u;
  unk_10004C2B0 = 0u;
  xmmword_10004C280 = 0u;
  unk_10004C290 = 0u;
  xmmword_10004C260 = 0u;
  unk_10004C270 = 0u;
  xmmword_10004C240 = 0u;
  unk_10004C250 = 0u;
  xmmword_10004C220 = 0u;
  unk_10004C230 = 0u;
  xmmword_10004C200 = 0u;
  unk_10004C210 = 0u;
  xmmword_10004C1F0 = 0u;
  bzero(&dword_10004BF80, 0x270uLL);
  chap_md5_init();

  return chapms_init();
}

void sub_10002A4CC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 < 4)
  {
    return;
  }

  v9 = __rev16(*(a2 + 1));
  v10 = v9 - 4;
  if (v9 < 4 || v9 > a3)
  {
    return;
  }

  v12 = a2[1];
  v13 = a2 + 4;
  v14 = *a2;
  if ((v14 - 3) < 2)
  {
    v34 = xmmword_10004C1F0;
    if ((xmmword_10004C1F0 & 7) != 3)
    {
      return;
    }

    v35 = xmmword_10004C1F0 | 4;
    LODWORD(xmmword_10004C1F0) = xmmword_10004C1F0 | 4;
    if ((v34 & 0x10) != 0)
    {
      LODWORD(xmmword_10004C1F0) = v35 & 0xFFFFFFEF;
      untimeout(sub_10002B218, &xmmword_10004C1F0);
    }

    if (v14 == 3)
    {
      v36 = *(xmmword_10004C200 + 32);
      if (v36)
      {
        if (!v36(v13, v10, &xmmword_10004C200 + 8))
        {
          goto LABEL_75;
        }

LABEL_61:
        v50 = *xmmword_10004C200;

        auth_withpeer_success(0, 49699, v50);
        return;
      }

      v49 = "CHAP authentication succeeded";
LABEL_57:
      if (v10)
      {
        info("%s: %.*v", a2, a3, a4, a5, a6, a7, a8, v49);
      }

      else
      {
        info("%s", a2, a3, a4, a5, a6, a7, a8, v49);
      }

      if (v14 != 3)
      {
        goto LABEL_75;
      }

      goto LABEL_61;
    }

    v44 = *(xmmword_10004C200 + 40);
    if (!v44)
    {
      v49 = "CHAP authentication failed";
      goto LABEL_57;
    }

    byte_10004C4A2 = 0;
    v45 = v44(v13, v10);
    if (v45 == 2)
    {
      if (byte_10004C3A0 != 1 || (byte_10004C3A0 = 0, byte_10004C5A2 != v12))
      {
        LODWORD(xmmword_10004C1F0) = v34;
        v46 = v13;
        v47 = v10;
        v48 = 0;
        goto LABEL_73;
      }
    }

    else
    {
      if (v45 != 1)
      {
LABEL_75:
        LODWORD(xmmword_10004C1F0) = xmmword_10004C1F0 | 8;

        auth_withpeer_fail(0, 49699);
        return;
      }

      if (byte_10004C3A0 != 1 || (byte_10004C3A0 = 0, byte_10004C5A2 != v12))
      {
        LODWORD(xmmword_10004C1F0) = v34;
        v46 = v13;
        v47 = v10;
        v48 = 1;
LABEL_73:
        if (!sub_10002B3E0(v46, v47, v48))
        {
          return;
        }

        LODWORD(xmmword_10004C1F0) = xmmword_10004C1F0 | 4;
        goto LABEL_75;
      }
    }

    LODWORD(xmmword_10004C1F0) = xmmword_10004C1F0 & 0xFFFFFFFB;
    return;
  }

  if (v14 == 2)
  {
    v37 = dword_10004BF80;
    if ((dword_10004BF80 & 1) != 0 && v10 >= 2 && byte_10004BFA5 == v12)
    {
      if ((dword_10004BF80 & 0x20) != 0)
      {
        v51 = v10 + ~a2[4];
        if (v51 < 0)
        {
          return;
        }

        if ((dword_10004BF80 & 0x10) != 0)
        {
          dword_10004BF80 &= ~0x10u;
          untimeout(sub_10002A264, &dword_10004BF80);
        }

        if (explicit_remote)
        {
          v40 = &remote_name;
        }

        else
        {
          LODWORD(v100) = v51;
          v40 = &v105;
          slprintf(&v105, 257, "%.*v");
        }

        v75 = chap_verify_hook;
        if (!chap_verify_hook)
        {
          v75 = sub_10002B2F8;
        }

        v39 = v75(v40, qword_10004BF88, v12, qword_10004BF90, &unk_10004BFA8, (a2 + 4), &byte_10004C0EC, 256);
        if (v39 && auth_number())
        {
          v37 = dword_10004BF80;
        }

        else
        {
          v37 = dword_10004BF80 | 8;
          dword_10004BF80 |= 8u;
        }
      }

      else
      {
        if ((dword_10004BF80 & 4) == 0)
        {
          return;
        }

        v39 = 0;
        v40 = 0;
      }

      outpacket_buf = 599917567;
      v76 = strlen(&byte_10004C0EC);
      v82 = v76;
      v83 = (v37 >> 3) & 1;
      if (v39 == -1)
      {
        v83 = 1;
      }

      if (v83)
      {
        v84 = 4;
      }

      else
      {
        v84 = 3;
      }

      LOBYTE(word_100048120) = v84;
      HIBYTE(word_100048120) = v12;
      LOBYTE(word_100048122) = (v76 + 4) >> 8;
      HIBYTE(word_100048122) = v76 + 4;
      if (v76 >= 1)
      {
        memcpy(&byte_100048124, &byte_10004C0EC, v76 & 0x7FFFFFFF);
      }

      output(0, &outpacket_buf, (v82 + 8), v77, v78, v79, v80, v81, v100);
      byte_10004C3A1 = 0;
      v92 = dword_10004BF80;
      if (v39 == -1)
      {
        dword_10004BF80 |= 0x20u;
        ++byte_10004BFA5;
        __strlcpy_chk();
      }

      else if ((dword_10004BF80 & 4) == 0)
      {
        dword_10004BF80 = dword_10004BF80 & 0xFFFFFFDB | 4;
        if ((v92 & 8) != 0)
        {
          notice("CHAP peer authentication failed for %q", v85, v86, v87, v88, v89, v90, v91, v40);
          auth_peer_fail(0, 49699, v94, v95, v96, v97, v98, v99);
        }

        else
        {
          notice("CHAP peer authentication succeeded for %q", v85, v86, v87, v88, v89, v90, v91, v40);
          v93 = strlen(v40);
          auth_peer_success(0, 49699, *qword_10004BF90, v40, v93);
          if (chap_rechallenge_time)
          {
            dword_10004BF80 |= 0x10u;
            v33 = sub_10002A264;
LABEL_26:
            timeout(v33);
          }
        }
      }
    }
  }

  else if (v14 == 1)
  {
    if (v10 >= 2 && (xmmword_10004C1F0 & 3) == 3)
    {
      v16 = *v13;
      if (v10 > v16)
      {
        if ((xmmword_10004C1F0 & 0x10) != 0)
        {
          LODWORD(xmmword_10004C1F0) = xmmword_10004C1F0 & 0xFFFFFFEF;
          untimeout(sub_10002B218, &xmmword_10004C1F0);
          v16 = *v13;
        }

        v102 = 0;
        v101 = v10 + ~v16;
        slprintf(v104, 257, "%.*v");
        if (explicit_remote || remote_name && !v104[0])
        {
          __strlcpy_chk();
        }

        if (!get_secret(0, *(&xmmword_10004C1F0 + 1), v104, v103, &v102, 0))
        {
          v102 = 0;
          warning("No CHAP secret found for authenticating us to %q", v17, v18, v19, v20, v21, v22, v23, v104);
        }

        byte_10004C3A0 = 0;
        v105 = 599917567;
        (*(xmmword_10004C200 + 24))(v110, v12, *(&xmmword_10004C1F0 + 1), a2 + 4, v103, v102, &xmmword_10004C200 + 8);
        __memset_chk();
        v24 = v110[0];
        v25 = strlen(*(&xmmword_10004C1F0 + 1));
        memcpy(&v110[v110[0] + 1], *(&xmmword_10004C1F0 + 1), v25);
        v26 = v24 + v25;
        v106 = 2;
        v107 = v12;
        v108 = (v26 + 5) >> 8;
        v109 = v26 + 5;
        v27 = v26 + 9;
        output(0, &v105, v26 + 9, v28, v29, v30, v31, v32, v101);
        HIDWORD(xmmword_10004C240) = v27;
        __memcpy_chk();
        LODWORD(xmmword_10004C1F0) = xmmword_10004C1F0 & 0xFFFFFFEB | 0x10;
        v33 = sub_10002B218;
        goto LABEL_26;
      }
    }
  }

  else if (chap_unknown_hook)
  {
    v41 = dword_10004BF80;
    if (dword_10004BF80)
    {
      v42 = 0;
      byte_10004C0EC = 0;
      if ((dword_10004BF80 & 4) == 0)
      {
        v100 = &byte_10004C0EC;
        v43 = chap_unknown_hook(&byte_10004C3A1, qword_10004BF88, v14, v12, qword_10004BF90, &unk_10004BFA8, v13, v10);
        if (v43 == -2)
        {
          return;
        }

        if (v43)
        {
          v41 = dword_10004BF80;
          v42 = v43 == -1;
        }

        else
        {
          v42 = 0;
          v41 = dword_10004BF80 | 8;
          dword_10004BF80 |= 8u;
        }
      }

      outpacket_buf = 599917567;
      v52 = strlen(&byte_10004C0EC);
      v58 = v52;
      if (v42 | ((v41 & 8) >> 3))
      {
        v59 = 4;
      }

      else
      {
        v59 = 3;
      }

      LOBYTE(word_100048120) = v59;
      HIBYTE(word_100048120) = v12;
      LOBYTE(word_100048122) = (v52 + 4) >> 8;
      HIBYTE(word_100048122) = v52 + 4;
      if (v52 >= 1)
      {
        memcpy(&byte_100048124, &byte_10004C0EC, v52 & 0x7FFFFFFF);
      }

      output(0, &outpacket_buf, (v58 + 8), v53, v54, v55, v56, v57, v100);
      if (!v42)
      {
        v67 = dword_10004BF80;
        if ((dword_10004BF80 & 4) == 0)
        {
          dword_10004BF80 |= 4u;
          if ((v67 & 8) != 0)
          {
            notice("CHAP peer authentication failed for %q", v60, v61, v62, v63, v64, v65, v66, &byte_10004C3A1);

            auth_peer_fail(0, 49699, v69, v70, v71, v72, v73, v74);
          }

          else
          {
            notice("CHAP peer authentication succeeded for %q", v60, v61, v62, v63, v64, v65, v66, &byte_10004C3A1);
            v68 = strlen(&byte_10004C3A1);
            auth_peer_success(0, 49699, *qword_10004BF90, &byte_10004C3A1, v68);
            if (chap_rechallenge_time)
            {
              dword_10004BF80 |= 0x10u;

              timeout(sub_10002A264);
            }
          }
        }
      }
    }
  }
}

void sub_10002AE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = dword_10004BF80;
  if ((dword_10004BF80 & 0x10) != 0)
  {
    dword_10004BF80 &= ~0x10u;
    untimeout(sub_10002A264, &dword_10004BF80);
    v8 = dword_10004BF80;
  }

  if ((v8 & 2) != 0)
  {
    dword_10004BF80 = 0;
    auth_peer_fail(0, 49699, a3, a4, a5, a6, a7, a8);
  }

  v9 = xmmword_10004C1F0;
  if ((xmmword_10004C1F0 & 0x10) != 0)
  {
    LODWORD(xmmword_10004C1F0) = xmmword_10004C1F0 & 0xFFFFFFEF;
    untimeout(sub_10002B218, &xmmword_10004C1F0);
    v9 = xmmword_10004C1F0;
  }

  if ((v9 & 6) == 2)
  {
    LODWORD(xmmword_10004C1F0) = v9 & 0xFFFFFFF9;

    auth_withpeer_fail(0, 49699);
  }
}

void sub_10002AF4C()
{
  chapms_reinit();
  LODWORD(xmmword_10004C1F0) = xmmword_10004C1F0 | 1;
  v7 = dword_10004BF80;
  dword_10004BF80 |= 1u;
  if ((v7 & 2) != 0)
  {

    sub_10002A264(&dword_10004BF80, v0, v1, v2, v3, v4, v5, v6);
  }
}

void sub_10002AFA8()
{
  if ((xmmword_10004C1F0 & 0x10) != 0)
  {
    untimeout(sub_10002B218, &xmmword_10004C1F0);
  }

  LODWORD(xmmword_10004C1F0) = 0;
  if ((dword_10004BF80 & 0x10) != 0)
  {
    untimeout(sub_10002A264, &dword_10004BF80);
  }

  dword_10004BF80 = 0;
  if (byte_10004C5A4 == 1)
  {
    pthread_cancel(qword_10004C5C0);
    byte_10004C5A4 = 0;
  }
}

uint64_t sub_10002B03C(unsigned __int8 *a1, int a2, void (*a3)(uint64_t, const char *), uint64_t a4)
{
  if (a2 < 4)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a1[3];
  v7 = v6 | (v5 << 8);
  if (v7 < 4 || v7 > a2)
  {
    return 0;
  }

  v28 = v7 - 4;
  v12 = *a1;
  v13 = a1[1];
  v14 = v12 - 1;
  if ((v12 - 1) > 3)
  {
    v27 = *a1;
    v16 = " code=0x%x";
  }

  else
  {
    v15 = (&off_10003CDC0)[v14];
    v16 = " %s";
  }

  a3(a4, v16);
  v17 = a1 + 4;
  (a3)(a4, " id=0x%x", v13);
  if (v14 < 2)
  {
    if (v7 != 4)
    {
      v20 = *v17;
      if (v28 > v20)
      {
        v21 = (a1 + 5);
        v22 = ~v20;
        a3(a4, " <");
        if (v20)
        {
          v23 = v20 + 1;
          do
          {
            v24 = *v21++;
            (a3)(a4, "%.2x", v24);
            --v23;
          }

          while (v23 > 1);
        }

        a3(a4, ">, name = ");
        v19 = v28 + v22;
        v18 = v21;
        goto LABEL_15;
      }
    }
  }

  else
  {
    if ((v12 - 3) < 2)
    {
      a3(a4, " ");
      v18 = (a1 + 4);
      v19 = v7 - 4;
LABEL_15:
      print_string(v18, v19, a3, a4);
      return v7;
    }

    if (v7 < 5)
    {
      return 4;
    }

    else
    {
      v25 = (v5 << 8) + v6 - 3;
      do
      {
        v26 = *v17++;
        (a3)(a4, " %.2x", v26);
        --v25;
      }

      while (v25 > 1);
    }
  }

  return v7;
}

void sub_10002B218(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v10 = *a1 & 0xFFFFFFEF;
  *a1 = v10;
  if ((v9 & 0x40) == 0)
  {
    a1[22] = 0;
    *a1 = v10 | 0x40;
LABEL_4:
    output(0, (a1 + 24), a1[23], a4, a5, a6, a7, a8, v11);
    ++a1[22];
    *a1 |= 0x10u;

    timeout(sub_10002B218);
    return;
  }

  if (a1[22] < chap_max_transmits)
  {
    goto LABEL_4;
  }

  *a1 = v9 & 0xFFFFFFA3 | 0xC;

  auth_peer_fail(0, 49699, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_10002B2F8(const char *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = 0;
  if (get_secret(0, a1, a2, v24, &v23, 1))
  {
    return (*(a4 + 16))(a3, a1, v24, v23, a5, a6, a7, a8);
  }

  error("No CHAP secret found for authenticating %q", v15, v16, v17, v18, v19, v20, v21, a1);
  return 0;
}

uint64_t sub_10002B3E0(uint64_t a1, int a2, int a3)
{
  if (byte_10004C5A4)
  {
    return 0;
  }

  if (qword_10004C5A8)
  {
    free(qword_10004C5A8);
  }

  v7 = (a2 + 4);
  v8 = malloc_type_malloc(v7, 0xD6E866A7uLL);
  qword_10004C5A8 = v8;
  if (!v8)
  {
    error("CHAP: cannot allocate memory to save packet", v9, v10, v11, v12, v13, v14, v15, v30);
    return 0xFFFFFFFFLL;
  }

  memcpy(v8, (a1 - 4), v7);
  dword_10004C5B0 = a3;
  if (pipe(&qword_10004C5B8) < 0)
  {
    error("chap failed to create pipe for User Interface...\n", v16, v17, v18, v19, v20, v21, v22, v30);
    goto LABEL_11;
  }

  if (pthread_create(&qword_10004C5C0, 0, sub_10002B528, 0))
  {
    error("chap failed to create thread for client User Interface...\n", v23, v24, v25, v26, v27, v28, v29, v30);
    close(qword_10004C5B8);
    close(SHIDWORD(qword_10004C5B8));
LABEL_11:
    free(qword_10004C5A8);
    qword_10004C5A8 = 0;
    return 0xFFFFFFFFLL;
  }

  wait_input_hook = sub_10002B5B4;
  add_fd(qword_10004C5B8);
  result = 0;
  byte_10004C5A4 = 1;
  return result;
}

uint64_t sub_10002B528()
{
  __buf = -1;
  v0 = pthread_self();
  if (!pthread_detach(v0))
  {
    if (byte_10004C4A2)
    {
      v1 = &byte_10004C4A2;
    }

    else
    {
      v1 = 0;
    }

    if (dword_10004C5B0 == 1)
    {
      v2 = &change_password_hook;
    }

    else
    {
      v2 = &retry_password_hook;
    }

    if (!(*v2)(v1))
    {
      __buf = 0;
    }
  }

  write(SHIDWORD(qword_10004C5B8), &__buf, 1uLL);
  return 0;
}

void sub_10002B5B4()
{
  if (qword_10004C5B8 != -1 && is_ready_fd(qword_10004C5B8))
  {
    v22 = 0;
    byte_10004C5A4 = 0;
    v23 = 0;
    read(qword_10004C5B8, &v23, 1uLL);
    wait_input_hook = 0;
    remove_fd(qword_10004C5B8);
    close(qword_10004C5B8);
    close(SHIDWORD(qword_10004C5B8));
    qword_10004C5B8 = -1;
    if (v23)
    {
      v25[0] = 0;
      if (explicit_remote | remote_name)
      {
        __strlcpy_chk();
      }

      if (!get_secret(0, *(&xmmword_10004C1F0 + 1), v25, v24, &v22, 0))
      {
        v22 = 0;
        warning("No CHAP secret found for authenticating us to %q", v0, v1, v2, v3, v4, v5, v6, v25);
      }

      v26 = 599917567;
      if (dword_10004C5B0 == 1)
      {
        v7 = strlen(new_passwd);
        if ((*(xmmword_10004C200 + 48))(v27, *(&xmmword_10004C1F0 + 1), qword_10004C5A8, v24, v22, new_passwd, v7, &xmmword_10004C200 + 8))
        {
          __memset_chk();
          byte_10004C3A0 = 1;
          byte_10004C5A2 = *(qword_10004C5A8 + 1);
          free(qword_10004C5A8);
          qword_10004C5A8 = 0;
          return;
        }

        save_new_password();
        __memset_chk();
        byte_10004C3A0 = 1;
        byte_10004C5A2 = *(qword_10004C5A8 + 1);
        free(qword_10004C5A8);
        qword_10004C5A8 = 0;
      }

      else
      {
        v15 = (*(xmmword_10004C200 + 56))(v27, *(&xmmword_10004C1F0 + 1), qword_10004C5A8, v24, v22, &xmmword_10004C200 + 8);
        __memset_chk();
        byte_10004C3A0 = 1;
        byte_10004C5A2 = *(qword_10004C5A8 + 1);
        free(qword_10004C5A8);
        qword_10004C5A8 = 0;
        if (v15)
        {
          return;
        }
      }

      output(0, &v26, __rev16(v27[1]) + 4, v16, v17, v18, v19, v20, v21);
    }

    else
    {
      free(qword_10004C5A8);
      qword_10004C5A8 = 0;
      v14 = xmmword_10004C1F0;
      if ((xmmword_10004C1F0 & 0x10) != 0)
      {
        LODWORD(xmmword_10004C1F0) = xmmword_10004C1F0 & 0xFFFFFFEF;
        untimeout(sub_10002B218, &xmmword_10004C1F0);
        v14 = xmmword_10004C1F0;
      }

      LODWORD(xmmword_10004C1F0) = v14 | 4;
      auth_withpeer_cancelled(0, 49699, v8, v9, v10, v11, v12, v13);
    }
  }
}

uint64_t setup_security_context()
{
  *sp = 0;
  v5 = 0;
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v0 = bootstrap_look_up(bootstrap_port, "com.apple.SystemConfiguration.PPPController-priv", &sp[1]);
  if (v0)
  {
    if (v0 == 1102)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 4294967294;
    }
  }

  else
  {
    v1 = sub_10002D1CC(sp[1], sp, &v5, &v4, v3);
    mach_port_deallocate(mach_task_self_, sp[1]);
    if (!v1)
    {
      if (!sp[0] || (v1 = task_set_special_port(mach_task_self_, 4, sp[0]), mach_port_deallocate(mach_task_self_, sp[0]), !v1))
      {
        if (v5)
        {
          if (!audit_session_join(v5))
          {
            return 4294967293;
          }

          mach_port_deallocate(mach_task_self_, v5);
        }

        return 0;
      }
    }
  }

  return v1;
}

BOOL DesSetkey(uint64_t a1, uint8x8_t a2, uint8x8_t a3)
{
  v3 = 0;
  v4 = *(a1 + 4);
  a2.i32[0] = *a1;
  v5 = vmovl_u8(a2).u64[0];
  v12 = v5.i8[0] & 0xFE;
  a3.i32[0] = *(a1 + 1);
  v6 = *(a1 + 5);
  v14 = ((v6 | (v4 << 8)) >> 5) & 0xFE;
  v7 = vand_s8(vshl_u16(vorr_s8(vshl_n_s16(v5, 8uLL), *&vmovl_u8(a3)), 0xFFFCFFFDFFFEFFFFLL), 0xFE00FE00FE00FELL);
  v13 = vuzp1_s8(v7, v7).u32[0];
  v8 = *(a1 + 6);
  v15 = ((v8 | (v6 << 8)) >> 6) & 0xFE;
  v16 = 2 * v8;
  do
  {
    v9 = vdupq_n_s32(*(&v12 + v3));
    v11[v3++] = vand_s8(vmovn_s16(vuzp1q_s16(vshlq_u32(v9, xmmword_10002EF40), vshlq_u32(v9, xmmword_10002EF30))), 0x101010101010101);
  }

  while (v3 != 8);
  *__error() = 0;
  setkey(v11);
  return *__error() == 0;
}

uint64_t DesEncrypt(uint64_t a1, _BYTE *a2)
{
  v3 = 0;
  v4 = -8;
  do
  {
    v5 = vdupq_n_s32(*(a1 + v3));
    v15[v3] = vand_s8(vmovn_s16(vuzp1q_s16(vshlq_u32(v5, xmmword_10002EF40), vshlq_u32(v5, xmmword_10002EF30))), 0x101010101010101);
    v4 += 8;
    ++v3;
  }

  while (v4 < 0x38);
  *__error() = 0;
  encrypt(v15, 0);
  v6 = __error();
  result = 0;
  v8 = *v6;
  if (!v8)
  {
    v9 = v15;
    do
    {
      v10 = 0;
      v11 = 7;
      v12 = v9;
      do
      {
        v13 = *v12++;
        v10 |= v13 << v11--;
      }

      while (v11 != -1);
      v9 += 8;
      *a2++ = v10;
      v14 = v8 >= 0x38;
      v8 += 8;
    }

    while (!v14);
    return 1;
  }

  return result;
}

uint64_t DesDecrypt(uint64_t a1, _BYTE *a2)
{
  v3 = 0;
  v4 = -8;
  do
  {
    v5 = vdupq_n_s32(*(a1 + v3));
    v15[v3] = vand_s8(vmovn_s16(vuzp1q_s16(vshlq_u32(v5, xmmword_10002EF40), vshlq_u32(v5, xmmword_10002EF30))), 0x101010101010101);
    v4 += 8;
    ++v3;
  }

  while (v4 < 0x38);
  *__error() = 0;
  encrypt(v15, 1);
  v6 = __error();
  result = 0;
  v8 = *v6;
  if (!v8)
  {
    v9 = v15;
    do
    {
      v10 = 0;
      v11 = 7;
      v12 = v9;
      do
      {
        v13 = *v12++;
        v10 |= v13 << v11--;
      }

      while (v11 != -1);
      v9 += 8;
      *a2++ = v10;
      v14 = v8 >= 0x38;
      v8 += 8;
    }

    while (!v14);
    return 1;
  }

  return result;
}

_BYTE *sub_10002BD28(_BYTE *a1)
{
  v2 = vcvtd_n_s64_f64(drand48(), 3uLL);
  *a1 = v2 + 16;

  return random_bytes(a1 + 1, v2 + 16);
}

uint64_t sub_10002BD6C(char a1, uint64_t a2, const void *a3, CC_LONG a4, unsigned __int8 *a5, uint64_t a6, int a7, int a8)
{
  memset(&c, 0, sizeof(c));
  data = a1;
  if (*a6 != 16)
  {
    goto LABEL_6;
  }

  v13 = a5 + 1;
  v14 = *a5;
  CC_MD5_Init(&c);
  v15 = 1;
  CC_MD5_Update(&c, &data, 1u);
  CC_MD5_Update(&c, a3, a4);
  CC_MD5_Update(&c, v13, v14);
  CC_MD5_Final(md, &c);
  if (*md == *(a6 + 1) && v22 == *(a6 + 9))
  {
    v17 = "Access granted";
  }

  else
  {
LABEL_6:
    v15 = 0;
    v17 = "Access denied";
  }

  slprintf(a7, a8, v17);
  return v15;
}

uint64_t sub_10002BE9C(_BYTE *a1, char a2, uint64_t a3, unsigned __int8 *a4, const void *a5, CC_LONG a6)
{
  memset(&c, 0, sizeof(c));
  data = a2;
  v9 = a4 + 1;
  v10 = *a4;
  CC_MD5_Init(&c);
  CC_MD5_Update(&c, &data, 1u);
  CC_MD5_Update(&c, a5, a6);
  CC_MD5_Update(&c, v9, v10);
  result = CC_MD5_Final(a1 + 1, &c);
  *a1 = 16;
  return result;
}

uint64_t sub_10002BF48(mach_port_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, _DWORD *a7, _DWORD *a8)
{
  msg.msgh_size = 0;
  v18 = 4;
  v19 = a2;
  v20 = 16777472;
  v21 = a3;
  v22 = a4;
  v23 = 1245184;
  v24 = a5;
  v25 = 1114112;
  v26 = a6;
  v27 = 1245184;
  v28 = NDR_record;
  v29 = a3;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x465000000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v13 = mach_msg(&msg, 3, 0x5Cu, 0x3Cu, msgh_local_port, 0, 0);
  v14 = v13;
  if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v13)
    {
      if (msg.msgh_id == 71)
      {
        v14 = 4294966988;
      }

      else if (msg.msgh_id == 18100)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v14 = 4294966996;
          if (v18 == 1 && msg.msgh_size == 52 && !msg.msgh_remote_port && HIWORD(v20) << 16 == 1114112)
          {
            v14 = 0;
            v15 = HIDWORD(v22);
            *a7 = v19;
            *a8 = v15;
            return v14;
          }
        }

        else if (msg.msgh_size == 36)
        {
          v14 = 4294966996;
          if (HIDWORD(v19))
          {
            if (msg.msgh_remote_port)
            {
              v14 = 4294966996;
            }

            else
            {
              v14 = HIDWORD(v19);
            }
          }
        }

        else
        {
          v14 = 4294966996;
        }
      }

      else
      {
        v14 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v14;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v14;
}

uint64_t sub_10002C150(int a1, _DWORD *a2, _DWORD *a3)
{
  *&msg[20] = 0u;
  v14 = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x465100000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = reply_port;
  }

  v8 = mach_msg(msg, 3, 0x18u, 0x34u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(*&msg[12]);
      return v9;
    }

    if (*&msg[20] == 71)
    {
      v9 = 4294966988;
    }

    else if (*&msg[20] == 18101)
    {
      if ((*msg & 0x80000000) == 0)
      {
        if (*&msg[4] == 44)
        {
          if (!*&msg[8])
          {
            v9 = *&msg[32];
            if (!*&msg[32])
            {
              v12 = DWORD1(v14);
              *a2 = v14;
              *a3 = v12;
              return v9;
            }

            goto LABEL_24;
          }
        }

        else if (*&msg[4] == 36)
        {
          if (*&msg[8])
          {
            v10 = 1;
          }

          else
          {
            v10 = *&msg[32] == 0;
          }

          if (v10)
          {
            v9 = 4294966996;
          }

          else
          {
            v9 = *&msg[32];
          }

          goto LABEL_24;
        }
      }

      v9 = 4294966996;
    }

    else
    {
      v9 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(msg);
    return v9;
  }

  mig_put_reply_port(*&msg[12]);
  return v9;
}

uint64_t sub_10002C2C4(int a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v16 = 0u;
  v15 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x465200000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = reply_port;
  }

  v10 = mach_msg(msg, 3, 0x18u, 0x44u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 18102)
      {
        if ((*msg & 0x80000000) != 0)
        {
          v11 = 4294966996;
          if (*&msg[24] == 1 && *&msg[4] == 60 && !*&msg[8] && BYTE3(v15) == 1)
          {
            v12 = DWORD1(v15);
            if (DWORD1(v15) == v16)
            {
              v11 = 0;
              *a2 = *&msg[28];
              *a3 = v12;
              *a4 = DWORD1(v16);
              return v11;
            }
          }
        }

        else if (*&msg[4] == 36)
        {
          v11 = 4294966996;
          if (*&msg[32])
          {
            if (*&msg[8])
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&msg[32];
            }
          }
        }

        else
        {
          v11 = 4294966996;
        }
      }

      else
      {
        v11 = 4294966995;
      }

      mach_msg_destroy(msg);
      return v11;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  return v11;
}

uint64_t sub_10002C49C(int a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v16 = 0u;
  v15 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x465300000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = reply_port;
  }

  v10 = mach_msg(msg, 3, 0x18u, 0x44u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 18103)
      {
        if ((*msg & 0x80000000) != 0)
        {
          v11 = 4294966996;
          if (*&msg[24] == 1 && *&msg[4] == 60 && !*&msg[8] && BYTE3(v15) == 1)
          {
            v12 = DWORD1(v15);
            if (DWORD1(v15) == v16)
            {
              v11 = 0;
              *a2 = *&msg[28];
              *a3 = v12;
              *a4 = DWORD1(v16);
              return v11;
            }
          }
        }

        else if (*&msg[4] == 36)
        {
          v11 = 4294966996;
          if (*&msg[32])
          {
            if (*&msg[8])
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&msg[32];
            }
          }
        }

        else
        {
          v11 = 4294966996;
        }
      }

      else
      {
        v11 = 4294966995;
      }

      mach_msg_destroy(msg);
      return v11;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  return v11;
}

uint64_t sub_10002C674(int a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v16 = 0u;
  v15 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x465400000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = reply_port;
  }

  v10 = mach_msg(msg, 3, 0x18u, 0x44u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 18104)
      {
        if ((*msg & 0x80000000) != 0)
        {
          v11 = 4294966996;
          if (*&msg[24] == 1 && *&msg[4] == 60 && !*&msg[8] && BYTE3(v15) == 1)
          {
            v12 = DWORD1(v15);
            if (DWORD1(v15) == v16)
            {
              v11 = 0;
              *a2 = *&msg[28];
              *a3 = v12;
              *a4 = DWORD1(v16);
              return v11;
            }
          }
        }

        else if (*&msg[4] == 36)
        {
          v11 = 4294966996;
          if (*&msg[32])
          {
            if (*&msg[8])
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&msg[32];
            }
          }
        }

        else
        {
          v11 = 4294966996;
        }
      }

      else
      {
        v11 = 4294966995;
      }

      mach_msg_destroy(msg);
      return v11;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  return v11;
}

uint64_t sub_10002C84C(mach_port_t a1, uint64_t a2, int a3, int a4, int *a5)
{
  v14 = 1;
  v15 = a2;
  v16 = 16777472;
  v17 = a3;
  v18 = NDR_record;
  v19 = a3;
  v20 = a4;
  reply_port = mig_get_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  *&msg.msgh_voucher_port = 0x465500000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v9 = mach_msg(&msg, 3, 0x3Cu, 0x30u, msgh_local_port, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v10;
    }

    if (msg.msgh_id == 71)
    {
      v10 = 4294966988;
    }

    else if (msg.msgh_id == 18105)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 40)
        {
          if (!msg.msgh_remote_port)
          {
            v10 = HIDWORD(v15);
            if (!HIDWORD(v15))
            {
              *a5 = v16;
              return v10;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v11 = 1;
          }

          else
          {
            v11 = HIDWORD(v15) == 0;
          }

          if (v11)
          {
            v10 = 4294966996;
          }

          else
          {
            v10 = HIDWORD(v15);
          }

          goto LABEL_24;
        }
      }

      v10 = 4294966996;
    }

    else
    {
      v10 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v10;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v10;
}

uint64_t sub_10002C9FC(mach_port_t a1, int a2, _DWORD *a3)
{
  v13 = 0u;
  v11.msgh_size = 0;
  v12 = NDR_record;
  LODWORD(v13) = a2;
  reply_port = mig_get_reply_port();
  v11.msgh_remote_port = a1;
  v11.msgh_local_port = reply_port;
  v11.msgh_bits = 5395;
  *&v11.msgh_voucher_port = 0x465600000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v11);
    msgh_local_port = v11.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v7 = mach_msg(&v11, 3, 0x24u, 0x30u, msgh_local_port, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(v11.msgh_local_port);
      return v8;
    }

    if (v11.msgh_id == 71)
    {
      v8 = 4294966988;
    }

    else if (v11.msgh_id == 18106)
    {
      if ((v11.msgh_bits & 0x80000000) == 0)
      {
        if (v11.msgh_size == 40)
        {
          if (!v11.msgh_remote_port)
          {
            v8 = v13;
            if (!v13)
            {
              *a3 = DWORD1(v13);
              return v8;
            }

            goto LABEL_24;
          }
        }

        else if (v11.msgh_size == 36)
        {
          if (v11.msgh_remote_port)
          {
            v9 = 1;
          }

          else
          {
            v9 = v13 == 0;
          }

          if (v9)
          {
            v8 = 4294966996;
          }

          else
          {
            v8 = v13;
          }

          goto LABEL_24;
        }
      }

      v8 = 4294966996;
    }

    else
    {
      v8 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v11);
    return v8;
  }

  mig_put_reply_port(v11.msgh_local_port);
  return v8;
}

uint64_t sub_10002CB78(int a1, _DWORD *a2)
{
  memset(&reply_port_12[4], 0, 28);
  reply_port = 0;
  v4 = mig_get_reply_port();
  reply_port_4 = a1;
  reply_port_8 = v4;
  v10 = 5395;
  *reply_port_12 = 0x465700000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v10);
    v5 = reply_port_8;
  }

  else
  {
    v5 = v4;
  }

  v6 = mach_msg(&v10, 3, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(reply_port_8);
      return v7;
    }

    if (*&reply_port_12[4] == 71)
    {
      v7 = 4294966988;
    }

    else if (*&reply_port_12[4] == 18107)
    {
      if ((v10 & 0x80000000) == 0)
      {
        if (reply_port == 40)
        {
          if (!reply_port_4)
          {
            v7 = *&reply_port_12[16];
            if (!*&reply_port_12[16])
            {
              *a2 = *&reply_port_12[20];
              return v7;
            }

            goto LABEL_24;
          }
        }

        else if (reply_port == 36)
        {
          if (reply_port_4)
          {
            v8 = 1;
          }

          else
          {
            v8 = *&reply_port_12[16] == 0;
          }

          if (v8)
          {
            v7 = 4294966996;
          }

          else
          {
            v7 = *&reply_port_12[16];
          }

          goto LABEL_24;
        }
      }

      v7 = 4294966996;
    }

    else
    {
      v7 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v10);
    return v7;
  }

  mig_put_reply_port(reply_port_8);
  return v7;
}

uint64_t sub_10002CCE0(int a1, _DWORD *a2)
{
  memset(&reply_port_12[4], 0, 28);
  reply_port = 0;
  v4 = mig_get_reply_port();
  reply_port_4 = a1;
  reply_port_8 = v4;
  v10 = 5395;
  *reply_port_12 = 0x465800000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v10);
    v5 = reply_port_8;
  }

  else
  {
    v5 = v4;
  }

  v6 = mach_msg(&v10, 3, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(reply_port_8);
      return v7;
    }

    if (*&reply_port_12[4] == 71)
    {
      v7 = 4294966988;
    }

    else if (*&reply_port_12[4] == 18108)
    {
      if ((v10 & 0x80000000) == 0)
      {
        if (reply_port == 40)
        {
          if (!reply_port_4)
          {
            v7 = *&reply_port_12[16];
            if (!*&reply_port_12[16])
            {
              *a2 = *&reply_port_12[20];
              return v7;
            }

            goto LABEL_24;
          }
        }

        else if (reply_port == 36)
        {
          if (reply_port_4)
          {
            v8 = 1;
          }

          else
          {
            v8 = *&reply_port_12[16] == 0;
          }

          if (v8)
          {
            v7 = 4294966996;
          }

          else
          {
            v7 = *&reply_port_12[16];
          }

          goto LABEL_24;
        }
      }

      v7 = 4294966996;
    }

    else
    {
      v7 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v10);
    return v7;
  }

  mig_put_reply_port(reply_port_8);
  return v7;
}

uint64_t sub_10002CE48(mach_port_t a1, int a2, _DWORD *a3)
{
  v13 = 0u;
  v11.msgh_size = 0;
  v12 = NDR_record;
  LODWORD(v13) = a2;
  reply_port = mig_get_reply_port();
  v11.msgh_remote_port = a1;
  v11.msgh_local_port = reply_port;
  v11.msgh_bits = 5395;
  *&v11.msgh_voucher_port = 0x465900000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v11);
    msgh_local_port = v11.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v7 = mach_msg(&v11, 3, 0x24u, 0x30u, msgh_local_port, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(v11.msgh_local_port);
      return v8;
    }

    if (v11.msgh_id == 71)
    {
      v8 = 4294966988;
    }

    else if (v11.msgh_id == 18109)
    {
      if ((v11.msgh_bits & 0x80000000) == 0)
      {
        if (v11.msgh_size == 40)
        {
          if (!v11.msgh_remote_port)
          {
            v8 = v13;
            if (!v13)
            {
              *a3 = DWORD1(v13);
              return v8;
            }

            goto LABEL_24;
          }
        }

        else if (v11.msgh_size == 36)
        {
          if (v11.msgh_remote_port)
          {
            v9 = 1;
          }

          else
          {
            v9 = v13 == 0;
          }

          if (v9)
          {
            v8 = 4294966996;
          }

          else
          {
            v8 = v13;
          }

          goto LABEL_24;
        }
      }

      v8 = 4294966996;
    }

    else
    {
      v8 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v11);
    return v8;
  }

  mig_put_reply_port(v11.msgh_local_port);
  return v8;
}

uint64_t sub_10002CFC4(mach_port_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7, int a8, int a9, _DWORD *a10, _DWORD *a11)
{
  v19 = 4;
  v18.msgh_size = 0;
  v20 = a2;
  v21 = 16777472;
  v22 = a3;
  v23 = a4;
  v24 = 1245184;
  v25 = a5;
  v26 = 1114112;
  v27 = a6;
  v28 = 1245184;
  v29 = NDR_record;
  v30 = a3;
  v31 = a7;
  v32 = a8;
  v33 = a9;
  reply_port = mig_get_reply_port();
  v18.msgh_remote_port = a1;
  v18.msgh_local_port = reply_port;
  v18.msgh_bits = -2147478253;
  *&v18.msgh_voucher_port = 0x465D00000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v18);
    msgh_local_port = v18.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v14 = mach_msg(&v18, 3, 0x68u, 0x3Cu, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v18.msgh_local_port);
  }

  else
  {
    if (!v14)
    {
      if (v18.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (v18.msgh_id == 18113)
      {
        if ((v18.msgh_bits & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (v19 == 1 && v18.msgh_size == 52 && !v18.msgh_remote_port && HIWORD(v21) << 16 == 1114112)
          {
            v15 = 0;
            v16 = HIDWORD(v23);
            *a10 = v20;
            *a11 = v16;
            return v15;
          }
        }

        else if (v18.msgh_size == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v20))
          {
            if (v18.msgh_remote_port)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = HIDWORD(v20);
            }
          }
        }

        else
        {
          v15 = 4294966996;
        }
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(&v18);
      return v15;
    }

    mig_dealloc_reply_port(v18.msgh_local_port);
  }

  return v15;
}

uint64_t sub_10002D1CC(int a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _OWORD *a5)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *&msg[4] = 0;
  *&msg[20] = 0u;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x465F00000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(msg);
    v11 = *&msg[12];
  }

  else
  {
    v11 = reply_port;
  }

  v12 = mach_msg(msg, 50331651, 0x18u, 0x84u, v11, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) <= 0xE && ((1 << (v12 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    return v13;
  }

  if (v12)
  {
    mig_dealloc_reply_port(*&msg[12]);
    return v13;
  }

  if (*&msg[20] == 71)
  {
    v13 = 4294966988;
    goto LABEL_28;
  }

  if (*&msg[20] != 18115)
  {
    v13 = 4294966995;
    goto LABEL_28;
  }

  if ((*msg & 0x80000000) == 0)
  {
    if (*&msg[4] == 36)
    {
      v13 = 4294966996;
      if (*&msg[32])
      {
        if (*&msg[8])
        {
          v13 = 4294966996;
        }

        else
        {
          v13 = *&msg[32];
        }
      }
    }

    else
    {
      v13 = 4294966996;
    }

    goto LABEL_28;
  }

  v13 = 4294966996;
  if (*&msg[24] != 2 || *&msg[4] != 64 || *&msg[8] || WORD1(v18) << 16 != 1114112 || HIWORD(v18) << 16 != 1114112)
  {
LABEL_28:
    mach_msg_destroy(msg);
    return v13;
  }

  if (HIDWORD(v19) || v20 < 0x20)
  {
    return 4294966987;
  }

  v13 = 0;
  v15 = DWORD1(v18);
  *a2 = *&msg[28];
  *a3 = v15;
  *a4 = DWORD2(v19);
  v16 = v22;
  *a5 = v21;
  a5[1] = v16;
  return v13;
}

uint64_t sub_10002D3BC(mach_port_t a1, int a2, void *a3, _DWORD *a4, _DWORD *a5, _OWORD *a6)
{
  memset(v22, 0, sizeof(v22));
  v21 = 0u;
  v20 = 0u;
  msg.msgh_size = 0;
  *v19 = NDR_record;
  *&v19[8] = a2;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x466000000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v13 = mach_msg(&msg, 50331651, 0x24u, 0x80u, msgh_local_port, 0, 0);
  v14 = v13;
  if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v14;
  }

  if (v13)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v14;
  }

  if (msg.msgh_id == 71)
  {
    v14 = 4294966988;
    goto LABEL_28;
  }

  if (msg.msgh_id != 18116)
  {
    v14 = 4294966995;
    goto LABEL_28;
  }

  if ((msg.msgh_bits & 0x80000000) == 0)
  {
    if (msg.msgh_size == 36)
    {
      v14 = 4294966996;
      if (*&v19[8])
      {
        if (msg.msgh_remote_port)
        {
          v14 = 4294966996;
        }

        else
        {
          v14 = *&v19[8];
        }
      }
    }

    else
    {
      v14 = 4294966996;
    }

    goto LABEL_28;
  }

  v14 = 4294966996;
  if (*v19 != 1 || msg.msgh_size != 60 || msg.msgh_remote_port || BYTE3(v20) != 1 || (v15 = DWORD1(v20), DWORD1(v20) != v21))
  {
LABEL_28:
    mach_msg_destroy(&msg);
    return v14;
  }

  if (DWORD2(v21) || HIDWORD(v21) < 0x20)
  {
    return 4294966987;
  }

  v14 = 0;
  *a3 = *&v19[4];
  *a4 = v15;
  *a5 = DWORD1(v21);
  v17 = *&v22[28];
  *a6 = *&v22[12];
  a6[1] = v17;
  return v14;
}

uint64_t sub_10002D5F0(int a1, _DWORD *a2, _OWORD *a3)
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v14 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x466100000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = reply_port;
  }

  v8 = mach_msg(msg, 50331651, 0x18u, 0x6Cu, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    return v9;
  }

  if (v8)
  {
    mig_dealloc_reply_port(*&msg[12]);
    return v9;
  }

  if (*&msg[20] == 71)
  {
    v9 = 4294966988;
LABEL_24:
    mach_msg_destroy(msg);
    return v9;
  }

  if (*&msg[20] != 18117)
  {
    v9 = 4294966995;
    goto LABEL_24;
  }

  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (*&msg[4] != 40)
  {
    if (*&msg[4] == 36)
    {
      if (*&msg[8])
      {
        v10 = 1;
      }

      else
      {
        v10 = *&msg[32] == 0;
      }

      if (v10)
      {
        v9 = 4294966996;
      }

      else
      {
        v9 = *&msg[32];
      }

      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (*&msg[8])
  {
LABEL_23:
    v9 = 4294966996;
    goto LABEL_24;
  }

  v9 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_24;
  }

  if (DWORD1(v14) || DWORD2(v14) < 0x20)
  {
    return 4294966987;
  }

  v9 = 0;
  *a2 = v14;
  v12 = *(&v15[1] + 8);
  *a3 = *(v15 + 8);
  a3[1] = v12;
  return v9;
}