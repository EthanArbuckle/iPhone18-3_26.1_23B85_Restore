uint64_t sub_1001FCE3C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (sub_10000C240())
  {
    v15 = a4 > 3 ? "" : (&off_100AE6530)[a4];
    sub_10000AF54("Received CLOSE - %s", v8, v9, v10, v11, v12, v13, v14, v15);
    v16 = sub_10000C050(3u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v64 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (a2)
  {
    if (a4)
    {
      goto LABEL_9;
    }

LABEL_23:
    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4385, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a2 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
    }

    else
    {
      v40 = *(a2 + 12);
      if (*(a2 + 10) > v40)
      {
        v41 = *a2;
        *(a2 + 12) = v40 + 1;
        v42 = sub_10020093C(*(v41 + v40) >> 2, a1);
        v43 = v42;
        if (v42)
        {
          if (*(v42 + 134) - 3 <= 1)
          {
            if (*(v42 + 128))
            {
              sub_1001F9250(v42, 5u);
            }

            else
            {
              sub_1001F8264(v42);
            }

            v55 = qword_100B5CD50;
            if (*(qword_100B5CD50 + 103) != 1)
            {
              LOBYTE(a2) = 0;
              goto LABEL_47;
            }

            LODWORD(a2) = 0;
            v45 = 1;
LABEL_42:
            if (sub_10000C240())
            {
              sub_1001F73E4(v43);
              sub_10000AF54("AVDT_Close_Rsp\n\tTransaction=%d\n\tStreamHandle=%d\n\tErrorCode=0x%.2x\n", v46, v47, v48, v49, v50, v51, v52, a3);
              v53 = sub_10000C050(3u);
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                v54 = sub_10000C0FC();
                *buf = 136446210;
                v64 = v54;
                _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

            sub_100200DB8(a1, 8u, a3, a2);
            if (!v45)
            {
              return a2;
            }

            v55 = qword_100B5CD50;
LABEL_47:
            v56 = *(*(v55 + 24) + 80);
            v57 = sub_1001F73E4(v43);
            v56(a3, v57);
            return a2;
          }

          v44 = 49;
        }

        else
        {
          v44 = 18;
        }

LABEL_41:
        v45 = 0;
        LODWORD(a2) = v44;
        goto LABEL_42;
      }
    }

    v43 = 0;
    *(a2 + 15) = 1;
    v44 = 17;
    goto LABEL_41;
  }

  sub_1000D660C();
  if (!a4)
  {
    goto LABEL_23;
  }

LABEL_9:
  if (a4 == 3)
  {
    v39 = sub_1002007B4(a3, a1);
    if (v39)
    {
      if (*(a2 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4367, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a2 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
      }

      else
      {
        v58 = *(a2 + 12);
        if (*(a2 + 10) > v58)
        {
          v59 = *a2;
          *(a2 + 12) = v58 + 1;
          v60 = *(v59 + v58);
          if (v60)
          {
            LOBYTE(a2) = v60;
          }

          else
          {
            LOBYTE(a2) = 24;
          }

          goto LABEL_53;
        }
      }

      *(a2 + 15) = 1;
      LOBYTE(a2) = 17;
    }

    else
    {
      LOBYTE(a2) = 1;
    }

LABEL_53:
    (*(*(qword_100B5CD50 + 24) + 88))(a3, v39, a2);
    return a2;
  }

  if (a4 == 2)
  {
    v17 = sub_1002007B4(a3, a1);
    v18 = v17;
    v19 = qword_100B5CD50;
    if (v17)
    {
      if (*(qword_100B5CD50 + 97) > (v17 - 1) && (v20 = *(qword_100B5CD50 + 8)) != 0)
      {
        v21 = v20 + 144 * (v17 - 1);
        sub_1001F9250(v21, 5u);
        if (sub_10000C240())
        {
          sub_10000AF54("Disconnecting media transport", v22, v23, v24, v25, v26, v27, v28, v62);
          v29 = sub_10000C050(3u);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = sub_10000C0FC();
            *buf = 136446210;
            v64 = v30;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        a2 = sub_10029104C(*(v21 + 128), 436);
        if (!a2)
        {
          *(v21 + 133) = a3;
          return a2;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Error disconnecting media transport - %!", v31, v32, v33, v34, v35, v36, v37, a2);
          v38 = sub_10000C050(3u);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        *(v21 + 128) = 0;
        sub_1001C3A30(0);
        sub_1001F8264(v21);
        v19 = qword_100B5CD50;
        a2 = 49;
      }

      else
      {
        a2 = 18;
      }
    }

    else
    {
      a2 = 1;
    }

    (*(*(v19 + 24) + 88))(a3, v18, a2);
  }

  else
  {
    LOBYTE(a2) = 0;
  }

  return a2;
}

uint64_t sub_1001FD340(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  memset(v42, 0, 124);
  if (sub_10000C240())
  {
    v15 = a4 > 3 ? "" : (&off_100AE6530)[a4];
    sub_10000AF54("Received SUSPEND - %s", v8, v9, v10, v11, v12, v13, v14, v15);
    v16 = sub_10000C050(3u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v41 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!a2)
  {
    sub_1000D660C();
  }

  buf[0] = 0;
  if (a4)
  {
    if (a4 != 3)
    {
      LOBYTE(v17) = 0;
      if (a4 == 2)
      {
        sub_1002009D0(a3, a1, v42, buf);
        v18 = buf[0];
        if (buf[0])
        {
          sub_100200704(v42, buf[0], 3u);
          v17 = 0;
        }

        else
        {
          v17 = 1;
        }

        v27 = *(*(qword_100B5CD50 + 24) + 120);
        if (v27)
        {
          v27(a3, v42, v18, 0, v17);
        }
      }

      return v17;
    }

    sub_1002009D0(a3, a1, v42, buf);
    v19 = buf[0];
    if (!buf[0])
    {
      v23 = 0;
      LOBYTE(v17) = 1;
      goto LABEL_42;
    }

    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4459, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a2 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
      v20 = *(a2 + 14);
      *(a2 + 15) = 1;
      if (v20 != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4460, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }
    }

    else
    {
      v28 = *(a2 + 6);
      if (*(a2 + 5) > v28)
      {
        v29 = *a2;
        v30 = v28 + 1;
        *(a2 + 6) = v28 + 1;
        v23 = *(v29 + v28) >> 2;
        if (*(a2 + 5) > (v28 + 1))
        {
          v31 = *a2;
          *(a2 + 6) = v28 + 2;
          if (*(v31 + v30))
          {
            LOBYTE(v17) = *(v31 + v30);
          }

          else
          {
            LOBYTE(v17) = 24;
          }

LABEL_42:
          v32 = *(*(qword_100B5CD50 + 24) + 120);
          if (v32)
          {
            v33 = sub_100200A38(v23, a1);
            v32(a3, v42, v19, v33, v17);
          }

          return v17;
        }

LABEL_41:
        *(a2 + 15) = 1;
        LOBYTE(v17) = 17;
        goto LABEL_42;
      }

      *(a2 + 15) = 1;
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
    v23 = 0;
    goto LABEL_41;
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
    v21 = 0;
    v22 = 0;
    if (*(*(qword_100B5CD50 + 24) + 112))
    {
      LOBYTE(v17) = 24;
    }

    else
    {
      LOBYTE(v17) = 25;
    }

    goto LABEL_23;
  }

  v24 = *(a2 + 5);
  v25 = *(a2 + 6);
  v21 = v24 - v25;
  v26 = qword_100B5CD50;
  if (!*(*(qword_100B5CD50 + 24) + 112))
  {
    v22 = 0;
    LOBYTE(v17) = 25;
    goto LABEL_23;
  }

  if ((v24 - v25) > 0x3Eu)
  {
    v22 = 0;
    LOBYTE(v17) = -127;
    goto LABEL_23;
  }

  if (*(a2 + 5) == v25)
  {
    v22 = 0;
    LOBYTE(v17) = 24;
    goto LABEL_23;
  }

  if (v24 == v25)
  {
    v21 = 0;
    LOBYTE(v17) = 0;
    v22 = 0;
LABEL_59:
    if ((*(v26 + 103) & 1) != 0 || v17)
    {
      sub_1001F8A58(a1, a3, v42, v21, v22, v17);
      if (v17)
      {
        return v17;
      }

      v26 = qword_100B5CD50;
    }

    (*(*(v26 + 24) + 112))(a3, v42, v21);
    LOBYTE(v17) = 0;
    return v17;
  }

  v35 = 0;
  v22 = 0;
  LOBYTE(v17) = 0;
  while (1)
  {
    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4496, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a2 + 15))
    {
      break;
    }

    v36 = *(a2 + 6);
    if (*(a2 + 5) <= v36)
    {
      goto LABEL_65;
    }

    v37 = *a2;
    *(a2 + 6) = v36 + 1;
    v38 = *(v37 + v36) >> 2;
    v39 = sub_10020093C(v38, a1);
    *(v42 + v35) = sub_1001F73E4(v39);
    if (!v39)
    {
      LOBYTE(v17) = 18;
LABEL_55:
      v21 = ++v35;
      v22 = v38;
      goto LABEL_56;
    }

    if (*(v39 + 134) != 4)
    {
      LOBYTE(v17) = 49;
      goto LABEL_55;
    }

    ++v35;
LABEL_56:
    if (v35 >= v21)
    {
      v26 = qword_100B5CD50;
      goto LABEL_59;
    }
  }

  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
LABEL_65:
  *(a2 + 15) = 1;
  LOBYTE(v17) = 17;
  v21 = v35;
LABEL_23:
  sub_1001F8A58(a1, a3, v42, v21, v22, v17);
  return v17;
}

uint64_t sub_1001FD854(int a1, uint64_t a2, uint64_t a3)
{
  if (sub_10000C240())
  {
    sub_10000AF54("Received TRANSITION", v5, v6, v7, v8, v9, v10, v11, v17);
    v12 = sub_10000C050(3u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  *buf = 0u;
  v18 = 0;
  sub_1002009D0(a3, a1, buf, &v18);
  v13 = v18;
  if (v18)
  {
    sub_100200704(buf, v18, 3u);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = *(*(qword_100B5CD50 + 24) + 128);
  if (v15)
  {
    v15(a3, buf, v13, 0, v14);
  }

  return v14;
}

uint64_t sub_1001FD9A4(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  if (sub_10000C240())
  {
    v15 = a4 > 3 ? "" : (&off_100AE6530)[a4];
    sub_10000AF54("Received ABORT - %s", v8, v9, v10, v11, v12, v13, v14, v15);
    v16 = sub_10000C050(3u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v74 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (a2)
  {
    if (a4)
    {
      goto LABEL_9;
    }

LABEL_15:
    if (*(qword_100B5CD50 + 103) == 1)
    {
      sub_100200DB8(a1, 0xAu, a3, 0);
    }

    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4660, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a2 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
    }

    else
    {
      v17 = *(a2 + 6);
      if (*(a2 + 5) > v17)
      {
        v18 = *a2;
        *(a2 + 6) = v17 + 1;
        v19 = sub_10020093C(*(v18 + v17) >> 2, a1);
        if (!v19)
        {
          return 18;
        }

        v20 = v19;
        sub_1001F9250(v19, 6u);
        v21 = sub_1001F73E4(v20);
        (*(*(qword_100B5CD50 + 24) + 168))(a3, v21);
        if (*(qword_100B5CD50 + 103) == 1)
        {
          v22 = sub_10029104C(*(v20 + 128), 436);
          if (!v22)
          {
            return v22;
          }

          if (*(v20 + 128))
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Error disconnecting media transport - %!", v23, v24, v25, v26, v27, v28, v29, v22);
              v30 = sub_10000C050(3u);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }

            *(v20 + 128) = 0;
            sub_1001C3A30(0);
          }

          sub_1001F8264(v20);
          (*(*(qword_100B5CD50 + 24) + 176))(a3, v21, 0);
        }

        return 0;
      }
    }

    *(a2 + 15) = 1;
    return 17;
  }

  sub_1000D660C();
  if (!a4)
  {
    goto LABEL_15;
  }

LABEL_9:
  if (a4 == 2)
  {
    goto LABEL_38;
  }

  if (a4 != 3)
  {
    return 0;
  }

  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4582, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
LABEL_34:
    *(a2 + 15) = 1;
    v33 = 17;
    goto LABEL_35;
  }

  v31 = *(a2 + 6);
  if (*(a2 + 5) <= v31)
  {
    goto LABEL_34;
  }

  v32 = *a2;
  *(a2 + 6) = v31 + 1;
  v33 = *(v32 + v31);
  if (v33 != 255)
  {
LABEL_35:
    if (sub_10000C240())
    {
      sub_10000AF54("Remote Abort Reject RXed (illegal) - %d", v34, v35, v36, v37, v38, v39, v40, v33);
      v41 = sub_10000C050(3u);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

LABEL_38:
  v42 = sub_1002007B4(a3, a1);
  v43 = v42;
  if (v42)
  {
    if (*(qword_100B5CD50 + 97) > (v42 - 1))
    {
      v44 = *(qword_100B5CD50 + 8);
      if (v44)
      {
        v45 = v44 + 144 * (v42 - 1);
        sub_1001F9250(v45, 6u);
        if (sub_10000C240())
        {
          sub_10000AF54("Disconnecting media transport", v46, v47, v48, v49, v50, v51, v52, v72);
          v53 = sub_10000C050(3u);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            v54 = sub_10000C0FC();
            *buf = 136446210;
            v74 = v54;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v22 = sub_10029104C(*(v45 + 128), 436);
        if (!v22)
        {
          *(v45 + 133) = a3;
          return v22;
        }

        if (*(v45 + 128))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Error disconnecting media transport - %!", v55, v56, v57, v58, v59, v60, v61, v22);
            v62 = sub_10000C050(3u);
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          *(v45 + 128) = 0;
          sub_1001C3A30(0);
        }

        sub_1001F8264(v45);
        (*(*(qword_100B5CD50 + 24) + 176))(a3, v43, 0);
        return 0;
      }
    }

    v22 = 18;
  }

  else
  {
    v22 = 1;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Abort Accept RXed for unknown endpoint. transaction: %d", v63, v64, v65, v66, v67, v68, v69, a3);
    v70 = sub_10000C050(3u);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  (*(*(qword_100B5CD50 + 24) + 176))(a3, v43, 0);
  return v22;
}

uint64_t sub_1001FDED4(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  if (sub_10000C240())
  {
    v15 = a4 > 3 ? "" : (&off_100AE6530)[a4];
    sub_10000AF54("Received SECURITY CONTROL - %s", v8, v9, v10, v11, v12, v13, v14, v15);
    v16 = sub_10000C050(3u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v49 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (a2)
  {
    if (a4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1000D660C();
    if (a4)
    {
LABEL_9:
      if (a4 != 3)
      {
        if (a4 == 2)
        {
          v17 = sub_1002007B4(a3, a1);
          v18 = v17 == 0;
          v19 = *(*(qword_100B5CD50 + 24) + 160);
          if (v19)
          {
            v20 = v17;
            v21 = *a2;
            v22 = *(a2 + 6);
            if (*(a2 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
              v23 = 0;
            }

            else
            {
              v23 = *(a2 + 5) - v22;
            }

            v19(a3, v20, v21 + v22, v23, v18);
          }

          return v18;
        }

LABEL_48:
        LOBYTE(v18) = 0;
        return v18;
      }

      v25 = sub_1002007B4(a3, a1);
      if (!v25)
      {
        LOBYTE(v18) = 1;
        goto LABEL_32;
      }

      if (*(a2 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4737, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a2 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
      }

      else
      {
        v27 = *(a2 + 6);
        if (*(a2 + 5) > v27)
        {
          v28 = *a2;
          *(a2 + 6) = v27 + 1;
          v29 = *(v28 + v27);
          if (v29)
          {
            LOBYTE(v18) = v29;
          }

          else
          {
            LOBYTE(v18) = 24;
          }

LABEL_32:
          v30 = *(*(qword_100B5CD50 + 24) + 160);
          if (v30)
          {
            v30(a3, v25, 0, 0, v18);
          }

          return v18;
        }
      }

      *(a2 + 15) = 1;
      LOBYTE(v18) = 17;
      goto LABEL_32;
    }
  }

  v24 = *(*(qword_100B5CD50 + 24) + 152);
  if (v24)
  {
    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4760, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a2 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
    }

    else
    {
      v31 = *(a2 + 6);
      if (*(a2 + 5) > v31)
      {
        v32 = *a2;
        *(a2 + 6) = v31 + 1;
        v33 = sub_10020093C(*(v32 + v31) >> 2, a1);
        v26 = v33;
        if (v33)
        {
          if (*(v33 + 134))
          {
            v34 = sub_1001F73E4(v33);
            v35 = *a2;
            v36 = *(a2 + 6);
            if (*(a2 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
              v37 = 0;
            }

            else
            {
              v37 = *(a2 + 5) - v36;
            }

            v24(a3, v34, v35 + v36, v37);
            goto LABEL_48;
          }

          LODWORD(v18) = 49;
        }

        else
        {
          LODWORD(v18) = 18;
        }

        goto LABEL_40;
      }
    }

    v26 = 0;
    *(a2 + 15) = 1;
    LODWORD(v18) = 17;
  }

  else
  {
    v26 = 0;
    LODWORD(v18) = 25;
  }

LABEL_40:
  if (sub_10000C240())
  {
    sub_1001F73E4(v26);
    sub_10000AF54("AVDT_Security_Control_Rsp\n\tTransaction=%d\n\tStream Handle=%d\n\tData Length=0\n\tError=%d\n", v38, v39, v40, v41, v42, v43, v44, a3);
    v45 = sub_10000C050(3u);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = sub_10000C0FC();
      *buf = 136446210;
      v49 = v46;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  sub_100202230(a1, a3, 0, 0, v18);
  return v18;
}

uint64_t sub_1001FE308(int a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  if (sub_10000C240())
  {
    v15 = a4 > 3 ? "" : (&off_100AE6530)[a4];
    sub_10000AF54("Received Delay Report - %s", v8, v9, v10, v11, v12, v13, v14, v15);
    v16 = sub_10000C050(3u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v61 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!a2)
  {
    sub_1000D660C();
  }

  switch(a4)
  {
    case 3u:
      if (sub_10000C240())
      {
        sub_10000AF54("Source rejected the delay report indication", v27, v28, v29, v30, v31, v32, v33, v59);
        v34 = sub_10000C050(3u);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 25;
    case 2u:
      result = sub_10000C240();
      if (result)
      {
        sub_10000AF54("Source accepted the delay report indication", v18, v19, v20, v21, v22, v23, v24, v59);
        v25 = sub_10000C050(3u);
        result = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        if (result)
        {
          v26 = sub_10000C0FC();
          *buf = 136446210;
          v61 = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          return 0;
        }
      }

      return result;
    case 0u:
      if (*(a2 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4908, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a2 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
LABEL_30:
        *(a2 + 15) = 1;
        return 17;
      }

      v43 = *(a2 + 6);
      if (*(a2 + 5) <= v43)
      {
        goto LABEL_30;
      }

      v44 = *a2;
      *(a2 + 6) = v43 + 1;
      v45 = sub_10020093C(*(v44 + v43) >> 2, a1);
      if (!v45)
      {
        return 18;
      }

      v46 = sub_1001F73E4(v45);
      if (*(a2 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4921, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      v47 = v46;
      if (*(a2 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
      }

      else
      {
        v48 = *(a2 + 6);
        if (*(a2 + 5) - v48 >= 2)
        {
          v49 = bswap32(*(*a2 + v48)) >> 16;
          *(a2 + 6) = v48 + 2;
          goto LABEL_35;
        }
      }

      v49 = 0;
      *(a2 + 15) = 1;
LABEL_35:
      v50 = *(*(qword_100B5CD50 + 24) + 208);
      if (v50)
      {
        v50(v47, a3, v49);
        return 0;
      }

      result = sub_10000C240();
      if (result)
      {
        sub_10000AF54("avdtp delay reporting callback has not been registered!", v51, v52, v53, v54, v55, v56, v57, v59);
        v58 = sub_10000C050(3u);
        result = os_log_type_enabled(v58, OS_LOG_TYPE_ERROR);
        if (result)
        {
          goto LABEL_24;
        }
      }

      return result;
  }

  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("Bad message type for delay reporting", v35, v36, v37, v38, v39, v40, v41, v59);
    v42 = sub_10000C050(3u);
    result = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
    if (result)
    {
LABEL_24:
      sub_1000E09C0();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001FE69C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = a2;
  if (!a2)
  {
    sub_1000D660C();
  }

  if (sub_10000C240())
  {
    v15 = a4 > 3 ? "" : (&off_100AE6530)[a4];
    sub_10000AF54("Received GET ALL CAPS - %s", v8, v9, v10, v11, v12, v13, v14, v15);
    v16 = sub_10000C050(3u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (dword_100BCE23C && (v17 = *(qword_100B5CD50 + 98), *(qword_100B5CD50 + 98)))
  {
    v18 = *(qword_100B5CD50 + 16);
    while (!v18[19] || v18[19] != a1)
    {
      v18 += 32;
      if (!--v17)
      {
        goto LABEL_17;
      }
    }

    v20 = *v18;
    if (!a4)
    {
      goto LABEL_27;
    }
  }

  else
  {
LABEL_17:
    sub_1000D660C();
    v20 = 0;
    if (!a4)
    {
LABEL_27:
      if (*(v6 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4845, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      if (*(v6 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
LABEL_43:
        *(v6 + 15) = 1;
        LODWORD(v6) = 17;
LABEL_44:
        sub_100201DC8(a1, 0xCu, a3, 0, 0, v6);
        return v6;
      }

      v27 = *(v6 + 12);
      if (*(v6 + 10) <= v27)
      {
        goto LABEL_43;
      }

      v28 = *v6;
      *(v6 + 12) = v27 + 1;
      v29 = *(v28 + v27) >> 2;
      v30 = *(qword_100B5CD50 + 96);
      if (!*(qword_100B5CD50 + 96))
      {
        goto LABEL_54;
      }

      v31 = (*qword_100B5CD50 + 31);
      v32 = 255;
      while (*(v31 - 6) != v29)
      {
        v31 += 40;
        --v32;
        if (!--v30)
        {
          goto LABEL_54;
        }
      }

      if (!v32)
      {
LABEL_54:
        if (sub_10000C240())
        {
          sub_10000AF54("Get caps received for unknown seid %d", v45, v46, v47, v48, v49, v50, v51, v29);
          v52 = sub_10000C050(3u);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        LODWORD(v6) = 18;
        goto LABEL_44;
      }

      if (*(v31 - 4) || !*(v31 - 23) || *(v31 - 3) == 1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Returning All Capabilities", v33, v34, v35, v36, v37, v38, v39, v67);
          v40 = sub_10000C050(3u);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v41 = sub_10000C0FC();
            *buf = 136446210;
            *&buf[4] = v41;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        if (*(v31 - 1))
        {
          v42 = 0;
          v43 = 0;
          do
          {
            sub_1001FEC48(a1, *(v31 - 31) + v42);
            ++v43;
            v44 = *(v31 - 1);
            v42 += 16;
          }

          while (v43 < v44);
        }

        else
        {
          LODWORD(v44) = 0;
        }

        v62 = *(v31 - 31);
        v63 = a1;
        v64 = 12;
        v65 = a3;
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("2-Play Source: Returning Config as Caps", v53, v54, v55, v56, v57, v58, v59, v67);
          v60 = sub_10000C050(3u);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            v61 = sub_10000C0FC();
            *buf = 136446210;
            *&buf[4] = v61;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v62 = *(v31 - 23);
        LODWORD(v44) = *v31;
        v63 = a1;
        v64 = 2;
        v65 = a3;
      }

      sub_100201DC8(v63, v64, v65, v62, v44, 0);
LABEL_67:
      LOBYTE(v6) = 0;
      return v6;
    }
  }

  if (a4 == 3)
  {
    if (*(v6 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 4827, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(v6 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
    }

    else
    {
      v23 = *(v6 + 12);
      if (*(v6 + 10) > v23)
      {
        v24 = *v6;
        *(v6 + 12) = v23 + 1;
        v25 = *(v24 + v23);
        if (v25)
        {
          LOBYTE(v6) = v25;
        }

        else
        {
          LOBYTE(v6) = 24;
        }

LABEL_35:
        v26 = *(*(qword_100B5CD50 + 24) + 200);
        if (v26)
        {
          v26(a3, v20, *(qword_100B5CD50 + 99), 0, 0, v6);
        }

        return v6;
      }
    }

    *(v6 + 15) = 1;
    LOBYTE(v6) = 17;
    goto LABEL_35;
  }

  if (a4 != 2)
  {
    goto LABEL_67;
  }

  *buf = 0;
  v68 = 0;
  v6 = sub_1001F9914(v6, buf, &v68);
  v21 = *(*(qword_100B5CD50 + 24) + 200);
  v22 = v68;
  if (v21)
  {
    v21(a3, v20, *(qword_100B5CD50 + 99), *buf, v68, v6);
  }

  sub_1001F4290(buf, v22);
  return v6;
}

uint64_t sub_1001FEBAC(uint64_t a1, int a2)
{
  v14 = 0;
  v4 = sub_1001F45A0(a1, &v14);
  if (v4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_AVDTP_Disable48KHz failed to obtain CID for A2DP handle %d", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(3u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    *(sub_1001F47C0(v14) + 52) = a2;
  }

  return v4;
}

void sub_1001FEC48(int a1, uint64_t a2)
{
  if (*a2 == 7)
  {
    v3 = sub_1001F47C0(a1);
    if (v3)
    {
      v4 = *(v3 + 52);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OI_AVDTP_Update48KHzCap was not able to read the disable48KHz signal", v5, v6, v7, v8, v9, v10, v11, v58);
        v12 = sub_10000C050(3u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v4 = 0xFFFFFFFFLL;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("AVDTP_Update48KHzCap: disable48KHz is %x, codec is %x, codecData.dataLen is %x", v13, v14, v15, v16, v17, v18, v19, v4);
      v20 = sub_10000C050(3u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v60 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v21 = *(a2 + 2);
    v22 = sub_10000C240();
    if (v21 == 2)
    {
      if (v22)
      {
        sub_10000AF54("AVDTP_Update48KHzCap: AAC-LC codecData->data[1] was %x, [2] was %x", v23, v24, v25, v26, v27, v28, v29, *(*(a2 + 8) + 1));
        v36 = sub_10000C050(3u);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = sub_10000C0FC();
          *buf = 136446210;
          v60 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v38 = *(a2 + 8);
      v39 = *(v38 + 1);
      if ((v4 & 2) != 0)
      {
        *(v38 + 1) = v39 | 1;
        v40 = *(a2 + 8);
        v41 = *(v40 + 2) & 0x7F;
      }

      else
      {
        *(v38 + 1) = v39 & 0xFE;
        v40 = *(a2 + 8);
        v41 = *(v40 + 2) | 0x80;
      }

      *(v40 + 2) = v41;
      if (sub_10000C240())
      {
        sub_10000AF54("AVDTP_Update48KHzCap: AAC-LC codecData->data[1] updated to %x, [2] to %x", v50, v51, v52, v53, v54, v55, v56, *(*(a2 + 8) + 1));
        v42 = sub_10000C050(3u);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_33;
        }
      }
    }

    else if (v21)
    {
      if (v22)
      {
        sub_10000AF54("AVDTP_Update48KHzCap: codecData->data remains untouched for this codec type", v23, v24, v25, v26, v27, v28, v29, v58);
        v42 = sub_10000C050(3u);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
LABEL_33:
          v57 = sub_10000C0FC();
          *buf = 136446210;
          v60 = v57;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }
    }

    else
    {
      if (v22)
      {
        sub_10000AF54("AVDTP_Update48KHzCap: SBC codecData->data[0] was %x", v23, v24, v25, v26, v27, v28, v29, **(a2 + 8));
        v30 = sub_10000C050(3u);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = sub_10000C0FC();
          *buf = 136446210;
          v60 = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v32 = *(a2 + 8);
      v33 = *v32;
      if (v4)
      {
        *v32 = v33 | 0x20;
        v34 = *(a2 + 8);
        v35 = *v34 & 0xEF;
      }

      else
      {
        *v32 = v33 & 0xDF;
        v34 = *(a2 + 8);
        v35 = *v34 | 0x10;
      }

      *v34 = v35;
      if (sub_10000C240())
      {
        sub_10000AF54("AVDTP_Update48KHzCap: SBC codecData->data[0] updated to %x", v43, v44, v45, v46, v47, v48, v49, **(a2 + 8));
        v42 = sub_10000C050(3u);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_33;
        }
      }
    }
  }
}

uint64_t sub_1001FF024(uint64_t a1, _OWORD *a2, _OWORD *a3, __int16 *a4, _WORD *a5)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AVDTP_createA2DPChannels", v10, v11, v12, v13, v14, v15, v16, v62);
    v17 = sub_10000C050(3u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v18 = a2[1];
  *buf = *a2;
  v64 = v18;
  v19 = sub_10028EA9C(25, buf, a1, sub_1001F65C4, sub_1001F5B1C, sub_1001F5DE4, a4, &unk_100AE6500);
  if (v19)
  {
    v20 = v19;
    if (sub_10000C240())
    {
      sub_10000AF54("AVDTP_createA2DPChannels error creating A2DP signaling", v21, v22, v23, v24, v25, v26, v27, v62);
      v28 = sub_10000C050(3u);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
LABEL_7:
        sub_1000E09C0();
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("AVDTP_createA2DPChannels signaling channel created", v29, v30, v31, v32, v33, v34, v35, v62);
      v36 = sub_10000C050(3u);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = sub_10000C0FC();
        *buf = 136446210;
        *&buf[4] = v37;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v38 = a3[1];
    *buf = *a3;
    v64 = v38;
    v39 = sub_10028EA9C(25, buf, a1, sub_1001FF38C, sub_1001FF59C, sub_1001FF7A0, a5, &unk_100AE6500);
    if (v39)
    {
      v20 = v39;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_AVDTP_createA2DPChannels error creating A2DP media", v40, v41, v42, v43, v44, v45, v46, v62);
        v47 = sub_10000C050(3u);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }
      }
    }

    else if (*(qword_100B5CD50 + 98))
    {
      v48 = 0;
      v49 = *a4;
      for (i = *(qword_100B5CD50 + 16); *(i + 38); i += 64)
      {
        if (*(qword_100B5CD50 + 98) == ++v48)
        {
          return 2902;
        }
      }

      *i = v48 + 1;
      v51 = *a1;
      *(i + 32) = *(a1 + 4);
      *(i + 28) = v51;
      *(i + 38) = v49;
      *(i + 44) = -1;
      *(i + 52) = -1;
      if (sub_10000C240())
      {
        sub_10000AF54("AVDTP_createA2DPChannels created signal for cid 0x%x with a2dp handle %d", v52, v53, v54, v55, v56, v57, v58, *a4);
        v59 = sub_10000C050(3u);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v60 = sub_10000C0FC();
          *buf = 136446210;
          *&buf[4] = v60;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      return 0;
    }

    else
    {
      return 2902;
    }
  }

  return v20;
}

void sub_1001FF38C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (sub_10000C240())
  {
    sub_10000AF54("MediaConnectCfm (CID %d) %!", v7, v8, v9, v10, v11, v12, v13, a1);
    v14 = sub_10000C050(3u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v15 = sub_1001FFC24(a1);
  if (v15)
  {
    v16 = v15;
    if (a4 == 464)
    {
      *(v15 + 128) = 0;
      sub_1001C3A30(0);
      sub_1001F8264(v16);
      v27 = *(*(qword_100B5CD50 + 24) + 176);
      v28 = *(v16 + 133);
      v29 = sub_1001F73E4(v16);
      v27(v28, v29, 41);
    }

    else
    {
      if (a4)
      {
        *(v15 + 128) = 0;
        sub_1001C3A30(0);
        v18 = 129;
      }

      else
      {
        if (*(v15 + 134) != 2)
        {
          sub_1000D660C();
        }

        sub_1001F9250(v16, 3u);
        *buf = 0;
        if (!sub_1000ABC7C(a1, buf))
        {
          if (sub_1000B12AC(*buf))
          {
            v17 = sub_1000B12AC(*buf);
            sub_1001C3A30(*(v17 + 8));
          }
        }

        v18 = 0;
      }

      v30 = *(*(qword_100B5CD50 + 24) + 64);
      v31 = *(v16 + 133);
      v32 = sub_1001F73E4(v16);
      v30(v31, v32, a3, v18);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Remote Endpoint not found", v19, v20, v21, v22, v23, v24, v25, v33);
    v26 = sub_10000C050(3u);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_1001FF59C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001FFC24(a1);
  if (sub_10000C240())
  {
    sub_10000AF54("Media channel disconnected (CID %d, remote %lx) %!", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(3u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v26 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (v4)
  {
    v13 = sub_1001F73E4(v4);
    v14 = *(v4 + 134);
    *(v4 + 128) = 0;
    sub_1001C3A30(0);
    v15 = *(v4 + 133);
    if (v14 == 7)
    {
      if (*(v4 + 135) == 255)
      {
        sub_1000D660C();
      }

      if (v13)
      {
        (*(*(qword_100B5CD50 + 24) + 176))(v15, v13, 0);
      }

      v16 = *(v4 + 135);
      if (v16 != 255)
      {
        sub_1001F5B1C(*(*(qword_100B5CD50 + 16) + (v16 << 6) + 38), a2);
      }
    }

    else
    {
      sub_1001F8264(v4);
      if (!v13)
      {
        return;
      }

      if (v14 != 6)
      {
        if (v14 == 5)
        {
          (*(*(qword_100B5CD50 + 24) + 88))(v15, v13, 0);
          return;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Unexpected Transport channel disconnect: %d", v17, v18, v19, v20, v21, v22, v23, v13);
          v24 = sub_10000C050(3u);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      (*(*(qword_100B5CD50 + 24) + 176))(v15, v13, 0);
    }
  }
}

void sub_1001FF7A0(int a1, uint64_t a2, unsigned int a3)
{
  v5 = sub_1001FFC24(a1);
  if (v5)
  {
    v6 = v5;
    if (a3 <= 0xB)
    {
      if (!sub_10000C240())
      {
        goto LABEL_18;
      }

      sub_10000AF54("Error in received data frame: Runt packet received!", v7, v8, v9, v10, v11, v12, v13, v48);
      v14 = sub_10000C050(3u);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      goto LABEL_5;
    }

    if (*(v5 + 134) != 4)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid state to receive packet", v32, v33, v34, v35, v36, v37, v38, v48);
        v39 = sub_10000C050(3u);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v51 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      goto LABEL_18;
    }

    if (!a2)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 779, "data");
    }

    v23 = *a2 & 0xF;
    if ((a3 - 8) < v23)
    {
      if (!sub_10000C240())
      {
        goto LABEL_18;
      }

      sub_10000AF54("Error in received data frame", v24, v25, v26, v27, v28, v29, v30, v48);
      v31 = sub_10000C050(3u);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

LABEL_5:
      sub_1000E09C0();
LABEL_18:
      if (*(v6 + 132))
      {
        v40 = *(*(qword_100B5CD50 + 24) + 184);
        v41 = sub_1001F73E4(v6);
        v40(v41, 0, 0, 0, 0, 0, 0, 1);
      }

      return;
    }

    if (*(v5 + 132))
    {
      v42 = *(a2 + 1);
      v43 = *(a2 + 2);
      v44 = *(a2 + 4);
      v49 = *(*(qword_100B5CD50 + 24) + 184);
      v45 = sub_1001F73E4(v5);
      v46 = bswap32(v43) >> 16;
      v47 = bswap32(v44);

      v49(v45, v46, v47, a2 + v23 + 12, (a3 - (v23 + 12)), v42 & 0x7F, v42 >> 7, 0);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Remote Endpoint not found", v15, v16, v17, v18, v19, v20, v21, v48);
    v22 = sub_10000C050(3u);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

uint64_t sub_1001FFA6C(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v31 = 0;
  v6 = *(qword_100B5CD50 + 96);
  if (*(qword_100B5CD50 + 96))
  {
    v7 = *qword_100B5CD50;
    v8 = 10200;
    while (*(v7 + 25) != a4)
    {
      v7 += 40;
      v8 -= 40;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
LABEL_5:
    v9 = 0;
  }

  v10 = sub_1000E1FE8(a1);
  if (!v10 && sub_10000C240() && (sub_10000AF54("OI_AVDTP_cleanFastConnectA2DP NULL Handle", v11, v12, v13, v14, v15, v16, v17, v30), v18 = sub_10000C050(3u), os_log_type_enabled(v18, OS_LOG_TYPE_ERROR)))
  {
    sub_1000E09C0();
    if (!a3)
    {
      goto LABEL_19;
    }
  }

  else if (!a3)
  {
    goto LABEL_19;
  }

  v19 = sub_1001FFC24(a3);
  if (v19)
  {
    v20 = v19;
    *(v19 + 132) = 0;
    *v19 = 0;
    *(v19 + 128) = 0;
    sub_1001C3A30(0);
    *(v20 + 137) = -1;
    *(v20 + 133) = -65281;
  }

  if (!sub_1000ABC7C(a3, &v31))
  {
    if (v31)
    {
      sub_10028E908(v31);
      if (v10)
      {
        sub_1000D27D8(v10);
      }
    }
  }

LABEL_19:
  if (a2)
  {
    sub_1001F6860(a2);
    if (!sub_1000ABC7C(a2, &v31))
    {
      if (v31)
      {
        sub_10028E908(v31);
        if (v10)
        {
          sub_1000D27D8(v10);
        }
      }
    }
  }

  if (v9)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_AVDTP_cleanFastConnectA2DP Free Caps", v21, v22, v23, v24, v25, v26, v27, v30);
      v28 = sub_10000C050(3u);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1001F57F4(v9);
  }

  return 0;
}

uint64_t sub_1001FFC24(int a1)
{
  v1 = qword_100B5CD50;
  if (qword_100B5CD50)
  {
    if (*(qword_100B5CD50 + 97))
    {
      v2 = 0;
      while (1)
      {
        v1 = *(qword_100B5CD50 + 8) + 144 * v2;
        if (*(v1 + 136) != 255 && *(v1 + 128) == a1)
        {
          break;
        }

        if (*(qword_100B5CD50 + 97) <= ++v2)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t sub_1001FFC7C(uint64_t a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
    goto LABEL_41;
  }

  v2 = *(a1 + 12);
  if (*(a1 + 10) <= v2)
  {
LABEL_41:
    v26 = "ByteStream_NumReadBytesAvail(*bs) >= 1";
    goto LABEL_43;
  }

  if (*(a1 + 14) != 2)
  {
    v26 = "(*bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_43:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 5328, v26);
  }

  v3 = qword_100B5CD50;
  v4 = *qword_100B5CD50;
  v5 = *a1;
  *(a1 + 12) = v2 + 1;
  v5[v2] = 0;
  if (*(v3 + 96))
  {
    v6 = 0;
    v7 = 0;
    v8 = (v4 + 29);
    while (1)
    {
      if (*(v8 - 4))
      {
        v9 = *v8;
        v10 = *(v8 - 1);
        if (*(v8 - 2) >= 2u)
        {
          sub_1000D660C();
        }

        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
LABEL_36:
          v24 = "ByteStream_NumReadBytesAvail(*bs) >= 1";
LABEL_37:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 5339, v24);
        }

        v11 = *(a1 + 12);
        if (*(a1 + 10) <= v11)
        {
          goto LABEL_36;
        }

        if (*(a1 + 14) != 2)
        {
          v24 = "(*bs).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_37;
        }

        v12 = (2 * (v9 >= v10)) | (4 * *(v8 - 4));
        v13 = *a1;
        *(a1 + 12) = v11 + 1;
        v13[v11] = v12;
        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
LABEL_29:
          v23 = "ByteStream_NumReadBytesAvail(*bs) >= 1";
LABEL_32:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 5340, v23);
        }

        v14 = *(a1 + 12);
        if (*(a1 + 10) <= v14)
        {
          goto LABEL_29;
        }

        if (*(a1 + 14) != 2)
        {
          v23 = "(*bs).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_32;
        }

        v15 = *(v8 - 3) & 0xF0 | (8 * *(v8 - 2));
        v16 = *a1;
        *(a1 + 12) = v14 + 1;
        v16[v14] = v15;
        ++v7;
        v3 = qword_100B5CD50;
      }

      ++v6;
      v8 += 40;
      if (v6 >= *(v3 + 96))
      {
        goto LABEL_19;
      }
    }
  }

  v7 = 0;
LABEL_19:
  *v5 = v7;
  if (*(v3 + 96))
  {
    v17 = 0;
    v18 = (v4 + 30);
    do
    {
      if (*(v18 - 5))
      {
        v19 = sub_100201484(*(v18 - 30), *v18);
        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c");
LABEL_34:
          v25 = "ByteStream_NumReadBytesAvail(*bs) >= 1";
LABEL_39:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp.c", 5354, v25);
        }

        v20 = *(a1 + 12);
        if (*(a1 + 10) <= v20)
        {
          goto LABEL_34;
        }

        if (*(a1 + 14) != 2)
        {
          v25 = "(*bs).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_39;
        }

        v21 = *a1;
        *(a1 + 12) = v20 + 1;
        v21[v20] = v19;
        sub_10020151C(a1, *(v18 - 30), *v18, 1);
        v3 = qword_100B5CD50;
      }

      ++v17;
      v18 += 40;
    }

    while (v17 < *(v3 + 96));
  }

  return 0;
}

uint64_t sub_1001FFF7C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unsigned int a5, _WORD *a6, uint64_t a7)
{
  if (!dword_100BCE23C)
  {
    return 408;
  }

  v94 = 0;
  v14 = sub_1001F45A0(a1, &v94);
  if (v14)
  {
    v15 = v14;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_AVDTP_FastConnectSetConfig error get CID for A2DP handle %d", v16, v17, v18, v19, v20, v21, v22, a1);
      v23 = sub_10000C050(3u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    if (!*(qword_100B5CD50 + 96))
    {
      goto LABEL_19;
    }

    v24 = 0;
    v25 = *qword_100B5CD50;
    v26 = 255;
    while (*(v25 + v24 + 25) != a3)
    {
      v24 += 40;
      --v26;
      if (40 * *(qword_100B5CD50 + 96) == v24)
      {
        goto LABEL_19;
      }
    }

    if (v26)
    {
      if (*(v25 + v24 + 16) && (sub_1000D660C(), *(v25 + v24 + 16)))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("OI_AVDTP_FastConnectSetConfig error Caps", v27, v28, v29, v30, v31, v32, v33, v91);
          v34 = sub_10000C050(3u);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        return 118;
      }

      else
      {
        v44 = sub_1001F7280(a2);
        if (v44)
        {
          v45 = v44;
          v92 = (v25 + v24 + 16);
          v46 = v94;
          v47 = qword_100B5CD50;
          if (qword_100B5CD50 && *(qword_100B5CD50 + 98))
          {
            v48 = 0;
            v49 = (*(qword_100B5CD50 + 16) + 38);
            while (1)
            {
              v50 = *v49;
              v49 += 32;
              if (v50 == v94)
              {
                break;
              }

              if (*(qword_100B5CD50 + 98) == ++v48)
              {
                goto LABEL_30;
              }
            }
          }

          else
          {
LABEL_30:
            LOBYTE(v48) = -1;
          }

          *(v44 + 135) = v48;
          v51 = *(v47 + 96);
          if (*(v47 + 96))
          {
            v52 = 0;
            v53 = (*v47 + 25);
            while (1)
            {
              v54 = *v53;
              v53 += 40;
              if (v54 == a3)
              {
                break;
              }

              if (v51 == ++v52)
              {
                goto LABEL_35;
              }
            }
          }

          else
          {
LABEL_35:
            LOBYTE(v52) = -1;
          }

          *(v44 + 136) = v52;
          sub_1001F9250(v44, 3u);
          *(v45 + 130) = 900;
          *(v45 + 128) = a7;
          sub_1001C3A30(a7);
          v93 = 0;
          if (!sub_1000ABC7C(a7, &v93) && sub_1000B12AC(v93))
          {
            v55 = sub_1000B12AC(v93);
            sub_1001C3A30(*(v55 + 8));
          }

          sub_10028D5C0(a7, sub_100200410);
          v56 = sub_1001F73E4(v45);
          *a6 = v56;
          if (v56)
          {
            v57 = sub_1001F47C0(v46);
            if (v57)
            {
              *(v57 + 34) = 1004;
              v58 = v25 + v24;
              v15 = sub_1001F4328(a4, a5, v92, (v25 + v24 + 32));
              if (v15)
              {
                if (sub_10000C240())
                {
                  sub_10000AF54("OI_AVDTP_FastConnectSetConfig error Copy Caps", v59, v60, v61, v62, v63, v64, v65, v91);
                  v66 = sub_10000C050(3u);
                  if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000E09C0();
                  }
                }

                sub_1001F4290(v92, a5);
                *(v45 + 132) = 0;
                *v45 = 0;
                *(v45 + 128) = 0;
                sub_1001C3A30(0);
                *(v45 + 137) = -1;
                *(v45 + 133) = -65281;
              }

              else
              {
                sub_1001F4290((v58 + 8), *(v58 + 31));
                *(v58 + 8) = *v92;
                *(v58 + 31) = *(v58 + 32);
                *v92 = 0;
                ++*(v58 + 29);
                *(v58 + 32) = 0;
                *(v45 + 137) = *(v58 + 24);
                *(v58 + 24) = *a6 - 1;
              }
            }

            else
            {
              if (sub_10000C240())
              {
                sub_10000AF54("OI_AVDTP_FastConnectSetConfig error Signal", v83, v84, v85, v86, v87, v88, v89, v91);
                v90 = sub_10000C050(3u);
                if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
                {
                  sub_1000E09C0();
                }
              }

              return 406;
            }
          }

          else
          {
            if (sub_10000C240())
            {
              sub_10000AF54("OI_AVDTP_FastConnectSetConfig error remote handle", v75, v76, v77, v78, v79, v80, v81, v91);
              v82 = sub_10000C050(3u);
              if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }

            return 414;
          }
        }

        else
        {
          if (sub_10000C240())
          {
            sub_10000AF54("OI_AVDTP_FastConnectSetConfig error remote", v67, v68, v69, v70, v71, v72, v73, v91);
            v74 = sub_10000C050(3u);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          return 2902;
        }
      }
    }

    else
    {
LABEL_19:
      if (sub_10000C240())
      {
        sub_10000AF54("OI_AVDTP_FastConnectSetConfig error get local EP for seid %d", v35, v36, v37, v38, v39, v40, v41, a3);
        v42 = sub_10000C050(3u);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 120;
    }
  }

  return v15;
}

void sub_100200410(uint64_t a1)
{
  if (*(*(qword_100B5CD50 + 24) + 216))
  {
    v2 = sub_1001FFC24(a1);
    if (v2)
    {
      v24 = 0;
      v3 = sub_1001F73E4(v2);
      v4 = sub_1001F4688(v3, &v24);
      if (v4)
      {
        v5 = v4;
        if (sub_10000C240())
        {
          sub_10000AF54("Flush callback lookup failed with status %! for mediaHandle %d", v6, v7, v8, v9, v10, v11, v12, v5);
          v13 = sub_10000C050(3u);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }

      else
      {
        v22 = *(*(qword_100B5CD50 + 24) + 216);
        v23 = v24;

        v22(v23);
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Flush callback lookup failed for mediaCid %d", v14, v15, v16, v17, v18, v19, v20, a1);
      v21 = sub_10000C050(3u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }
}

void sub_100200534(void *a1)
{
  if (!dword_100BCE23C)
  {
    return;
  }

  v2 = *(qword_100B5CD50 + 8);
  if (sub_10000C240())
  {
    sub_10000AF54("Signaling channel disconnected prior to media bringup (CID %d) with %!", v3, v4, v5, v6, v7, v8, v9, a1);
    v10 = sub_10000C050(3u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v28 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v11 = sub_1001F47C0(a1);
  if (v11)
  {
    v12 = qword_100B5CD50;
    v13 = *(qword_100B5CD50 + 97);
    if (*(qword_100B5CD50 + 97))
    {
      v14 = v11;
      do
      {
        if (*(v12 + 16) + (*(v2 + 135) << 6) == v14)
        {
          if (!*(v2 + 128))
          {
            sub_1000D660C();
          }

          sub_1001F8264(v2);
          v12 = qword_100B5CD50;
        }

        v2 += 144;
        --v13;
      }

      while (v13);
    }
  }

  if (!dword_100BCE23C)
  {
    v18 = 408;
LABEL_20:
    if (sub_10000C240())
    {
      sub_10000AF54("Signaling disconnect error %!", v19, v20, v21, v22, v23, v24, v25, v18);
      v26 = sub_10000C050(3u);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  v15 = *(qword_100B5CD50 + 98);
  if (!*(qword_100B5CD50 + 98))
  {
LABEL_18:
    v18 = 120;
    goto LABEL_20;
  }

  v16 = (*(qword_100B5CD50 + 16) + 38);
  while (1)
  {
    v17 = *v16;
    v16 += 32;
    if (v17 == a1)
    {
      break;
    }

    if (!--v15)
    {
      goto LABEL_18;
    }
  }

  sub_1001F6860(a1);
}

void sub_100200704(__int16 *a1, unsigned int a2, unsigned int a3)
{
  if (a2)
  {
    v5 = a2;
    v6 = qword_100B5CD50;
    do
    {
      v7 = *a1++;
      v8 = v7 - 1;
      if (*(v6 + 97) > (v7 - 1))
      {
        v9 = *(v6 + 8);
        if (v9)
        {
          v10 = v9 + 144 * v8;
          if (*(v10 + 132))
          {
            sub_1001F9250(v10, a3);
            v6 = qword_100B5CD50;
          }
        }
      }

      --v5;
    }

    while (v5);
  }
}

const char *sub_100200790(unsigned int a1)
{
  if (a1 > 7)
  {
    return "";
  }

  else
  {
    return off_100AE6550[a1];
  }
}

uint64_t sub_1002007B4(int a1, int a2)
{
  v3 = qword_100B5CD50;
  if (*(qword_100B5CD50 + 98))
  {
    v4 = 0;
    v5 = (*(qword_100B5CD50 + 16) + 38);
    while (1)
    {
      v6 = *v5;
      v5 += 32;
      if (v6 == a2)
      {
        break;
      }

      if (*(qword_100B5CD50 + 98) == ++v4)
      {
        goto LABEL_5;
      }
    }

    v7 = v4;
  }

  else
  {
LABEL_5:
    v7 = 255;
  }

  v8 = *(qword_100B5CD50 + 8);
  if (!dword_100BCE23C)
  {
    sub_1000D660C();
    v3 = qword_100B5CD50;
  }

  v9 = *(v3 + 97);
  if (!v9)
  {
    return 0;
  }

  v10 = 0;
  for (i = (v8 + 135); !*(i - 3) || *(i - 2) != a1 || *i != v7; i += 144)
  {
    if (v9 == ++v10)
    {
      return 0;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Found handle at %d (i+1) with transaction: %d and signal: %d", v13, v14, v15, v16, v17, v18, v19, v10 + 1);
    v20 = sub_10000C050(3u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v22 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  *(i - 2) = -1;
  return v10 + 1;
}

uint64_t sub_10020093C(int a1, int a2)
{
  v2 = *(qword_100B5CD50 + 97);
  if (*(qword_100B5CD50 + 97))
  {
    v3 = *(qword_100B5CD50 + 8);
    do
    {
      if (*(qword_100B5CD50 + 8))
      {
        if (*(v3 + 136) == 255)
        {
          v4 = 0;
        }

        else
        {
          v4 = *qword_100B5CD50 + 40 * *(v3 + 136);
        }

        v5 = *(v3 + 135);
        if (v5 == 255)
        {
          v6 = 0;
          if (!v4)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v6 = *(qword_100B5CD50 + 16) + (v5 << 6);
          if (!v4)
          {
            goto LABEL_14;
          }
        }

        if (*(v4 + 25) == a1 && v6 && *(v6 + 38) == a2)
        {
          return v3;
        }
      }

LABEL_14:
      v3 += 144;
      --v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_1002009D0(int a1, int a2, _WORD *a3, _BYTE *a4)
{
  *a4 = 0;
  result = sub_1002007B4(a1, a2);
  *a3 = result;
  if (result)
  {
    v9 = a3 + 1;
    do
    {
      ++*a4;
      result = sub_1002007B4(a1, a2);
      *v9++ = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_100200A38(int a1, int a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = *(qword_100B5CD50 + 97);
    if (*(qword_100B5CD50 + 97))
    {
      v4 = 0;
      v5 = (*(qword_100B5CD50 + 8) + 135);
      for (i = 1; ; ++i)
      {
        if (*(v5 - 3) == a1)
        {
          v7 = *v5;
          if (v7 != 255)
          {
            v8 = *(qword_100B5CD50 + 16);
            if (v8)
            {
              if (*(v8 + (v7 << 6) + 38) == a2)
              {
                break;
              }
            }
          }
        }

        v4 = i;
        v5 += 144;
        if (!--v3)
        {
          return 0;
        }
      }

      return (v4 + 1);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

const char *sub_100200ABC(char a1)
{
  if ((a1 + 2) > 0xFu)
  {
    return "Unknown";
  }

  else
  {
    return off_100AE6590[(a1 + 2)];
  }
}

uint64_t sub_100200AEC(int a1, int a2)
{
  result = sub_1001F47C0(a1);
  if (result && *(result + 44) == a2)
  {
    *(result + 44) = -1;
    v4 = *(result + 24);

    return sub_10002242C(v4);
  }

  return result;
}

uint64_t sub_100200B48(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v5 = a3;
  if (a3 >= 0x10)
  {
    sub_1000D660C();
  }

  if (a2 >= 0x40)
  {
    sub_1000D660C();
  }

  if (a4 >= 0x40)
  {
    sub_1000D660C();
  }

  v8 = sub_100007618(3uLL, 0x43B36864uLL);
  if (v8)
  {
    *v8 = 16 * v5;
    v8[1] = a2;
    v8[2] = 4 * a4;

    return sub_100200C40(a1, v5, a2, v8, 3uLL);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("No memory", v10, v11, v12, v13, v14, v15, v16, v18);
      v17 = sub_10000C050(3u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }

    return 106;
  }
}

uint64_t sub_100200C40(uint64_t a1, char a2, char a3, char *a4, size_t a5)
{
  v10 = sub_1001F47C0(a1);
  if (!v10 || (v11 = v10, *(v10 + 44) == 255))
  {
    v28 = sub_100200E68(a1, a4, a5);
    if (v28)
    {
      if (sub_10000C240())
      {
        v29 = sub_100200ABC(a3);
        sub_10000AF54("AVDTP Send failed [%s] transaction %d CID:%d", v30, v31, v32, v33, v34, v35, v36, v29);
        v37 = sub_10000C050(3u);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }

    else
    {
      sub_100202470(a1, a2, a3);
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("cmdPending t:%d", v12, v13, v14, v15, v16, v17, v18, *(v11 + 44));
      v19 = sub_10000C050(3u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_10000C1E8(a4);
    if (sub_10000C240())
    {
      sub_10000AF54("Outstanding command pending on CID: %d", v20, v21, v22, v23, v24, v25, v26, a1);
      v27 = sub_10000C050(3u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 118;
  }

  return v28;
}

uint64_t sub_100200DB8(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  v5 = a3;
  if (a3 >= 0x10)
  {
    sub_1000D660C();
  }

  if (a2 >= 0x40)
  {
    sub_1000D660C();
  }

  v8 = sub_100007618(3uLL, 0x73A38A2uLL);
  if (!v8)
  {
    return 106;
  }

  v9 = 2;
  if (a4)
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  *v8 = v10 | (16 * v5);
  v8[1] = a2;
  if (a4)
  {
    v8[2] = a4;
    v9 = 3;
  }

  return sub_100200E68(a1, v8, v9);
}

uint64_t sub_100200E68(uint64_t a1, char *a2, size_t a3)
{
  v6 = sub_1001F47C0(a1);
  if (!v6)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Signalling info not found for CID %d", v13, v14, v15, v16, v17, v18, v19, a1);
      v20 = sub_10000C050(3u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v21 = 403;
    goto LABEL_14;
  }

  v7 = v6;
  v8 = sub_1003053B4(a2, a3, 1);
  if (!v8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Out of memory!", v22, v23, v24, v25, v26, v27, v28, v31);
      v29 = sub_10000C050(3u);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v21 = 106;
LABEL_14:
    sub_10000C1E8(a2);
    return v21;
  }

  v9 = v8;
  v8[1] = 0;
  v10 = *(v7 + 8);
  if (v10)
  {
    do
    {
      v11 = v10;
      v10 = *(v10 + 8);
    }

    while (v10);
    v12 = (v11 + 8);
  }

  else
  {
    v12 = (v7 + 8);
    if (*(v7 + 40))
    {
      sub_1000D660C();
      v12 = (v7 + 8);
    }
  }

  *v12 = v9;
  if (*(v7 + 8) != v9)
  {
    return 0;
  }

  return sub_100202674(v7);
}

uint64_t sub_100200FD8(uint64_t a1, unsigned int a2, char a3)
{
  v4 = a2;
  if (a2 >= 0x10)
  {
    sub_1000D660C();
  }

  v6 = sub_100007618(2uLL, 0x155A2897uLL);
  if (!v6)
  {
    return 106;
  }

  *v6 = (16 * v4) | 1;
  v6[1] = a3 & 0x3F;

  return sub_100200E68(a1, v6, 2uLL);
}

uint64_t sub_10020106C(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  v7 = a3;
  if (a3 >= 0x10)
  {
    sub_1000D660C();
  }

  if (a2 != 254 && a2 >= 0x40)
  {
    sub_1000D660C();
  }

  v10 = sub_100007618(a5 + 2, 0xF908D4FFuLL);
  if (!v10)
  {
    return 106;
  }

  *v10 = 16 * v7;
  v10[1] = a2;
  if (a5)
  {
    v11 = 0;
    do
    {
      v10[v11 + 2] = 4 * *(a4 + v11);
      ++v11;
    }

    while (a5 != v11);
    v12 = v11 + 2;
  }

  else
  {
    v12 = 2;
  }

  return sub_100200C40(a1, v7, a2, v10, v12);
}

uint64_t sub_10020115C(uint64_t a1, unsigned int a2, unsigned int a3, char a4, int a5)
{
  v7 = a3;
  if (a3 >= 0x10)
  {
    sub_1000D660C();
  }

  if (a2 >= 0x40)
  {
    sub_1000D660C();
  }

  v10 = sub_100007618(4uLL, 0x892C465CuLL);
  if (!v10)
  {
    return 106;
  }

  v11 = 2;
  if (a5)
  {
    v12 = 3;
  }

  else
  {
    v12 = 2;
  }

  *v10 = v12 | (16 * v7);
  v10[1] = a2;
  if (a5)
  {
    v10[2] = 4 * a4;
    v10[3] = a5;
    v11 = 4;
  }

  return sub_100200E68(a1, v10, v11);
}

uint64_t sub_100201224(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  if (a2 >= 0x10)
  {
    sub_1000D660C();
  }

  v4 = sub_100007618(2uLL, 0xF3B8813uLL);
  if (!v4)
  {
    return 106;
  }

  *v4 = 16 * v2;
  v4[1] = 1;

  return sub_100200C40(a1, v2, 1, v4, 2uLL);
}

uint64_t sub_1002012AC(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, int a5)
{
  v8 = a2;
  if (a2 >= 0x10)
  {
    sub_1000D660C();
  }

  v10 = 2 * a4 + 3;
  v11 = sub_100007618(2 * a4 + 3, 0x36F5D0B7uLL);
  if (!v11)
  {
    return 106;
  }

  v12 = v11;
  v13 = (2 * a4 + 3);
  if (a5)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  *v11 = v14 | (16 * v8);
  if (v13 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 723, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  v11[1] = 1;
  if (a5)
  {
    if (v13 <= 2)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 726, "ByteStream_NumReadBytesAvail(bs) >= 1");
    }

    v11[2] = a5;
    v15 = 3;
  }

  else if (a4)
  {
    v17 = 0;
    v15 = 2;
    do
    {
      v18 = (a3 + 4 * v17);
      if (v18[3] >= 2u)
      {
        sub_1000D660C();
      }

      if (v18[1] >= 2u)
      {
        sub_1000D660C();
      }

      if (v15 >= v10)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 734, "ByteStream_NumReadBytesAvail(bs) >= 1");
      }

      v19 = v15 | 1;
      v12[v15] = (2 * v18[3]) | (4 * v18[2]);
      if (v19 >= v10)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 735, "ByteStream_NumReadBytesAvail(bs) >= 1");
      }

      v15 += 2;
      v12[v19] = *v18 & 0xF0 | (8 * v18[1]);
      ++v17;
    }

    while (a4 > v17);
  }

  else
  {
    v15 = 2;
  }

  return sub_100200E68(a1, v12, v15);
}

uint64_t sub_100201484(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    v4 = (a1 + 3);
    do
    {
      v5 = *(v4 - 3);
      if (v5 > 4)
      {
        if (v5 - 5 < 2)
        {
          v2 += 3;
LABEL_13:
          v2 += *v4;
          goto LABEL_14;
        }

        if (v5 == 7)
        {
          goto LABEL_15;
        }

        if (v5 != 8)
        {
          goto LABEL_13;
        }
      }

      else if (v5 - 1 >= 2)
      {
        if (v5 == 3)
        {
          v2 += 5;
          goto LABEL_17;
        }

        if (v5 == 4)
        {
LABEL_15:
          v2 += *v4 + 4;
          goto LABEL_17;
        }

        goto LABEL_13;
      }

LABEL_14:
      v2 += 2;
LABEL_17:
      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return v2;
}

_BYTE *sub_10020151C(_BYTE *result, unsigned __int8 *a2, unsigned int a3, int a4)
{
  if (a3)
  {
    v6 = result;
    v7 = a3;
    while (1)
    {
      v8 = *a2;
      if (v8 < 8 || a4 != 0)
      {
        if (v6[15])
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c");
LABEL_84:
          v51 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_85:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 794, v51);
        }

        v10 = *(v6 + 6);
        if (*(v6 + 5) <= v10)
        {
          goto LABEL_84;
        }

        if (v6[14] != 2)
        {
          v51 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_85;
        }

        v11 = *v6;
        *(v6 + 6) = v10 + 1;
        *(v11 + v10) = v8;
        v8 = *a2;
      }

      if (v8 <= 4)
      {
        break;
      }

      if ((v8 - 5) < 2)
      {
        if (v6[15])
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c");
LABEL_104:
          v58 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_108:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 821, v58);
        }

        v14 = *(v6 + 6);
        if (*(v6 + 5) <= v14)
        {
          goto LABEL_104;
        }

        if (v6[14] != 2)
        {
          v58 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_108;
        }

        v15 = a2[3] + 1;
        v16 = *v6;
        *(v6 + 6) = v14 + 1;
        *(v16 + v14) = v15;
        if (v6[15])
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c");
LABEL_87:
          v52 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_90:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 822, v52);
        }

        v17 = *(v6 + 6);
        if (*(v6 + 5) <= v17)
        {
          goto LABEL_87;
        }

        if (v6[14] != 2)
        {
          v52 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_90;
        }

        v18 = a2[1];
        v19 = *v6;
        *(v6 + 6) = v17 + 1;
        *(v19 + v17) = v18;
        v20 = a2[3];
        if (a2[3])
        {
          v21 = *v6;
          v22 = *(v6 + 6);
          v23 = *(a2 + 1);
          if (v6[15])
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c");
            v24 = 0;
            v20 = a2[3];
          }

          else
          {
            v24 = *(v6 + 5) - v22;
          }

          if (v24 < v20)
          {
            v59 = "ByteStream_NumReadBytesAvail(*pBs) >= (cap->genericData.dataLen)";
LABEL_113:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 824, v59);
          }

          if (v6[14] != 2)
          {
            v59 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
            goto LABEL_113;
          }

          goto LABEL_78;
        }

        goto LABEL_80;
      }

      if (v8 == 7)
      {
LABEL_37:
        if (v6[15])
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c");
LABEL_102:
          v57 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_106:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 814, v57);
        }

        v25 = *(v6 + 6);
        if (*(v6 + 5) <= v25)
        {
          goto LABEL_102;
        }

        if (v6[14] != 2)
        {
          v57 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_106;
        }

        v26 = a2[3] + 2;
        v27 = *v6;
        *(v6 + 6) = v25 + 1;
        *(v27 + v25) = v26;
        if (v6[15])
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c");
LABEL_110:
          v53 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_111:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 815, v53);
        }

        v28 = *(v6 + 6);
        if (*(v6 + 5) <= v28)
        {
          goto LABEL_110;
        }

        if (v6[14] != 2)
        {
          v53 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_111;
        }

        v29 = a2[1];
        v30 = *v6;
        *(v6 + 6) = v28 + 1;
        *(v30 + v28) = v29;
        if (v6[15])
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c");
LABEL_92:
          v54 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_96:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 816, v54);
        }

        v31 = *(v6 + 6);
        if (*(v6 + 5) <= v31)
        {
          goto LABEL_92;
        }

        if (v6[14] != 2)
        {
          v54 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_96;
        }

        v32 = a2[2];
        v33 = *v6;
        *(v6 + 6) = v31 + 1;
        *(v33 + v31) = v32;
        v21 = *v6;
        v22 = *(v6 + 6);
        v23 = *(a2 + 1);
        if (v6[15])
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c");
          v34 = 0;
        }

        else
        {
          v34 = *(v6 + 5) - v22;
        }

        v50 = a2[3];
        if (v34 < v50)
        {
          v56 = "ByteStream_NumReadBytesAvail(*pBs) >= (cap->genericData.dataLen)";
LABEL_100:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 817, v56);
        }

        if (v6[14] != 2)
        {
          v56 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_100;
        }

        goto LABEL_79;
      }

      if (v8 != 8)
      {
        goto LABEL_48;
      }

      if (a4)
      {
        if (v6[15])
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c");
LABEL_138:
          v66 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_139:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 804, v66);
        }

        v12 = *(v6 + 6);
        if (*(v6 + 5) <= v12)
        {
          goto LABEL_138;
        }

        if (v6[14] != 2)
        {
          v66 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_139;
        }

        goto LABEL_27;
      }

LABEL_80:
      a2 += 16;
      if (!--v7)
      {
        return result;
      }
    }

    if ((v8 - 1) < 2)
    {
      if (v6[15])
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c");
LABEL_94:
        v55 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_98:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 800, v55);
      }

      v12 = *(v6 + 6);
      if (*(v6 + 5) <= v12)
      {
        goto LABEL_94;
      }

      if (v6[14] != 2)
      {
        v55 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_98;
      }

LABEL_27:
      v13 = *v6;
      *(v6 + 6) = v12 + 1;
      *(v13 + v12) = 0;
      goto LABEL_80;
    }

    if (v8 == 3)
    {
      if (v6[15])
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c");
LABEL_115:
        v60 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_117:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 807, v60);
      }

      v39 = *(v6 + 6);
      if (*(v6 + 5) <= v39)
      {
        goto LABEL_115;
      }

      if (v6[14] != 2)
      {
        v60 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_117;
      }

      v40 = *v6;
      *(v6 + 6) = v39 + 1;
      *(v40 + v39) = 3;
      if (v6[15])
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c");
LABEL_119:
        v61 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_121:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 808, v61);
      }

      v41 = *(v6 + 6);
      if (*(v6 + 5) <= v41)
      {
        goto LABEL_119;
      }

      if (v6[14] != 2)
      {
        v61 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_121;
      }

      v42 = a2[1];
      v43 = *v6;
      *(v6 + 6) = v41 + 1;
      *(v43 + v41) = v42;
      if (v6[15])
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c");
LABEL_123:
        v62 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_125:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 809, v62);
      }

      v44 = *(v6 + 6);
      if (*(v6 + 5) <= v44)
      {
        goto LABEL_123;
      }

      if (v6[14] != 2)
      {
        v62 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_125;
      }

      v45 = a2[2];
      v46 = *v6;
      *(v6 + 6) = v44 + 1;
      *(v46 + v44) = v45;
      if (v6[15])
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c");
LABEL_127:
        v63 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_129:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 810, v63);
      }

      v47 = *(v6 + 6);
      if (*(v6 + 5) <= v47)
      {
        goto LABEL_127;
      }

      if (v6[14] != 2)
      {
        v63 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_129;
      }

      v48 = a2[3];
      v49 = *v6;
      *(v6 + 6) = v47 + 1;
      *(v49 + v47) = v48;
      goto LABEL_80;
    }

    if (v8 == 4)
    {
      goto LABEL_37;
    }

LABEL_48:
    if (v6[15])
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c");
LABEL_131:
      v64 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_133:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 828, v64);
    }

    v35 = *(v6 + 6);
    if (*(v6 + 5) <= v35)
    {
      goto LABEL_131;
    }

    if (v6[14] != 2)
    {
      v64 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
      goto LABEL_133;
    }

    v36 = a2[3];
    v37 = *v6;
    *(v6 + 6) = v35 + 1;
    *(v37 + v35) = v36;
    v20 = a2[3];
    if (a2[3])
    {
      v21 = *v6;
      v22 = *(v6 + 6);
      v23 = *(a2 + 1);
      if (v6[15])
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c");
        v38 = 0;
        v20 = a2[3];
      }

      else
      {
        v38 = *(v6 + 5) - v22;
      }

      if (v38 < v20)
      {
        v65 = "ByteStream_NumReadBytesAvail(*pBs) >= (cap->genericData.dataLen)";
LABEL_136:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 830, v65);
      }

      if (v6[14] != 2)
      {
        v65 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_136;
      }

LABEL_78:
      v50 = v20;
LABEL_79:
      result = memmove((v21 + v22), v23, v50);
      *(v6 + 6) += a2[3];
      goto LABEL_80;
    }

    goto LABEL_80;
  }

  return result;
}

uint64_t sub_100201DC8(uint64_t a1, unsigned int a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5, int a6)
{
  v12 = sub_100201484(a4, a5);
  if (a3 >= 0x10)
  {
    sub_1000D660C();
  }

  if (!a4 && a5)
  {
    sub_1000D660C();
  }

  if (a2 <= 0xC && ((1 << a2) & 0x1014) != 0)
  {
    if (!a4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_1000D660C();
    if (!a4)
    {
      goto LABEL_12;
    }
  }

  if (!a6)
  {
    v13 = sub_100201484(a4, a5) + 2;
    goto LABEL_19;
  }

LABEL_12:
  if (!a4 && a6)
  {
    v14 = 0;
LABEL_18:
    v13 = sub_100201484(v14, a5) + 3;
    goto LABEL_19;
  }

  v13 = v12 + 2;
  if (a4 && a6)
  {
    v14 = a4;
    goto LABEL_18;
  }

LABEL_19:
  v15 = sub_100007618(v13, 0x532A9935uLL);
  if (!v15)
  {
    return 106;
  }

  if (!v13)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 876, "(length) > 0");
  }

  v16 = v15;
  v20 = v15;
  v21 = v13;
  HIWORD(v21) = 2;
  WORD1(v21) = v13;
  if (a6)
  {
    v17 = 3;
  }

  else
  {
    v17 = 2;
  }

  *v15 = v17 | (16 * a3);
  if (v13 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 883, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  WORD2(v21) = 2;
  v15[1] = a2;
  if (a6)
  {
    if (v13 <= 2u)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 886, "ByteStream_NumReadBytesAvail(bs) >= 1");
    }

    WORD2(v21) = 3;
    v15[2] = a6;
  }

  else
  {
    sub_10020151C(&v20, a4, a5, a2 == 12);
    if (BYTE6(v21) != 2)
    {
      v19 = WORD1(v21);
      goto LABEL_31;
    }
  }

  v19 = WORD2(v21);
  WORD1(v21) = WORD2(v21);
LABEL_31:
  BYTE6(v21) = 15;
  return sub_100200E68(a1, v16, v19);
}

uint64_t sub_100201FC0(uint64_t a1, unsigned int a2, char a3, char a4, unsigned __int8 *a5, unsigned int a6)
{
  v12 = sub_100201484(a5, a6) + 4;
  if (a2 >= 0x10)
  {
    sub_1000D660C();
  }

  v13 = sub_100007618(v12, 0x15BCDDC3uLL);
  if (!v13)
  {
    return 106;
  }

  if (!v12)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 924, "(length) > 0");
  }

  v14 = v13;
  v17 = v13;
  v18 = v12;
  v21 = 2;
  v19 = v12;
  *v13 = 16 * a2;
  if (v12 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 927, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  v13[1] = 3;
  if (v12 <= 2u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 928, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  v13[2] = 4 * a3;
  if (v12 == 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 929, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  v20 = 4;
  v13[3] = 4 * a4;
  sub_10020151C(&v17, a5, a6, 1);
  if (v21 == 2)
  {
    v15 = v20;
    v19 = v20;
  }

  else
  {
    v15 = v19;
  }

  LOBYTE(v21) = 15;
  return sub_100200C40(a1, a2, 3, v14, v15);
}

uint64_t sub_100202160(uint64_t a1, int a2, unsigned int a3, char a4, int a5)
{
  v7 = a3;
  if (a3 >= 0x10)
  {
    sub_1000D660C();
  }

  if (a2 != 3 && a2 != 5)
  {
    sub_1000D660C();
  }

  v10 = sub_100007618(4uLL, 0x5C5311CCuLL);
  if (!v10)
  {
    return 106;
  }

  v11 = 16 * v7;
  if (a5)
  {
    v12 = v11 | 3;
    v10[2] = a4;
    v10[3] = a5;
    v13 = 4;
  }

  else
  {
    v12 = v11 | 2;
    v13 = 2;
  }

  *v10 = v12;
  v10[1] = a2;

  return sub_100200E68(a1, v10, v13);
}

uint64_t sub_100202230(uint64_t a1, unsigned int a2, const void *a3, unsigned int a4, int a5)
{
  v8 = a2;
  if (a2 >= 0x10)
  {
    sub_1000D660C();
  }

  v10 = sub_100007618(a4 + 3, 0xF1FF2704uLL);
  if (!v10)
  {
    return 106;
  }

  v11 = (a4 + 3);
  if (a4 == 0xFFFD)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 1083, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v12 = v10;
  v13 = 16 * v8;
  if (a5)
  {
    *v10 = v13 | 3;
    if (v11 == 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 1090, "ByteStream_NumReadBytesAvail(bs) >= 1");
    }

    v10[1] = 11;
    if (v11 <= 2)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 1091, "ByteStream_NumReadBytesAvail(bs) >= 1");
    }

    v10[2] = a5;
    v14 = 3;
  }

  else
  {
    *v10 = v13 | 2;
    if (v11 == 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 1086, "ByteStream_NumReadBytesAvail(bs) >= 1");
    }

    v10[1] = 11;
    if (v11 - 2 < a4)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avdtp/avdtp_signal.c", 1087, "ByteStream_NumReadBytesAvail(bs) >= (dataLen)");
    }

    memmove(v10 + 2, a3, a4);
    v14 = a4 + 2;
  }

  return sub_100200E68(a1, v12, v14);
}

uint64_t sub_1002023C4(uint64_t a1, unsigned int a2, int a3, char a4)
{
  v6 = a2;
  if (a2 >= 0x10)
  {
    sub_1000D660C();
  }

  v8 = sub_100007618(3uLL, 0x183A26D6uLL);
  if (!v8)
  {
    return 106;
  }

  v9 = 16 * v6;
  if (a3)
  {
    v10 = v9 | 2;
    v11 = 2;
  }

  else
  {
    v10 = v9 | 3;
    v8[2] = a4;
    v11 = 3;
  }

  *v8 = v10;
  v8[1] = 13;

  return sub_100200E68(a1, v8, v11);
}

uint64_t sub_100202470(int a1, char a2, char a3)
{
  v16[0] = 0;
  v6 = *(sub_1003045A0(3u) + 4);
  v13 = a1;
  v14 = a2;
  v15 = a3;
  result = sub_1001F47C0(a1);
  if (result)
  {
    v8 = result;
    v9 = sub_1001F4410();
    v11 = *(v8 + 24);
    v10 = v8 + 24;
    *(v10 + 21) = v9;
    v16[1] = &v13;
    LOWORD(v16[0]) = 4;
    *(v10 + 20) = a2;
    sub_10002242C(v11);
    if (v6)
    {
      v12 = v6;
    }

    else
    {
      v12 = 20;
    }

    return sub_10002195C(sub_100202524, v16, v12, v10);
  }

  return result;
}

void sub_100202524(uint64_t a1)
{
  v19 = 0;
  v1 = *(a1 + 8);
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = sub_1001F47C0(*v1);
  if (v5)
  {
    v6 = v5;
    if (v3 == *(v5 + 44))
    {
      if (sub_1001F442C() || (v7 = *(v6 + 45), v7 != sub_1001F4410()))
      {

        sub_100202470(v2, v3, v4);
      }

      else
      {
        v8 = 3;
        if (sub_10000C240())
        {
          sub_10000AF54("Didn't get command response to transaction %d within timeout period", v9, v10, v11, v12, v13, v14, v15, v3);
          v16 = sub_10000C050(3u);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        LOBYTE(v19) = (16 * v3) | 3;
        BYTE1(v19) = v4;
        if (v4 > 9 || ((1 << v4) & 0x2A8) == 0)
        {
          v18 = &v19 + 2;
        }

        else
        {
          v18 = &v19 + 3;
          BYTE2(v19) = 0;
          v8 = 4;
        }

        *v18 = -1;
        sub_1001FA434(v2, &v19, v8);
      }
    }
  }
}

uint64_t sub_100202674(uint64_t a1)
{
  if (*(a1 + 40))
  {
    sub_1000D660C();
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    sub_1000D660C();
    v2 = *(a1 + 8);
  }

  *(a1 + 40) = *(v2 + 4) / (*(a1 + 34) - 1) + 1;

  return sub_1002026E0(a1, 1);
}

uint64_t sub_1002026E0(uint64_t a1, int a2)
{
  if (!*(a1 + 40))
  {
    sub_1000D660C();
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v30[0] = 0;
    v29 = 0;
    if (a2)
    {
      if (*(a1 + 40) < 2u)
      {
        v5 = 0;
      }

      else
      {
        sub_100305614(v4, (*(a1 + 34) - 1));
        sub_10001F788((a1 + 41), v4, 1u);
        LOBYTE(v29) = *(a1 + 41) | 4;
        HIBYTE(v29) = *(a1 + 40);
        sub_10001F788(v30, v4, 1u);
        v5 = 3;
      }
    }

    else
    {
      sub_100305660(v4, (*(a1 + 34) - 1));
      if (*(a1 + 40) == 1)
      {
        v6 = 12;
      }

      else
      {
        v6 = 8;
      }

      v7 = *(a1 + 41) | v6;
      *(a1 + 41) = v7;
      LOBYTE(v29) = v7;
      v5 = 1;
    }

    v8 = sub_1000B914C(2u);
    if (!v8)
    {
      v4 = 106;
LABEL_21:
      v18 = *(a1 + 8);
      if (sub_10000C240())
      {
        sub_10000AF54("SendFragment failed", v19, v20, v21, v22, v23, v24, v25, v28);
        v26 = sub_10000C050(3u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_10080FF64();
        }
      }

      *(a1 + 8) = v18[1];
      *(a1 + 40) = 0;
      sub_1000BB9CC(v18);
      return v4;
    }

    v9 = v8;
    sub_10001F968(v8, &v29, v5, 0);
    sub_1000BAD68(v9, *(a1 + 8));
    if (!*(v9 + 4))
    {
      sub_1000D660C();
    }

    v4 = sub_1000B7EDC(sub_1002028F0, *(a1 + 38), 0, v9, 0);
    if (v4)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("L2CAP Write failed: %!", v10, v11, v12, v13, v14, v15, v16, v4);
        v17 = sub_10000C050(3u);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      sub_1000BB9CC(v9);
      goto LABEL_21;
    }
  }

  return v4;
}

void sub_1002028F0(uint64_t a1, void *a2)
{
  sub_1000BB9CC(a2);
  v3 = sub_1001F47C0(a1);
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + 40);
    if (!v5)
    {
      sub_1000D660C();
      v5 = *(v4 + 40);
    }

    v6 = v5 - 1;
    *(v4 + 40) = v6;
    if (v6)
    {
      if (!sub_1002026E0(v4, 0))
      {
        return;
      }
    }

    else
    {
      v15 = *(v4 + 8);
      if (!v15)
      {
        return;
      }

      *(v4 + 8) = v15[1];
      sub_1000BB9CC(v15);
      if (!*(v4 + 8) || !sub_100202674(v4))
      {
        return;
      }
    }

      ;
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("No signalling channel found for CID %d", v7, v8, v9, v10, v11, v12, v13, a1);
    v14 = sub_10000C050(3u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

uint64_t sub_1002029E4(uint64_t a1)
{
  if (xmmword_100BCE240)
  {
    return 119;
  }

  if (a1)
  {
    v3 = sub_1001BBBD8(0x60uLL, 0x10E004083361946uLL);
    qword_100BC9C18 = v3;
    if (v3)
    {
      *v3 = a1;
      v4 = *sub_1003045A0(4u);
      *(qword_100BC9C18 + 88) = v4;
      if ((v4 - 17) <= 0xFFFFFFEF)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("invalid maxTransactions value (%d), setting to %d\n", v5, v6, v7, v8, v9, v10, v11, *(qword_100BC9C18 + 88));
          v12 = sub_10000C050(4u);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        *(qword_100BC9C18 + 88) = 16;
      }

      v13 = *(sub_1003045A0(4u) + 1);
      *(qword_100BC9C18 + 89) = v13;
      if (!v13)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("invalid maxConnections value (%d), setting to 1\n", v14, v15, v16, v17, v18, v19, v20, *(qword_100BC9C18 + 89));
          v21 = sub_10000C050(4u);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        *(qword_100BC9C18 + 89) = 1;
      }

      v22 = sub_1003045A0(4u);
      result = 0;
      *(qword_100BC9C18 + 91) = *(v22 + 2);
      LODWORD(xmmword_100BCE240) = 1;
    }

    else
    {
      return 106;
    }
  }

  else
  {
    sub_1000D660C();
    return 101;
  }

  return result;
}

uint64_t sub_100202B7C()
{
  if (!xmmword_100BCE240)
  {
    return 408;
  }

  if (*(qword_100BC9C18 + 8) || *(qword_100BC9C18 + 16))
  {
    return 117;
  }

  if (*(qword_100BC9C18 + 72) || *(qword_100BC9C18 + 80))
  {
    return 118;
  }

  if (*(qword_100BC9C18 + 90))
  {
    return 141;
  }

  sub_10000C1E8(qword_100BC9C18);
  result = 0;
  qword_100BC9C18 = 0;
  LODWORD(xmmword_100BCE240) = 0;
  return result;
}

uint64_t sub_100202C08(int *a1, uint64_t a2, char a3)
{
  if (!xmmword_100BCE240)
  {
    return 408;
  }

  v3 = qword_100BC9C18;
  if (*(qword_100BC9C18 + 90) >= *(qword_100BC9C18 + 89))
  {
    return 3300;
  }

  v7 = *(qword_100BC9C18 + 32);
  if (v7)
  {
    result = sub_100203258(a1, 2u, *(v7 + 8));
    if (result)
    {
      return result;
    }

    v3 = qword_100BC9C18;
  }

  v9 = *(v3 + 24);
  if (v9)
  {
    result = sub_100203258(a1, 2u, *(v9 + 8));
    if (result)
    {
      return result;
    }

    v3 = qword_100BC9C18;
  }

  ++*(v3 + 90);
  result = sub_1001F1BBC(a1, 4366, a2, a3);
  if (result)
  {
    if (*(qword_100BC9C18 + 90))
    {
      --*(qword_100BC9C18 + 90);
    }
  }

  return result;
}

uint64_t sub_100202CEC(int *a1, int a2, char a3)
{
  if (!xmmword_100BCE240)
  {
    return 408;
  }

  v4 = a2;
  if (a2)
  {
    v6 = qword_100BC9C18;
    if (*(qword_100BC9C18 + 90) >= *(qword_100BC9C18 + 89))
    {
      return 3300;
    }

    v7 = *(qword_100BC9C18 + 32);
    if (v7)
    {
      result = sub_100203258(a1, 2u, *(v7 + 8));
      if (result)
      {
        return result;
      }

      v6 = qword_100BC9C18;
    }

    v9 = *(v6 + 24);
    if (v9)
    {
      result = sub_100203258(a1, 2u, *(v9 + 8));
      if (result)
      {
        return result;
      }

      v6 = qword_100BC9C18;
    }

    ++*(v6 + 90);
  }

  return sub_1001F2648(a1, v4, a3);
}

uint64_t sub_100202DCC(int *a1)
{
  if (!xmmword_100BCE240)
  {
    return 408;
  }

  v2 = sub_1001F27C4(a1);
  if (!v2)
  {
    v3 = qword_100BC9C18;
    v4 = *(qword_100BC9C18 + 32);
    if (v4)
    {
      v5 = sub_100203258(a1, 3u, *(v4 + 8));
      if (v5)
      {
        return v5;
      }

      v3 = qword_100BC9C18;
    }

    v6 = *(v3 + 24);
    if (v6)
    {
      v5 = sub_100203258(a1, 3u, *(v6 + 8));
      if (v5)
      {
        return v5;
      }
    }
  }

  return v2;
}

uint64_t sub_100202E68(int *a1)
{
  if (!xmmword_100BCE240)
  {
    return 408;
  }

  v1 = qword_100BC9C18;
  if (*(qword_100BC9C18 + 90) >= *(qword_100BC9C18 + 89))
  {
    return 3300;
  }

  v3 = *(qword_100BC9C18 + 32);
  if (v3)
  {
    result = sub_100203258(a1, 2u, *(v3 + 8));
    if (result)
    {
      return result;
    }

    v1 = qword_100BC9C18;
  }

  v5 = *(v1 + 24);
  if (v5)
  {
    result = sub_100203258(a1, 2u, *(v5 + 8));
    if (result)
    {
      return result;
    }

    v1 = qword_100BC9C18;
  }

  ++*(v1 + 90);
  v6 = *(v1 + 32);
  if (v6)
  {
    result = sub_100203258(a1, 1u, *(v6 + 8));
    v1 = qword_100BC9C18;
  }

  else
  {
    result = 0;
  }

  v7 = *(v1 + 24);
  if (v7)
  {
    v8 = *(v7 + 8);

    return sub_100203258(a1, 1u, v8);
  }

  return result;
}

uint64_t sub_100202F5C(uint64_t a1)
{
  if (!xmmword_100BCE240)
  {
    return 408;
  }

  v2 = qword_100BC9C18;
  v3 = *(qword_100BC9C18 + 32);
  if (v3)
  {
    result = sub_1002031AC(a1, *(v3 + 8));
    v2 = qword_100BC9C18;
  }

  else
  {
    result = 0;
  }

  v5 = *(v2 + 24);
  if (v5)
  {
    result = sub_1002031AC(a1, *(v5 + 8));
    v2 = qword_100BC9C18;
  }

  if (*(v2 + 90))
  {
    --*(v2 + 90);
  }

  return result;
}

void sub_100202FE8(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(qword_100BC9C18 + 72);
  if (v2)
  {
    v5 = 0;
    do
    {
      v6 = *a1 == *v2 && *(a1 + 4) == *(v2 + 2);
      if (v6 && (!a2 || *a2 == v2[6]))
      {
        v8 = *(v2 + 3);
        v7 = (v5 + 24);
        v9 = (qword_100BC9C18 + 72);
        if (v5)
        {
          v9 = v5 + 24;
        }

        *v9 = v8;
        if (!v8)
        {
          v10 = qword_100BC9C18;
          if (*(qword_100BC9C18 + 80) != v2)
          {
            sub_1000D660C();
            v10 = qword_100BC9C18;
          }

          *(v10 + 80) = v5;
        }

        sub_10000C1E8(*(v2 + 1));
        sub_10000C1E8(v2);
        if (a2)
        {
          return;
        }

        if (!v5)
        {
          v7 = (qword_100BC9C18 + 72);
        }
      }

      else
      {
        v7 = (v2 + 24);
        v5 = v2;
      }

      v2 = *v7;
    }

    while (*v7);
  }
}

uint64_t sub_1002030D8(uint64_t a1, int a2)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v4 = qword_100BC9C18;
  if (a2)
  {
    v5 = *(qword_100BC9C18 + 32);
    if (!v5)
    {
      sub_1000D660C();
      v4 = qword_100BC9C18;
      v5 = *(qword_100BC9C18 + 32);
    }

    if (!*(v5 + 8))
    {
      sub_1000D660C();
      v4 = qword_100BC9C18;
    }

    v6 = v4 + 32;
  }

  else
  {
    v7 = *(qword_100BC9C18 + 24);
    if (!v7)
    {
      sub_1000D660C();
      v4 = qword_100BC9C18;
      v7 = *(qword_100BC9C18 + 24);
    }

    if (!*(v7 + 8))
    {
      sub_1000D660C();
      v4 = qword_100BC9C18;
    }

    v6 = v4 + 24;
  }

  v8 = *(v4 + 89);
  if (!v8)
  {
    return 0;
  }

  for (result = *(*v6 + 8); *result != *a1 || *(result + 4) != *(a1 + 4); result += 32)
  {
    if (!--v8)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002031AC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a1)
  {
    if (!a2)
    {
      return 0;
    }
  }

  else
  {
    sub_1000D660C();
    if (!v2)
    {
      return 0;
    }
  }

  v4 = *(qword_100BC9C18 + 89);
  if (!*(qword_100BC9C18 + 89))
  {
    return 120;
  }

  while (*v2 != *a1 || *(v2 + 4) != *(a1 + 4))
  {
    v2 += 32;
    if (!--v4)
    {
      return 120;
    }
  }

  *v2 = 0;
  *(v2 + 4) = 0;
  if (*(v2 + 6))
  {
    result = 0;
    *(v2 + 6) = 0;
    return result;
  }

  return 0;
}

uint64_t sub_100203258(int *a1, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  if (a1)
  {
    if (!a3)
    {
      return 0;
    }
  }

  else
  {
    sub_1000D660C();
    if (!v3)
    {
      return 0;
    }
  }

  v6 = qword_100BC9C18;
  v7 = *(qword_100BC9C18 + 89);
  if (!*(qword_100BC9C18 + 89))
  {
    return 120;
  }

  v8 = v3;
  do
  {
    if (*v8 == *a1 && *(v8 + 4) == *(a1 + 2))
    {
      v13 = *(v8 + 6);
      result = 408;
      if (v13 <= 1)
      {
        if (*(v8 + 6))
        {
          if (v13 != 1)
          {
            return result;
          }

          if (a2 != 3)
          {
            return 126;
          }
        }

        else if (a2 != 2)
        {
          return 122;
        }

        goto LABEL_39;
      }

      if (v13 == 2)
      {
        if (a2 <= 1)
        {
LABEL_39:
          if (v13 == a2)
          {
            return 0;
          }

          result = 0;
          *(v8 + 6) = a2;
          return result;
        }
      }

      else
      {
        if (v13 != 3)
        {
          return result;
        }

        if (!a2)
        {
          goto LABEL_39;
        }
      }

      return 116;
    }

    v8 += 32;
    --v7;
  }

  while (v7);
  v10 = 0;
  while (1)
  {
    if (*v3)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v3 + 4) == 0;
    }

    if (!v11)
    {
      goto LABEL_22;
    }

    if (*(v3 + 6))
    {
      sub_1000D660C();
    }

    if (a2 == 2)
    {
      break;
    }

    v6 = qword_100BC9C18;
LABEL_22:
    ++v10;
    v3 += 32;
    if (v10 >= *(v6 + 89))
    {
      return 120;
    }
  }

  v14 = *a1;
  *(v3 + 4) = *(a1 + 2);
  *v3 = v14;
  if (*(v3 + 6) != 2)
  {
    result = 0;
    *(v3 + 6) = 2;
    return result;
  }

  return 0;
}

uint64_t sub_1002033F0()
{
  if (!xmmword_100BCE240)
  {
    return 408;
  }

  LODWORD(result) = sub_1001F1914(4366, sub_1002034C8, sub_1002034E0, sub_100203624, sub_100203788, sub_1002038AC, sub_1002039AC, nullsub_134, sub_1002039D4, sub_100203B64);
  if (result == 119)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1002034E0(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a4)
  {
    v9 = qword_100BC9C18;
    v10 = *(qword_100BC9C18 + 32);
    if (v10)
    {
      v4 = sub_100203258(a1, 1u, *(v10 + 8));
      v9 = qword_100BC9C18;
    }

    else
    {
      v4 = 0;
    }

    v11 = *(v9 + 24);
    if (v11)
    {
      v4 = sub_100203258(a1, 1u, *(v11 + 8));
    }

    if (!v4)
    {
      v6 = qword_100BC9C18;
      return (*(*v6 + 16))(a1, v4);
    }

    v12 = sub_1001F27C4(a1);
    if (v12)
    {
      v13 = v12;
      if (sub_10000C240())
      {
        sub_10000AF54("AVRCP error %!. Failed to disconnet AVCTP %!, still connected", v14, v15, v16, v17, v18, v19, v20, v13);
        v21 = sub_10000C050(4u);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }
  }

  v6 = qword_100BC9C18;
  v7 = *(qword_100BC9C18 + 32);
  if (v7)
  {
    sub_1002031AC(a1, *(v7 + 8));
    v6 = qword_100BC9C18;
  }

  v8 = *(v6 + 24);
  if (v8)
  {
    sub_1002031AC(a1, *(v8 + 8));
    v6 = qword_100BC9C18;
  }

  if (*(v6 + 90))
  {
    --*(v6 + 90);
  }

  return (*(*v6 + 16))(a1, v4);
}

uint64_t sub_100203624(uint64_t a1, uint64_t a2)
{
  sub_1001A4C5C(a1, a2);
  sub_100202FE8(a1, 0);
  v4 = qword_100BC9C18;
  v5 = *(qword_100BC9C18 + 24);
  if (v5 && (v6 = *(qword_100BC9C18 + 89), *(qword_100BC9C18 + 89)))
  {
    v7 = *(v5 + 8);
    while (1)
    {
      v8 = *v7 == *a1 && *(v7 + 4) == *(a1 + 4);
      if (v8 && *(v7 + 6) == 2)
      {
        break;
      }

      v7 += 32;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("(addr=%s) Cannot disconnect when state is AVRCP_CONNECT_PENDING, issuing failure on ConnectCfm", v12, v13, v14, v15, v16, v17, v18, a1);
      v19 = sub_10000C050(4u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return sub_1002034E0(a1, 0, 0, 116);
  }

  else
  {
LABEL_11:
    v9 = *(qword_100BC9C18 + 32);
    if (v9)
    {
      sub_1002031AC(a1, *(v9 + 8));
      v4 = qword_100BC9C18;
      v5 = *(qword_100BC9C18 + 24);
    }

    if (v5)
    {
      sub_1002031AC(a1, *(v5 + 8));
      v4 = qword_100BC9C18;
    }

    if (v4[90])
    {
      --v4[90];
    }

    v10 = *(*v4 + 8);

    return v10(a1, a2);
  }
}

void sub_100203788(uint64_t a1, uint64_t a2, int a3, int a4, _BYTE *a5, unsigned int a6)
{
  memset(v19, 0, sizeof(v19));
  if (a4)
  {
    if (a3 == 2)
    {

      sub_1001A4D20(a1, a2, 3310);
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Peer sent command with invalidPID flag set. Ignoring.", v10, v11, v12, v13, v14, v15, v16, v18);
      v17 = sub_10000C050(4u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else if (a6 >= 3 && !sub_100203C78(v19, a5, a6))
  {
    if (a3 == 2)
    {
      v9 = *(qword_100BC9C18 + 48);
      if (!v9)
      {
        return;
      }
    }

    else
    {
      if (a3 != 1)
      {
        return;
      }

      v9 = *(qword_100BC9C18 + 40);
      if (!v9)
      {
        return;
      }
    }

    v9(a1, a2, v19);
  }
}

void sub_1002038AC(uint64_t a1, int a2, unsigned int a3, int a4, void *ptr, uint64_t a6, uint64_t a7)
{
  if (a4 == 1 && a7)
  {
    sub_1001A4D20(a1, a3, a7);
  }

  if (ptr)
  {
    sub_10000C1E8(ptr);
  }

  v9 = sub_100203C20();
  if (v9)
  {
    v10 = v9;
    v11 = sub_1001F2878(v9, 4366, *(v9 + 6), *(v9 + 7), *(v9 + 8), *(v9 + 16));
    if (v11)
    {
      if (v11 == 410)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Got WRITE_IN_PROGRESS from AVCTP on a sendcfm. Trying again later.", v12, v13, v14, v15, v16, v17, v18, v20);
          v19 = sub_10000C050(4u);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        sub_100203FBC(v10);
        return;
      }

      if (a4 == 1)
      {
        sub_1001A4D20(v10, *(v10 + 6), v11);
      }

      sub_10000C1E8(*(v10 + 8));
    }

    sub_10000C1E8(v10);
  }
}

uint64_t sub_1002039AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*qword_100BC9C18 + 24);
  if (v4)
  {
    return v4(result, a4);
  }

  return result;
}

void sub_1002039D4(uint64_t a1, uint64_t a2, int a3, int a4, unsigned __int8 *a5, unsigned int a6)
{
  if (a4)
  {
    if (a3 == 2)
    {

      sub_1001A4D20(a1, a2, 3311);
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Peer sent command with invalidPID flag set. Ignoring.", v23, v24, v25, v26, v27, v28, v29, v31);
      v30 = sub_10000C050(4u);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    v9 = a6 - 3;
    if (a6 >= 3)
    {
      v11 = *a5;
      v12 = *(a5 + 1);
      v13 = __rev16(v12);
      if (v9 == bswap32(v12) >> 16)
      {
        goto LABEL_12;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Length doesn't match : AVCTP says %d, AVRCP says %d", v14, v15, v16, v17, v18, v19, v20, v9);
        v21 = sub_10000C050(4u);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      if (v9 >= v13)
      {
LABEL_12:
        if (a3 == 2)
        {
          v22 = *(qword_100BC9C18 + 64);
          if (!v22)
          {
            return;
          }
        }

        else
        {
          if (a3 != 1)
          {
            return;
          }

          v22 = *(qword_100BC9C18 + 56);
          if (!v22)
          {
            return;
          }
        }

        v22(a1, a2, v11, v13, a5 + 3);
      }
    }
  }
}

void sub_100203B64(int a1, int a2, int a3, int a4, void *ptr)
{
  if (ptr)
  {
    sub_10000C1E8(ptr);
  }
}

uint64_t sub_100203B74()
{
  if (!xmmword_100BCE240)
  {
    return 408;
  }

  if (*(qword_100BC9C18 + 16) || *(qword_100BC9C18 + 8))
  {
    return 0;
  }

  if (*(qword_100BC9C18 + 90))
  {
    return 141;
  }

  v2 = sub_100203C20();
  if (v2)
  {
    v3 = v2;
    do
    {
      v4 = v3[1];
      if (v4)
      {
        sub_10000C1E8(v4);
        v3[1] = 0;
      }

      sub_10000C1E8(v3);
      v3 = sub_100203C20();
    }

    while (v3);
  }

  return sub_1001F1AD4(4366);
}

uint64_t sub_100203C20()
{
  v2 = *(qword_100BC9C18 + 72);
  v1 = *(qword_100BC9C18 + 80);
  v0 = (qword_100BC9C18 + 72);
  if (v2)
  {
    if (v2 == v1)
    {
      *v0 = 0;
      v0[1] = 0;
    }

    else
    {
      *v0 = *(v2 + 24);
    }
  }

  else if (v1)
  {
    sub_1000D660C();
  }

  return v2;
}

uint64_t sub_100203C78(uint64_t a1, _BYTE *a2, unsigned int a3)
{
  if (!xmmword_100BCE240)
  {
    return 408;
  }

  if (a3 < 3)
  {
    return 411;
  }

  if (!a2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_helper.c", 770, "packet");
  }

  if (!a3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_helper.c", 771, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  *a1 = *a2;
  v4 = a2[1] & 7;
  *(a1 + 2) = v4;
  v5 = a2[1] >> 3;
  *(a1 + 1) = a2[1] >> 3;
  if (a3 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_helper.c", 777, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  v3 = 411;
  if (a3 >= 3u && v5 != 30 && v4 != 5)
  {
    v3 = 0;
    *(a1 + 3) = a2[2];
    *(a1 + 8) = a2 + 3;
    *(a1 + 16) = a3 - 3;
  }

  return v3;
}

uint64_t sub_100203D68(uint64_t a1, unsigned int a2, unsigned __int8 *a3)
{
  if (!xmmword_100BCE240)
  {
    return 408;
  }

  if (!a3)
  {
    sub_1000D660C();
    return 101;
  }

  if (*a3 > 0xFu)
  {
    return 101;
  }

  v6 = *(a3 + 8);
  if (*(a3 + 8))
  {
    if (!*(a3 + 1))
    {
      return 101;
    }
  }

  if (a3[1] == 30 || a3[2] == 5)
  {
    return 102;
  }

  v9 = v6 + 3;
  v10 = sub_1001BBBD8((v6 + 3), 0x440146DAuLL);
  if (!v10)
  {
    return 106;
  }

  if (v6 == 0xFFFD)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_helper.c", 826, "(packetLen) > 0");
  }

  v11 = v10;
  *v10 = *a3;
  v12 = v10[1] | (8 * a3[1]);
  v10[1] = v12;
  v10[1] = a3[2] & 7 | v12;
  if ((v6 + 3) == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_helper.c", 832, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  if (v6 >= 0xFFFD)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_helper.c", 833, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  v10[2] = a3[3];
  v13 = (v6 + 3) - 3;
  v14 = *(a3 + 8);
  if (v13 < v14)
  {
    sub_1000D660C();
    v14 = *(a3 + 8);
  }

  if (v13 < v14)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_helper.c", 837, "ByteStream_NumReadBytesAvail(bs) >= (frame->operandCount)");
  }

  memmove(v11 + 3, *(a3 + 1), v14);
  if ((*a3 & 8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  v16 = sub_1001F2878(a1, 4366, a2, v15, v11, v9);
  v7 = v16;
  if (v16)
  {
    if (v16 == 410)
    {
      v17 = sub_100007618(0x20uLL, 0x1030040ACF76BB2uLL);
      if (v17)
      {
        v18 = *a1;
        v17[2] = *(a1 + 4);
        *v17 = v18;
        *(v17 + 6) = a2;
        *(v17 + 7) = v15;
        *(v17 + 1) = v11;
        v17[8] = v9;
        sub_100203FBC(v17);
        return 0;
      }

      v7 = 106;
    }

    sub_10000C1E8(v11);
  }

  return v7;
}

uint64_t sub_100203F9C(uint64_t result)
{
  byte_100B5CD58 = 1;
  word_100B5CD5A = 2;
  dword_100B5CD60 = result;
  return result;
}

void sub_100203FBC(uint64_t a1)
{
  *(a1 + 24) = 0;
  v2 = qword_100BC9C18;
  v3 = (qword_100BC9C18 + 80);
  v4 = *(qword_100BC9C18 + 80);
  if (v4)
  {
    *(v4 + 24) = a1;
  }

  else
  {
    if (*(qword_100BC9C18 + 72))
    {
      sub_1000D660C();
      v2 = qword_100BC9C18;
    }

    *(v2 + 72) = a1;
    v3 = (v2 + 80);
  }

  *v3 = a1;
}

uint64_t sub_10020401C(uint64_t a1, unsigned __int8 *a2, char *a3)
{
  v17 = 0;
  v18 = 0;
  memset(v24, 0, sizeof(v24));
  LOBYTE(v17) = a3[1];
  *(&v17 + 1) = 9;
  v18 = &v20;
  v19 = 0;
  v21 = 88;
  v20 = 6400;
  v22 = *a3;
  v6 = 7;
  result = 102;
  v23 = 0;
  if (v22 > 0x16u)
  {
    if (v22 > 0x2Fu)
    {
      if (v22 - 64 >= 2)
      {
        if (v22 != 48)
        {
          if (v22 != 49)
          {
            return result;
          }

          v24[2] = a3[8];
          *&v24[3] = bswap32(*(a3 + 3));
          v6 = 12;
        }

        goto LABEL_38;
      }

      goto LABEL_24;
    }

    switch(v22)
    {
      case 0x17u:
        v24[2] = a3[8];
        if (!v24[2])
        {
          goto LABEL_26;
        }

        v14 = *(a3 + 2);
        v15 = 2 * v24[2];
        v16 = &v24[3];
        v12 = -8;
        do
        {
          if (v12 == -512)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 142, "ByteStream_NumReadBytesAvail(bs) >= 2");
          }

          v16[1] = *v14;
          *v16 = v14[1];
          v16 += 2;
          v12 -= 2;
          v14 += 2;
        }

        while (v15 + v12 != -8);
        break;
      case 0x18u:
        goto LABEL_24;
      case 0x20u:
        *&v24[2] = **(a3 + 1);
        v24[10] = a3[16];
        if (!v24[10])
        {
          v6 = 16;
          goto LABEL_38;
        }

        v9 = *(a3 + 3);
        v10 = 4 * v24[10];
        v11 = &v24[11];
        v12 = -16;
        do
        {
          if (v12 == -512)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 154, "ByteStream_NumReadBytesAvail(bs) >= 4");
          }

          v11[3] = *v9;
          v11[2] = BYTE1(*v9);
          v11[1] = *(v9 + 2);
          *v11 = *(v9 + 3);
          v11 += 4;
          v12 -= 4;
          v9 += 4;
        }

        while (v10 + v12 != -16);
        break;
      default:
        return result;
    }

    v6 = -v12;
    goto LABEL_38;
  }

  if (v22 <= 0x12u)
  {
    if (v22 != 16)
    {
      if (v22 == 17)
      {
        goto LABEL_38;
      }

      if (v22 != 18)
      {
        return result;
      }

      v13 = **(a3 + 2);
      goto LABEL_25;
    }

LABEL_24:
    v13 = a3[8];
LABEL_25:
    v24[2] = v13;
LABEL_26:
    v6 = 8;
    goto LABEL_38;
  }

  if (v22 <= 0x14u)
  {
    if (v22 != 19)
    {
      v24[2] = a3[8];
      if (v24[2] >= 0xFDuLL)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 136, "ByteStream_NumReadBytesAvail(bs) >= (command->u.attribute.numAttrs*2)");
      }

      __memmove_chk();
      v8 = 2 * a3[8];
      goto LABEL_31;
    }

LABEL_30:
    v24[2] = a3[8];
    __memmove_chk();
    v8 = a3[8];
LABEL_31:
    v6 = v8 + 8;
    goto LABEL_38;
  }

  if (v22 == 21)
  {
    goto LABEL_30;
  }

  if (v22 != 22)
  {
    return result;
  }

  *&v24[2] = *(a3 + 4);
  __memmove_chk();
  v6 = a3[9] + 9;
LABEL_38:
  *v24 = bswap32(v6 - 7) >> 16;
  if ((v6 - 7) > 0x1F9u)
  {
    LOWORD(v6) = 7;
  }

  LOWORD(v19) = v6;
  return sub_1001A569C(a1, a2, &v17);
}

uint64_t sub_1002043C4(uint64_t a1, unsigned __int8 *a2)
{
  if (a1 && a2)
  {
    memset(v3, 0, sizeof(v3));
    LOWORD(v3[0]) = 272;
    BYTE8(v3[0]) = 3;
    return sub_10020401C(a1, a2, v3);
  }

  else
  {
    sub_1000D660C();
    return 101;
  }
}

uint64_t sub_100204414(uint64_t a1, unsigned __int8 *a2, char a3)
{
  if (a1 && a2)
  {
    memset(v4, 0, sizeof(v4));
    LOWORD(v4[0]) = 817;
    BYTE8(v4[0]) = a3;
    return sub_10020401C(a1, a2, v4);
  }

  else
  {
    sub_1000D660C();
    return 101;
  }
}

uint64_t sub_100204460(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (*(*(qword_100BC9C18 + 8) + 8))
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1000D660C();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  sub_1000D660C();
LABEL_3:
  v6 = *(a3 + 1);
  if (!v6)
  {
    sub_1000D660C();
    goto LABEL_18;
  }

  v7 = *(a3 + 8);
  if (!*(a3 + 8))
  {
LABEL_18:
    v9 = 0;
    goto LABEL_24;
  }

  v8 = *a3;
  if (v7 <= 2)
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
    goto LABEL_20;
  }

  if (v7 == 3)
  {
LABEL_20:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
    v9 = 0;
LABEL_21:
    if (v8 == 10)
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
      v12 = 0;
LABEL_23:
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
      goto LABEL_25;
    }

LABEL_24:
    v12 = 0;
    goto LABEL_25;
  }

  v9 = v6[3];
  if (v7 <= 4)
  {
    goto LABEL_21;
  }

  HIDWORD(v11) = *v6;
  LODWORD(v11) = bswap32(*(v6 + 1));
  v10 = v11 >> 16;
  v12 = v6[4];
  if (v8 != 10)
  {
    v14 = 0;
    goto LABEL_33;
  }

  if (v7 <= 6)
  {
    goto LABEL_23;
  }

  if (v7 == 7)
  {
    goto LABEL_25;
  }

  v13 = v6[7];
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      if (v10 == 6488)
      {
        v14 = 3307;
        goto LABEL_26;
      }
    }

    else if (v13 == 3)
    {
      if (v10 == 6488)
      {
        v14 = 3308;
        goto LABEL_26;
      }
    }

    else if (v10 == 6488)
    {
      v14 = 3302;
      goto LABEL_26;
    }

LABEL_25:
    v14 = 134;
    goto LABEL_26;
  }

  if (v13)
  {
    if (v10 == 6488)
    {
      v14 = 3306;
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v14 = 3305;
LABEL_33:
  if (v10 != 6488)
  {
    goto LABEL_25;
  }

LABEL_26:
  if (*a3 == 8)
  {
    v15 = 3301;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(*(qword_100BC9C18 + 8) + 8);

  return v16(a1, a2, a3, v9, v12, v15);
}

uint64_t sub_100204684(uint64_t a1, int a2, uint64_t a3, _BYTE *a4)
{
  if (!a1 || !a3 || (v5 = a4) == 0)
  {
    sub_1000D660C();
    return 101;
  }

  a4[512] = 0;
  v6 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    return 134;
  }

  v7 = *(a1 + 8);
  if (!v7)
  {
    return 134;
  }

  if (v6 <= 3)
  {
    goto LABEL_12;
  }

  if (v6 == 4)
  {
    return 134;
  }

  if (*(v7 + 4))
  {
    return 411;
  }

  v100 = *(a1 + 8);
  v101 = a4 + 512;
  if (v6 <= 6)
  {
    v9 = 5;
  }

  else
  {
    v9 = 7;
  }

  result = 102;
  if (a2 <= 20)
  {
    if (a2 <= 17)
    {
      if (a2 != 16)
      {
        if (a2 != 17)
        {
          return result;
        }

        *(a3 + 16) = a4;
        if (v6 <= 6)
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
          v5 = *(a3 + 16);
        }

        else if (v6 != 7)
        {
          v10 = 0;
          v12 = *(v100 + 7);
          *(a3 + 8) = v12;
          v13 = &a4[v12];
          v14 = v6 - 8;
          v9 = 8;
          goto LABEL_91;
        }

        v13 = &v5[*(a3 + 8)];
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
        v14 = 0;
        LODWORD(v12) = *(a3 + 8);
        v10 = 1;
LABEL_91:
        if (v14 >= v12)
        {
          if (v5 < v13)
          {
            v46 = (v100 + v9);
            v47 = v13 - v5;
            do
            {
              v48 = *v46++;
              *v5++ = v48;
              --v47;
            }

            while (v47);
          }

          goto LABEL_156;
        }

        return 134;
      }

      if (v6 <= 6)
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
      }

      else if (v6 != 7)
      {
        v20 = *(v7 + 7);
        *(a3 + 8) = v20;
        if (v6 >= 9)
        {
          v10 = 0;
          *(a3 + 9) = *(v7 + 8);
          LODWORD(v9) = 9;
          v21 = 1;
LABEL_106:
          if (v20 != 3)
          {
            if (v20 == 2)
            {
              *(a3 + 16) = v5;
              v52 = *(a3 + 9);
              if (v52 < 0x81)
              {
                if (!*(a3 + 9))
                {
                  goto LABEL_156;
                }
              }

              else
              {
                *v101 = 1;
                v52 = 128;
              }

              v79 = 0;
              v80 = v6 - 2;
              while (1)
              {
                if (v10)
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
                }

                else if (v80 > v9)
                {
                  v10 = 0;
                  v81 = (v100 + v9);
                  HIDWORD(v82) = *v81;
                  LODWORD(v82) = bswap32(*(v81 + 1));
                  *(*(a3 + 16) + 4 * v79) = v82 >> 16;
                  LOWORD(v9) = v9 + 3;
                  goto LABEL_185;
                }

                v10 = 1;
LABEL_185:
                if (v52 == ++v79)
                {
                  goto LABEL_156;
                }
              }
            }

            return 101;
          }

          *(a3 + 16) = v5;
          v72 = *(a3 + 9);
          v73 = v10;
          if (v21)
          {
            v74 = v6 - v9;
          }

          else
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
            v74 = 0;
          }

          if (v74 >= *(a3 + 9))
          {
            if (v72)
            {
              v83 = (v100 + v9);
              v84 = &v5[v72];
              do
              {
                v85 = *v83++;
                *v5++ = v85;
              }

              while (v5 < v84);
            }

            v10 = v73;
            goto LABEL_156;
          }

          return 134;
        }

        v21 = 0;
        LODWORD(v9) = 8;
LABEL_105:
        v10 = 1;
        goto LABEL_106;
      }

      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
      v21 = 0;
      v20 = *(a3 + 8);
      goto LABEL_105;
    }

    if (a2 != 18)
    {
      if (a2 != 19)
      {
        return result;
      }

      *(a3 + 16) = a4;
      if (v6 <= 6)
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
        v5 = *(a3 + 16);
      }

      else if (v6 != 7)
      {
        v10 = 0;
        v16 = *(v100 + 7);
        *(a3 + 8) = v16;
        v17 = &a4[2 * v16];
        v18 = v6 - 8;
        v9 = 8;
        goto LABEL_98;
      }

      v17 = &v5[2 * *(a3 + 8)];
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
      v18 = 0;
      LODWORD(v16) = *(a3 + 8);
      v10 = 1;
LABEL_98:
      if (v18 >= 2 * v16)
      {
        if (v5 < v17)
        {
          v49 = (v100 + v9);
          v50 = v17 - v5;
          do
          {
            v51 = *v49++;
            *v5++ = v51;
            --v50;
          }

          while (v50);
        }

        goto LABEL_156;
      }

      return 134;
    }

    *(a3 + 16) = a4;
    if (v6 <= 6)
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
      v5 = *(a3 + 16);
    }

    else if (v6 != 7)
    {
      v10 = 0;
      v22 = *(v7 + 7);
      *(a3 + 8) = v22;
      v23 = &a4[v22];
      v24 = v6 - 8;
      v9 = 8;
      goto LABEL_112;
    }

    v23 = &v5[*(a3 + 8)];
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
    v24 = 0;
    LODWORD(v22) = *(a3 + 8);
    v10 = 1;
LABEL_112:
    if (v24 >= v22)
    {
      if (v5 < v23)
      {
        v53 = (v100 + v9);
        v54 = v23 - v5;
        do
        {
          v55 = *v53++;
          *v5++ = v55;
          --v54;
        }

        while (v54);
      }

      goto LABEL_156;
    }

    return 134;
  }

  if (a2 > 47)
  {
    if (a2 == 48)
    {
      if (v6 <= 6)
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
      }

      else if (v6 > 0xA)
      {
        *(a3 + 8) = bswap32(*(v7 + 7));
        if (v6 > 0xE)
        {
          *(a3 + 12) = bswap32(*(v7 + 11));
          if (v6 != 15)
          {
            *(a3 + 16) = *(v7 + 15);
            return 0;
          }

          return 134;
        }

        goto LABEL_12;
      }

      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
LABEL_12:
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
      return 134;
    }

    if (a2 != 49)
    {
      if (a2 == 80)
      {
        if (v6 <= 6)
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
        }

        else if (v6 != 7)
        {
          v10 = 0;
          v15 = *(v100 + 7) & 0x7F;
          goto LABEL_155;
        }

        v15 = 0;
        v10 = 1;
LABEL_155:
        *(a3 + 8) = v15;
        goto LABEL_156;
      }

      return result;
    }

    *(a3 + 8) = a4;
    if (v6 <= 6)
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
      v44 = 0;
      v45 = 5;
    }

    else
    {
      if (v6 != 7)
      {
        v10 = 0;
        *a4 = *(v7 + 7);
        v45 = 8;
        v44 = 1;
LABEL_159:
        v75 = *(a3 + 8);
        v76 = *v75;
        result = 101;
        if (v76 <= 5)
        {
          if (*v75 > 2u)
          {
            if (v76 - 3 < 2)
            {
              goto LABEL_156;
            }

            if (v76 != 5)
            {
              return result;
            }

            if (v44)
            {
              if ((v6 - v45) >= 4)
              {
                *(v75 + 2) = bswap32(*(v100 + v45));
                return 0;
              }

              return 134;
            }

            goto LABEL_12;
          }

          if (v76 != 1)
          {
            if (v76 != 2)
            {
              return result;
            }

            if (v44)
            {
              if ((v6 - v45) >= 8)
              {
                v77 = 0;
                v78 = v75 + 8;
                do
                {
                  v78[v77] = *(v100 + v45 + v77);
                  ++v77;
                }

                while (v77 != 8);
                goto LABEL_156;
              }

              return 134;
            }

            goto LABEL_12;
          }

          if ((v44 & 1) == 0)
          {
            goto LABEL_12;
          }

LABEL_204:
          if (v6 > v45)
          {
            v75[8] = *(v100 + v45);
            return 0;
          }

          return 134;
        }

        if (*v75 <= 0xCu)
        {
          if (v76 - 6 < 2)
          {
            if ((v44 & 1) == 0)
            {
              goto LABEL_12;
            }

            goto LABEL_204;
          }

          if (v76 != 8)
          {
            return result;
          }

          *(v75 + 1) = v5 + 24;
          if (v44)
          {
            if (v6 > v45)
            {
              v10 = 0;
              v86 = *(v100 + v45++);
              *(*(a3 + 8) + 16) = v86;
              v87 = *(a3 + 8);
              v88 = *(v87 + 8);
              v89 = *(v87 + 16);
              v90 = 2 * *(v87 + 16);
              if (v89 <= 0xF4)
              {
                v91 = 2 * v89;
              }

              else
              {
                v91 = 488;
              }

              v92 = &v88[v91];
              v93 = (v6 - v45);
              goto LABEL_218;
            }
          }

          else
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
          }

          v95 = *(a3 + 8);
          v88 = *(v95 + 8);
          v96 = *(v95 + 16);
          if (v96 <= 0xF4)
          {
            v91 = 2 * v96;
          }

          else
          {
            v91 = 488;
          }

          v92 = &v88[v91];
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
          v93 = 0;
          v89 = *(*(a3 + 8) + 16);
          v90 = 2 * *(*(a3 + 8) + 16);
          v10 = 1;
LABEL_218:
          if (v89 > 0xF4)
          {
            v90 = 488;
          }

          if (v93 >= v90)
          {
            if (v91)
            {
              v97 = (v100 + v45);
              do
              {
                v98 = *v97++;
                *v88++ = v98;
              }

              while (v88 < v92);
            }

            goto LABEL_156;
          }

          return 134;
        }

        if (v76 != 13)
        {
          if (v76 == 113)
          {
            goto LABEL_156;
          }

          return result;
        }

        if (v44)
        {
          if (v6 > v45)
          {
            v10 = 0;
            v94 = *(v100 + v45) & 0x7F;
LABEL_227:
            v75[8] = v94;
            goto LABEL_156;
          }

          v94 = 0;
        }

        else
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
          v94 = 0;
          v75 = *(a3 + 8);
        }

        v10 = 1;
        goto LABEL_227;
      }

      v44 = 0;
      v45 = 7;
    }

    v10 = 1;
    goto LABEL_159;
  }

  if ((a2 - 21) < 2)
  {
    *(a3 + 16) = a4;
    if (v6 <= 6)
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
    }

    else if (v6 != 7)
    {
      v10 = 0;
      v11 = *(v7 + 7);
      *(a3 + 8) = v11;
      v9 = 8;
      goto LABEL_54;
    }

    v11 = *(a3 + 8);
    v10 = 1;
LABEL_54:
    if (v11)
    {
      v25 = 0;
      v26 = "/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c";
      v27 = v101;
      while (!v10)
      {
        if (v6 <= v9)
        {
          goto LABEL_62;
        }

        v28 = v9 + 1;
        *(*(a3 + 16) + 24 * v25) = *(v100 + v9);
        if ((v6 - 1) <= (v9 + 1))
        {
          goto LABEL_63;
        }

        *(*(a3 + 16) + 24 * v25 + 2) = bswap32(*(v100 + v28)) >> 16;
        v29 = v9 + 3;
        if (v6 <= (v9 + 3))
        {
          v31 = 0;
          v30 = 0;
          v10 = 1;
          v9 = (v9 + 3);
        }

        else
        {
          v10 = 0;
          v9 = (v9 + 4);
          v30 = *(v100 + v29);
          v31 = 1;
        }

LABEL_64:
        v32 = v26;
        *(*(a3 + 16) + 24 * v25 + 16) = v30;
        v5 += 24;
        v33 = *(a3 + 16);
        v27 -= *(v33 + 24 * v25 + 16);
        if (v27 < v5)
        {
          *v101 = 1;
          *(*(a3 + 16) + 24 * v25 + 16) += v27 - v5;
          v33 = *(a3 + 16);
        }

        *(v33 + 24 * v25 + 8) = v27;
        v34 = *(a3 + 16);
        v35 = v34 + 24 * v25;
        v36 = *(v35 + 8);
        v37 = *(v35 + 16);
        if (v31)
        {
          v38 = v6 - v9;
        }

        else
        {
          v39 = v10;
          sub_100303A8C(v32);
          v10 = v39;
          v38 = 0;
          v34 = *(a3 + 16);
        }

        v40 = *(v34 + 24 * v25 + 16);
        if (v38 >= v40)
        {
          if (v37 >= 1)
          {
            v41 = (v100 + v9);
            v42 = &v36[v37];
            do
            {
              v43 = *v41++;
              *v36++ = v43;
            }

            while (v36 < v42);
            v40 = *(*(a3 + 16) + 24 * v25 + 16);
          }

          v9 = (v9 + v40);
        }

        else
        {
          v10 = 1;
        }

        v26 = v32;
        if (*v101 == 1)
        {
          v15 = v25 + 1;
          goto LABEL_155;
        }

        if (++v25 >= *(a3 + 8))
        {
          goto LABEL_156;
        }
      }

      sub_100303A8C(v26);
LABEL_62:
      sub_100303A8C(v26);
      v28 = v9;
LABEL_63:
      sub_100303A8C(v26);
      v31 = 0;
      v30 = 0;
      v10 = 1;
      v9 = v28;
      goto LABEL_64;
    }

LABEL_156:
    if (!v10)
    {
      return 0;
    }

    return 134;
  }

  if (a2 == 32)
  {
    *(a3 + 16) = a4;
    if (v6 <= 6)
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
    }

    else if (v6 != 7)
    {
      v10 = 0;
      v19 = *(v100 + 7);
      *(a3 + 8) = v19;
      v9 = 8;
LABEL_126:
      if (!v19)
      {
        goto LABEL_156;
      }

      v56 = 0;
      v99 = v6 - 1;
      v57 = v101;
      while (!v10)
      {
        if ((v6 - 3) <= v9)
        {
          goto LABEL_134;
        }

        *(*(a3 + 16) + 24 * v56) = bswap32(*(v100 + v9));
        v58 = (v9 + 4);
        if (v99 <= (v9 + 4))
        {
          goto LABEL_135;
        }

        *(*(a3 + 16) + 24 * v56 + 4) = bswap32(*(v100 + (v9 + 4))) >> 16;
        if (v99 <= (v9 + 6))
        {
          v60 = 0;
          v59 = 0;
          v10 = 1;
          v9 = (v9 + 6);
        }

        else
        {
          v10 = 0;
          v59 = __rev16(*(v100 + (v9 + 6)));
          v9 = (v9 + 8);
          v60 = 1;
        }

LABEL_136:
        *(*(a3 + 16) + 24 * v56 + 16) = v59;
        v5 += 24;
        v61 = *(a3 + 16);
        v57 -= *(v61 + 24 * v56 + 16);
        if (v57 < v5)
        {
          *v101 = 1;
          *(*(a3 + 16) + 24 * v56 + 16) += v57 - v5;
          v61 = *(a3 + 16);
        }

        *(v61 + 24 * v56 + 8) = v57;
        v62 = *(a3 + 16);
        v63 = v62 + 24 * v56;
        v64 = *(v63 + 8);
        v65 = *(v63 + 16);
        if (v60)
        {
          v66 = v6 - v9;
        }

        else
        {
          v67 = v10;
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
          v10 = v67;
          v66 = 0;
          v62 = *(a3 + 16);
        }

        v68 = *(v62 + 24 * v56 + 16);
        if (v66 >= v68)
        {
          if (v65 >= 1)
          {
            v69 = (v100 + v9);
            v70 = &v64[v65];
            do
            {
              v71 = *v69++;
              *v64++ = v71;
            }

            while (v64 < v70);
            v68 = *(*(a3 + 16) + 24 * v56 + 16);
          }

          v9 = (v9 + v68);
        }

        else
        {
          v10 = 1;
        }

        if (*v101 == 1)
        {
          v15 = v56 + 1;
          goto LABEL_155;
        }

        if (++v56 >= *(a3 + 8))
        {
          goto LABEL_156;
        }
      }

      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
LABEL_134:
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
      v58 = v9;
LABEL_135:
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
      v60 = 0;
      v59 = 0;
      v10 = 1;
      v9 = v58;
      goto LABEL_136;
    }

    v19 = *(a3 + 8);
    v10 = 1;
    goto LABEL_126;
  }

  return result;
}

uint64_t sub_100205418(uint64_t a1, unsigned int a2, char a3, int a4)
{
  if (!a1)
  {
    sub_1000D660C();
    return 101;
  }

  v18 = 0;
  v19 = 5773568;
  if (a4 == 3301)
  {
    v4 = 8;
  }

  else
  {
    v4 = 10;
  }

  if (!a4)
  {
    v4 = 9;
  }

  v17[1] = &v19;
  v17[0] = v4;
  *(v17 + 1) = 9;
  BYTE3(v17[0]) = 0;
  BYTE3(v19) = a3;
  if (a4 > 3304)
  {
    switch(a4)
    {
      case 3305:
        v5 = 0;
        goto LABEL_19;
      case 3307:
        v5 = 2;
        goto LABEL_19;
      case 3306:
        v5 = 1;
LABEL_19:
        *(&v19 + 5) = 256;
        HIBYTE(v19) = v5;
        v7 = 8;
        goto LABEL_20;
    }

LABEL_18:
    v5 = 3;
    goto LABEL_19;
  }

  if (a4 && a4 != 3301)
  {
    goto LABEL_18;
  }

  *(&v19 + 5) = 0;
  v7 = 7;
LABEL_20:
  LOWORD(v18) = v7;
  v6 = sub_100208F8C(a1, a2, v17);
  if (v6)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send Simple Meta Response %!", v8, v9, v10, v11, v12, v13, v14, v6);
      v15 = sub_10000C050(4u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  return v6;
}

uint64_t sub_100205578(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a1 && a4 && a3)
  {
    v6 = 2;
    v5 = 16;
    BYTE1(v6) = a3;
    v7 = a4;
    return sub_1002055D4(a1, a2, 12, &v5);
  }

  else
  {
    sub_1000D660C();
    return 101;
  }
}

uint64_t sub_1002055D4(uint64_t a1, unsigned int a2, char a3, unint64_t a4)
{
  v93 = 0;
  v94 = 0;
  v95 = 0;
  memset(v96, 0, sizeof(v96));
  if (!qword_100BC9C18 || (v4 = *(qword_100BC9C18 + 24)) == 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to Send Response, AVRCP is not registered!", v20, v21, v22, v23, v24, v25, v26, v89);
      v27 = sub_10000C050(4u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 3308;
  }

  LOBYTE(v93) = a3;
  *(&v93 + 1) = 9;
  BYTE3(v93) = 0;
  v94 = v96;
  LOWORD(v95) = *(v4 + 20);
  v5 = v95;
  if (!v95)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1191, "((*operandCount)) > 0");
  }

  if (v95 <= 2u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1193, "ByteStream_NumReadBytesAvail(bs) >= 3");
  }

  BYTE2(v96[0]) = 88;
  LOWORD(v96[0]) = 6400;
  if (v95 == 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1194, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  v6 = a4;
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = *a4;
  BYTE3(v96[0]) = *a4;
  if (v95 <= 6u)
  {
    v11 = 4;
  }

  else
  {
    v11 = 7;
  }

  v12 = 3301;
  if (v10 <= 22)
  {
    if (v10 <= 18)
    {
      if (v10 != 16)
      {
        if (v10 == 17)
        {
          if (v95 <= 6u)
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
          }

          else if (v95 != 7)
          {
            BYTE7(v96[0]) = *(a4 + 8);
            v43 = BYTE7(v96[0]);
            v44 = v95 - 8;
            if ((v95 - 8) >= BYTE7(v96[0]))
            {
              v45 = BYTE7(v96[0]);
            }

            else
            {
              v45 = (v95 - 8);
            }

            if (v44 < v45)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1249, "ByteStream_NumReadBytesAvail(bs) >= (count)");
            }

            __memmove_chk();
            v18 = v45 + 8;
            if (v43 <= v44)
            {
              v28 = 0;
              goto LABEL_160;
            }

            v19 = sub_100207FB4(v8, v45, 0xFFFF, v6[8], *v6, *(v6 + 2) + v45, 0);
            if (!v19)
            {
LABEL_65:
              v28 = 3304;
              goto LABEL_160;
            }

            goto LABEL_157;
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1243, "ByteStream_NumReadBytesAvail(bs) >= 1");
        }

        if (v10 != 18)
        {
          goto LABEL_173;
        }

        if (v95 <= 6u)
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
        }

        else if (v95 != 7)
        {
          v13 = v11;
          BYTE7(v96[0]) = *(a4 + 8);
          v14 = BYTE7(v96[0]);
          v15 = v95 - 8;
          if ((v95 - 8) >= BYTE7(v96[0]))
          {
            v16 = BYTE7(v96[0]);
          }

          else
          {
            v16 = (v95 - 8);
          }

          if (v15 < BYTE7(v96[0]))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1273, "ByteStream_NumReadBytesAvail(bs) >= (response->u.playerAttributes.numAttrs)");
          }

          __memmove_chk();
          v17 = v6[8];
          v18 = v17 + 8;
          if (v14 > v15)
          {
            v19 = sub_100207FB4(v8, v16, 0xFFFF, v17, *v6, *(v6 + 2) + v16, 0);
            if (!v19)
            {
              v11 = v13;
              goto LABEL_65;
            }

            goto LABEL_157;
          }

          goto LABEL_158;
        }

        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1267, "ByteStream_NumReadBytesAvail(bs) >= 1");
      }

      if (v95 <= 6u)
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
      }

      else if (v95 != 7)
      {
        v31 = *(a4 + 8);
        BYTE7(v96[0]) = *(a4 + 8);
        if (v95 <= 8u)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1201, "ByteStream_NumReadBytesAvail(bs) >= 1");
        }

        v32 = *(a4 + 9);
        BYTE8(v96[0]) = *(a4 + 9);
        v33 = v95 - 9;
        if (v31 == 3)
        {
          v13 = v11;
          if ((v95 - 9) >= v32)
          {
            v34 = v32;
          }

          else
          {
            v34 = (v95 - 9);
          }

          if (v33 < v34)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1219, "ByteStream_NumReadBytesAvail(bs) >= (count)");
          }

          __memmove_chk();
          v18 = v34 + 9;
          if (v32 > v33)
          {
            v67 = v6[8];
            LOWORD(v32) = v6[9];
            v68 = 1;
            v69 = *v6;
            goto LABEL_156;
          }
        }

        else
        {
          if (v31 != 2)
          {
            return 101;
          }

          v13 = v11;
          v34 = (v95 - 9) / 3u;
          if (3 * v32 <= v33)
          {
            v35 = v32;
          }

          else
          {
            v35 = (v95 - 9) / 3u;
          }

          if (v35)
          {
            v36 = 0;
            v37 = 4 * v35;
            v18 = 9;
            v38 = (v95 - 2);
            while (v38 > v18)
            {
              v39 = *(a4 + 16);
              v40 = *(v39 + v36);
              if (HIBYTE(v40))
              {
                v88 = "0 == ((response->u.getCapabilities.capabilities.companyID[i]) & 0xFF000000)";
                goto LABEL_206;
              }

              v41 = v96 + v18;
              v41[2] = v40;
              v42 = v39 + v36;
              v41[1] = BYTE1(*v42);
              *v41 = *(v42 + 2);
              v18 += 3;
              v36 += 4;
              if (v37 == v36)
              {
                goto LABEL_154;
              }
            }

            v88 = "ByteStream_NumReadBytesAvail(bs) >= 3";
LABEL_206:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1211, v88);
          }

          v18 = 9;
LABEL_154:
          if (3 * v32 > v33)
          {
            v67 = 2;
            v69 = 16;
            v68 = 4;
LABEL_156:
            v19 = sub_100207FB4(v8, v34, v67, v32, v69, *(v6 + 2) + v68 * v34, 0);
            if (!v19)
            {
              v28 = 3304;
              goto LABEL_159;
            }

LABEL_157:
            v12 = v19;
LABEL_174:
            if (v12 == 3304 || v12 == 0)
            {
              v85 = sub_100208F8C(v8, v7, &v93);
              if (v85)
              {
                v86 = 0;
              }

              else
              {
                v86 = v12 == 3304;
              }

              if (v86)
              {
                return 3304;
              }

              else
              {
                return v85;
              }
            }

            return v12;
          }
        }

LABEL_158:
        v28 = 0;
LABEL_159:
        v11 = v13;
        goto LABEL_160;
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1200, "ByteStream_NumReadBytesAvail(bs) >= 1");
    }

    if ((v10 - 21) >= 2)
    {
      if (v10 != 19)
      {
        v18 = v11;
        v28 = 0;
        if (v10 == 20)
        {
          goto LABEL_160;
        }

        goto LABEL_173;
      }

      if (v95 <= 6u)
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
      }

      else if (v95 != 7)
      {
        v91 = v11;
        BYTE7(v96[0]) = *(a4 + 8);
        v47 = BYTE7(v96[0]);
        v48 = 2 * BYTE7(v96[0]);
        v49 = (v95 - 8) >> 1;
        if (v48 > (v95 - 8))
        {
          v47 = (v95 - 8) >> 1;
        }

        if (v95 - 8 < 2 * v47)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1298, "ByteStream_NumReadBytesAvail(bs) >= (count*dataElSize)");
        }

        v50 = (2 * v47);
        __memmove_chk();
        v18 = v50 + 8;
        if (v48 > (v95 - 8))
        {
          v51 = v6[8];
          v52 = *v6;
          v53 = *(v6 + 2);
          goto LABEL_95;
        }

        goto LABEL_127;
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1291, "ByteStream_NumReadBytesAvail(bs) >= 1");
    }

    if (v95 <= 6u)
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
    }

    else if (v95 != 7)
    {
      BYTE7(v96[0]) = *(a4 + 8);
      LOWORD(a4) = BYTE7(v96[0]);
      if (BYTE7(v96[0]))
      {
        v91 = v11;
        if ((v95 & 0xFFFC) == 8)
        {
          v29 = 0;
          v30 = 8;
          goto LABEL_141;
        }

        v92 = a1;
        v90 = a2;
        v54 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 8;
        while (1)
        {
          if (v5 <= v30)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1341, "ByteStream_NumReadBytesAvail(bs) >= 1");
          }

          v55 = *(v6 + 2);
          v56 = v55 + v54;
          *(v96 + v30) = *(v55 + v54);
          if ((v5 - 1) <= (v30 + 1))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1342, "ByteStream_NumReadBytesAvail(bs) >= 2");
          }

          v57 = v96 + v30 + 1;
          v57[1] = *(v56 + 2);
          *v57 = *(v56 + 3);
          v58 = v30 + 3;
          if (v5 <= v58)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1343, "ByteStream_NumReadBytesAvail(bs) >= 1");
          }

          v59 = v55 + v54;
          v60 = v30 + 4;
          *(v96 + v58) = *(v59 + 16);
          v61 = v5 - (v30 + 4);
          v62 = *(v59 + 16);
          if (v62 <= (v5 - v60))
          {
            v61 = *(v59 + 16);
          }

          else
          {
            v62 = v61;
            v63 = sub_100207FB4(v92, v29, v61, a4, *v6, v56, *(v59 + 8) + v61);
            if (v63)
            {
              goto LABEL_187;
            }

            v28 = 3304;
          }

          if ((v5 - v60) < v62)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1364, "ByteStream_NumReadBytesAvail(bs) >= (count)");
          }

          memmove(v96 + v60, *(*(v6 + 2) + v54 + 8), v61);
          v30 = v61 + v60;
          if (v28 == 3304)
          {
            break;
          }

          ++v29;
          a4 = v6[8];
          if (v29 >= a4)
          {
            break;
          }

          v54 += 24;
          if ((v5 - v30) <= 3u)
          {
            goto LABEL_140;
          }
        }

LABEL_144:
        v18 = v30;
        v7 = v90;
        v11 = v91;
        v8 = v92;
        goto LABEL_160;
      }

      goto LABEL_87;
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1317, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  if (v10 <= 47)
  {
    if ((v10 - 23) < 2)
    {
      v18 = v11;
      v28 = 0;
      goto LABEL_160;
    }

    if (v10 != 32)
    {
      goto LABEL_173;
    }

    if (v95 <= 6u)
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
    }

    else if (v95 != 7)
    {
      BYTE7(v96[0]) = *(a4 + 8);
      LOWORD(a4) = BYTE7(v96[0]);
      if (BYTE7(v96[0]))
      {
        v91 = v11;
        if ((v95 & 0xFFF8) == 8)
        {
          v29 = 0;
          v30 = 8;
          LOBYTE(v10) = 32;
          goto LABEL_141;
        }

        v92 = a1;
        v90 = a2;
        v70 = 0;
        v28 = 0;
        v29 = 0;
        v71 = v95 - 1;
        v30 = 8;
        v72 = (v95 - 3);
        do
        {
          if (v72 <= v30)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1409, "ByteStream_NumReadBytesAvail(bs) >= 4");
          }

          v73 = *(v6 + 2);
          v74 = v73 + v70;
          v75 = v96 + v30;
          v75[3] = *(v73 + v70);
          v75[2] = BYTE1(*(v73 + v70));
          v75[1] = *(v73 + v70 + 2);
          *v75 = *(v73 + v70 + 3);
          if (v71 <= (v30 + 4))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1410, "ByteStream_NumReadBytesAvail(bs) >= 2");
          }

          v76 = v96 + (v30 + 4);
          v76[1] = *(v74 + 4);
          *v76 = *(v74 + 5);
          if (v71 <= (v30 + 6))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1411, "ByteStream_NumReadBytesAvail(bs) >= 2");
          }

          v77 = v73 + v70;
          v78 = v96 + (v30 + 6);
          v78[1] = *(v77 + 16);
          *v78 = BYTE1(*(v77 + 16));
          v79 = v30 + 8;
          v80 = v5 - (v30 + 8);
          v81 = *(v77 + 16);
          if (v81 <= (v5 - v79))
          {
            v80 = *(v77 + 16);
          }

          else
          {
            v81 = v80;
            v63 = sub_100207FB4(v92, v29, v80, a4, *v6, v74, *(v77 + 8) + v80);
            if (v63)
            {
LABEL_187:
              v12 = v63;
              v7 = v90;
              v8 = v92;
              goto LABEL_174;
            }

            v28 = 3304;
          }

          if ((v5 - v79) < v81)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1432, "ByteStream_NumReadBytesAvail(bs) >= (count)");
          }

          memmove(v96 + v79, *(*(v6 + 2) + v70 + 8), v80);
          v30 = v80 + v79;
          if (v28 == 3304)
          {
            goto LABEL_144;
          }

          ++v29;
          a4 = v6[8];
          if (v29 >= a4)
          {
            goto LABEL_144;
          }

          v70 += 24;
        }

        while ((v5 - v30) > 7u);
LABEL_140:
        LOBYTE(v10) = *v6;
        v7 = v90;
        v8 = v92;
LABEL_141:
        v19 = sub_100207FB4(v8, v29, 0xFFFF, a4, v10, *(v6 + 2) + 24 * v29, *(*(v6 + 2) + 24 * v29 + 8));
        if (!v19)
        {
          v28 = 3304;
          v18 = v30;
LABEL_143:
          v11 = v91;
LABEL_160:
          v82 = v11 - 3;
          if (v11 - 3 > v5)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1521, "(size_t)(pos - 3) <= (size_t)((bs).__size)");
          }

          if (v28 == 3304)
          {
            if (v5 <= 6)
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
            }

            else if (v82 < v5)
            {
              v83 = 1;
              goto LABEL_168;
            }

            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1524, "ByteStream_NumReadBytesAvail(bs) >= 1");
          }

          if (v5 <= 6)
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
          }

          else if (v82 < v5)
          {
            v83 = 0;
LABEL_168:
            *(v96 + v82) = v83;
            if ((v5 - (v11 - 2)) <= 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1529, "ByteStream_NumReadBytesAvail(bs) >= 2");
            }

            *(v96 + (v11 - 3) + 1) = bswap32(v18 - v11) >> 16;
            if ((v5 - v11) >= (v18 - v11))
            {
              v9 = v18;
            }

            else
            {
              v9 = 7;
            }

            v12 = v28;
LABEL_173:
            LOWORD(v95) = v9;
            goto LABEL_174;
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1526, "ByteStream_NumReadBytesAvail(bs) >= 1");
        }

        goto LABEL_157;
      }

LABEL_87:
      v28 = 0;
      v18 = 8;
      goto LABEL_160;
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1386, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  if (v10 == 48)
  {
    if (v95 <= 6u)
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
    }

    else if (v95 > 0xAu)
    {
      *(v96 + 7) = bswap32(*(a4 + 8));
      if (v95 <= 0xEu)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1381, "ByteStream_NumReadBytesAvail(bs) >= 4");
      }

      *(v96 + 11) = bswap32(*(a4 + 12));
      if (v95 == 15)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1382, "ByteStream_NumReadBytesAvail(bs) >= 1");
      }

      v28 = 0;
      HIBYTE(v96[0]) = *(a4 + 16);
      goto LABEL_77;
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1380, "ByteStream_NumReadBytesAvail(bs) >= 4");
  }

  if (v10 != 49)
  {
    v18 = v11;
    v28 = 0;
    if (v10 == 65)
    {
      goto LABEL_160;
    }

    goto LABEL_173;
  }

  if (v95 <= 6u)
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
LABEL_235:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1444, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  if (v95 == 7)
  {
    goto LABEL_235;
  }

  v28 = 0;
  v46 = *(a4 + 8);
  BYTE7(v96[0]) = *v46;
  v18 = 8;
  v12 = 101;
  if (BYTE7(v96[0]) <= 7u)
  {
    if (BYTE7(v96[0]) <= 4u)
    {
      if (BYTE7(v96[0]) - 3 < 2)
      {
        goto LABEL_160;
      }

      if (BYTE7(v96[0]) != 1)
      {
        if (BYTE7(v96[0]) != 2)
        {
          return v12;
        }

        if (v95 <= 0xFu)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1456, "ByteStream_NumReadBytesAvail(bs) >= (8)");
        }

        v28 = 0;
        *(&v96[0] + 1) = *(v46 + 8);
LABEL_77:
        v18 = 16;
        goto LABEL_160;
      }

      if (v95 <= 8u)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1447, "ByteStream_NumReadBytesAvail(bs) >= 1");
      }

LABEL_192:
      v28 = 0;
      BYTE8(v96[0]) = *(v46 + 8);
      v18 = 9;
      goto LABEL_160;
    }

    if (BYTE7(v96[0]) - 6 < 2)
    {
      if (v95 <= 8u)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1452, "ByteStream_NumReadBytesAvail(bs) >= 1");
      }

      goto LABEL_192;
    }

    if (BYTE7(v96[0]) != 5)
    {
      return v12;
    }

    if (v95 <= 0xBu)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1460, "ByteStream_NumReadBytesAvail(bs) >= 4");
    }

    v28 = 0;
    BYTE11(v96[0]) = *(v46 + 8);
    BYTE10(v96[0]) = BYTE1(*(v46 + 8));
    BYTE9(v96[0]) = *(v46 + 10);
    BYTE8(v96[0]) = *(v46 + 11);
LABEL_196:
    v18 = 12;
    goto LABEL_160;
  }

  if (BYTE7(v96[0]) > 0xAu)
  {
    switch(BYTE7(v96[0]))
    {
      case 0xBu:
        if (v95 <= 9u)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1497, "ByteStream_NumReadBytesAvail(bs) >= 2");
        }

        BYTE9(v96[0]) = *(v46 + 8);
        BYTE8(v96[0]) = *(v46 + 9);
        if (v95 <= 0xBu)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1498, "ByteStream_NumReadBytesAvail(bs) >= 2");
        }

        v28 = 0;
        BYTE11(v96[0]) = *(v46 + 10);
        BYTE10(v96[0]) = *(v46 + 11);
        goto LABEL_196;
      case 0xCu:
        if (v95 <= 9u)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1502, "ByteStream_NumReadBytesAvail(bs) >= 2");
        }

        v28 = 0;
        BYTE9(v96[0]) = *(v46 + 8);
        BYTE8(v96[0]) = *(v46 + 9);
        v18 = 10;
        goto LABEL_160;
      case 0xDu:
        if (v95 <= 8u)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1506, "ByteStream_NumReadBytesAvail(bs) >= 1");
        }

        goto LABEL_192;
    }
  }

  else
  {
    if (BYTE7(v96[0]) - 9 < 2)
    {
      goto LABEL_160;
    }

    if (BYTE7(v96[0]) == 8)
    {
      if (v95 <= 8u)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1464, "ByteStream_NumReadBytesAvail(bs) >= 1");
      }

      v91 = v11;
      BYTE8(v96[0]) = *(v46 + 16);
      v64 = BYTE8(v96[0]);
      v65 = 2 * BYTE8(v96[0]);
      v49 = (v95 - 9) >> 1;
      if (v65 > (v95 - 9))
      {
        v64 = (v95 - 9) >> 1;
      }

      if (v95 - 9 < 2 * v64)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1471, "ByteStream_NumReadBytesAvail(bs) >= (count * dataElSize)");
      }

      v50 = (2 * v64);
      __memmove_chk();
      v18 = v50 + 9;
      if (v65 > (v95 - 9))
      {
        v66 = *(v6 + 1);
        v51 = *(v66 + 16);
        v52 = *v6;
        v53 = *(v66 + 8);
LABEL_95:
        v19 = sub_100207FB4(v8, v49, 0xFFFF, v51, v52, v53 + v50, 0);
        if (!v19)
        {
          v28 = 3304;
          goto LABEL_143;
        }

        goto LABEL_157;
      }

LABEL_127:
      v28 = 0;
      goto LABEL_143;
    }
  }

  return v12;
}

uint64_t sub_100206658(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (!a1 || !a4)
  {
LABEL_5:
    sub_1000D660C();
    return 101;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      v6 = 3;
      v5 = 16;
      BYTE1(v6) = a3;
      v7 = a4;
      return sub_1002055D4(a1, a2, 12, &v5);
    }

    goto LABEL_5;
  }

  return 101;
}

uint64_t sub_1002066BC(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a1 && a4 && a3)
  {
    v5[0] = 17;
    v5[1] = a3;
    v5[2] = a4;
    return sub_1002055D4(a1, a2, 12, v5);
  }

  else
  {
    sub_1000D660C();
    return 101;
  }
}

uint64_t sub_100206710(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a1 && a5 && a4)
  {
    v6[0] = 18;
    v6[1] = a4;
    v6[2] = a5;
    return sub_1002055D4(a1, a2, 12, v6);
  }

  else
  {
    sub_1000D660C();
    return 101;
  }
}

uint64_t sub_100206764(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a1 && a4 && a3)
  {
    v5[0] = 19;
    v5[1] = a3;
    v5[2] = a4;
    return sub_1002055D4(a1, a2, 12, v5);
  }

  else
  {
    sub_1000D660C();
    return 101;
  }
}

uint64_t sub_1002067B8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a1 && a3)
  {
    v5 = 0;
    v4[0] = 48;
    v4[1] = *a3;
    LOBYTE(v5) = *(a3 + 8);
    return sub_1002055D4(a1, a2, 12, v4);
  }

  else
  {
    sub_1000D660C();
    return 101;
  }
}

uint64_t sub_100206814(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  if (a1 && a3 && a4)
  {
    LOBYTE(v5) = 32;
    LOBYTE(v6) = a3;
    v7 = a4;
    return sub_1002055D4(a1, a2, 12, &v5);
  }

  else
  {
    sub_1000D660C();
    return 101;
  }
}

uint64_t sub_100206868(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v5 = 13;
  }

  else
  {
    v5 = 15;
  }

  if (a1 && a3)
  {
    v7[1] = a3;
    v7[2] = 0;
    v7[0] = 49;
    return sub_1002055D4(a1, a2, v5, v7);
  }

  else
  {
    sub_1000D660C();
    return 101;
  }
}

uint64_t sub_1002068C4(uint64_t a1, unsigned int a2, int a3, unint64_t *a4)
{
  v8 = sub_1002030D8(a1, 0);
  if (!a1 || !a4)
  {
    sub_1000D660C();
    return 101;
  }

  v9 = v8;
  if (!v8)
  {
    return 105;
  }

  memset(v103, 0, sizeof(v103));
  v10 = *(v8 + 24);
  if (!v10)
  {
    return 105;
  }

  v100 = 0;
  v101 = 0;
  v102 = 0;
  if (*a4)
  {
    *v10 = *a4;
  }

  v11 = a4[1];
  if (v11)
  {
    v10[1] = v11;
  }

  LODWORD(v100) = 2316;
  v101 = v103;
  v12 = *(*(qword_100BC9C18 + 24) + 20);
  LOWORD(v102) = *(*(qword_100BC9C18 + 24) + 20);
  v13 = *(v10 + 10);
  v14 = *(v10 + 8);
  v15 = v13 - v14;
  if (v13 < v14)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("AVRCP internal error: total attr count %d less than current attr index %d!", v16, v17, v18, v19, v20, v21, v22, *(*(v9 + 24) + 20));
      v23 = sub_10000C050(4u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 105;
  }

  if (!v12)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1778, "((*operandCount)) > 0");
  }

  if (v12 <= 2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1780, "ByteStream_NumReadBytesAvail(bs) >= 3");
  }

  BYTE2(v103[0]) = 88;
  LOWORD(v103[0]) = 6400;
  if (v12 == 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1781, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  BYTE3(v103[0]) = a3;
  if (v12 <= 6)
  {
    v26 = 4;
  }

  else
  {
    v26 = 7;
  }

  v99 = v26;
  v27 = v12 - v26;
  v24 = 3301;
  if (a3 > 20)
  {
    if ((a3 - 21) < 2)
    {
      v35 = *v10;
      v36 = *(v10 + 9);
      if (v36 == 0xFFFF)
      {
        v46 = v26;
      }

      else
      {
        v94 = *v10;
        v37 = *(v35 + 8) - v36;
        if ((v12 - v26) >= v37)
        {
          v38 = v37;
        }

        else
        {
          v38 = (v12 - v26);
        }

        v39 = v10[1];
        if (v12 <= 6)
        {
          v57 = v10[1];
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
          v39 = v57;
          v40 = 0;
        }

        else
        {
          v40 = v12 - v26;
        }

        if (v40 < v38)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1912, "ByteStream_NumReadBytesAvail(bs) >= (count)");
        }

        memmove((v103 | v99), v39, v38);
        v46 = v38 + v99;
        if (v27 < v37)
        {
          v58 = v10[1] + v38;
          *(v10 + 9) += v27;
          *v10 = v94;
          v10[1] = v58;
          v24 = 3304;
          goto LABEL_147;
        }

        LOWORD(v14) = *(v10 + 8) + 1;
        *(v10 + 8) = v14;
        v35 = v94 + 24;
        v13 = *(v10 + 10);
      }

      if (v13 <= v14)
      {
        sub_1000D660C();
        v13 = *(v10 + 10);
        LOWORD(v14) = *(v10 + 8);
      }

      if (v13 == v14)
      {
        goto LABEL_128;
      }

      if ((v12 - v46) >= 4u)
      {
        if (v12 < 7)
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
LABEL_194:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1951, "ByteStream_NumReadBytesAvail(bs) >= 1");
        }

        v59 = 0;
        v24 = 0;
        v96 = v35;
        while (1)
        {
          if (v12 <= v46)
          {
            goto LABEL_194;
          }

          v61 = &v35[24 * v59];
          *(v103 + v46) = *v61;
          if ((v12 - 1) <= (v46 + 1))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1952, "ByteStream_NumReadBytesAvail(bs) >= 2");
          }

          v62 = v103 + v46 + 1;
          v62[1] = v61[2];
          *v62 = v61[3];
          v63 = v46 + 3;
          if (v12 <= v63)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1953, "ByteStream_NumReadBytesAvail(bs) >= 1");
          }

          v64 = v46 + 4;
          *(v103 + v63) = *(v61 + 4);
          v65 = v12 - (v46 + 4);
          v66 = *(v61 + 4);
          v67 = v27;
          if (v66 <= (v12 - v64))
          {
            v65 = *(v61 + 4);
          }

          else
          {
            v66 = v65;
            v68 = (*(v61 + 1) + v65);
            *(v10 + 8) += v59;
            *(v10 + 9) = v65;
            *v10 = v61;
            v10[1] = v68;
            v24 = 3304;
          }

          v69 = v64;
          if ((v12 - v64) < v66)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1971, "ByteStream_NumReadBytesAvail(bs) >= (count)");
          }

          memmove(v103 + v64, *(v61 + 1), v65);
          v46 = v65 + v69;
          if (v24 == 3304)
          {
            break;
          }

          ++v59;
          v14 = *(v10 + 8);
          v27 = v67;
          if (*(v10 + 10) - v14 <= v59)
          {
            goto LABEL_147;
          }

          v35 = v96;
          if ((v12 - v46) <= 3u)
          {
            goto LABEL_111;
          }
        }

LABEL_165:
        LODWORD(v27) = v67;
        goto LABEL_147;
      }

      v59 = 0;
LABEL_111:
      v70 = &v35[24 * v59];
    }

    else
    {
      if (a3 != 32)
      {
        if (a3 != 49)
        {
          return v24;
        }

LABEL_37:
        v31 = *v10;
        v32 = 2 * (v13 - v14);
        if (v32 <= (v12 - v26))
        {
          v33 = v13 - v14;
        }

        else
        {
          v33 = (v12 - v26) >> 1;
        }

        v98 = v12 - v26;
        v93 = (v12 - v26) >> 1;
        if (v12 <= 6)
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
          v34 = 0;
        }

        else
        {
          v34 = v12 - v26;
        }

        v50 = 2 * v33;
        if (v34 < v50)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1885, "ByteStream_NumReadBytesAvail(bs) >= (count*dataElSize)");
        }

        memmove((v103 | v99), v31, v50);
        v46 = v99 + v50;
        if (v32 <= v98)
        {
          v24 = 0;
        }

        else
        {
          *(v10 + 8) += v93;
          *(v10 + 9) = -1;
          *v10 = &v31[8 * v50];
          v10[1] = 0;
          v24 = 3304;
        }

        LODWORD(v27) = v98;
        goto LABEL_147;
      }

      v51 = *v10;
      v52 = *(v10 + 9);
      if (v52 == 0xFFFF)
      {
        v46 = v26;
      }

      else
      {
        v95 = *v10;
        v53 = *(v51 + 8) - v52;
        if ((v12 - v26) >= v53)
        {
          v54 = (*(v51 + 8) - v52);
        }

        else
        {
          v54 = (v12 - v26);
        }

        v55 = v10[1];
        if (v12 <= 6)
        {
          v73 = v10[1];
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
          v55 = v73;
          v56 = 0;
        }

        else
        {
          v56 = v12 - v26;
        }

        if (v56 < v54)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1993, "ByteStream_NumReadBytesAvail(bs) >= (count)");
        }

        memmove((v103 | v99), v55, v54);
        v46 = v54 + v99;
        if (v27 < v53)
        {
          v74 = v10[1] + v54;
          *(v10 + 9) += v27;
          *v10 = v95;
          v10[1] = v74;
          goto LABEL_146;
        }

        LOWORD(v14) = *(v10 + 8) + 1;
        *(v10 + 8) = v14;
        v51 = v95 + 24;
        v13 = *(v10 + 10);
        v27 = v27;
      }

      if (v13 <= v14)
      {
        sub_1000D660C();
        v13 = *(v10 + 10);
        LOWORD(v14) = *(v10 + 8);
      }

      if (v13 == v14)
      {
LABEL_128:
        v24 = 0;
        goto LABEL_147;
      }

      if ((v12 - v46) >= 8u)
      {
        v97 = v51;
        if (v12 < 7)
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
LABEL_200:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 2032, "ByteStream_NumReadBytesAvail(bs) >= 4");
        }

        v59 = 0;
        v24 = 0;
        v92 = v12 - 1;
        do
        {
          if ((v12 - 3) <= v46)
          {
            goto LABEL_200;
          }

          v75 = &v97[24 * v59];
          v76 = v103 + v46;
          v76[3] = *v75;
          v76[2] = BYTE1(*v75);
          v76[1] = *(v75 + 1);
          *v76 = v75[3];
          if (v92 <= (v46 + 4))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 2033, "ByteStream_NumReadBytesAvail(bs) >= 2");
          }

          v77 = v103 + (v46 + 4);
          v77[1] = v75[4];
          *v77 = v75[5];
          if (v92 <= (v46 + 6))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 2034, "ByteStream_NumReadBytesAvail(bs) >= 2");
          }

          v78 = v103 + (v46 + 6);
          v78[1] = *(v75 + 4);
          *v78 = BYTE1(*(v75 + 4));
          v79 = v46 + 8;
          v80 = v12 - (v46 + 8);
          v81 = *(v75 + 8);
          v67 = v27;
          if (v81 <= (v12 - v79))
          {
            v80 = *(v75 + 8);
          }

          else
          {
            v81 = v80;
            v82 = (*(v75 + 1) + v80);
            *(v10 + 8) += v59;
            *(v10 + 9) = v80;
            *v10 = v75;
            v10[1] = v82;
            v24 = 3304;
          }

          v83 = v79;
          if ((v12 - v79) < v81)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 2052, "ByteStream_NumReadBytesAvail(bs) >= (count)");
          }

          memmove(v103 + v79, *(v75 + 1), v80);
          v46 = v80 + v83;
          if (v24 == 3304)
          {
            goto LABEL_165;
          }

          ++v59;
          v14 = *(v10 + 8);
          v27 = v67;
          if (*(v10 + 10) - v14 <= v59)
          {
            goto LABEL_147;
          }
        }

        while ((v12 - v46) > 7u);
        v51 = v97;
      }

      else
      {
        v59 = 0;
      }

      v70 = &v51[24 * v59];
    }

    v84 = *(v70 + 1);
    *(v10 + 8) = v59 + v14;
    *(v10 + 9) = -1;
    *v10 = v70;
    v10[1] = v84;
    goto LABEL_146;
  }

  if (a3 > 17)
  {
    if (a3 == 18)
    {
      v28 = *v10;
      if ((v13 - v14) >= (v12 - v26))
      {
        v29 = (v12 - v26);
      }

      else
      {
        v29 = (v13 - v14);
      }

      if (v12 <= 6)
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
        v49 = 0;
      }

      else
      {
        v49 = v12 - v26;
      }

      if (v49 < v29)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1861, "ByteStream_NumReadBytesAvail(bs) >= (count)");
      }

      goto LABEL_96;
    }

    if (a3 != 19)
    {
      return v24;
    }

    goto LABEL_37;
  }

  if (a3 != 16)
  {
    if (a3 != 17)
    {
      return v24;
    }

    v28 = *v10;
    if ((v13 - v14) >= (v12 - v26))
    {
      v29 = (v12 - v26);
    }

    else
    {
      v29 = (v13 - v14);
    }

    if (v12 <= 6)
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
      v30 = 0;
    }

    else
    {
      v30 = v12 - v26;
    }

    if (v30 < v29)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1839, "ByteStream_NumReadBytesAvail(bs) >= (count)");
    }

LABEL_96:
    v60 = v15;
    memmove((v103 | v99), v28, v29);
    v46 = v29 + v99;
    if (v60 > v27)
    {
      *(v10 + 8) += v29;
      *(v10 + 9) = -1;
      *v10 = &v28[v29];
      v10[1] = 0;
LABEL_146:
      v24 = 3304;
      goto LABEL_147;
    }

    goto LABEL_128;
  }

  v41 = *(v10 + 9);
  if (v41 == 3)
  {
    v71 = *v10;
    if (v15 >= (v12 - v26))
    {
      v43 = (v12 - v26);
    }

    else
    {
      v43 = v15;
    }

    if (v15 <= (v12 - v26))
    {
      v24 = 0;
    }

    else
    {
      v24 = 3304;
    }

    if (v12 <= 6)
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
      v72 = 0;
    }

    else
    {
      v72 = v12 - v26;
    }

    if (v72 < v43)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1811, "ByteStream_NumReadBytesAvail(bs) >= (count)");
    }

    memmove((v103 | v99), v71, v43);
    v46 = v43 + v99;
    v47 = 1;
  }

  else
  {
    if (v41 != 2)
    {
      return 105;
    }

    v42 = 3 * v15;
    if (v42 <= (v12 - v26))
    {
      LOWORD(v43) = v15;
    }

    else
    {
      LOWORD(v43) = (v12 - v26) / 3u;
    }

    if (v42 <= (v12 - v26))
    {
      v24 = 0;
    }

    else
    {
      v24 = 3304;
    }

    if (v43)
    {
      if (v12 < 7)
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
LABEL_197:
        v91 = "ByteStream_NumReadBytesAvail(bs) >= 3";
      }

      else
      {
        v44 = v43;
        v45 = *v10;
        v46 = 7;
        v47 = 4;
        while (1)
        {
          if ((v12 - 2) <= v46)
          {
            goto LABEL_197;
          }

          if (HIBYTE(*v45))
          {
            break;
          }

          v48 = v103 + v46;
          v48[2] = *v45;
          v48[1] = BYTE1(*v45);
          *v48 = *(v45 + 2);
          v46 += 3;
          v45 += 4;
          if (!--v44)
          {
            goto LABEL_171;
          }
        }

        v91 = "0 == ((companyIDs[i]) & 0xFF000000)";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 1799, v91);
    }

    LOWORD(v43) = 0;
    v47 = 4;
    v46 = v26;
  }

LABEL_171:
  if (v24 == 3304)
  {
    v90 = *v10 + v47 * v43;
    *(v10 + 8) += v43;
    *v10 = v90;
    v10[1] = 0;
  }

LABEL_147:
  v85 = v99 - 3;
  if (v99 - 3 > v12)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 2077, "(size_t)(pos - 3) <= (size_t)((bs).__size)");
  }

  if (v24 != 3304)
  {
    if (v12 <= 6)
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
    }

    else if (v85 < v12)
    {
      v86 = 3;
      goto LABEL_155;
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 2082, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  if (v12 <= 6)
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
LABEL_180:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 2080, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  if (v85 >= v12)
  {
    goto LABEL_180;
  }

  v86 = 2;
LABEL_155:
  *(v103 + v85) = v86;
  if ((v12 - (v99 - 2)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c", 2085, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  *(v103 + (v99 - 3) + 1) = bswap32(v46 - v99) >> 16;
  if (v27 >= (v46 - v99))
  {
    v87 = v46;
  }

  else
  {
    v87 = 7;
  }

  LOWORD(v102) = v87;
  v88 = sub_100208F8C(a1, a2, &v100);
  if (!v88)
  {
    if (v24 == 3304)
    {
      return v24;
    }

    v89 = *(v9 + 24);
    if (v89)
    {
      sub_10000C1E8(v89);
    }

    *(v9 + 24) = 0;
  }

  return v88;
}

uint64_t sub_10020765C(uint64_t a1, unsigned int a2, __int16 a3, int a4, unsigned __int8 a5)
{
  if (a1)
  {
    v7[1] = &v8;
    v7[0] = a5;
    BYTE1(v7[0]) = 9;
    BYTE3(v7[0]) = 124;
    v7[2] = 7;
    if (a4)
    {
      v5 = 126;
    }

    else
    {
      v5 = -2;
    }

    v8 = v5;
    v9 = 1478033413;
    v10 = HIBYTE(a3);
    v11 = a3;
    return sub_100208F8C(a1, a2, v7);
  }

  else
  {
    sub_1000D660C();
    return 101;
  }
}

uint64_t sub_1002076E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = 0u;
  v44 = 0u;
  memset(v42, 0, sizeof(v42));
  if (a1)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1000D660C();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  sub_1000D660C();
LABEL_3:
  v6 = *(*(qword_100BC9C18 + 16) + 16);
  if (!v6)
  {
    sub_1000D660C();
    v6 = *(*(qword_100BC9C18 + 16) + 16);
  }

  if (*(a3 + 3) != 124)
  {
    v12 = sub_1002030D8(a1, 0);
    if (!v12)
    {
      goto LABEL_86;
    }

    v13 = v12;
    v14 = *(a3 + 8);
    if (v14)
    {
      v15 = *(a3 + 16);
      if (*(a3 + 16))
      {
        if (v15 <= 2)
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
        }

        else if (v15 != 3)
        {
          v16 = *(v14 + 1);
          v17 = *v14;
          v18 = v14[3];
          LOBYTE(v43) = v14[3];
          v19 = 3308;
          if (v15 >= 7)
          {
            v20 = 7;
          }

          else
          {
            v20 = 4;
          }

          if (v15 < 7 || (__PAIR64__(v17, bswap32(v16)) >> 16) != 6488)
          {
            goto LABEL_36;
          }

          v19 = 3305;
          if (v18 <= 31)
          {
            if (v18 <= 19)
            {
              if (v18 <= 17)
              {
                if (v18 != 16)
                {
                  if (v18 != 17)
                  {
LABEL_36:
                    if (v18 != 64)
                    {
                      v22 = *(v13 + 24);
                      if (v22)
                      {
                        sub_10000C1E8(v22);
                        *(v13 + 24) = 0;
                      }
                    }

                    if ((v19 - 3301) <= 7 && ((1 << (v19 + 27)) & 0x91) != 0)
                    {
                      goto LABEL_87;
                    }

                    if (v19)
                    {
                      v24 = *(*(qword_100BC9C18 + 16) + 8);
                      if (v24)
                      {
                        v24(a1, a2, a3);
                      }

                      return 0;
                    }

                    v19 = 3301;
                    if (v43 <= 0x1Fu)
                    {
                      if (v43 > 0x13u)
                      {
                        if (v43 <= 0x15u)
                        {
                          if (v43 == 20)
                          {
                            v27 = *(v6 + 32);
                            if (!v27)
                            {
                              goto LABEL_87;
                            }
                          }

                          else
                          {
                            v27 = *(v6 + 40);
                            if (!v27)
                            {
                              goto LABEL_87;
                            }
                          }
                        }

                        else
                        {
                          if (v43 == 22)
                          {
                            v34 = *(v6 + 48);
                            if (v34)
                            {
                              v34(a1, a2, BYTE8(v43), BYTE9(v43), v44);
                              return 0;
                            }

                            goto LABEL_87;
                          }

                          if (v43 != 23)
                          {
                            if (v43 != 24)
                            {
                              goto LABEL_87;
                            }

                            v23 = *(v6 + 64);
                            if (!v23)
                            {
                              goto LABEL_87;
                            }

                            goto LABEL_124;
                          }

                          v27 = *(v6 + 56);
                          if (!v27)
                          {
LABEL_87:
                            sub_100205418(a1, a2, v43, v19);
                            return 0;
                          }
                        }

LABEL_122:
                        v27(a1, a2, BYTE8(v43), v44);
                        return 0;
                      }

                      if (v43 <= 0x11u)
                      {
                        if (v43 != 16)
                        {
                          if (v43 != 17)
                          {
                            goto LABEL_87;
                          }

                          v26 = *(v6 + 8);
                          if (!v26)
                          {
                            goto LABEL_87;
                          }

                          goto LABEL_69;
                        }

                        v23 = *v6;
                        if (!*v6)
                        {
                          goto LABEL_87;
                        }

LABEL_124:
                        v32 = BYTE8(v43);
                        goto LABEL_125;
                      }

                      if (v43 != 18)
                      {
                        v27 = *(v6 + 24);
                        if (!v27)
                        {
                          goto LABEL_87;
                        }

                        goto LABEL_122;
                      }

                      v23 = *(v6 + 16);
                      if (!v23)
                      {
                        goto LABEL_87;
                      }

                      v32 = v44;
                      goto LABEL_125;
                    }

                    if (v43 > 0x40u)
                    {
                      if (v43 <= 0x5Fu)
                      {
                        if (v43 == 65)
                        {
                          v23 = *(v6 + 104);
                          if (!v23)
                          {
                            goto LABEL_87;
                          }
                        }

                        else
                        {
                          if (v43 != 80)
                          {
                            goto LABEL_87;
                          }

                          v23 = *(v6 + 192);
                          if (!v23)
                          {
                            v19 = 3305;
                            goto LABEL_87;
                          }
                        }

                        goto LABEL_124;
                      }

                      if (v43 != 96)
                      {
                        if (v43 == 116)
                        {
                          v25 = *(v6 + 176);
                          if (!v25)
                          {
                            goto LABEL_87;
                          }
                        }

                        else
                        {
                          if (v43 != 144)
                          {
                            goto LABEL_87;
                          }

                          v25 = *(v6 + 184);
                          if (!v25)
                          {
                            goto LABEL_87;
                          }
                        }

                        v25(a1, a2, BYTE8(v43), &v43 | 9, WORD1(v44));
                        return 0;
                      }

                      v23 = *(v6 + 120);
                      if (!v23)
                      {
                        goto LABEL_87;
                      }

                      v32 = WORD4(v43);
LABEL_125:
                      v23(a1, a2, v32);
                      return 0;
                    }

                    if (v43 <= 0x30u)
                    {
                      if (v43 == 32)
                      {
                        v31 = *(v6 + 72);
                        if (v31)
                        {
                          v31(a1, a2, *(&v43 + 1), v44, *(&v44 + 1));
                          return 0;
                        }

                        goto LABEL_87;
                      }

                      if (v43 != 48)
                      {
                        goto LABEL_87;
                      }

                      v26 = *(v6 + 80);
                      if (!v26)
                      {
                        goto LABEL_87;
                      }

LABEL_69:
                      v26(a1, a2);
                      return 0;
                    }

                    if (v43 == 49)
                    {
                      v33 = *(v6 + 88);
                      if (v33)
                      {
                        v33(a1, a2, BYTE8(v43), HIDWORD(v43));
                        return 0;
                      }

                      goto LABEL_87;
                    }

                    if (v43 != 64)
                    {
                      goto LABEL_87;
                    }

                    v28 = *(v6 + 96);
                    if (!v28)
                    {
                      goto LABEL_87;
                    }

                    v29 = *(v13 + 24);
                    if (v29)
                    {
                      v28(a1, a2, BYTE8(v43), *(v29 + 16), *(v29 + 18));
                      return 0;
                    }

LABEL_86:
                    v19 = 3308;
                    goto LABEL_87;
                  }

                  goto LABEL_167;
                }

LABEL_140:
                if (v15 >= 8)
                {
                  BYTE8(v43) = v14[7];
                  goto LABEL_167;
                }

                goto LABEL_166;
              }

              if (v18 == 18)
              {
                if (v15 >= 8)
                {
                  LOBYTE(v44) = v14[7];
                  goto LABEL_167;
                }

                goto LABEL_166;
              }
            }

            else if (v18 > 21)
            {
              if (v18 != 22)
              {
                if (v18 != 23)
                {
                  if (v18 != 24)
                  {
                    goto LABEL_36;
                  }

                  goto LABEL_140;
                }

                *&v44 = v42;
                if (v15 >= 8)
                {
                  BYTE8(v43) = v14[7];
                  if (!BYTE8(v43))
                  {
                    goto LABEL_167;
                  }

                  v37 = 0;
                  v36 = 0;
                  v38 = 8;
                  while (1)
                  {
                    if (v36)
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
                    }

                    else if ((v15 - 1) > v38)
                    {
                      v36 = 0;
                      *(v44 + 2 * v37) = bswap32(*&v14[v38]) >> 16;
                      v38 += 2;
                      goto LABEL_152;
                    }

                    v36 = 1;
LABEL_152:
                    if (++v37 >= BYTE8(v43))
                    {
                      goto LABEL_165;
                    }
                  }
                }

LABEL_166:
                v19 = 3306;
                goto LABEL_35;
              }

              if (v15 > 7)
              {
                BYTE8(v43) = v14[7];
                if (v15 != 8)
                {
                  v36 = 0;
                  BYTE9(v43) = v14[8];
                  LODWORD(v20) = 9;
                  goto LABEL_164;
                }

                v36 = 1;
                goto LABEL_138;
              }

              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
              goto LABEL_163;
            }

            if (v15 >= 8)
            {
              v36 = 0;
              BYTE8(v43) = v14[7];
LABEL_138:
              LODWORD(v20) = 8;
LABEL_164:
              *&v44 = &v14[v20];
              goto LABEL_165;
            }

LABEL_163:
            v36 = 1;
            goto LABEL_164;
          }

          if (v18 > 79)
          {
            if (v18 <= 115)
            {
              if (v18 == 80)
              {
                goto LABEL_140;
              }

              if (v18 != 96)
              {
                goto LABEL_36;
              }

              if (v15 < 9)
              {
                goto LABEL_166;
              }

              WORD4(v43) = bswap32(*(v14 + 7)) >> 16;
LABEL_167:
              v19 = 0;
              goto LABEL_35;
            }

            if (v18 != 116 && v18 != 144)
            {
              goto LABEL_36;
            }

            if (v15 <= 7)
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
            }

            else
            {
              BYTE8(v43) = v14[7];
              if (v15 >= 0x10)
              {
                for (i = 0; i != 8; ++i)
                {
                  *((&v43 | 9) + i) = v14[i + 8];
                }

                if ((v15 - (v20 + 9)) <= 1)
                {
                  goto LABEL_166;
                }

                WORD1(v44) = bswap32(*&v14[v20 + 9]) >> 16;
                goto LABEL_167;
              }
            }

LABEL_161:
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
            goto LABEL_166;
          }

          if (v18 > 63)
          {
            if ((v18 - 64) >= 2)
            {
              goto LABEL_36;
            }

            goto LABEL_140;
          }

          if (v18 != 32)
          {
            if (v18 == 48)
            {
              goto LABEL_167;
            }

            if (v18 != 49)
            {
              goto LABEL_36;
            }

            if (v15 > 7)
            {
              BYTE8(v43) = v14[7];
              if (v15 < 0xC)
              {
                goto LABEL_166;
              }

              HIDWORD(v43) = bswap32(*(v14 + 2));
              goto LABEL_167;
            }

            goto LABEL_161;
          }

          *(&v44 + 1) = v42;
          *(&v43 + 1) = v14 + 7;
          if (v15 > 0xE)
          {
            if (v15 == 15)
            {
              goto LABEL_166;
            }

            v36 = 0;
            v39 = v14[15];
            LOBYTE(v44) = v14[15];
            v40 = 16;
          }

          else
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
            v39 = v44;
            v36 = 1;
            v40 = 7;
          }

          if (!v39)
          {
LABEL_165:
            if (!v36)
            {
              goto LABEL_167;
            }

            goto LABEL_166;
          }

          v41 = 0;
          while (1)
          {
            if (v36)
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
            }

            else if ((v15 - 3) > v40)
            {
              v36 = 0;
              *(*(&v44 + 1) + 4 * v41) = bswap32(*&v14[v40]);
              v40 += 4;
              goto LABEL_175;
            }

            v36 = 1;
LABEL_175:
            if (++v41 >= v44)
            {
              goto LABEL_165;
            }
          }
        }

        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/av/avrcp/avrcp_metadata.c");
      }
    }

    else
    {
      sub_1000D660C();
    }

    v19 = 3308;
LABEL_35:
    v18 = v43;
    goto LABEL_36;
  }

  v7 = *(a3 + 8);
  v8 = *v7;
  if ((v8 & 0x7F) == 0x7E && *(a3 + 16) >= 7u)
  {
    v10 = (v8 & 0x80u) == 0;
    v9 = bswap32(*(v7 + 5)) >> 16;
    v21 = *(v6 + 112);
    if (v21)
    {
      v21(a1, a2, v9, (v8 >> 7) ^ 1);
      return 0;
    }

    v11 = 8;
  }

  else
  {
    LOWORD(v9) = 0;
    v10 = 0;
    v11 = 10;
  }

  sub_10020765C(a1, a2, v9, v10, v11);
  return 0;
}

uint64_t sub_100207FB4(uint64_t a1, __int16 a2, __int16 a3, __int16 a4, char a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_1002030D8(a1, 0);
  if (v14)
  {
    v15 = v14;
    v16 = sub_1001BBBD8(0x18uLL, 0x1090040B73CA6A5uLL);
    *(v15 + 24) = v16;
    if (v16)
    {
      v17 = v16;
      result = 0;
      v17[8] = a2;
      v17[9] = a3;
      v19 = *(v15 + 24);
      *(v19 + 20) = a4;
      *(v19 + 22) = a5;
      *v19 = a6;
      *(v19 + 8) = a7;
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("AVRCP Could not handle fragmented message: no memory for fragment allocation", v28, v29, v30, v31, v32, v33, v34, v36);
        v35 = sub_10000C050(4u);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 106;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("AVRCP Could not handle fragmented message: connection not found for %:", v20, v21, v22, v23, v24, v25, v26, a1);
      v27 = sub_10000C050(4u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 105;
  }

  return result;
}

uint64_t sub_1002080F0(uint64_t a1, int a2, _BYTE *a3, uint64_t *a4)
{
  if (!xmmword_100BCE240)
  {
    return 408;
  }

  if (!a1 || !a4)
  {
    sub_1000D660C();
    return 101;
  }

  v38 = 0u;
  v39 = 0u;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  if (*(qword_100BC9C18 + 16))
  {
    return 119;
  }

  v10 = sub_1001BBBD8(0x18uLL, 0x10200405DB3EE86uLL);
  v11 = qword_100BC9C18;
  *(qword_100BC9C18 + 24) = v10;
  if (!v10)
  {
    return 106;
  }

  v12 = sub_1001BBBD8(32 * *(v11 + 89), 0x1020040EC06A7F1uLL);
  v13 = qword_100BC9C18;
  v14 = *(qword_100BC9C18 + 24);
  *(v14 + 8) = v12;
  if (!v12)
  {
    sub_10000C1E8(v14);
    v6 = 106;
LABEL_29:
    *(qword_100BC9C18 + 24) = 0;
    return v6;
  }

  v13[2] = a1;
  v13[5] = sub_100208418;
  v13[7] = sub_10020881C;
  v15 = sub_10028BB34(off_100AE6730, (v14 + 4));
  if (v15)
  {
    v6 = v15;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_BIPSRV_RegisterAVRCPImagingResponder failed with status %!", v16, v17, v18, v19, v20, v21, v22, v6);
      v23 = sub_10000C050(4u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    goto LABEL_26;
  }

  sub_100203F9C(*(*(qword_100BC9C18 + 24) + 4));
  v24 = qword_100BC9C18 + 24;
  if (a3)
  {
    *(*(qword_100BC9C18 + 24) + 16) = *a3;
    *(*v24 + 17) = a3[1];
    v25 = a3[2];
  }

  else
  {
    v25 = -1;
    *(*(qword_100BC9C18 + 24) + 16) = -1;
    *(*v24 + 17) = -1;
  }

  *(*v24 + 18) = v25;
  v26 = *(sub_1003045A0(4u) + 10);
  v27 = *(qword_100BC9C18 + 24);
  if ((v26 - 512) < 0xFFFFFE11)
  {
    LOWORD(v26) = 512;
  }

  *(v27 + 20) = v26;
  xmmword_100B5CD68 = xmmword_1008A3708;
  DWORD2(xmmword_100B5CD68) = a2;
  *&v38 = &unk_100AE67C0;
  *&v39 = *a4;
  WORD4(v39) = *(a4 + 4);
  WORD4(v38) = 5;
  xmmword_100B5CD78 = xmmword_1008A3708;
  DWORD2(xmmword_100B5CD78) = a2 & 0xFFFFFEFF;
  v34 = &unk_100AE6838;
  LOWORD(v35) = 5;
  v36 = *a4;
  LOWORD(v37) = *(a4 + 4);
  v30 = &unk_100AE68B0;
  LOWORD(v31) = 5;
  v32 = v36;
  LOWORD(v33) = v37;
  v6 = sub_1002F7E1C(&v38, v27);
  if (!v6)
  {
    v6 = sub_1002033F0();
  }

  sub_1002F8134(**(qword_100BC9C18 + 24), &v34);
  sub_1002F8134(**(qword_100BC9C18 + 24), &v30);
  if (v6)
  {
    sub_1002F8018(**(qword_100BC9C18 + 24));
LABEL_26:
    v28 = qword_100BC9C18;
    *(qword_100BC9C18 + 16) = 0;
    v29 = *(v28 + 24);
    if (v29[1])
    {
      sub_10000C1E8(v29[1]);
      v29 = *(qword_100BC9C18 + 24);
      v29[1] = 0;
    }

    sub_10000C1E8(v29);
    goto LABEL_29;
  }

  return v6;
}