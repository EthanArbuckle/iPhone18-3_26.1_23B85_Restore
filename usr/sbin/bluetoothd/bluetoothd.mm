void sub_1000031B0()
{
  pthread_mutex_lock(&stru_100B5AC18);
  v0 = pthread_self();
  pthread_getname_np(v0, &byte_100B5AC58, 0x40uLL);
  if (!byte_100B5AC58)
  {
    dispatch_queue_get_label(0);
    __strlcpy_chk();
    strtok(&byte_100B5AC58, "-");
  }

  if (!atomic_fetch_add_explicit(&dword_100B5AD64, 1u, memory_order_relaxed))
  {
    v1 = qword_100B5AD68;
    v2 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(v1, v2, 0x2540BE400uLL, 0x3B9ACA00uLL);
    v3 = qword_100B5AD68;
    *dispatch_get_context(qword_100B5AD68) = 0;

    dispatch_resume(v3);
  }
}

uint64_t sub_1000032AC(uint64_t a1)
{
  v16 = 0;
  if (a1 && *a1 && *(a1 + 12) != -1)
  {
    strncpy(__dst, (a1 + 17), 3uLL);
    __strcat_chk();
    sub_100304AF8("launching %s\n", __dst);
    sub_1001C5D20(__dst);
    v2 = *(a1 + 12);
    os_channel_ring_id();
    os_channel_rx_ring();
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    memset(&eventlist, 0, sizeof(eventlist));
    if (kevent(v2, 0, 0, &eventlist, 1, 0) == -1 || eventlist.filter != 0xFFFF)
    {
LABEL_24:
      sub_100304AF8("%s: kevent error on sw_kq_read\n", "skywalk_read_loop");
    }

    else
    {
      while (1)
      {
        if ((byte_100B55A58 & 1) == 0)
        {
          sub_1000031B0();
        }

        if (!*a1)
        {
          break;
        }

        v3 = os_channel_available_slot_count();
        next_slot = os_channel_get_next_slot();
        if (v3 && next_slot)
        {
          v5 = 1;
          do
          {
            if ((byte_100B55A59 & 1) == 0)
            {
              if (byte_100B55A58)
              {
                sub_1000040DC();
              }

              else
              {
                v9[0] = 0;
                v9[1] = 0;
                v6 = sub_100003560(*(a1 + 16), v12, WORD1(v11), v9);
                sub_10000394C(*(a1 + 16), v12, v6, v9);
              }
            }

            v7 = os_channel_get_next_slot();
            if (v5 >= v3)
            {
              break;
            }

            ++v5;
          }

          while (v7);
          if (os_channel_advance_slot())
          {
            sub_100304AF8("%s: failed to advance slot - %d\n");
            break;
          }

          if (os_channel_sync())
          {
            sub_100304AF8("%s: os_channel_sync rx failed - %d\n");
            break;
          }
        }

        if ((byte_100B55A58 & 1) == 0)
        {
          sub_10000C198();
        }

        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        memset(&eventlist, 0, sizeof(eventlist));
        if (kevent(v2, 0, 0, &eventlist, 1, 0) == -1 || eventlist.filter != 0xFFFF)
        {
          goto LABEL_24;
        }
      }

      sub_10000C198();
    }

    sub_100304AF8("exiting skywalk_read_loop for %s\n");
  }

  else
  {
    sub_100304AF8("%s: invalid input parameter\n");
  }

  return 0;
}

uint64_t sub_100003560(int a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  *a4 = mach_continuous_time();
  *(a4 + 8) = 0;
  v8 = sub_100003668(a1, a2, a3);
  if (a3 > v8)
  {
    v9 = v8;
    if (v8 + 8 == a3)
    {
      v10 = a2[v8 + 2];
      if (v10 < 0)
      {
        *(a4 + 8) = 1;
        if ((v10 & 0x40) == 0)
        {
          goto LABEL_5;
        }
      }

      else if ((a2[v8 + 2] & 0x40) == 0)
      {
LABEL_5:
        if ((v10 & 0x80) == 0 && (v10 & 0x20) != 0)
        {
          *(a4 + 9) = 1;
          *(a4 + 12) = *&a2[(v8 + 3)];
        }

        goto LABEL_11;
      }

      v11 = mach_continuous_time();
      *a4 = v11 - MillisecondsToUpTicks();
LABEL_11:
      sub_1000040DC();
      return v9;
    }

    sub_100304AF8("%s: invalid packet length received\n", "pcie_transport_decode_hci_packet_attrs_from_footer");
  }

  return a3;
}

uint64_t sub_100003668(int a1, unsigned __int8 *a2, unsigned int a3)
{
  if (a1 <= 4)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        if (a3 >= 3)
        {
          LOWORD(a3) = a2[2] + 3;
        }
      }

      else if (a1 == 4 && a3 >= 2)
      {
        LOWORD(a3) = a2[1] + 2;
      }

      return a3;
    }

    goto LABEL_12;
  }

  if (a1 > 6)
  {
    if (a1 == 7)
    {
      if (a3)
      {
        LOWORD(a3) = *a2 + 1;
      }

      return a3;
    }

    if (a1 != 243)
    {
      return a3;
    }

    goto LABEL_12;
  }

  if (a1 != 5)
  {
LABEL_12:
    if (a3 >= 4)
    {
      v3 = *(a2 + 1);
LABEL_16:
      LOWORD(a3) = v3 + 4;
      return a3;
    }

    return a3;
  }

  if (a3 >= 4)
  {
    v3 = a2[2] | ((a2[3] & 0xF) << 8);
    goto LABEL_16;
  }

  return a3;
}

void sub_10000381C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000394C(uint64_t a1, unsigned __int8 *a2, NSObject *a3, uint64_t a4)
{
  v5 = a3;
  if (DWORD2(xmmword_100BCE2E0))
  {
    v4 = a4;
    byte_100B5FC50 = a1;
    if (a3)
    {
      __memmove_chk();
    }

LABEL_12:
    sub_1000040DC();
    if (sub_100004790() && sub_10009B9DC() != 8 && sub_10009B9DC() != 7)
    {
      return;
    }

    if (a1 > 4)
    {
      if (a1 <= 6)
      {
        if (a1 != 5)
        {
LABEL_22:
          ++dword_100B5FC44;
          if (dword_100BCE0C0 == 2)
          {
            sub_1000B05A4(a2, v5, a1, v4);
            goto LABEL_55;
          }

          if (!sub_10000C240())
          {
            return;
          }

          sub_10000AF54("OI_HCIIfc_DataReceived, HCI not initialized - discarding ACL packet State %d, Numbytes %d", v31, v32, v33, v34, v35, v36, v37, dword_100BCE0C0);
          v38 = sub_10000C050(0x2Eu);
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            return;
          }

          goto LABEL_71;
        }

        if (dword_100BCE0C0 == 2)
        {
          sub_100258BA4(a2, v5, v4);
          goto LABEL_55;
        }

        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("OI_HCIIfc_DataReceived, HCI not initialized - discarding SCO packet State %d, Numbytes %d", v48, v49, v50, v51, v52, v53, v54, dword_100BCE0C0);
        v55 = sub_10000C050(0x2Eu);
        if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          return;
        }

LABEL_71:
        sub_10080F604();
        return;
      }

      if (a1 == 7)
      {
        if (*(v4 + 8) == 1)
        {
          v95 = 0;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          *__str = 0u;
          v90 = 0u;
          snprintf(__str, 0x64uLL, "BT Controller HCI_LMP wakeupCause (len=0x%x)", *a2);
          sub_100304AF8("OI_HCIIfc_DataReceived: %s", __str);
          sub_1001C499C(__str);
        }

        if (dword_100BCE0C0 == 2)
        {
          if (v5 - 1 == *a2)
          {
            if (off_100BCE0A8)
            {
              off_100BCE0A8(7);
            }

            goto LABEL_55;
          }

          if (!sub_10000C240())
          {
            return;
          }

          sub_10000AF54("OI_HCIIfc_DataReceived, Got incorrect packet on LMP channel: expected %d gotfirst 3 bytes %d %d %d", v81, v82, v83, v84, v85, v86, v87, v5);
          v88 = sub_10000C050(0x2Eu);
          if (!os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            return;
          }
        }

        else
        {
          if (!sub_10000C240())
          {
            return;
          }

          sub_10000AF54("OI_HCIIfc_DataReceived, HCI not initialized - discarding ACI packet State %d, Numbytes %d", v56, v57, v58, v59, v60, v61, v62, dword_100BCE0C0);
          v63 = sub_10000C050(0x2Eu);
          if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            return;
          }
        }

        sub_10080F604();
        return;
      }

      if (a1 != 243)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (a1 <= 2)
      {
        if (a1 == 1)
        {
          if (!sub_10000C240())
          {
            goto LABEL_54;
          }

          sub_10000AF54("OI_HCIIfc_DataReceived, invalid dataType %d, NumBytes %d", v15, v16, v17, v18, v19, v20, v21, 1);
          v22 = sub_10000C050(0x2Eu);
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_54;
          }

LABEL_53:
          sub_10080F604();
LABEL_54:
          sub_1000D660C();
          goto LABEL_55;
        }

        if (a1 != 2)
        {
LABEL_51:
          if (!sub_10000C240())
          {
            goto LABEL_54;
          }

          sub_10000AF54("OI_HCIIfc_DataReceived, unknown dataType %d, state %d", v39, v40, v41, v42, v43, v44, v45, a1);
          v46 = sub_10000C050(0x2Eu);
          if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        }

        goto LABEL_22;
      }

      if (a1 != 3)
      {
        if (*(v4 + 8) == 1)
        {
          v95 = 0;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          *__str = 0u;
          v90 = 0u;
          snprintf(__str, 0x64uLL, "BT Controller HCI_EVENT wakeupCause (eventCode=0x%x paramLen=%d)", *a2, a2[1]);
          sub_100304AF8("OI_HCIIfc_DataReceived: %s", __str);
          sub_1001C499C(__str);
        }

        if (v5 < 3)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Short event, numBytes = %d", v64, v65, v66, v67, v68, v69, v70, v5);
            v71 = sub_10000C050(0x2Eu);
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }
        }

        else
        {
          ++dword_100B5FC3C;
          if (off_100BCE0A8)
          {
            off_100BCE0A8(4);
            goto LABEL_55;
          }

          if (*a2 == 19)
          {
            sub_1000BB1A4(a2, v5, v4);
LABEL_96:
            sub_10000C1F8();
            goto LABEL_55;
          }

          if (!off_100BCE138 || off_100BCE138(a2, v5, v4))
          {
            sub_1000047E8(a2, v5, v4);
            goto LABEL_96;
          }
        }

LABEL_55:
        if (byte_100B5FC55 != 1)
        {
          return;
        }

        if (a1 > 4)
        {
          if (a1 <= 6)
          {
            if (a1 == 5)
            {
              v47 = "OI_HCI_ISO_DATA_PACKET";
            }

            else
            {
              v47 = "OI_HCI_ACL_DATA_WITH_TS_PACKET";
            }

            goto LABEL_83;
          }

          if (a1 == 7)
          {
            v47 = "HCI_ACI_PACKET_TYPE";
            goto LABEL_83;
          }

          if (a1 == 243)
          {
            v47 = "OI_HCI_SCO_HDR_DATA_PACKET";
            goto LABEL_83;
          }
        }

        else
        {
          if (a1 > 2)
          {
            if (a1 == 3)
            {
              v47 = "OI_HCI_SCO_DATA_PACKET";
            }

            else
            {
              v47 = "OI_HCI_EVENT_PACKET";
            }

            goto LABEL_83;
          }

          if (a1 == 1)
          {
            v47 = "OI_HCI_COMMAND_PACKET";
            goto LABEL_83;
          }

          if (a1 == 2)
          {
            v47 = "OI_HCI_ACL_DATA_PACKET";
LABEL_83:
            if (sub_10000C240())
            {
              sub_10000AF54("OI_HCIIfc_DataReceived asserting wake force for %s", v72, v73, v74, v75, v76, v77, v78, v47);
              v79 = sub_10000C050(0x2Eu);
              if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
              {
                v80 = sub_10000C0FC();
                *__str = 136446210;
                *&__str[4] = v80;
                _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, " %{public}s", __str, 0xCu);
              }
            }

            sub_1001BB918(v47);
            return;
          }
        }

        v47 = "OI_HCI_UNKNOWN_TYPE";
        goto LABEL_83;
      }
    }

    ++dword_100B5FC4C;
    if (dword_100BCE0C0 == 2)
    {
      sub_1002589A0(a2, v5, v4);
      goto LABEL_55;
    }

    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("OI_HCIIfc_DataReceived, HCI not initialized - discarding SCO packet State %d, Numbytes %d", v23, v24, v25, v26, v27, v28, v29, dword_100BCE0C0);
    v30 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_71;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("OI_HCIIfc_DataReceived, HCI not initialized - discarding data Type %d, NumBytes %d", v8, v9, v10, v11, v12, v13, v14, a1);
    v5 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  if (a1 == 4 && a2 && *a2 == 16)
  {
    sub_1000C52F4(650);
    goto LABEL_12;
  }
}

void sub_1000040DC()
{
  v0 = __chkstk_darwin();
  v3 = v2;
  v4 = v1;
  v5 = v0;
  if (v2 == 3 && (byte_100B5C6E0 & 1) == 0)
  {
    if (v1 < 3)
    {
      return;
    }

    v6 = 0;
    LODWORD(v4) = 3;
    goto LABEL_46;
  }

  if (v2 == 243 && (byte_100B5C6E0 & 1) == 0)
  {
    if (v1 < 4)
    {
      return;
    }

    v6 = 0;
    LODWORD(v4) = 4;
    goto LABEL_46;
  }

  if (v2 != 5 || (byte_100B5C6E0 & 1) != 0)
  {
    v6 = 0;
    v7 = v2 == 2;
    if (v2 != 2 || (byte_100B5C6E1 & 1) != 0)
    {
LABEL_36:
      if (v7 && v4 >= 8 && (byte_100B5C6E7 & 1) == 0 && sub_1000B0514(v5, 2))
      {
        v6 = 8;
      }

      if (v3 == 4 && (byte_100B5C6E5 & 1) == 0 && sub_1000043B0(v5, v4) >= 1)
      {
        bzero(v11, 0x20006uLL);
        __memcpy_chk();
        v9 = sub_100004468(4, 0);
        sub_1000045A8(v11, v4, 0, v9);
        return;
      }

      goto LABEL_46;
    }

    if (v1 >= 0xB)
    {
      v7 = 1;
      if (sub_1000B0514(v0, 1))
      {
        v6 = 11;
        goto LABEL_36;
      }
    }

    if (v4 >= 0xAu && (v5[8] & 0xFC) == 0xA0)
    {
      v8 = v5[9];
      if (v8 == 17)
      {
        if (v4 == 11 && (v5[10] & 0xEF) == 0)
        {
          goto LABEL_49;
        }
      }

      else if (v8 == 1 && (v4 & 0xFE) == 0x12 && !v5[11])
      {
LABEL_49:
        v6 = 8;
        goto LABEL_35;
      }
    }

    v6 = 0;
LABEL_35:
    v7 = 1;
    goto LABEL_36;
  }

  if (v1 < 0xD)
  {
    if (v1 >= 9)
    {
      if ((v0[1] & 0x40) != 0)
      {
        LODWORD(v4) = v1;
      }

      else
      {
        LODWORD(v4) = 8;
      }
    }
  }

  else
  {
    if ((v0[1] & 0x40) != 0)
    {
      v6 = 0;
      LODWORD(v4) = 12;
      goto LABEL_46;
    }

    LODWORD(v4) = 8;
  }

  v6 = 0;
LABEL_46:
  v10 = sub_100004468(v3, 0);

  sub_1000045A8(v5, v4, v6, v10);
}

uint64_t sub_1000043B0(void *a1, size_t __n)
{
  v2 = __n;
  v4 = memchr(a1, 3, __n);
  if (!v4)
  {
    return -1;
  }

  v5 = a1;
  while ((a1 - v4 + v2) < 8u)
  {
    if (!(a1 - v4 + v2))
    {
      v6 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v5 = v4 + 1;
    v6 = (a1 - v4 + v2 - 1);
LABEL_8:
    v4 = memchr(v5, 3, v6);
    if (!v4)
    {
      return -1;
    }
  }

  if (*v4 != 0xFD6F1617FD6F0303)
  {
    goto LABEL_7;
  }

  return (8 - (a1 - v4));
}

uint64_t sub_100004468(uint64_t result, int a2)
{
  if (!result && (a2 & 1) != 0)
  {
    return 255;
  }

  v2 = a2;
  if (result != 1)
  {
    v2 = 0;
  }

  if (v2)
  {
    return 0;
  }

  if (result == 1 && !a2)
  {
    return 1;
  }

  v3 = a2;
  if (result != 2)
  {
    v3 = 0;
  }

  if (v3)
  {
    return 2;
  }

  if (result == 2 && !a2)
  {
    return 3;
  }

  v4 = a2;
  if (result != 3)
  {
    v4 = 0;
  }

  if (v4)
  {
    return 8;
  }

  if (result == 3 && !a2)
  {
    return 9;
  }

  v5 = a2;
  if (result != 243)
  {
    v5 = 0;
  }

  if (v5)
  {
    return 24;
  }

  if (result == 243 && !a2)
  {
    return 25;
  }

  if (result == 4)
  {
    return 1;
  }

  v6 = a2;
  if (result != 5)
  {
    v6 = 0;
  }

  if (v6)
  {
    return 12;
  }

  if (result == 5 && !a2)
  {
    return 13;
  }

  if (result <= 31)
  {
    if (result == 7)
    {
      return 10;
    }

    if (result == 8 && (a2 & 1) == 0)
    {
      return 11;
    }

    return 255;
  }

  if (result != 32 && result != 33 && result != 34)
  {
    return 255;
  }

  return result;
}

void sub_1000045A8(const void *a1, signed int a2, signed int a3, unsigned int a4)
{
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = a2;
  }

  v8 = sub_10000479C();
  if (dword_100B52010 == -1)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1;
  }

  v10 = qword_100B5C828;
  if ((v9 & 1) != 0 || qword_100B5C828)
  {
    v11 = malloc_type_malloc((v7 + 13), 0x784918BEuLL);
    if (v11)
    {
      v12 = v11;
      v13 = malloc_type_malloc((a2 + 13), 0x545BA93uLL);
      if (v13)
      {
        v14 = v13;
        v15 = sub_1000A5B88(v13, (a2 + 13), a1, a2, a4);
        v16 = sub_1000A5B88(v12, (v7 + 13), a1, v7, a4);
        if (v15 | v16)
        {
          v17 = v16;
          if (v10)
          {
            v18 = word_100B5C830;
            if (word_100B5C830 + v16 <= 0x800)
            {
              memcpy((qword_100B5C828 + word_100B5C830), v12, v16);
              word_100B5C830 = v18 + v17;
            }
          }

          if (v9)
          {
            if (qword_100B5C8A0 != -1)
            {
              sub_100812D28();
            }

            block[0] = _NSConcreteStackBlock;
            block[1] = 0x40000000;
            block[2] = sub_1000A5D64;
            block[3] = &unk_100AE5940;
            block[4] = v12;
            block[5] = v14;
            v21 = v17;
            v22 = v15;
            dispatch_async(qword_100B5C898, block);
            return;
          }
        }

        free(v12);
        v19 = v14;
      }

      else
      {
        v19 = v12;
      }

      free(v19);
    }
  }
}

uint64_t sub_10000479C()
{
  if (qword_100B5C8D8 && CFSetGetCount(qword_100B5C8D8) > 0)
  {
    return 1;
  }

  result = qword_100B5C8E0;
  if (qword_100B5C8E0)
  {
    return CFSetGetCount(qword_100B5C8E0) > 0;
  }

  return result;
}

void sub_1000047E8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v333 = 0;
  v334 = 0;
  if (a2 > 1)
  {
    if (!a1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 2063, "buf");
    }

    v333 = a1;
    LOWORD(v334) = a2;
    BYTE6(v334) = 1;
    WORD1(v334) = a2;
    v14 = *a1;
    WORD2(v334) = 2;
    v15 = a1[1];
    v16 = sub_100005FEC(v14);
    if (!v16)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("%! (%d)", v32, v33, v34, v35, v36, v37, v38, 607);
        v39 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v30 = off_100B5FC68;
      if (off_100B5FC68)
      {
        v31 = 607;
        goto LABEL_18;
      }

      sub_1000C52F4(607);
LABEL_293:
      sub_1000C52F4(651);
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c");
LABEL_294:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1909, "ByteStream_NumReadBytesAvail((*pBs)) >= (sizeof(linkKey))");
    }

    v21 = v16;
    if (a2 - 2 < v15)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("event data underrun, paramTotalLen: %d, bytesAvail: %d, eventId: %d", v22, v23, v24, v25, v26, v27, v28, v15);
        v29 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v30 = off_100B5FC68;
      if (off_100B5FC68)
      {
        v31 = 651;
LABEL_18:
        v30(v31, v14);
        return;
      }

      goto LABEL_293;
    }

    if (dword_100BCE0C0 <= 6)
    {
      if (((1 << dword_100BCE0C0) & 0x33) != 0)
      {
        if ((v14 > 0x15 || ((1 << v14) & 0x20C000) == 0) && v14 != 255)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("HCI Device initialization in progress, ignoring event %@", v40, v41, v42, v43, v44, v45, v46, a1);
            v47 = sub_10000C050(0x2Eu);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_4;
            }
          }

          return;
        }
      }

      else if (((1 << dword_100BCE0C0) & 0x48) != 0)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("HCI device initialation/reset failed, ignoring event %@", v48, v49, v50, v51, v52, v53, v54, a1);
          v55 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_4;
          }
        }

        return;
      }
    }

    if (!v16[1])
    {
      LOWORD(v335) = 0;
      WORD2(v338[0]) = 0;
      LODWORD(v338[0]) = 0;
      *&v344 = 0;
      v342 = 0u;
      v343 = 0u;
      *buf = 0u;
      v341 = 0u;
      if (*(a3 + 8) == 1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("_genericEventHandler: wakeupCause HCI_EVENT Packet from BT Controller (id=0x%02x paramLen=%d)\n", v77, v78, v79, v80, v81, v82, v83, *v21);
          v84 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
          {
            *v364 = 136446210;
            *&v364[4] = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, " %{public}s", v364, 0xCu);
          }
        }
      }

      v85 = sub_1000DBBBC(buf, v21, &v333, v15, &v335, v338);
      if (v85)
      {
        v86 = v85;
        sub_100257EDC(v21);
        v87 = *(v21 + 1);
        if (!v87 || *v87 != 115)
        {
          return;
        }

        *buf = v86;
      }

      else
      {
        sub_1000DC4E8(v21, v335, v338, 1);
      }

      v98 = *v21;
      v99 = *(a3 + 8);
      v100 = *a3;
      v101 = buf;
LABEL_191:
      sub_1000DC68C(v98, v101, v99, v100, v56, v17, v18, v19, v20);
      return;
    }

    v339 = 0;
    v56 = 0uLL;
    memset(v338, 0, sizeof(v338));
    if (*(a3 + 8) == 1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("_specialEventHandler: wakeupCause HCI_EVENT Packet from BT Controller (id=0x%02x paramLen=%d)\n", v57, v58, v59, v17, v18, v19, v20, *v21);
        v60 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          *&buf[4] = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }
    }

    v61 = *(a3 + 8);
    v62 = *v21;
    if (*v21 <= 0x18u)
    {
      if (*v21 > 0xDu)
      {
        if (*v21 <= 0x12u)
        {
          if (v62 != 14)
          {
            if (v62 != 15)
            {
              return;
            }

            *buf = 0u;
            v341 = 0u;
            if (v15 != 4)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("handle_CommandStatus bad parm length: expected 4, got %d", v139, v140, v141, v142, v143, v144, v145, v15);
                v146 = sub_10000C050(0x2Eu);
                if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
                {
                  sub_1000E09C0();
                }
              }

              goto LABEL_145;
            }

            v63 = WORD2(v334);
            if (WORD1(v334) > WORD2(v334))
            {
              if (BYTE6(v334) == 1)
              {
                ++WORD2(v334);
                v64 = sub_100022244(v333[v63]);
                v65 = WORD2(v334);
                if (WORD1(v334) <= WORD2(v334))
                {
                  v328 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                }

                else
                {
                  if (BYTE6(v334) == 1)
                  {
                    ++WORD2(v334);
                    byte_100BCE141 = v333[v65];
                    if (WORD1(v334) - (v65 + 1) <= 1)
                    {
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1746, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
                    }

                    v66 = v64;
                    v67 = *&v333[v65 + 1];
                    WORD2(v334) = v65 + 3;
                    if (sub_10002223C())
                    {
                      sub_100241B0C(v67, v66 == 712);
                    }

                    if (!v67)
                    {
                      goto LABEL_145;
                    }

                    v68 = v67 & 0xFC00;
                    if (dword_100BCE0C0 != 2 && !v66 && v68 != 64512)
                    {
                      if (!sub_10000C240())
                      {
                        return;
                      }

                      sub_10000AF54("HCI not initialized, ignoring event: %16@", v69, v70, v71, v72, v73, v74, v75, v333);
                      v76 = sub_10000C050(0x2Eu);
                      if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                      {
                        return;
                      }

                      goto LABEL_178;
                    }

                    if (sub_1000DBBA8(&v333, v67, buf))
                    {
                      if (v66)
                      {
                        sub_10025734C(buf, v66);
                        goto LABEL_145;
                      }

                      v253 = sub_10001EE38(*&buf[6]);
                      if (v253)
                      {
                        if (v67 != 8205 && v67 != 8259 && v67 != 8325)
                        {
                          *&buf[8] = *(v253 + 10);
                          if (sub_10001EE74(buf, 0))
                          {
                            if (sub_10000C240())
                            {
                              sub_10000AF54("Unable to add opcode 0x%x to expected event queue with status %!", v254, v255, v256, v257, v258, v259, v260, v67);
                              v261 = sub_10000C050(0x2Eu);
                              if (os_log_type_enabled(v261, OS_LOG_TYPE_ERROR))
                              {
                                sub_10080F604();
                              }
                            }

                            if (off_100B5FC68)
                            {
                              off_100B5FC68(635, v67);
                              goto LABEL_145;
                            }

                            v330 = v67;
LABEL_318:
                            v331 = sub_10028A99C(v330);
                            sub_1001BAA68(635, v331);
                          }
                        }

                        goto LABEL_145;
                      }

                      if (!sub_10000C240())
                      {
                        goto LABEL_145;
                      }

                      sub_10000AF54("%! (%d)", v272, v273, v274, v275, v276, v277, v278, 620);
                      v279 = sub_10000C050(0x2Eu);
                      if (!os_log_type_enabled(v279, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_145;
                      }
                    }

                    else
                    {
                      if (sub_100022374(&v333, v67, buf) && !sub_10029F7C8(v67))
                      {
                        v270 = 769;
                        if (v68 == 64512 && off_100B5FC60)
                        {
                          if (off_100B5FC60(v66, v67, 255))
                          {
                            v270 = 0;
                          }

                          else
                          {
                            v270 = 769;
                          }
                        }

                        if (v66)
                        {
                          v271 = v66;
                        }

                        else
                        {
                          v271 = v270;
                        }

                        (v341)(v271, *(&v341 + 1), &v333);
                        goto LABEL_145;
                      }

                      if (v68 == 64512)
                      {
                        sub_1000A6224(v333, v334, v61);
                        goto LABEL_145;
                      }

                      if (!sub_10000C240() || (sub_10000AF54("Command Status, orphan event, opcode: %x, status %!", v262, v263, v264, v265, v266, v267, v268, v67), v269 = sub_10000C050(0x2Eu), !os_log_type_enabled(v269, OS_LOG_TYPE_ERROR)))
                      {
LABEL_145:
                        if (!byte_100BCE141)
                        {
                          return;
                        }

LABEL_290:
                        sub_1000228C0(sub_100022AA0, 0, 0);
                        return;
                      }
                    }

                    sub_1000E09C0();
                    goto LABEL_145;
                  }

                  v328 = "(*pBs).__RWFlag == BYTESTREAM_READ";
                }

                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1743, v328);
              }

              v327 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_307:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1739, v327);
            }

LABEL_305:
            v327 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
            goto LABEL_307;
          }

          *v364 = 0u;
          v365 = 0u;
          if (v15 <= 2)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("bad parm length: expected at least 3, got %d; eventId %d", v113, v114, v115, v116, v117, v118, v119, v15);
              v120 = sub_10000C050(0x2Eu);
              if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
              {
LABEL_218:
                sub_1000E09C0();
                goto LABEL_289;
              }
            }

            goto LABEL_289;
          }

          if (WORD1(v334) - WORD2(v334) < v15)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("%! (%d)", v199, v200, v201, v202, v203, v204, v205, 605);
              v206 = sub_10000C050(0x2Eu);
              if (os_log_type_enabled(v206, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_218;
              }
            }

            goto LABEL_289;
          }

          v207 = WORD2(v334);
          if (WORD1(v334) <= WORD2(v334))
          {
            v329 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
          }

          else
          {
            if (BYTE6(v334) == 1)
            {
              ++WORD2(v334);
              byte_100BCE141 = v333[v207];
              if (WORD1(v334) - (v207 + 1) <= 1)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1591, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
              }

              v208 = *&v333[v207 + 1];
              WORD2(v334) = v207 + 3;
              if (!v208)
              {
                goto LABEL_289;
              }

              if (WORD1(v334) <= (v207 + 3))
              {
                if (sub_10000C240())
                {
                  sub_10000AF54("handle_CommandComplete bad parm length: no status byte", v215, v216, v217, v218, v219, v220, v221, v332);
                  v222 = sub_10000C050(0x2Eu);
                  if (os_log_type_enabled(v222, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_218;
                  }
                }

                goto LABEL_289;
              }

              WORD2(v334) = v207 + 4;
              v209 = sub_100022244(v333[(v207 + 3)]);
              if (sub_10002223C())
              {
                sub_100241B0C(v208, v209 == 712);
              }

              if (sub_100022374(&v333, v208, v364))
              {
                if (*&v364[4] == 1026)
                {
                  *buf = 0u;
                  v341 = 0u;
                  if ((sub_100258000(1, &v333, 1025, buf) & 1) == 0)
                  {
                    sub_100258000(15, &v333, 1025, buf);
                  }
                }

                (v365)(v209, *(&v365 + 1), &v333);
                goto LABEL_289;
              }

              if (sub_1000DBBA8(&v333, v208, v364))
              {
                if (v209)
                {
                  v252 = v209;
                }

                else
                {
                  v252 = 769;
                }

                sub_10025734C(v364, v252);
                goto LABEL_289;
              }

              if ((~v208 & 0xFC00) == 0)
              {
                sub_1000A6224(v333, v334, v61);
                goto LABEL_289;
              }

              if (sub_10000C240())
              {
                sub_10000AF54("Command Complete, orphan event, opcode: %x, status %!\n", v280, v281, v282, v283, v284, v285, v286, v208);
                v287 = sub_10000C050(0x2Eu);
                if (os_log_type_enabled(v287, OS_LOG_TYPE_ERROR))
                {
                  sub_1000E09C0();
                }
              }

              if (!sub_100004790() || sub_10009B9DC() != 7)
              {
                if (sub_10002223C())
                {
                  v354 = 0u;
                  v355 = 0u;
                  v352 = 0u;
                  v353 = 0u;
                  v350 = 0u;
                  v351 = 0u;
                  v348 = 0u;
                  v349 = 0u;
                  v346 = 0u;
                  v347 = 0u;
                  v344 = 0u;
                  v345 = 0u;
                  v342 = 0u;
                  v343 = 0u;
                  *buf = 0u;
                  v341 = 0u;
                  if (sub_10000EFCC())
                  {
                    sub_100304ACC(buf, 256, "Bluetooth error - simulated { build=internal, reason=%d, description=%!, context=%d }", v296, v297, v298, v299, v300, 635);
                    sub_1001C4B04(buf);
                    if (!sub_10000C240())
                    {
                      goto LABEL_289;
                    }

                    sub_10000AF54("Bluetooth error - simulated { build=internal, reason=%d, description=%!, context=%d }", v301, v302, v303, v304, v305, v306, v307, 635);
                    v308 = sub_10000C050(0x2Eu);
                    if (!os_log_type_enabled(v308, OS_LOG_TYPE_FAULT))
                    {
                      goto LABEL_289;
                    }
                  }

                  else
                  {
                    sub_100304ACC(buf, 256, "Bluetooth error - simulated { build=release, reason=%d, context=%d }", v296, v297, v298, v299, v300, 635);
                    sub_1001C4B04(buf);
                    if (!sub_10000C240())
                    {
                      goto LABEL_289;
                    }

                    sub_10000AF54("Bluetooth error - simulated { build=release, reason=%d, context=%d }", v309, v310, v311, v312, v313, v314, v315, 635);
                    v316 = sub_10000C050(0x2Eu);
                    if (!os_log_type_enabled(v316, OS_LOG_TYPE_FAULT))
                    {
                      goto LABEL_289;
                    }
                  }

                  sub_1008149F0();
                  goto LABEL_289;
                }

                if (!off_100B5FC68)
                {
                  v330 = v208;
                  goto LABEL_318;
                }

                off_100B5FC68(635, v208);
LABEL_289:
                if (!byte_100BCE141)
                {
                  return;
                }

                goto LABEL_290;
              }

              if (!sub_10000C240())
              {
                return;
              }

              sub_10000AF54("trace exit: handle_CommandComplete DEBUG events in halted mode", v288, v289, v290, v291, v292, v293, v294, v332);
              v295 = sub_10000C050(0x2Eu);
              if (!os_log_type_enabled(v295, OS_LOG_TYPE_ERROR))
              {
                return;
              }

LABEL_278:
              sub_1000E09C0();
              return;
            }

            v329 = "(*pBs).__RWFlag == BYTESTREAM_READ";
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1588, v329);
        }

        if (v62 != 19)
        {
          if (v62 != 21)
          {
            return;
          }

          *&v364[4] = 0;
          *v364 = 0;
          memset(buf, 0, sizeof(buf));
          if (!v15)
          {
            if (!sub_10000C240())
            {
              return;
            }

            sub_10000AF54("handle_ReturnLinkKeys bad parm length: expected at least 1, got %d", v147, v148, v149, v150, v151, v152, v153, 0);
            v154 = sub_10000C050(0x2Eu);
            if (!os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            goto LABEL_178;
          }

          v110 = WORD2(v334);
          if (WORD1(v334) <= WORD2(v334))
          {
            v318 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
          }

          else
          {
            if (BYTE6(v334) == 1)
            {
              ++WORD2(v334);
              v111 = v333[v110];
              if (((22 * v111) | 1) == v15)
              {
                if (v333[v110])
                {
                  while (WORD1(v334) - WORD2(v334) > 5)
                  {
                    if (BYTE6(v334) != 1)
                    {
                      v317 = "(*pBs).__RWFlag == BYTESTREAM_READ";
                      goto LABEL_297;
                    }

                    sub_1000075EC(v364, &v333[WORD2(v334)], 6uLL);
                    v112 = WORD2(v334);
                    WORD2(v334) += 6;
                    if (WORD1(v334) - WORD2(v334) <= 0xF)
                    {
                      goto LABEL_294;
                    }

                    *buf = *&v333[WORD2(v334)];
                    WORD2(v334) = v112 + 22;
                    nullsub_21(v364);
                    if (!--v111)
                    {
                      return;
                    }
                  }

                  v317 = "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE";
LABEL_297:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1908, v317);
                }

                return;
              }

              if (!sub_10000C240())
              {
                return;
              }

              sub_10000AF54("handle_ReturnLinkKeys bad parm length: expected %d, got %d", v180, v181, v182, v183, v184, v185, v186, (22 * v111) | 1u);
              v187 = sub_10000C050(0x2Eu);
              if (!os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
              {
                return;
              }

LABEL_178:
              sub_1000E09C0();
              return;
            }

            v318 = "(*pBs).__RWFlag == BYTESTREAM_READ";
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 1897, v318);
        }

        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("Numcompleted packets should be handled by HCI flow", v123, v124, v125, v126, v127, v128, v129, v332);
        v130 = sub_10000C050(0x2Eu);
        if (!os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        goto LABEL_178;
      }

      if (v62 != 2)
      {
        if (v62 != 3)
        {
          if (v62 != 5)
          {
            return;
          }

          v102 = *a3;
          LOWORD(v335) = 0;
          *&v364[4] = 0;
          *v364 = 0;
          *&v344 = 0;
          v342 = 0u;
          v343 = 0u;
          *buf = 0u;
          v341 = 0u;
          v103 = sub_1000DBBBC(buf, v21, &v333, v15, &v335, v364);
          if (v103)
          {
            v104 = v103;
            sub_100257EDC(v21);
            *buf = v104;
          }

          else
          {
            v155 = v335;
            sub_1000DC4E8(v21, v335, v364, 1);
            v156 = sub_100005FEC(6);
            sub_1000DC4E8(v156, v155, v364, 1);
            if (!(*buf | v341))
            {
              if (sub_10000C240())
              {
                sub_10000AF54("Status and Reason both SUCCESS for disconnect", v157, v158, v159, v160, v161, v162, v163, v332);
                v164 = sub_10000C050(0x2Eu);
                if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
                {
                  sub_1000E09C0();
                }
              }

              LODWORD(v341) = 105;
            }
          }

          v165 = *&buf[8];
          if (!*&buf[8])
          {
            if (!sub_10000C240())
            {
              return;
            }

            sub_10000AF54("Disconnect complete event for a connection we didn't know about %d\n", v168, v169, v170, v171, v172, v173, v174, v335);
            v175 = sub_10000C050(0x2Eu);
            if (!os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            goto LABEL_278;
          }

          v166 = *(*&buf[8] + 2);
          if (v166 > 3)
          {
            if (v166 == 4)
            {
LABEL_212:
              *(v165 + 124) = 7;
              v167 = *(v165 + 236);
              goto LABEL_214;
            }

            if (v166 == 5)
            {
              v167 = 0;
              LOBYTE(v166) = 7;
              goto LABEL_175;
            }
          }

          else
          {
            if (!*(*&buf[8] + 2))
            {
              *(*&buf[8] + 54) = 7;
              v167 = *(v165 + 148);
LABEL_214:
              sub_1000E4630(v165);
              sub_1000DC68C(5, buf, v61, v102, v214, v210, v211, v212, v213);
              if (!v167)
              {
                sub_1000E12C4(v165);
              }

              return;
            }

            if (v166 == 1)
            {
              v167 = 0;
LABEL_175:
              *(*&buf[8] + 56) = v166;
              goto LABEL_214;
            }
          }

          sub_1000D660C();
          goto LABEL_212;
        }

LABEL_85:
        v336 = 0;
        v337 = 0;
        v368 = 0;
        v366 = 0u;
        v367 = 0u;
        *v364 = 0u;
        v365 = 0u;
        v335 = 0;
        v105 = sub_1000DBBBC(v364, v21, &v333, v15, &v337 + 1, &v336);
        if (v105)
        {
          v106 = v105;
          sub_100257EDC(v21);
          *v364 = v106;
        }

        else
        {
          v136 = HIWORD(v337);
          v137 = 1;
          if (sub_1000DC4E8(v21, HIWORD(v337), &v336, 1))
          {
            if (v62 == 3)
            {
              v138 = 44;
            }

            else
            {
              v138 = 3;
            }

            v21 = sub_100005FEC(v138);
            v137 = sub_1000DC4E8(v21, v136, &v336, 1) == 0;
          }

          if (v62 == 3 && v137)
          {
            if (*v364)
            {
              if (!sub_1000DC4E8(v21, v136, &v336, 0))
              {
                return;
              }
            }

            else
            {
                ;
              }
            }
          }
        }

        v107 = DWORD2(v365);
        v108 = sub_1000E1FE8(&v336);
        v109 = v108;
        if (v107 > 0xEFu)
        {
          if (v107 - 240 > 1)
          {
LABEL_163:
            if (sub_10000C240())
            {
              sub_10000AF54("OI_HCIFlow_ConnectionComplete, unknown link type %d", v176, v177, v178, v17, v18, v19, v20, v107);
              v179 = sub_10000C050(0x2Eu);
              if (os_log_type_enabled(v179, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }

            goto LABEL_166;
          }
        }

        else
        {
          if (!v107)
          {
            goto LABEL_91;
          }

          if (v107 != 1)
          {
            if (v107 == 2)
            {
LABEL_91:
              v335 = 0;
              if (sub_1000E4F48(&v335))
              {
                  ;
                }
              }

LABEL_128:
              v135 = v335;
              goto LABEL_167;
            }

            goto LABEL_163;
          }
        }

        if (v108 && *v108 != -1)
        {
          v335 = 0;
          if (sub_10000C240())
          {
            sub_10000AF54("ConnectComplete RXed for existing remote device: %d - %d", v131, v132, v133, v17, v18, v19, v20, HIWORD(v337));
            v134 = sub_10000C050(0x2Eu);
            if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          goto LABEL_128;
        }

LABEL_166:
        v335 = v109;
        v135 = v109;
LABEL_167:
        if (v135)
        {
          *&v364[8] = v135;
          if (*v364)
          {
LABEL_189:
            v101 = v364;
            goto LABEL_190;
          }

LABEL_187:
          v197 = HIWORD(v337);
          if (sub_1000ABB80(HIWORD(v337)))
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Duplicate LM handle 0x%x was already in use %:", v319, v320, v321, v322, v323, v324, v325, v197);
              v326 = sub_10000C050(0x2Eu);
              if (os_log_type_enabled(v326, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }

            sub_1000C52F4(649);
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c");
            goto LABEL_305;
          }

          v198 = v335;
          *v335 = v197;
          sub_100259530(v198);
          goto LABEL_189;
        }

        if (*v364)
        {
          sub_10023C0C0(*v364, 0, &v336, v107, 0, v18, v19, v20);
          return;
        }

        if (v107 - 240 < 2 || v107 == 1)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("HCI Connection Completed event - unknown ACL connection (%:)", v188, v189, v190, v191, v192, v193, v194, &v336);
            v195 = sub_10000C050(0x2Eu);
            if (os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          v196 = sub_100255B2C(&v336, 2);
          v335 = v196;
        }

        else
        {
          if (sub_10000C240())
          {
            sub_10000AF54("HCI Connection Completed event - unknown SCO connection (%:)", v223, v224, v225, v226, v227, v228, v229, &v336);
            v230 = sub_10000C050(0x2Eu);
            if (os_log_type_enabled(v230, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          v335 = sub_100255DF0(&v336);
          if (!v335)
          {
            goto LABEL_229;
          }

          v231 = sub_10023B994(v109);
          v196 = v335;
          if (!v231)
          {
            *(v335 + 6) = v109;
            goto LABEL_186;
          }
        }

        if (v196)
        {
LABEL_186:
          *&v364[8] = v196;
          goto LABEL_187;
        }

LABEL_229:
        v232 = 0;
        v363 = 0;
        v361 = 0u;
        v362 = 0u;
        v359 = 0u;
        v360 = 0u;
        v357 = 0u;
        v358 = 0u;
        v355 = 0u;
        v356 = 0u;
        v353 = 0u;
        v354 = 0u;
        v351 = 0u;
        v352 = 0u;
        v349 = 0u;
        v350 = 0u;
        v347 = 0u;
        v348 = 0u;
        v345 = 0u;
        v346 = 0u;
        v343 = 0u;
        v344 = 0u;
        v341 = 0u;
        v342 = 0u;
        *buf = 0u;
        if (v107 != 1 && v107 != 240)
        {
          v232 = v107 != 241;
        }

        buf[2] = v232;
        *buf = HIWORD(v337);
        if (sub_10000C240())
        {
          sub_10000AF54("HCI Connection Completed unable to allocate connection for %: disconnecting", v233, v234, v235, v236, v237, v238, v239, &v336);
          v240 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v240, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        v241 = sub_1000D6178(5u, v233, v234, v235, v236, v237, v238, v239, buf);
        v242 = sub_1000D6410(buf, v241);
        if (!v242)
        {
          return;
        }

        v243 = v242;
        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("OI_HCICMD_Disconnect failed: %!", v244, v245, v246, v247, v248, v249, v250, v243);
        v251 = sub_10000C050(0x2Eu);
        if (!os_log_type_enabled(v251, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        goto LABEL_278;
      }

      v121 = v15;
      v122 = 0;
      goto LABEL_121;
    }

    if (*v21 <= 0x2Eu)
    {
      if (v62 != 25)
      {
        if (v62 != 34)
        {
          if (v62 != 44)
          {
            return;
          }

          goto LABEL_85;
        }

        v121 = v15;
        v122 = 1;
LABEL_121:
        sub_100257960(&v333, v121, v122);
        return;
      }
    }

    else
    {
      if (*v21 <= 0xFDu)
      {
        if (v62 != 47)
        {
          if (v62 == 62)
          {
            *buf = 0;
            if (sub_100006318(62, buf))
            {
              v88 = sub_1000DC660(*buf);
              if (v88)
              {
                v89 = v88;
                if (sub_10000C240())
                {
                  sub_10000AF54("%! (%d)", v90, v91, v92, v93, v94, v95, v96, v89);
                  v97 = sub_10000C050(0x2Eu);
                  if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000E09C0();
                  }
                }
              }
            }

            sub_10000636C(&v333, v21, v15, v61);
          }

          return;
        }

        v121 = v15;
        v122 = 2;
        goto LABEL_121;
      }

      if (v62 != 254)
      {
        sub_1000A6224(v333, v334, *(a3 + 8));
        return;
      }
    }

    *&v338[0] = &v333[WORD2(v334)];
    DWORD2(v338[0]) = v15;
    v101 = v338;
LABEL_190:
    v98 = v62;
    v99 = v61;
    v100 = 0;
    goto LABEL_191;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Short event, numBytes = %d", v4, v5, v6, v7, v8, v9, v10, a2);
    v11 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_4:
      sub_1000E09C0();
    }
  }
}

unsigned __int8 *sub_100005FEC(uint64_t a1)
{
  if (a1 < 0x24)
  {
    v3 = a1 - 1;
    goto LABEL_12;
  }

  if (a1 < 0x37)
  {
    v3 = a1 - 9;
    goto LABEL_19;
  }

  if (a1 < 0x3A)
  {
    v3 = a1 - 10;
    goto LABEL_19;
  }

  if (a1 < 0x3F)
  {
    v3 = a1 - 11;
    goto LABEL_19;
  }

  if (a1 < 0x49)
  {
    v3 = a1 - 19;
    goto LABEL_19;
  }

  if (a1 < 0x58)
  {
    v3 = a1 - 33;
LABEL_19:
    result = &unk_100AE9390 + 24 * v3;
    if (*result == a1)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (a1 <= 0x59)
  {
    v2 = -34;
  }

  else
  {
    v2 = 58;
  }

  v3 = v2 + a1;
LABEL_12:
  if (v3 <= 0x39u)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (sub_10000C240())
  {
    sub_10000AF54("Unrecognized Event (%d) index is %d\n", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100810070(v12);
    }
  }

  return 0;
}

uint64_t sub_100006100(_BYTE *a1, uint64_t a2, _BYTE *a3)
{
  if (!a1 || !a2 || !a3)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid parameter pointer specified", v11, v12, v13, v14, v15, v16, v17, *v35);
    v18 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

LABEL_19:
    sub_10080F7A0();
    return 101;
  }

  if (*a1 != 1 || (a1[1] & 0xC0) != 0x40)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Cannot resolve a non-resolvable address.", v19, v20, v21, v22, v23, v24, v25, *v35);
    v26 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_19;
  }

  if (qword_100B6B3F0 && word_100B6B3F8)
  {
    v6 = 0;
    v7 = 0;
    *a3 = 0;
    do
    {
      if (sub_100045978(a1, (qword_100B6B3F0 + v6 + 7)) && (*a3 & 1) == 0)
      {
        v8 = *(qword_100B6B3F0 + v6);
        v9 = *(qword_100B6B3F0 + v6 + 4);
        *(a2 + 6) = *(qword_100B6B3F0 + v6 + 6);
        *(a2 + 4) = v9;
        *a2 = v8;
        *a3 = 1;
      }

      ++v7;
      v6 += 24;
    }

    while (v7 < word_100B6B3F8);
    return 0;
  }

  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("No resolving cache defined.", v27, v28, v29, v30, v31, v32, v33, *v35);
    v34 = sub_10000C050(0x43u);
    result = os_log_type_enabled(v34, OS_LOG_TYPE_INFO);
    if (result)
    {
      *v35 = 136446210;
      *&v35[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, " %{public}s", v35, 0xCu);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100006318(int a1, _DWORD *a2)
{
  if (!word_100B5FC70)
  {
    return 0;
  }

  v3 = 0;
  for (result = qword_100B5FC80; *(result + 8) != a1 && *(result + 9) != a1; result += 32)
  {
    if (++v3 >= word_100B5FC70)
    {
      return 0;
    }
  }

  *a2 = v3;
  return result;
}

void sub_10000636C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    goto LABEL_4;
  }

  v5 = *(a1 + 10);
  v6 = *(a1 + 12);
  if (v5 == v6)
  {
LABEL_4:
    if (sub_10000C240())
    {
      sub_10000AF54("Error, the LE command is %d bytes.", v7, v8, v9, v10, v11, v12, v13, 0);
      v14 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1806, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (v5 <= v6)
  {
    v18 = 0;
    *(a1 + 15) = 1;
    v17 = v6;
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = *a1;
    v17 = v6 + 1;
    *(a1 + 12) = v6 + 1;
    v18 = *(v16 + v6);
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  if ((v18 - 1) > 0x7D || (v19 = byte_1008A49E0[v18], (v19 - 1) > 1))
  {
LABEL_39:
    if (*(a1 + 15))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Error retreiving the subevent code.", v46, v47, v48, v49, v50, v51, v52, v67);
        v53 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
LABEL_42:
          sub_1000E09C0();
        }
      }
    }

    else
    {
      switch(v18)
      {
        case 1:
          sub_1002C44B8(a1, a4);
          return;
        case 2:
          sub_1002C49B0(a1, a4);
          return;
        case 3:
          sub_1002C4F8C(a1);
          return;
        case 4:
          sub_1002C5278(a1);
          return;
        case 5:
          sub_1002C54CC(a1);
          return;
        case 6:
          sub_1002C56CC(a1);
          return;
        case 7:
          sub_1002C5930(a1);
          return;
        case 10:
          v56 = 1;
          goto LABEL_75;
        case 12:
          sub_1002C5B10(a1);
          return;
        case 13:
          sub_100006A94(a1, a4);
          return;
        case 14:
          v57 = 1;
          goto LABEL_84;
        case 15:
          v55 = 1;
          goto LABEL_82;
        case 16:
          sub_1002C75B0(a1);
          return;
        case 18:
          sub_1002C5E88(a1);
          return;
        case 20:
          sub_1002C5CD8(a1);
          return;
        case 24:
          v54 = 1;
          goto LABEL_79;
        case 25:
          sub_1002C81CC(a1);
          return;
        case 26:
          sub_1002C892C(a1);
          return;
        case 27:
          sub_1002C8B54(a1);
          return;
        case 28:
          sub_1002C9208(a1);
          return;
        case 29:
          sub_1002C93B4(a1);
          return;
        case 30:
          sub_1002C9984(a1);
          return;
        case 33:
          sub_1002C7E54(a1);
          return;
        case 34:
          sub_1002C9B30(a1);
          return;
        case 35:
          sub_1002CCBE8(a1);
          return;
        case 36:
          v57 = 2;
LABEL_84:
          sub_1002C6898(v57, a1);
          break;
        case 37:
          v55 = 2;
LABEL_82:
          sub_1002C6F30(v55, a1, a3);
          break;
        case 38:
          v54 = 2;
LABEL_79:
          sub_1002C76B0(v54, a1);
          break;
        case 39:
          sub_1002CCF84(a1);
          break;
        case 40:
          sub_1002CD18C(a1);
          break;
        case 41:
          v56 = 2;
LABEL_75:
          sub_1002C6120(v56, a1, a4);
          break;
        case 43:
          sub_1002CD640(a1);
          break;
        case 44:
          sub_1002CA0EC(a1);
          break;
        case 45:
          sub_1002CA678(a1);
          break;
        case 46:
          sub_1002CA850(a1);
          break;
        case 47:
          sub_1002CA9C8(a1);
          break;
        case 48:
          sub_1002CB564(a1);
          break;
        case 49:
          sub_1002CBB64();
          break;
        case 50:
          sub_1002CC4CC();
          break;
        case 51:
          return;
        default:
          if (sub_10000C240())
          {
            sub_10000AF54("Unknown LE event code 0x%x", v58, v59, v60, v61, v62, v63, v64, v18);
            v65 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_42;
            }
          }

          break;
      }
    }

    return;
  }

  v20 = &unk_1008A49C8 + 8 * v19;
  v21 = *v20;
  if (v21 + 2 > (a3 - 1))
  {
    goto LABEL_31;
  }

  if (v5 <= v6)
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v31 = 0;
  }

  else
  {
    v31 = v5 - v17;
  }

  if (v31 < v21)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 99, "ByteStream_NumReadBytesAvail(*pBs) >= (hciLeEventLmHandleTable[idx].lmHandle_offset)");
  }

  v32 = *(a1 + 12) + v21;
  *(a1 + 12) = v32;
  if (*(a1 + 14) != 1)
  {
    v66 = "(*pBs).__RWFlag == BYTESTREAM_READ";
    goto LABEL_95;
  }

  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    goto LABEL_94;
  }

  v33 = *(a1 + 10);
  if ((v33 - v32) <= 1)
  {
LABEL_94:
    v66 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_95:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 100, v66);
  }

  v34 = *(*a1 + v32);
  *(a1 + 12) = v32 + 2;
  if (v17 > v33)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 102, "(size_t)(pos) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 12) = v17;
  v35 = sub_1000ABB80(v34);
  if (!v35)
  {
LABEL_31:
    v38 = 0;
    goto LABEL_35;
  }

  v36 = *(v20 + 1);
  if (v36 == 7)
  {
    v37 = sub_100255614(v35);
  }

  else
  {
    if (v36 != 4)
    {
      v38 = 1;
      goto LABEL_35;
    }

    v37 = sub_1000ABD24(v35);
  }

  v38 = v37;
LABEL_35:
  if (sub_10000C240())
  {
    sub_10000AF54("_leEventHandleValidate subcode (0x%02x) lmHandle: 0x%04x lMHandleTypes:%d validation result:%d ", v39, a3, v40, v41, v42, v43, v44, v18);
    v45 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v69 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (v38)
  {
    goto LABEL_39;
  }

LABEL_16:
  if (sub_10000C240())
  {
    sub_10000AF54("LE_HCIEventHandler subcode (0x%02x) lmHandle: 0x%04x Invalid", v22, v23, v24, v25, v26, v27, v28, v18);
    v29 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = sub_10000C0FC();
      *buf = 136446210;
      v69 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }
}

void sub_100006A94(uint64_t *a1, char a2)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v2 = 0;
    v184 = 0u;
    v185 = 0u;
    *ptr = 0u;
    v183 = 0u;
    v181 = 0u;
LABEL_4:
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Not enough data in the packet : %d, expecting at least %d", v6, v7, v8, v9, v10, v11, v12, v2);
    v13 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_6;
  }

  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v2 = v4 - v5;
  v184 = 0u;
  v185 = 0u;
  *ptr = 0u;
  v183 = 0u;
  v181 = 0u;
  if (v2 <= 9)
  {
    goto LABEL_4;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 435, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (v4 <= v5)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the number of reports of the LE extended advertising report event", v60, v61, v62, v63, v64, v65, v66, v180);
    v67 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_6:
    sub_1000E09C0();
    return;
  }

  v14 = *a1;
  *(a1 + 6) = v5 + 1;
  v15 = *(v14 + v5);
  BYTE1(ptr[1]) = a2;
  if (!v15)
  {
    return;
  }

  v16 = 0;
  while (1)
  {
    if (*(a1 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 442, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
LABEL_73:
      *(a1 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the event type of the LE extended advertising report event", v68, v69, v70, v71, v72, v73, v74, v180);
      v75 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_116;
    }

    v17 = *(a1 + 6);
    if (*(a1 + 5) - v17 <= 1)
    {
      goto LABEL_73;
    }

    v18 = (*a1 + v17);
    v19 = *v18;
    LODWORD(v18) = v18[1];
    *(a1 + 6) = v17 + 2;
    v20 = v19 & 0x1F;
    WORD1(ptr[1]) = v19 & 0x1F;
    BYTE4(ptr[1]) = (v19 >> 5) & 3;
    BYTE14(v183) = v19 >> 7;
    BYTE13(v183) = v18 & 0x3F;
    BYTE12(v183) = (v18 & 0x40) != 0;
    HIBYTE(v183) = v18 >> 7;
    v21 = (v19 & 0x1F) - 16;
    if (v21 < 0xE && ((0x2C2Du >> v21) & 1) != 0)
    {
      v22 = byte_1008A4A5F[v21];
    }

    else
    {
      BYTE11(v183) = 1;
      v23 = sub_10000C240();
      if (v20)
      {
        if ((v20 & 4) != 0)
        {
          if (v23)
          {
            sub_10000AF54("legacy=false EXTENDED_ADVERTISING_EVENT_TYPE_CONNECTABLE & EXTENDED_ADVERTISING_EVENT_TYPE_DIRECTED_ADV", v24, v25, v26, v27, v28, v29, v30, v180);
            v37 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v38 = sub_10000C0FC();
              *buf = 136446210;
              v187 = v38;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          v22 = 1;
        }

        else
        {
          if (v23)
          {
            sub_10000AF54("legacy=false EXTENDED_ADVERTISING_EVENT_TYPE_CONNECTABLE", v24, v25, v26, v27, v28, v29, v30, v180);
            v33 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v34 = sub_10000C0FC();
              *buf = 136446210;
              v187 = v34;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          v22 = 0;
        }
      }

      else if ((v20 & 8) != 0)
      {
        if (v23)
        {
          sub_10000AF54("legacy=false EXTENDED_ADVERTISING_EVENT_TYPE_SCAN_RSP", v24, v25, v26, v27, v28, v29, v30, v180);
          v35 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = sub_10000C0FC();
            *buf = 136446210;
            v187 = v36;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v22 = 4;
      }

      else
      {
        if (v23)
        {
          sub_10000AF54("legacy=false LE_ADVERTISING_TYPE_NON_CONNECTABLE_UNDIRECTED", v24, v25, v26, v27, v28, v29, v30, v180);
          v31 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = sub_10000C0FC();
            *buf = 136446210;
            v187 = v32;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v22 = 3;
      }
    }

    LOBYTE(v181) = v22 + 16 * BYTE13(v183) - 80;
    if (*(a1 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 492, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
LABEL_77:
      *(a1 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the address type of the LE extended advertising report event", v76, v77, v78, v79, v80, v81, v82, v180);
      v83 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_116;
    }

    v39 = *(a1 + 5);
    v40 = *(a1 + 6);
    if (v39 <= v40)
    {
      goto LABEL_77;
    }

    v41 = *a1;
    *(a1 + 6) = v40 + 1;
    BYTE1(v181) = *(v41 + v40);
    if ((v39 - (v40 + 1)) <= 5)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 495, "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE");
    }

    sub_1000075EC(&v181 + 2, v41 + v40 + 1, 6uLL);
    v42 = *(a1 + 6);
    *(a1 + 6) = v42 + 6;
    if (*(a1 + 15))
    {
      break;
    }

    if (*(a1 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 498, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    v43 = *(a1 + 5);
    if (v43 <= (v42 + 6))
    {
      *(a1 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the primary PHY  of the LE extended advertising report event", v92, v93, v94, v95, v96, v97, v98, v180);
      v99 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_116;
    }

    v44 = *a1;
    *(a1 + 6) = v42 + 7;
    BYTE5(ptr[1]) = *(v44 + (v42 + 6));
    LOBYTE(v184) = BYTE5(ptr[1]) >> 7;
    BYTE1(v184) = (BYTE5(ptr[1]) & 0x40) != 0;
    BYTE2(v184) = (BYTE5(ptr[1]) & 0x20) != 0;
    if (v43 <= (v42 + 7))
    {
      *(a1 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the secondary PHY of the LE extended advertising report event", v100, v101, v102, v103, v104, v105, v106, v180);
      v107 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_116;
    }

    *(a1 + 6) = v42 + 8;
    BYTE6(ptr[1]) = *(v44 + (v42 + 7));
    if (v43 <= (v42 + 8))
    {
      *(a1 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the advertising SID of the LE extended advertising report event", v108, v109, v110, v111, v112, v113, v114, v180);
      v115 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_116;
    }

    *(a1 + 6) = v42 + 9;
    HIBYTE(ptr[1]) = *(v44 + (v42 + 8));
    if (v43 <= (v42 + 9))
    {
      *(a1 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the advertising SID of the LE extended advertising report event", v116, v117, v118, v119, v120, v121, v122, v180);
      v123 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_116;
    }

    *(a1 + 6) = v42 + 10;
    LOBYTE(v183) = *(v44 + (v42 + 9));
    if (v43 <= (v42 + 10))
    {
      *(a1 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the advertising SID of the LE extended advertising report event", v124, v125, v126, v127, v128, v129, v130, v180);
      v131 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_116;
    }

    *(a1 + 6) = v42 + 11;
    LOBYTE(ptr[1]) = *(v44 + (v42 + 10));
    if ((v43 - (v42 + 11)) <= 1)
    {
      *(a1 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the periodic advertising interval of the LE extended advertising report event", v132, v133, v134, v135, v136, v137, v138, v180);
      v139 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_116;
    }

    WORD1(v183) = *(v44 + (v42 + 11));
    v45 = v42 + 13;
    *(a1 + 6) = v42 + 13;
    if (v43 <= (v42 + 13))
    {
      *(a1 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the direct address type of the LE extended advertising report event", v140, v141, v142, v143, v144, v145, v146, v180);
      v147 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_116;
    }

    v46 = v42 + 14;
    *(a1 + 6) = v46;
    BYTE4(v183) = *(v44 + v45);
    if ((v43 - v46) <= 5)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 525, "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE");
    }

    sub_1000075EC(&v183 + 5, v44 + v46, 6uLL);
    v47 = *(a1 + 6);
    *(a1 + 6) = v47 + 6;
    if (*(a1 + 15))
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the direct address of the LE extended advertising report event", v148, v149, v150, v151, v152, v153, v154, v180);
      v155 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_116;
    }

    if (*(a1 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 528, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a1 + 5) <= (v47 + 6))
    {
      *(a1 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the dataLength of the LE extended advertising report event", v156, v157, v158, v159, v160, v161, v162, v180);
      v163 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_116;
    }

    v48 = *a1;
    *(a1 + 6) = v47 + 7;
    v49 = (v47 + 6);
    v50 = *(v48 + v49);
    WORD4(v181) = *(v48 + v49);
    if (v50 >= 0xE6)
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Too many data bytes in the LE extended advertising report event.", v164, v165, v166, v167, v168, v169, v170, v180);
      v171 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_116;
    }

    v51 = sub_100007618(v50, 0xA934A05EuLL);
    ptr[0] = v51;
    if (!v51)
    {
      goto LABEL_65;
    }

    v52 = WORD4(v181);
    if (!WORD4(v181))
    {
      goto LABEL_65;
    }

    if (*(a1 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 540, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    v53 = v51;
    v54 = *a1;
    v55 = *(a1 + 6);
    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
      v56 = 0;
    }

    else
    {
      v56 = *(a1 + 5) - v55;
    }

    if (v56 < WORD4(v181))
    {
      *(a1 + 15) = 1;
LABEL_114:
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the dataLength of the LE extended advertising report event", v172, v173, v174, v175, v176, v177, v178, v180);
      v179 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v179, OS_LOG_TYPE_ERROR))
      {
        return;
      }

LABEL_116:
      sub_1000E09C0();
      return;
    }

    v57 = (v54 + v55);
    v58 = &v53[v52];
    do
    {
      v59 = *v57++;
      *v53++ = v59;
    }

    while (v53 < v58);
    *(a1 + 6) += WORD4(v181);
    if (*(a1 + 15))
    {
      goto LABEL_114;
    }

LABEL_65:
    if (BYTE1(v181) >= 2u)
    {
      BYTE1(v181) -= 2;
    }

    sub_100008150(&v181);
    sub_10000C1E8(ptr[0]);
    if (++v16 == v15)
    {
      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Could not get the address of the LE advertising report event", v84, v85, v86, v87, v88, v89, v90, v180);
    v91 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_116;
    }
  }
}

_BYTE *sub_1000075EC(_BYTE *result, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v3 = (a3 + a2 - 1);
    v4 = 1;
    do
    {
      v5 = *v3--;
      *result++ = v5;
      v6 = v4++;
    }

    while (v6 < a3);
  }

  return result;
}

void *sub_100007618(size_t size, malloc_type_id_t type_id)
{
  v5 = qword_100B5B528;
  if (!qword_100B5B528)
  {
    sub_100304AF8("Attempt to call Malloc after Memory Manager was terminated", size, type_id);
    return 0;
  }

  if (HIDWORD(size))
  {
    return 0;
  }

  return malloc_type_zone_malloc(v5, size, type_id);
}

void sub_10000766C(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t sub_100007774(uint64_t a1)
{
  std::ostream::sentry::sentry();
  std::ostream::sentry::~sentry();
  return a1;
}

uint64_t sub_1000078E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      __b[0] = 0;
      __b[1] = 0;
      v18 = 0;
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1000C7698();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v18) = v12;
      memset(__b, __c, v12);
      *(__b + v12) = 0;
      if (v18 >= 0)
      {
        v13 = __b;
      }

      else
      {
        v13 = __b[0];
      }

      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__b[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_100007AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void (__cdecl ***sub_100007AD0(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this)))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v2 = a1 + 2;
  *a1 = v4;
  *(*(v4 - 3) + a1) = v3;
  a1[1] = 0;
  v5 = (*(*a1 - 3) + a1);
  std::ios_base::init(v5, a1 + 3);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  a1[2] = v7;
  *(*(v7 - 3) + v2) = v6;
  *a1 = v8;
  sub_100007D74((a1 + 3), 24);
  return a1;
}

void sub_100007D4C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100007D74(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_10000766C(a1);
  return a1;
}

void sub_100007E08(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

_BYTE *sub_100007E30(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000C7698();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t sub_100007EE8()
{
  if (qword_100B6EFE8 != -1)
  {
    sub_100843E7C();
  }

  return qword_100B6EFE0;
}

void *sub_100007F20(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_1000080CC(result, (v2 - *a2) >> 3);
  }

  return result;
}

uint64_t sub_100007F88(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  sub_100007FB8(a1);
  return a1;
}

void sub_100007FB8(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_10081E56C(v2);
    }
  }

  *(a1 + 8) = 1;
  sub_100008078(*a1);
}

void sub_10000801C(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    v2 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_10081E5F0(v2);
    }
  }

  *(a1 + 8) = 0;
  sub_1000089A8(*a1);
}

void sub_100008078(pthread_mutex_t *a1)
{
  if (pthread_mutex_lock(a1))
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_10081E49C();
    }
  }
}

void sub_1000080CC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_100008108(a1, a2);
  }

  sub_1000C7698();
}

void sub_100008108(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1000C7698();
}

void sub_100008150(unsigned __int16 *a1)
{
  v1 = qword_100B6B1E0;
  v2 = off_100B6B1D0;
  v4 = (a1 + 1);
  v3 = *(a1 + 1);
  memset(ptr, 0, 15);
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 1) == 0;
  }

  if (v5)
  {
    return;
  }

  if (!*(a1 + 58) && (a1[32] & 2) == 0)
  {
    goto LABEL_10;
  }

  v7 = *v4;
  if (v7 == 255)
  {
    *v4 = *(a1 + 51);
    *(a1 + 1) = *(a1 + 27);
LABEL_10:
    v8 = *v4;
    goto LABEL_11;
  }

  v8 = v7 - 2;
  *v4 = v8;
LABEL_11:
  if (v8 == 1 && (a1[1] & 0xC0) == 0x40)
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    if (!sub_100006100(a1 + 1, v51, &v52) && v52 == 1)
    {
      *v4 = *v51;
      *(v4 + 3) = *&v51[3];
    }
  }

  v9 = *(a1 + 24);
  if (v9 <= 27)
  {
    if (v9 <= -40)
    {
      if (v9 >= 0xFFFFFFA1)
      {
        v10 = ((-40 - v9) / 5.0);
      }

      else
      {
        v10 = 10;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 11;
  }

  v11 = *(a1 + 44);
  if (v11 <= 3)
  {
    v12 = &xmmword_100B6B168 + v10;
    if (v11 == 1)
    {
      v13 = *v12;
    }

    else
    {
      v14 = v12[12];
      v12 += 12;
      v13 = v14;
    }

    if (v13 != -1)
    {
      *v12 = v13 + 1;
    }
  }

  v15 = *(a1 + 28);
  v16 = v15 < 3;
  if (v15 >= 3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid packet status:%d", v17, v18, v19, v20, v21, v22, v23, *(a1 + 28));
      v24 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1000D660C();
  }

  if (qword_100B6B208 && sub_10000C248(qword_100B6B208) && (v25 = sub_1000B47B8(qword_100B6B208), (ptr[0] = v25) != 0))
  {
    while (1)
    {
      v26 = sub_1000BC720(v25);
      if (*v4 == *(v26 + 1) && *(v4 + 3) == *(v26 + 4))
      {
        break;
      }

      sub_1000BC828(ptr);
      v25 = ptr[0];
      if (!ptr[0])
      {
        goto LABEL_42;
      }
    }

    v28 = v26;
    sub_1000BC77C(qword_100B6B208, ptr[0], 0);
    if (*(v28 + 28) != 1)
    {
      sub_1000D660C();
    }
  }

  else
  {
LABEL_42:
    if (*(a1 + 28) != 1)
    {
      v28 = 0;
      goto LABEL_50;
    }

    v28 = sub_100007618(0x50uLL, 0x101004026E51886uLL);
    *v28 = 0u;
    *(v28 + 1) = 0u;
    *(v28 + 2) = 0u;
    *(v28 + 3) = 0u;
    *(v28 + 4) = 0u;
    v16 = 0;
    *(v28 + 2) = sub_100007618(0x672uLL, 0xCFEC402EuLL);
  }

  v29 = a1[4];
  if (v29 > 0x671 || (v30 = v28[4], v31 = v30 + v29, (v30 + v29) > 0x672u))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Total advertising data length %d is larger than max advertising length %d", v34, v35, v36, v37, v38, v39, v40, v28[4] + a1[4]);
      v41 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1000D660C();
    goto LABEL_66;
  }

  memmove((*(v28 + 2) + v30), *(a1 + 2), v29);
  v32 = *(v28 + 2);
  memmove(v28, a1, 0x50uLL);
  *(v28 + 2) = v32;
  v28[4] = v31;
  if (*(a1 + 28) == 1)
  {
    if (qword_100B6B208)
    {
      sub_1000B8B8C(qword_100B6B208, v28, 80);
    }

    return;
  }

LABEL_50:
  if (!v16)
  {
    goto LABEL_65;
  }

  if (!v2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Error : got a found event when scan is stopped", v42, v43, v44, v45, v46, v47, v48, v50);
      v49 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
        if (!v28)
        {
          return;
        }

        goto LABEL_66;
      }
    }

LABEL_65:
    if (!v28)
    {
      return;
    }

    goto LABEL_66;
  }

  if (v28)
  {
    v33 = v28;
  }

  else
  {
    v33 = a1;
  }

  v2(v33, v1);
  if (v28)
  {
LABEL_66:
    sub_10000C1E8(*(v28 + 2));
    sub_10000C1E8(v28);
  }
}

uint64_t *sub_10000856C(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_1000085C4(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_1000085C4(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void (__cdecl ***sub_100008760(void (__cdecl ***a1)(std::ostringstream *__hidden this)))(std::ostringstream *__hidden this)
{
  a1[20] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  sub_100007D74((a1 + 1), 16);
  return a1;
}

void sub_1000088A4(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000088CC(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    sub_10000801C(a1);
  }

  return a1;
}

void *sub_100008904(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_1000C7698();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_1000089A8(pthread_mutex_t *a1)
{
  if (pthread_mutex_unlock(a1))
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_10081E504();
    }
  }
}

double sub_1000089FC(uint64_t a1)
{
  *(a1 + 8) = 1;
  *a1 = &off_100B0A938;
  *(a1 + 12) = 0;
  *(a1 + 14) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = &off_100AE0A78;
  *(a1 + 120) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 128) = 0;
  *(a1 + 136) = &off_100AE0A78;
  *(a1 + 144) = 0;
  *(a1 + 152) = &off_100AE0A78;
  *(a1 + 222) = 0;
  *(a1 + 192) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 213) = 0;
  *(a1 + 224) = &off_100AE0A78;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 272) = &off_100AE0A78;
  *(a1 + 280) = 0;
  *(a1 + 288) = &off_100AE0A78;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 307) = 0;
  *(a1 + 312) = 0;
  *(a1 + 316) = 0;
  *(a1 + 320) = 0;
  *(a1 + 409) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 344) = 0;
  *(a1 + 336) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 367) = 0;
  *(a1 + 416) = a1 + 424;
  *&result = 0xFF00000000;
  *(a1 + 440) = 0xFF00000000;
  *(a1 + 448) = &off_100AE0A78;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 468) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = a1 + 504;
  return result;
}

void sub_100008BB4()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  bzero(v22, 0x1788uLL);
  if (off_100B663C8)
  {
    if (sub_100008D54(v3, v22, v4))
    {
      return;
    }

    if (v3 && *(v3 + 8) && *(v3 + 16))
    {
      if (byte_100B663D8 == 1 && (v22[16] & 1) == 0)
      {
        return;
      }

LABEL_16:
      off_100B663C8(v22, v2);
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Response is empty.", v13, v14, v15, v16, v17, v18, v19, *v21);
      v20 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *v21 = 136446210;
        *&v21[4] = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, " %{public}s", v21, 0xCu);
      }
    }

    if (byte_100B663D8 != 1)
    {
      goto LABEL_16;
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("No callbacks defined.", v5, v6, v7, v8, v9, v10, v11, *v21);
    v12 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

uint64_t sub_100008D54(unsigned __int8 *a1, uint64_t a2, uint8x8_t a3)
{
  if (!a1 || (v4 = (a2 + 4096), v5 = *a1, *a2 = v5 & 0xF, *(a2 + 8) = a1 + 1, *(a2 + 2555) = a1[24], *(a2 + 5946) = v5 >> 4, *(a2 + 5968) = *(a1 + 13), *(a2 + 5970) = *(a1 + 7), *(a2 + 5974) = a1[43], *(a2 + 5981) = a1[44], a3.i32[0] = *(a1 + 45), v6 = vmovl_u8(a3).u64[0], v7 = vrev32_s16(v6), v7.i32[0] = v6.i32[0], *(a2 + 5982) = vuzp1_s8(v7, v6).u32[0], *(a2 + 5986) = *(a1 + 49), *(a2 + 2556) = a1[25], *(a2 + 5992) = a1 + 51, v8 = *(a1 + 4), *(a2 + 6022) = v8, !v8) || (v9 = *(a1 + 2)) == 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Response is empty.", v105, v106, v107, v108, v109, v110, v111, v160);
      v112 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        v169 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_INFO, " %{public}s", buf, 0xCu);
      }
    }

    return 0;
  }

  v10 = 0;
  v167 = 0;
  if (v8 >= 0x672)
  {
    v11 = 1650;
  }

  else
  {
    v11 = v8;
  }

  v165 = a2 + 6016;
  v164 = a2 + 5907;
  v163 = a2 + 5885;
  __dst = (a2 + 2521);
  while (2)
  {
    if (v8 <= v10)
    {
      goto LABEL_112;
    }

    v12 = *(v9 + v10);
    if (!*(v9 + v10))
    {
      goto LABEL_112;
    }

    v13 = v12 - 1;
    if (v12 == 1 || v12 + (v10 + 1) > v11)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("parseADResponse Error [%@] Invalid advertising response data size (%u + %u)", v114, v115, v116, v117, v118, v119, v120, v9);
        v121 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
        {
          sub_100815A90();
        }
      }

      v17 = 4059;
      goto LABEL_109;
    }

    v15 = v10 + 2;
    v16 = v15 + v13;
    v17 = 0;
    switch(*(v9 + v10 + 1))
    {
      case 1:
        v17 = 0;
        *(a2 + 16) = *(v9 + v15);
        goto LABEL_69;
      case 2:
      case 3:
        v18 = v9 + v15;
        v19 = (v12 - 1);
        v20 = a2 + 20;
        v21 = (a2 + 2520);
        goto LABEL_30;
      case 4:
      case 5:
        v18 = v9 + v15;
        v19 = (v12 - 1);
        v20 = a2 + 20;
        v21 = (a2 + 2520);
        goto LABEL_60;
      case 6:
      case 7:
        v18 = v9 + v15;
        v19 = (v12 - 1);
        v20 = a2 + 20;
        v21 = (a2 + 2520);
        goto LABEL_58;
      case 8:
        if ((v12 - 1) < 0x1Fu)
        {
          v88 = (v12 - 1);
          v89 = 1;
          goto LABEL_74;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("parseADResponse Error [%@] Invalid size %d for LE_ADV_RESPONSE_FORMAT_PARTIAL_NAME)", v60, v61, v62, v63, v64, v65, v66, v9);
          v67 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_50;
          }
        }

        goto LABEL_68;
      case 9:
        if ((v12 - 1) < 0x1Fu)
        {
          v88 = (v12 - 1);
          v89 = 2;
LABEL_74:
          *(a2 + 2552) = v89;
          memmove(__dst, (v9 + v15), v88);
          v17 = 0;
          *(__dst + v88) = 0;
          goto LABEL_69;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("parseADResponse Error [%@] Invalid size %d for LE_ADV_RESPONSE_FORMAT_COMPLETE_NAME)", v68, v69, v70, v71, v72, v73, v74, v9);
          v67 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
LABEL_50:
            v75 = sub_10000C0FC();
            *buf = 136446466;
            v169 = v75;
            v170 = 1024;
            v171 = 0;
            v45 = v67;
            goto LABEL_51;
          }
        }

        goto LABEL_68;
      case 0xA:
        v17 = 0;
        *(a2 + 2553) = *(v9 + v15);
        *(a2 + 2554) = 1;
        goto LABEL_69;
      case 0xB:
      case 0xC:
      case 0xD:
      case 0xE:
      case 0xF:
      case 0x11:
      case 0x13:
      case 0x17:
      case 0x18:
      case 0x1C:
      case 0x1D:
      case 0x1E:
      case 0x22:
      case 0x23:
      case 0x24:
      case 0x25:
      case 0x27:
      case 0x28:
      case 0x29:
      case 0x2A:
      case 0x2B:
      case 0x2C:
      case 0x2D:
        goto LABEL_26;
      case 0x10:
        goto LABEL_69;
      case 0x12:
        v17 = 0;
        *(a2 + 2562) = *(v9 + v15);
        *(a2 + 2564) = *(v9 + v15 + 2);
        goto LABEL_69;
      case 0x14:
        v18 = v9 + v15;
        v19 = (v12 - 1);
        v20 = a2 + 2568;
        v21 = (a2 + 5068);
LABEL_30:
        v35 = 2;
        goto LABEL_61;
      case 0x15:
        v18 = v9 + v15;
        v19 = (v12 - 1);
        v20 = a2 + 2568;
        v21 = (a2 + 5068);
LABEL_58:
        v35 = 16;
        goto LABEL_61;
      case 0x16:
        v32 = (v9 + v15);
        v33 = (v12 - 1);
        v34 = 2;
        goto LABEL_53;
      case 0x19:
        v17 = 0;
        *(a2 + 2560) = *(v9 + v15);
        goto LABEL_69;
      case 0x1A:
        v17 = 0;
        *(a2 + 2558) = *(v9 + v15);
        goto LABEL_69;
      case 0x1B:
        if ((v12 - 1) == 7)
        {
          v46 = v9 + v15;
          v47 = *v46;
          v48 = *(v46 + 4);
          *(v164 + 6) = *(v46 + 6);
          *(v164 + 4) = v48;
          *v164 = v47;
          v4[1810] = 1;
          if (sub_10000C240())
          {
            sub_10000AF54("AD Response Parsing: LE BT Device Address %: Type %s", v49, v50, v51, v52, v53, v54, v55, v164);
            v56 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              v57 = sub_10000C0FC();
              *buf = 136446210;
              v169 = v57;
              v58 = v56;
              v59 = OS_LOG_TYPE_DEFAULT;
LABEL_67:
              _os_log_impl(&_mh_execute_header, v58, v59, " %{public}s", buf, 0xCu);
            }
          }
        }

        else if (sub_10000C240())
        {
          sub_10000AF54("AD Response Parsing: size of LE BT Address %u in advertisement is not compliant with specification.", v79, v80, v81, v82, v83, v84, v85, v12);
          v86 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
          {
            v87 = sub_10000C0FC();
            *buf = 136446210;
            v169 = v87;
            v58 = v86;
            v59 = OS_LOG_TYPE_INFO;
            goto LABEL_67;
          }
        }

LABEL_68:
        v17 = 0;
LABEL_69:
        if (!v17)
        {
          v10 = v16;
          if (v16 < 0x672u)
          {
            continue;
          }
        }

        if (v17)
        {
          goto LABEL_109;
        }

LABEL_112:
        v17 = 0;
        *(a2 + 2557) = sub_100009A28(*(a2 + 16));
        return v17;
      case 0x1F:
        v18 = v9 + v15;
        v19 = (v12 - 1);
        v20 = a2 + 2568;
        v21 = (a2 + 5068);
LABEL_60:
        v35 = 4;
LABEL_61:
        v76 = sub_1002D3E78(v18, v19, v35, v20, v21);
        goto LABEL_62;
      case 0x20:
        v32 = (v9 + v15);
        v33 = (v12 - 1);
        v34 = 4;
        goto LABEL_53;
      case 0x21:
        v32 = (v9 + v15);
        v33 = (v12 - 1);
        v34 = 16;
LABEL_53:
        v76 = sub_1000991E4(v32, v33, v34, a2);
LABEL_62:
        v17 = v76;
        goto LABEL_69;
      case 0x26:
        if ((v12 - 1) < 0x20u)
        {
          memmove((a2 + 5914), (v9 + v15), (v12 - 1));
          v17 = 0;
          v4[1849] = v13;
          goto LABEL_69;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Invalid size %d for LE_ADV_RESPONSE_FORMAT_TDS)", v36, v37, v38, v39, v40, v41, v42, (v12 - 1));
          v43 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = sub_10000C0FC();
            *buf = 136446466;
            v169 = v44;
            v170 = 1024;
            v171 = 0xFFFF;
            v45 = v43;
LABEL_51:
            _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
          }
        }

        goto LABEL_68;
      case 0x2E:
        if ((v12 - 1) != 6)
        {
          goto LABEL_68;
        }

        v17 = 0;
        v77 = v9 + v15;
        v78 = *v77;
        *(v165 + 4) = *(v77 + 4);
        *v165 = v78;
        goto LABEL_69;
      default:
        if (*(v9 + v10 + 1) != 255)
        {
LABEL_26:
          sub_1000D660C();
          goto LABEL_68;
        }

        if ((v12 - 1) >= 0xFCu)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("parseADResponse Error [%@] Invalid size %d for LE_ADV_RESPONSE_FORMAT_MANUFACTURER", v130, v131, v132, v133, v134, v135, v136, v9);
            v137 = sub_10000C050(0x42u);
            v17 = 162;
            if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_121;
            }

            goto LABEL_109;
          }

          goto LABEL_125;
        }

        if (v8 > (v10 + 3))
        {
          v22 = *(v9 + v15);
          if (v22 == 76)
          {
            v90 = v10 + 4;
            v91 = (v10 + 4);
            while (1)
            {
              if (v91 >= v16)
              {
                goto LABEL_98;
              }

              v92 = v90 + 1;
              v93 = *(v9 + v90);
              if ((v90 + 1) >= v16)
              {
                break;
              }

              v94 = v4[1809];
              if (v94 <= 0x13)
              {
                v4[1809] = v94 + 1;
                *(v163 + v94) = v93;
              }

              if (v93 == 18)
              {
                v4[1884] = 1;
              }

              if ((qword_100BCE1F0 & (1 << v93)) != 0)
              {
                v162 = v90;
                v95 = v90 + 1;
                if (sub_10000C240())
                {
                  sub_10000AF54("found MFGR packet %d, holding power assertion", v96, v97, v98, v99, v100, v101, v102, v93);
                  log = sub_10000C050(0x42u);
                  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                  {
                    v103 = sub_10000C0FC();
                    *buf = 136446210;
                    v169 = v103;
                    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
                  }
                }

                qword_100B6A5E0 = sub_1000B11F4();
                v92 = v95;
                v90 = v162;
                if (!dword_100B6A5D8)
                {
                  sub_1001BB790();
                  sub_10002195C(sub_1002D3FFC, 0, 10, &dword_100B6A5D8);
                  v90 = v162;
                  v92 = v95;
                }
              }

              if (v93 == 1)
              {
                v104 = 16;
              }

              else
              {
                if ((v90 + 2) >= v16)
                {
                  if (sub_10000C240())
                  {
                    sub_10000AF54("parseADResponse Error [%@] Invalid position %d for Apple type %d)", v145, v146, v147, v148, v149, v150, v151, v9);
                    v137 = sub_10000C050(0x42u);
                    v17 = 162;
                    if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_121;
                    }

                    goto LABEL_109;
                  }

                  goto LABEL_125;
                }

                v104 = *(v9 + v92) & 0x1F;
                if (v104 == 31)
                {
                  LODWORD(v92) = v90 + 3;
                  v104 = *(v9 + (v90 + 2)) + 31;
                }

                else
                {
                  LODWORD(v92) = v90 + 2;
                }
              }

              v90 = v92 + v104;
              v91 = (v92 + v104);
              if (v91 > v16)
              {
                if (sub_10000C240())
                {
                  sub_10000AF54("parseADResponse Error [%@] Invalid length %d for Apple type %d)", v138, v139, v140, v141, v142, v143, v144, v9);
                  v137 = sub_10000C050(0x42u);
                  v17 = 162;
                  if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_121;
                  }

                  goto LABEL_109;
                }

LABEL_125:
                v17 = 162;
                goto LABEL_109;
              }

              v167 |= v93 == 2;
            }

            if ((v167 & 1) == 0)
            {
              if (!sub_10000C240())
              {
                goto LABEL_125;
              }

              sub_10000AF54("parseADResponse Error [%@] Invalid position %d for Apple type %d)", v153, v154, v155, v156, v157, v158, v159, v9);
              v137 = sub_10000C050(0x42u);
              v17 = 162;
              if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
              {
LABEL_121:
                v152 = sub_10000C0FC();
                *buf = 136446466;
                v169 = v152;
                v170 = 1024;
                v171 = 162;
                _os_log_error_impl(&_mh_execute_header, v137, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
              }

LABEL_109:
              if (sub_10000C240())
              {
                sub_10000AF54("Failed to parse AD response with error %!", v122, v123, v124, v125, v126, v127, v128, v17);
                v129 = sub_10000C050(0x42u);
                if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
                {
                  sub_1000E09C0();
                }
              }

              return v17;
            }

            v167 = 1;
          }

          else if (v22 == 196)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("AD Response parsing: Manufacturer Data vendor 0x%4x", v23, v24, v25, v26, v27, v28, v29, 196);
              v30 = sub_10000C050(0x42u);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                v31 = sub_10000C0FC();
                *buf = 136446210;
                v169 = v31;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }
          }
        }

LABEL_98:
        memmove((a2 + 5633), (v9 + v15), v13);
        v17 = 0;
        v4[1788] = v13;
        goto LABEL_69;
    }
  }
}

BOOL sub_100009A28(uint64_t a1)
{
  if ((a1 & 0x1C) == 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid Dual mode support indication in AD flags 0x%x.", v2, v3, v4, v5, v6, v7, v8, a1);
      v9 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        v12 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, " %{public}s", buf, 0xCu);
      }
    }
  }

  return (~a1 & 0x18) == 0;
}

void sub_100009B00()
{
  if (qword_100BC7D28 != -1)
  {
    sub_1000E74E0();
  }

  v0 = 0;
  v1 = 0;
  operator new();
}

uint64_t sub_10000AB54(uint64_t a1, int a2)
{
  v3 = *(a1 + 2324);
  if (v3)
  {
    v4 = a2 + v3;
    v5 = __OFADD__(a2, v3);
    if (v4 != v4)
    {
      v5 = 1;
    }

    if (v3 > 0)
    {
      v6 = 127;
    }

    else
    {
      v6 = 0x80;
    }

    if (v5)
    {
      LOBYTE(v4) = v6;
    }

    if (v4 >= 19)
    {
      v7 = 19;
    }

    else
    {
      v7 = v4;
    }

    v8 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109632;
      v10[1] = v3;
      v11 = 1024;
      v12 = a2;
      v13 = 1024;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: Applying RSSI offset of %d to %d, new rssi level is %d", v10, 0x14u);
    }
  }

  else
  {
    return a2;
  }

  return v7;
}

void sub_10000AC60(uint64_t a1, int a2)
{
  if (qword_100BC7AB8 != -1)
  {
    sub_10086A73C();
  }

  if (a2 == 27 || a2 == 127)
  {
    *(a1 + 216) = 383;
  }

  else
  {
    v4 = a2 - 126;
    if (a2 <= 20)
    {
      v4 = a2;
    }

    *(a1 + 216) = v4;
    *(a1 + 217) = a2 > 20;
    v5 = dword_100BC7AB0;
    if (dword_100BC7AB0)
    {
      v6 = v4;
      v7 = dword_100BC7AB0 + v4;
      if (v7 < 21)
      {
        if (v7 <= -128)
        {
          v9 = qword_100BCE9A8;
          if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
          {
            v10 = 67109888;
            v11 = a2;
            v12 = 1024;
            v13 = v6;
            v14 = 1024;
            v15 = v5;
            v16 = 1024;
            v17 = -127;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Warning: RSSI original: %d converted: %d offset: %d adjusted to %d", &v10, 0x1Au);
          }

          LOBYTE(v7) = -127;
        }
      }

      else
      {
        v8 = qword_100BCE9A8;
        if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 67109888;
          v11 = a2;
          v12 = 1024;
          v13 = v6;
          v14 = 1024;
          v15 = v5;
          v16 = 1024;
          v17 = 20;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: RSSI original: %d converted: %d offset: %d adjusted to %d", &v10, 0x1Au);
        }

        LOBYTE(v7) = 20;
      }

      *(a1 + 216) = v7;
    }
  }
}

uint64_t sub_10000AE20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  if (v3 != v4)
  {
    *(a1 + 8) = v4;
    if (v4)
    {
      sub_10000C69C(v4);
    }

    if (v3)
    {
      sub_10000C808(v3);
    }
  }

  return a1;
}

uint64_t sub_10000AE6C(uint64_t a1)
{
  if (sub_10000C5E0(a1 + 48) < 2)
  {
    return 0;
  }

  else
  {
    v2 = *sub_10000C5F8(a1 + 48);
    return (v2 | (*(sub_10000C5F8(a1 + 48) + 1) << 8));
  }
}

uint64_t sub_10000AEC4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004973B0;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E428 != -1)
  {
    dispatch_once(&qword_100B6E428, block);
  }

  return byte_100B6E420;
}

uint64_t sub_10000AF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = unk_100AEA838;
  bzero(&unk_100B6B978, 0x1000uLL);
  result = sub_10000AFD4(&v17, a1, &a9);
  if (result)
  {
    WORD2(v17) = 0;
    return sub_1003078F4(&v17, "Bad format string in debug output (error %d): %s", v11, v12, v13, v14, v15, v16, result);
  }

  return result;
}

uint64_t sub_10000AFD4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 **a3)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = a2;
    while (1)
    {
      if (!*(a1 + 2) || *(a1 + 2) - 1 <= *(a1 + 4))
      {
        if (*a1 != 1)
        {
          return 0;
        }

        if (!sub_1000D5E38(a1))
        {
          return 106;
        }

        v3 = *v4;
      }

      if (v3 == 37)
      {
        break;
      }

      v136 = *(a1 + 8);
      v137 = *(a1 + 4);
      *(a1 + 4) = v137 + 1;
      *(v136 + v137) = v3;
LABEL_299:
      v138 = *++v4;
      v3 = v138;
      if (!v138)
      {
        return 0;
      }
    }

    v6 = 0;
    v144 = 0;
    v143 = 0;
    v7 = 0;
    v8 = 1;
    v145 = 1;
    v146 = 0;
    while (1)
    {
      if ((v8 & 1) == 0)
      {
        goto LABEL_299;
      }

      v10 = v4 + 1;
      v9 = v4[1];
      result = 115;
      if (v9 <= 0x6B)
      {
        v12 = v9 - 33;
        v13 = 1;
        v8 = 1;
        switch(v12)
        {
          case 0u:
            v14 = a3++;
            sub_1000CDD74(*v14);
            v16 = v15;
            goto LABEL_293;
          case 2u:
            sub_100062468(a1, "0x");
            goto LABEL_155;
          case 4u:
            v8 = 0;
            v77 = *(a1 + 8);
            v78 = *(a1 + 4);
            *(a1 + 4) = v78 + 1;
            *(v77 + v78) = 37;
            goto LABEL_295;
          case 9u:
            v68 = a3++;
            v69 = *v68;
            if (!*v68)
            {
              goto LABEL_171;
            }

            v148 = 0;
            v149 = 0;
            sub_10007A978(&v148, v69, 0);
            if (*v69)
            {
              v70 = 0;
              do
              {
                v71 = *(&v148 + v70);
                v151 = 0;
                v72 = -2;
                v73 = &v151;
                v150 = 0;
                do
                {
                  *--v73 = a0123456789abcd_0[v71 & 0xF];
                  v71 >>= 4;
                  v55 = __CFADD__(v72++, 1);
                }

                while (!v55);
                sub_100062468(a1, v73);
                ++v70;
              }

              while (v70 < *v69);
            }

            goto LABEL_258;
          case 0xAu:
            goto LABEL_296;
          case 0xCu:
            v145 = 0;
            goto LABEL_295;
          case 0xEu:
            v74 = a3++;
            v16 = *v74;
            if (*v74)
            {
              for (i = v16 + 1; ; ++i)
              {
                v76 = *(i - 1);
                if (v76 == 47 || v76 == 92)
                {
                  v16 = i;
                }

                else if (!*(i - 1))
                {
                  goto LABEL_293;
                }
              }
            }

            sub_100062468(a1, "(null)");
            v16 = 0;
            goto LABEL_293;
          case 0xFu:
            LOBYTE(v144) = (v7 < 1) | v144;
            if (v7 >= 1)
            {
              v7 *= 10;
            }

            goto LABEL_155;
          case 0x10u:
            v7 = (10 * v7) | 1;
            goto LABEL_295;
          case 0x11u:
            v67 = 2;
            goto LABEL_154;
          case 0x12u:
            v67 = 3;
            goto LABEL_154;
          case 0x13u:
            v67 = 4;
            goto LABEL_154;
          case 0x14u:
            v67 = 5;
            goto LABEL_154;
          case 0x15u:
            v67 = 6;
            goto LABEL_154;
          case 0x16u:
            v67 = 7;
            goto LABEL_154;
          case 0x17u:
            v67 = 8;
            goto LABEL_154;
          case 0x18u:
            v67 = 9;
LABEL_154:
            v7 = v67 + 10 * v7;
LABEL_155:
            v8 = 1;
            goto LABEL_295;
          case 0x19u:
            v93 = a3++;
            v94 = *v93;
            if (!*v93)
            {
              goto LABEL_171;
            }

            for (j = 0; j != 6; ++j)
            {
              if (j)
              {
                sub_100062468(a1, ":");
              }

              v96 = v94[j];
              LOBYTE(v149) = 0;
              v97 = -2;
              v98 = &v149;
              v148 = 0;
              do
              {
                *(v98 - 1) = a0123456789abcd_0[v96 & 0xF];
                v98 = (v98 - 1);
                v96 >>= 4;
                v55 = __CFADD__(v97++, 1);
              }

              while (!v55);
              sub_100062468(a1, v98);
            }

            goto LABEL_258;
          case 0x1Eu:
            v146 = 1;
            goto LABEL_295;
          case 0x1Fu:
            v60 = a3;
            v61 = *a3;
            a3 += 2;
            if (!v61)
            {
              goto LABEL_171;
            }

            v62 = *(v60 + 2);
            if (v62 > 0x8000)
            {
              return 101;
            }

            if (!v7)
            {
              v7 = 16;
            }

            if (!v62)
            {
              goto LABEL_258;
            }

            v63 = 0;
            while (v63 != 160)
            {
              v64 = v61[v63];
              LOBYTE(v149) = 0;
              v65 = -2;
              v66 = &v149;
              v148 = 0;
              do
              {
                *(v66 - 1) = a0123456789abcd_0[v64 & 0xF];
                v66 = (v66 - 1);
                v64 >>= 4;
                v55 = __CFADD__(v65++, 1);
              }

              while (!v55);
              sub_100062468(a1, v66);
              if (((v63 != v62 - 1) & v145) == 1)
              {
                sub_1000BE324(a1, 1);
              }

              if (++v63 == v62)
              {
                goto LABEL_250;
              }
            }

            sub_100062468(a1, " ...");
LABEL_250:
            v8 = 0;
            v13 = v6;
            goto LABEL_296;
          case 0x21u:
            v59 = a3++;
            if (*v59)
            {
              v16 = "TRUE";
            }

            else
            {
              v16 = "FALSE";
            }

            goto LABEL_293;
          case 0x32u:
            goto LABEL_19;
          case 0x33u:
            v81 = a3++;
            v82 = *v81;
            v148 = 0;
            if (!v82)
            {
              v82 = &v148;
              sub_100016250(&v148);
            }

            v83 = *v82;
            v84 = *(v82 + 2);
            v85 = ".";
            if (v84 < 0x64)
            {
              v85 = ".0";
            }

            if (v84 >= 0xA)
            {
              v86 = v85;
            }

            else
            {
              v86 = ".00";
            }

            sub_100095588(a1, v83 & 0x1FFF);
            sub_100062468(a1, v86);
            v87 = v84;
            v88 = a1;
            goto LABEL_238;
          case 0x3Au:
            v79 = a3++;
            v80 = *v79;
            if (v80 > 88)
            {
              if (v80 <= 102)
              {
                if (v80 > 98)
                {
                  if (v80 != 99)
                  {
                    if (v80 == 100)
                    {
LABEL_273:
                      v16 = "\x1B[1;30m";
                      goto LABEL_293;
                    }

                    goto LABEL_276;
                  }

                  v16 = "\x1B[0;36m";
                }

                else
                {
                  if (v80 != 89)
                  {
                    if (v80 == 98)
                    {
                      v16 = "\x1B[0;34m";
                      goto LABEL_293;
                    }

                    goto LABEL_276;
                  }

                  v16 = "\x1B[1;33m";
                }

                goto LABEL_293;
              }

              if (v80 > 108)
              {
                switch(v80)
                {
                  case 'm':
                    v16 = "\x1B[0;35m";
                    break;
                  case 'y':
                    v16 = "\x1B[0;33m";
                    break;
                  case 'r':
                    v16 = "\x1B[0;31m";
                    goto LABEL_293;
                  default:
                    goto LABEL_276;
                }

                goto LABEL_293;
              }

              if (v80 == 103)
              {
                v16 = "\x1B[0;32m";
                goto LABEL_293;
              }

              if (v80 != 108)
              {
                goto LABEL_276;
              }
            }

            else
            {
              if (v80 <= 70)
              {
                if (v80 > 66)
                {
                  if (v80 != 67)
                  {
                    if (v80 == 68)
                    {
                      goto LABEL_273;
                    }

                    goto LABEL_276;
                  }

                  v16 = "\x1B[1;36m";
                }

                else
                {
                  if (v80 != 48)
                  {
                    if (v80 == 66)
                    {
                      v16 = "\x1B[1;34m";
                      goto LABEL_293;
                    }

                    goto LABEL_276;
                  }

                  v16 = "\x1B[0;30m";
                }

                goto LABEL_293;
              }

              if (v80 > 76)
              {
                switch(v80)
                {
                  case 'M':
                    v16 = "\x1B[1;35m";
                    break;
                  case 'R':
                    v16 = "\x1B[1;31m";
                    break;
                  case 'W':
                    v16 = "\x1B[1;37m";
                    goto LABEL_293;
                  default:
LABEL_276:
                    v16 = "\x1B[0;39;49m";
                    goto LABEL_293;
                }

                goto LABEL_293;
              }

              if (v80 == 71)
              {
                v16 = "\x1B[1;32m";
                goto LABEL_293;
              }

              if (v80 != 76)
              {
                goto LABEL_276;
              }
            }

            v16 = "\x1B[0;37m";
LABEL_293:
            sub_100062468(a1, v16);
            goto LABEL_294;
          case 0x3Du:
            v99 = a3++;
            if (*v99)
            {
              sub_100238128(a1, *v99, 0);
              goto LABEL_294;
            }

LABEL_171:
            v16 = "(null)";
            goto LABEL_293;
          case 0x40u:
            v89 = a3++;
            v90 = *v89;
            if ((v146 & 1) == 0)
            {
              if (v90)
              {
                sub_100307540(a1, v90);
                goto LABEL_267;
              }

LABEL_233:
              v128 = "(null)";
              goto LABEL_265;
            }

            v91 = a3++;
            if (!v90)
            {
              goto LABEL_233;
            }

            v92 = *v91;
            if (v92)
            {
              sub_10030761C(a1, v90, v92);
              goto LABEL_267;
            }

            v128 = "(empty)";
LABEL_265:
            v127 = a1;
            goto LABEL_266;
          case 0x41u:
            v56 = a3++;
            v57 = *v56;
            if (v146)
            {
              v58 = a3++;
              v7 = *v58;
              if (v7 > 32)
              {
                return result;
              }
            }

            else if (!v7)
            {
              v7 = 32;
              goto LABEL_252;
            }

            if (v7 < 1)
            {
              goto LABEL_267;
            }

LABEL_252:
            v134 = 0x80000000 >> (32 - v7);
            do
            {
              if ((v134 & v57) != 0)
              {
                v135 = "1";
              }

              else
              {
                v135 = "0";
              }

              sub_100062468(a1, v135);
              v55 = v134 >= 2;
              v134 >>= 1;
            }

            while (v55);
            v146 = 0;
            goto LABEL_258;
          case 0x42u:
            v8 = 0;
            v100 = a3++;
            LODWORD(v100) = *v100;
            v101 = *(a1 + 8);
            v102 = *(a1 + 4);
            *(a1 + 4) = v102 + 1;
            *(v101 + v102) = v100;
            goto LABEL_295;
          case 0x43u:
            v103 = a3++;
            v104 = *v103;
            v105 = "+";
            if ((v6 & 1) == 0)
            {
              v105 = 0;
            }

            if (v104 >= 0)
            {
              v106 = v105;
            }

            else
            {
              v106 = "-";
            }

            if (v104 >= 0)
            {
              v107 = v104;
            }

            else
            {
              v107 = -v104;
            }

            LOWORD(v7) = v7 - ((v104 < 0) | v6 & 1);
            v108 = v107;
            do
            {
              v7 = (v7 - 1);
              v109 = v7 >= 1 && v108 > 9;
              v108 /= 0xAu;
            }

            while (v109);
            if (v7 < 1)
            {
              goto LABEL_236;
            }

            if (v144)
            {
              sub_100062468(a1, v106);
              sub_100307498(a1, "000000000000000", v7);
            }

            else
            {
              sub_1000BE324(a1, v7);
LABEL_236:
              sub_100062468(a1, v106);
            }

            v88 = a1;
            v87 = v107;
LABEL_238:
            sub_100095588(v88, v87);
            goto LABEL_258;
          default:
            return result;
        }
      }

      if (v4[1] <= 0x74u)
      {
        if (v9 == 108)
        {
          v121 = v4[2] - 98;
          if (v121 > 0x16)
          {
            return result;
          }

          if (((1 << v121) & 0x4A0007) != 0)
          {
            v8 = 1;
            v13 = v6;
          }

          else
          {
            if (v4[2] != 108 || v4[3] != 117)
            {
              return result;
            }

            v8 = 1;
            v13 = v6;
            v143 = 1;
          }

          BYTE4(v144) = 1;
          goto LABEL_296;
        }

        if (v9 == 112)
        {
          v110 = a3++;
          v150 = *v110;
          v111 = *(a1 + 8);
          v112 = *(a1 + 4);
          *(a1 + 4) = v112 + 1;
          *(v111 + v112) = 48;
          v113 = *(a1 + 8);
          v114 = *(a1 + 4);
          *(a1 + 4) = v114 + 1;
          *(v113 + v114) = 120;
          v115 = 7;
          do
          {
            v116 = v115;
            v117 = *(&v150 + v115);
            LOBYTE(v149) = 0;
            v148 = 0;
            v118 = -2;
            v119 = &v149;
            do
            {
              *(v119 - 1) = a0123456789abcd_0[v117 & 0xF];
              v119 = (v119 - 1);
              v117 >>= 4;
              v55 = __CFADD__(v118++, 1);
            }

            while (!v55);
            sub_100062468(a1, v119);
            v115 = v116 - 1;
          }

          while (v116);
          goto LABEL_294;
        }

        if (v9 != 115)
        {
          return result;
        }

        if ((v144 & 0x100000000) != 0)
        {
LABEL_19:
          v17 = a3++;
          v18 = *v17;
          if (v146)
          {
            v19 = a3++;
            if (v18)
            {
              v20 = *v19;
              if (v20)
              {
                v21 = v20;
                v22 = a1;
LABEL_207:
                sub_100307828(v22, v18, v21);
LABEL_267:
                v146 = 0;
LABEL_294:
                v8 = 0;
                goto LABEL_295;
              }

              v127 = a1;
              v128 = "(empty)";
LABEL_266:
              sub_100062468(v127, v128);
              goto LABEL_267;
            }
          }

          else if (v18)
          {
            v22 = a1;
            v21 = 0xFFFF;
            goto LABEL_207;
          }

          v127 = a1;
          v128 = "(null)";
          goto LABEL_266;
        }

        v129 = a3++;
        v130 = *v129;
        if (v146)
        {
          v131 = a3++;
          if (v130)
          {
            v132 = *v131;
            if (v132)
            {
              sub_100307498(a1, v130, v132);
LABEL_282:
              v146 = 0;
              v8 = 0;
              BYTE4(v144) = 0;
LABEL_295:
              v13 = v6;
              goto LABEL_296;
            }

            v133 = a1;
            v130 = "(empty)";
LABEL_281:
            sub_100062468(v133, v130);
            goto LABEL_282;
          }
        }

        else if (v130)
        {
          v133 = a1;
          goto LABEL_281;
        }

        v133 = a1;
        v130 = "(null)";
        goto LABEL_281;
      }

      if (v9 == 117)
      {
        if ((v144 & 0x100000000) != 0 || (v143 & 1) == 0)
        {
          v124 = a3++;
          v123 = *v124;
        }

        else
        {
          v122 = a3++;
          v123 = *v122;
        }

        if (v7 >= 1)
        {
          v125 = v7;
          v126 = v123;
          do
          {
            --v125;
            v109 = v126 > 9;
            v126 /= 0xAuLL;
          }

          while (v109);
          if (v125 >= 1)
          {
            sub_1000BE324(a1, v125);
          }
        }

        sub_100095588(a1, v123);
        goto LABEL_294;
      }

      if (v9 == 120)
      {
        if (!v7)
        {
          v7 = 8;
        }

        v120 = a3++;
        sub_1000623D8(a1, *v120, v7);
        goto LABEL_294;
      }

      if (v9 != 126)
      {
        return result;
      }

      v23 = a3;
      v24 = *a3;
      a3 += 2;
      if (v24)
      {
        v25 = *(v23 + 2);
        if (v25 <= 3)
        {
          v26 = *(v24 + 2);
          if (v26)
          {
            if (!*v24)
            {
              result = sub_1000D660C(115);
              v26 = *(v24 + 2);
            }

            if (v26 <= 0)
            {
              result = sub_1000D660C(result);
              LOWORD(v26) = *(v24 + 4);
            }

            v27 = *v24;
            if (!*v24 || (v142 = v26, !v26))
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_varstring.c", 388, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
            }

            v28 = 0;
            v29 = 0;
            v140 = v25;
            v141 = v26;
            while (v25 <= 1)
            {
              if (!v25)
              {
                result = sub_1000D660C(result);
                goto LABEL_70;
              }

              if (v142 <= v29)
              {
                result = sub_1000D660C(result);
              }

              v30 = v29 + 1;
              v28 = *(v27 + v29);
              if (v28 < 0xC0)
              {
                ++v29;
              }

              else
              {
                if (v28 <= 0xFC)
                {
                  v32 = 5;
                  for (k = 252; k >= v28; k = (2 * k) & 0xF8)
                  {
                    --v32;
                  }

                  v31 = ~k;
                }

                else
                {
                  v31 = -253;
                  v32 = 5;
                }

                if (v32 + v30 > v142)
                {
                  v139 = v30;
                  result = sub_1000D660C(result);
                  v30 = v139;
                }

                v28 &= v31;
                if (!v32)
                {
                  v29 = v30;
LABEL_59:
                  v25 = v140;
                  goto LABEL_70;
                }

                v44 = v32;
                v45 = v30;
                v25 = v140;
                do
                {
                  v46 = v45++;
                  v28 = *(v27 + v46) & 0x3F | (v28 << 6);
                  --v44;
                }

                while (v44);
                v29 = v30 + v32;
              }

LABEL_70:
              v42 = *(a1 + 2);
              if (v28 <= 0xFE)
              {
                if (!*(a1 + 2) || (v47 = *(a1 + 4), v42 - 1 <= v47))
                {
                  if (*a1 != 1)
                  {
                    goto LABEL_250;
                  }

                  result = sub_1000D5E38(a1);
                  if (!result)
                  {
                    goto LABEL_250;
                  }

                  v47 = *(a1 + 4);
                }

                v48 = *(a1 + 8);
                *(a1 + 4) = v47 + 1;
                *(v48 + v47) = v28;
                goto LABEL_86;
              }

LABEL_77:
              v49 = v42 - 7;
              if (v42 < 7 || (v50 = *(a1 + 4), v49 <= v50))
              {
                if (*a1 != 1 || !sub_1000D5E38(a1))
                {
                  goto LABEL_250;
                }

                v50 = *(a1 + 4);
              }

              v51 = *(a1 + 8);
              *(a1 + 4) = v50 + 1;
              *(v51 + v50) = 92;
              LOBYTE(v149) = 0;
              v148 = 0;
              v52 = -6;
              v53 = v28;
              v54 = &v149;
              do
              {
                *(v54 - 1) = a0123456789abcd_0[v53 & 0xF];
                v54 = (v54 - 1);
                v53 >>= 4;
                v55 = __CFADD__(v52++, 1);
              }

              while (!v55);
              result = sub_100062468(a1, v54);
              if (result)
              {
                goto LABEL_250;
              }

LABEL_86:
              if (v29 == v141)
              {
                goto LABEL_250;
              }
            }

            if (v25 == 2)
            {
              v33 = v29 + 2;
              if (v33 > v142)
              {
                result = sub_1000D660C(result);
              }

              v39 = (v27 + v29);
              v40 = *v39;
              LODWORD(v39) = v39[1];
              v28 = v40 | (v39 << 8);
              if ((v39 & 0xFC) == 0xD8)
              {
                v41 = (v29 + 2);
                v29 = v41 + 2;
                if (v41 + 2 > v142)
                {
                  sub_1000D660C(result);
                }

                v38 = (v27 + v41);
                v37 = v38 + 1;
                goto LABEL_57;
              }
            }

            else
            {
              v33 = v29 + 2;
              if (v33 > v142)
              {
                result = sub_1000D660C(result);
              }

              v34 = (v27 + v29);
              v35 = v34[1];
              LODWORD(v34) = *v34;
              v28 = v35 | (v34 << 8);
              if ((v34 & 0xFC) == 0xD8)
              {
                v36 = (v29 + 2);
                v29 = v36 + 2;
                if (v36 + 2 > v142)
                {
                  sub_1000D660C(result);
                }

                v37 = (v27 + v36);
                v38 = v37 + 1;
LABEL_57:
                v28 = (*v38 | ((*v37 & 3) << 8) & 0x3FF | ((v28 & 0x3FF) << 10)) + 0x10000;
                v42 = *(a1 + 2);
                v25 = v140;
                goto LABEL_77;
              }
            }

            v29 = v33;
            goto LABEL_59;
          }
        }
      }

      else
      {
        sub_100062468(a1, "(null)");
      }

LABEL_258:
      v8 = 0;
      v13 = v6;
LABEL_296:
      v6 = v13;
      v4 = v10;
      if (v7 > 32)
      {
        return 115;
      }
    }
  }

  return 0;
}

uint64_t sub_10000C050(unsigned int a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100190CA0;
  block[3] = &unk_100AE4B20;
  v5 = a1;
  if (qword_100B57C98 != -1)
  {
    dispatch_once(&qword_100B57C98, block);
  }

  if (a1 >= 0x5C)
  {
    v2 = 92;
  }

  else
  {
    v2 = a1;
  }

  return qword_100B57CA0[v2];
}

uint64_t sub_10000C108(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004977B0;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E448 != -1)
  {
    dispatch_once(&qword_100B6E448, block);
  }

  return byte_100B6E440;
}

uint64_t sub_10000C198()
{
  v0 = sub_100022228();
  result = pthread_mutex_unlock(&stru_100B5AC18);
  if (v0)
  {

    return sub_1000BB9C0();
  }

  return result;
}

uint64_t sub_10000C1F8()
{
  if ((byte_100B6D188 & 1) == 0 && byte_100B6D190)
  {
    do
    {
      byte_100B6D190 = 0;
      result = sub_1000228CC();
    }

    while ((byte_100B6D190 & 1) != 0);
  }

  return result;
}

uint64_t sub_10000C250@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (*(result + 8))
  {
    v2 = result;
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    *__p = 0u;
    v14 = 0u;
    v11 = 0u;
    memset(v12, 0, sizeof(v12));
    v10 = 0u;
    sub_100007AD0(&v10);
    v3 = 0;
    v4 = v11;
    *(&v12[-1] + *(v11 - 24) + 8) = *(&v12[-1] + *(v11 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(&v12[-1] + *(v4 - 24) + 8) |= 0x4000u;
    while (1)
    {
      v5 = *(v2 + 8);
      if (v5)
      {
        v5 = *(v5 + 16);
      }

      if (v3 >= v5)
      {
        break;
      }

      if (v3)
      {
        LOBYTE(v26.__locale_) = 32;
        sub_100007774(&v11);
      }

      v6 = v11;
      v7 = &v12[-1] + *(v11 - 24);
      if (*(v7 + 36) == -1)
      {
        std::ios_base::getloc((&v12[-1] + *(v11 - 24)));
        v8 = std::locale::use_facet(&v26, &std::ctype<char>::id);
        (v8->__vftable[2].~facet_0)(v8, 32);
        std::locale::~locale(&v26);
        v6 = v11;
      }

      *(v7 + 36) = 48;
      *(v12 + *(v6 - 24) + 8) = 2;
      std::ostream::operator<<();
      ++v3;
    }

    std::stringbuf::str();
    *&v11 = v9;
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[1]);
    }

    std::locale::~locale(v12);
    std::iostream::~basic_iostream();
    return std::ios::~ios();
  }

  else
  {
    a2[23] = 4;
    strcpy(a2, "NULL");
  }

  return result;
}

void sub_10000C59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10000C5E0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *(v1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000C5F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return v1 + 24;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000C60C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100499204;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E4B8 != -1)
  {
    dispatch_once(&qword_100B6E4B8, block);
  }

  return byte_100B6E4B0;
}

void sub_10000C69C(uint64_t a1)
{
  if (atomic_fetch_add_explicit((a1 + 8), 0, memory_order_relaxed) <= 0x3FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 1u, memory_order_relaxed) <= 0)
  {
    v1 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_10082928C(v1);
    }
  }
}

void *sub_10000C704(void *a1, const void *a2, size_t a3)
{
  v6 = operator new(a3 + 24);
  v6[2] = 1;
  *v6 = &off_100B0A918;
  *(v6 + 2) = a3;
  memcpy(v6 + 6, a2, a3);
  *a1 = &off_100AE0A78;
  a1[1] = v6;
  return a1;
}

uint64_t sub_10000C798()
{
  if (qword_100B6D7C0 != -1)
  {
    sub_10082C164();
  }

  return qword_100B6D7B8;
}

uint64_t sub_10000C7D0()
{
  if (qword_100B6D810 != -1)
  {
    sub_10082C1C8();
  }

  return qword_100B6D808;
}

void sub_10000C808(atomic_uint *a1)
{
  if (atomic_fetch_add_explicit(a1 + 2, 0, memory_order_relaxed) <= 0x3FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(a1 + 2, 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit <= 0)
    {
      v3 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
      {
        sub_100829310(v3);
      }
    }

    else if (a1 && add_explicit == 1)
    {
      v2 = *(*a1 + 8);

      v2();
    }
  }
}

uint64_t sub_10000C8B8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100018154(result, a4);
  }

  return result;
}

uint64_t sub_10000C954(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10000CD6C(result, a4);
  }

  return result;
}

uint64_t sub_10000C9B4(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1007B2558(v5, v5 + 1, v4 + 28);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_10000CA3C(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10000C9B4(a1, *a2, (a2 + 8));
  return a1;
}

void sub_10000CA94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 8);
  if (v4 || (v5 = qword_100BCEA60, os_log_type_enabled(qword_100BCEA60, OS_LOG_TYPE_FAULT)) && (v6 = 136446210, v7 = "fQueue", _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v6, 0xCu), (v4 = *(a1 + 8)) != 0))
  {
    dispatch_async(v4, v3);
  }
}

void *sub_10000CB74(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_10003B814(result, 0xCCCCCCCCCCCCCCCDLL * ((v2 - *a2) >> 2));
  }

  return result;
}

uint64_t sub_10000CBF0(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(a1 + 48) = *(a2 + 12);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *a1 = v4;
  v7 = objc_retainBlock(*(a2 + 7));
  *(a1 + 64) = 0;
  *(a1 + 56) = v7;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_10000C954(a1 + 64, *(a2 + 8), *(a2 + 9), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 9) - *(a2 + 8)) >> 5));
  sub_10000CB74((a1 + 88), a2 + 11);
  sub_10000CA3C((a1 + 112), (a2 + 7));
  v8 = *(a2 + 136);
  *(a1 + 144) = 0;
  *(a1 + 136) = v8;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  sub_10000C8B8(a1 + 144, *(a2 + 18), *(a2 + 19), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 19) - *(a2 + 18)) >> 5));
  return a1;
}

void sub_10000CCC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000CEDC(v2 + 112, *(v2 + 120));
  v4 = *(v2 + 88);
  if (v4)
  {
    *(v2 + 96) = v4;
    operator delete(v4);
  }

  sub_10000CFB0(va);

  _Unwind_Resume(a1);
}

void sub_10000CD14(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1000C7698();
}

void sub_10000CD6C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    sub_10000CD14(a1, a2);
  }

  sub_1000C7698();
}

void sub_10000CDB8(uint64_t *a1, __int128 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0xCCCCCCCCCCCCCCCLL)
    {
      sub_1000C7698();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x666666666666666)
    {
      v11 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_100018404(a1, v11);
    }

    v12 = 20 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 4);
    *v12 = v13;
    v7 = 20 * v8 + 20;
    v14 = *a1;
    v15 = a1[1];
    v16 = 20 * v8 + *a1 - v15;
    if (*a1 != v15)
    {
      v17 = 20 * v8 + *a1 - v15;
      do
      {
        v18 = *v14;
        *(v17 + 16) = v14[4];
        *v17 = v18;
        v17 += 20;
        v14 += 5;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = v7;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 4);
    *v5 = v6;
    v7 = v5 + 20;
  }

  a1[1] = v7;
}

void sub_10000CEDC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10000CEDC(a1, *a2);
    sub_10000CEDC(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_10000CF30(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 12);
        v4 -= 96;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10000CFB0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000181A0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_10000D004()
{
  if (qword_100B6E368 != -1)
  {
    sub_100831300();
  }

  return byte_100B6E360;
}

__n128 sub_10000D03C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

void sub_10000D058(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100007F20(&v5, (a1 + 8));
  os_unfair_lock_unlock(a1);
  v4 = v5;
  if (v5 != v6)
  {
    do
    {
      v3[2](v3, *v4++);
    }

    while (v4 != v6);
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
    operator delete(v4);
  }
}

uint64_t sub_10000D124(int8x8_t *a1, unsigned int a2, unint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    if (64 - a2 >= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = 64 - a2;
    }

    v5 = *a1++;
    v6 = vcnt_s8(((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v4)) & (-1 << a2) & v5));
    v6.i16[0] = vaddlv_u8(v6);
    v3 = v6.u32[0];
    a3 -= v4;
  }

  if (a3 >= 0x40)
  {
    do
    {
      v7 = *a1++;
      v8 = vcnt_s8(v7);
      v8.i16[0] = vaddlv_u8(v8);
      v3 += v8.u32[0];
      a3 -= 64;
    }

    while (a3 > 0x3F);
  }

  if (a3)
  {
    v9 = vcnt_s8((*a1 & (0xFFFFFFFFFFFFFFFFLL >> -a3)));
    v9.i16[0] = vaddlv_u8(v9);
    v3 += v9.u32[0];
  }

  return v3;
}

BOOL sub_10000D1C8(uint64_t a1)
{
  if (*(a1 + 81) == 32)
  {
    v2 = *(a1 + 8);
    if (*(v2 + 1))
    {
      return 1;
    }

    if ([*(v2 + 112) count])
    {
      return 1;
    }

    v3 = *(a1 + 8);
    if (v3[11] != v3[12] || v3[2] != v3[1])
    {
      return 1;
    }

    v7 = v3 + 15;
    v6 = v3 + 16;
    return *v7 != *v6;
  }

  if (*(a1 + 80) == 1)
  {
    v5 = *(a1 + 8);
    v6 = (v5 + 8);
    v7 = (v5 + 16);
    return *v7 != *v6;
  }

  return 0;
}

void sub_10000D27C(dispatch_source_t *a1)
{
  global_queue = dispatch_get_global_queue(17, 0);
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, global_queue);
  a1[2] = v3;
  dispatch_set_context(v3, a1);
  dispatch_source_set_event_handler_f(a1[2], sub_1000461FC);
  v4 = a1[2];
  v5 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v4, v5, 0x2540BE400uLL, 0x3B9ACA00uLL);
  v6 = a1[2];

  dispatch_resume(v6);
}

void sub_10000D334(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100B6EFD8 != -1)
  {
    sub_100843DC8();
  }

  if (qword_100B6EFD0 == a1)
  {
    v4 = qword_100BCEA60;
    if (os_log_type_enabled(qword_100BCEA60, OS_LOG_TYPE_FAULT))
    {
      sub_100843F58(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  dispatch_sync(*(a1 + 8), v3);
}

void sub_10000D3C4(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      sub_10000D5B4(v5);
    }

    (*(*a1 + 16))(a1, object);
    v6 = *(a1 + 32);
    if (v6)
    {

      sub_10000EE38(v6);
    }
  }

  else if (type == &_xpc_type_error)
  {
    v7 = qword_100BCE950;
    if (object == &_xpc_error_connection_invalid)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        v8 = (a1 + 56);
        if (*(a1 + 79) < 0)
        {
          v8 = *v8;
        }

        v9 = 136446210;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Closed XPC connection to session %{public}s", &v9, 0xCu);
      }

      (*(*a1 + 24))(a1, 0);
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100820900(object);
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100820890();
  }
}

void sub_10000D5B4(uint64_t a1)
{
  os_unfair_lock_lock(a1);
  *(a1 + 24) = 0;
  *(a1 + 4) = 1;
  ++*(a1 + 8);
  if (!*(a1 + 16))
  {
    sub_10000D27C(a1);
  }

  os_unfair_lock_unlock(a1);
}

void sub_10000D614(char *a1, xpc_object_t xdict)
{
  int64 = xpc_dictionary_get_int64(xdict, "kCBMsgId");
  v5 = (*(*a1 + 32))(a1, int64);
  v7 = v6 & 1;
  v8 = qword_100BCE950;
  if (v7 | v5)
  {
    v9 = v5;
    v10 = v6;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v11 = (*(*a1 + 56))(a1, int64);
      v12 = a1 + 56;
      if (a1[79] < 0)
      {
        v12 = *v12;
      }

      v20 = 136446466;
      v21 = v11;
      v22 = 2082;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received XPC message %{public}s from session %{public}s", &v20, 0x16u);
    }

    sub_10000EC68(a1, xdict);
    if (*(a1 + 16) && ((v13 = *(a1 + 34), v13 == 10) || v13 == 5 || v13 == 4 && ((*(*a1 + 40))(a1, int64) & 1) != 0 || ((*(*a1 + 48))(a1, int64) & 1) != 0) || int64 <= 9 && ((1 << int64) & 0x396) != 0)
    {
      v14 = &a1[v10 >> 1];
      if (v7)
      {
        v9 = *(*v14 + v9);
      }

      v9(v14, xdict);
    }

    else
    {
      v15 = *(a1 + 16);
      v16 = qword_100BCE950;
      v17 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR);
      if (v15)
      {
        if (v17)
        {
          sub_100849F0C(a1, v16);
        }

        reply = xpc_dictionary_create_reply(xdict);
        if (reply)
        {
          v19 = reply;
          xpc_dictionary_set_int64(reply, "kCBMsgArgResult", 12);
          xpc_connection_send_message(*(a1 + 2), v19);
          xpc_release(v19);
        }
      }

      else if (v17)
      {
        sub_100849F9C(v16);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100849FE0(int64, v8);
  }
}

void (*sub_10000D8F4(uint64_t a1, int a2))(uint64_t a1, void *a2)
{
  result = sub_100012A28;
  switch(a2)
  {
    case 1:
      return result;
    case 2:
      v3 = sub_100022B5C;
      goto LABEL_150;
    case 4:
      v3 = sub_100062B28;
      goto LABEL_150;
    case 8:
      v3 = sub_10064DE64;
      goto LABEL_150;
    case 10:
      v3 = sub_1006510B4;
      goto LABEL_150;
    case 11:
      v3 = sub_100651190;
      goto LABEL_150;
    case 12:
      v3 = sub_10065120C;
      goto LABEL_150;
    case 13:
      v3 = sub_1006512E0;
      goto LABEL_150;
    case 14:
      v3 = sub_10065152C;
      goto LABEL_150;
    case 15:
      v3 = sub_100651938;
      goto LABEL_150;
    case 16:
      v3 = sub_100651BA8;
      goto LABEL_150;
    case 17:
      v3 = sub_100651CD0;
      goto LABEL_150;
    case 21:
      v3 = sub_100651E80;
      goto LABEL_150;
    case 22:
      v3 = sub_100652068;
      goto LABEL_150;
    case 23:
      v3 = sub_100654960;
      goto LABEL_150;
    case 24:
      v3 = sub_100654C44;
      goto LABEL_150;
    case 29:
      v3 = sub_100665928;
      goto LABEL_150;
    case 30:
      v3 = sub_100665C94;
      goto LABEL_150;
    case 31:
      v3 = sub_100665DCC;
      goto LABEL_150;
    case 33:
      v3 = sub_100652164;
      goto LABEL_150;
    case 34:
      v3 = sub_10065220C;
      goto LABEL_150;
    case 36:
      v3 = sub_100652668;
      goto LABEL_150;
    case 37:
      v3 = sub_100652530;
      goto LABEL_150;
    case 38:
      v3 = sub_100652FFC;
      goto LABEL_150;
    case 39:
      v3 = sub_100653430;
      goto LABEL_150;
    case 40:
      v3 = sub_1006534C0;
      goto LABEL_150;
    case 41:
      v3 = sub_1006537E8;
      goto LABEL_150;
    case 42:
      v3 = sub_100653ADC;
      goto LABEL_150;
    case 43:
      v3 = sub_1006540BC;
      goto LABEL_150;
    case 44:
      v3 = sub_100654180;
      goto LABEL_150;
    case 45:
      v3 = sub_1006541FC;
      goto LABEL_150;
    case 46:
      v3 = sub_1006543CC;
      goto LABEL_150;
    case 47:
      v3 = sub_1006545CC;
      goto LABEL_150;
    case 48:
      v3 = sub_100654650;
      goto LABEL_150;
    case 49:
      v3 = sub_100654F1C;
      goto LABEL_150;
    case 50:
      v3 = sub_1006550B4;
      goto LABEL_150;
    case 51:
      v3 = sub_100655314;
      goto LABEL_150;
    case 52:
      v3 = sub_1006554C4;
      goto LABEL_150;
    case 66:
      v3 = sub_100654D60;
      goto LABEL_150;
    case 69:
      v3 = sub_10065568C;
      goto LABEL_150;
    case 70:
      v3 = sub_1006559F8;
      goto LABEL_150;
    case 71:
      v3 = sub_10003E488;
      goto LABEL_150;
    case 72:
      v3 = sub_10003EBD4;
      goto LABEL_150;
    case 73:
      v3 = sub_10009F630;
      goto LABEL_150;
    case 74:
      v3 = sub_100656F70;
      goto LABEL_150;
    case 75:
      v3 = sub_100655E9C;
      goto LABEL_150;
    case 76:
      v3 = sub_100656578;
      goto LABEL_150;
    case 77:
      v3 = sub_100063DA4;
      goto LABEL_150;
    case 78:
      v3 = sub_1000C154C;
      goto LABEL_150;
    case 79:
      v3 = sub_10065718C;
      goto LABEL_150;
    case 80:
      v3 = sub_100658E94;
      goto LABEL_150;
    case 81:
      v3 = sub_1006591F4;
      goto LABEL_150;
    case 82:
      v3 = sub_10065954C;
      goto LABEL_150;
    case 83:
      v3 = sub_100659B0C;
      goto LABEL_150;
    case 84:
      v3 = sub_1006622E8;
      goto LABEL_150;
    case 85:
      v3 = sub_100661D30;
      goto LABEL_150;
    case 86:
      v3 = sub_100661E70;
      goto LABEL_150;
    case 87:
      v3 = sub_100662970;
      goto LABEL_150;
    case 88:
      v3 = sub_1006611E8;
      goto LABEL_150;
    case 89:
      v3 = sub_100662F28;
      goto LABEL_150;
    case 90:
      v3 = sub_100657044;
      goto LABEL_150;
    case 100:
      v3 = sub_10009ECF0;
      goto LABEL_150;
    case 102:
      v3 = sub_100659C44;
      goto LABEL_150;
    case 103:
      v3 = sub_100659C84;
      goto LABEL_150;
    case 104:
      v3 = sub_100659CC4;
      goto LABEL_150;
    case 105:
      v3 = sub_100659D50;
      goto LABEL_150;
    case 106:
      v3 = sub_100659DDC;
      goto LABEL_150;
    case 107:
      v3 = sub_100659EBC;
      goto LABEL_150;
    case 108:
      v3 = sub_10065A12C;
      goto LABEL_150;
    case 109:
      v3 = sub_10065A2C0;
      goto LABEL_150;
    case 110:
      v3 = sub_10065A4A8;
      goto LABEL_150;
    case 111:
      v3 = sub_1000AE1E8;
      goto LABEL_150;
    case 112:
      v3 = sub_10065A6C4;
      goto LABEL_150;
    case 113:
      v3 = sub_10065A8F8;
      goto LABEL_150;
    case 114:
      v3 = sub_10065AD3C;
      goto LABEL_150;
    case 115:
      v3 = sub_10065B678;
      goto LABEL_150;
    case 116:
      v3 = sub_10065BE00;
      goto LABEL_150;
    case 118:
      v3 = sub_100655C14;
      goto LABEL_150;
    case 119:
      v3 = sub_10065C3D4;
      goto LABEL_150;
    case 120:
      v3 = sub_10065C588;
      goto LABEL_150;
    case 121:
      v3 = sub_10065C7E0;
      goto LABEL_150;
    case 122:
      v3 = sub_10065C964;
      goto LABEL_150;
    case 123:
      v3 = sub_10065D04C;
      goto LABEL_150;
    case 124:
      v3 = sub_10065CCD8;
      goto LABEL_150;
    case 125:
      v3 = sub_10065D5F8;
      goto LABEL_150;
    case 126:
      v3 = sub_10065D96C;
      goto LABEL_150;
    case 127:
      v3 = sub_10065E0B4;
      goto LABEL_150;
    case 128:
      v3 = sub_10065E52C;
      goto LABEL_150;
    case 129:
      v3 = sub_10065E9FC;
      goto LABEL_150;
    case 130:
      v3 = sub_10065EF84;
      goto LABEL_150;
    case 131:
      v3 = sub_10065F304;
      goto LABEL_150;
    case 132:
      v3 = sub_10065F634;
      goto LABEL_150;
    case 133:
      v3 = sub_10065F7A4;
      goto LABEL_150;
    case 134:
      v3 = sub_10065FB6C;
      goto LABEL_150;
    case 135:
      v3 = sub_1006600D4;
      goto LABEL_150;
    case 137:
      v3 = sub_100661F2C;
      goto LABEL_150;
    case 138:
      v3 = sub_1006620CC;
      goto LABEL_150;
    case 139:
      v3 = sub_1006621D0;
      goto LABEL_150;
    case 144:
      v3 = sub_10065A7A8;
      goto LABEL_150;
    case 147:
      v3 = sub_100661790;
      goto LABEL_150;
    case 148:
      v3 = sub_100661A60;
      goto LABEL_150;
    case 149:
      v3 = sub_100660430;
      goto LABEL_150;
    case 150:
      v3 = sub_100660AF4;
      goto LABEL_150;
    case 151:
      v3 = sub_100660E88;
      goto LABEL_150;
    case 152:
      v3 = sub_10066269C;
      goto LABEL_150;
    case 153:
      v3 = sub_1006627B0;
      goto LABEL_150;
    case 154:
      v3 = sub_100663008;
      goto LABEL_150;
    case 155:
      v3 = sub_100663E54;
      goto LABEL_150;
    case 156:
      v3 = sub_1006630F4;
      goto LABEL_150;
    case 158:
      v3 = sub_100663738;
      goto LABEL_150;
    case 160:
      v3 = sub_10066388C;
      goto LABEL_150;
    case 164:
      v3 = sub_100663B88;
      goto LABEL_150;
    case 166:
      v3 = sub_100663F08;
      goto LABEL_150;
    case 170:
      v3 = sub_100663CD0;
      goto LABEL_150;
    case 172:
      v3 = sub_100662A78;
      goto LABEL_150;
    case 173:
      v3 = sub_100662BB4;
      goto LABEL_150;
    case 174:
      v3 = sub_100664050;
      goto LABEL_150;
    case 179:
      v3 = sub_100664330;
      goto LABEL_150;
    case 180:
      v3 = sub_100664550;
      goto LABEL_150;
    case 181:
      v3 = sub_10066472C;
      goto LABEL_150;
    case 182:
      v3 = sub_100664AB4;
      goto LABEL_150;
    case 183:
      v3 = sub_100664F78;
      goto LABEL_150;
    case 184:
      v3 = sub_100665284;
      goto LABEL_150;
    case 185:
      v3 = sub_1006653AC;
      goto LABEL_150;
    case 186:
      v3 = sub_1006654C8;
      goto LABEL_150;
    case 187:
      v3 = sub_100665614;
      goto LABEL_150;
    case 188:
      v3 = sub_1006657D4;
      goto LABEL_150;
    case 194:
      v3 = sub_100665FDC;
      goto LABEL_150;
    case 195:
      v3 = sub_100666240;
      goto LABEL_150;
    case 197:
      v3 = sub_1006663B8;
      goto LABEL_150;
    case 198:
      v3 = sub_100666554;
      goto LABEL_150;
    case 199:
      v3 = sub_10066693C;
      goto LABEL_150;
    case 200:
      v3 = sub_100666B04;
      goto LABEL_150;
    case 203:
      v3 = sub_100666CCC;
      goto LABEL_150;
    case 204:
      v3 = sub_100666E10;
      goto LABEL_150;
    case 206:
      v3 = sub_10066704C;
      goto LABEL_150;
    case 207:
      v3 = sub_1006671A8;
      goto LABEL_150;
    case 213:
      v3 = sub_100667314;
      goto LABEL_150;
    case 214:
      v3 = sub_10066751C;
      goto LABEL_150;
    case 217:
      v3 = sub_10066780C;
      goto LABEL_150;
    case 218:
      v3 = sub_100667C88;
      goto LABEL_150;
    case 219:
      v3 = sub_10064DF4C;
      goto LABEL_150;
    case 220:
      v3 = sub_10064E074;
      goto LABEL_150;
    case 223:
      v3 = sub_1006624D4;
      goto LABEL_150;
    case 229:
      v3 = sub_100667EE4;
      goto LABEL_150;
    case 230:
      v3 = sub_100656C54;
      goto LABEL_150;
    case 231:
      v3 = sub_100667F4C;
      goto LABEL_150;
    case 232:
      v3 = sub_100656CD4;
      goto LABEL_150;
    case 256:
      v3 = sub_100668790;
LABEL_150:
      result = v3;
      break;
    default:
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085654C();
      }

      result = 0;
      break;
  }

  return result;
}

uint64_t sub_10000E92C()
{
  if (qword_100B6D800 != -1)
  {
    sub_10082C1B4();
  }

  (*(*qword_100B6D7F8 + 40))(qword_100B6D7F8);
  return qword_100B6D7F8;
}

uint64_t sub_10000E990(uint64_t a1)
{
  v16[0] = 0;
  v16[1] = 0;
  v2 = sub_100007F88(v16, a1 + 296);
  if ((byte_100B6D6C8 & 1) == 0)
  {
    byte_100B6D6C8 = 1;
    sub_10000801C(v2);
    if (qword_100B50AA0 != -1)
    {
      sub_100828C4C();
    }

    sub_100312650(off_100B50A98 + 64, a1 + 8);
    v15 = 0;
    v14 = 0;
    sub_1003FDE90(a1, &v15 + 1, &v15, &v14);
    v3 = sub_10000C7D0();
    sub_1001C3A60(0, v14, *(v3 + 800));
    sub_1001C3A24(sub_1003FE3C8);
    if (*(a1 + 20) == -1)
    {
      v4 = *(a1 + 24);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1003FE43C;
      handler[3] = &unk_100AF0BA0;
      handler[4] = a1;
      notify_register_dispatch("com.apple.MCX._managementStatusChangedForDomains", (a1 + 20), v4, handler);
    }

    if (*(a1 + 16) == -1)
    {
      v5 = *(a1 + 24);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1003FE464;
      v12[3] = &unk_100AF0BA0;
      v12[4] = a1;
      notify_register_dispatch("com.apple.bluetooth.prefsChanged", (a1 + 16), v5, v12);
    }

    sub_100304C38(sub_1003FDABC);
    v11 = 0;
    sub_100007E30(v9, "Logging");
    sub_100007E30(__p, "EnableVerboseL2CAPDump");
    (*(*a1 + 72))(a1, v9, __p, &v11);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    if (v10 < 0)
    {
      operator delete(v9[0]);
    }

    sub_10029DCC0(v11);
    (**a1)(a1);
    (*(*a1 + 32))(a1);
  }

  return sub_1000088CC(v16);
}

void sub_10000EC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_1000088CC(v20 - 32);
  _Unwind_Resume(a1);
}

void sub_10000EC68(char *a1, void *a2)
{
  v4 = sub_10000E92C();
  v5 = (*(*v4 + 456))(v4);
  if (a2 && v5)
  {
    if (xpc_get_type(a2) == &_xpc_type_error)
    {
      v11 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10084A058(v11);
      }
    }

    else
    {
      v6 = xpc_copy_description(a2);
      int64 = xpc_dictionary_get_int64(a2, "kCBMsgId");
      v8 = qword_100BCEA78;
      if (os_log_type_enabled(qword_100BCEA78, OS_LOG_TYPE_DEFAULT))
      {
        v9 = (*(*a1 + 56))(a1, int64);
        v10 = a1 + 56;
        if (a1[79] < 0)
        {
          v10 = *v10;
        }

        v12 = 136446978;
        v13 = v9;
        v14 = 2082;
        v15 = v10;
        v16 = 1024;
        count = xpc_dictionary_get_count(a2);
        v18 = 2080;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Msg:%{public}s, Session:%{public}s, Count:%d, xpc_copy_description(args): %s ", &v12, 0x26u);
      }

      free(v6);
    }
  }
}

void sub_10000EE38(uint64_t a1)
{
  os_unfair_lock_lock(a1);
  *(a1 + 4) = 0;
  *(a1 + 24) = 0;

  os_unfair_lock_unlock(a1);
}

uint64_t sub_10000EE80()
{
  if (qword_100B6D860 != -1)
  {
    sub_10082C274();
  }

  return qword_100B6D858;
}

uint64_t sub_10000EEB8(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

uint64_t sub_10000EFDC()
{
  v0 = *(*sub_10000F034() + 40);

  return v0();
}

uint64_t sub_10000F034()
{
  if (qword_100B6D820 != -1)
  {
    sub_10082C238();
  }

  return qword_100B6D818;
}

void sub_10000F06C(uint64_t a1, uint64_t a2)
{
  if (sub_100011690())
  {
    v3 = *a2;
    v216 = a2;
    if (*a2 > 15)
    {
      if (v3 > 17)
      {
        if (v3 == 18)
        {
          v238[0] = @"Connected";
          v112 = [NSNumber numberWithBool:*(a2 + 4)];
          v239[0] = v112;
          v238[1] = @"StartTime";
          v113 = [NSNumber numberWithUnsignedLongLong:*(a2 + 8)];
          v239[1] = v113;
          v238[2] = @"StopTime";
          v114 = [NSNumber numberWithUnsignedLongLong:*(a2 + 16)];
          v239[2] = v114;
          v238[3] = @"Duration";
          v115 = [NSNumber numberWithUnsignedLongLong:*(a2 + 24)];
          v239[3] = v115;
          v238[4] = @"UpgradeCount";
          v116 = [NSNumber numberWithUnsignedInt:*(a2 + 32)];
          v239[4] = v116;
          v238[5] = @"UpgradeDuration";
          v117 = [NSNumber numberWithUnsignedLongLong:*(a2 + 40)];
          v239[5] = v117;
          v238[6] = @"TimeBetweenUpgrades";
          v118 = [NSNumber numberWithUnsignedLongLong:*(a2 + 48)];
          v239[6] = v118;
          v238[7] = @"RSSI";
          v119 = [NSNumber numberWithLongLong:*(a2 + 56)];
          v239[7] = v119;
          v120 = [NSDictionary dictionaryWithObjects:v239 forKeys:v238 count:8];

          sub_10003BA40(a1, 0x7Cu, v120);
          goto LABEL_53;
        }

        if (v3 == 24)
        {
          v24 = objc_alloc_init(NSMutableDictionary);
          v25 = [NSNumber numberWithUnsignedInt:*(a2 + 4)];
          [v24 setObject:v25 forKey:@"LEPhyType"];

          v26 = [NSNumber numberWithUnsignedInt:*(a2 + 20)];
          [v24 setObject:v26 forKey:@"LeCoexDenials"];

          v27 = [NSNumber numberWithUnsignedInt:*(a2 + 16)];
          [v24 setObject:v27 forKey:@"LeDurationInMs"];

          v28 = [NSNumber numberWithUnsignedInt:*(a2 + 8)];
          [v24 setObject:v28 forKey:@"CumulativeLeTxBytes"];

          v29 = [NSNumber numberWithUnsignedInt:*(a2 + 12)];
          [v24 setObject:v29 forKey:@"CumulativeLeRxBytes"];

          v30 = *(a2 + 24);
          v217 = *(a2 + 32);
          if (v30 != v217)
          {
            v31 = 0;
            v32 = 0;
            do
            {
              v33 = [NSString stringWithFormat:@"LETxPerVsRssi_PER_%02lu", v32];
              v34 = [NSString stringWithFormat:@"LETxPerVsRssi_PER_%02lu", v32];
              v35 = [NSString stringWithFormat:@"LETxPerVsRssi_PER_%02lu", v32];
              v36 = [NSNumber numberWithUnsignedInt:**(v30 + 8 * v32)];
              [v24 setObject:v33 forKey:v36];

              v37 = [NSNumber numberWithUnsignedInt:*(*(v30 + 8 * v32) + 4)];
              [v24 setObject:v34 forKey:v37];

              v38 = [NSNumber numberWithUnsignedInt:*(*(v30 + 8 * v32) + 8)];
              [v24 setObject:v35 forKey:v38];

              ++v32;
              v31 += 8;
            }

            while (v30 + v31 != v217);
          }

          v39 = *(v216 + 48);
          v218 = *(v216 + 56);
          if (v39 != v218)
          {
            v40 = 0;
            v41 = 0;
            do
            {
              v42 = [NSString stringWithFormat:@"LERxPerVsRssi_PER_%02lu", v41];
              v43 = [NSString stringWithFormat:@"LERxPerVsRssi_PER_%02lu", v41];
              v44 = [NSString stringWithFormat:@"LERxPerVsRssi_PER_%02lu", v41];
              v45 = [NSNumber numberWithUnsignedInt:**(v39 + 8 * v41)];
              [v24 setObject:v42 forKey:v45];

              v46 = [NSNumber numberWithUnsignedInt:*(*(v39 + 8 * v41) + 4)];
              [v24 setObject:v43 forKey:v46];

              v47 = [NSNumber numberWithUnsignedInt:*(*(v39 + 8 * v41) + 8)];
              [v24 setObject:v44 forKey:v47];

              ++v41;
              v40 += 8;
            }

            while (v39 + v40 != v218);
          }

          v48 = *(v216 + 144);
          v219 = *(v216 + 152);
          if (v48 != v219)
          {
            v49 = 0;
            v50 = 0;
            do
            {
              v51 = [NSString stringWithFormat:@"ClTxPerVsRssi_PER_%02lu", v50];
              v52 = [NSString stringWithFormat:@"ClTxPerVsRssi_PER_%02lu", v50];
              v53 = [NSString stringWithFormat:@"ClTxPerVsRssi_PER_%02lu", v50];
              v54 = [NSNumber numberWithUnsignedInt:**(v48 + 8 * v50)];
              [v24 setObject:v51 forKey:v54];

              v55 = [NSNumber numberWithUnsignedInt:*(*(v48 + 8 * v50) + 4)];
              [v24 setObject:v52 forKey:v55];

              v56 = [NSNumber numberWithUnsignedInt:*(*(v48 + 8 * v50) + 8)];
              [v24 setObject:v53 forKey:v56];

              ++v50;
              v49 += 8;
            }

            while (v48 + v49 != v219);
          }

          v57 = *(v216 + 168);
          v220 = *(v216 + 176);
          if (v57 != v220)
          {
            v58 = 0;
            v59 = 0;
            do
            {
              v60 = [NSString stringWithFormat:@"ClRxPerVsRssi_PER_%02lu", v59];
              v61 = [NSString stringWithFormat:@"ClRxPerVsRssi_PER_%02lu", v59];
              v62 = [NSString stringWithFormat:@"ClRxPerVsRssi_PER_%02lu", v59];
              v63 = [NSNumber numberWithUnsignedInt:**(v57 + 8 * v59)];
              [v24 setObject:v60 forKey:v63];

              v64 = [NSNumber numberWithUnsignedInt:*(*(v57 + 8 * v59) + 4)];
              [v24 setObject:v61 forKey:v64];

              v65 = [NSNumber numberWithUnsignedInt:*(*(v57 + 8 * v59) + 8)];
              [v24 setObject:v62 forKey:v65];

              ++v59;
              v58 += 8;
            }

            while (v57 + v58 != v220);
          }

          v66 = *(v216 + 72);
          v67 = *(v216 + 80);
          if (v66 != v67)
          {
            v68 = 0;
            v69 = 0;
            do
            {
              v70 = [NSString stringWithFormat:@"DisconnectDetailsLeCoexDenials_%02lu", v69];
              v71 = [NSNumber numberWithUnsignedInt:*(v66 + 4 * v69)];
              [v24 setObject:v70 forKey:v71];

              ++v69;
              v68 += 4;
            }

            while (v66 + v68 != v67);
          }

          v72 = *(v216 + 96);
          v73 = *(v216 + 104);
          if (v72 != v73)
          {
            v74 = 0;
            v75 = 0;
            do
            {
              v76 = [NSString stringWithFormat:@"DisconnectDetailsLeRSSI_%02lu", v75];
              v77 = [NSNumber numberWithUnsignedInt:*(v72 + 4 * v75)];
              [v24 setObject:v76 forKey:v77];

              ++v75;
              v74 += 4;
            }

            while (v72 + v74 != v73);
          }

          v78 = *(v216 + 192);
          v79 = *(v216 + 200);
          if (v78 != v79)
          {
            v80 = 0;
            do
            {
              v81 = [NSString stringWithFormat:@"DisconnectDetailsClCoexDenials_%02d", v80];
              v82 = [NSNumber numberWithUnsignedInt:*v78];
              [v24 setObject:v81 forKey:v82];

              v80 = (v80 + 1);
              ++v78;
            }

            while (v78 != v79);
          }

          v83 = *(v216 + 216);
          v84 = *(v216 + 224);
          if (v83 != v84)
          {
            v85 = 0;
            do
            {
              v86 = [NSString stringWithFormat:@"DisconnectDetailsClRssi_%02d", v85];
              v87 = [NSNumber numberWithUnsignedInt:*v83];
              [v24 setObject:v86 forKey:v87];

              v85 = (v85 + 1);
              ++v83;
            }

            while (v83 != v84);
          }

          sub_10003BA40(a1, 0x7Du, v24);

          goto LABEL_53;
        }
      }

      else
      {
        if (v3 == 16)
        {
          v242[0] = @"Reason";
          v100 = [NSNumber numberWithUnsignedLongLong:*(a2 + 8)];
          v243[0] = v100;
          v242[1] = @"Tech";
          v101 = [NSNumber numberWithUnsignedChar:*(a2 + 16)];
          v243[1] = v101;
          v242[2] = @"StartTime";
          v102 = [NSNumber numberWithUnsignedLongLong:*(a2 + 24)];
          v243[2] = v102;
          v242[3] = @"StopTime";
          v103 = [NSNumber numberWithUnsignedLongLong:*(a2 + 32)];
          v243[3] = v103;
          v242[4] = @"Duration";
          v104 = [NSNumber numberWithUnsignedLongLong:*(a2 + 40)];
          v243[4] = v104;
          v242[5] = @"AverageThroughput";
          v105 = [NSNumber numberWithUnsignedInt:*(a2 + 48)];
          v243[5] = v105;
          v242[6] = @"PayloadSize";
          v106 = [NSNumber numberWithUnsignedLongLong:*(a2 + 56)];
          v243[6] = v106;
          v242[7] = @"UpgradeTime";
          v107 = [NSNumber numberWithUnsignedLongLong:*(a2 + 64)];
          v243[7] = v107;
          v108 = [NSDictionary dictionaryWithObjects:v243 forKeys:v242 count:8];

          sub_10003BA40(a1, 0x7Au, v108);
          goto LABEL_53;
        }

        if (v3 == 17)
        {
          v240[0] = @"Module";
          v11 = [NSNumber numberWithUnsignedInt:*(a2 + 4)];
          v241[0] = v11;
          v240[1] = @"Line";
          v12 = [NSNumber numberWithUnsignedInt:*(a2 + 8)];
          v241[1] = v12;
          v240[2] = @"Error";
          v13 = [NSNumber numberWithUnsignedInt:*(a2 + 12)];
          v241[2] = v13;
          v14 = [NSDictionary dictionaryWithObjects:v241 forKeys:v240 count:3];

          sub_10003BA40(a1, 0x7Bu, v14);
          goto LABEL_53;
        }
      }
    }

    else if (v3 > 13)
    {
      if (v3 == 14)
      {
        v248[0] = @"LastDisconnectedTime";
        v109 = [NSNumber numberWithUnsignedLongLong:*(a2 + 8)];
        v248[1] = @"Version";
        v249[0] = v109;
        v110 = [NSNumber numberWithUnsignedChar:*(a2 + 4)];
        v249[1] = v110;
        v111 = [NSDictionary dictionaryWithObjects:v249 forKeys:v248 count:2];

        sub_10003BA40(a1, 0x78u, v111);
        goto LABEL_53;
      }

      if (v3 == 15)
      {
        v244[0] = @"Version";
        v15 = [NSNumber numberWithUnsignedChar:*(a2 + 4)];
        v245[0] = v15;
        v244[1] = @"Reason";
        v16 = [NSNumber numberWithUnsignedInt:*(a2 + 8)];
        v245[1] = v16;
        v244[2] = @"StartTime";
        v17 = [NSNumber numberWithUnsignedLongLong:*(a2 + 16)];
        v245[2] = v17;
        v244[3] = @"StopTime";
        v18 = [NSNumber numberWithUnsignedLongLong:*(a2 + 24)];
        v245[3] = v18;
        v244[4] = @"Duration";
        v19 = [NSNumber numberWithUnsignedLongLong:*(a2 + 32)];
        v245[4] = v19;
        v244[5] = @"UpgradeCount";
        v20 = [NSNumber numberWithUnsignedInt:*(a2 + 40)];
        v245[5] = v20;
        v244[6] = @"UpgradeDuration";
        v21 = [NSNumber numberWithUnsignedLongLong:*(a2 + 48)];
        v245[6] = v21;
        v244[7] = @"TimeBetweenUpgrades";
        v22 = [NSNumber numberWithUnsignedLongLong:*(a2 + 56)];
        v245[7] = v22;
        v23 = [NSDictionary dictionaryWithObjects:v245 forKeys:v244 count:8];

        sub_10003BA40(a1, 0x79u, v23);
        goto LABEL_53;
      }
    }

    else
    {
      if (v3 == 4)
      {
        v246[0] = @"ActivityType";
        v88 = [NSNumber numberWithUnsignedChar:*(a2 + 36)];
        v247[0] = v88;
        v246[1] = @"AllowDups";
        v89 = [NSNumber numberWithBool:*(a2 + 34)];
        v247[1] = v89;
        v246[2] = @"AppExecutionState";
        v90 = [NSNumber numberWithUnsignedChar:*(a2 + 32)];
        v247[2] = v90;
        v246[3] = @"BundleIdentifier";
        v91 = (a2 + 8);
        if (*(a2 + 31) < 0)
        {
          v91 = *v91;
        }

        v92 = [NSString stringWithUTF8String:v91];
        v247[3] = v92;
        v246[4] = @"ExtensionPointTarget";
        v93 = (a2 + 40);
        if (*(a2 + 63) < 0)
        {
          v93 = *v93;
        }

        v94 = [NSString stringWithUTF8String:v93];
        v247[4] = v94;
        v246[5] = @"IsGeneralDiscoveryScan";
        v95 = [NSNumber numberWithBool:*(a2 + 33)];
        v247[5] = v95;
        v246[6] = @"ParentBundleIdentifier";
        v96 = (a2 + 64);
        if (*(a2 + 87) < 0)
        {
          v96 = *v96;
        }

        v97 = [NSString stringWithUTF8String:v96];
        v247[6] = v97;
        v246[7] = @"SupportBackground";
        v98 = [NSNumber numberWithBool:*(a2 + 35)];
        v247[7] = v98;
        v99 = [NSDictionary dictionaryWithObjects:v247 forKeys:v246 count:8];

        sub_10003BA40(a1, 0x72u, v99);
        goto LABEL_53;
      }

      if (v3 == 13)
      {
        v236[0] = @"AvgRSSI";
        v4 = [NSNumber numberWithInt:*(a2 + 4)];
        v237[0] = v4;
        v236[1] = @"AvgPER";
        v5 = [NSNumber numberWithUnsignedInt:*(a2 + 8)];
        v237[1] = v5;
        v236[2] = @"RecentRSSI";
        v6 = [NSNumber numberWithInt:*(a2 + 12)];
        v237[2] = v6;
        v236[3] = @"RecentPER";
        v7 = [NSNumber numberWithUnsignedInt:*(a2 + 16)];
        v237[3] = v7;
        v236[4] = @"PID";
        v8 = [NSNumber numberWithUnsignedInt:*(a2 + 20)];
        v237[4] = v8;
        v236[5] = @"VID";
        v9 = [NSNumber numberWithUnsignedInt:*(a2 + 24)];
        v237[5] = v9;
        v10 = [NSDictionary dictionaryWithObjects:v237 forKeys:v236 count:6];

        sub_10003BA40(a1, 0x6Au, v10);
LABEL_53:
        a2 = v216;
        v3 = *v216;
      }
    }

    if (v3 != 8 && v3 != 6)
    {
      return;
    }

    v221 = *(a2 + 40);
    if (qword_100B508B0 != -1)
    {
      sub_10082CA50();
    }

    v121 = off_100B508A8;
    sub_10004DFB4(__p, v221);
    v122 = sub_10074F2BC(v121, __p);
    if (qword_100B508D0 != -1)
    {
      sub_10082CA78();
    }

    v212 = sub_1007913E4(off_100B508C8, v221);
    if (qword_100B508D0 != -1)
    {
      sub_10082CA78();
    }

    v123 = sub_10078F7A8(off_100B508C8, v221);
    v208 = v123;
    if (v123 && [v123 length] >= 5)
    {
      v124 = v208;
      v125 = [v208 bytes];
      v209 = *v125;
      v206 = *(v125 + 1);
      v207 = *(v125 + 3);
    }

    else
    {
      v209 = 0;
      v206 = 0;
      v207 = 0;
    }

    v227 = 0;
    v228[0] = 0;
    v228[1] = 0;
    if (qword_100B508D0 != -1)
    {
      sub_10082CA78();
    }

    sub_100788FA0(off_100B508C8, v221, &v227);
    v126 = objc_alloc_init(NSMutableString);
    v127 = v227;
    if (v227 != v228)
    {
      do
      {
        if ([v126 length])
        {
          [v126 appendString:{@", "}];
        }

        v128 = [NSString alloc];
        v129 = v127 + 4;
        if (*(v127 + 55) < 0)
        {
          v129 = *v129;
        }

        v130 = [v128 initWithUTF8String:v129];
        [v126 appendString:v130];

        v131 = v127[1];
        if (v131)
        {
          do
          {
            v132 = v131;
            v131 = *v131;
          }

          while (v131);
        }

        else
        {
          do
          {
            v132 = v127[2];
            v133 = *v132 == v127;
            v127 = v132;
          }

          while (!v133);
        }

        v127 = v132;
      }

      while (v132 != v228);
    }

    v134 = sub_10000E92C();
    v135 = v216;
    if ((*(*v134 + 8))(v134))
    {
      if (qword_100B508D0 != -1)
      {
        sub_10082CA78();
      }

      sub_10004FFDC(off_100B508C8, v221, __p);
      if (v230 >= 0)
      {
        v136 = SHIBYTE(v230);
      }

      else
      {
        v136 = *&__p[8];
      }

      if ((SHIBYTE(v230) & 0x8000000000000000) != 0)
      {
        operator delete(*__p);
        if (v136)
        {
          goto LABEL_87;
        }
      }

      else if (v136)
      {
LABEL_87:
        if (qword_100B508D0 != -1)
        {
          sub_10082CA78();
        }

        sub_10004FFDC(off_100B508C8, v221, __p);
        if (v230 >= 0)
        {
          v137 = __p;
        }

        else
        {
          v137 = *__p;
        }

        v211 = [NSString stringWithUTF8String:v137];
        v135 = v216;
        if (SHIBYTE(v230) < 0)
        {
          operator delete(*__p);
        }

        goto LABEL_97;
      }

      v211 = @"NA";
      v135 = v216;
    }

    else
    {
      v211 = @"NA";
    }

LABEL_97:
    if (qword_100B508D0 != -1)
    {
      sub_10082CA78();
      v135 = v216;
    }

    v204 = sub_100788D8C(off_100B508C8, v221);
    v214 = [NSString stringWithUTF8String:sub_10002A744(v204)];
    if (qword_100B508D0 != -1)
    {
      sub_10082CA78();
      v135 = v216;
    }

    v138 = sub_100786C44(off_100B508C8, v221);
    if (qword_100B508D0 != -1)
    {
      sub_10082CA78();
      v135 = v216;
    }

    v139 = sub_100786D64(off_100B508C8, v221);
    if (qword_100B508D0 != -1)
    {
      sub_10082CA78();
      v135 = v216;
    }

    v140 = sub_100786DF8(off_100B508C8, v221);
    if (v139 <= v138)
    {
      v141 = 0.0;
    }

    else
    {
      v141 = v139 - v138;
    }

    if (v140 <= v138)
    {
      v142 = 0.0;
    }

    else
    {
      v142 = v140 - v138;
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (Current <= v140)
    {
      v144 = 0.0;
    }

    else
    {
      v144 = Current - v140;
    }

    if (qword_100B508B0 != -1)
    {
      sub_10082CA50();
      v135 = v216;
    }

    v145 = off_100B508A8;
    sub_10004DFB4(__p, v221);
    v146 = sub_10074F458(v145, __p);
    if (qword_100B508B0 != -1)
    {
      sub_10082CA50();
      v135 = v216;
    }

    v147 = off_100B508A8;
    sub_10004DFB4(__p, v221);
    v148 = sub_10074F508(v147, __p);
    if (qword_100B508B0 != -1)
    {
      sub_10082CA50();
      v135 = v216;
    }

    v149 = off_100B508A8;
    sub_10004DFB4(__p, v221);
    v150 = sub_10074F374(v149, __p);
    if (qword_100B508B0 != -1)
    {
      sub_10082CA50();
      v135 = v216;
    }

    v151 = off_100B508A8;
    sub_10004DFB4(__p, v221);
    v152 = sub_1000501F8(v151, __p);
    if (*v135 == 8)
    {
      v234[0] = @"AppState";
      v198 = [NSNumber numberWithUnsignedChar:*(v135 + 32)];
      v235[0] = v198;
      v234[1] = @"ConnectionIntervalInSlots";
      v205 = [NSNumber numberWithUnsignedShort:v122];
      v235[1] = v205;
      v234[2] = @"ConnectionSetupDurationInSec";
      v196 = [NSNumber numberWithDouble:v142];
      v235[2] = v196;
      v234[3] = @"ConnectionDurationInSec";
      v153 = [NSNumber numberWithDouble:v144];
      v154 = &stru_100B0F9E0;
      if (v211)
      {
        v154 = v211;
      }

      v194 = v153;
      v235[3] = v153;
      v235[4] = v154;
      v234[4] = @"DeviceName";
      v234[5] = @"IsAppleDevice";
      v202 = [NSNumber numberWithBool:v212];
      v235[5] = v202;
      v234[6] = @"IsCentral";
      v192 = [NSNumber numberWithBool:v152 == 0];
      v235[6] = v192;
      v234[7] = @"MaxCE";
      v190 = [NSNumber numberWithUnsignedShort:v150];
      v235[7] = v190;
      v234[8] = @"PeripheralLatency";
      v200 = [NSNumber numberWithUnsignedShort:v146];
      v235[8] = v200;
      v234[9] = @"PID";
      v155 = [NSNumber numberWithUnsignedInt:v207];
      v235[9] = v155;
      v234[10] = @"Result";
      v156 = [NSNumber numberWithInt:*(v135 + 48)];
      v235[10] = v156;
      v234[11] = @"SessionID";
      v157 = (v135 + 8);
      if (*(v135 + 31) < 0)
      {
        v157 = *v157;
      }

      v158 = [NSString stringWithUTF8String:v157];
      v235[11] = v158;
      v234[12] = @"SupervisionTimeout";
      v159 = [NSNumber numberWithUnsignedShort:v148];
      v235[12] = v159;
      v235[13] = v126;
      v234[13] = @"Tags";
      v234[14] = @"UseCase";
      v235[14] = v214;
      v234[15] = @"VID";
      v160 = [NSNumber numberWithUnsignedShort:v206];
      v235[15] = v160;
      v234[16] = @"VendorIDSource";
      v161 = [NSNumber numberWithUnsignedChar:v209];
      v235[16] = v161;
      v234[17] = @"ConnectionScanCompleteDurationInSec";
      v162 = [NSNumber numberWithDouble:v141];
      v235[17] = v162;
      v210 = [NSDictionary dictionaryWithObjects:v235 forKeys:v234 count:18];

      v163 = CFAbsoluteTimeGetCurrent();
      v164 = v216;
      if (qword_100B508D0 != -1)
      {
        sub_10082CA78();
        v164 = v216;
      }

      sub_100046458(off_100B508C8, *(v164 + 40), 0);
      v165 = sub_1007774DC();
      v166 = @"isAppleDevice";
      if (!v212)
      {
        v166 = v214;
      }

      v167 = v166;
      *__p = 0;
      *&__p[8] = 0;
      sub_100007F88(__p, a1 + 176);
      v168 = [NSNumber numberWithDouble:v163 - v138];
      v169 = [NSMutableArray arrayWithObjects:v167, v168, 0];
      v170 = *(a1 + 328);
      *(a1 + 328) = v169;

      v171 = [*(a1 + 312) objectForKey:v165];
      v172 = v171 == 0;

      if (v172)
      {
        [*(a1 + 312) setObject:*(a1 + 328) forKeyedSubscript:v165];
      }

      if (v212)
      {
        if ((*(*a1 + 544))(a1, *(v216 + 40)))
        {
          ++*(a1 + 132);
        }
      }

      sub_10000801C(__p);
      sub_10003BA40(a1, 0x6Eu, v210);
      sub_1000088CC(__p);
    }

    else
    {
      v232[0] = @"AppState";
      v199 = [NSNumber numberWithUnsignedChar:*(v135 + 32)];
      v233[0] = v199;
      v232[1] = @"ConnectionIntervalInSlots";
      v203 = [NSNumber numberWithUnsignedShort:v122];
      v233[1] = v203;
      v232[2] = @"ConnectionSetupDurationInSec";
      v173 = [NSNumber numberWithDouble:v142];
      v174 = &stru_100B0F9E0;
      if (v211)
      {
        v174 = v211;
      }

      v197 = v173;
      v233[2] = v173;
      v233[3] = v174;
      v232[3] = @"DeviceName";
      v232[4] = @"IsAppleDevice";
      v195 = [NSNumber numberWithBool:v212];
      v233[4] = v195;
      v232[5] = @"IsCentral";
      v213 = [NSNumber numberWithBool:v152 == 0];
      v233[5] = v213;
      v232[6] = @"MaxCE";
      v193 = [NSNumber numberWithUnsignedShort:v150];
      v233[6] = v193;
      v232[7] = @"PeripheralLatency";
      v191 = [NSNumber numberWithUnsignedShort:v146];
      v233[7] = v191;
      v232[8] = @"PID";
      v201 = [NSNumber numberWithUnsignedInt:v207];
      v233[8] = v201;
      v232[9] = @"Result";
      v175 = [NSNumber numberWithInt:*(v135 + 52)];
      v233[9] = v175;
      v232[10] = @"SessionID";
      v176 = (v135 + 8);
      v177 = (v135 + 8);
      if (*(v135 + 31) < 0)
      {
        v177 = *v176;
      }

      v178 = [NSString stringWithUTF8String:v177];
      v233[10] = v178;
      v232[11] = @"SupervisionTimeout";
      v179 = [NSNumber numberWithUnsignedShort:v148];
      v233[11] = v179;
      v233[12] = v126;
      v232[12] = @"Tags";
      v232[13] = @"UseCase";
      v233[13] = v214;
      v232[14] = @"VID";
      v180 = [NSNumber numberWithUnsignedShort:v206];
      v233[14] = v180;
      v232[15] = @"VendorIDSource";
      v181 = [NSNumber numberWithUnsignedChar:v209];
      v233[15] = v181;
      v232[16] = @"NumberOfPendingLEConnectionsForBundleID";
      v182 = [NSNumber numberWithUnsignedInt:*(v135 + 48)];
      v233[16] = v182;
      v232[17] = @"ConnectionScanCompleteDurationInSec";
      v183 = [NSNumber numberWithDouble:v141];
      v233[17] = v183;
      v210 = [NSDictionary dictionaryWithObjects:v233 forKeys:v232 count:18];

      if ((v204 & 0xFFFF0000) == 0x10000)
      {
        v184 = qword_100BCE8D8;
        if (os_log_type_enabled(v184, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 138412802;
          *&__p[4] = v214;
          *&__p[12] = 2048;
          *&__p[14] = v141;
          v230 = 2048;
          v231 = v142;
          _os_log_impl(&_mh_execute_header, v184, OS_LOG_TYPE_DEFAULT, "LE Connection Perf for %@ connection scan complete: %.3f (sec) connection set-up: %.3f (sec)", __p, 0x20u);
        }
      }

      v185 = *(v216 + 52);
      v186 = sub_100066098();
      v224[0] = _NSConcreteStackBlock;
      v224[1] = 3221225472;
      v224[2] = sub_1004403F4;
      v224[3] = &unk_100AF2A50;
      v224[4] = a1;
      v225 = v204;
      v226 = v185 != 0;
      sub_10000CA94(v186, v224);
      if (*(v216 + 52))
      {
        if (*(v216 + 31) < 0)
        {
          v176 = *v176;
        }

        v187 = [NSString stringWithFormat:@"VendorID=%d, ProductID=%d, Result=%d, SessionID=%s", v206, v207, *(v216 + 52), v176];
        if (qword_100B53FE8 != -1)
        {
          sub_10082CAA0();
        }

        v188 = qword_100B53FE0;
        sub_100007E30(__p, "LEConnectionsFailure");
        v189 = v187;
        sub_100007E30(v222, [v187 UTF8String]);
        sub_1005780BC(v188, __p, v222, 0.0);
        if (v223 < 0)
        {
          operator delete(v222[0]);
        }

        if (SHIBYTE(v230) < 0)
        {
          operator delete(*__p);
        }
      }

      sub_10003BA40(a1, 0x6Bu, v210);
    }

    sub_10004B61C(&v227, v228[0]);
    return;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10082C924();
  }
}

uint64_t sub_100011690()
{
  if (qword_100B6F6D0 != -1)
  {
    sub_1008502CC();
  }

  return byte_100B6F6D8;
}

void sub_1000116C8(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100007F20(&v5, (a1 + 8));
  os_unfair_lock_unlock(a1);
  v4 = v5;
  if (v5 != v6)
  {
    do
    {
      v3[2](v3, *v4++);
    }

    while (v4 != v6);
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
    operator delete(v4);
  }
}

uint64_t sub_100011794(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 64);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1000117DC(void *a1, unint64_t a2)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, (a1 + 5));
  if (!a2)
  {
    goto LABEL_20;
  }

  v4 = a1[19];
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = a1 + 19;
  do
  {
    v6 = v4[4];
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = v4[v8];
  }

  while (v4);
  if (v5 == a1 + 19 || v5[4] > a2 || (v9 = a1[15], v10 = a1 + 16, v9 == a1 + 16))
  {
LABEL_20:
    v12 = 0;
  }

  else
  {
    v11 = v5[5];
    while (1)
    {
      v12 = v9[7];
      if (v12)
      {
        if (sub_100011794(v9[7]) == v11)
        {
          break;
        }
      }

      v13 = v9[1];
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
          v14 = v9[2];
          v15 = *v14 == v9;
          v9 = v14;
        }

        while (!v15);
      }

      v9 = v14;
      if (v14 == v10)
      {
        goto LABEL_20;
      }
    }
  }

  sub_1000088CC(v17);
  return v12;
}

void sub_1000118E8(os_unfair_lock_s *a1, xpc_object_t object, const char *a3)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_connection)
  {

    sub_1000119E4(a1, object, a3);
  }

  else if (type == &_xpc_type_error)
  {
    string = xpc_dictionary_get_string(object, _xpc_error_key_description);
    v9 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100863DC8(a3, string, v9);
    }
  }

  else
  {
    v7 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100863D50(a3, object, v7);
    }
  }
}

void sub_1000119E4(os_unfair_lock_s *a1, _xpc_connection_s *a2, const char *a3)
{
  os_unfair_lock_lock(a1);
  v6 = sub_100011BB4(a1, a2, a3);
  if (!strcmp(a3, "com.apple.server.bluetooth.le.att.xpc"))
  {
    operator new();
  }

  if (!strcmp(a3, "com.apple.server.bluetooth.le.pipe.xpc"))
  {
    operator new();
  }

  if (!strcmp(a3, "com.apple.server.bluetooth.general.xpc"))
  {
    operator new();
  }

  if (!strcmp(a3, "com.apple.server.bluetooth.classic.xpc"))
  {
    operator new();
  }

  ++*v6;

  os_unfair_lock_unlock(a1);
}

uint64_t *sub_100011BB4(uint64_t a1, xpc_connection_t connection, const char *a3)
{
  pid = xpc_connection_get_pid(connection);
  *&v16 = &pid;
  v5 = sub_100011F44(a1 + 8, &pid);
  if (v5[6])
  {
    return v5 + 5;
  }

  v6 = sub_10001201C();
  v7 = [v6 cStringUsingEncoding:4];

  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v19 = 0u;
  v20 = 0u;
  *v18 = 0u;
  memset(v17, 0, sizeof(v17));
  v16 = 0u;
  sub_100008760(&v16);
  if (!v7)
  {
    v7 = "CoreBluetooth";
  }

  strlen(v7);
  v8 = sub_100007774(&v16);
  sub_100007774(v8);
  std::ostream::operator<<();
  v9 = *(a1 + 32);
  if (!strcmp(a3, "com.apple.server.bluetooth.le.att.xpc"))
  {
    v10 = 40;
    goto LABEL_12;
  }

  if (!strcmp(a3, "com.apple.server.bluetooth.le.pipe.xpc"))
  {
    v10 = 48;
    goto LABEL_12;
  }

  if (!strcmp(a3, "com.apple.server.bluetooth.general.xpc"))
  {
    v10 = 56;
    goto LABEL_12;
  }

  if (!strcmp(a3, "com.apple.server.bluetooth.classic.xpc"))
  {
    v10 = 64;
LABEL_12:
    v9 = *(a1 + v10);
  }

  p_p = &__p;
  std::stringbuf::str();
  if (v15 < 0)
  {
    p_p = __p;
  }

  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5[6] = dispatch_queue_create_with_target_V2(p_p, v12, v9);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[1]);
  }

  std::locale::~locale(v17);
  std::ostream::~ostream();
  std::ios::~ios();
  return v5 + 5;
}

void sub_100011E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

BOOL sub_100011EDC()
{
  v0 = xpc_connection_copy_entitlement_value();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = xpc_get_type(v0) == &_xpc_type_BOOL && xpc_BOOL_get_value(v1);
  xpc_release(v1);
  return v2;
}

uint64_t *sub_100011F44(uint64_t a1, int *a2)
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

id sub_10001201C()
{
  v11 = 0u;
  v12 = 0u;
  xpc_connection_get_audit_token();
  memset(&token, 0, sizeof(token));
  v0 = SecTaskCreateWithAuditToken(0, &token);
  v1 = v0;
  if (v0)
  {
    *token.val = 0;
    v2 = SecTaskCopySigningIdentifier(v0, &token);
    v3 = v2;
    v4 = *token.val;
    if (*token.val)
    {
      v5 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to copy signing ID - using framework-provided bundle identifier!", buf, 2u);
        v4 = *token.val;
      }

      CFRelease(v4);
      if (v3)
      {
        v6 = 0;
        CFRelease(v3);
LABEL_14:
        CFRelease(v1);
        goto LABEL_15;
      }
    }

    else
    {
      v6 = v2;
      if (v2)
      {
        goto LABEL_14;
      }

      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100820984();
      }
    }

    v6 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_1008209C0();
  }

  v6 = 0;
LABEL_15:
  if (![v6 length])
  {
    v7 = [NSString stringWithFormat:@"UNKNOWN-%0000x", arc4random_uniform(0xFFFFu)];

    v6 = v7;
  }

  return v6;
}

uint64_t sub_1000121D8(uint64_t a1, uint64_t a2, _xpc_connection_s *a3, uint64_t a4)
{
  v5 = sub_100012460(a1, a2, a3, a4);
  *v5 = off_100B041A0;
  *(v5 + 144) = off_100B04378;
  *(v5 + 152) = off_100B044B8;
  *(v5 + 160) = &off_100B044F0;
  *(v5 + 168) = 0;
  *(a1 + 170) = sub_100011EDC();
  *(a1 + 171) = sub_100011EDC();
  *(a1 + 172) = 0;
  *(a1 + 174) = sub_100011EDC();
  *(a1 + 175) = 0;
  *(a1 + 178) = 0;
  *(a1 + 182) = sub_100011EDC();
  *(a1 + 183) = sub_100011EDC();
  *(a1 + 184) = sub_100011EDC();
  *(a1 + 185) = sub_100011EDC();
  *(a1 + 186) = sub_100011EDC();
  *(a1 + 187) = 0;
  *(a1 + 189) = sub_100011EDC();
  *(a1 + 190) = sub_100011EDC();
  *(a1 + 191) = sub_100011EDC();
  *(a1 + 192) = sub_100011EDC();
  v6 = sub_100011EDC();
  *(a1 + 216) = 0;
  *(a1 + 193) = v6;
  *(a1 + 194) = 8;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = a1 + 216;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  v7 = *(a1 + 80);
  if (v7 >= 1)
  {
    *(a1 + 170) = 257;
    *(a1 + 182) = 1;
    *(a1 + 184) = 257;
    *(a1 + 186) = 1;
    *(a1 + 189) = 1;
    *(a1 + 174) = 1;
  }

  if (v7 <= 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  *(a1 + 200) = v8;
  if (*(a1 + 190) == 1)
  {
    v9 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Entitled Scan Client - Checked in", v11, 2u);
    }
  }

  return a1;
}

uint64_t sub_100012460(uint64_t a1, uint64_t a2, _xpc_connection_s *a3, uint64_t a4)
{
  v5 = sub_1000124E8(a1, a2, a3, a4);
  *v5 = off_100AFF468;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  if (qword_100B512C8 != -1)
  {
    sub_100849EF8();
  }

  *(a1 + 140) = sub_10000EE78(off_100B512C0);
  return a1;
}

uint64_t sub_1000124E8(uint64_t a1, uint64_t a2, xpc_connection_t connection, uint64_t a4)
{
  *a1 = &off_100AEE4E0;
  *(a1 + 8) = a2;
  *(a1 + 16) = connection;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 40) = xpc_connection_get_pid(connection);
  xpc_connection_set_context(*(a1 + 16), a1);
  xpc_connection_set_finalizer_f(*(a1 + 16), sub_10007A148);
  v5 = *(a1 + 16);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000D5AC;
  handler[3] = &unk_100AEB340;
  handler[4] = a1;
  xpc_connection_set_event_handler(v5, handler);
  xpc_connection_set_target_queue(*(a1 + 16), *(a1 + 24));
  xpc_connection_resume(*(a1 + 16));
  euid = xpc_connection_get_euid(*(a1 + 16));
  *(a1 + 44) = euid;
  memset(uu, 0, sizeof(uu));
  if (mbr_uid_to_uuid(euid, uu))
  {
    v7 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 44);
      v17 = __error();
      v18 = strerror(*v17);
      v19 = *__error();
      *buf = 67240706;
      v22 = v16;
      v23 = 2082;
      v24 = v18;
      v25 = 1026;
      v26 = v19;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "mbr_uid_to_uuid for id %{public}d failed: %{public}s (%{public}d)", buf, 0x18u);
    }

    v8 = 0;
  }

  else
  {
    v8 = [[NSUUID alloc] initWithUUIDBytes:uu];
  }

  v9 = *(a1 + 48);
  *(a1 + 48) = v8;

  if (sub_100011EDC())
  {
    v10 = 2;
  }

  else
  {
    if (!sub_100011EDC())
    {
      goto LABEL_11;
    }

    v10 = 1;
  }

  *(a1 + 80) = v10;
LABEL_11:
  v11 = sub_10001201C();
  v12 = *(a1 + 96);
  *(a1 + 96) = v11;

  if (([&off_100B34558 containsObject:*(a1 + 96)] & 1) == 0)
  {
    operator new();
  }

  *(a1 + 90) = sub_100011EDC();
  *(a1 + 84) = sub_100011EDC();
  *(a1 + 91) = sub_100011EDC();
  *(a1 + 85) = sub_100011EDC();
  if (_os_feature_enabled_impl())
  {
    *(a1 + 86) = sub_100011EDC();
  }

  v13 = sub_100011EDC() && *(a1 + 80) < 1;
  *(a1 + 87) = v13;
  if (_os_feature_enabled_impl())
  {
    v14 = sub_100011EDC() && *(a1 + 80) < 1;
    *(a1 + 88) = v14;
  }

  return a1;
}

void sub_100012920(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_1000129AC(uint64_t a1, __int128 *a2, dispatch_object_t object)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100008904((a1 + 32), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *(a1 + 32) = v5;
  }

  *(a1 + 56) = 0;
  if (object)
  {
    dispatch_retain(object);
    *(a1 + 56) = object;
  }

  return a1;
}

void sub_100012A28(uint64_t a1, void *a2)
{
  v137 = 0;
  v138 = 0;
  v136 = 0;
  v134[0] = 0;
  v134[1] = v134;
  v134[2] = 0x2020000000;
  v135 = 0;
  v132[0] = 0;
  v132[1] = v132;
  v132[2] = 0x2020000000;
  v133 = 0;
  v87 = [NSArray arrayWithObjects:@"com.apple.identityservicesd", @"com.apple.nanoregistryd", @"nanoregistryd", @"com.apple.magicswitchd", @"com.apple.sharingd", @"com.apple.BTReporter", @"com.apple.coreBluetoothUtil", @"com.apple.terminusd", 0];
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v5 = sub_100013C04(value, "kCBMsgArgName");
  if (sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgType") || !v5)
  {
    v88 = v5;
LABEL_124:
    if (!*(a1 + 128))
    {
      sub_100063710(a1, 2u);
    }

    goto LABEL_126;
  }

  v84 = v138;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 1;
  v126 = 0;
  v125 = 0;
  v86 = sub_100013C04(v136, "kCBInitOptionRestoreIdentifier");
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v85 = sub_100013C04(v136, "kCBCentralManagerOptionInitLeProfilesManagerWithOptions");
  sub_100013CA4(v136, 0, v12, v13, v14, v15, v16, v17, "kCBInitOptionShowPowerAlert");
  v18 = sub_10001201C();
  v19 = *(a1 + 96);
  *(a1 + 96) = v18;

  v88 = *(a1 + 96);
  v120 = 0;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  memset(v107, 0, sizeof(v107));
  sub_100008760(&v106);
  v20 = v88;
  strlen([v88 UTF8String]);
  sub_100007774(&v106);
  v21 = sub_100013C04(v136, "kCBMsgArgManagerCustomName");
  v22 = v21;
  if (v21 && [v21 length])
  {
    if ([v22 length] > 0xF)
    {
      v23 = 16;
    }

    else
    {
      v23 = [v22 length];
    }

    v24 = [v22 rangeOfComposedCharacterSequencesForRange:{0, v23}];
    v26 = [v22 substringWithRange:{v24, v25}];

    v27 = sub_100007774(&v106);
    v28 = v26;
    strlen([v26 UTF8String]);
    v29 = sub_100007774(v27);
    v22 = v26;
    sub_100007774(v29);
  }

  v30 = sub_100007774(&v106);
  sub_100007774(v30);
  if (!v138 && v123)
  {
    v31 = [LSBundleRecord bundleRecordWithBundleIdentifier:*(a1 + 96) allowPlaceholder:1 error:0];
    v32 = [v31 infoDictionary];
    v33 = [v32 objectForKey:@"NSBluetoothForMediaDeviceDiscoveryOnly" ofClass:objc_opt_class()];
    v34 = v33 == 0;

    if (v34)
    {
      if (*(a1 + 87) == 1)
      {
        sub_100007774(&v106);
        *(a1 + 176) = 1;
      }
    }

    else
    {
      sub_100007774(&v106);
      *(a1 + 175) = 1;
    }

    v35 = _os_feature_enabled_impl();
    if (v122)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    if (v36 == 1)
    {
      v37 = [v31 infoDictionary];
      v38 = [v37 objectForKey:@"NSAccessorySetupKitSupports" ofClass:objc_opt_class()];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v38 containsObject:@"Bluetooth"])
      {
        sub_100007774(&v106);
        *(a1 + 177) = 1;
      }

      else if (*(a1 + 88) == 1)
      {
        sub_100007774(&v106);
        *(a1 + 178) = 1;
      }
    }
  }

  v39 = std::ostream::operator<<();
  sub_100007774(v39);
  std::ostream::operator<<();
  std::stringbuf::str();
  v40 = (a1 + 79);
  v41 = (a1 + 56);
  if (*(a1 + 79) < 0)
  {
    operator delete(*v41);
  }

  *v41 = *buf;
  *(a1 + 72) = *&buf[16];
  if (v121)
  {
    v42 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v43 = *(a1 + 96);
      *buf = 138412290;
      *&buf[4] = v43;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Check if extension %@ is a actual extension", buf, 0xCu);
    }

    v44 = +[LSDatabaseContext sharedDatabaseContext];
    v105 = 0;
    v45 = [v44 startAccessingWithOptions:1 error:&v105];
    v46 = v105;
    if (v45)
    {
      memset(buf, 0, sizeof(buf));
      xpc_connection_get_audit_token();
      v104[0] = *buf;
      v104[1] = *&buf[16];
      v47 = [LSBundleRecord bundleRecordForAuditToken:v104 error:0];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v121 = 0;
      }
    }

    v48 = v121 != 0;
  }

  else
  {
    v48 = 0;
  }

  *(a1 + 181) = v48;
  v49 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v50 = (a1 + 56);
    if (*v40 < 0)
    {
      v50 = *v41;
    }

    v51 = *(a1 + 80);
    v52 = *(a1 + 186);
    v53 = *(a1 + 175);
    v54 = *(a1 + 177);
    *buf = 136447490;
    *&buf[4] = v50;
    *&buf[12] = 1024;
    *&buf[14] = v51;
    *&buf[18] = 1024;
    *&buf[20] = v52;
    *&buf[24] = 1024;
    *&buf[26] = v53;
    *&buf[30] = 1024;
    v142 = v54;
    v143 = 1024;
    v144 = v48;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Received XPC check-in from session %{public}s fAccessLevel %d fProgrammaticPairing %d fDeviceAccessForMediaSession %d fDeviceAccessPerAccessorySession %d isExtension %{BOOL}d", buf, 0x2Au);
  }

  v55 = *(a1 + 90);
  if (v55 == 1)
  {
    v56 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v57 = (a1 + 56);
      if (*v40 < 0)
      {
        v57 = *v41;
      }

      *buf = 136446466;
      *&buf[4] = v57;
      *&buf[12] = 2112;
      *&buf[14] = v86;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "On-Demand-Install app XPC started: %{public}s, RI %@", buf, 0x16u);
    }

    v86 = 0;
  }

  if (*(a1 + 181) == 1)
  {
    v58 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v59 = (a1 + 56);
      if (*v40 < 0)
      {
        v59 = *v41;
      }

      *buf = 136446210;
      *&buf[4] = v59;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Extensions cannot run backgrounded, cannot be restored %{public}s", buf, 0xCu);
    }

    v86 = 0;
    LOBYTE(v55) = 1;
  }

  if (v129)
  {
    if (*(a1 + 80) >= 1)
    {
      *(a1 + 172) = 1;
      v60 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        v61 = (a1 + 56);
        if (*v40 < 0)
        {
          v61 = *v41;
        }

        *buf = 136446210;
        *&buf[4] = v61;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Incoming ObjectDiscovery data  will be forwarded to session %{public}s", buf, 0xCu);
      }
    }
  }

  if (v130)
  {
    *(a1 + 168) = 1;
    v62 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v63 = (a1 + 56);
      if (*v40 < 0)
      {
        v63 = *v41;
      }

      *buf = 136446210;
      *&buf[4] = v63;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "System events will be forwarded to session %{public}s", buf, 0xCu);
    }
  }

  v64 = *(a1 + 80);
  if (v64 < 1 || !v128)
  {
LABEL_71:
    if (v64 < 1)
    {
      goto LABEL_74;
    }

    goto LABEL_72;
  }

  *(a1 + 169) = 1;
  v65 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v66 = (a1 + 56);
    if (*v40 < 0)
    {
      v66 = *v41;
    }

    *buf = 136446210;
    *&buf[4] = v66;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Application activity events will be sent to session %{public}s", buf, 0xCu);
    v64 = *(a1 + 80);
    goto LABEL_71;
  }

LABEL_72:
  if ([v85 length])
  {
    v67 = sub_100432610();
    v139 = @"collectForTypes";
    v140 = v85;
    v68 = [NSDictionary dictionaryWithObjects:&v140 forKeys:&v139 count:1];
    (*(*v67 + 200))(v67, v68);
  }

LABEL_74:
  v69 = *(a1 + 80);
  if (v69 <= 0)
  {
    v125 = 0;
    v124 = 0;
  }

  *(a1 + 187) = 0;
  v70 = v126;
  if (v126)
  {
    if (v69 < 1)
    {
      v71 = qword_100BCE950;
      if (*(a1 + 186))
      {
        v72 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
        v73 = 0;
        if (v72)
        {
          v74 = (a1 + 56);
          if (*v40 < 0)
          {
            v74 = *v41;
          }

          *buf = 136446210;
          *&buf[4] = v74;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Access level is less than kXPCAccessLevelSystem for session %{public}s. Restricted state operation not allowed", buf, 0xCu);
          v73 = 0;
        }

        goto LABEL_89;
      }
    }

    else
    {
      v71 = qword_100BCE950;
    }

    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      v75 = (a1 + 56);
      if (*v40 < 0)
      {
        v75 = *v41;
      }

      *buf = 134218242;
      *&buf[4] = v70;
      *&buf[12] = 2082;
      *&buf[14] = v75;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Setting fNeedsRestrictedState operation: %lld for session %{public}s", buf, 0x16u);
    }

    v73 = 1;
LABEL_89:
    *(a1 + 187) = v73;
  }

  *(a1 + 188) = 0;
  v76 = [v87 containsObject:v88];
  if (v76)
  {
    *(a1 + 187) = 257;
    v77 = qword_100BCE950;
    v76 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
    if (v76)
    {
      *buf = 138412290;
      *&buf[4] = v88;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "%@ will get power state ON in Restricted mode", buf, 0xCu);
    }
  }

  if ((sub_100013E74(v76, *(a1 + 96)) & 1) != 0 || *(a1 + 80) >= 1)
  {
    *(a1 + 89) = 1;
    v78 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v79 = *(a1 + 96);
      *buf = 138412290;
      *&buf[4] = v79;
      _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Warning: Overriding TCC for bundleIdentifier %@", buf, 0xCu);
    }
  }

  else
  {
    *(a1 + 196) = sub_10037CEF8(v136, "kCBManagerPrivacySupported");
  }

  if (qword_100B512F8 != -1)
  {
    sub_1008565BC();
  }

  v80 = sub_100013F10(off_100B512F0, *(a1 + 96));
  if (*(a1 + 128))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008565E4();
    }
  }

  else if (v137 == 20161219)
  {
    memset(buf, 0, sizeof(buf));
    xpc_connection_get_audit_token();
    v81 = sub_100007EE8();
    v91[0] = _NSConcreteStackBlock;
    v91[1] = 3221225472;
    v91[2] = sub_100013FF8;
    v91[3] = &unk_100B04578;
    v103 = v55;
    v96 = a1;
    v97 = v131;
    v98 = v125;
    v99 = v124;
    v100 = *buf;
    v101 = *&buf[16];
    v92 = v88;
    v102 = v84;
    v93 = v86;
    v94 = v134;
    v95 = v132;
    sub_10000D334(v81, v91);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100856664();
  }

  if (_os_feature_enabled_impl())
  {
    objc_storeStrong((a1 + 232), *(a1 + 96));
    if (*(a1 + 128))
    {
      if (((*(a1 + 176) & 1) != 0 || v122) && !sub_10005F254(a1))
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_1008566EC();
        }

        v82 = 0;
        goto LABEL_121;
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085675C();
    }
  }

  if (*(a1 + 80) <= 0 && (*(a1 + 186) & 1) == 0)
  {
    v83 = sub_100007EE8();
    v89[0] = _NSConcreteStackBlock;
    v89[1] = 3221225472;
    v89[2] = sub_100669F14;
    v89[3] = &unk_100AE15D8;
    v89[4] = a1;
    v90 = v80;
    sub_10000D334(v83, v89);
  }

  v82 = 1;
LABEL_121:

  if (SHIBYTE(v109) < 0)
  {
    operator delete(*(&v108 + 1));
  }

  std::locale::~locale(v107);
  std::ostream::~ostream();
  std::ios::~ios();

  if (v82)
  {
    goto LABEL_124;
  }

LABEL_126:

  _Block_object_dispose(v132, 8);
  _Block_object_dispose(v134, 8);
}