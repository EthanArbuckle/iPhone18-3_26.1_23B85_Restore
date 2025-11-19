uint64_t sub_1001B6DCC()
{
  pthread_mutex_lock(&stru_100B5AEB8);
  dword_100B5AEF8 = 0;
  sub_10000C198();
  pthread_cond_signal(&stru_100B5AE88);
  pthread_mutex_unlock(&stru_100B5AEB8);
  pthread_join(qword_100B5AE80[0], 0);
  sub_1000031B0();
  if (dword_100B5B220 >= 1)
  {
    v0 = 0;
    do
    {
      v1 = qword_100B5AE80[v0 + 16];
      free(v1[2]);
      free(v1);
      ++v0;
    }

    while (v0 < dword_100B5B220);
  }

  dword_100B5B220 = 0;
  v2 = qword_100B5B228;
  pthread_mutex_lock((qword_100B5B228 + 16));
  if (*(v2 + 12) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*v2 + 8 * v3);
      free(v4[2]);
      free(v4);
      ++v3;
    }

    while (v3 < *(v2 + 12));
  }

  free(*v2);
  pthread_mutex_unlock((v2 + 16));
  pthread_mutex_destroy((v2 + 16));
  free(v2);
  pthread_mutex_destroy(&stru_100B5AEB8);

  return pthread_cond_destroy(&stru_100B5AE88);
}

void sub_1001B6EF4(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -536870064)
  {
    v14 = "[bm3_usb][DeviceNotificationCB] -- kIOMessageDeviceSignaledWakeup -- HIDShim ";
  }

  else
  {
    if (a3 != -536870896)
    {
      return;
    }

    sub_100304AF8("[bm3_usb][DeviceNotificationCB] -- kIOMessageServiceIsTerminated -- HIDShim ");
    sub_100304AF8("[bm3_usb][BTDeviceRemoved] called\n");
    if (qword_100B5AE70)
    {
      if (a1)
      {
        sub_100304AF8("[bm3_usb] Bluetooth device removed: %s \n", *(a1 + 8));
      }

      pthread_mutex_lock(&xmmword_100B5ADD8);
      v4 = dword_100B5ADD0;
      if (dword_100B5ADD0 >= 1)
      {
        v5 = 0;
        v6 = &qword_100B5AD88;
        do
        {
          v7 = &xmmword_100B5AD78 + 8 * v5;
          if (*(v7 + 1) == a1)
          {
            *(v7 + 1) = 0;
            v8 = v5 + 1;
            v9 = (v4 - 1);
            if (v5 + 1 < v4)
            {
              v10 = v9 - v5;
              v11 = v7 + 8;
              v12 = v6;
              do
              {
                v13 = *v12++;
                *v11++ = v13;
                --v10;
              }

              while (v10);
            }

            dword_100B5ADD0 = v9;
            v5 = v8;
            v4 = v9;
          }

          else
          {
            ++v5;
          }

          ++v6;
        }

        while (v5 < v4);
      }

      pthread_cond_signal(&xmmword_100B5AE18);
      pthread_mutex_unlock(&xmmword_100B5ADD8);
      sub_1001B706C(a1);
      v14 = "[bm3_usb][BTDeviceRemoved] exited\n";
    }

    else
    {
      v14 = "[bm3_usb][BTDeviceRemoved] exited -- Already removed\n";
    }
  }

  sub_100304AF8(v14);
}

void sub_1001B706C(_DWORD *a1)
{
  sub_100304AF8("[bm3_usb][BTDeviceDestroy] called\n");
  if (a1 && *a1)
  {
    sub_1001B5B8C(a1);
    v2 = *(a1 + 19);
    if (v2)
    {
      free(v2[2]);
      free(v2);
    }

    v3 = *(a1 + 20);
    if (v3)
    {
      free(v3[2]);
      free(v3);
    }

    v4 = *(a1 + 21);
    if (v4)
    {
      free(v4[2]);
      free(v4);
    }

    for (i = 0; i != 8; i += 2)
    {
      v6 = &a1[i];
      v7 = *&a1[i + 44];
      if (v7)
      {
        sub_1001B3554(v7);
        *(v6 + 22) = 0;
      }

      v8 = *(v6 + 26);
      if (v8)
      {
        sub_1001B3554(v8);
        *(v6 + 26) = 0;
      }
    }

    free(*(a1 + 1));
    if (qword_100B5AE70 == a1)
    {
      sub_100304AF8("[bm3_usb][BTDeviceDestroy] active device\n");
      qword_100B5AE70 = 0;
    }

    free(a1);
  }

  sub_100304AF8("[bm3_usb][BTDeviceDestroy] exited\n");
}

uint64_t sub_1001B7178(uint64_t a1, int a2)
{
  if (a1 && (v3 = *(a1 + 40)) != 0 && *v3)
  {
    if (a2)
    {
      v4 = 100;
    }

    else
    {
      v4 = 0;
    }

    result = (*(*v3 + 624))();
    if (!result)
    {
      result = (*(**(a1 + 40) + 624))(*(a1 + 40), *(a1 + 121), v4);
      if (!result)
      {
        return (*(**(a1 + 40) + 624))(*(a1 + 40), *(a1 + 129), v4);
      }
    }
  }

  else
  {
    sub_100304AF8("[bm3_usb][BTDeviceSetPipeIdlePolicy] -- btdev or firstInterface is NULL\n");
    return 3758097088;
  }

  return result;
}

uint64_t sub_1001B7218(uint64_t a1)
{
  v1 = (*(**(*a1 + 40) + 264))(*(*a1 + 40), *(*a1 + 105), *(a1 + 16), *(a1 + 12), sub_1001B72E0);
  if (v1)
  {
    sub_10024DC48(1205);
  }

  return v1;
}

uint64_t sub_1001B727C(uint64_t a1)
{
  v1 = (*(**(*a1 + 40) + 264))(*(*a1 + 40), *(*a1 + 121), *(a1 + 16), *(a1 + 12), sub_1001B7474);
  if (v1)
  {
    sub_10024DC48(1205);
  }

  return v1;
}

void sub_1001B72E0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *a1;
  if (*a1)
  {
    if (*v3 && qword_100B5AE70 != 0)
    {
      if (a2)
      {
        if (a2 == -536870165)
        {
          v7 = *(v3 + 152);
          if (v7)
          {
            sub_1001B31F8(v7);
            *(v3 + 152) = 0;
          }

          return;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("InterruptPipeReadCB failed with 0x%x %s", v8, v9, v10, v11, v12, v13, v14, a2);
          v15 = sub_10000C050(0x3Au);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      else
      {
        *(a1 + 24) = a3;
        if (!a3 || !sub_1001B45F8(v3, 4, 2u, 0x101u, (v3 + 152), *(a1 + 16), a3))
        {
LABEL_20:
          if (dword_100B5AEF8)
          {
            *(a1 + 24) = 0;
            sub_1001B7218(a1);
          }

          return;
        }
      }

      v16 = *(v3 + 152);
      if (v16)
      {
        sub_1001B31F8(v16);
        *(v3 + 152) = 0;
      }

      if (*v3)
      {
        sub_1000031B0();
        sub_10024DBDC(1212);
        sub_10000C198();
        goto LABEL_20;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("InterruptPipeReadCB btdev->open is false", v17, v18, v19, v20, v21, v22, v23, v25);
        v24 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }
  }
}

void sub_1001B7474(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *a1;
  if (*a1)
  {
    if (*v3 && qword_100B5AE70 != 0)
    {
      if (a2)
      {
        if (a2 == -536870165)
        {
          v7 = *(v3 + 160);
          if (v7)
          {
            sub_1001B31F8(v7);
            *(v3 + 160) = 0;
          }

          return;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("BulkPipeReadCB failed with 0x%x %s", v8, v9, v10, v11, v12, v13, v14, a2);
          v15 = sub_10000C050(0x3Au);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      else
      {
        *(a1 + 24) = a3;
        if (!a3 || !sub_1001B45F8(v3, 2, 4u, 0xFFFFu, (v3 + 160), *(a1 + 16), a3))
        {
LABEL_20:
          if (dword_100B5AEF8)
          {
            *(a1 + 24) = 0;
            sub_1001B727C(a1);
          }

          return;
        }
      }

      v16 = *(v3 + 160);
      if (v16)
      {
        sub_1001B31F8(v16);
        *(v3 + 160) = 0;
      }

      if (*v3)
      {
        sub_1000031B0();
        sub_10024DBDC(1210);
        sub_10000C198();
        goto LABEL_20;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("BulkPipeReadCB btdev->open is false", v17, v18, v19, v20, v21, v22, v23, v25);
        v24 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }
  }
}

uint64_t sub_1001B7610()
{
  sub_100304AF8("[bm3_usb] Darwin USB Terminate...\n");
  sub_1001B5A4C();
  return 0;
}

char *sub_1001B7640(uint64_t a1, char a2, const void *a3, unsigned int a4)
{
  v6 = sub_1001B35A0(a1, a2, a4, a4);
  v7 = v6;
  if (v6 && sub_1001B47FC(v6, a3, a4) < a4)
  {
    sub_1001B31F8(v7);
    return 0;
  }

  return v7;
}

void sub_1001B76A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = 0u;
  memset(v40, 0, sizeof(v40));
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  sub_100304ACC(&v26, 250, "USB %s -- %s failed -- error (0x%x) -- exit(0) -- Restart bluetoothd", a4, a5, a6, a7, a8, a3);
  sub_1001C4B04(&v26);
  if (**(a1 + 32))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Bluetooth error - simulated -- %s Error -- build=release, reason=%d", v10, v11, v12, v13, v14, v15, v16, a4);
      v17 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        v25 = sub_10000C0FC();
        _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "%{public}s", buf, 0xCu);
      }
    }

    v18 = (*(**(a1 + 32) + 296))(*(a1 + 32), 0);
    sub_100304AF8("[bm3_usb] USBDeviceReEnumerate() returned 0x%0x", v18);
    v39 = 0u;
    memset(v40, 0, sizeof(v40));
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    sub_100304ACC(&v26, 250, "USBDeviceReEnumerate() returned 0x%0x", v19, v20, v21, v22, v23, v18);
    sub_1001C4B04(&v26);
  }

  exit(0);
}

uint64_t sub_1001B7814()
{
  if (qword_100B5AE70)
  {
    sub_1001B7178(qword_100B5AE70, 1);
  }

  return 0;
}

uint64_t sub_1001B7844()
{
  if (qword_100B5AE70)
  {
    sub_1001B7178(qword_100B5AE70, 0);
  }

  return 0;
}

uint64_t sub_1001B7874()
{
  byte_100B5AE78 = 0;
  if (!qword_100B5AE70)
  {
    return 113;
  }

  v0 = *(qword_100B5AE70 + 48);
  *(qword_100B5AE70 + 4106) = 0;
  if (!v0)
  {
    return 113;
  }

  (*(*v0 + 72))(v0);
  sub_100304AF8("[bm3_usb][OI_HciIfc_DisableSCO_USB] -- ISOC interface for SCO is closed\n");
  return 0;
}

void sub_1001B7900(char a1)
{
  if (!dword_100BCE26C)
  {
    sub_1000D660C();
  }

  *(qword_100B5B2B0 + 33) = a1;
}

uint64_t sub_1001B7940(uint64_t a1, _DWORD *a2, int a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  if (!a1 || !a4)
  {
    sub_1000D660C();
    return 101;
  }

  if (dword_100BCE26C)
  {
    return 140;
  }

  qword_100B5B2B0 = sub_1001BBBD8(0x28uLL, 0x10A0040B07E844BuLL);
  if (!qword_100B5B2B0)
  {
    return 106;
  }

  v19 = 0u;
  v20 = 0u;
  *(qword_100B5B2B0 + 32) = *sub_1003045A0(0xFu);
  v14 = *(sub_1003045A0(0xFu) + 10);
  v15 = qword_100B5B2B0;
  *(qword_100B5B2B0 + 38) = v14;
  sub_1003051D8(v15);
  v16 = qword_100B5B2B0;
  *(qword_100B5B2B0 + 34) = a5;
  *(v16 + 36) = a6;
  v7 = sub_1002EF24C(sub_1001B7B1C, off_100AE5218, a5, a6, (v16 + 32), &unk_1008A3400);
  if (v7)
  {
    goto LABEL_11;
  }

  *&v19 = &unk_100AE5240;
  WORD4(v19) = 4;
  *&v20 = *a1;
  WORD4(v20) = *(a1 + 8);
  byte_100B5B2B8 = 1;
  word_100B5B2BA = 1;
  dword_100B5B2C0 = *(qword_100B5B2B0 + 32);
  byte_100B5B2C8 = 1;
  word_100B5B2CA = 2;
  dword_100B5B2D0 = a3;
  v17 = sub_1002F7E1C(&v19, (qword_100B5B2B0 + 20));
  v18 = qword_100B5B2B0;
  if (v17)
  {
    v7 = v17;
    sub_1002EF558(*(qword_100B5B2B0 + 32));
LABEL_11:
    if (qword_100B5B2B0)
    {
      sub_10000C1E8(qword_100B5B2B0);
      qword_100B5B2B0 = 0;
    }

    return v7;
  }

  *(qword_100B5B2B0 + 24) = a4;
  if (a2)
  {
    *a2 = *(v18 + 20);
  }

  sub_100244814(0x200000);
  v7 = 0;
  dword_100BCE26C = 1;
  return v7;
}

uint64_t sub_1001B7B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  if (qword_100B5B2B0)
  {
    v6 = *qword_100B5B2B0;
    if (*qword_100B5B2B0 && v6 != qword_100B5B2B0)
    {
      while (*(v6 - 3) != *a1 || *(v6 - 4) != *(a1 + 4))
      {
        v6 = *v6;
        if (v6)
        {
          v9 = v6 == qword_100B5B2B0;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_17;
    }
  }

LABEL_15:
  v10 = sub_1001B7FC8(a1, a4);
  if (!v10)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not allocate hfp device!", v13, v14, v15, v16, v17, v18, v19, *&v24[0]);
      v20 = sub_10000C050(0xFu);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return sub_1002EFBAC(sub_1001B7DD0, a4, 0);
  }

  v11 = v10;
  if (*(v10 + 34))
  {
LABEL_17:

    return sub_1002EFBAC(sub_1001B7DD0, a4, 0);
  }

  v21 = sub_1001B7D28(a4);
  if (v21)
  {
    *(v21 + 34) = 2;
  }

  *v11 = a4;
  v22 = *(a1 + 4);
  *(v11 + 7) = *a1;
  v23 = v11 + 14;
  v23[2] = v22;
  *(&v24[0] + 1) = v23;
  LODWORD(v24[0]) = 0;
  WORD2(v24[0]) = a4;
  return (*(qword_100B5B2B0 + 24))(v24);
}

uint64_t sub_1001B7CA4()
{
  if (!dword_100BCE26C)
  {
    return 408;
  }

  if (*(qword_100B5B2B0 + 16))
  {
    return 141;
  }

  result = sub_1002EF558(*(qword_100B5B2B0 + 32));
  if (!result)
  {
    sub_1002F8018(*(qword_100B5B2B0 + 20));
    sub_1002448C8(0x200000);
    if (qword_100B5B2B0)
    {
      sub_10000C1E8(qword_100B5B2B0);
      qword_100B5B2B0 = 0;
    }

    result = 0;
    dword_100BCE26C = 0;
  }

  return result;
}

void *sub_1001B7D28(uint64_t a1)
{
  if (qword_100B5B2B0)
  {
    for (i = *qword_100B5B2B0; i && i != qword_100B5B2B0; i = *i)
    {
      if (*(i - 20) == a1)
      {
        return i - 5;
      }
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Could not find addr for device handle %d", v4, v5, v6, v7, v8, v9, v10, a1);
    v11 = sub_10000C050(0xFu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  return 0;
}

uint64_t sub_1001B7DD0(uint64_t a1, __int16 a2, uint64_t a3)
{
  v6 = sub_1001B7D28(a1);
  if (v6)
  {
    if (a3)
    {
LABEL_3:
      if (sub_10000C240())
      {
        sub_10000AF54("RFCOMM connection failed %!\n", v7, v8, v9, v10, v11, v12, v13, a3);
        v14 = sub_10000C050(0xFu);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      *v6 = 0;
      v15 = sub_1001B7D28(a1);
      if (v15)
      {
        v16 = 0;
LABEL_15:
        *(v15 + 34) = v16;
        return sub_1001B80FC(*v6, a3, a2);
      }

      return sub_1001B80FC(*v6, a3, a2);
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

  a3 = sub_100248374(off_100AE52F0, (v6 + 14));
  if (a3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_DEVMGR_RegisterScoApplication failed %!\n", v17, v18, v19, v20, v21, v22, v23, a3);
      v24 = sub_10000C050(0xFu);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  v15 = sub_1001B7D28(a1);
  if (v15)
  {
    v16 = 3;
    goto LABEL_15;
  }

  return sub_1001B80FC(*v6, a3, a2);
}

void *sub_1001B7F08(uint64_t a1)
{
  if (!qword_100B5B2B0 || ((v2 = *qword_100B5B2B0) != 0 ? (v3 = v2 == qword_100B5B2B0) : (v3 = 1), v3))
  {
LABEL_15:
    if (sub_10000C240())
    {
      sub_10000AF54("Could not find addr for device %:", v6, v7, v8, v9, v10, v11, v12, a1);
      v13 = sub_10000C050(0xFu);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 0;
  }

  else
  {
    while (*(v2 - 3) != *a1 || *(v2 - 4) != *(a1 + 4))
    {
      v2 = *v2;
      if (v2)
      {
        v5 = v2 == qword_100B5B2B0;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        goto LABEL_15;
      }
    }

    return v2 - 5;
  }
}

_WORD *sub_1001B7FC8(int *a1, __int16 a2)
{
  if (*(qword_100B5B2B0 + 16) >= *(qword_100B5B2B0 + 38))
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Maximum handsfree connection is %d, cannot create device", v8, v9, v10, v11, v12, v13, v14, *(qword_100B5B2B0 + 38));
    v15 = sub_10000C050(0xFu);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

LABEL_9:
    sub_10080F7A0();
    return 0;
  }

  v4 = sub_1001BBBD8(0x38uLL, 0x10A0040C964C9D0uLL);
  if (!v4)
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Could not allocate hfp device\n", v16, v17, v18, v19, v20, v21, v22, v25);
    v23 = sub_10000C050(0xFu);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_9;
  }

  v5 = v4;
  v6 = *a1;
  v4[16] = *(a1 + 2);
  *(v4 + 7) = v6;
  *v4 = a2;
  *(v4 + 34) = 0;
  v7 = qword_100B5B2B0;
  ++*(qword_100B5B2B0 + 16);
  sub_1003051E0(v4 + 5, v7);
  return v5;
}

uint64_t sub_1001B80FC(uint64_t a1, int a2, __int16 a3)
{
  v5 = a1;
  v6 = sub_1001B7D28(a1);
  if (!v6)
  {
    sub_1000D660C();
  }

  v10 = 0u;
  v12 = 0;
  v11 = 0u;
  LODWORD(v10) = a2;
  WORD2(v10) = a3;
  v8[0] = 1;
  v9 = v6 + 28;
  v8[1] = v5;
  return (*(qword_100B5B2B0 + 24))(v8);
}

uint64_t sub_1001B8184(uint64_t a1)
{
  if (!dword_100BCE26C)
  {
    return 408;
  }

  v1 = sub_1001B7D28(a1);
  if (!v1)
  {
    sub_1000D660C();
  }

  v2 = *(v1 + 34);
  if ((v2 - 4) < 2)
  {
    return 116;
  }

  if (v2 != 3)
  {
    return 1802;
  }

  v4 = *v1;
  v5 = sub_1001B7D28(v4);
  if (!v5)
  {
    sub_1000D660C();
  }

  v6 = *(v5 + 34);
  v7 = v6 > 5;
  v8 = (1 << v6) & 0x31;
  if (!v7 && v8 != 0)
  {
    return 0;
  }

  v10 = sub_1001B7D28(v4);
  if (v10)
  {
    *(v10 + 34) = 4;
  }

  v11 = *v5;

  return sub_1001B84D0(v11);
}

uint64_t sub_1001B8260(uint64_t a1, uint64_t a2, char *a3, size_t a4)
{
  v7 = sub_1001B7D28(a1);
  if (!v7)
  {
    sub_1000D660C();
  }

  if (!dword_100BCE26C)
  {
    return 408;
  }

  if (!a2)
  {
    sub_1000D660C();
    return 101;
  }

  if (*(v7 + 34) != 3)
  {
    return 408;
  }

  if (v7[2])
  {
    return 118;
  }

  result = sub_1002EF8B0(sub_1001B830C, *v7, a3, a4);
  if (!result)
  {
    v7[2] = a2;
  }

  return result;
}

uint64_t sub_1001B830C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1001B7D28(a1);
  if (!v8)
  {
    sub_1000D660C();
  }

  v9 = v8[2];
  v8[2] = 0;

  return v9(a1, a2, a3, a4);
}

uint64_t sub_1001B8380(uint64_t a1, int a2)
{
  v4 = sub_1001B7D28(a1);
  if (!v4)
  {
    sub_1000D660C();
  }

  v5 = *(v4 + 34);
  v6 = sub_1001B7D28(a1);
  if (v6)
  {
    if (v5 == 3)
    {
      v7 = 5;
    }

    else
    {
      v7 = 0;
    }

    *(v6 + 34) = v7;
  }

  *(v4 + 1) = a2;
  v8 = *v4;

  return sub_1001B84D0(v8);
}

void sub_1001B83F4(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = a1;
  v6 = sub_1001B7D28(a1);
  if (!v6)
  {
    sub_1000D660C();
  }

  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  if ((*(v6 + 34) & 0xFE) == 4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Ignoring received data while in state %s", v7, v8, v9, v10, v11, v12, v13, "");
      v14 = sub_10000C050(0xFu);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    LODWORD(v15) = 6;
    *(&v15 + 1) = a2;
    LOWORD(v16) = a3;
    WORD2(v15) = v5;
    (*(qword_100B5B2B0 + 24))(&v15);
  }
}

uint64_t sub_1001B84D0(uint64_t a1)
{
  v2 = sub_1001B7D28(a1);
  if (!v2)
  {
    sub_1000D660C();
  }

  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v3 = *(v2 + 34);
  if (v3 == 5)
  {
    if (!*(v2 + 35))
    {
      v4 = 0;
      *(v2 + 34) = 0;
      goto LABEL_19;
    }

LABEL_18:
    v4 = 0;
    goto LABEL_19;
  }

  if (v3 != 4)
  {
    goto LABEL_18;
  }

  if (*(v2 + 35) == 3)
  {
    v4 = sub_100248688(v2[1]);
    if (!v4)
    {
      *(v2 + 35) = 4;
      goto LABEL_19;
    }

    if (!sub_10000C240())
    {
      goto LABEL_17;
    }

    sub_10000AF54("ScoDisconnect failed - %!, forcing disconnect!\n", v5, v6, v7, v8, v9, v10, v11, v4);
    v12 = sub_10000C050(0xFu);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

LABEL_16:
    sub_10080F7A0();
LABEL_17:
    sub_1001B8738(*v2);
    goto LABEL_19;
  }

  if (!*v2)
  {
    goto LABEL_18;
  }

  v4 = sub_1002EFF1C(*v2, 935);
  if (v4)
  {
    if (!sub_10000C240())
    {
      goto LABEL_17;
    }

    sub_10000AF54("RFCOMM_Disconnect failed - %!, forcing disconnect!\n", v13, v14, v15, v16, v17, v18, v19, v4);
    v20 = sub_10000C050(0xFu);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_19:
  if (*(v2 + 35) || *(v2 + 34))
  {
    if (!*(v2 + 6))
    {
      v32[1] = v2;
      v32[0] = 2;
      v4 = sub_10002195C(sub_1001B87E8, v32, 100, v2 + 6);
      if (v4)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Register disconnect timeout handler failed %!\n", v21, v22, v23, v24, v25, v26, v27, v4);
          v28 = sub_10000C050(0xFu);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }
    }
  }

  else
  {
    v29 = *(v2 + 6);
    if (v29)
    {
      sub_10002242C(v29);
      *(v2 + 6) = 0;
    }

    v30 = sub_1001B7D28(a1);
    if (v30)
    {
      *(v30 + 34) = 0;
    }

    sub_100248578(v2 + 28);
    LODWORD(v33[0]) = 2;
    *(&v33[0] + 1) = v2 + 28;
    DWORD2(v33[0]) = *(v2 + 1);
    WORD2(v33[0]) = *v2;
    (*(qword_100B5B2B0 + 24))(v33);
    sub_100305208(v2 + 5);
    sub_10000C1E8(v2);
    --*(qword_100B5B2B0 + 16);
  }

  return v4;
}

uint64_t sub_1001B8738(uint64_t a1)
{
  v2 = sub_1001B7D28(a1);
  if (!v2)
  {
    sub_1000D660C();
  }

  result = sub_10023BD60(v2 + 28);
  if (result)
  {
    v4 = result;
    if (sub_10000C240())
    {
      sub_10000AF54("ForceDisconnect failed - %!, assuming already disconnected\n", v5, v6, v7, v8, v9, v10, v11, v4);
      v12 = sub_10000C050(0xFu);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    result = sub_1001B7D28(a1);
    if (result)
    {
      *(result + 34) = 0;
    }

    *(v2 + 35) = 0;
    *(v2 + 1) = 926;
  }

  return result;
}

uint64_t sub_1001B87E8(uint64_t a1)
{
  v1 = **(a1 + 8);
  v2 = sub_1001B7D28(v1);
  if (!v2)
  {
    sub_1000D660C();
  }

  *(v2 + 6) = 0;
  sub_1001B8738(v1);

  return sub_1001B84D0(v1);
}

uint64_t sub_1001B8840(int a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1001B7F08(a3);
  if (!v5)
  {
    sub_1000D660C();
  }

  v9 = 0;
  memset(v8, 0, sizeof(v8));
  if (a1)
  {
    v6 = 0;
  }

  else
  {
    v5[1] = a2;
    v6 = 3;
  }

  *(v5 + 35) = v6;
  LODWORD(v8[0]) = 4;
  HIDWORD(v8[0]) = (v5 + 28) >> 32;
  DWORD2(v8[0]) = a1;
  WORD2(v8[0]) = *v5;
  result = (*(qword_100B5B2B0 + 24))(v8);
  if ((*(v5 + 34) & 0xFE) == 4)
  {
    return sub_1001B84D0(*v5);
  }

  return result;
}

uint64_t sub_1001B88F8(uint64_t a1, uint64_t a2)
{
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  if (qword_100B5B2B0)
  {
    for (i = *qword_100B5B2B0; i && i != qword_100B5B2B0; i = *i)
    {
      if (*(i - 4) == a2)
      {
        v13 = (i - 5);
        if (a1)
        {
          goto LABEL_13;
        }

        goto LABEL_17;
      }
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Could not find device with sco handle", v5, v6, v7, v8, v9, v10, v11, v23);
    v12 = sub_10000C050(0xFu);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  sub_1000D660C();
  v13 = 0;
  if (a1)
  {
LABEL_13:
    if (sub_10000C240())
    {
      sub_10000AF54("SCO disconnect failed %!", v14, v15, v16, v17, v18, v19, v20, a1);
      v21 = sub_10000C050(0xFu);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
LABEL_17:
    *(v13 + 35) = 0;
  }

  LODWORD(v24[0]) = 5;
  HIDWORD(v24[0]) = (v13 + 14) >> 32;
  DWORD2(v24[0]) = a1;
  WORD2(v24[0]) = *v13;
  result = (*(qword_100B5B2B0 + 24))(v24);
  if ((v13[17] & 0xFE) == 4)
  {
    return sub_1001B84D0(*v13);
  }

  return result;
}

uint64_t sub_1001B8A48(uint64_t a1)
{
  v8 = sub_1001B7F08(a1);
  if (!v8)
  {
    sub_1000D660C();
  }

  v12 = 0;
  memset(v11, 0, sizeof(v11));
  if (*(v8 + 34) == 3 && (*a1 == *(v8 + 7) ? (v9 = *(a1 + 4) == *(v8 + 16)) : (v9 = 0), v9 && !*(v8 + 35)))
  {
    *(v8 + 35) = 1;
    LODWORD(v11[0]) = 3;
    *(&v11[0] + 1) = v8 + 28;
    WORD2(v11[0]) = *v8;
    return (*(qword_100B5B2B0 + 24))(v11);
  }

  else
  {

    return sub_100249720(a1, 0, v2, v3, v4, v5, v6, v7);
  }
}

uint64_t sub_1001B8B1C(uint64_t result)
{
  v1 = &xmmword_100B5B2D8 + 6;
  v2 = 5;
  while (*(v1 - 6) != 1 || (*v1 & 1) == 0)
  {
    v1 += 48;
    if (!--v2)
    {
      return result;
    }
  }

  if (*(v1 + 2) == result)
  {
    *(v1 - 6) = 0;
    *v1 = 0;
  }

  return result;
}

void sub_1001B8B70(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  while (LODWORD(xmmword_100B5B2D8[v3]) != 1)
  {
    v3 += 3;
    if (v3 == 15)
    {
      return;
    }
  }

  v4 = &xmmword_100B5B2D8[v3];
  if (a2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not synchronize to periodic advertiser (%!)", v5, v6, v7, v8, v9, v10, v11, a2);
      v12 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    if (off_100B5B3D8)
    {
      off_100B5B3D8(&xmmword_100B5B2D8[v3], a2);
    }

    sub_1001B8CDC(LODWORD(xmmword_100B5B2D8[v3 + 1]) | ((WORD2(xmmword_100B5B2D8[v3 + 1]) | (BYTE6(xmmword_100B5B2D8[v3 + 1]) << 16)) << 32), BYTE7(xmmword_100B5B2D8[v3 + 1]));
    v4[1] = 0u;
    v4[2] = 0u;
    *v4 = 0u;
    LODWORD(xmmword_100B5B2D8[v3]) = 0;
  }

  else
  {
    *v4 = 2;
    *(v4 + 2) = *a1;
    *(v4 + 14) = *(a1 + 12);
    *(v4 + 37) = *(a1 + 15);
    ++byte_100B5B3D0;
    if (off_100B5B3D8)
    {
      off_100B5B3D8(&xmmword_100B5B2D8[v3], 0);
    }

    sub_1001B8CDC(LODWORD(xmmword_100B5B2D8[v3 + 1]) | ((WORD2(xmmword_100B5B2D8[v3 + 1]) | (BYTE6(xmmword_100B5B2D8[v3 + 1]) << 16)) << 32), BYTE7(xmmword_100B5B2D8[v3 + 1]));
  }

  qword_100B5B3F0 = 0;
  *&byte_100B5B3F8 = 0;
}

void sub_1001B8CDC(uint64_t a1, unsigned int a2)
{
  v24 = a1;
  v26 = BYTE6(a1);
  v25 = WORD2(a1);
  if (sub_10000C240())
  {
    sub_10000AF54("LE_RemoveDeviceFromPeriodicAdvList", v3, v4, v5, v6, v7, v8, v9, v23);
    v10 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v28 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (a2 <= 0xF)
  {
    if (*(&xmmword_100B5B400 + 1))
    {
      v11 = sub_100007618(0x10uLL, 0x10200405730B0C9uLL);
      if (v11)
      {
        v12 = v11;
        v13 = sub_100018960(222, sub_1001B993C);
        if (v13)
        {
          v14 = v13;
          if (sub_10000C240())
          {
            sub_10000AF54("Could not remove device from periodic advertising list (%!)", v15, v16, v17, v18, v19, v20, v21, v14);
            v22 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          sub_10000C1E8(v12);
        }

        else
        {
          *(v12 + 6) = v26;
          *(v12 + 2) = v25;
          *v12 = v24;
          *(v12 + 7) = a2;
          *(v12 + 1) = 0;
          if (qword_100B5B418)
          {
            *(qword_100B5B418 + 8) = v12;
            qword_100B5B418 = v12;
          }

          if (!qword_100B5B410)
          {
            qword_100B5B410 = v12;
            qword_100B5B418 = v12;
          }
        }
      }
    }
  }
}

void sub_1001B8EC0()
{
  for (i = 0; i != 15; i += 3)
  {
    if (LODWORD(xmmword_100B5B2D8[i]) == 1)
    {
      v9 = sub_1001B8F98();
      if (v9)
      {
        v10 = v9;
        if (sub_10000C240())
        {
          sub_10000AF54("LE_PeriodicAdv_CreateSyncCancel failed with status %!", v11, v12, v13, v14, v15, v16, v17, v10);
          v18 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_10;
          }
        }
      }

      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("No sync handle found in establishing state", v1, v2, v3, v4, v5, v6, v7, v19);
    v8 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      sub_1000E09C0();
    }
  }
}

uint64_t sub_1001B8F98()
{
  if (sub_10000C240())
  {
    sub_10000AF54("LE_PeriodicAdv_CreateSyncCancel", v0, v1, v2, v3, v4, v5, v6, v29);
    v7 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v31 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (LODWORD(xmmword_100B5B2D8[0]) == 1)
  {
LABEL_5:
    v8 = sub_100018960(219, sub_1001B9774);
    if (v8)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Could not cancel periodic sync (%!)", v9, v10, v11, v12, v13, v14, v15, v8);
        v16 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }

  else
  {
    v17 = -1;
    v18 = &dword_100B5B308;
    while (v17 != 3)
    {
      v19 = *v18;
      v18 += 12;
      ++v17;
      if (v19 == 1)
      {
        if (v17 < 4)
        {
          goto LABEL_5;
        }

        break;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("No Pending Sync to Cancel", v20, v21, v22, v23, v24, v25, v26, v29);
      v27 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 117;
  }

  return v8;
}

double sub_1001B913C(int a1)
{
  v1 = &xmmword_100B5B2D8;
  v2 = 5;
  while (*(v1 + 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      return result;
    }
  }

  if (off_100B5B3E0)
  {
    off_100B5B3E0(v1, 156);
  }

  result = 0.0;
  v1[1] = 0u;
  v1[2] = 0u;
  *v1 = 0u;
  *v1 = 0;
  return result;
}

__int128 *sub_1001B91A8(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  result = &xmmword_100B5B2D8;
  v6 = 5;
  while (*(result + 2) != v4)
  {
    result += 3;
    if (!--v6)
    {
      return result;
    }
  }

  if (off_100B5B3E8)
  {
    v7 = *a1;
    v8 = *(a1 + 2);
    return off_100B5B3E8(result, &v7, a3);
  }

  return result;
}

void sub_1001B9218(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, char a5, int *a6, int a7, __int16 a8, char a9, char a10, char a11, char a12, char a13)
{
  if (sub_1000ABD24(a2))
  {
    v19 = a7;
    for (i = 0; i != 15; i += 3)
    {
      if (LODWORD(xmmword_100B5B2D8[i]) == 1)
      {
        v21 = &xmmword_100B5B2D8[i];
        if (BYTE6(xmmword_100B5B2D8[i]))
        {
          if (a1)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("LE_SyncTransferReceived with error (%!)", v38, v39, v40, v41, v42, v43, v44, a1);
              v45 = sub_10000C050(0x42u);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }

            if (off_100B5B3D8)
            {
              off_100B5B3D8(v21, a1);
            }

            *v21 = 0;
          }

          else
          {
            v46 = &xmmword_100B5B2D8[i];
            *v46 = 2;
            *(v46 + 2) = a4;
            v47 = *a6;
            v48 = *(a6 + 2);
            *(v46 + 22) = *(a6 + 6);
            *(v46 + 10) = v48;
            *(v46 + 4) = v47;
            *(v46 + 23) = a5;
            *(v46 + 14) = a8;
            *(v46 + 15) = a3;
            *(v46 + 8) = v19;
            *(v46 + 36) = a9;
            *(v46 + 37) = a10;
            *(v46 + 38) = a11;
            *(v46 + 39) = a12;
            *(v46 + 40) = a13;
            v49 = off_100B5B3D8;
            if (off_100B5B3D8)
            {

              v49(v21, 0);
            }
          }

          return;
        }
      }
    }

    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("LE_SyncTransferReceived, no sync handle found", v22, v23, v24, v25, v26, v27, v28, v50);
    v29 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_8;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("LE_SyncTransferReceived, invalid connection handle: status %! ignoring", v30, v31, v32, v33, v34, v35, v36, a1);
    v37 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      sub_10080F604();
    }
  }
}

uint64_t sub_1001B9450()
{
  if (sub_10000C240())
  {
    sub_10000AF54("LE_PreriodicAdv_TerminateAll", v0, v1, v2, v3, v4, v5, v6, v16);
    v7 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v18 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v8 = xmmword_100B5B2D8 + 2;
  v9 = 5;
  do
  {
    v10 = *(v8 - 1);
    if (v10 == 1)
    {
      if (!sub_100018960(219, sub_1001B9774, v1, v2, v3, v4, v5, v6, v16))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v10 != 2)
      {
        goto LABEL_13;
      }

      v11 = sub_100018960(220, sub_1001B9650, v1, v2, v3, v4, v5, v6, *v8);
      *(v8 - 1) = 3;
      if (!v11)
      {
        goto LABEL_13;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Unable to terminate all syncs. Failure with sync handle: %d (%!)", v12, v1, v2, v3, v4, v5, v6, *v8);
      v13 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = sub_10000C0FC();
        *buf = 136446466;
        v18 = v14;
        v19 = 1024;
        v20 = 0xFFFF;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
      }
    }

LABEL_13:
    v8 += 24;
    --v9;
  }

  while (v9);
  return 0;
}

double sub_1001B9650(int a1)
{
  byte_100B5B420 = 0;
  v2 = xmmword_100B5B2D8;
  v3 = 5;
  while (*v2 != 3)
  {
    v2 += 3;
    if (!--v3)
    {
      return result;
    }
  }

  v4 = sub_10000C240();
  if (a1)
  {
    if (v4)
    {
      sub_10000AF54("Terminate sync command complete (FAIL)", v5, v6, v7, v8, v9, v10, v11, v15);
      v13 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    if (off_100B5B3E0)
    {
      off_100B5B3E0(v2, a1);
    }
  }

  else
  {
    if (v4)
    {
      sub_10000AF54("Terminate sync command complete (SUCCESS)", v5, v6, v7, v8, v9, v10, v11, v15);
      v14 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    if (off_100B5B3E0)
    {
      off_100B5B3E0(v2, 0);
    }

    result = 0.0;
    v2[1] = 0u;
    v2[2] = 0u;
    *v2 = 0u;
    *v2 = 0;
    --byte_100B5B3D0;
  }

  return result;
}

double sub_1001B9774(int a1)
{
  if (a1)
  {
    v1 = 0;
    while (LODWORD(xmmword_100B5B2D8[v1]) != 1)
    {
      v1 += 3;
      if (v1 == 15)
      {
        return result;
      }
    }

    sub_1001B8CDC(*(&qword_100B5B3F0 + 2) | ((HIWORD(qword_100B5B3F0) | (byte_100B5B3F8 << 16)) << 32), BYTE1(qword_100B5B3F0));
    result = 0.0;
    xmmword_100B5B2E8 = 0u;
    unk_100B5B2F8 = 0u;
    xmmword_100B5B2D8[0] = 0u;
    LODWORD(xmmword_100B5B2D8[v1]) = 0;
    qword_100B5B3F0 = 0;
    *&byte_100B5B3F8 = 0;
  }

  return result;
}

void *sub_1001B97FC(unsigned int a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("LE_SetPeriodicAdvListSize", v2, v3, v4, v5, v6, v7, v8, *v11);
    v9 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 136446210;
      *&v11[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", v11, 0xCu);
    }
  }

  LOWORD(xmmword_100B5B400) = a1;
  if (*(&xmmword_100B5B400 + 1))
  {
    sub_10000C1E8(*(&xmmword_100B5B400 + 1));
  }

  result = sub_100007618(8 * a1, 0x100004000313F17uLL);
  *(&xmmword_100B5B400 + 1) = result;
  BYTE2(xmmword_100B5B400) = 0;
  qword_100B5B418 = 0;
  qword_100B5B410 = 0;
  return result;
}

double sub_1001B9904()
{
  if (*(&xmmword_100B5B400 + 1))
  {
    sub_10000C1E8(*(&xmmword_100B5B400 + 1));
  }

  result = 0.0;
  xmmword_100B5B400 = 0u;
  *&qword_100B5B410 = 0u;
  return result;
}

void sub_1001B993C(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("leRemoveFromPeriodicAdvListCb", v2, v3, v4, v5, v6, v7, v8, v23);
    v9 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v25 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Error removing device from periodic advertiser list %!", v10, v11, v12, v13, v14, v15, v16, a1);
      v17 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    if (!qword_100B5B410)
    {
      sub_1000D660C();
    }

    if (BYTE2(xmmword_100B5B400))
    {
      v18 = *(&xmmword_100B5B400 + 1);
      v19 = (BYTE2(xmmword_100B5B400) - 1);
      v20 = *(&xmmword_100B5B400 + 1);
      v21 = BYTE2(xmmword_100B5B400);
      while (*v20 != *qword_100B5B410)
      {
        --v19;
        ++v20;
        if (!--v21)
        {
          goto LABEL_18;
        }
      }

      --BYTE2(xmmword_100B5B400);
      v22 = BYTE2(xmmword_100B5B400);
      if (v19)
      {
        *v20 = *(*(&xmmword_100B5B400 + 1) + 8 * BYTE2(xmmword_100B5B400));
        v18 = *(&xmmword_100B5B400 + 1);
        v22 = BYTE2(xmmword_100B5B400);
      }

      *(v18 + 8 * v22) = 0;
    }
  }

LABEL_18:
  sub_1001B9AD0();
}

void sub_1001B9AD0()
{
  if (qword_100B5B410)
  {
    v0 = *(qword_100B5B410 + 8);
    sub_10000C1E8(qword_100B5B410);
    qword_100B5B410 = v0;
    if (!v0)
    {
      qword_100B5B418 = 0;
    }
  }

  else
  {

    sub_1000D660C();
  }
}

void sub_1001B9B2C(int a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100223E78(a1);

  sub_100224FE0(v6, a2, a4);
}

uint64_t sub_1001B9B6C(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _WORD *a8, uint64_t a9)
{
  if (a1 && a5 && a6 && a8 && a9)
  {
    v17 = sub_1001BBBD8(0x120uLL, 0x10B00409F7A8307uLL);
    if (v17)
    {
      v18 = v17;
      v17[64] = 200;
      v17[38] = 200;
      v17[37] = *(sub_1003045A0(0x17u) + 8);
      *(v18 + 8) = 0;
      *(v18 + 40) = 0;
      *(v18 + 4) = 1;
      v19 = *(a1 + 4);
      *(v18 + 104) = *a1;
      *(v18 + 108) = v19;
      *(v18 + 276) = 1;
      *(v18 + 136) = a6;
      *(v18 + 56) = 0;
      *(v18 + 260) = -1;
      *(v18 + 152) = a5;
      *(v18 + 272) = a3;
      if (a3 || a7)
      {
        v20 = sub_1001BBBD8(0x9BuLL, 0x100004010079EEDuLL);
        *(v18 + 64) = v20;
        if (!v20)
        {
          v23 = 106;
          goto LABEL_26;
        }

        if (a3 == 2)
        {
          v20[59] = 1;
        }

        if (!a7)
        {
          v23 = 1721;
          goto LABEL_26;
        }

        *(v18 + 144) = a7;
      }

      if (a4)
      {
        v21 = *(a4 + 8);
        if (v21 >= 5)
        {
          sub_1000D660C();
          v21 = *(a4 + 8);
        }

        memmove((v18 + 160), *a4, 24 * v21);
        v22 = *(a4 + 8);
      }

      else
      {
        v22 = 0;
      }

      *(v18 + 256) = v22;
      v23 = sub_10028F454(sub_1001B9D80, sub_1001B9E90, sub_1001B9EEC, a2, a1, &unk_100AE5308, v18, &unk_1008A3480);
      if (!v23)
      {
        sub_100223DE4(v18);
        *a8 = *(v18 + 280);
        ++dword_100BCE28C;
        return v23;
      }

LABEL_26:
      sub_100223F08(*(v18 + 280));
      return v23;
    }

    return 104;
  }

  else
  {
    sub_1000D660C();
    return 101;
  }
}

void sub_1001B9D80(int a1, unsigned int a2, unsigned __int16 a3, uint64_t a4)
{
  v7 = sub_100223E78(a1);
  v8 = v7;
  if (a4 || !v7)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("L2CAPConnectCB failed with result %!", v12, v13, v14, v15, v16, v17, v18, a4);
      v19 = sub_10000C050(0x17u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100810070(v19);
      }
    }
  }

  else
  {
    *(v7 + 69) = 2;
    v7[36] = a3;
    v7[38] = a3;
    v7[37] = a2;
    *(v7 + 1) = sub_1001BBBD8(a2, 0x2D93545DuLL);
    if (*(v8 + 272))
    {
      v9 = *(v8 + 144);
      v10 = *(v8 + 280);
      v11 = *(*(v8 + 64) + 59);

      v9(v10, v11);
      return;
    }

    a4 = sub_1002245E8(v8, 200);
  }

  if (a4)
  {
    sub_1002240F8(v8, a4);
  }
}

void sub_1001B9E90(int a1, uint64_t a2)
{
  v3 = sub_100223E78(a1);
  if (v3)
  {
    if (!a2)
    {
      if (*(v3 + 69) <= 3u)
      {
        a2 = 0;
      }

      else
      {
        a2 = 1709;
      }
    }

    sub_100223FA8(v3, a2);
  }
}

void sub_1001B9EEC(int a1, void *a2, size_t a3)
{
  v5 = sub_100223E78(a1);

  sub_100224890(v5, a2, a3);
}

uint64_t sub_1001B9F2C(unsigned __int8 *a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("Beginning Bud Swap 2.0 procedure for %:", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x59u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v61 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v59 = 0;
  if (sub_10023DB58(a1, &v59))
  {
    goto LABEL_5;
  }

  v58 = 0;
  v57 = 0;
  if (sub_1001F46FC(a1, &v57))
  {
    v20 = sub_100308E80(a1);
    if (!v20)
    {
      sub_10029E7D4(v59, 0, 0, 1);
      if (sub_10000C240())
      {
        sub_10000AF54("Media CIDs are not connected, stalling all L2CAP queues for %:", v30, v31, v32, v33, v34, v35, v36, a1);
        v29 = sub_10000C050(0x59u);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }
      }

      goto LABEL_21;
    }

    LODWORD(v21) = 0;
    goto LABEL_14;
  }

  LOWORD(v58) = v57;
  v20 = sub_100308E80(a1);
  v21 = 1;
  if (v20)
  {
LABEL_14:
    *(&v58 | (2 * v21)) = v20;
    v21 = (v21 + 1);
  }

  sub_10029E7D4(v59, &v58, v21, 1);
  if (sub_10000C240())
  {
    sub_10000AF54("%d excluded media CIDs are connected, stalling all non-media CID L2CAP queues for %:", v22, v23, v24, v25, v26, v27, v28, v21);
    v29 = sub_10000C050(0x59u);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
LABEL_20:
      v37 = sub_10000C0FC();
      *buf = 136446210;
      v61 = v37;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

LABEL_21:
  sub_10029F9F0(sub_1001BA2B0);
  v38 = sub_100255698(v59);
  if (!v38)
  {
LABEL_5:
    if (sub_10000C240())
    {
      sub_10000AF54("Couldn't begin Bud Swap 2.0 procedure for %:, couldn't find the device", v10, v11, v12, v13, v14, v15, v16, a1);
      v17 = sub_10000C050(0x59u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    sub_1000D660C();
    return 120;
  }

  v39 = v38;
  if (sub_1002A18AC())
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failure in sending LMP Halt command to chipset for lmHandle %d with BT address %:", v40, v41, v42, v43, v44, v45, v46, v39);
      v47 = sub_10000C050(0x59u);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v18 = 114;
    sub_10018AAAC(a1, 114);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Successfully sent LMP Halt command to chipset for lmHandle %d with BT address %:", v48, v49, v50, v51, v52, v53, v54, v39);
      v55 = sub_10000C050(0x59u);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = sub_10000C0FC();
        *buf = 136446210;
        v61 = v56;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    return 0;
  }

  return v18;
}

void sub_1001BA2B0(uint64_t a1, char a2)
{
  v4 = sub_1000ABB80(a1);
  if (v4)
  {
    v5 = v4;
    v6 = sub_10000C240();
    if (a2)
    {
      if (v6)
      {
        sub_10000AF54("Chipset confirmed LMP Resume complete, sending SwapCompleteCfm Message to %:", v7, v8, v9, v10, v11, v12, v13, (v5 + 3));
        v14 = sub_10000C050(0x59u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v45 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v15 = sub_10018ABE8(v5 + 48);
      if (v15)
      {
        v16 = v15;
        if (sub_10000C240())
        {
          sub_10000AF54("BT_AACP_CLIENT_SendSwapCompleteCfmMsg failed due to %u", v17, v18, v19, v20, v21, v22, v23, v16);
          v24 = sub_10000C050(0x59u);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
LABEL_19:
            sub_10080F6C8();
          }
        }
      }
    }

    else
    {
      if (v6)
      {
        sub_10000AF54("Chipset confirmed LMP Halt complete, sending SwapImminentCfm Message to %:", v7, v8, v9, v10, v11, v12, v13, (v5 + 3));
        v33 = sub_10000C050(0x59u);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v45 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v34 = sub_10018AAAC(v5 + 48, 0);
      if (v34)
      {
        v35 = v34;
        if (sub_10000C240())
        {
          sub_10000AF54("BT_AACP_CLIENT_SendSwapImminentCfmMsg failed due to %u", v36, v37, v38, v39, v40, v41, v42, v35);
          v43 = sub_10000C050(0x59u);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_19;
          }
        }
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Received LMP Halt Event but couldn't find a connection handle for lmhandle %d with lmpHaltStatus %d", v25, v26, v27, v28, v29, v30, v31, a1);
    v32 = sub_10000C050(0x59u);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_1001BA4EC(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Chipset returned error from LMP Halt command: %d", v2, v3, v4, v5, v6, v7, v8, a1);
      v9 = sub_10000C050(0x59u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Chipset successfully received the LMP Halt command", v10, v11, v12, v13, v14, v15, v16, v18);
    v17 = sub_10000C050(0x59u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v20 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }
}

uint64_t sub_1001BA5F0(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("Buds have signaled Bud Swap 2.0 has completed on their side, beginning closing procedures for %:", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x59u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v40 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v38 = 0;
  if (sub_10023DB58(a1, &v38) || (sub_10029E7D4(v38, 0, 0, 0), v19 = sub_100255698(v38), !v19))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Couldn't complete Bud Swap 2.0 procedure for %:, couldn't find the device", v10, v11, v12, v13, v14, v15, v16, a1);
      v17 = sub_10000C050(0x59u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 120;
  }

  else
  {
    v20 = v19;
    if (sub_1002A18AC())
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Failure in sending LMP Resume command to chipset for lmHandle %d with BT address %:", v21, v22, v23, v24, v25, v26, v27, v20);
        v28 = sub_10000C050(0x59u);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      return 114;
    }

    else
    {
      result = sub_10000C240();
      if (result)
      {
        sub_10000AF54("Successfully sent LMP Resume command to chipset for lmHandle %d with BT address %:", v29, v30, v31, v32, v33, v34, v35, v20);
        v36 = sub_10000C050(0x59u);
        result = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
        if (result)
        {
          v37 = sub_10000C0FC();
          *buf = 136446210;
          v40 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001BA814(int a1)
{
  result = sub_100084230();
  if (a1 == 162 && (result - 3000) <= 0x3E7)
  {
    sub_100304AF8("------------------------- Triggering BT FW logs capture ------------------------------\n");
    v3 = byte_100B5B53C;

    return sub_1001A63E4("FatalBTError", 1, v3, 0);
  }

  return result;
}

double sub_1001BA88C(uint64_t a1, const char *a2)
{
  sub_1000E771C(a1);
  sub_1001BA814(a1);
  sub_1001C3FC8();
  if (os_variant_has_internal_diagnostics())
  {
    _os_log_pack_size();
    __chkstk_darwin();
    __error();
    v4 = _os_log_pack_fill();
    sub_1000CDD74(a1);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = "?";
    }

    if (a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = "none";
    }

    sub_1001BAA40(v4, a1, v6, v7);
  }

  else
  {
    _os_log_pack_size();
    __chkstk_darwin();
    __error();
    v8 = _os_log_pack_fill();
    v9 = "none";
    if (a2)
    {
      v9 = a2;
    }

    *v8 = 67109378;
    *(v8 + 4) = a1;
    *(v8 + 8) = 2082;
    *(v8 + 10) = v9;
  }

  os_log_create("com.apple.bluetooth", "CBCrash");
  qword_100B55118 = os_log_pack_send_and_compose();
  v10 = abort_with_payload();
  return sub_1001BAA40(v10, v11, v12, v13);
}

double sub_1001BAA40(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *&result = 67109634;
  *a1 = 67109634;
  *(a1 + 4) = a2;
  *(a1 + 8) = 2082;
  *(a1 + 10) = a3;
  *(a1 + 18) = 2082;
  *(a1 + 20) = a4;
  return result;
}

void sub_1001BAA68(uint64_t a1, const char *a2)
{
  if (os_variant_has_internal_diagnostics())
  {
    sub_1001BA88C(a1, a2);
  }

  sub_1001BAAB8(a1, a2);
  sub_1001BAB28(a1);
  _exit(1);
}

uint64_t sub_1001BAAB8(uint64_t a1, uint64_t a2)
{
  if (os_variant_has_internal_diagnostics())
  {
    sub_100304AF8("Bluetooth error - restarting { build=internal, reason=%d, description=%!, context=%s }", a1, a1, a2);
  }

  else
  {
    sub_100304AF8("Bluetooth error - restarting { build=release, reason=%d, context=%s }");
  }

  return sub_1001C3FC8();
}

void sub_1001BAB28(int a1)
{
  if ((a1 == 3703 || a1 == 3602) && sub_10009B9DC() == 7 && sub_100084230() == 25)
  {
    if (sub_10022DE08())
    {
      sub_100304AF8("Error: Bluetooth FLR Transport hard reset failed");
    }

    sub_100304AF8("Bluetooth FLR Transport hard reset done");
  }
}

void sub_1001BAB98(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  sub_1001BAAB8(a1, a2);
  sub_1001BAB28(v2);
  _exit(1);
}

uint64_t sub_1001BABC0(uint64_t a1)
{
  if (!dword_100B5B42C)
  {
    mach_timebase_info(&dword_100B5B428);
    v2 = dword_100B5B42C;
    v3 = dword_100B5B42C;
    v4 = dword_100B5B428;
    while (v4)
    {
      if (v4 > v3)
      {
        v5 = v4 % v3;
        v4 = v3;
        v3 = v5;
      }

      v6 = v3;
      v3 = v4;
      v7 = v6 == v4;
      v4 = v6;
      if (v7)
      {
        LODWORD(v3) = 1;
        break;
      }
    }

    v8 = dword_100B5B42C / v3;
    dword_100B5B428 /= v3;
    dword_100B5B42C /= v3;
    if ((v2 / v3) >> 1 >= 0x863)
    {
      sub_1000D660C();
      v8 = dword_100B5B42C;
    }

    dword_100B5B42C = 1000000 * v8;
  }

  result = mach_continuous_time();
  v10 = result * dword_100B5B428 / dword_100B5B42C;
  *(a1 + 4) = v10 % 0x3E8;
  *a1 = v10 / 0x3E8;
  return result;
}

uint64_t sub_1001BACB0()
{
  if (!dword_100B5B42C)
  {
    mach_timebase_info(&dword_100B5B428);
    v0 = dword_100B5B42C;
    v1 = dword_100B5B42C;
    v2 = dword_100B5B428;
    while (v2)
    {
      if (v2 > v1)
      {
        v3 = v2 % v1;
        v2 = v1;
        v1 = v3;
      }

      v4 = v1;
      v1 = v2;
      v5 = v4 == v2;
      v2 = v4;
      if (v5)
      {
        LODWORD(v1) = 1;
        break;
      }
    }

    v6 = dword_100B5B42C / v1;
    dword_100B5B428 /= v1;
    dword_100B5B42C /= v1;
    if (v0 / v1 >= 0x418937)
    {
      sub_1000D660C();
      v6 = dword_100B5B42C;
    }

    dword_100B5B42C = 1000 * v6;
  }

  return mach_absolute_time() * dword_100B5B428 / dword_100B5B42C;
}

uint64_t sub_1001BAD68(_DWORD *a1)
{
  v5.tv_sec = 0;
  *&v5.tv_usec = 0;
  v4 = 0;
  result = gettimeofday(&v5, &v4);
  if (!result)
  {
    if (HIDWORD(v4))
    {
      v3 = 3600;
    }

    else
    {
      v3 = 0;
    }

    *a1 = v3 + 60 * v4;
  }

  return result;
}

uint64_t sub_1001BADC4(void *a1)
{
  v3 = 0;
  result = sub_1000D42DC(&v3 + 1, &v3);
  *a1 = __ROR8__(1000 * v3 + 1000000000 * SHIDWORD(v3), 32);
  return result;
}

uint64_t sub_1001BAE20(void *a1)
{
  result = mach_absolute_time();
  *a1 = __ROR8__(result, 32);
  return result;
}

double sub_1001BAE4C(mach_timebase_info *a1)
{
  info = 0;
  mach_timebase_info(&info);
  result = *&info;
  *a1 = info;
  return result;
}

double sub_1001BAE88(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4, double a5, double a6, double a7)
{
  v7 = __ROR8__(a1, 32);
  v8 = __ROR8__(a2, 32);
  v9 = v7 >= v8;
  v10 = v7 - v8;
  if (v9)
  {
    LODWORD(a6) = *a3;
    LODWORD(a7) = a3[1];
    result = *&a6 / *&a7 * v10;
    *a4 = __ROR8__(result, 32);
  }

  return result;
}

uint64_t sub_1001BAEDC(void *key, size_t keyLength, const void *a3, unsigned int a4, void *a5, unsigned int a6)
{
  dataOutMoved = 0;
  cryptorRef = 0;
  v10 = CCCryptorCreate(1u, 0, 0, key, keyLength, 0, &cryptorRef);
  if (v10)
  {
    printf("Could not create cryptor : %d\n", v10);
    return 1041;
  }

  else
  {
    v12 = CCCryptorUpdate(cryptorRef, a3, a4, a5, a6, &dataOutMoved);
    if (v12)
    {
      printf("Failed to encrypt : %d (need %d, got %zu)\n", v12, a6, dataOutMoved);
      CCCryptorRelease(cryptorRef);
      return 1042;
    }

    else
    {
      CCCryptorRelease(cryptorRef);
      if (dataOutMoved == a6)
      {
        return 0;
      }

      else
      {
        printf("Incorrect checksum size %ld, expecting %d\n", dataOutMoved, a6);
        return 1043;
      }
    }
  }
}

uint64_t sub_1001BAFD4(void *a1, size_t a2, const void *a3, unsigned int a4, void *a5, unsigned int a6)
{
  v41[0] = 0;
  v41[1] = 0;
  v12 = a4 & 0xF;
  v40[0] = 0;
  v40[1] = 0;
  if (a4)
  {
    v13 = a4 & 0xF;
  }

  else
  {
    v13 = 16;
  }

  v39.i64[1] = 0;
  *(v39.i64 + 1) = 0;
  if (sub_1000456EC(a1, a2, v41, 0x10u, v40, 0x10u))
  {
    return 1045;
  }

  LOBYTE(v15) = 0;
  v16 = 15;
  do
  {
    v17 = *(v40 + v16);
    v39.i8[v16] = v15 | (2 * v17);
    v15 = v17 >> 7;
    --v16;
  }

  while (v16);
  v38 = 0uLL;
  v39.i8[0] = v15 | (2 * LOBYTE(v40[0]));
  if (SLOBYTE(v40[0]) < 0)
  {
    v18 = veorq_s8(v39, xmmword_1008A34D0);
  }

  else
  {
    v18 = v39;
  }

  v38 = v18;
  LOBYTE(v19) = 0;
  v20 = 15;
  do
  {
    v21 = v38.u8[v20];
    v39.i8[v20] = v19 | (2 * v21);
    v19 = v21 >> 7;
    --v20;
  }

  while (v20);
  v37 = 0uLL;
  v39.i8[0] = v19 | (2 * v38.i8[0]);
  __dst = a5;
  if (v38.i8[0] < 0)
  {
    v22 = veorq_s8(v39, xmmword_1008A34D0);
  }

  else
  {
    v22 = v39;
  }

  v37 = v22;
  v23 = a4 >> 4;
  if (v12)
  {
    ++v23;
  }

  if (a4)
  {
    v24 = v23;
  }

  else
  {
    v24 = 1;
  }

  v25 = malloc_type_calloc(v24, 0x10uLL, 0x2CD82863uLL);
  v26 = malloc_type_calloc(v24 + 1, 0x10uLL, 0x9505F202uLL);
  v27 = v26;
  if (v25 && v26)
  {
    memcpy(v25, a3, a4);
    v28 = (16 * v24 - 16) & 0xF0;
    v29 = &v25[v28];
    if (v13)
    {
      v29->i8[v13] |= 0x80u;
      v30 = &v37;
    }

    else
    {
      v30 = &v38;
    }

    v31 = 0;
    v32 = 0;
    *v29 = veorq_s8(*v29, *v30);
    v33 = v27 + 16;
    if ((v24 & 0xFE) != 0)
    {
      v24 = v24;
    }

    else
    {
      v24 = 1;
    }

    while (1)
    {
      v34 = v31;
      v35 = 16;
      do
      {
        v25[v34] ^= v27[v34];
        ++v34;
        --v35;
      }

      while (v35);
      if (sub_1000456EC(a1, a2, &v25[16 * v32], 0x10u, &v33[16 * v32], 0x10u))
      {
        break;
      }

      ++v32;
      v31 += 16;
      if (v32 == v24)
      {
        memcpy(__dst, &v33[v28], a6);
        free(v27);
        free(v25);
        return 0;
      }
    }

    free(v27);
    free(v25);
    return 1047;
  }

  else
  {
    sub_100304AF8("Could not allocate memory for the blocks");
    if (v25)
    {
      free(v25);
    }

    if (v27)
    {
      free(v27);
    }

    return 1046;
  }
}

uint64_t sub_1001BB2BC(uint64_t a1, int a2, uint64_t a3, int a4, void *a5)
{
  memset(__src, 0, sizeof(__src));
  v16 = 128;
  v8 = ccec_cp_256();
  __chkstk_darwin();
  v10 = (&v15 - v9);
  bzero(&v15 - v9, v9);
  __chkstk_darwin();
  v12 = (&v15 - v11);
  bzero(&v15 - v11, v11);
  result = 101;
  if (a2 == 64 && a4 == 96)
  {
    *v12 = v8;
    if (ccec_make_pub())
    {
      sub_100304AF8("Failed to ccec_make_pub.\n");
      return 1048;
    }

    else
    {
      *v10 = v8;
      if (ccec_make_priv())
      {
        sub_100304AF8("Failed to ccec_make_priv.\n");
        return 1049;
      }

      else
      {
        v14 = ccecdh_compute_shared_secret();
        if (v14)
        {
          sub_100304AF8("Failed to ccecdh_compute_shared_secret (err=%d), outSize=%d.\n", v14, v16);
          return 1050;
        }

        else
        {
          memcpy(a5, __src, v16);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001BB4B4(_OWORD *a1, _OWORD *a2)
{
  memset(v28, 0, sizeof(v28));
  if (byte_100BC9C08 == 1)
  {
    sub_100304AF8("USING DEBUG KEYS\n");
    v4 = 0;
    *a1 = xmmword_1008A3520;
    a1[1] = unk_1008A3530;
    v5 = a1 + 2;
    a1[2] = xmmword_1008A3540;
    a1[3] = unk_1008A3550;
    *a2 = xmmword_1008A3520;
    a2[1] = unk_1008A3530;
    a2[2] = xmmword_1008A3540;
    a2[3] = unk_1008A3550;
    v6 = a2 + 4;
    v7 = 31;
    a2[4] = xmmword_1008A3500;
    a2[5] = unk_1008A3510;
    do
    {
      v8 = *(a1 + v4);
      *(a1 + v4) = *(a1 + v7);
      *(a1 + v7) = v8;
      ++v4;
      --v7;
    }

    while (v4 != 16);
    v9 = 0;
    v10 = a1 + 63;
    do
    {
      v11 = *(v5 + v9);
      *(v5 + v9) = *v10;
      *v10-- = v11;
      ++v9;
    }

    while (v9 != 16);
    v12 = 0;
    v13 = 31;
    do
    {
      v14 = *(a2 + v12);
      *(a2 + v12) = *(a2 + v13);
      *(a2 + v13) = v14;
      ++v12;
      --v13;
    }

    while (v12 != 16);
    v15 = 0;
    v16 = a2 + 2;
    v17 = a2 + 63;
    do
    {
      v18 = *(v16 + v15);
      *(v16 + v15) = *v17;
      *v17-- = v18;
      ++v15;
    }

    while (v15 != 16);
    v19 = 0;
    v20 = a2 + 95;
    do
    {
      v21 = *(v6 + v19);
      *(v6 + v19) = *v20;
      *v20-- = v21;
      ++v19;
    }

    while (v19 != 16);
    return 0;
  }

  else
  {
    key = 0;
    ccec_cp_256();
    __chkstk_darwin();
    bzero(&v26 - v23, v23);
    if (ccrng())
    {
      key = ccec_generate_key();
      if (key)
      {
        sub_100304AF8("Failed to ccec_generate_key.\n");
      }

      else
      {
        if ((((cczp_bitlen() + 7) >> 2) | 1) == 0x41)
        {
          ccec_x963_export();
          v24 = *(&v28[1] + 1);
          *a1 = *(v28 + 1);
          a1[1] = v24;
          v25 = *(&v28[3] + 1);
          a1[2] = *(&v28[2] + 1);
          a1[3] = v25;
          if (3 * ((cczp_bitlen() + 7) >> 3) == 96)
          {
            ccec_x963_export();
            memmove(a2, v28 + 1, 0x60uLL);
            return 0;
          }
        }

        sub_100304AF8("ccec_x963_export_size is %d.\n");
      }
    }

    else
    {
      sub_100304AF8("ccrng failed: %d\n");
    }

    return 1051;
  }
}

void sub_1001BB790()
{
  if (qword_100B5B560 != -1)
  {
    sub_100812AD0();
  }

  if (!atomic_fetch_add(&dword_100B5B444, 1u))
  {
    v0 = qword_100B5B438;

    dispatch_async(v0, &stru_100AE53C8);
  }
}

void sub_1001BB7F8(id a1)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"AssertName", @"com.apple.BTStack.ForceWake");
  IOPMAssertionDeclareSystemActivityWithProperties();
  CFRelease(Mutable);
}

void sub_1001BB87C()
{
  if (!atomic_load(&dword_100B5B444))
  {
    sub_1000D660C();
  }

  if (atomic_fetch_add(&dword_100B5B444, 0xFFFFFFFF) == 1)
  {
    v1 = qword_100B5B438;

    dispatch_async(v1, &stru_100AE5408);
  }
}

void sub_1001BB8E8(id a1)
{
  if (dword_100B5B448)
  {
    IOPMAssertionRelease(dword_100B5B448);
    dword_100B5B448 = 0;
  }
}

void sub_1001BB918(const char *a1)
{
  if (strlen(a1))
  {
    __strncpy_chk();
  }

  if (qword_100B5B568 != -1)
  {
    sub_100812AE4();
  }

  v1 = qword_100B5B570;

  dispatch_async(v1, &stru_100AE5448);
}

void sub_1001BB998(id a1)
{
  if (!dword_100B5B514)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v2 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"com.apple.BTStack.AbortSleep.%s", &xmmword_100B5B44C);
    CFDictionaryAddValue(Mutable, @"AssertName", v2);
    IOPMAssertionDeclareSystemActivityWithProperties();
    CFRelease(Mutable);
    CFRelease(v2);
  }
}

void sub_1001BBA60()
{
  if (qword_100B5B568 != -1)
  {
    sub_100812AE4();
  }

  v1 = qword_100B5B570;

  dispatch_async(v1, &stru_100AE5488);
}

void sub_1001BBAAC(id a1)
{
  if (dword_100B5B514)
  {
    IOPMAssertionRelease(dword_100B5B514);
    dword_100B5B514 = 0;
    xmmword_100B5B44C = 0u;
    unk_100B5B45C = 0u;
    xmmword_100B5B46C = 0u;
    unk_100B5B47C = 0u;
    xmmword_100B5B48C = 0u;
    unk_100B5B49C = 0u;
    xmmword_100B5B4AC = 0u;
    unk_100B5B4BC = 0u;
    xmmword_100B5B4CC = 0u;
    unk_100B5B4DC = 0u;
    xmmword_100B5B4EC = 0u;
    unk_100B5B4FC = 0u;
    qword_100B5B50C = 0;
  }
}

uint64_t sub_1001BBB30(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
    v2 = 0x20000;
    if (v1)
    {
      v3 = *(v1 + 8);
      if (v3)
      {
        v2 = v3;
      }

      else
      {
        v2 = 0x20000;
      }
    }
  }

  else
  {
    v2 = 0x20000;
  }

  zone = malloc_create_zone(v2, 0);
  qword_100B5B528 = zone;
  if (!zone)
  {
    return 104;
  }

  malloc_set_zone_name(zone, "BTStack");
  return 0;
}

uint64_t sub_1001BBB94()
{
  malloc_destroy_zone(qword_100B5B528);
  qword_100B5B528 = 0;
  return 0;
}

void *sub_1001BBBD8(size_t size, malloc_type_id_t type_id)
{
  if (HIDWORD(size))
  {
    return 0;
  }

  else
  {
    return malloc_type_zone_calloc(qword_100B5B528, 1uLL, size, type_id);
  }
}

uint64_t sub_1001BBC00()
{
  bzero(__buf, 0x400uLL);
  v6 = 0;
  bzero(v7, 0x400uLL);
  sub_1000D42DC(&v6 + 1, &v6);
  result = open("/dev/uart.log", 0);
  if ((result & 0x80000000) == 0)
  {
    v1 = result;
    if (qword_100B5B978 != -1)
    {
      sub_100812B0C();
    }

    __strlcat_chk();
    __strlcat_chk();
    v2 = open(v7, 521, 420);
    if (v2 < 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = v2;
      dprintf(v2, "START DUMP : %d.%d\n", HIDWORD(v6), v6);
      v4 = read(v1, __buf, 0x400uLL);
      if (v4 >= 1)
      {
        for (i = v4; i > 0; i = read(v1, __buf, 0x400uLL))
        {
          write(v3, __buf, i);
        }
      }

      close(v1);
    }

    return close(v3);
  }

  return result;
}

uint64_t sub_1001BBD6C(uint64_t result, unsigned int a2)
{
  if (byte_100B5B53C == 1)
  {
    v13 = v2;
    v14 = v3;
    v5 = result;
    if (dword_100B5B530)
    {
      sub_10002242C(dword_100B5B530);
    }

    if (a2 >= 7)
    {
      v6 = v5[2] == 27 && v5[3] == 3;
      if (v6 && v5[6] == 255)
      {
        sub_100304AF8("Hardward Core dump complete, reporting to daemon");
        sub_100241A30(245);
      }
    }

    if (sub_10002195C(sub_1001BBF44, 0, 100, &dword_100B5B530))
    {
      sub_100304AF8("Could not register timeout for CoreDump abort.\n");
    }

    if ((byte_100B5B534 & 1) == 0)
    {
      byte_100B5B534 = 1;
      sub_100304AF8("Hardware Core dump starts\n");
    }

    ++dword_100B5B538;
    if ((byte_100B5B980 & 1) == 0)
    {
      v12 = 0;
      v11 = 0;
      sub_1000D42DC(&v12, &v11);
      v9 = v12;
      v10 = v11;
      v7 = gmtime(&v9);
      strftime(byte_100B5BA81, 0x3CuLL, "%Y_%m_%d_%H_%M_%S", v7);
      if (qword_100B5B978 != -1)
      {
        sub_100812B0C();
      }

      __sprintf_chk(byte_100B5B981, 0, 0x100uLL, "%s/bluetoothd-FWCOREDUMP_%s.log", byte_100B5B578, byte_100B5BA81);
      byte_100B5B980 = 1;
    }

    result = open(byte_100B5B981, 521, 420);
    if ((result & 0x80000000) == 0)
    {
      v8 = result;
      write(result, v5, a2);
      return close(v8);
    }
  }

  return result;
}

void sub_1001BBF44()
{
  sub_100304AF8("Hardward Core dump complete, reporting to daemon");

  sub_100241A30(245);
}

__n128 sub_1001BBFA0(__int128 *a1, __n128 *a2)
{
  xmmword_100B5B53D = *a1;
  result = *a2;
  xmmword_100B5B54D = *a2;
  return result;
}

uint64_t sub_1001BBFC4(const void *a1, int a2, uint64_t a3, int a4)
{
  result = 101;
  if (a2 == 16 && a4 == 7)
  {
    v8 = 0uLL;
    result = sub_1001BAEDC(&xmmword_100B5B54D, 0x10uLL, a1, 0x10u, &v8, 0x10u);
    if (!result)
    {
      if (*(&v8 + 7) == *(&xmmword_100B5B53D + 7) && HIBYTE(v8) == HIBYTE(xmmword_100B5B53D))
      {
        result = 0;
        *a3 = v8;
        *(a3 + 4) = WORD2(v8);
        *(a3 + 6) = BYTE6(v8);
      }

      else
      {
        return 131;
      }
    }
  }

  return result;
}

void sub_1001BC148(id a1)
{
  NSStartSearchPathEnumerationPrivate();
  NSGetNextSearchPathEnumeration();

  __strlcat_chk();
}

void sub_1001BC1BC(uint64_t a1, int *a2, unsigned int a3)
{
  if (a1 != 31)
  {
    sub_1000D660C();
  }

  if (sub_10000C240())
  {
    sub_10000AF54("_attClassicConnectionInd on psm %x, addr %:, cid %x", v6, v7, v8, v9, v10, v11, v12, a1);
    v13 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v45 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v14 = sub_1000E1FE8(a2);
  if (v14)
  {
    v15 = v14;
    if (sub_1002B5C7C(v14) || sub_1002B5AD4(a2))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("ATT session with this connection already exists, reject duplicate", v16, v17, v18, v19, v20, v21, v22, v43);
        v23 = sub_10000C050(0x5Cu);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      v24 = sub_100290164(0, 0, 0, a3, 0, 0, 0);
      if (v24)
      {
        v25 = v24;
        if (sub_10000C240())
        {
          sub_10000AF54("OI_L2CAP_Accept rejection of duplicate connection failed with result %!", v26, v27, v28, v29, v30, v31, v32, v25);
          v33 = sub_10000C050(0x5Cu);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }
    }

    else
    {
      v34 = sub_1002B59BC(a2, 0);
      if (v34)
      {
        *(v34 + 8) = a3;
        *v34 = v15;
        if (qword_100B5BAC8)
        {
          qword_100B5BAC8((*a2 << 40) | (*(a2 + 1) << 32) | (*(a2 + 2) << 24) | (*(a2 + 3) << 16) | (*(a2 + 4) << 8) | *(a2 + 5));
        }
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("ATT failed to create session", v35, v36, v37, v38, v39, v40, v41, v43);
          v42 = sub_10000C050(0x5Cu);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        sub_1000D660C();
      }
    }
  }
}

uint64_t sub_1001BC414(unint64_t a1, int a2)
{
  v3 = sub_1002D3618(a1);
  v37 = v3;
  v38 = WORD2(v3);
  v4 = sub_1000E1FE8(&v37);
  if (!v4)
  {
    return 101;
  }

  v5 = sub_1002B5C7C(v4);
  if (!v5)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("ATT_ClassicAccept can not find bearer", v9, v10, v11, v12, v13, v14, v15, v36);
      v16 = sub_10000C050(0x5Cu);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 101;
  }

  v6 = v5;
  v7 = *(v5 + 8);
  if (!*(v5 + 8))
  {
    sub_1000D660C();
    v7 = *(v6 + 8);
  }

  v8 = sub_100290164(sub_1001BC5BC, sub_1001BC8DC, sub_1001BCAA8, v7, &xmmword_1008A3560, a2, &unk_100AE55C0);
  if (!v8 && (a2 & 1) != 0)
  {
    return 0;
  }

  if (a2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Att L2CAP Accept error with %!", v18, v19, v20, v21, v22, v23, v24, v8);
      v25 = sub_10000C050(0x5Cu);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  v26 = sub_1002B55A8(v6);
  if (v26)
  {
    v27 = v26;
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to remove ATT session with %!", v28, v29, v30, v31, v32, v33, v34, v27);
      v35 = sub_10000C050(0x5Cu);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v8;
}

void sub_1001BC5BC(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  if (sub_10000C240())
  {
    sub_10000AF54("_attClassicConnectCfm: cid %x inMTU %d outMTU %d result %!", v8, v9, v10, v11, v12, v13, v14, a1);
    v15 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v16 = sub_1002B5D28(a1);
  if (a2 >= a3)
  {
    v17 = a3;
  }

  else
  {
    v17 = a2;
  }

  if (v17 <= 0x30)
  {
    v18 = 48;
  }

  else
  {
    v18 = v17;
  }

  if (v16)
  {
    v19 = v16;
    v20 = v16[8];
    v21 = v16[9];
    v22 = v16[10];
    v23 = v16[11];
    v24 = v16[12];
    v25 = v16[13];
    if (a4)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("ATT cfm result is %!", v26, v27, v28, v29, v30, v31, v32, a4);
        v33 = sub_10000C050(0x5Cu);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      v34 = sub_1002B55A8(v19);
      if (!v34)
      {
        goto LABEL_31;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("ATT Session destroy failed with %!", v35, v36, v37, v38, v39, v40, v41, v34);
        v42 = sub_10000C050(0x5Cu);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      goto LABEL_30;
    }

    *buf = 0;
    a4 = sub_10028DAA8(a1, buf);
    if (a4)
    {
      if (!sub_10000C240())
      {
        goto LABEL_30;
      }

      sub_10000AF54("L2CAP get handle failed", v51, v52, v53, v54, v55, v56, v57, v67);
      v58 = sub_10000C050(0x5Cu);
      if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (sub_1002B5934(v19, *buf, v18) == v19)
      {
        LODWORD(v34) = 1;
        goto LABEL_31;
      }

      if (!sub_10000C240() || (sub_10000AF54("ATT cfm failed to update session", v59, v60, v61, v62, v63, v64, v65, v67), v66 = sub_10000C050(0x5Cu), !os_log_type_enabled(v66, OS_LOG_TYPE_ERROR)))
      {
LABEL_30:
        LODWORD(v34) = 0;
LABEL_31:
        if (off_100B5BAD0)
        {
          off_100B5BAD0((v20 << 40) | (v21 << 32) | (v22 << 24) | (v23 << 16) | (v24 << 8) | v25, a4);
        }

        if (v34)
        {
          sub_1002B5164();
          sub_1002B5178();
        }

        return;
      }
    }

    sub_1000E09C0();
    goto LABEL_30;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("ATT cfm failed to find session", v43, v44, v45, v46, v47, v48, v49, v67);
    v50 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_1001BC8DC(uint64_t a1, uint64_t a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("_attClassicDisconnectCB: cid %x result %!", v4, v5, v6, v7, v8, v9, v10, a1);
    v11 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v33 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v12 = sub_1002B5D28(a1);
  if (v12)
  {
    v13 = v12;
    if (off_100B5BAD8)
    {
      off_100B5BAD8((v12[8] << 40) | (v12[9] << 32) | (v12[10] << 24) | (v12[11] << 16) | (v12[12] << 8) | v12[13], a2);
    }

    sub_1002B518C();
    v14 = sub_1002B5CA4(*v13);
    if (v14)
    {
      v15 = v14;
      if (sub_10000C240())
      {
        sub_10000AF54("ATT Session destroy failed with %!", v16, v17, v18, v19, v20, v21, v22, v15);
        v23 = sub_10000C050(0x5Cu);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("attClassicDisconnectCB received on cid %d, but no bearer was found", v24, v25, v26, v27, v28, v29, v30, a1);
      v31 = sub_10000C050(0x5Cu);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1000D660C();
  }
}

void sub_1001BCAA8(unsigned int a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4)
{
  v17 = 0;
  v7 = sub_10028DAA8(a1, &v17);
  if (v7)
  {
    v8 = v7;
    if (sub_10000C240())
    {
      sub_10000AF54("ATT recv data ind get connection handle failed with status %!", v9, v10, v11, v12, v13, v14, v15, v8);
      v16 = sub_10000C050(0x5Cu);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    sub_1002B6D1C(v17, a2, a3, a4);
  }
}

uint64_t sub_1001BCB4C(unint64_t a1)
{
  v1 = sub_1002D3618(a1);
  v39 = v1;
  v40 = WORD2(v1);
  if (sub_10000C240())
  {
    sub_10000AF54("BT_ATT_ClassicConnect addr=%: ", v2, v3, v4, v5, v6, v7, v8, &v39);
    v9 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = sub_10000C0FC();
      *buf = 136446210;
      v42 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (sub_1002B5AD4(&v39))
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Classic Connect Att session with this connection already exists!!!", v11, v12, v13, v14, v15, v16, v17, v38);
    v18 = sub_10000C050(0x5Cu);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_7;
  }

  v21 = sub_1002B59BC(&v39, 1);
  if (!v21)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Classic Connect failed to allocate bearer", v30, v31, v32, v33, v34, v35, v36, v38);
    v37 = sub_10000C050(0x5Cu);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

LABEL_7:
    sub_10080F604();
    return 101;
  }

  v19 = sub_10028F454(sub_1001BC5BC, sub_1001BC8DC, sub_1001BCAA8, 31, &v39, &xmmword_1008A3560, v21 + 8, &unk_100AE55C0);
  if (v19)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Att L2CAP Connect error with %!", v22, v23, v24, v25, v26, v27, v28, v19);
      v29 = sub_10000C050(0x5Cu);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v19;
}

uint64_t sub_1001BCD64(unint64_t a1)
{
  v1 = sub_1002D3618(a1);
  v25 = v1;
  v26 = WORD2(v1);
  if (sub_10000C240())
  {
    sub_10000AF54("ATT ClassicDisconnect addr=%: ", v2, v3, v4, v5, v6, v7, v8, &v25);
    v9 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = sub_10000C0FC();
      *buf = 136446210;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v11 = sub_1000E1FE8(&v25);
  if (!v11)
  {
    return 101;
  }

  v12 = sub_1002B5C7C(v11);
  if (!v12)
  {
    return 101;
  }

  v13 = v12;
  v14 = *(v12 + 8);
  if (!v14)
  {
    sub_1000D660C();
    v14 = *(v13 + 8);
  }

  v15 = sub_10029104C(v14, 436);
  if (v15)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Att L2CAP Disconnect error with %!", v16, v17, v18, v19, v20, v21, v22, v15);
      v23 = sub_10000C050(0x5Cu);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v15;
}

uint64_t sub_1001BCEBC(uint64_t a1, int a2)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v13 = 0;
  if (sub_10000C240())
  {
    sub_10000AF54("ATT Classic handle registration:  0x%x -> 0x%x", v4, v5, v6, v7, v8, v9, v10, a1);
    v11 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v19 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  byte_100B5BAA8 = 1;
  word_100B5BAAA = 2;
  dword_100B5BAB0 = a1;
  byte_100B5BAB8 = 1;
  word_100B5BABA = 2;
  dword_100B5BAC0 = a2;
  v14 = &unk_100AE55F0;
  LOWORD(v15) = 3;
  v16 = off_100B51FE8;
  LOWORD(v17) = word_100B51FF0;
  return sub_1002F7E1C(&v14, &v13);
}

__n128 sub_1001BD000(__n128 *a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (qword_100B5BAC8)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_100B5BAD0 == 0;
  }

  if (!v3 || off_100B5BAD8 != 0)
  {
    sub_1000D660C();
  }

  if (a1)
  {
    result = *a1;
    off_100B5BAD8 = a1[1].n128_u64[0];
    *&qword_100B5BAC8 = result;
  }

  return result;
}

void sub_1001BD060()
{
  qword_100B5BAC8 = 0;
  off_100B5BAD0 = 0;
  off_100B5BAD8 = 0;
}

uint64_t sub_1001BD074(uint64_t a1, _WORD *a2)
{
  v3[0] = xmmword_1008A3560;
  v3[1] = *algn_1008A3570;
  return sub_10028EA9C(31, v3, a1, sub_1001BC5BC, sub_1001BC8DC, sub_1001BCAA8, a2, &unk_100AE55C0);
}

uint64_t sub_1001BD0EC(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v20 = 0;
  v19 = 0;
  result = sub_1002AD958(a1, &v19);
  if (!result)
  {
    v9 = sub_1002B5AD4(&v19);
    if (v9 || (v9 = sub_1002B59BC(&v19, 1)) != 0)
    {
      *(v9 + 16) = a1;
      sub_1001BC5BC(a1, a2, a3, a4);
      return 0;
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("BT_ATT_FastConnect_ClassicConnect error creating ATT signaling", v10, v11, v12, v13, v14, v15, v16, v18);
        v17 = sub_10000C050(0x5Cu);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 104;
    }
  }

  return result;
}

uint64_t sub_1001BD1BC(uint64_t a1, unsigned int a2)
{
  v16 = 0;
  v3 = sub_1000E1FE8(a1);
  v4 = v3;
  if (v3 && (v5 = sub_1002B5C7C(v3)) != 0)
  {
    v6 = sub_1002B5CA4(*v5);
    if (v6)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("BT_ATT_ClassicFastDisconnectAtt destroy session error with %d", v7, v8, v9, v10, v11, v12, v13, v6);
        v14 = sub_10000C050(0x5Cu);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }

  else
  {
    v6 = 101;
  }

  if (a2)
  {
    if (!sub_1000ABC7C(a2, &v16))
    {
      if (v16)
      {
        sub_10028E908(v16);
        if (v4)
        {
          sub_1000D27D8(v4);
        }
      }
    }
  }

  return v6;
}

uint64_t sub_1001BD290(uint64_t a1)
{
  bzero(&xmmword_100B5BAE0, 0xB68uLL);
  byte_100B5C620 = 1;
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v2 = *a1;
  qword_100B5C638 = *(a1 + 16);
  xmmword_100B5C628 = v2;
  if (byte_100B5C640)
  {
    return 0;
  }

  v39[0] = &unk_100AE56A0;
  v39[1] = 3;
  v39[2] = off_100B51FF8;
  v39[3] = word_100B52000;
  v5 = sub_100296BCC(&word_100B5C642);
  if (v5)
  {
    v3 = v5;
    if (sub_10000C240())
    {
      sub_10000AF54("L2CAP psm allocation failed!", v6, v7, v8, v9, v10, v11, v12, v39[0]);
      v13 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_8:
        sub_100812B34();
      }
    }
  }

  else
  {
    v14 = sub_1002967FC(word_100B5C642, sub_1001BF4CC);
    if (!v14)
    {
      byte_100B5C648 = 1;
      word_100B5C64A = 2;
      dword_100B5C650 = word_100B5C642;
      v3 = sub_1002F7E1C(v39, algn_100B5C644);
      if (!v3)
      {
        byte_100B5C640 = 1;
        return v3;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("OI_SDPDB_AddServiceRecord failed", v23, v24, v25, v26, v27, v28, v29, v39[0]);
        v30 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_100812B34();
        }
      }

      sub_1002969F8(word_100B5C642);
      goto LABEL_18;
    }

    v3 = v14;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_L2CAP_Register failed", v15, v16, v17, v18, v19, v20, v21, v39[0]);
      v22 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }
    }
  }

LABEL_18:
  if (sub_10000C240())
  {
    sub_10000AF54("registerL2CAPListeners failed", v31, v32, v33, v34, v35, v36, v37, v39[0]);
    v38 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_100812B34();
    }
  }

  return v3;
}

uint64_t sub_1001BD4DC(uint64_t a1)
{
  v2 = &xmmword_100B5BAE0 + 1;
  v3 = 30;
  while (1)
  {
    v4 = *(v2 - 2);
    v5 = *(v2 - 1);
    if ((v5 | (v4 << 16)) == a1)
    {
      break;
    }

    v2 += 18;
    if (!--v3)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid Handle %x", v6, v7, v8, v9, v10, v11, v12, a1);
        v13 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 414;
    }
  }

  v15 = sub_100192628(word_100B5C350, 30, *(v2 - 1));
  if (v15)
  {
    v16 = v15;
    v17 = sub_100191F30(v4, v5, v2, 2, 2);
    v38 = 0;
    v37 = 0;
    v18 = *(v17 + 1);
    LOWORD(v38) = *(v17 + 5);
    WORD1(v38) = v18;
    sub_10001FF10((v17 + 1), 2u);
    sub_10001F968(v17 + 16, &v38, 4uLL, 2u);
    sub_10001F968(v17 + 16, &v37, *(v17 + 64), 2u);
    *(v17 + 19) = v16;
    v14 = sub_1001921E0(v17, sub_1001BED08);
    if (!v14)
    {
      sub_1001BF6B4(2, a1);
      return v14;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("sendDisconnectReqPacket channel not found: addr=%: cid=%d sid=%d result=%d", v19, v20, v21, v22, v23, v24, v25, v2);
      v26 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100812BB0();
      }
    }

    v14 = 406;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("sendDisconnectReqPacket failed", v27, v28, v29, v30, v31, v32, v33, v36);
    v34 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_100812B34();
    }
  }

  return v14;
}

char *sub_1001BD714(int *a1, __int16 a2, uint64_t a3)
{
  v4 = 0;
  while (1)
  {
    result = &xmmword_100B5BAE0 + v4;
    if (!*(&xmmword_100B5BAE0 + v4 + 16))
    {
      break;
    }

    v4 += 72;
    if (v4 == 2160)
    {
      return 0;
    }
  }

  v6 = *a1;
  *(result + 4) = *(a1 + 2);
  *(result + 1) = v6;
  *(result + 1) = a2;
  *result = *(a3 + 8);
  *(result + 2) = *a3;
  *(result + 12) = *(a3 + 10);
  *(result + 16) = 0;
  *(result + 52) = *(a3 + 14);
  return result;
}

uint64_t sub_1001BD780(int *a1, int a2, int a3, __int16 a4, __int16 a5, void **a6)
{
  if (sub_10000C240())
  {
    sub_10000AF54("sendConnectReqPacket: addr=%: cid=%u sid=%u major=%u minor=%u result=%u", v12, v13, v14, v15, v16, v17, v18, a1);
    v19 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v36 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v20 = sub_100192628(word_100B5C350, 30, a2);
  if (v20)
  {
    v21 = v20;
    v22 = sub_100191F30(a3, a2, a1, 0, 12);
    if (!v22)
    {
      sub_1000D660C();
    }

    v34 = 0;
    v23 = *(v22 + 1);
    LOWORD(v34) = *(v22 + 5);
    WORD1(v34) = v23;
    *buf = a4;
    *&buf[2] = a5;
    v36 = *a6;
    sub_10001FF10((v22 + 1), 2u);
    sub_10001F968(v22 + 16, &v34, 4uLL, 2u);
    sub_10001F968(v22 + 16, buf, *(v22 + 64), 2u);
    *(v22 + 19) = v21;
    v24 = sub_1001921E0(v22, sub_1001BED08);
    if (!v24)
    {
      sub_1001BF6B4(0, a2 | (a3 << 16));
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("sendConnectReqPacket channel not found: addr=%: cid=%d sid=%d result=%d", v25, v26, v27, v28, v29, v30, v31, a1);
      v32 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_100812BB0();
      }
    }

    return 406;
  }

  return v24;
}

double sub_1001BD9B0(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if (a3 <= 3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Incoming message has invalid length %d", v5, v6, v7, v8, v9, v10, v11, v4);
      v13 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }
    }

    return result;
  }

  v117 = 0;
  if (!a2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aap/aap_client.c", 662, "buf");
  }

  v17 = 0;
  v18 = a3 - 4;
  v19 = *a2;
  v20 = a2[1];
  do
  {
    if (__PAIR64__(*(&xmmword_100B5BAE0 + v17 + 2), *(&xmmword_100B5BAE0 + v17)) == __PAIR64__(a1, v20))
    {
      if (sub_1000ABC7C(a1, &v117) || !sub_1000B12AC(v117))
      {
        if (!sub_10000C240())
        {
          return result;
        }

        sub_10000AF54("Can't find channel %d", v29, v30, v31, v32, v33, v34, v35, a1);
        v36 = sub_10000C050(0x52u);
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          return result;
        }

        goto LABEL_15;
      }

      v37 = (&xmmword_100B5BAE0 + v17);
      if (v19 > 2)
      {
        if (v19 == 3)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("BT_AAP_DISCONNECT_RSP from l2capRecvDataInd for cid=%d", v72, v73, v74, v75, v76, v77, v78, a1);
            v79 = sub_10000C050(0x52u);
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              v80 = sub_10000C0FC();
              *buf = 136446210;
              v119 = v80;
              _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          sub_1001BF95C(a1 | (v20 << 16));
          if (v4 < 6)
          {
            v81 = 0;
          }

          else
          {
            v81 = a2[2];
          }

          sub_1001BFA00(v20, a1, v81);
          return result;
        }

        if (v19 == 4)
        {
          v59 = v37[1];
          if (__PAIR64__(v59, *v37) == __PAIR64__(a1, v20))
          {
            v60 = *(&xmmword_100B5BAE0 + v17 + 16);
            if (v60)
            {
              v61 = *(v60 + 32);
              if (v61)
              {
                v61(v59 | (v20 << 16), a2 + 2, v18, a4);
              }
            }
          }

          return result;
        }

LABEL_37:
        if (!sub_10000C240())
        {
          return result;
        }

        sub_10000AF54("Should not be here", v62, v63, v64, v65, v66, v67, v68, v116);
        v69 = sub_10000C050(0x52u);
        if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          return result;
        }

LABEL_15:
        sub_10080F7A0();
        return result;
      }

      if (v19 != 1)
      {
        if (v19 == 2)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("l2capRecvDataInd: BT_AAP_DISCONNECT_REQ", v38, v39, v40, v41, v42, v43, v44, v116);
            v45 = sub_10000C050(0x52u);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v46 = sub_10000C0FC();
              *buf = 136446210;
              v119 = v46;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          v47 = sub_1000B12AC(v117);
          v48 = sub_1001C043C((v47 + 10), a1, v20);
          if (v48)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("sendDisconnectRspPacket failed", v49, v50, v51, v52, v53, v54, v55, v116);
              v56 = sub_10000C050(0x52u);
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                sub_100812B34();
              }
            }
          }

          v57 = *(&xmmword_100B5BAE0 + v17 + 16);
          if (v57)
          {
            v58 = *(v57 + 16);
            if (v58)
            {
              v58(a1 | (v20 << 16), v48);
            }
          }

          goto LABEL_81;
        }

        goto LABEL_37;
      }

      if (v4 < 6)
      {
        v82 = 4;
      }

      else
      {
        v70 = a2[2];
        if (a2[2])
        {
          v71 = 0;
LABEL_77:
          v112 = a1 | (v20 << 16);
          sub_1001BF95C(v112);
          v113 = *(&xmmword_100B5BAE0 + v17 + 16);
          if (v113)
          {
            v114 = *(v113 + 8);
            if (v114)
            {
              v115 = sub_1000B12AC(v117);
              v114(v115 + 10, v70, v112, *(&xmmword_100B5BAE0 + v17 + 44), *(&xmmword_100B5BAE0 + v17 + 48), *(&xmmword_100B5BAE0 + v17 + 50), &xmmword_100B5BAE0 + v17 + 52);
            }
          }

          if (v71)
          {
            return result;
          }

LABEL_81:
          *(v37 + 8) = 0;
          result = 0.0;
          *(v37 + 2) = 0u;
          *(v37 + 3) = 0u;
          *v37 = 0u;
          *(v37 + 1) = 0u;
          return result;
        }

        v82 = 6;
      }

      v83 = &xmmword_100B5BAE0 + v17;
      if (*(&xmmword_100B5BAE0 + v17 + 24) != 3)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("l2capRecvDataInd: BT_AAP_CONNECT_RSP connection in unhandled state sid=%u cid=%u state=%u", v91, v92, v93, v94, v95, v96, v97, v20);
          v98 = sub_10000C050(0x52u);
          if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        goto LABEL_76;
      }

      v83[24] = 4;
      *(v83 + 22) = *(sub_1000B12AC(v117) + 32) - 4;
      if (v4 <= 5)
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aap/aap_client.c");
      }

      else if ((v4 - v82) > 1)
      {
        v84 = &xmmword_100B5BAE0 + v17;
        *(&xmmword_100B5BAE0 + v17 + 48) = a2[v82 / 2];
        v85 = v82 + 2;
        if (v4 - v85 > 1)
        {
          *(v84 + 25) = *(a2 + v85);
          LODWORD(v85) = v82 + 4;
          if (v4 >= 18)
          {
            v86 = 18;
          }

          else
          {
            v86 = v4;
          }

          v87 = v84 + 52;
          v88 = (v86 - 10);
          v89 = &v84[v88 + 52];
          v90 = v4 - v85;
          LODWORD(v4) = v88;
LABEL_69:
          if (v90 >= v4 && v87 < v89)
          {
            v100 = a2 + v85;
            v101 = &xmmword_100B5BAE0 + v17 + v89 - v87 + 52;
            do
            {
              v102 = *v100++;
              *v87++ = v102;
            }

            while (v101 != v87);
          }

          if (sub_10000C240())
          {
            sub_10000AF54("l2capRecvDataInd: BT_AAP_CONNECT_RSP connection accepted sid=%u cid=%u", v103, v104, v105, v106, v107, v108, v109, v20);
            v110 = sub_10000C050(0x52u);
            if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
            {
              v111 = sub_10000C0FC();
              *buf = 136446210;
              v119 = v111;
              _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

LABEL_76:
          v70 = 0;
          v71 = 1;
          goto LABEL_77;
        }

LABEL_65:
        if (v4 >= 18)
        {
          v99 = 18;
        }

        else
        {
          v99 = v4;
        }

        v87 = &xmmword_100B5BAE0 + v17 + 52;
        v4 = (v99 - 10);
        v89 = &v87[v4];
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aap/aap_client.c");
        v90 = 0;
        goto LABEL_69;
      }

      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aap/aap_client.c");
      LODWORD(v85) = v82;
      goto LABEL_65;
    }

    v17 += 72;
  }

  while (v17 != 2160);
  if (sub_10000C240())
  {
    sub_10000AF54("Incoming message to invalid cid/sid (%d/%d)", v21, v22, v23, v24, v25, v26, v27, v20);
    v28 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
LABEL_4:
      sub_10080F7A0();
    }
  }

  return result;
}

uint64_t sub_1001BE058(uint64_t a1, uint64_t a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("BT_AAP_Client_Connect", v4, v5, v6, v7, v8, v9, v10, v69);
    v11 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v69) = 136446210;
      *(&v69 + 4) = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", &v69, 0xCu);
    }
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 30;
  v16 = &xmmword_100B5BAE0;
  do
  {
    if (*(v16 + 1) == *a1 && *(v16 + 4) == *(a1 + 4))
    {
      v18 = *(v16 + 24);
      if (v18 == 2)
      {
        return 0;
      }

      v19 = v18 > 2;
      if (*v16 == *(a2 + 8))
      {
        return 133;
      }

      v14 = *(v16 + 1);
      v12 |= v19;
      v13 = v16;
    }

    v16 = (v16 + 72);
    --v15;
  }

  while (v15);
  if (v13 || (v13 = sub_1001BD714(a1, v14, a2)) != 0)
  {
    if ((v12 & 1) == 0)
    {
      v38 = *(v13 + 21);
      v39 = sub_10000C240();
      if (v38)
      {
        if (v39)
        {
          sub_10000AF54("PSM is already available, connect L2CAP", v40, v41, v42, v43, v44, v45, v46, v69);
          v47 = sub_10000C050(0x52u);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v48 = sub_10000C0FC();
            LODWORD(v69) = 136446210;
            *(&v69 + 4) = v48;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, " %{public}s", &v69, 0xCu);
          }
        }

        sub_1001BE48C(v13);
        return 0;
      }

      if (v39)
      {
        sub_10000AF54("AAP_CLIENT_Connect initiating SDP", v40, v41, v42, v43, v44, v45, v46, v69);
        v49 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = sub_10000C0FC();
          LODWORD(v69) = 136446210;
          *(&v69 + 4) = v50;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, " %{public}s", &v69, 0xCu);
        }
      }

      v51 = sub_1002F5AE8(sub_1001BE66C, sub_1001BE724, a1);
      if (!v51)
      {
        v13[24] = 1;
        *(&v69 + 1) = v13;
        *&v69 = 8;
        return sub_10002195C(sub_1001BE7C0, &v69, 30, v13 + 16);
      }

      v29 = v51;
      if (!sub_10000C240())
      {
        goto LABEL_38;
      }

      sub_10000AF54("Failed to connect SDP", v52, v53, v54, v55, v56, v57, v58, v69);
      v59 = sub_10000C050(0x52u);
      if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

LABEL_37:
      sub_100812B34();
LABEL_38:
      *(v13 + 8) = 0;
      *(v13 + 2) = 0u;
      *(v13 + 3) = 0u;
      *v13 = 0u;
      *(v13 + 1) = 0u;
      return v29;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("AAP_Client: L2CAP connected, beginning AAP connection", v20, v21, v22, v23, v24, v25, v26, v69);
      v27 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = sub_10000C0FC();
        LODWORD(v69) = 136446210;
        *(&v69 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " %{public}s", &v69, 0xCu);
      }
    }

    v13[24] = 3;
    v29 = sub_1001BD780(a1, v14, *(a2 + 8), *(a2 + 10), *(a2 + 12), (a2 + 14));
    if (v29)
    {
      if (!sub_10000C240())
      {
        goto LABEL_38;
      }

      sub_10000AF54("sendConnectReqPacket failed", v30, v31, v32, v33, v34, v35, v36, v69);
      v37 = sub_10000C050(0x52u);
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("allocateConnection failed", v60, v61, v62, v63, v64, v65, v66, v69);
      v67 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        sub_100812C2C();
      }
    }

    return 104;
  }

  return v29;
}

void sub_1001BE48C(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("Connecting L2CAP for %:", v2, v3, v4, v5, v6, v7, v8, a1 + 4);
    v9 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v31 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v10 = *(a1 + 42);
  if (*(a1 + 42))
  {
    *(a1 + 24) = 2;
    v11 = sub_100191DCC();
    v12 = sub_100191DF0();
    if (sub_10028F454(sub_1001BF1B8, sub_1001BF238, sub_1001BD9B0, v10, a1 + 4, v11, (a1 + 2), v12))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OI_L2CAP_Connect failed", v13, v14, v15, v16, v17, v18, v19, v29);
        v20 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100812B34();
        }
      }

      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("SDP disconnected without a valid PSM", v21, v22, v23, v24, v25, v26, v27, v29);
      v28 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10002242C(*(a1 + 64));
    *(a1 + 24) = 0;
  }
}

uint64_t sub_1001BE66C(uint64_t result)
{
  v4 = unk_100AE5758;
  v3 = xmmword_1008A3600;
  if (!result)
  {
    v2[1] = &v4;
    v2[0] = 65542;
    v1[1] = &v3;
    v1[0] = 65542;
    result = sub_1002F69AC(sub_1001C05A0, v2, v1);
    if (result)
    {
      return sub_1002F61A8();
    }
  }

  return result;
}

void sub_1001BE724()
{
  v0 = &xmmword_100B5BAE0;
  v1 = 30;
  while (*(v0 + 24) != 1)
  {
    v0 = (v0 + 72);
    if (!--v1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("No connection Entry for this SDP search resp", v2, v3, v4, v5, v6, v7, v8, v10);
        v9 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return;
    }
  }

  sub_1001BE48C(v0);
}

void sub_1001BE7C0(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("Couldn't connect SDP for AAP!", v2, v3, v4, v5, v6, v7, v8, v10);
    v9 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  sub_1001BFA00(**(a1 + 8), *(*(a1 + 8) + 2), 3572);
}

uint64_t sub_1001BE834(uint64_t a1, char *a2, size_t a3)
{
  v6 = &word_100B5BB0C;
  v7 = 30;
  while (1)
  {
    v8 = *(v6 - 22);
    v9 = *(v6 - 21);
    if ((v9 | (v8 << 16)) == a1)
    {
      break;
    }

    v6 += 36;
    if (!--v7)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid handle %x", v10, v11, v12, v13, v14, v15, v16, a1);
        v17 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 414;
    }
  }

  if (*v6 >= a3)
  {
    v27 = (v6 - 20);
    v28 = sub_100192628(word_100B5C350, 30, v9);
    if (v28)
    {
      v29 = v28;
      v30 = sub_100191F30(v8, v9, v27, 4, a3);
      v50 = 0;
      v31 = *(v30 + 1);
      LOWORD(v50) = *(v30 + 5);
      WORD1(v50) = v31;
      sub_10001FF10((v30 + 1), 2u);
      sub_10001F968(v30 + 16, &v50, 4uLL, 0);
      sub_10001F968(v30 + 16, a2, a3, 0);
      *(v30 + 17) = a2;
      *(v30 + 19) = v29;
      v18 = sub_1001921E0(v30, sub_1001BED08);
      if (!v18)
      {
        return v18;
      }
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("sendDataPacket channel not found: addr=%: cid=%d sid=%d len=%d", v32, v33, v34, v35, v36, v37, v38, v27);
        v39 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          sub_100812BB0();
        }
      }

      v18 = 406;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("sendDataPacket failed", v40, v41, v42, v43, v44, v45, v46, v49);
      v47 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        sub_100812B34();
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("MTU=%d", v19, v20, v21, v22, v23, v24, v25, *v6);
      v26 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100812CA8();
      }
    }

    return 142;
  }

  return v18;
}

uint64_t sub_1001BEAC8(uint64_t a1, char *a2, size_t a3)
{
  v6 = &xmmword_100B5BAE0;
  v7 = 30;
  while (1)
  {
    v8 = *(v6 + 1);
    if ((v8 | (*v6 << 16)) == a1)
    {
      break;
    }

    v6 = (v6 + 72);
    if (!--v7)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid handle %x", v9, v10, v11, v12, v13, v14, v15, a1);
        v16 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 414;
    }
  }

  if (*(v6 + 22) >= a3)
  {
    v26 = sub_100192628(word_100B5C350, 30, v8);
    if (v26)
    {
      v27 = v26;
      v28 = sub_100191F30(*v6, *(v6 + 1), v6 + 1, 4, a3);
      v38 = 0;
      v29 = *(v28 + 1);
      LOWORD(v38) = *(v28 + 5);
      WORD1(v38) = v29;
      sub_10001FF10((v28 + 1), 2u);
      sub_10001F968(v28 + 16, &v38, 4uLL, 0);
      sub_10001F968(v28 + 16, a2, a3, 0);
      *(v28 + 17) = a2;
      *(v28 + 19) = v27;
      return sub_10019205C(v28, sub_1001BED08);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("BT_AAP_Client_SendUnstallableData channel not found: addr=%: cid=%d sid=%d len=%d", v30, v31, v32, v33, v34, v35, v36, v6 + 4);
        v37 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_100812BB0();
        }
      }

      return 406;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("MTU=%d", v18, v19, v20, v21, v22, v23, v24, *(v6 + 22));
      v25 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100812CA8();
      }
    }

    return 142;
  }
}

void sub_1001BED08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    sub_1000D660C();
  }

  v7 = *(a2 + 8);
  if (!v7)
  {
    sub_1000D660C();
  }

  v8 = v7[5];
  switch(v8)
  {
    case 2:
      if (sub_10000C240())
      {
        sub_10000AF54("l2capWriteCfm: BT_AAP_DISCONNECT_REQ", v19, v20, v21, v22, v23, v24, v25, v29);
        v26 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v31 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      break;
    case 3:
      if (sub_10000C240())
      {
        sub_10000AF54("BT_AAP_DISCONNECT_RSP from l2capWriteCfm for cid=%d, result=%d", v11, v12, v13, v14, v15, v16, v17, a1);
        v18 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v31 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      sub_1001BFA00(v7[1], *v7, a4);
      break;
    case 4:
      v9 = &xmmword_100B5BAE0;
      v10 = 30;
      while ((*(v9 + 1) | (*v9 << 16)) != *v7)
      {
        v9 = (v9 + 72);
        if (!--v10)
        {
          return;
        }
      }

      v27 = *(v9 + 2);
      if (v27)
      {
        v28 = *(v27 + 24);
        if (v28)
        {

          v28();
        }
      }

      break;
  }
}

uint64_t sub_1001BEF1C(uint64_t result, int a2, int a3)
{
  v3 = a3 | (a2 << 16);
  if (v3)
  {
    v4 = &xmmword_100B5BAE0;
    v5 = 30;
    while ((*(v4 + 1) | (*v4 << 16)) != v3)
    {
      v4 = (v4 + 72);
      if (!--v5)
      {
        return result;
      }
    }

    *(v4 + 22) = result;
  }

  return result;
}

uint64_t sub_1001BEF5C(uint64_t a1, __int16 a2, uint64_t a3, unsigned __int16 *a4, int *a5)
{
  v10 = 30;
  v11 = &xmmword_100B5BAE0 + 4;
  do
  {
    v12 = *v11 == *a1 && *(v11 + 2) == *(a1 + 4);
    if (v12 && *(v11 - 2) == *(a3 + 8))
    {
      return 133;
    }

    v11 += 72;
    --v10;
  }

  while (v10);
  v13 = sub_1001BD714(a1, 0, a3);
  if (v13)
  {
    v14 = v13;
    v15 = sub_100191DCC();
    v16 = sub_100191DF0();
    v17 = v15[1];
    v48[0] = *v15;
    v48[1] = v17;
    v18 = sub_10028EA9C(a2, v48, a1, sub_1001BF1B8, sub_1001BF238, sub_1001BD9B0, a4, v16);
    if (v18)
    {
      v19 = v18;
      if (sub_10000C240())
      {
        sub_10000AF54("BT_AAP_Client_FastConnect error creating AAP signaling", v20, v21, v22, v23, v24, v25, v26, v47);
        v27 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
LABEL_13:
          sub_10080F7A0();
        }
      }
    }

    else
    {
      *&v48[0] = 0;
      v19 = sub_1000ABC7C(*a4, v48);
      if (v19 || !sub_1000B12AC(*&v48[0]))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Can't find channel %d", v37, v38, v39, v40, v41, v42, v43, a4);
          v44 = sub_10000C050(0x52u);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        v14[24] = 4;
        *(v14 + 22) = *(sub_1000B12AC(*&v48[0]) + 32) - 4;
        v45 = *a4;
        *(v14 + 1) = v45;
        v46 = *(a3 + 8);
        *v14 = v46;
        *a5 = v45 | (v46 << 16);
        return sub_100192470(word_100B5C350, 0x1Eu, *a4, 0);
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("allocateConnection failed", v28, v29, v30, v31, v32, v33, v34, v47);
      v35 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_100812C2C();
      }
    }

    return 104;
  }

  return v19;
}

double sub_1001BF1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a4)
  {
    v4 = sub_100192470(word_100B5C350, 0x1Eu, a1, 0);
    if (v4)
    {
      sub_10029104C(a1, 436);
    }
  }

  return sub_1001BFFC8(a1, a2, a3, v4);
}

void sub_1001BF238(uint64_t a1, uint64_t a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("l2capDisconnectInd from aap_client cid=%d reason=%d", v4, v5, v6, v7, v8, v9, v10, a1);
    v11 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v13 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  sub_10019252C(word_100B5C350, 30, a1);
  sub_1001C0304(a1, a2);
}

void sub_1001BF328(uint64_t a1, uint64_t a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("BT_AAP_Client_cleanFastConnect cid=%d", v4, v5, v6, v7, v8, v9, v10, a2);
    v11 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  sub_10019252C(word_100B5C350, 30, a2);
  if (a2)
  {
    *buf = 0;
    if (!sub_1000ABC7C(a2, buf))
    {
      if (*buf)
      {
        sub_10028E908(*buf);
        v12 = sub_1000E1FE8(a1);
        if (v12)
        {
          sub_1000D27D8(v12);
        }

        else if (sub_10000C240())
        {
          sub_10000AF54("BT_AAP_Client_cleanFastConnectAAP NULL Handle", v13, v14, v15, v16, v17, v18, v19, v24);
          v20 = sub_10000C050(0x52u);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }
    }
  }

  v21 = &xmmword_100B5BAE0 + 4;
  v22 = 30;
  do
  {
    if (*v21 == *a1 && *(v21 + 2) == *(a1 + 4))
    {
      *(v21 + 60) = 0;
      *(v21 + 28) = 0uLL;
      *(v21 + 44) = 0uLL;
      *(v21 - 4) = 0uLL;
      *(v21 + 12) = 0uLL;
    }

    v21 += 72;
    --v22;
  }

  while (v22);
}

uint64_t sub_1001BF4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_10000C240())
  {
    sub_10000AF54("l2capConnectInd (%:, %d)", v5, v6, v7, v8, v9, v10, v11, a2);
    v12 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  v13 = &xmmword_100B5BAE0 + 4;
  v14 = 30;
  do
  {
    if (*v13 == *a2 && *(v13 + 2) == *(a2 + 4))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("l2capConnectInd already (%:, %d)", v23, v24, v25, v26, v27, v28, v29, a2);
        v30 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return sub_100290164(0, 0, 0, a3, 0, 0, 0);
    }

    v13 += 72;
    --v14;
  }

  while (v14);
  v16 = sub_1001BD714(a2, a3, &xmmword_100B5C628);
  if (!v16)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("allocateConnection failed", v31, v32, v33, v34, v35, v36, v37, v39);
      v38 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_100812C2C();
      }
    }

    return sub_100290164(0, 0, 0, a3, 0, 0, 0);
  }

  v17 = v16;
  v16[24] = 2;
  v18 = sub_100191DCC();
  v19 = sub_100191DF0();
  result = sub_100290164(sub_1001BF1B8, sub_1001BF238, sub_1001BD9B0, a3, v18, 1, v19);
  v21 = *(v17 + 2);
  if (v21)
  {
    v22 = *v21;
    if (v22)
    {
      return v22(a2, a3);
    }
  }

  return result;
}

void sub_1001BF6B4(__int16 a1, uint64_t a2)
{
  v21 = 0;
  v22[0] = 0;
  v3 = 30;
  for (i = &dword_100B5BB1C; (*(i - 29) | (*(i - 30) << 16)) != a2; i += 18)
  {
    if (!--v3)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("AAPConnectSetTimeout: No AAP connection associated with handle %d", v5, v6, v7, v8, v9, v10, v11, a2);
        v12 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return;
    }
  }

  LODWORD(v21) = a2;
  WORD2(v21) = a1;
  v22[1] = &v21;
  LOWORD(v22[0]) = 8;
  if (sub_1000228C0(sub_1001BF7F0, v22, i))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("AAPConnectSetTimeout: Error registering timeout handler for handle %d status %d", v13, v14, v15, v16, v17, v18, v19, a2);
      v20 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else if (sub_1000B7ADC(*i, 60))
  {
    sub_1001BF95C(a2);
  }
}

void sub_1001BF7F0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = &xmmword_100B5BAE0;
  v5 = 30;
  while ((*(v4 + 1) | (*v4 << 16)) != v2)
  {
    v4 = (v4 + 72);
    if (!--v5)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("AAP connection timeout for unknown handle %d", v6, v7, v8, v9, v10, v11, v12, v2);
        v13 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
LABEL_6:
          sub_10080F7A0();
          return;
        }
      }

      return;
    }
  }

  *(v4 + 15) = 0;
  if (sub_10000C240())
  {
    sub_10000AF54("AAP connection timeout for cmd %d, handle %d", v14, v15, v16, v17, v18, v19, v20, v3);
    v21 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  if (v3 == 2)
  {
    sub_1001BFA00(*v4, *(v4 + 1), 3571);
  }

  else if (!v3)
  {
    if (*(v4 + 24) == 3)
    {
      sub_1001BD4DC(v2);
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("False AAP connection timeout for handle %d state %d", v22, v23, v24, v25, v26, v27, v28, v2);
      v29 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }
  }
}

void sub_1001BF95C(uint64_t a1)
{
  v2 = &dword_100B5BB1C;
  v3 = 30;
  do
  {
    if ((*(v2 - 29) | (*(v2 - 30) << 16)) == a1)
    {
      sub_10002242C(*v2);
      *v2 = 0;
      return;
    }

    v2 += 18;
    --v3;
  }

  while (v3);
  if (sub_10000C240())
  {
    sub_10000AF54("AAPConnectCancelTimeout: No AAP connection associated with handle %d", v4, v5, v6, v7, v8, v9, v10, a1);
    v11 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_1001BFA00(int a1, uint64_t a2, uint64_t a3)
{
  v6 = a2 | (a1 << 16);
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = 114;
  }

  v8 = &xmmword_100B5BAE0;
  v9 = 30;
  do
  {
    if (*v8 == a1 && *(v8 + 1) == a2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("disconnectRspCleanup result %d handle %d state %d", v10, v11, v12, v13, v14, v15, v16, a3);
        v17 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = sub_10000C0FC();
          *buf = 136446210;
          v34 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v19 = *(v8 + 2);
      if (*(v8 + 24) == 4)
      {
        if (!v19)
        {
LABEL_17:
          *(v8 + 8) = 0;
          v8[2] = 0u;
          v8[3] = 0u;
          *v8 = 0u;
          v8[1] = 0u;
          goto LABEL_18;
        }

        v20 = *(v19 + 16);
        if (v20)
        {
          v20(v6, a3);
          goto LABEL_17;
        }
      }

      else if (!v19)
      {
        goto LABEL_17;
      }

      v21 = *(v19 + 8);
      if (v21)
      {
        v21(v8 + 4, v7, 0, 0, 0, 0, 0);
      }

      goto LABEL_17;
    }

LABEL_18:
    v8 = (v8 + 72);
    --v9;
  }

  while (v9);
  v22 = &qword_100B5BAF0;
  v23 = 30;
  while (!*v22 || *(v22 - 7) != a2)
  {
    v22 += 9;
    if (!--v23)
    {
      sub_1001BFC50();
      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("scheduleIdleChannelCleanup from disconnectRspCleanup for cid=%d result=%d", v24, v25, v26, v27, v28, v29, v30, a2);
    v31 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = sub_10000C0FC();
      *buf = 136446210;
      v34 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  sub_1001BFF40();
}

void sub_1001BFC50()
{
  if (sub_10000C240())
  {
    sub_10000AF54("idleChannelCleanupCB", v0, v1, v2, v3, v4, v5, v6, v43);
    v7 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v45 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  for (i = 0; i != 30; ++i)
  {
    v9 = &xmmword_100B5BAE0 + 24 * i;
    v10 = *(v9 + 1080);
    if (*(v9 + 1080))
    {
      v11 = (v9 + 2160);
      v12 = &_mh_execute_header.magic + 2;
      while (*(&xmmword_100B5BAE0 + v12) != v10)
      {
        v12 += 72;
        if (v12 == 2162)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Connection CID=%d is going down", v13, v14, v15, v16, v17, v18, v19, *v11);
            v20 = sub_10000C050(0x52u);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = sub_10000C0FC();
              *buf = 136446210;
              v45 = v21;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          v22 = *v11;
          if (*(v11 + 2) == 1)
          {
            v23 = sub_10029135C(v22);
          }

          else
          {
            v23 = sub_10029104C(v22, 436);
          }

          v33 = v23;
          sub_10019252C(word_100B5C350, 30, *v11);
          if (v33 && sub_10000C240())
          {
            sub_10000AF54("Failed to disconnect L2CAP Channel", v34, v35, v36, v37, v38, v39, v40, v43);
            v41 = sub_10000C050(0x52u);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              v42 = sub_10000C0FC();
              *buf = 136446466;
              v45 = v42;
              v46 = 1024;
              v47 = v33;
              _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
            }
          }

          goto LABEL_22;
        }
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Channel with CID=%d not idle, still have connection to %: sid=%d cid=%d", v24, v25, v26, v27, v28, v29, v30, v11);
        v31 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = sub_10000C0FC();
          *buf = 136446210;
          v45 = v32;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }
    }

LABEL_22:
    ;
  }
}

void sub_1001BFF40()
{
  if (sub_10002195C(sub_1001BFC50, 0, 50, 0) && sub_10000C240())
  {
    sub_10000AF54("OI_Dispatch_RegisterTimedFunc failed ", v0, v1, v2, v3, v4, v5, v6, v8);
    v7 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100812B34();
    }
  }
}

double sub_1001BFFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_10000C240())
  {
    sub_10000AF54("genericL2CAPConnectCompleteCB cid=%x inmtu=%d outmtu=%d result=%d", v6, v7, v8, v9, v10, v11, v12, a1);
    v13 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v53 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v51 = 0;
  if (a4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("l2capConnectCompleteCb failed", v14, v15, v16, v17, v18, v19, v20, v50);
      v22 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100812B34();
      }
    }

    v23 = &byte_100B5BAF8;
    v24 = 30;
    while (1)
    {
      v25 = *(v23 - 1);
      if (v25)
      {
        if (*v23 != 4)
        {
          break;
        }
      }

      v23 += 72;
      if (!--v24)
      {
        return result;
      }
    }

    v48 = *(v25 + 8);
    v49 = v23 - 24;
    if (v48)
    {
      v48(v23 - 20, a4, 0, 0, 0, 0, 0);
    }

    *(v49 + 8) = 0;
    result = 0.0;
    *(v49 + 2) = 0u;
    *(v49 + 3) = 0u;
    *v49 = 0u;
    *(v49 + 1) = 0u;
  }

  else
  {
    sub_1000ABC7C(a1, &v51);
    for (i = 0; i != 2160; i += 72)
    {
      v27 = &xmmword_100B5BAE0 + i;
      if (*(&xmmword_100B5BAE0 + i + 2) == a1 && v27[24] == 2)
      {
        sub_10002242C(*(&xmmword_100B5BAE0 + i + 64));
        v27[24] = 3;
        v28 = sub_1001BD780((&xmmword_100B5BAE0 + i + 4), *(v27 + 1), *(&xmmword_100B5BAE0 + i), *(&xmmword_100B5BAE0 + i + 48), *(&xmmword_100B5BAE0 + i + 50), (&xmmword_100B5BAE0 + i + 52));
        if (v28)
        {
          v29 = v28;
          if (sub_10000C240())
          {
            sub_10000AF54("sendConnectReqPacket failed", v30, v31, v32, v33, v34, v35, v36, v50);
            v37 = sub_10000C050(0x52u);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              v38 = sub_10000C0FC();
              *buf = 136446466;
              v53 = v38;
              v54 = 1024;
              v55 = v29;
              _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
            }
          }

          *(v27 + 8) = 0;
          *(v27 + 2) = 0u;
          *(v27 + 3) = 0u;
          *v27 = 0u;
          *(v27 + 1) = 0u;
        }
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("scheduleIdleChannelCleanup at genericL2CAPConnectCompleteCB", v39, v40, v41, v42, v43, v44, v45, v50);
      v46 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = sub_10000C0FC();
        *buf = 136446210;
        v53 = v47;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    sub_1001BFF40();
  }

  return result;
}

void sub_1001C0304(uint64_t a1, uint64_t a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("genericL2CAPDisconnectInd cid=%d reason=%d", v4, v5, v6, v7, v8, v9, v10, a1);
    v11 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v18 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v12 = &xmmword_100B5BAE0;
  v13 = 30;
  do
  {
    v14 = *(v12 + 1);
    if (v14 == a1)
    {
      if (*(v12 + 15))
      {
        sub_1001BF95C(v14 | (*v12 << 16));
      }

      v15 = *(v12 + 2);
      if (v15)
      {
        v16 = *(v15 + 16);
        if (v16)
        {
          v16(a1 | (*v12 << 16), a2);
        }
      }

      *(v12 + 8) = 0;
      v12[2] = 0u;
      v12[3] = 0u;
      *v12 = 0u;
      v12[1] = 0u;
    }

    v12 = (v12 + 72);
    --v13;
  }

  while (v13);
}

uint64_t sub_1001C043C(int *a1, int a2, __int16 a3)
{
  v4 = a2;
  v6 = sub_100192628(word_100B5C350, 30, a2);
  if (v6)
  {
    v7 = v6;
    v8 = sub_100191F30(a3, v4, a1, 3, 2);
    v20 = 0;
    v19 = 0;
    v9 = *(v8 + 1);
    LOWORD(v20) = *(v8 + 5);
    WORD1(v20) = v9;
    sub_10001FF10((v8 + 1), 2u);
    sub_10001F968(v8 + 16, &v20, 4uLL, 2u);
    sub_10001F968(v8 + 16, &v19, *(v8 + 64), 2u);
    *(v8 + 19) = v7;
    return sub_1001921E0(v8, sub_1001BED08);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("sendDisconnectRspPacket channel not found: addr=%: cid=%d sid=%d result=%d", v11, v12, v13, v14, v15, v16, v17, a1);
      v18 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100812BB0();
      }
    }

    return 406;
  }
}

void sub_1001C05A0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = &word_100B5BB0A;
  v4 = 30;
  while (*(v3 - 18) != 1)
  {
    v3 += 36;
    if (!--v4)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("No connection Entry for this SDP search resp", v5, v6, v7, v8, v9, v10, v11, v69);
        v12 = sub_10000C050(0x52u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return;
    }
  }

  if (!a3)
  {
    if (*a1 == 6 && *(a1 + 2))
    {
      v13 = *(a1 + 8);
      if (*v13 == 6)
      {
        if (!*(v13 + 2))
        {
          goto LABEL_20;
        }

        goto LABEL_27;
      }

      if (*(v13 + 2) == 4)
      {
LABEL_27:
        v38 = *(v13 + 8);
        v39 = *(v38 + 8);
        v40 = 1;
        if (v39 == 4)
        {
LABEL_28:
          *v3 = *(*(*(v38 + 16 * v40 + 8) + 8) + 24);
          if (sub_10000C240())
          {
            sub_10000AF54("Got data PSM (0x%x)\n", v41, v42, v43, v44, v45, v46, v47, *v3);
            v48 = sub_10000C050(0x52u);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              v49 = sub_10000C0FC();
              *buf = 136446210;
              v71 = v49;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          if (v39 == 4)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v50 = 40;
          while (1)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Unknown attribute", v51, v52, v53, v54, v55, v56, v57, v69);
              v58 = sub_10000C050(0x52u);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                v60 = sub_10000C0FC();
                *buf = 136446466;
                v71 = v60;
                v72 = 1024;
                v73 = 0xFFFF;
                _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
              }
            }

            if (v40 + 1 >= *(v13 + 2))
            {
              break;
            }

            v38 = *(v13 + 8);
            v59 = *(v38 + v50);
            v40 += 2;
            v50 += 32;
            if (v59 == 4)
            {
              goto LABEL_28;
            }
          }
        }

        goto LABEL_16;
      }

      if (!sub_10000C240() || (sub_10000AF54("SDP response is not a sequence or has wrong number of elements\n", v61, v62, v63, v64, v65, v66, v67, v69), v68 = sub_10000C050(0x52u), !os_log_type_enabled(v68, OS_LOG_TYPE_ERROR)))
      {
LABEL_16:
        if (sub_10000C240())
        {
          sub_10000AF54("Didn't find what we were looking for, zap PSM's to prevent AAP connections when SDP disconnect completes", v22, v23, v24, v25, v26, v27, v28, v69);
          v29 = sub_10000C050(0x52u);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        *v3 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      if (!sub_10000C240())
      {
        goto LABEL_16;
      }

      sub_10000AF54("SDP search response has no responses, failing connection", v14, v15, v16, v17, v18, v19, v20, v69);
      v21 = sub_10000C050(0x52u);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }
    }

    sub_10080F7A0();
    goto LABEL_16;
  }

LABEL_20:
  if (sub_1002F61A8())
  {
    if (sub_10000C240())
    {
      sub_10000AF54("SDP Disconnect failed, clearing PSM", v30, v31, v32, v33, v34, v35, v36, v69);
      v37 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    *v3 = 0;
  }
}

FILE *sub_1001C092C(unsigned __int8 *a1, uint64_t a2)
{
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *__filename = 0u;
  v9 = 0u;
  if (sub_1001C0A64(a1, __filename))
  {
    return 0;
  }

  result = fopen(__filename, "r");
  if (result)
  {
    v5 = result;
    sub_100304AF8("link key request: retrieving stored key for %:\n", a1);
    v6 = fread((a2 + 6), 1uLL, 0x10uLL, v5);
    fread((a2 + 24), 4uLL, 1uLL, v5);
    fclose(v5);
    if (v6 == 16)
    {
      v7 = *a1;
      *(a2 + 4) = *(a1 + 2);
      *a2 = v7;
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1001C0A64(unsigned __int8 *a1, char *a2)
{
  v4 = getenv("HOME");
  if (v4)
  {
    snprintf(a2, 0x1FFuLL, "%s/Library/Preferences/Bluetooth/%02X-%02X-%02X-%02X-%02X-%02X.key", v4, *a1, a1[1], a1[2], a1[3], a1[4], a1[5]);
    result = 0;
    a2[511] = 0;
  }

  else
  {
    fwrite("GetFilenameFromAddress: $HOME not set\n", 0x26uLL, 1uLL, __stderrp);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1001C0B0C(unsigned __int8 *a1, const void *a2, int a3)
{
  __ptr = a3;
  memset(__s, 0, sizeof(__s));
  memset(__p, 0, sizeof(__p));
  result = sub_1001C0A64(a1, __p);
  if (!result)
  {
    __strlcpy_chk();
    v6 = strrchr(__s, 47);
    if (v6)
    {
      *v6 = 0;
    }

    if (mkdir(__s, 0x1EDu))
    {
      if (*__error() != 17)
      {
        return fprintf(__stderrp, "OI_LinkKeyStorage_WriteKey: could not create directory %s\n", __s);
      }
    }

    else
    {
      sub_100304AF8("OI_LinkKeyStorage_WriteKey: created directory %s\n", __s);
    }

    result = remove(__p, v7);
    if (a2)
    {
      result = fopen(__p, "w");
      if (result)
      {
        v8 = result;
        sub_100304AF8("new link key created for %:\n", a1);
        fwrite(a2, 1uLL, 0x10uLL, v8);
        fwrite(&__ptr, 4uLL, 1uLL, v8);
        return fclose(v8);
      }
    }
  }

  return result;
}

unsigned __int16 *sub_1001C0CEC(int a1)
{
  v1 = 0;
  while (1)
  {
    v2 = qword_100B5C658[v1];
    if (v2)
    {
      if (*v2 == a1)
      {
        break;
      }
    }

    if (++v1 == 16)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("GetContextByRfcommHandle - context not found", v3, v4, v5, v6, v7, v8, v9, v12);
        v10 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 0;
    }
  }

  return v2;
}

uint64_t sub_1001C0D7C(int a1)
{
  v1 = 0;
  while (1)
  {
    v2 = qword_100B5C658[v1];
    if (v2)
    {
      if (*(v2 + 194) == a1)
      {
        break;
      }
    }

    if (++v1 == 16)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("getContextByRfcommChannel - context not found", v3, v4, v5, v6, v7, v8, v9, v12);
        v10 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 0;
    }
  }

  return v2;
}

void sub_1001C0E0C(int a1)
{
  for (i = 0; i != 16; ++i)
  {
    v2 = qword_100B5C658[i];
    if (v2 && *(v2 + 194) == a1)
    {
      sub_10000C1E8(qword_100B5C658[i]);
      qword_100B5C658[i] = 0;
      return;
    }
  }

  sub_1000D660C();
}

unsigned __int16 *sub_1001C0E7C(int a1)
{
  v1 = 0;
  while (1)
  {
    v2 = qword_100B5C658[v1];
    if (v2)
    {
      if (*v2 == a1)
      {
        break;
      }
    }

    if (++v1 == 16)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("GetConnectionByCid - context not found", v3, v4, v5, v6, v7, v8, v9, v12);
        v10 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 0;
    }
  }

  return v2;
}

uint64_t sub_1001C0F0C(int a1)
{
  v1 = 0;
  while (1)
  {
    v2 = qword_100B5C658[v1];
    if (v2)
    {
      if (*(v2 + 196) == a1)
      {
        break;
      }
    }

    if (++v1 == 16)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("GetConnectionByPsm - context not found", v3, v4, v5, v6, v7, v8, v9, v12);
        v10 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 0;
    }
  }

  return v2;
}

void sub_1001C0F9C(int a1)
{
  for (i = 0; i != 16; ++i)
  {
    v2 = qword_100B5C658[i];
    if (v2 && *(v2 + 196) == a1)
    {
      sub_10000C1E8(qword_100B5C658[i]);
      qword_100B5C658[i] = 0;
      return;
    }
  }

  sub_1000D660C();
}

uint64_t sub_1001C100C(uint64_t a1)
{
  for (i = 0; i != 16; ++i)
  {
    v3 = qword_100B5C658[i];
    if (!v3)
    {
      qword_100B5C658[i] = a1;
      *(a1 + 208) = i;
      return v3;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("No more OBEX handles available!", v4, v5, v6, v7, v8, v9, v10, v1);
    v11 = sub_10000C050(0x18u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  return 104;
}

uint64_t sub_1001C10A0(unsigned int a1)
{
  if (a1 >= 0x10)
  {
    sub_1000D660C();
  }

  return qword_100B5C658[a1];
}

void sub_1001C10D8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    *(a1 + 40) = 0;
    sub_1000BB9CC(a2);
    if (a3)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OBEX server RFCOMM write error %! - disconnecting", v5, v6, v7, v8, v9, v10, v11, a3);
        v12 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

LABEL_23:
      sub_1001C2120(a1, 0);
      return;
    }

    if (*(a1 + 32) == 2)
    {
      sub_1001C131C(a1);
    }

    v21 = *(a1 + 204);
    if (v21 > 8)
    {
      if (v21 == 9)
      {
        *(a1 + 204) = 5;
        v22 = *(*(*(a1 + 168) + 16) + 24);
        goto LABEL_30;
      }

      if (v21 == 11)
      {
        if (*(a1 + 192) == 1)
        {

          goto LABEL_23;
        }

        *(a1 + 204) = 2;
        *(a1 + 201) = 0;
        v27 = *(*(*(a1 + 168) + 16) + 8);
        v28 = *(a1 + 208);

        v27(v28);
      }
    }

    else
    {
      if (v21 != 4)
      {
        if (v21 != 7)
        {
          return;
        }

        if ((*(a1 + 80) & 0xFE) == 0x48)
        {
          v22 = *(*(*(a1 + 168) + 16) + 16);
          v23 = *(a1 + 208);
          v24 = 1701;
LABEL_31:

          v22(v23, 0, v24);
          return;
        }

        *(a1 + 204) = 5;
        v22 = *(*(*(a1 + 168) + 16) + 16);
LABEL_30:
        v23 = *(a1 + 208);
        v24 = 0;
        goto LABEL_31;
      }

      v25 = *(a1 + 64);
      if (v25)
      {
        sub_10000C1E8(v25);
        *(a1 + 64) = 0;
      }

      *(a1 + 204) = 5;
      v26 = *(a1 + 176);
      if (v26)
      {
        sub_10002242C(v26);
        *(a1 + 176) = 0;
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Write confirmation for bogus link %x %!", v13, v14, v15, v16, v17, v18, v19, &link);
    v20 = sub_10000C050(0x18u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_1001C131C(uint64_t a1)
{
  if (*(a1 + 32) != 2)
  {
    sub_1000D660C();
  }

  if (*(a1 + 31))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexsrv_common.c");
    goto LABEL_233;
  }

  v2 = *(a1 + 26);
  v3 = *(a1 + 28);
  if (v2 <= v3)
  {
LABEL_233:
    v193 = "ByteStream_NumReadBytesAvail(connection->common.rcvPacket) >= 1";
    goto LABEL_235;
  }

  if (*(a1 + 30) != 1)
  {
    v193 = "(connection->common.rcvPacket).__RWFlag == BYTESTREAM_READ";
LABEL_235:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexsrv_common.c", 1200, v193);
  }

  v4 = *(a1 + 16);
  *(a1 + 28) = v3 + 1;
  if ((v2 - (v3 + 1)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexsrv_common.c", 1201, "ByteStream_NumReadBytesAvail(connection->common.rcvPacket) >= (sizeof(uint16_t))");
  }

  v5 = *(v4 + v3);
  v6 = v3 + 3;
  *(a1 + 28) = v3 + 3;
  v7 = *(a1 + 204);
  if (v7 == 2 && (v5 & 0x7F) != 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Received invalid command after OBEX disconnect. Terminating underlying transport.", v8, v9, v10, v11, v12, v13, v14, v194);
      v15 = sub_10000C050(0x18u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1001C2120(a1, 0);
    return;
  }

  v16 = v5 | 0x80;
  v17 = 1717;
  if ((v5 | 0x80) > 132)
  {
    if ((v16 - 134) < 2)
    {
      sub_1001C250C(a1, 209);
      v17 = 1717;
      goto LABEL_35;
    }

    if (v16 != 133)
    {
      if (v16 == 255)
      {
        if ((v7 - 6) <= 3)
        {
          v27 = qword_1008A3618[v7 - 6];
          *(a1 + 204) = 5;
          (*(*(*(a1 + 168) + 16) + v27))(*(a1 + 208), 0, 1719);
        }

        if (*(a1 + 4) == 1)
        {
          sub_100302BB4(*(a1 + 112));
        }

        v17 = sub_1001C250C(a1, 160);
LABEL_159:
        *(a1 + 32) = 0;
        if (!v17)
        {
          return;
        }

        goto LABEL_160;
      }

      goto LABEL_35;
    }

    ptr = 0;
    v196 = 0;
    if (v7 != 5)
    {
      v17 = 1711;
      goto LABEL_151;
    }

    if (!*(*(*(a1 + 168) + 16) + 32))
    {
      goto LABEL_150;
    }

    if (v2 <= v6)
    {
      *(a1 + 31) = 1;
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexsrv_common.c");
    }

    else
    {
      *(a1 + 28) = v3 + 4;
      if (v2 > (v3 + 4))
      {
        v40 = *(v4 + (v3 + 3));
        *(a1 + 28) = v3 + 5;
        v41 = sub_100225EAC(&ptr, (a1 + 16));
        if (v41)
        {
LABEL_59:
          v17 = v41;
          goto LABEL_151;
        }

        if (*(a1 + 120) != 1)
        {
          goto LABEL_146;
        }

        v97 = sub_100225E80(&ptr, 203);
        if (!v97)
        {
          v17 = 1714;
          goto LABEL_151;
        }

        if (*(v97 + 2) == a1)
        {
LABEL_146:
          v98 = sub_100225E80(&ptr, 1);
          if (v98)
          {
            v100 = *(v98 + 4);
            v99 = v98 + 8;
            if (v100)
            {
              v101 = v99;
            }

            else
            {
              v101 = 0;
            }
          }

          else
          {
            v101 = 0;
          }

          if (v101 || (v40 & 2) != 0)
          {
            if ((v101 == 0) | v40 & 1)
            {
              v127 = 0;
            }

            else
            {
              v127 = v101;
            }

            *(a1 + 204) = 10;
            v41 = (*(*(*(a1 + 168) + 16) + 32))(*(a1 + 208), v127, v40 & 1, (v40 & 2) == 0);
            if (!v41)
            {
              goto LABEL_122;
            }

            goto LABEL_59;
          }

          v17 = 1736;
LABEL_151:
          if (sub_10000C240())
          {
            sub_10000AF54("SetPathCommand error %!", v102, v103, v104, v105, v106, v107, v108, v17);
            v109 = sub_10000C050(0x18u);
            if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          if (*(a1 + 204) == 10)
          {
            *(a1 + 204) = 5;
          }

          if (ptr)
          {
            sub_10000C1E8(ptr);
            ptr = 0;
          }

          goto LABEL_158;
        }

LABEL_150:
        v17 = 1715;
        goto LABEL_151;
      }
    }

    *(a1 + 31) = 1;
    v17 = 1721;
    goto LABEL_151;
  }

  if (v16 <= 129)
  {
    if (v16 != 128)
    {
      if (v16 == 129)
      {
        *(a1 + 204) = 11;
        v18 = sub_1001C250C(a1, 160);
        if (!v18)
        {
          *(a1 + 32) = 0;
          return;
        }

        v17 = v18;
        if (sub_10000C240())
        {
          sub_10000AF54("OI_OBEXCOMMON_SendOk failed %!", v19, v20, v21, v22, v23, v24, v25, v17);
          v26 = sub_10000C050(0x18u);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        sub_1001C2120(a1, 0);
      }

      goto LABEL_35;
    }

    ptr = 0;
    v196 = 0;
    if (v7 != 11 && v7 != 2)
    {
      v17 = 1715;
      goto LABEL_127;
    }

    if (v2 <= v6)
    {
      v29 = 0;
      *(a1 + 31) = 1;
    }

    else
    {
      *(a1 + 28) = v3 + 4;
      v29 = *(v4 + (v3 + 3)) >> 4;
      if (v29 == 1)
      {
        if (v2 <= (v3 + 4))
        {
          *(a1 + 31) = 1;
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexsrv_common.c");
        }

        else
        {
          *(a1 + 28) = v3 + 5;
          if (*(v4 + (v3 + 4)))
          {
            v17 = 1702;
            goto LABEL_127;
          }

          if ((v2 - (v3 + 5)) > 1)
          {
            v94 = __rev16(*(v4 + (v3 + 5)));
            *(a1 + 28) = v3 + 7;
            v95 = *(a1 + 4);
            if (v95)
            {
              if (v95 != 1)
              {
                v96 = *(a1 + 76);
LABEL_182:
                if (v96 <= 0xC7)
                {
                  if (sub_10000C240())
                  {
                    sub_10000AF54("OBEX Server connect - packet size too small %d", v128, v129, v130, v131, v132, v133, v134, *(a1 + 76));
                    v135 = sub_10000C050(0x18u);
                    if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
                    {
                      sub_10080F7A0();
                    }
                  }

                  v17 = 1736;
                  goto LABEL_127;
                }

                v136 = sub_100225EAC(&ptr, (a1 + 16));
                if (v136)
                {
                  v17 = v136;
                  if (!sub_10000C240())
                  {
                    goto LABEL_127;
                  }

                  sub_10000AF54("OI_OBEXCOMMON_ParseHeaderList failed!", v137, v138, v139, v140, v141, v142, v143, v194);
                  v144 = sub_10000C050(0x18u);
                  if (!os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_127;
                  }

                  goto LABEL_220;
                }

                v145 = sub_100225E80(&ptr, 70);
                if (v145)
                {
                  v146 = (v145 + 8);
                }

                else
                {
                  v146 = 0;
                }

                v147 = sub_1001C21EC(a1, v146);
                if (v147)
                {
                  v17 = v147;
                  if (!sub_10000C240())
                  {
                    goto LABEL_127;
                  }

                  sub_10000AF54("No matching server target was found", v148, v149, v150, v151, v152, v153, v154, v194);
                  v155 = sub_10000C050(0x18u);
                  if (!os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_127;
                  }

                  goto LABEL_220;
                }

                v156 = sub_100225E80(&ptr, 77);
                if (v156)
                {
                  v157 = v156;
                  if (!*(a1 + 64))
                  {
                    v158 = sub_1001BBBD8(0x9BuLL, 0x100004010079EEDuLL);
                    *(a1 + 64) = v158;
                    if (!v158)
                    {
                      if (!sub_10000C240())
                      {
                        goto LABEL_227;
                      }

                      sub_10000AF54("OBEX server could not allocate authentication state", v176, v177, v178, v179, v180, v181, v182, v194);
                      v183 = sub_10000C050(0x18u);
                      if (!os_log_type_enabled(v183, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_227;
                      }

                      goto LABEL_226;
                    }
                  }

                  sub_10022394C(a1, v157);
                  v159 = 1;
                }

                else
                {
                  v159 = 0;
                }

                *(a1 + 200) = v159;
                v160 = *(*(a1 + 168) + 24);
                if (!v160)
                {
                  v165 = 0;
                  v164 = 0;
                  *(a1 + 56) = 0;
                  *(a1 + 199) = 0;
                  goto LABEL_214;
                }

                *(a1 + 56) = 1;
                *(a1 + 199) = 1;
                v161 = *(a1 + 64);
                if (v161)
                {
LABEL_207:
                  if (v160 == 2)
                  {
                    v161[59] = 1;
                  }

                  if (*(a1 + 193) >= 3u)
                  {
                    goto LABEL_212;
                  }

                  v162 = sub_100225E80(&ptr, 78);
                  if (!v162)
                  {
                    v167 = *(a1 + 199);
                    *(a1 + 204) = 3;
                    if (v167)
                    {
                      v17 = sub_1001C2ABC(*(a1 + 208), 1, 0);
                      if (!v17)
                      {
                        goto LABEL_159;
                      }

                      if (!sub_10000C240())
                      {
                        goto LABEL_127;
                      }

                      sub_10000AF54("OBEX server could not accept connection", v168, v169, v170, v171, v172, v173, v174, v194);
                      v175 = sub_10000C050(0x18u);
                      if (!os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_127;
                      }

LABEL_220:
                      sub_10080F7A0();
                      goto LABEL_127;
                    }

                    v165 = 0;
                    v164 = 0;
LABEL_215:
                    ++*(a1 + 193);
                    v166 = sub_100225E80(&ptr, 76);
                    *(a1 + 201) = 1;
                    (**(*(a1 + 168) + 16))(*(a1 + 208), *(a1 + 200) | *(a1 + 199), v165, v164, v166);
                    v17 = 0;
LABEL_136:
                    if (ptr)
                    {
                      sub_10000C1E8(ptr);
                    }

                    goto LABEL_159;
                  }

                  sub_100223A20(a1, v162);
                  v163 = *(a1 + 64);
                  v164 = *(v163 + 58);
                  if (__PAIR64__(*(v163 + 59), v164) == 0x100000000)
                  {
LABEL_212:
                    sub_10022387C(a1);
                    v17 = 1735;
                    goto LABEL_127;
                  }

                  v192 = v163 + 38;
                  if (v164)
                  {
                    v165 = v192;
                  }

                  else
                  {
                    v165 = 0;
                  }

LABEL_214:
                  *(a1 + 204) = 3;
                  goto LABEL_215;
                }

                v161 = sub_1001BBBD8(0x9BuLL, 0x100004010079EEDuLL);
                *(a1 + 64) = v161;
                if (v161)
                {
                  v160 = *(*(a1 + 168) + 24);
                  goto LABEL_207;
                }

                if (!sub_10000C240() || (sub_10000AF54("OBEX server could not allocate authentication state", v184, v185, v186, v187, v188, v189, v190, v194), v191 = sub_10000C050(0x18u), !os_log_type_enabled(v191, OS_LOG_TYPE_ERROR)))
                {
LABEL_227:
                  v17 = 0;
LABEL_127:
                  if (sub_10000C240())
                  {
                    sub_10000AF54("ConnectCommand error %!", v75, v76, v77, v78, v79, v80, v81, v17);
                    v82 = sub_10000C050(0x18u);
                    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                    {
                      sub_10080F7A0();
                    }
                  }

                  v83 = sub_1001C2BB4(*(a1 + 208), 0, v17);
                  if (v83)
                  {
                    v84 = v83;
                    if (sub_10000C240())
                    {
                      sub_10000AF54("OBEX server failed to accept connection %!", v85, v86, v87, v88, v89, v90, v91, v84);
                      v92 = sub_10000C050(0x18u);
                      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
                      {
                        sub_10080F7A0();
                      }
                    }
                  }

                  v93 = *(a1 + 64);
                  if (v93)
                  {
                    sub_10000C1E8(v93);
                    *(a1 + 64) = 0;
                  }

                  goto LABEL_136;
                }

LABEL_226:
                sub_10080F7A0();
                goto LABEL_227;
              }

              v96 = *(a1 + 76);
              if (v96 <= v94)
              {
                goto LABEL_182;
              }
            }

            *(a1 + 76) = v94;
            v96 = v94;
            goto LABEL_182;
          }
        }

        *(a1 + 31) = 1;
        v17 = 1707;
        goto LABEL_127;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("OBEX Server connect - version mismatch %d.%d", v56, v57, v58, v59, v60, v61, v62, v29);
      v63 = sub_10000C050(0x18u);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v17 = 1718;
    goto LABEL_127;
  }

  if (v16 == 130)
  {
    ptr = 0;
    v196 = 0;
    v17 = sub_100225EAC(&ptr, (a1 + 16));
    if (v17)
    {
LABEL_44:
      if (sub_10000C240())
      {
        sub_10000AF54("PutCommand error %!", v30, v31, v32, v33, v34, v35, v36, v17);
        v37 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      if (ptr)
      {
        sub_10000C1E8(ptr);
        ptr = 0;
      }

      v38 = *(a1 + 204);
      if (v38 > 9 || ((1 << v38) & 0x320) == 0)
      {
        goto LABEL_158;
      }

      v39 = *(*(*(a1 + 168) + 16) + 24);
      if (!v39)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }

    v51 = *(a1 + 204);
    if (v51 != 8)
    {
      if (v51 != 5)
      {
        v17 = 1711;
        goto LABEL_44;
      }

      if (*(a1 + 120) == 1)
      {
        v52 = sub_100225E80(&ptr, 203);
        if (!v52)
        {
          v17 = 1714;
          goto LABEL_44;
        }

        if (*(v52 + 2) != a1)
        {
LABEL_113:
          v17 = 1715;
          goto LABEL_44;
        }
      }

      *(a1 + 204) = 8;
    }

    v53 = *(*(*(a1 + 168) + 16) + 24);
    if (v53)
    {
      if ((v5 & 0x80u) == 0)
      {
        v54 = 1701;
      }

      else
      {
        v54 = 0;
      }

      v55 = v53(*(a1 + 208), &ptr, v54);
      if (!v55)
      {
        goto LABEL_122;
      }

LABEL_121:
      *(a1 + 204) = 5;
      v74 = sub_1001C2A0C(v55);
      sub_1001C250C(a1, v74);
LABEL_122:
      if (ptr)
      {
        sub_10000C1E8(ptr);
      }

      v17 = 0;
      goto LABEL_159;
    }

    goto LABEL_113;
  }

  if (v16 == 131)
  {
    ptr = 0;
    v196 = 0;
    if ((v7 - 6) >= 2)
    {
      if (v7 != 5)
      {
        v17 = 1711;
        goto LABEL_89;
      }

      *(a1 + 204) = 6;
      v28 = 1;
    }

    else
    {
      v28 = 0;
    }

    if (!*(*(*(a1 + 168) + 16) + 16))
    {
      v17 = 1715;
      goto LABEL_89;
    }

    v42 = sub_100225EAC(&ptr, (a1 + 16));
    if (v42)
    {
      v17 = v42;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_OBEXCOMMON_ParseHeaderList failed %!", v43, v44, v45, v46, v47, v48, v49, v17);
        v50 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
LABEL_66:
          sub_10080F7A0();
        }
      }

LABEL_89:
      if (sub_10000C240())
      {
        sub_10000AF54("OBEX get command error %!", v64, v65, v66, v67, v68, v69, v70, v17);
        v71 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      if (ptr)
      {
        sub_10000C1E8(ptr);
        ptr = 0;
      }

      if ((*(a1 + 204) - 5) > 2)
      {
        goto LABEL_158;
      }

      v39 = *(*(*(a1 + 168) + 16) + 16);
      if (!v39)
      {
LABEL_53:
        *(a1 + 204) = 5;
LABEL_158:
        v110 = sub_1001C2A0C(v17);
        sub_1001C250C(a1, v110);
        goto LABEL_159;
      }

LABEL_52:
      v39(*(a1 + 208), 0, v17);
      goto LABEL_53;
    }

    if (sub_100225E80(&ptr, 152) && *(a1 + 4) != 1)
    {
      sub_1000D660C();
    }

    if (!v28)
    {
      if ((*(a1 + 80) & 0xFE) == 0x48)
      {
        v17 = sub_1001C2800(a1);
        if (v17)
        {
          goto LABEL_89;
        }

        goto LABEL_122;
      }

LABEL_117:
      if ((v5 & 0x80u) == 0)
      {
        v73 = 1752;
      }

      else
      {
        v73 = 1701;
      }

      v55 = (*(*(*(a1 + 168) + 16) + 16))(*(a1 + 208), &ptr, v73);
      if (!v55)
      {
        goto LABEL_122;
      }

      goto LABEL_121;
    }

    if (!sub_100225E80(&ptr, 1) && !sub_100225E80(&ptr, 66))
    {
      v17 = 1714;
      goto LABEL_89;
    }

    if (*(a1 + 120) == 1)
    {
      v72 = sub_100225E80(&ptr, 203);
      if (v72)
      {
        if (*(v72 + 2) == a1)
        {
          goto LABEL_106;
        }

        v17 = 1715;
      }

      else
      {
        v17 = 1714;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("VerifyConnectionId failed %!", v119, v120, v121, v122, v123, v124, v125, v17);
        v126 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_66;
        }
      }

      goto LABEL_89;
    }

LABEL_106:
    if (sub_100225E80(&ptr, 151) && *(a1 + 4) != 1)
    {
      sub_1000D660C();
    }

    *(a1 + 80) = 0;
    goto LABEL_117;
  }

LABEL_35:
  *(a1 + 32) = 0;
LABEL_160:
  if (sub_10000C240())
  {
    sub_10000AF54("OBEX request error %!", v111, v112, v113, v114, v115, v116, v117, v17);
    v118 = sub_10000C050(0x18u);
    if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_1001C2120(unsigned __int16 *a1, char a2)
{
  v4 = *(a1 + 1);
  if (v4 == 1)
  {
    v5 = sub_10029104C(*a1, 436);
  }

  else
  {
    if (v4)
    {
      v6 = 101;
      goto LABEL_9;
    }

    v5 = sub_1002EFF1C(*a1, 926);
  }

  v6 = v5;
  if (!v5)
  {
    if (a2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_9:
  if (sub_10000C240())
  {
    sub_10000AF54("DisconnectTransport failed with %! for transport %!", v7, v8, v9, v10, v11, v12, v13, v6);
    v14 = sub_10000C050(0x18u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

LABEL_12:
  sub_1001C2348(a1);
LABEL_13:
  *(a1 + 51) = 0;
  return v6;
}

uint64_t sub_1001C21EC(uint64_t a1, const void **a2)
{
  *(a1 + 120) = a2 != 0;
  v4 = (a1 + 128);
  while (1)
  {
    v5 = *v4;
    if (a2)
    {
      break;
    }

    if (!*v4)
    {
      goto LABEL_11;
    }

LABEL_9:
    v4 = *(v4 + 4);
    if (!v4)
    {
      return 1715;
    }
  }

  v6 = *a2;
  if (v6 == v5)
  {
    if (!memcmp(a2[1], *(v4 + 1), v5))
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v6 | v5)
  {
    goto LABEL_9;
  }

LABEL_11:
  result = 0;
  *(a1 + 168) = v4;
  return result;
}

uint64_t sub_1001C2278(unsigned __int16 *a1)
{
  v2 = *(a1 + 1);
  if (v2 == 1)
  {
    v3 = sub_100307BF8(a1);
LABEL_5:
    v4 = v3;
    if (!v3)
    {
      return v4;
    }

    goto LABEL_8;
  }

  if (!v2)
  {
    v3 = sub_1002EF65C(sub_1002265BC, *a1, *(a1 + 5));
    goto LABEL_5;
  }

  v4 = 101;
LABEL_8:
  if (sub_10000C240())
  {
    sub_10000AF54("ServerSendPacket failed with %! for transport type %d", v5, v6, v7, v8, v9, v10, v11, v4);
    v12 = sub_10000C050(0x18u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  sub_1000BB9CC(*(a1 + 5));
  *(a1 + 5) = 0;
  return v4;
}

void sub_1001C2348(uint64_t a1)
{
  v2 = *(a1 + 204);
  *(a1 + 204) = 0;
  *(a1 + 193) = 0;
  *(a1 + 198) = 0;
  v3 = *(a1 + 176);
  if (v3)
  {
    sub_10002242C(v3);
    *(a1 + 176) = 0;
  }

  if ((v2 - 6) <= 3)
  {
    (*(*(*(a1 + 168) + 16) + qword_1008A3618[v2 - 6]))(*(a1 + 208), 0, 1709);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    sub_10000C1E8(v4);
    *(a1 + 64) = 0;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    sub_10000C1E8(v5);
    *(a1 + 8) = 0;
  }

  if (*(a1 + 201) == 1)
  {
    *(a1 + 201) = 0;
    v6 = *(*(*(a1 + 168) + 16) + 8);
    v7 = *(a1 + 208);

    v6(v7);
  }
}

void sub_1001C2418(uint64_t a1, void *a2, size_t a3)
{
  if (a1)
  {
    v4 = sub_100225B28(a1, a2, a3);
    if (v4)
    {
      v5 = v4;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_OBEXCOMMON_ReassemblePacket failed %!", v6, v7, v8, v9, v10, v11, v12, v5);
        v13 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
LABEL_5:
          sub_10080F7A0();
        }
      }
    }

    else if (*(a1 + 32) == 2 && !*(a1 + 40))
    {

      sub_1001C131C(a1);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("OBEX received data for unknown connection", v14, v15, v16, v17, v18, v19, v20, v22);
    v21 = sub_10000C050(0x18u);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }
  }
}

uint64_t sub_1001C250C(uint64_t a1, char a2)
{
  v15[0] = 0;
  v15[1] = 0;
  memset(v14, 0, sizeof(v14));
  sub_100225AF4(a1, a2, v15);
  v3 = sub_100225400(a1, v15, v14, 0, 0);
  if (!v3)
  {
    return sub_1001C2278(a1);
  }

  v4 = v3;
  if (sub_10000C240())
  {
    sub_10000AF54("Marshalling packet failed with %!", v5, v6, v7, v8, v9, v10, v11, v4);
    v12 = sub_10000C050(0x18u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  return v4;
}

uint64_t sub_1001C25BC(unsigned int a1, uint64_t a2, int a3)
{
  if (a1 >= 0x10)
  {
    sub_1000D660C();
  }

  v6 = qword_100B5C658[a1];
  if (!v6)
  {
    return 101;
  }

  if (*(v6 + 204) != 6)
  {
    return 1711;
  }

  v28[0] = 0;
  v28[1] = 0;
  if (a3 == 1701)
  {
    v7 = -112;
  }

  else
  {
    if (a3)
    {
      v8 = 0;
LABEL_21:
      *(v6 + 204) = 5;
      v26 = sub_1001C2A0C(a3);
      sub_1001C250C(v6, v26);
      return v8;
    }

    *(v6 + 204) = 7;
    v7 = -96;
  }

  sub_100225AF4(v6, v7, v28);
  v9 = sub_100225400(v6, v28, 0, 0, a2);
  if (v9)
  {
    v8 = v9;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_OBEXCOMMON_MarshalPacket failed with status %!", v10, v11, v12, v13, v14, v15, v16, v8);
      v17 = sub_10000C050(0x18u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    goto LABEL_21;
  }

  v8 = sub_1001C2278(v6);
  if (v8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_OBEXSRV_GetResponse failed %!", v18, v19, v20, v21, v22, v23, v24, v8);
      v25 = sub_10000C050(0x18u);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    a3 = v8;
    goto LABEL_21;
  }

  return v8;
}

uint64_t sub_1001C2744(unsigned int a1)
{
  if (a1 >= 0x10)
  {
    sub_1000D660C();
  }

  v2 = qword_100B5C658[a1];
  v3 = sub_1001C2800(v2);
  if (v3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OBEX continue get command error %!", v4, v5, v6, v7, v8, v9, v10, v3);
      v11 = sub_10000C050(0x18u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    *(v2 + 204) = 5;
    v12 = sub_1001C2A0C(v3);
    sub_1001C250C(v2, v12);
  }

  return v3;
}

uint64_t sub_1001C2800(uint64_t a1)
{
  v2 = sub_100225A60(a1);
  if (v2)
  {
    v3 = v2;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_OBEXCOMMON_MarshalBodySegment failed %!", v4, v5, v6, v7, v8, v9, v10, v3);
      v11 = sub_10000C050(0x18u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return v3;
  }

  else
  {

    return sub_1001C2278(a1);
  }
}

uint64_t sub_1001C28A0(unsigned int a1, uint64_t a2, int a3)
{
  if (a1 >= 0x10)
  {
    sub_1000D660C();
  }

  v6 = qword_100B5C658[a1];
  if (!v6)
  {
    return 101;
  }

  if (*(v6 + 204) != 8)
  {
    return 1711;
  }

  v20[0] = 0;
  v20[1] = 0;
  if (a3 != 1750)
  {
    if (a3 == 1701)
    {
      v7 = -112;
      if (!a2)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    if (a3)
    {
      v8 = 0;
LABEL_22:
      *(v6 + 204) = 5;
      v18 = sub_1001C2A0C(a3);
      sub_1001C250C(v6, v18);
      return v8;
    }
  }

  *(v6 + 204) = 9;
  v7 = sub_1001C2A0C(a3);
  if (!a2)
  {
    *(v6 + 204) = 5;
LABEL_15:
    v9 = sub_1001C250C(v6, v7);
    goto LABEL_16;
  }

LABEL_13:
  sub_100225AF4(v6, v7, v20);
  v8 = sub_100225400(v6, v20, 0, 0, a2);
  if (v8)
  {
    goto LABEL_17;
  }

  v9 = sub_1001C2278(v6);
LABEL_16:
  v8 = v9;
  if (v9)
  {
LABEL_17:
    if (sub_10000C240())
    {
      sub_10000AF54("OI_OBEXSRV_PutResponse failed %!", v10, v11, v12, v13, v14, v15, v16, v8);
      v17 = sub_10000C050(0x18u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    a3 = v8;
    goto LABEL_22;
  }

  return v8;
}

uint64_t sub_1001C2A0C(int a1)
{
  switch(a1)
  {
    case 1707:
    case 1714:
    case 1718:
    case 1720:
    case 1721:
      result = 192;
      break;
    case 1708:
      result = 203;
      break;
    case 1709:
    case 1710:
    case 1712:
    case 1713:
    case 1716:
    case 1719:
    case 1722:
    case 1723:
    case 1725:
    case 1726:
    case 1727:
    case 1728:
    case 1729:
    case 1730:
    case 1731:
    case 1732:
    case 1733:
    case 1734:
    case 1737:
    case 1738:
    case 1739:
    case 1740:
    case 1744:
    case 1745:
    case 1748:
      goto LABEL_7;
    case 1711:
    case 1735:
      result = 195;
      break;
    case 1715:
      result = 211;
      break;
    case 1717:
    case 1743:
      result = 209;
      break;
    case 1724:
      result = 196;
      break;
    case 1736:
      result = 198;
      break;
    case 1741:
      result = 204;
      break;
    case 1742:
      result = 193;
      break;
    case 1746:
      result = 224;
      break;
    case 1747:
      result = 225;
      break;
    case 1749:
      result = 207;
      break;
    case 1750:
      result = 166;
      break;
    case 1751:
      result = 197;
      break;
    default:
      if (a1)
      {
LABEL_7:
        result = 208;
      }

      else
      {
        result = 160;
      }

      break;
  }

  return result;
}

uint64_t sub_1001C2ABC(unsigned int a1, int a2, int a3)
{
  if (!dword_100BCE290)
  {
    return 103;
  }

  if (a1 >= 0x10)
  {
    sub_1000D660C();
  }

  v6 = qword_100B5C658[a1];
  if (!v6 || *(v6 + 204) != 3)
  {
    return 1745;
  }

  if ((a3 == 0) == a2)
  {

    return sub_1001C2BB4(a1, a2, a3);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid combination of accept and status", v7, v8, v9, v10, v11, v12, v13, v16);
      v14 = sub_10000C050(0x18u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 101;
  }
}

uint64_t sub_1001C2BB4(unsigned int a1, int a2, int a3)
{
  if (a1 >= 0x10)
  {
    sub_1000D660C();
  }

  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0;
  v29 = 0;
  v6 = qword_100B5C658[a1];
  if (a2)
  {
    if (*(v6 + 199) == 1)
    {
      *(v6 + 204) = 2;
      v7 = sub_1003045A0(0x18u);
      sub_100223BF4(*(v7 + 16), v6, &v30);
      v8 = -63;
      v9 = 1;
    }

    else
    {
      *(v6 + 204) = 4;
      if (*(v6 + 120) == 1)
      {
        LOBYTE(v30) = -53;
        DWORD2(v30) = v6;
        BYTE8(v31) = 74;
        v24 = *(v6 + 168);
        LOWORD(v32) = *v24;
        *(&v32 + 1) = *(v24 + 8);
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }

      if (*(v6 + 200) == 1)
      {
        sub_100223B08(v6, &v30 + 24 * v9);
        v8 = -96;
        v9 |= 1u;
      }

      else
      {
        v8 = -96;
      }
    }
  }

  else
  {
    *(v6 + 204) = 2;
    v8 = sub_1001C2A0C(a3);
    v9 = 0;
  }

  sub_100225AF4(v6, v8, &v28);
  if (HIBYTE(v29))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexsrv_common.c");
    goto LABEL_32;
  }

  v10 = WORD2(v29);
  if (WORD1(v29) <= WORD2(v29))
  {
LABEL_32:
    v25 = "ByteStream_NumReadBytesAvail(pkt) >= 1";
    goto LABEL_34;
  }

  if (BYTE6(v29) != 2)
  {
    v25 = "(pkt).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexsrv_common.c", 534, v25);
  }

  ++WORD2(v29);
  *(v28 + v10) = 16;
  if (HIBYTE(v29))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexsrv_common.c");
    goto LABEL_36;
  }

  v11 = WORD2(v29);
  if (WORD1(v29) <= WORD2(v29))
  {
LABEL_36:
    v26 = "ByteStream_NumReadBytesAvail(pkt) >= 1";
    goto LABEL_38;
  }

  if (BYTE6(v29) != 2)
  {
    v26 = "(pkt).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexsrv_common.c", 535, v26);
  }

  ++WORD2(v29);
  *(v28 + v11) = 0;
  if (HIBYTE(v29))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexsrv_common.c");
    goto LABEL_40;
  }

  if (WORD1(v29) - WORD2(v29) <= 1)
  {
LABEL_40:
    v27 = "ByteStream_NumReadBytesAvail(pkt) >= 2";
    goto LABEL_42;
  }

  if (BYTE6(v29) != 2)
  {
    v27 = "(pkt).__RWFlag == BYTESTREAM_WRITE";
LABEL_42:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexsrv_common.c", 536, v27);
  }

  *(v28 + WORD2(v29) + 1) = *(v6 + 74);
  *(v28 + WORD2(v29)) = *(v6 + 75);
  WORD2(v29) += 2;
  v12 = sub_100225400(v6, &v28, &v30, v9, 0);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = sub_1001C2278(v6);
    if (!v13)
    {
      return v13;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("acceptConnect error %!", v14, v15, v16, v17, v18, v19, v20, v13);
    v21 = sub_10000C050(0x18u);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  *(v6 + 204) = 2;
  v22 = *(v6 + 64);
  if (v22)
  {
    sub_10000C1E8(v22);
    *(v6 + 64) = 0;
  }

  return v13;
}

uint64_t sub_1001C2F44(unsigned int a1, const void *a2, unsigned int a3, char *a4, char a5)
{
  if (!dword_100BCE290)
  {
    return 103;
  }

  if (a1 >= 0x10)
  {
    sub_1000D660C();
  }

  v10 = qword_100B5C658[a1];
  v33 = v10;
  if (!v10 || *(v10 + 204) != 3 || (*(v10 + 199) & 1) == 0 && *(v10 + 200) != 1)
  {
    return 1745;
  }

  v34[0] = 0;
  if (a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = &unk_1008A3610;
  }

  *(v10 + 57) = a5;
  v12 = sub_1002238A0(v10, a2, a3, v11);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    if (*(v10 + 199) != 1)
    {
      goto LABEL_27;
    }

    if (!sub_100223D04(v10))
    {
      *(v10 + 199) = 0;
      v34[1] = &v33;
      LOWORD(v34[0]) = 8;
      sub_1000228C0(sub_1001C3150, v34, 0);
      return 0;
    }

    if (*(v10 + 193) > 2u)
    {
      v13 = 1735;
    }

    else
    {
LABEL_27:
      v13 = sub_1001C2ABC(a1, 1, 0);
      if (!v13)
      {
        return v13;
      }
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("OI_OBEXSRV_AuthenticationRsp error %!", v14, v15, v16, v17, v18, v19, v20, v13);
    v21 = sub_10000C050(0x18u);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  v22 = sub_1001C2BB4(a1, 0, v13);
  if (v22)
  {
    v23 = v22;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_OBEXSRV_AuthenticationRsp: Failure to send error response %!", v24, v25, v26, v27, v28, v29, v30, v23);
      v31 = sub_10000C050(0x18u);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  *(v10 + 204) = 2;
  sub_10022387C(v10);
  return v13;
}

uint64_t sub_1001C3150(uint64_t a1)
{
  v1 = **(a1 + 8);
  if (*(v1 + 199) == 1)
  {
    sub_1000D660C();
  }

  *(v1 + 201) = 1;
  v2 = **(*(v1 + 168) + 16);
  v3 = *(v1 + 208);

  return v2(v3, 0, 0, 0, 0);
}

uint64_t sub_1001C31BC(unsigned int a1, int a2)
{
  if (a1 >= 0x10)
  {
    sub_1000D660C();
  }

  v4 = qword_100B5C658[a1];
  if (!v4 || *(v4 + 204) != 10)
  {
    return 1745;
  }

  *(v4 + 204) = 5;
  if (a2)
  {
    v5 = sub_1001C2A0C(a2);
    sub_1001C250C(v4, v5);
    return 0;
  }

  else
  {

    return sub_1001C250C(v4, 160);
  }
}

uint64_t sub_1001C3258(unsigned int a1)
{
  if (a1 >= 0x10)
  {
    sub_1000D660C();
  }

  v2 = qword_100B5C658[a1];
  if (v2)
  {
    if (*(v2 + 204) >= 3u)
    {
      LOWORD(v2) = *(v2 + 76) - 6;
    }

    else
    {
      LOWORD(v2) = 0;
    }
  }

  return v2;
}

uint64_t sub_1001C32B4(unsigned int a1, uint64_t a2)
{
  if (a1 >= 0x10)
  {
    sub_1000D660C();
  }

  v4 = qword_100B5C658[a1];
  if (!v4)
  {
    return 1709;
  }

  result = 0;
  v6 = *(v4 + 104);
  *(a2 + 4) = *(v4 + 108);
  *a2 = v6;
  return result;
}

uint64_t sub_1001C3310(unsigned int a1, _DWORD *a2)
{
  if (a1 >= 0x10)
  {
    sub_1000D660C();
  }

  v4 = qword_100B5C658[a1];
  if (!v4)
  {
    return 1709;
  }

  result = 0;
  *a2 = *(v4 + 4);
  return result;
}

uint64_t sub_1001C3364(unsigned int a1)
{
  if (a1 >= 0x10)
  {
    sub_1000D660C();
  }

  v2 = qword_100B5C658[a1];
  if (!v2)
  {
    return 101;
  }

  if (*(v2 + 204))
  {
    *(v2 + 198) = 1;

    return sub_1001C2120(v2, 1);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Service is registered but not connected!", v4, v5, v6, v7, v8, v9, v10, v12);
      v11 = sub_10000C050(0x18u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 1709;
  }
}

void sub_1001C341C(char a1, char a2, char a3, int a4, int a5, char a6, char a7, char a8, char a9, char a10)
{
  if (qword_100B5C8A0 != -1)
  {
    sub_100812D28();
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 0x40000000;
  v18[2] = sub_1001C3518;
  v18[3] = &unk_100AE5768;
  v21 = a1;
  v22 = a2;
  v19 = a4;
  v20 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a9;
  v27 = a10;
  v28 = a3;
  dispatch_sync(qword_100B5C898, v18);
}

void sub_1001C3518(uint64_t a1)
{
  v2 = qword_100B5C6D8;
  v3 = os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT);
  v4 = &unk_100B5C000;
  if (v3)
  {
    v5 = "disabled";
    if (byte_100B5C6E0)
    {
      v6 = "enabled";
    }

    else
    {
      v6 = "disabled";
    }

    if (*(a1 + 40))
    {
      v7 = "enabled";
    }

    else
    {
      v7 = "disabled";
    }

    if (byte_100B5C6E1)
    {
      v8 = "enabled";
    }

    else
    {
      v8 = "disabled";
    }

    if (*(a1 + 41))
    {
      v9 = "enabled";
    }

    else
    {
      v9 = "disabled";
    }

    v10 = *(a1 + 36);
    v11 = *(a1 + 32) / 1000000;
    if (byte_100B5C6E2)
    {
      v12 = "enabled";
    }

    else
    {
      v12 = "disabled";
    }

    if (*(a1 + 42))
    {
      v13 = "enabled";
    }

    else
    {
      v13 = "disabled";
    }

    if (byte_100B5C6E3)
    {
      v14 = "enabled";
    }

    else
    {
      v14 = "disabled";
    }

    v15 = *(a1 + 45);
    if (*(a1 + 43))
    {
      v16 = "enabled";
    }

    else
    {
      v16 = "disabled";
    }

    if (byte_100B5C6E4)
    {
      v17 = "enabled";
    }

    else
    {
      v17 = "disabled";
    }

    if (*(a1 + 44))
    {
      v18 = "enabled";
    }

    else
    {
      v18 = "disabled";
    }

    v19 = *(a1 + 46);
    if (byte_100B5C6E5)
    {
      v20 = "enabled";
    }

    else
    {
      v20 = "disabled";
    }

    v24 = 136319490;
    if (v15)
    {
      v21 = "enabled";
    }

    else
    {
      v21 = "disabled";
    }

    v25 = v6;
    v26 = 2080;
    if (byte_100B5C6E6)
    {
      v22 = "enabled";
    }

    else
    {
      v22 = "disabled";
    }

    v27 = v7;
    if (v19)
    {
      v5 = "enabled";
    }

    v28 = 2080;
    v29 = v8;
    v30 = 2080;
    v31 = v9;
    v32 = 1024;
    v33 = dword_100B52008 / 1000000;
    v34 = 1024;
    v35 = v11;
    v36 = 1024;
    v37 = dword_100B5200C;
    v38 = 1024;
    v39 = v10;
    v40 = 2080;
    v41 = v12;
    v42 = 2080;
    v43 = v13;
    v44 = 2080;
    v45 = v14;
    v46 = 2080;
    v47 = v16;
    v48 = 2080;
    v49 = v17;
    v50 = 2080;
    v51 = v18;
    v52 = 2080;
    v53 = v20;
    v54 = 2080;
    v55 = v21;
    v56 = 2080;
    v57 = v22;
    v58 = 2080;
    v59 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Change HCI config settings to rawAudio:%s->%s HID:%s->%s fileSize:%dMB->%dMB #ofTraces:%d->%d liveHCI:%s->%s fileHCI:%s->%s audioTimeSync:%s->%s gEnableENPacketLogging:%s->%s hciLiteLogging:%s->%s", &v24, 0xA6u);
    v4 = &unk_100B5C000;
    v2 = qword_100B5C6D8;
  }

  byte_100B5C6E0 = *(a1 + 40);
  byte_100B5C6E1 = *(a1 + 41);
  byte_100B5C6E7 = *(a1 + 47);
  v23 = *(a1 + 36);
  dword_100B52008 = *(a1 + 32);
  dword_100B5200C = v23;
  byte_100B5C6E2 = *(a1 + 42);
  v4[1763] = *(a1 + 43);
  byte_100B5C6E4 = *(a1 + 44);
  byte_100B5C6E5 = *(a1 + 45);
  byte_100B5C6E6 = *(a1 + 46);
  sub_1001A7FE4(v2);
  if ((byte_100B5C6E2 & 1) == 0)
  {
    sub_1001C37FC();
  }
}

void sub_1001C37FC()
{
  if (qword_100B5C8D8 && CFSetGetCount(qword_100B5C8D8) >= 1)
  {
    v0 = qword_100B5C8D8;
    v1 = qword_100B5C6D8;
    if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Terminate Live Logging - lockdown", buf, 2u);
    }

    if (&lockdown_copy_checkin_info)
    {
      CFSetApplyFunction(v0, j__lockdown_disconnect, 0);
    }

    qword_100B5C8D8 = 0;
    CFRelease(v0);
    if (off_100B5C6F0)
    {
      off_100B5C6F0(0);
    }
  }

  if (qword_100B5C8E0 && CFSetGetCount(qword_100B5C8E0) >= 1)
  {
    v2 = qword_100B5C8E0;
    v3 = qword_100B5C6D8;
    if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Terminate Live Logging - XPC", v4, 2u);
    }

    CFSetApplyFunction(v2, j__xpc_release, 0);
    qword_100B5C8E0 = 0;
    CFRelease(v2);
    if (off_100B5C6F0)
    {
      off_100B5C6F0(0);
    }
  }
}

void sub_1001C3964(int a1)
{
  v2 = qword_100B5C6D8;
  if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109376;
    v3[1] = byte_100B5C6E8;
    v4 = 1024;
    v5 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting skipAuth %d->%d", v3, 0xEu);
  }

  byte_100B5C6E8 = a1;
}

uint64_t sub_1001C3A60(uint64_t a1, char a2, int a3)
{
  if (qword_100B5C8A0 != -1)
  {
    sub_100812D28();
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_1001C3B6C;
  v8[3] = &unk_100AE5788;
  v10 = a2;
  v8[4] = a1;
  v9 = a3;
  dispatch_sync(qword_100B5C898, v8);
  v6 = qword_100B5C6D8;
  if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Watch for calendar changes", buf, 2u);
  }

  if (qword_100B5C8A8 != -1)
  {
    sub_100812D3C();
  }

  return 1;
}

void sub_1001C3B6C(uint64_t a1)
{
  v2 = qword_100B5C6D8;
  if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = "[Full Logging]";
    v4 = *(a1 + 32);
    if (*(a1 + 44))
    {
      v3 = " [HCILite Logging]";
    }

    LODWORD(buf.__pn_.__r_.__value_.__l.__data_) = 136446723;
    *(buf.__pn_.__r_.__value_.__r.__words + 4) = v3;
    WORD2(buf.__pn_.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__pn_.__r_.__value_.__r.__words[1] + 6) = v4;
    HIWORD(buf.__pn_.__r_.__value_.__r.__words[2]) = 2081;
    v32 = qword_100B5C700;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Init sniff%{public}s %s gLogPath:%{private}s", &buf, 0x20u);
    v2 = qword_100B5C6D8;
  }

  sub_1001A7FE4(v2);
  sub_1001A807C(*(a1 + 40));
  if (!qword_100B5C700)
  {
    byte_100B5C6E6 = *(a1 + 44);
  }

  started = sysdir_start_search_path_enumeration_private();
  sysdir_get_next_search_path_enumeration(started, byte_100B5C708);
  v29 = 0u;
  memset(v30, 0, sizeof(v30));
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *v16 = 0u;
  __strlcpy_chk();
  __strlcat_chk();
  __strlcat_chk();
  if (qword_100B5C700)
  {
    goto LABEL_10;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    qword_100B5C700 = strdup(v6);
LABEL_10:
    sub_1001C3EE4();
    return;
  }

  if (mkdir(v16, 0x1EDu) && *__error() != 17)
  {
    if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_ERROR))
    {
      sub_100812D64();
    }
  }

  else
  {
    if (!mkdir(byte_100B5C708, 0x1EDu) || *__error() == 17)
    {
      qword_100B5C700 = malloc_type_calloc(0x400uLL, 1uLL, 0xE565D158uLL);
      __strlcpy_chk();
      if (byte_100B5C6E6)
      {
        v7 = "/bluetoothd-hcilite-latest.pklg";
      }

      else
      {
        v7 = "/bluetoothd-hci-latest.pklg";
      }

      strlcat(qword_100B5C700, v7, 0x400uLL);
      v8 = byte_100B5C6E6;
      if (byte_100B5C6E6)
      {
        v9 = "bluetoothd-hci-";
      }

      else
      {
        v9 = "bluetoothd-hcilite-";
      }

      bzero(&buf, 0x400uLL);
      chdir(byte_100B5C708);
      v10 = opendir(byte_100B5C708);
      if (v10)
      {
        v11 = v10;
        v12 = readdir(v10);
        if (v12)
        {
          if (v8)
          {
            v13 = 15;
          }

          else
          {
            v13 = 19;
          }

          do
          {
            d_name = v12->d_name;
            if (!strncmp(v12->d_name, v9, v13))
            {
              snprintf(&buf, 0x400uLL, "%s/%s", byte_100B5C708, d_name);
              remove(&buf, v15);
            }

            v12 = readdir(v11);
          }

          while (v12);
        }

        closedir(v11);
      }

      else if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_ERROR))
      {
        sub_100812EA0();
      }

      goto LABEL_10;
    }

    if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_ERROR))
    {
      sub_100812E00();
    }
  }
}

void sub_1001C3EE4()
{
  if (&lockdown_copy_checkin_info)
  {
    if (qword_100B5C8A0 != -1)
    {
      sub_100812D28();
    }

    if (lockdown_checkin_xpc() && os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_ERROR))
    {
      sub_100812EDC();
    }
  }

  if (!qword_100B5C8E8)
  {
    if (qword_100B5C8A0 != -1)
    {
      sub_100812F50();
    }

    qword_100B5C8E8 = xpc_connection_create_mach_service("com.apple.bluetooth.BTPacketLogger.ios", qword_100B5C898, 1uLL);
    xpc_connection_set_event_handler(qword_100B5C8E8, &stru_100AE59C0);
    xpc_connection_resume(qword_100B5C8E8);
  }
}

uint64_t sub_1001C3FC8()
{
  if (qword_100B5C8A0 != -1)
  {
    sub_100812D28();
  }

  dispatch_sync(qword_100B5C898, &stru_100AE57C8);
  return 1;
}

void sub_1001C400C(id a1)
{
  v1 = qword_100B5C6D8;
  if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Terminate sniff", buf, 2u);
  }

  if (dword_100B52010 != -1)
  {
    close(dword_100B52010);
    dword_100B52010 = -1;
  }

  if (qword_100B5C700)
  {
    free(qword_100B5C700);
    qword_100B5C700 = 0;
  }

  sub_1001C37FC();
  v2 = qword_100B5C6D8;
  if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sniff terminated", v3, 2u);
  }
}

void sub_1001C40E0(const char *a1)
{
  word_100B5C808 = 0;
  free(qword_100B5C810);
  if (a1)
  {
    v2 = strlen(a1);
    if (v2 <= 0x800)
    {
      if (v2)
      {
        v3 = 1;
        v4 = a1;
        do
        {
          v5 = *v4++;
          if (v5 == 10)
          {
            ++v3;
          }

          --v2;
        }

        while (v2);
        v6 = (13 * v3);
      }

      else
      {
        v6 = 13;
      }

      __lasts = 0;
      if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEBUG))
      {
        sub_100812F78();
      }

      v7 = strdup(a1);
      v8 = strlen(a1);
      v9 = v8 + v6;
      qword_100B5C810 = malloc_type_malloc(v8 + v6, 0x14DDFFB0uLL);
      if (qword_100B5C810)
      {
        v10 = strtok_r(v7, "\n", &__lasts);
        if (v10)
        {
          v11 = v10;
          do
          {
            v12 = strlen(v11);
            sub_1000045A8(v11, v12, 0, 0xFCu);
            v13 = strlen(v11);
            word_100B5C808 += sub_1000A5B88((qword_100B5C810 + word_100B5C808), (v9 - word_100B5C808), v11, v13, 0xFCu);
            v11 = strtok_r(0, "\n", &__lasts);
          }

          while (v11);
        }

        free(v7);
        qword_100B5C810 = malloc_type_realloc(qword_100B5C810, word_100B5C808, 0x8779F170uLL);
      }

      else
      {
        free(v7);
      }
    }
  }
}

void sub_1001C429C(const char *a1)
{
  v2 = strlen(a1);

  sub_1000045A8(a1, v2, 0, 0xFCu);
}

uint64_t sub_1001C42E0()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 1;
  if (qword_100B5C8A0 != -1)
  {
    sub_100812F50();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1001C43AC;
  block[3] = &unk_100AE57F0;
  block[4] = &v3;
  dispatch_sync(qword_100B5C898, block);
  v0 = *(v4 + 24);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1001C43AC(uint64_t a1)
{
  memset(&v5, 0, sizeof(v5));
  v2 = qword_100B5C6D8;
  if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Start logging", buf, 2u);
  }

  qword_100B5C8D0 = sub_1001C5474();
  v3 = 1;
  byte_100B5C820 = 1;
  sub_1001C3EE4();
  if (byte_100B5C6E3 == 1)
  {
    if (dword_100B52010 != -1)
    {
      if (!stat(qword_100B5C700, &v5))
      {
LABEL_10:
        v3 = 1;
        goto LABEL_14;
      }

      close(dword_100B52010);
    }

    dword_100B52010 = open(qword_100B5C700, 521, 420);
    if (dword_100B52010 != -1)
    {
      if (!stat(qword_100B5C700, &v5))
      {
        qword_100B5C818 = v5.st_size;
      }

      goto LABEL_10;
    }

    if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_ERROR))
    {
      sub_100813028();
    }

    v3 = 0;
  }

LABEL_14:
  *(*(*(a1 + 32) + 8) + 24) = v3;
}

uint64_t sub_1001C4500()
{
  LODWORD(result) = sub_10000479C();
  if (dword_100B52010 == -1)
  {
    return result;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1001C4528(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 1;
  if (qword_100B5C8A0 != -1)
  {
    sub_100812F50();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1001C4600;
  block[3] = &unk_100AE5818;
  block[5] = a1;
  block[6] = a2;
  block[4] = &v7;
  dispatch_sync(qword_100B5C898, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_1001C4600(void *a1)
{
  v2 = qword_100B5C6D8;
  if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stop logging", buf, 2u);
  }

  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *buf = 0u;
  v10 = 0u;
  if (dword_100B52010 != -1)
  {
    close(dword_100B52010);
    dword_100B52010 = -1;
    v8 = 0;
    sub_100016250(&v8);
    if (byte_100B5C6E6)
    {
      v3 = "%s/bluetoothd-hcilite-%d.pklg";
    }

    else
    {
      v3 = "%s/bluetoothd-hci-%d.pklg";
    }

    v4 = a1[5];
    if (!v4)
    {
      v4 = byte_100B5C708;
    }

    snprintf(buf, 0xFFuLL, v3, v4, v8);
    rename(qword_100B5C700, buf, v5);
    if (v6)
    {
      *(*(a1[4] + 8) + 24) = 0;
    }

    else
    {
      v7 = a1[6];
      if (v7)
      {
        strlcpy(v7, buf, 0xFFuLL);
      }
    }
  }

  sub_1001C37FC();
}

uint64_t sub_1001C4774(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (qword_100B5C8A0 != -1)
  {
    sub_100812F50();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1001C4840;
  v4[3] = &unk_100AE5840;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(qword_100B5C898, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1001C4840(uint64_t a1)
{
  v2 = qword_100B5C6D8;
  if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stop and rotate logging", v5, 2u);
  }

  if (dword_100B52010 != -1)
  {
    close(dword_100B52010);
    dword_100B52010 = -1;
    rename(qword_100B5C700, *(a1 + 40), v3);
    *(*(*(a1 + 32) + 8) + 24) = v4 == 0;
  }
}

void *sub_1001C48E8()
{
  sub_1000045A8("AP Sleep", 8, 0, 0xFBu);
  byte_100B5C820 = 0;
  if (qword_100B5C828)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Received sleep with a sleep buffer already allocated", v0, v1, v2, v3, v4, v5, v6, v9);
      v7 = sub_10000C050(0x5Cu);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    free(qword_100B5C828);
    qword_100B5C828 = 0;
  }

  result = malloc_type_calloc(1uLL, 0x800uLL, 0xB0056149uLL);
  qword_100B5C828 = result;
  word_100B5C830 = 0;
  return result;
}

void sub_1001C499C(const char *a1)
{
  v2 = strlen(a1);

  sub_1000045A8(a1, v2, 0, 0xFBu);
}

void sub_1001C49E0(int a1)
{
  v2 = qword_100B5C828;
  if (a1 && qword_100B5C828)
  {
    v3 = CFDataCreate(kCFAllocatorDefault, qword_100B5C828, word_100B5C830);
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(Mutable, @"HCITrace", v3);
    CFRelease(v3);
    PLLogRegisteredEvent();
    CFRelease(Mutable);
    v2 = qword_100B5C828;
  }

  if (v2)
  {
    free(v2);
    qword_100B5C828 = 0;
    word_100B5C830 = 0;
  }

  qword_100B5C8D0 = sub_1001C5474();
  byte_100B5C820 = 1;
  if (a1)
  {
    v5 = "AP Wake - Bluetooth";
  }

  else
  {
    v5 = "AP Wake - Other";
  }

  if (a1)
  {
    v6 = 19;
  }

  else
  {
    v6 = 15;
  }

  sub_1000045A8(v5, v6, 0, 0xFBu);
}

void sub_1001C4B04(const char *a1)
{
  v2 = strlen(a1);

  sub_1000045A8(a1, v2, 0, 0xFAu);
}

void sub_1001C4B48(const void *a1, unsigned int a2)
{
  if ((byte_100B5C6E6 & 1) == 0)
  {
    if (a2 < 0x65)
    {

      sub_1000045A8(a1, a2, 0, 0xFDu);
    }

    else if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008130B0();
    }
  }
}

void sub_1001C4BCC(_DWORD *a1, char *__s, _OWORD *a3)
{
  if ((byte_100B5C6E6 & 1) == 0)
  {
    v6 = strlen(__s);
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v14 = 0u;
    v7 = sub_1000E5EA8(a1);
    if (v7)
    {
      v8 = *v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = a1 + 1;
    sub_100304AF8("LE Device: handle 0x%x, Name %s, Addr %:, pUUID %@", v8, __s, v9, a3, 16);
    v11 = 1;
    v12 = v8;
    v13 = v6;
    if (v6 > 0x4AuLL)
    {
      v6 = 74;
    }

    __memmove_chk();
    v10 = &v11 + v6;
    sub_1000075EC(v10 + 4, v9, 6uLL);
    *(v10 + 10) = *a3;
    sub_1000045A8(&v11, v6 + 26, 0, 0xFDu);
  }
}