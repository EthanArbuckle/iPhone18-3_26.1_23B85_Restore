uint64_t sub_100001C3C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (!*(result + 24))
    {
      *(result + 48) = os_transaction_create();
    }

    operator new();
  }

  return result;
}

void sub_100001F38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 928);
  if (v2)
  {
    v3 = sub_100002270(v2);
    v4 = off_10041DCE8;
    if (off_10041DCE8 == &_os_log_default)
    {
      v4 = os_log_create("com.apple.isp", "daemon");
      off_10041DCE8 = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "addClient_block_invoke";
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s - Photon Detector device open returned %x\n\n", &v7, 0x12u);
    }

    v5 = sub_1000028C4(*(v1 + 928));
    v6 = off_10041DCE8;
    if (off_10041DCE8 == &_os_log_default)
    {
      v6 = os_log_create("com.apple.isp", "daemon");
      off_10041DCE8 = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "addClient_block_invoke";
      v9 = 1024;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s - Photon Detector power on device returned %x\n\n", &v7, 0x12u);
    }

    if (!v5)
    {
      *(v1 + 1008) = 1;
    }
  }

  operator new();
}

void sub_100002130(uint64_t a1, int a2)
{
  v3 = *a1;
  if (v3)
  {
    if (a2)
    {
      if ((*(a1 + 40) & 1) == 0)
      {
        dispatch_suspend(v3);
        *(a1 + 40) = 1;
      }
    }

    else if (*(a1 + 40))
    {
      dispatch_resume(v3);
      *(a1 + 40) = 0;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "Pause";
    v6 = 1024;
    v7 = 117;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Assert: ISPTimer %s:%d ", &v4, 0x12u);
  }
}

void sub_10000221C(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = a2;
    if (a2)
    {
      if (*(a1 + 24))
      {
        return;
      }
    }

    else
    {
      if (!*(a1 + 24))
      {
        return;
      }

      *(a1 + 32) = 0xBFF0000000000000;
    }

    sub_100002130(v3, a2);
    *(a1 + 24) = v4;
  }
}

uint64_t sub_100002270(uint64_t a1)
{
  if (CFArrayGetCount(*(a1 + 40)) != 1)
  {
    return 3758097088;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), 0);
  *(a1 + 24) = ValueAtIndex;
  if (!ValueAtIndex)
  {
    return 3758097088;
  }

  return sub_100002828(ValueAtIndex);
}

uint64_t sub_1000022E0(uint64_t a1, uint64_t a2, uint64_t a3, CFArrayRef *a4, const void *a5)
{
  ValueAtIndex = a5;
  v6 = a4;
  v17 = a4;
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xBFF0000000000000;
  *(a1 + 80) = 2;
  *(a1 + 96) = a4;
  *(a1 + 104) = a5;
  *(a1 + 224) = 0;
  mach_timebase_info((a1 + 48));
  v16 = 0;
  if (!v6)
  {
    sub_10002EA6C(&v17, 0, 0);
    v6 = v17;
  }

  v9 = 1;
  if (!ValueAtIndex && v6)
  {
    if (CFArrayGetCount(*v6) < 1)
    {
      goto LABEL_14;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*v17, 0);
    v10 = sub_10005E918(ValueAtIndex, 0, 0);
    v11 = off_10041DCA0;
    if (off_10041DCA0 == &_os_log_default)
    {
      v11 = os_log_create("com.apple.isp", "photon");
      off_10041DCA0 = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "H16ISPDeviceOpen returned 0x%08x\n", buf, 8u);
    }

    *(a1 + 224) = 1;
    v9 = v10 == 0;
  }

  if (ValueAtIndex && v9)
  {
    sub_1000024F0(ValueAtIndex, &v16);
  }

LABEL_14:
  v12 = dispatch_queue_create("com.apple.video.PhotometerManager.CommandQueue", 0);
  *(a1 + 16) = v12;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100002504;
  v14[3] = &unk_1000A2950;
  v15 = v16;
  v14[4] = a1;
  v14[5] = a3;
  dispatch_async(v12, v14);
  return a1;
}

uint64_t sub_1000024F0(uint64_t result, _DWORD *a2)
{
  if (a2)
  {
    *a2 = *(*(result + 4304) + 668);
  }

  return result;
}

void sub_100002504(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_100002674(*(a1 + 48));
  *(v2 + 8) = v3;
  if (v3)
  {
    v4 = *(*(a1 + 40) + 928);
    *(v3 + 68) = v4;
    if (v4)
    {
      sub_100003FD0(v4, v3 + 552, v3 + 684);
      v3 = *(v2 + 8);
    }

    sub_100003F40(v3, v2, sub_10000B878);
    bzero((v2 + 112), 0x68uLL);
    bzero((v2 + 232), 0x20uLL);
    sub_100008688(*(v2 + 8));
    if (*(*(v2 + 8) + 16))
    {
      if (*(a1 + 48) == 9)
      {
        sub_10003E2B0(v2);
      }

      *(v2 + 88) = 1065353216;
      sub_100009258(*(v2 + 8), *(v2 + 88));
      *(v2 + 24) = 1;
    }

    else
    {
      v13 = off_10041DCA0;
      if (off_10041DCA0 == &_os_log_default)
      {
        v13 = os_log_create("com.apple.isp", "photon");
        off_10041DCA0 = v13;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10007F038(v13, v14, v15, v16, v17, v18, v19, v20);
      }
    }
  }

  else
  {
    v5 = off_10041DCA0;
    if (off_10041DCA0 == &_os_log_default)
    {
      v5 = os_log_create("com.apple.isp", "photon");
      off_10041DCA0 = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10007F0B0(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

char *sub_100002674(int a1)
{
  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 0x2C8uLL, 0x10A00403CF60310uLL);
    v3 = v2;
    if (v2)
    {
      pthread_mutex_init((v2 + 336), 0);
      pthread_mutex_init((v3 + 424), 0);
      pthread_cond_init((v3 + 488), 0);
      v3[328] = 0;
      v3[8] = 1;
      *(v3 + 16) = 4096;
      *(v3 + 36) = 0;
      v4 = &dword_1000A2588;
      v5 = 10;
      *(v3 + 102) = 0;
      do
      {
        if (*v4 == a1)
        {
          *v3 = v4;
        }

        v4 += 4;
        --v5;
      }

      while (v5);
      *(v3 + 39) = 0;
      *(v3 + 40) = 0;
      *(v3 + 76) = 1065353216;
      v6 = objc_alloc_init(FlickerResourceArbiterClientDelegate);
      *(v3 + 50) = v6;
      [(FlickerResourceArbiterClientDelegate *)v6 setFlickerContext:v3];
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = off_10041DC78;
  if (off_10041DC78 == &_os_log_default)
  {
    v7 = os_log_create("com.apple.isp", "general");
    off_10041DC78 = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "H16ISPFlickerDetectorCreate";
    v11 = 1024;
    v12 = a1;
    v13 = 2048;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s - HWType = %d; pContext = %p \n\n", &v9, 0x1Cu);
  }

  return v3;
}

uint64_t sub_100002828(uint64_t a1)
{
  pthread_mutex_lock((a1 + 8));
  if (*(a1 + 4))
  {
    v2 = 3758097093;
  }

  else
  {
    v3 = IOServiceOpen(*a1, mach_task_self_, 0x63u, (a1 + 4));
    v4 = *(a1 + 4);
    if (v4)
    {
      v2 = v3;
    }

    else
    {
      v2 = 3758097088;
    }

    if (!v2)
    {
      v2 = IOConnectCallScalarMethod(v4, 0, 0, 0, 0, 0);
    }
  }

  pthread_mutex_unlock((a1 + 8));
  return v2;
}

uint64_t sub_1000028C4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    return sub_1000028DC(v1);
  }

  else
  {
    return 3758097088;
  }
}

uint64_t sub_1000028DC(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1)
  {
    return IOConnectCallScalarMethod(v1, 2u, 0, 0, 0, 0);
  }

  else
  {
    return 3758097101;
  }
}

uint64_t sub_100002908(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((*(result + 24) & 1) == 0)
    {
      result = *result;
      if (*v1)
      {
        result = sub_100002970(result);
        if (result)
        {
          v2 = 0.0;
          result = sub_10000BF7C(v1, &v2);
          if (!result)
          {
            return sub_10000C0B8(v1, v2);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100002970(uint64_t a1)
{
  output = 0;
  outputCnt = 1;
  result = *(a1 + 4344);
  if (result)
  {
    return !IOConnectCallScalarMethod(result, 5u, 0, 0, &output, &outputCnt) && output == 1;
  }

  return result;
}

uint64_t sub_1000029D4()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v6 = off_10041DCE8;
  if (off_10041DCE8 == &_os_log_default)
  {
    v6 = os_log_create("com.apple.isp", "daemon");
    off_10041DCE8 = v6;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *v2;
    LODWORD(v120[0]) = 136315394;
    *(v120 + 4) = "setProperty";
    WORD2(v120[1]) = 1024;
    *(&v120[1] + 6) = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s - %d\n", v120, 0x12u);
  }

  kdebug_trace();
  v8 = *v2;
  if (*v2 <= 100)
  {
    v9 = 0;
    switch(v8)
    {
      case 1:
        goto LABEL_90;
      case 2:
        v10 = sub_10000D328(v5, v4, *(v2 + 8), *(v2 + 12));
        goto LABEL_89;
      case 3:
        if (sub_10001CE48(v2 + 8))
        {
          v9 = 0;
        }

        else
        {
          v9 = 3758097084;
        }

        goto LABEL_90;
      case 4:
        sub_100026070((v2 + 3648));
        v40 = fopen("/var/mobile/Library/ISP/Pearl/IsfHistory.bin.bak", "wb");
        if (v40)
        {
          fwrite((v2 + 8), 0xE38uLL, 1uLL, v40);
          fclose(v40);
          rename("/var/mobile/Library/ISP/Pearl/IsfHistory.bin.bak", "/var/mobile/Library/ISP/Pearl/IsfHistory.bin", v41);
        }

        goto LABEL_83;
      case 7:
        v20 = sub_10000B2D0(*(v2 + 8));
        v21 = PDPeridotCalibCreateWithBinaryRepresentation();
        CFRelease(v20);
        if (!v21)
        {
          goto LABEL_77;
        }

        v9 = sub_10001CD84(v21);
        CFRelease(v21);
        goto LABEL_90;
      case 8:
        v45 = *(v5 + 904);
        if (!v45)
        {
          operator new();
        }

        H16ISPRgbJRunner::setVerbose(v45, *(v2 + 48));
        v9 = 3758097084;
        if (H16ISPRgbJRunner::isContext(*(v5 + 904), v4))
        {
          v46 = IOSurfaceLookupFromXPCObject(*(v2 + 8));
          v47 = v46;
          if (v46)
          {
            v120[0] = 0;
            IOSurfaceLock(v46, 0, 0);
            CVPixelBufferCreateWithIOSurface(kCFAllocatorDefault, v47, 0, v120);
            H16ISPRgbJRunner::setSensorVersion(*(v5 + 904), *(v2 + 68));
            v48 = sub_10000B2D0(*(v2 + 24));
            v49 = sub_10000B2D0(*(v2 + 40));
            buffer = sub_10000B2D0(*(v2 + 32));
            v105 = sub_10000B2D0(*(v2 + 16));
            if (v48)
            {
              if (v49)
              {
                if (buffer)
                {
                  theDict = *(v2 + 72);
                  cf = H16ISPRgbJRunner::configureLowFrameIntervalMode(*(v5 + 904), *(v2 + 72), *(v2 + 88), *(v2 + 76), *(v2 + 80), *(v2 + 84));
                  v9 = H16ISPRgbJRunner::runPipeline(*(v5 + 904), v120[0], v105, v48, buffer, v49, *(v2 + 56), *(v2 + 60), *(v2 + 64), *(v2 + 52));
                  if (!v9)
                  {
                    if (H16ISPRgbJRunner::isRgbjDynamicFrameRate(*(v5 + 904)))
                    {
                      if ((theDict & !cf) != 0)
                      {
                        v50 = 4;
                      }

                      else
                      {
                        v50 = 0;
                      }

                      if (cf)
                      {
                        v51 = 5;
                      }

                      else
                      {
                        v51 = 0;
                      }

                      if (theDict)
                      {
                        v9 = v50;
                      }

                      else
                      {
                        v9 = v51;
                      }
                    }

                    else
                    {
                      v9 = 0;
                    }
                  }
                }
              }
            }

            CFRelease(v48);
            CFRelease(v49);
            CFRelease(buffer);
            CFRelease(v105);
            CVPixelBufferRelease(v120[0]);
            IOSurfaceUnlock(v47, 0, 0);
            CFRelease(v47);
          }

          goto LABEL_90;
        }

        v12 = off_10041DCE8;
        if (off_10041DCE8 == &_os_log_default)
        {
          v12 = os_log_create("com.apple.isp", "daemon");
          off_10041DCE8 = v12;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100084448();
          goto LABEL_90;
        }

        goto LABEL_91;
      case 9:
        v15 = sub_10000B2D0(*(v2 + 8));
        v16 = sub_10000B2D0(*(v2 + 16));
        v9 = 3758097084;
        if (!v15)
        {
          goto LABEL_90;
        }

        if (!v16)
        {
          goto LABEL_114;
        }

        v17 = *(v5 + 56);
        v112[0] = _NSConcreteStackBlock;
        v112[1] = 0x40000000;
        v112[2] = sub_10005F118;
        v112[3] = &unk_1000AC660;
        v112[4] = v16;
        v112[5] = v15;
        v18 = v112;
        v19 = v17;
        goto LABEL_82;
      case 10:
        v35 = sub_10000B2D0(*(v2 + 8));
        v36 = sub_10000B2D0(*(v2 + 16));
        v15 = v36;
        if (v35 && v36)
        {
          v19 = *(v5 + 56);
          v111[0] = _NSConcreteStackBlock;
          v111[1] = 0x40000000;
          v111[2] = sub_10005F160;
          v111[3] = &unk_1000AC680;
          v111[4] = v15;
          v111[5] = v35;
          v18 = v111;
          goto LABEL_82;
        }

        if (v35)
        {
          CFRelease(v35);
        }

        v9 = 3758097084;
        if (v15)
        {
LABEL_114:
          CFRelease(v15);
        }

        goto LABEL_90;
      case 12:
        v42 = *(v5 + 904);
        if (!v42)
        {
          goto LABEL_77;
        }

        H16ISPRgbJRunner::saveNow(v42);
        goto LABEL_83;
      case 13:
        v13 = *(v5 + 904);
        if (!v13)
        {
          goto LABEL_33;
        }

        if (H16ISPRgbJRunner::isContext(v13, v4))
        {
          v14 = *(v5 + 904);
          if (v14)
          {
            H16ISPRgbJRunner::~H16ISPRgbJRunner(v14);
            operator delete();
          }

LABEL_33:
          operator new();
        }

        goto LABEL_77;
      case 14:
        v43 = *(v5 + 920);
        if (v43)
        {
          sub_10003EB54(v43, *(v2 + 8));
        }

        goto LABEL_83;
      case 15:
        v37 = *(v2 + 8);
        if (v37 > 5)
        {
          goto LABEL_77;
        }

        v9 = 0;
        v38 = *(v2 + 20);
        v39 = (v5 + 12 * v37);
        v39[20] = vadd_s32(v39[20], *(v2 + 12));
        v39[21].i32[0] += v38;
        goto LABEL_90;
      case 16:
        v52 = *(v2 + 8);
        if (v52 > 5)
        {
          goto LABEL_77;
        }

        v58 = v5 + 56 * v52;
        v60 = *(v58 + 232);
        v59 = v58 + 232;
        *v59 = v60 | *(v2 + 12);
        *(v59 + 4) |= *(v2 + 16);
        if (*(v2 + 20) != 1)
        {
          goto LABEL_83;
        }

        *(v59 + 8) = 1;
        v61 = *(v59 + 16);
        *(v59 + 12) |= *(v2 + 24);
        *(v59 + 16) = v61 | *(v2 + 28);
        v62 = (v2 + 44);
        v63 = (v59 + 32);
        v64 = 3;
        v9 = 0;
        do
        {
          v65 = *(v62 - 3);
          if (v65 <= *(v63 - 3))
          {
            v65 = *(v63 - 3);
          }

          *(v63 - 3) = v65;
          v66 = *v62++;
          v67 = v66;
          if (v66 <= *v63)
          {
            v67 = *v63;
          }

          *v63++ = v67;
          --v64;
        }

        while (v64);
        goto LABEL_90;
      case 17:
        v22 = *(v2 + 8);
        if (v22 > 5)
        {
          goto LABEL_77;
        }

        v9 = 0;
        v24 = *(v2 + 56);
        v23 = *(v2 + 60);
        v26 = *(v2 + 48);
        v25 = *(v2 + 52);
        v27 = *(v2 + 44);
        v29 = *(v2 + 28);
        v28 = *(v2 + 32);
        v31 = *(v2 + 20);
        v30 = *(v2 + 24);
        v32 = (v5 + 56 * v22);
        v34 = *(v2 + 12);
        v33 = *(v2 + 16);
        v32[142] = v33;
        v32[143] = v31;
        v32[144] = v30;
        v32[145] = v29;
        v32[149] = v27;
        v32[150] = v26;
        v32[151] = v25;
        v32[152] = v24;
        v32[147] = v31 - v33;
        v32[148] = v30 - v29;
        v32[146] = v28 / v34;
        v32[154] = v26 - v27;
        v32[155] = v25 - v24;
        v32[153] = v23 / v34;
        goto LABEL_90;
      case 18:
        v44 = *(v5 + 912);
        if (!v44)
        {
          if (*(v2 + 58) == 2)
          {
            operator new();
          }

          operator new();
        }

        v71 = sub_10003B534(v44, v4);
        v9 = 3758097084;
        if (v71)
        {
          texture = 0;
          pixelBufferOut = 0;
          v116 = 0;
          buffera = IOSurfaceLookupFromXPCObject(*(v2 + 8));
          v72 = *(v2 + 16);
          if (v72)
          {
            surface = IOSurfaceLookupFromXPCObject(v72);
          }

          else
          {
            surface = 0;
          }

          v106 = IOSurfaceLookupFromXPCObject(*(v2 + 24));
          cfa = sub_10000B2D0(*(v2 + 32));
          v100 = sub_10000B2D0(*(v2 + 40));
          theDicta = sub_10000B2D0(*(v2 + 48));
          Value = CFDictionaryGetValue(theDicta, @"PCECalib");
          v74 = Value;
          if (buffera)
          {
            v75 = v106 == 0;
          }

          else
          {
            v75 = 1;
          }

          v78 = v75 || cfa == 0 || v100 == 0 || Value == 0;
          v79 = !v78;
          v98 = v79;
          if (!v78)
          {
            IOSurfaceLock(buffera, 0, 0);
            if (surface)
            {
              IOSurfaceLock(surface, 0, 0);
              IOSurfaceLock(v106, 0, 0);
              v80 = kCFAllocatorDefault;
              CVPixelBufferCreateWithIOSurface(kCFAllocatorDefault, buffera, 0, &pixelBufferOut);
              CVPixelBufferCreateWithIOSurface(kCFAllocatorDefault, surface, 0, &texture);
            }

            else
            {
              IOSurfaceLock(v106, 0, 0);
              v80 = kCFAllocatorDefault;
              CVPixelBufferCreateWithIOSurface(kCFAllocatorDefault, buffera, 0, &pixelBufferOut);
            }

            CVPixelBufferCreateWithIOSurface(v80, v106, 0, &v116);
          }

          sub_10003A148(*(v5 + 912), *(v2 + 62) != 0);
          sub_10003B21C(*(v5 + 912), *(v2 + 64));
          sub_10003A158(*(v5 + 912), *(v2 + 66) != 0);
          sub_10003A160(*(v5 + 912), *(v2 + 68) != 0);
          BytePtr = CFDataGetBytePtr(v74);
          memcpy(v120, BytePtr, 0x3400uLL);
          v82 = pixelBufferOut;
          if (pixelBufferOut && v116)
          {
            if (*(v2 + 58) == 2)
            {
              v97 = CFDictionaryGetValue(theDicta, @"ColorGdcCoeffs");
              v83 = CFDictionaryGetValue(theDicta, @"ColorPixelSizeMm");
              v84 = CFDictionaryGetValue(theDicta, @"Multiplier");
              v85 = CFDictionaryGetValue(theDicta, @"Offset");
              v86 = CFDictionaryGetValue(theDicta, @"PearlVersion");
              *&valuePtr[0] = 0;
              v114 = 0.0;
              v115 = 0.0;
              CFNumberGetValue(v83, kCFNumberDoubleType, valuePtr);
              if (v84)
              {
                CFNumberGetValue(v84, kCFNumberDoubleType, &v115);
              }

              if (v85)
              {
                CFNumberGetValue(v85, kCFNumberDoubleType, &v114);
              }

              v113 = 0;
              if (v86)
              {
                CFNumberGetValue(v86, kCFNumberIntType, &v113);
              }

              v87 = *(v5 + 912);
              sub_10003B74C(v87, v115, v114);
              sub_10003B754(v87, v97);
              sub_10003B7A0(v87, *valuePtr);
              sub_10003A150(v87, v113);
            }

            else
            {
              v88 = CFDictionaryGetValue(theDicta, @"DepthConfig");
              v89 = CFDictionaryGetValue(theDicta, @"DXOffset");
              LOWORD(v115) = 0;
              CFNumberGetValue(v89, kCFNumberSInt16Type, &v115);
              v90 = *(v5 + 912);
              v91 = CFDataGetBytePtr(v88);
              v92 = *v91;
              v93 = *(v91 + 1);
              *&valuePtr[2] = *(v91 + 4);
              valuePtr[0] = v92;
              valuePtr[1] = v93;
              sub_10003A150(v90, *(v2 + 72));
              sub_10003A19C(v90, valuePtr);
              sub_10003A1B0(v90, SLOWORD(v115));
            }

            v94 = *(v5 + 912);
            v95 = *(v2 + 56) != 0;
            memcpy(valuePtr, v120, sizeof(valuePtr));
            v9 = (*(*v94 + 40))(v94, pixelBufferOut, texture, v116, cfa, v100, v95, valuePtr, *(v2 + 60));
            v82 = pixelBufferOut;
          }

          if (v82)
          {
            CVPixelBufferRelease(v82);
          }

          if (texture)
          {
            CVPixelBufferRelease(texture);
          }

          if (v116)
          {
            CVPixelBufferRelease(v116);
          }

          if (buffera)
          {
            if (v98)
            {
              IOSurfaceUnlock(buffera, 0, 0);
            }

            CFRelease(buffera);
          }

          v96 = surface;
          if (surface)
          {
            if (v98)
            {
              IOSurfaceUnlock(surface, 0, 0);
              v96 = surface;
            }

            CFRelease(v96);
          }

          if (v106)
          {
            if (v98)
            {
              IOSurfaceUnlock(v106, 0, 0);
            }

            CFRelease(v106);
          }

          if (cfa)
          {
            CFRelease(cfa);
          }

          if (v100)
          {
            CFRelease(v100);
          }

          if (theDicta)
          {
            CFRelease(theDicta);
          }

          goto LABEL_90;
        }

        v12 = off_10041DCE8;
        if (off_10041DCE8 == &_os_log_default)
        {
          v12 = os_log_create("com.apple.isp", "daemon");
          off_10041DCE8 = v12;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1000844BC();
          goto LABEL_90;
        }

        break;
      case 21:
        v10 = sub_100003B58(v5, v4, *(v2 + 8));
        goto LABEL_89;
      default:
        goto LABEL_77;
    }

    goto LABEL_91;
  }

  if (v8 <= 207)
  {
    if (v8 > 203)
    {
      if (v8 == 204)
      {
        v10 = sub_10005D75C(*(v5 + 72), *(v5 + 1012), *(v2 + 8), *(v2 + 16), 5u);
        goto LABEL_89;
      }

      if (v8 == 207)
      {
        v10 = sub_10005D144(*(v5 + 72), *(v5 + 1016), *(v2 + 8), *(v2 + 16), 5u);
        goto LABEL_89;
      }
    }

    else
    {
      if (v8 == 101)
      {
        if (*(v5 + 920))
        {
          v19 = *(v5 + 936);
          if (v19)
          {
            v53 = *(v2 + 8);
            block[0] = _NSConcreteStackBlock;
            block[1] = 0x40000000;
            block[2] = sub_10005F1A8;
            block[3] = &unk_1000AC6A0;
            block[4] = v5;
            v110 = v53;
            v18 = block;
LABEL_82:
            dispatch_async(v19, v18);
          }
        }

        else if ((byte_10041DF80 & 1) == 0)
        {
          v68 = *(v5 + 72);
          if (v68)
          {
            sub_10005EDB8(v68, *(v2 + 8));
          }
        }

LABEL_83:
        v9 = 0;
        goto LABEL_90;
      }

      if (v8 == 105)
      {
        v10 = sub_10005EEA8(*(v5 + 72), *(v2 + 8));
LABEL_89:
        v9 = v10;
        goto LABEL_90;
      }
    }

    goto LABEL_77;
  }

  if (v8 <= 211)
  {
    if (v8 == 208)
    {
      v9 = sub_100059E10(*(v5 + 72));
      if (!v9)
      {
        v9 = sub_100056798(*(v5 + 72));
        if (!v9)
        {
          sub_10002EC34(*(v5 + 64));
        }
      }

      goto LABEL_90;
    }

    if (v8 == 211)
    {
      v10 = sub_100059EA0(*(v5 + 72), *(v2 + 8), *(v2 + 16), *(v2 + 24));
      goto LABEL_89;
    }

LABEL_77:
    v9 = 3758097084;
LABEL_90:
    v12 = off_10041DCE8;
    goto LABEL_91;
  }

  if (v8 == 213)
  {
    v10 = sub_10005F1BC(v5);
    goto LABEL_89;
  }

  if (v8 != 212)
  {
    goto LABEL_77;
  }

  v11 = 10;
  do
  {
    v9 = sub_10005696C();
    if (!v9)
    {
      v57 = 10;
      while (1)
      {
        v9 = sub_10005CFA0(*(v5 + 72), *(v5 + 1012), 2u);
        if (!v9)
        {
          break;
        }

        usleep(0x30D40u);
        if (!--v57)
        {
          v12 = off_10041DCE8;
          if (off_10041DCE8 == &_os_log_default)
          {
            v12 = os_log_create("com.apple.isp", "daemon");
            off_10041DCE8 = v12;
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_100084258();
            goto LABEL_90;
          }

          goto LABEL_91;
        }
      }

      if (sub_10005DAF8(*(v5 + 72), *(v5 + 1012), *(v2 + 8), *(v2 + 16), 0x500u))
      {
        v69 = off_10041DCE8;
        if (off_10041DCE8 == &_os_log_default)
        {
          v69 = os_log_create("com.apple.isp", "daemon");
          off_10041DCE8 = v69;
        }

        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          sub_1000842D4();
        }
      }

      if (sub_10005D020(*(v5 + 72), *(v5 + 1012)))
      {
        v70 = off_10041DCE8;
        if (off_10041DCE8 == &_os_log_default)
        {
          v70 = os_log_create("com.apple.isp", "daemon");
          off_10041DCE8 = v70;
        }

        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          sub_100084350();
        }
      }

      v9 = sub_100059E10(*(v5 + 72));
      if (!v9)
      {
        goto LABEL_90;
      }

      v12 = off_10041DCE8;
      if (off_10041DCE8 == &_os_log_default)
      {
        v12 = os_log_create("com.apple.isp", "daemon");
        off_10041DCE8 = v12;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000843CC();
        goto LABEL_90;
      }

      goto LABEL_91;
    }

    usleep(0x7A120u);
    --v11;
  }

  while (v11);
  v12 = off_10041DCE8;
  if (off_10041DCE8 == &_os_log_default)
  {
    v12 = os_log_create("com.apple.isp", "daemon");
    off_10041DCE8 = v12;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1000841DC();
    goto LABEL_90;
  }

LABEL_91:
  if (v12 == &_os_log_default)
  {
    v12 = os_log_create("com.apple.isp", "daemon");
    off_10041DCE8 = v12;
  }

  v54 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  v55 = *v2;
  if (v54)
  {
    *(v120 + 4) = "setProperty";
    WORD2(v120[1]) = 1024;
    *(&v120[1] + 6) = v55;
    WORD1(v120[2]) = 1024;
    LODWORD(v120[0]) = 136315650;
    HIDWORD(v120[2]) = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s - %d complete (res=0x%08X)\n\n", v120, 0x18u);
  }

  kdebug_trace();
  return v9;
}

uint64_t sub_100003B58(uint64_t a1, uint64_t a2, xpc_object_t object)
{
  v3 = 3758097090;
  if (*(a2 + 24))
  {
    v4 = off_10041DCE8;
    if (off_10041DCE8 == &_os_log_default)
    {
      v4 = os_log_create("com.apple.isp", "daemon");
      off_10041DCE8 = v4;
    }

    v3 = 3758097131;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10008415C();
    }
  }

  else if (object && xpc_get_type(object) == &_xpc_type_string)
  {
    length = xpc_string_get_length(object);
    v10 = malloc_type_malloc(length + 1, 0x100004077774924uLL);
    *(a2 + 24) = v10;
    if (v10)
    {
      v11 = v10;
      string_ptr = xpc_string_get_string_ptr(object);
      memcpy(v11, string_ptr, length + 1);
      sub_100003C74(a1);
      return 0;
    }

    else
    {
      return 3758097085;
    }
  }

  return v3;
}

void sub_100003C74(uint64_t a1)
{
  v1 = a1 + 8;
  v2 = *(a1 + 16);
  if (v2 != a1 + 8)
  {
    do
    {
      v3 = *(v2 + 16);
      if (*(v3 + 8) == 1)
      {
        v4 = off_10041DCE8;
        if (off_10041DCE8 == &_os_log_default)
        {
          v4 = os_log_create("com.apple.isp", "daemon");
          off_10041DCE8 = v4;
        }

        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          pid = xpc_connection_get_pid(*v3);
          v6 = *(v3 + 24);
          if (!v6)
          {
            v6 = "<null>";
          }

          *buf = 67174915;
          v8 = pid;
          v9 = 2081;
          v10 = v6;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Active client pid %{private}d deviceID %{private}s\n", buf, 0x12u);
        }
      }

      v2 = *(v2 + 8);
    }

    while (v2 != v1);
  }
}

void sub_100003DC4(uint64_t a1, void *a2, void *a3)
{
  if (a2 && a3)
  {
    v5 = IOServiceNameMatching("AppleH16CamIn");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
    v7 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"photon-detector-cal-data", kCFAllocatorDefault, 3u);
    if (v7)
    {
      v8 = v7;
      Length = CFDataGetLength(v7);
      BytePtr = CFDataGetBytePtr(v8);
      memmove(a2, BytePtr, Length);
      CFRelease(v8);
    }

    v11 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"photon-detector-cal-data-offset", kCFAllocatorDefault, 3u);
    if (v11)
    {
      v12 = v11;
      v13 = CFDataGetLength(v11);
      v14 = CFDataGetBytePtr(v12);
      memmove(a3, v14, v13);

      CFRelease(v12);
    }
  }

  else
  {
    v15 = off_10041DB98;
    if (off_10041DB98 == &_os_log_default)
    {
      v15 = os_log_create("com.apple.isp", "photon");
      off_10041DB98 = v15;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10007C6C4(v15);
    }
  }
}

uint64_t sub_100003F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 3758097090;
  }

  result = 0;
  *(a1 + 312) = a3;
  *(a1 + 320) = a2;
  return result;
}

void sub_100003FD0(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    sub_100003DC4(v3, a2, a3);
  }
}

void sub_100003FE0(int a1, xpc_connection_t *a2, xpc_object_t xdict)
{
  length = 0;
  uint64 = xpc_dictionary_get_uint64(xdict, "H16ISPServicesRemoteTypeKey");
  data = xpc_dictionary_get_data(xdict, "H16ISPServicesRemoteDataKey", &length);
  if (!uint64)
  {
    return;
  }

  v7 = data;
  if (!data || !length)
  {
    return;
  }

  if (uint64 == 1 && length == 13320)
  {
    v8 = *data;
    if (*data <= 20)
    {
      if (v8 > 8)
      {
        if ((v8 - 9) >= 2)
        {
          if (v8 == 18)
          {
            data[1] = xpc_dictionary_get_value(xdict, "H16ISPServicesRemoteRGBIRBufferColorKey");
            v7[2] = xpc_dictionary_get_value(xdict, "H16ISPServicesRemoteRGBIRBufferIRKey");
            v7[3] = xpc_dictionary_get_value(xdict, "H16ISPServicesRemoteRGBIRBufferDepthKey");
            v7[4] = xpc_dictionary_get_value(xdict, "H16ISPServicesRemoteRGBIRMetadataColorKey");
            v7[5] = xpc_dictionary_get_value(xdict, "H16ISPServicesRemoteRGBIRMetadataIRKey");
            v7[6] = xpc_dictionary_get_value(xdict, "H16ISPServicesRemoteRGBIRPCEConfigKey");
          }

          goto LABEL_42;
        }

        data[1] = xpc_dictionary_get_value(xdict, "H16ISPServicesRemoteCFTypeNameKey");
        value = xpc_dictionary_get_value(xdict, "H16ISPServicesRemoteCFTypeDataKey");
        goto LABEL_28;
      }

      if (v8 != 7)
      {
        if (v8 != 8)
        {
LABEL_42:
          v15 = sub_1000029D4();
          goto LABEL_43;
        }

        data[1] = xpc_dictionary_get_value(xdict, "H16ISPServicesRemoteRGBJBufferKey");
        v7[3] = xpc_dictionary_get_value(xdict, "H16ISPServicesRemoteRGBJOriginalCloudBanksKey");
        v7[4] = xpc_dictionary_get_value(xdict, "H16ISPServicesRemoteRGBJColorCalibrationKey");
        v7[5] = xpc_dictionary_get_value(xdict, "H16ISPServicesRemoteRGBJJasperCalibrationKey");
        value = xpc_dictionary_get_value(xdict, "H16ISPServicesRemoteRGBJMetadataKey");
LABEL_28:
        v7[2] = value;
        goto LABEL_42;
      }

      v16 = xpc_dictionary_get_value(xdict, "H16ISPServicesRemoteJasperCalibObjectKey");
LABEL_40:
      v7[1] = v16;
      goto LABEL_42;
    }

    if (v8 <= 206)
    {
      if (v8 == 21)
      {
        v16 = xpc_dictionary_get_value(xdict, "H16ISPServicesRemoteDeviceID");
        goto LABEL_40;
      }

      if (v8 != 204)
      {
        goto LABEL_42;
      }
    }

    else if (v8 != 207)
    {
      if (v8 == 211)
      {
        *v29 = 0;
        data[1] = xpc_dictionary_get_string(xdict, "H16ISPServicesRemoteIORegPropertyNameKey");
        v17 = xpc_dictionary_get_data(xdict, "H16ISPServicesRemoteIORegPropertyDataKey", v29);
        v18 = *v29;
        v7[2] = v17;
        v7[3] = v18;
        goto LABEL_42;
      }

      if (v8 != 212)
      {
        goto LABEL_42;
      }
    }

    v26 = 0;
    v12 = xpc_dictionary_get_data(xdict, "H16ISPServicesRemoteFusingDataKey", &v26);
    v13 = v26;
    v7[1] = v12;
    v7[2] = v13;
    goto LABEL_42;
  }

  if (uint64 != 2 || length != 3680)
  {
    v10 = off_10041DCE8;
    if (off_10041DCE8 == &_os_log_default)
    {
      v10 = os_log_create("com.apple.isp", "daemon");
      off_10041DCE8 = v10;
    }

    v11 = -536870212;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10008476C(a2);
    }

    goto LABEL_44;
  }

  memcpy(__dst, data, sizeof(__dst));
  if ((LODWORD(__dst[0]) - 9) < 2)
  {
    v14 = "H16ISPServicesRemoteCFTypeNameKey";
  }

  else
  {
    if (LODWORD(__dst[0]) != 20)
    {
      if (LODWORD(__dst[0]) == 100)
      {
        sub_100004750();
        return;
      }

      goto LABEL_37;
    }

    v14 = "H16ISPServicesRemoteRGBIRFinalInputPCEConfigKey";
  }

  __dst[1] = xpc_dictionary_get_value(xdict, v14);
LABEL_37:
  v15 = sub_100004750();
LABEL_43:
  v11 = v15;
LABEL_44:
  reply = xpc_dictionary_create_reply(xdict);
  v20 = reply;
  if (reply)
  {
    remote_connection = xpc_dictionary_get_remote_connection(reply);
    v22 = off_10041DCE8;
    if (!remote_connection)
    {
      if (off_10041DCE8 == &_os_log_default)
      {
        v22 = os_log_create("com.apple.isp", "daemon");
        off_10041DCE8 = v22;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100084808(a2);
      }

      goto LABEL_75;
    }

    if (off_10041DCE8 == &_os_log_default)
    {
      v22 = os_log_create("com.apple.isp", "daemon");
      off_10041DCE8 = v22;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      pid = xpc_connection_get_pid(*a2);
      *v29 = 136315907;
      *&v29[4] = "xpcClientEventHandler";
      v30 = 1024;
      v31 = 1778;
      v32 = 1024;
      v33 = v11;
      v34 = 1025;
      v35 = pid;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s: %d: Sending reply to client: rc %08X (pid %{private}d)\n", v29, 0x1Eu);
    }

    xpc_dictionary_set_int64(v20, "H16ISPServicesRemoteReturnKey", v11);
    if (uint64 == 2)
    {
      xpc_dictionary_set_data(v20, "H16ISPServicesRemoteDataKey", __dst, length);
      if (SLODWORD(__dst[0]) <= 18)
      {
        if ((LODWORD(__dst[0]) - 9) >= 2)
        {
          if (LODWORD(__dst[0]) == 7 && !v11)
          {
            xpc_dictionary_set_value(v20, "H16ISPServicesRemoteJasperCalibObjectKey", __dst[1]);
            xpc_release(__dst[1]);
          }
        }

        else if (!v11)
        {
          xpc_dictionary_set_value(v20, "H16ISPServicesRemoteCFTypeDataKey", __dst[2]);
          xpc_release(__dst[2]);
        }

        goto LABEL_74;
      }

      if (LODWORD(__dst[0]) == 20)
      {
        if (v11)
        {
          goto LABEL_74;
        }

        xpc_dictionary_set_value(v20, "H16ISPServicesRemoteRGBIRFinalOutputPCEConfigKey", __dst[2]);
        v25 = __dst[2];
        if (!__dst[2])
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (LODWORD(__dst[0]) != 19)
        {
          goto LABEL_74;
        }

        if (v11)
        {
          goto LABEL_74;
        }

        xpc_dictionary_set_value(v20, "H16ISPServicesRemoteRGBIRReportKey", __dst[1]);
        v25 = __dst[1];
        if (!__dst[1])
        {
          goto LABEL_74;
        }
      }

      xpc_release(v25);
    }

LABEL_74:
    xpc_connection_send_message(remote_connection, v20);
LABEL_75:
    xpc_release(v20);
    return;
  }

  v24 = off_10041DCE8;
  if (off_10041DCE8 == &_os_log_default)
  {
    v24 = os_log_create("com.apple.isp", "daemon");
    off_10041DCE8 = v24;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_10008488C(a2);
  }
}

void sub_10000462C(uint64_t a1, xpc_object_t object)
{
  v4 = *(a1 + 32);
  type = xpc_get_type(object);
  if (type == &_xpc_type_error)
  {
    v7 = *(a1 + 40);

    sub_10000C210(v4, v7, object);
  }

  else if (type == &_xpc_type_dictionary)
  {
    v8 = *(a1 + 40);
    v9 = *(*v4 + 64);

    v9(v4, v8, object);
  }

  else
  {
    v6 = off_10041DCE8;
    if (off_10041DCE8 == &_os_log_default)
    {
      v6 = os_log_create("com.apple.isp", "daemon");
      off_10041DCE8 = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100084A90(a1);
    }
  }
}

uint64_t sub_100004750()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v8 = off_10041DCE8;
  if (off_10041DCE8 == &_os_log_default)
  {
    v8 = os_log_create("com.apple.isp", "daemon");
    off_10041DCE8 = v8;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *v4;
    *buf = 136315394;
    *&buf[4] = "getProperty";
    *&buf[12] = 1024;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s - %d\n", buf, 0x12u);
  }

  kdebug_trace();
  v10 = 3758097084;
  v11 = *v4;
  if (*v4 <= 101)
  {
    if (v11 > 9)
    {
      if (v11 > 19)
      {
        if (v11 == 20)
        {
          if (*(v7 + 912))
          {
            v54 = *(v4 + 8);
            if (v54)
            {
              v55 = sub_10000B2D0(v54);
              *(v4 + 16) = 0;
              BytePtr = CFDataGetBytePtr(v55);
              memcpy(buf, BytePtr, 0x3400uLL);
              CFRelease(v55);
              if ((*(**(v7 + 912) + 24))(*(v7 + 912), buf))
              {
                v57 = CFDataCreate(kCFAllocatorDefault, buf, 13312);
                *(v4 + 16) = sub_10000ADF8(v57);
                CFRelease(v57);
                goto LABEL_127;
              }
            }
          }

          goto LABEL_128;
        }

        if (v11 != 22)
        {
          if (v11 != 100)
          {
            goto LABEL_128;
          }

          v27 = *(*(v7 + 72) + 4304);
          if (!v27)
          {
            goto LABEL_128;
          }

          if (!v2)
          {
            goto LABEL_128;
          }

          if (!*(v7 + 936))
          {
            goto LABEL_128;
          }

          v28 = *(v27 + 668);
          if (v28 > 0xA || ((1 << v28) & 0x640) == 0 || *(v7 + 1008) != 1)
          {
            goto LABEL_128;
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0xE8802000000;
          *&buf[24] = sub_1000054C0;
          *&buf[32] = nullsub_11;
          memcpy(&buf[40], v4, 0xE60uLL);
          v68 = 0;
          v69 = &v68;
          v70 = 0x2000000000;
          reply = xpc_dictionary_create_reply(v2);
          v29 = v69[3];
          if (v29)
          {
            v77 = 0;
            v78 = &v77;
            v79 = 0x2000000000;
            remote_connection = xpc_dictionary_get_remote_connection(v29);
            if (v78[3])
            {
              ++*(v7 + 1020);
              v30 = off_10041DCE8;
              if (off_10041DCE8 == &_os_log_default)
              {
                v30 = os_log_create("com.apple.isp", "daemon");
                off_10041DCE8 = v30;
              }

              v31 = (v7 + 1020);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                pid = xpc_connection_get_pid(*v6);
                sub_100005420((v7 + 1020), v76, pid, v30);
              }

              if (*v31 < 0x10)
              {
                v67[7] = _NSConcreteStackBlock;
                v67[8] = 0x40000000;
                v67[9] = sub_100005640;
                v67[10] = &unk_1000AC6C8;
                v67[11] = buf;
                v67[12] = &v68;
                v67[13] = &v77;
                v67[14] = v7;
                v67[15] = 3680;
                v67[16] = v6;
                xpc_dictionary_handoff_reply();
              }

              else
              {
                bzero((*&buf[8] + 40), 0xE60uLL);
                *(*&buf[8] + 68) = -536870187;
                xpc_dictionary_set_int64(v69[3], "H16ISPServicesRemoteReturnKey", -536870187);
                xpc_dictionary_set_data(v69[3], "H16ISPServicesRemoteDataKey", (*&buf[8] + 40), 0xE60uLL);
                xpc_connection_send_message(v78[3], v69[3]);
                --*v31;
                v33 = off_10041DCE8;
                if (off_10041DCE8 == &_os_log_default)
                {
                  v33 = os_log_create("com.apple.isp", "daemon");
                  off_10041DCE8 = v33;
                }

                if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
                {
                  v34 = xpc_connection_get_pid(*v6);
                  v35 = *v31;
                  *v72 = 67174913;
                  v73 = v34;
                  v74 = 1024;
                  v75 = v35;
                  _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Sent kIOReturnBusy reply to client: (pid %{private}d), num pending requests = %u\n", v72, 0xEu);
                }

                xpc_release(v69[3]);
              }

              v10 = 0;
            }

            else
            {
              v64 = off_10041DCE8;
              if (off_10041DCE8 == &_os_log_default)
              {
                v64 = os_log_create("com.apple.isp", "daemon");
                off_10041DCE8 = v64;
              }

              if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
              {
                xpc_connection_get_pid(*v6);
                sub_100084674(v76);
              }

              v10 = 3758097111;
            }

            _Block_object_dispose(&v77, 8);
          }

          else
          {
            v63 = off_10041DCE8;
            if (off_10041DCE8 == &_os_log_default)
            {
              v63 = os_log_create("com.apple.isp", "daemon");
              off_10041DCE8 = v63;
            }

            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              xpc_connection_get_pid(*v6);
              sub_1000846B8(&v77);
            }

            v10 = 3758097085;
          }

          _Block_object_dispose(&v68, 8);
LABEL_119:
          _Block_object_dispose(buf, 8);
          goto LABEL_128;
        }

        v45 = *(v7 + 936);
        if (!v45 || !*(v7 + 920))
        {
          goto LABEL_128;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        *&buf[24] = 0;
        v65[0] = _NSConcreteStackBlock;
        v65[1] = 0x40000000;
        v65[2] = sub_10005F604;
        v65[3] = &unk_1000AC738;
        v65[4] = buf;
        v65[5] = v7;
        v65[6] = v4;
        v49 = v65;
LABEL_118:
        dispatch_sync(v45, v49);
        v10 = *(*&buf[8] + 24);
        goto LABEL_119;
      }

      if (v11 != 10)
      {
        if (v11 == 11)
        {
          v50 = *(v7 + 904);
          if (!v50)
          {
            goto LABEL_128;
          }

          H16ISPRgbJRunner::fillReport(v50, (v4 + 8), (v4 + 12), (v4 + 16), (v4 + 20));
          goto LABEL_127;
        }

        if (v11 != 19)
        {
          goto LABEL_128;
        }

        *(v4 + 8) = 0;
        v18 = *(v7 + 912);
        if (!v18)
        {
          goto LABEL_128;
        }

        if (v18[9])
        {
          goto LABEL_127;
        }

        v19 = (*(*v18 + 32))(v18);
        v20 = v19;
        if (!v19)
        {
          *(v4 + 8) = 0;
          goto LABEL_128;
        }

LABEL_27:
        *(v4 + 8) = sub_10000ADF8(v19);
        CFRelease(v20);
        goto LABEL_127;
      }

      v51 = sub_10000B2D0(*(v4 + 8));
      v53 = v51;
      if (!v51)
      {
        goto LABEL_128;
      }

      Data = H16ISPRgbJRunner::readData(v51, v52);
      CFRelease(v53);
      if (Data)
      {
        goto LABEL_39;
      }

      goto LABEL_137;
    }

    if (v11 <= 5)
    {
      if (v11 == 4)
      {
        sub_100025F4C();
        v10 = fopen("/var/mobile/Library/ISP/Pearl/IsfHistory.bin", "rb");
        if (v10)
        {
          fread((v4 + 8), 0xE38uLL, 1uLL, v10);
          fclose(v10);
          goto LABEL_127;
        }

        *(v4 + 8) = 3;
        *(v4 + 12) = 1;
        goto LABEL_128;
      }

      if (v11 != 5)
      {
        goto LABEL_128;
      }

      v36 = sub_100016ABC(**(*(v7 + 72) + 4304), 0, (v4 + 16));
    }

    else
    {
      if (v11 != 6)
      {
        if (v11 == 7)
        {
          v19 = sub_10000A4DC(*(v7 + 72), 0);
          v20 = v19;
          if (!v19)
          {
            goto LABEL_128;
          }

          goto LABEL_27;
        }

        if (v11 != 9)
        {
          goto LABEL_128;
        }

        v22 = sub_10000B2D0(*(v4 + 8));
        v24 = v22;
        if (!v22)
        {
          goto LABEL_128;
        }

        Data = H16ISPRgbJRunner::readDictionary(v22, v23);
        CFRelease(v24);
        if (Data)
        {
LABEL_39:
          *(v4 + 16) = sub_10000ADF8(Data);
          CFRelease(Data);
          goto LABEL_127;
        }

LABEL_137:
        *(v4 + 16) = 0;
        goto LABEL_128;
      }

      v36 = sub_100016ABC(**(*(v7 + 72) + 4304), 1, (v4 + 16));
    }

    v10 = 0;
    *(v4 + 8) = v36;
    goto LABEL_128;
  }

  if (v11 > 201)
  {
    if (v11 > 205)
    {
      if (v11 != 206)
      {
        if (v11 == 209)
        {
          v21 = sub_1000597C0(*(v7 + 72));
        }

        else
        {
          if (v11 != 210)
          {
            goto LABEL_128;
          }

          v21 = sub_1000594E8(*(v7 + 72));
        }

        goto LABEL_111;
      }

      v10 = sub_10005A2A4(*(v7 + 72));
      if (!v10)
      {
        v21 = sub_10005ED3C(*(v7 + 72), *(v7 + 1016));
        goto LABEL_111;
      }
    }

    else
    {
      if (v11 == 202)
      {
        v21 = sub_10005EBC8(*(v7 + 72), *(v7 + 1012));
        goto LABEL_111;
      }

      if (v11 != 203)
      {
        if (v11 != 205)
        {
          goto LABEL_128;
        }

        v21 = sub_10005ECC0(*(v7 + 72), *(v7 + 1016));
        goto LABEL_111;
      }

      v10 = sub_10005A2A4(*(v7 + 72));
      if (!v10)
      {
        v21 = sub_10005EC44(*(v7 + 72), *(v7 + 1012));
LABEL_111:
        v10 = v21;
      }
    }

    *(v4 + 8) = v10;
    goto LABEL_128;
  }

  if (v11 > 105)
  {
    switch(v11)
    {
      case 106:
        v10 = sub_10005EF80(*(v7 + 72), (v4 + 8), (v4 + 10));
        goto LABEL_128;
      case 200:
        v38 = *(*(v7 + 72) + 4304);
        if (v38)
        {
          v39 = 0;
          v40 = (v38 + 16);
          do
          {
            v42 = *v40;
            v40 += 26;
            v41 = v42;
            if (v42 == 1718776695 || v41 == 1718775412)
            {
              *(v4 + 12) = v39;
              *(v7 + 1016) = v39;
            }

            else if (v41 == 1718186595)
            {
              *(v4 + 8) = v39;
              *(v7 + 1012) = v39;
            }

            v10 = 0;
            ++v39;
          }

          while (v39 != 6);
          goto LABEL_128;
        }

        break;
      case 201:
        v26 = *(*(v7 + 72) + 4304);
        if (v26)
        {
          *(v4 + 8) = v26[677];
          *(v4 + 10) = v26[648];
          v10 = 0;
          if (v26[650] == 1)
          {
            *(v4 + 9) = 0;
            *(v4 + 11) = v26[640];
          }

          else
          {
            *(v4 + 9) = v26[640];
            *(v4 + 11) = 0;
          }

          goto LABEL_128;
        }

        break;
      default:
        goto LABEL_128;
    }

    v10 = 3758097085;
    goto LABEL_128;
  }

  switch(v11)
  {
    case 'f':
      v44 = *(*(v7 + 72) + 4304);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      *&buf[24] = -536870212;
      if (!v44)
      {
        goto LABEL_119;
      }

      v45 = *(v7 + 936);
      if (!v45)
      {
        goto LABEL_119;
      }

      v46 = *(v44 + 668);
      v15 = v46 > 0xA;
      v47 = (1 << v46) & 0x640;
      v48 = v15 || v47 == 0;
      if (v48 || !*(v7 + 920))
      {
        goto LABEL_119;
      }

      v67[0] = _NSConcreteStackBlock;
      v67[1] = 0x40000000;
      v67[2] = sub_10005F5B8;
      v67[3] = &unk_1000AC6F0;
      v67[4] = buf;
      v67[5] = v7;
      v67[6] = v4;
      v49 = v67;
      goto LABEL_118;
    case 'g':
      for (i = *(v7 + 16); i != v7 + 8; i = *(i + 8))
      {
        if (!*(*(i + 16) + 8))
        {
          goto LABEL_136;
        }
      }

      v62 = *(v7 + 72);
      if (v62)
      {
        v10 = 0;
        *(v4 + 8) = sub_100002970(v62);
        break;
      }

LABEL_136:
      v10 = 0;
      *(v4 + 8) = 0;
      break;
    case 'h':
      v12 = *(*(v7 + 72) + 4304);
      if (v12)
      {
        v13 = *(v7 + 936);
        if (v13)
        {
          v14 = *(v12 + 668);
          v15 = v14 > 0xA;
          v16 = (1 << v14) & 0x640;
          v17 = v15 || v16 == 0;
          if (!v17 && *(v7 + 920))
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 0x40000000;
            block[2] = sub_10005F5F4;
            block[3] = &unk_1000AC710;
            block[4] = v7;
            block[5] = v4;
            dispatch_sync(v13, block);
LABEL_127:
            v10 = 0;
          }
        }
      }

      break;
  }

LABEL_128:
  v58 = off_10041DCE8;
  if (off_10041DCE8 == &_os_log_default)
  {
    v58 = os_log_create("com.apple.isp", "daemon");
    off_10041DCE8 = v58;
  }

  v59 = os_log_type_enabled(v58, OS_LOG_TYPE_INFO);
  v60 = *v4;
  if (v59)
  {
    *buf = 136315650;
    *&buf[4] = "getProperty";
    *&buf[12] = 1024;
    *&buf[14] = v60;
    *&buf[18] = 1024;
    *&buf[20] = v10;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "%s - %d complete (res=0x%08X)\n\n", buf, 0x18u);
  }

  kdebug_trace();
  return v10;
}

void sub_1000053C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a53, 8);
  _Unwind_Resume(a1);
}

void sub_100005420(int *a1, uint8_t *buf, int a3, os_log_t log)
{
  v4 = *a1;
  *buf = 136315651;
  *(buf + 4) = "getProperty";
  *(buf + 6) = 1025;
  *(buf + 14) = a3;
  *(buf + 9) = 1024;
  *(buf + 5) = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Incoming query from client (pid %{private}d), num pending requests = %u\n\n", buf, 0x18u);
}

uint64_t sub_1000054D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000054E0(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11[0] = &v10;
  v11[1] = 0x2020000000;
  v12 = 0;
  v4 = off_10041DCA0;
  if (off_10041DCA0 == &_os_log_default)
  {
    v4 = os_log_create("com.apple.isp", "photon");
    off_10041DCA0 = v4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000057E0();
  }

  v5 = *(a1 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007F98;
  block[3] = &unk_1000A29D8;
  block[4] = &v10;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v5, block);
  v6 = off_10041DCA0;
  if (off_10041DCA0 == &_os_log_default)
  {
    v6 = os_log_create("com.apple.isp", "photon");
    off_10041DCA0 = v6;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10000C148(v11, v6);
  }

  v7 = *(v11[0] + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_100005640(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = sub_1000054E0(*(v2 + 920), *(*(a1 + 32) + 8) + 48);
  *(*(*(a1 + 32) + 8) + 68) = v3;
  xpc_dictionary_set_int64(*(*(*(a1 + 40) + 8) + 24), "H16ISPServicesRemoteReturnKey", v3);
  xpc_dictionary_set_data(*(*(*(a1 + 40) + 8) + 24), "H16ISPServicesRemoteDataKey", (*(*(a1 + 32) + 8) + 40), *(a1 + 64));
  xpc_connection_send_message(*(*(*(a1 + 48) + 8) + 24), *(*(*(a1 + 40) + 8) + 24));
  --*(v2 + 1020);
  v4 = off_10041DCE8;
  if (off_10041DCE8 == &_os_log_default)
  {
    v4 = os_log_create("com.apple.isp", "daemon");
    off_10041DCE8 = v4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    pid = xpc_connection_get_pid(**(a1 + 72));
    v6 = *(v2 + 1020);
    v7[0] = 67109633;
    v7[1] = v3;
    v8 = 1025;
    v9 = pid;
    v10 = 1024;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Sent reply to client: rc %08X (pid %{private}d), num pending requests = %u\n", v7, 0x14u);
  }

  xpc_release(*(*(*(a1 + 40) + 8) + 24));
}

void sub_1000057E0()
{
  v1[0] = 136315394;
  sub_1000082DC();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s - %s: Scheduling the lux query on the serial queue\n", v1, 0x16u);
}

uint64_t sub_100005864(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  outputStruct = 0;
  v7 = 2;
  v3 = *(a1 + 4);
  if (!v3)
  {
    return 3758097101;
  }

  result = IOConnectCallStructMethod(v3, 4u, 0, 0, &outputStruct, &v7);
  if (!result)
  {
    *a2 = outputStruct;
    *a3 = HIBYTE(outputStruct);
  }

  return result;
}

uint64_t sub_1000058DC(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    return sub_100005864(v3, a2, a3);
  }

  else
  {
    return 3758097088;
  }
}

float sub_1000058F4(const float *a1, vDSP_Length __N)
{
  __C = 0.0;
  vDSP_meanv(a1, 1, &__C, __N);
  return __C;
}

float sub_100005928(float *a1, int a2, float *a3, float *a4, _DWORD *a5, float *a6, float result)
{
  if (a1)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        *a4 = a1[18] * a1[20];
        v7 = a1[17] * a1[19];
        v8 = 12;
        v9 = 11;
        goto LABEL_12;
      }

      if (a2 == 7)
      {
        *a4 = (a1[18] * a1[20]) * a1[22];
        v7 = (a1[17] * a1[19]) * a1[21];
        v8 = 14;
        v9 = 13;
        goto LABEL_12;
      }
    }

    else
    {
      if (!a2)
      {
        *a4 = 1.0;
        v7 = 1.0;
        v8 = 8;
        v9 = 7;
        goto LABEL_12;
      }

      if (a2 == 1)
      {
        *a4 = a1[18];
        v7 = a1[17];
        v8 = 10;
        v9 = 9;
LABEL_12:
        *a3 = v7;
        *a5 = LODWORD(a1[v9]);
        result = a1[v8];
        *a6 = result;
        return result;
      }
    }

    *a4 = ((a1[18] * a1[20]) * a1[22]) * a1[24];
    v7 = ((a1[17] * a1[19]) * a1[21]) * a1[23];
    v8 = 16;
    v9 = 15;
    goto LABEL_12;
  }

  return result;
}

float sub_100005A3C(float *a1, int a2, float a3, float a4, float a5, float a6, float a7, float a8)
{
  if (!a1)
  {
    return 0.0;
  }

  v8 = -(a8 - (a3 * 8388600.0));
  v9 = -(a7 - (a4 * 8388600.0));
  if (a2 == 1)
  {
    v10 = 1;
    v11 = a1;
  }

  else if (v8 == 0.0 || (v9 / v8) >= a1[4])
  {
    v11 = a1 + 5;
    v10 = 6;
  }

  else
  {
    v11 = a1 + 2;
    v10 = 3;
  }

  return (-(a1[v10] * v9) * a5) + ((v8 * *v11) * a6);
}

uint64_t sub_100005AB0(uint64_t a1, FFTSetup *a2, const float *__A, const float *__B, uint64_t a5, float a6)
{
  v355 = 0.0;
  v353 = 0;
  v354 = 0;
  v352 = 0;
  v351 = 0.0;
  v347 = 0.0;
  v346 = 0;
  v344 = 0;
  if (*(a1 + 72))
  {
    if (*(a1 + 232))
    {
      v8 = *(a1 + 240);
      if (v8)
      {
        if (*(a1 + 248) && *(a1 + 256) && *(a1 + 280) && *(a1 + 288) && *(a1 + 216) && *(a1 + 224) && *(a1 + 344) && *(a1 + 352) && *(a1 + 296) && *(a1 + 304) && *(a1 + 320) && *(a1 + 312))
        {
          v12 = 0;
          v13 = *a2;
          v14 = *(a1 + 708);
          v15 = a1 + 80;
          v16 = a1 + 144;
          v17 = *(a1 + 712);
          do
          {
            if (!*(a1 + v12 + 80) || !*(a1 + v12 + 144))
            {
              return 1;
            }

            v12 += 8;
          }

          while (v12 != 64);
          __C = 0;
          __N = 0;
          v358 = 0;
          __I = 0;
          v357 = 0;
          v356 = 0.0;
          v350 = 0.0;
          v349 = 0;
          v348 = 0.0;
          __Ba = 0.0;
          if (__A && __B && a5 && *(a1 + 12) == 4096)
          {
            v332 = v17;
            v337 = v14;
            v18 = *(a1 + 60);
            __Ba = -*(a1 + 24);
            v19 = 16000.0 / v18;
            if (*a1 & 1) != 0 || (*(a1 + 1))
            {
              v20 = 1;
              vDSP_vsub(__B, 1, __A, 1, v8, 1, 0x1000uLL);
              vDSP_vsadd(__A, 1, &__Ba, *(a1 + 256), 1, *(a1 + 12));
            }

            else
            {
              vDSP_vsadd(__A, 1, &__Ba, v8, 1, 0x1000uLL);
              v20 = 0;
            }

            v23 = sub_100007B98(*(a1 + 240), *(a1 + 232), *(a1 + 12), 10);
            sub_100007C6C(*(a1 + 240), *(a1 + 232), *(a1 + 72), *(a1 + 12), *(a1 + 16), *(a1 + 280), a2, (a1 + 264));
            v24 = *(a1 + 12);
            v25 = *(a1 + 280);
            v26 = v24 / 2 + 1;
            if (v24 >= -1)
            {
              v27 = (v24 / 2 + 1);
              v28 = *(a1 + 280);
              do
              {
                v29 = *v28;
                if (*v28 < 0.00001)
                {
                  v29 = 0.00001;
                }

                *v28++ = v29;
                --v27;
              }

              while (v27);
            }

            HIDWORD(__N) = v26;
            vvlogf(*(a1 + 288), v25, &__N + 1);
            v30 = *(a1 + 12);
            v31 = v30 / 2;
            if (v30 >= -1)
            {
              v34 = *(a1 + 216);
              v35 = *(v15 + 8 * *(a1 + 208));
              v36 = *(a1 + 280);
              v33 = v31 + 1;
              v37 = v33;
              v38 = v33;
              do
              {
                v39 = *v35++;
                v40 = *v34 - v39;
                v41 = *v36++;
                *v34++ = v40 + v41;
                --v38;
              }

              while (v38);
              v42 = *(a1 + 224);
              v32 = *(a1 + 208);
              v43 = *(v16 + 8 * v32);
              v44 = *(a1 + 288);
              do
              {
                v45 = *v43++;
                v46 = *v42 - v45;
                v47 = *v44++;
                *v42++ = v46 + v47;
                --v37;
              }

              while (v37);
            }

            else
            {
              v32 = *(a1 + 208);
              v33 = v31 + 1;
            }

            v48 = (v19 * 5.0) + 0.5;
            memcpy(*(v15 + 8 * v32), *(a1 + 280), 4 * v33);
            memcpy(*(v16 + 8 * *(a1 + 208)), *(a1 + 288), 4 * (*(a1 + 12) / 2) + 4);
            v49 = *(a1 + 32);
            *(a1 + 208) = (*(a1 + 208) + 1) % v49;
            if (*(a1 + 696) >= v49 && *(a1 + 12) >= -1)
            {
              v50 = *(a1 + 216);
              v51 = v49;
              v52 = *(a1 + 280);
              v53 = (*(a1 + 12) / 2 + 1);
              v54 = v53;
              do
              {
                v55 = *v50++;
                *v52++ = v55 / v51;
                --v54;
              }

              while (v54);
              v56 = *(a1 + 224);
              v57 = *(a1 + 288);
              do
              {
                v58 = *v56++;
                *v57++ = v58 / v51;
                --v53;
              }

              while (v53);
            }

            v59 = v48;
            if (v20)
            {
              sub_100007C6C(*(a1 + 256), *(a1 + 232), *(a1 + 72), *(a1 + 12), *(a1 + 16), *(a1 + 240), a2, (a1 + 264));
              v60 = *(a1 + 12);
              v61 = *(a1 + 240);
              if (v60 >= -1)
              {
                v62 = (v60 / 2 + 1);
                v63 = *(a1 + 240);
                do
                {
                  v64 = *v63;
                  if (*v63 < 0.00001)
                  {
                    v64 = 0.00001;
                  }

                  *v63++ = v64;
                  --v62;
                }

                while (v62);
              }

              v336 = ((((v61[1] * v61[1]) + (*v61 * *v61)) + (v61[2] * v61[2])) + (v61[3] * v61[3])) + (v61[4] * v61[4]);
            }

            else
            {
              v65 = *(a1 + 280);
              v336 = ((((v65[1] * v65[1]) + (*v65 * *v65)) + (v65[2] * v65[2])) + (v65[3] * v65[3])) + (v65[4] * v65[4]);
              v61 = *(a1 + 240);
              v60 = *(a1 + 12);
            }

            __Ba = -*(a1 + 28);
            vDSP_vsadd(__B, 1, &__Ba, v61, 1, v60);
            sub_100007C6C(*(a1 + 240), *(a1 + 232), *(a1 + 72), *(a1 + 12), *(a1 + 16), *(a1 + 248), a2, (a1 + 264));
            if (a6 == 0.0)
            {
              *(a5 + 20) = 1120403456;
              *(a5 + 32) = 0;
              v71 = HIDWORD(__N);
            }

            else
            {
              if (a6 == 30.0 || a6 == 15.0)
              {
                v68 = 1;
              }

              else
              {
                v68 = 2;
              }

              if (a6 == 8.0 || a6 == 1.0)
              {
                v70 = 0;
              }

              else
              {
                v70 = v68;
              }

              v71 = HIDWORD(__N);
              v66 = *(a1 + 248);
              sub_100008578(v70, v66, SHIDWORD(__N), *(a1 + 60), (a5 + 20), a6, ((((v66[1] * v66[1]) + (*v66 * *v66)) + (v66[2] * v66[2])) + (v66[3] * v66[3])) + (v66[4] * v66[4]), *(a1 + 56));
              LODWORD(v362) = 0;
              v72 = *(a1 + 64);
              v73 = *(a1 + 248);
              if (v72 >= -1)
              {
                bzero(*(a1 + 248), 4 * (v72 + 2));
              }

              sub_100008430(v48, v73, v71, *(a1 + 60), &v362, 120.0);
              *(a5 + 32) = v362;
            }

            sub_100007DA8(*(a1 + 288), v71, *(a1 + 336), *(a1 + 352), *(a1 + 344));
            v74 = *(a1 + 336);
            if (v74 >= 1)
            {
              v75 = 0;
              v77 = *(a1 + 344);
              v76 = *(a1 + 352);
              v78 = v76;
              v79 = *(a1 + 336);
              do
              {
                v80 = *v78++;
                v75 += v80;
                --v79;
              }

              while (v79);
              v81 = 0;
              while (1)
              {
                v82 = *v76++;
                v81 += v82;
                if ((*(a1 + 44) * v75) <= v81)
                {
                  break;
                }

                ++v77;
                if (!--v74)
                {
                  goto LABEL_83;
                }
              }

              LODWORD(__N) = *v77;
            }

LABEL_83:
            v83 = HIDWORD(__N);
            v84 = SHIDWORD(__N);
            v85 = *(a1 + 288);
            if (SHIDWORD(__N) < 1)
            {
              v90 = 0.0;
              v89 = 0.0;
            }

            else
            {
              v86 = 0;
              v87 = 0;
              v88 = 4 * HIDWORD(__N);
              v89 = 0.0;
              do
              {
                if (*&v85[v86] < *&__N)
                {
                  v89 = v89 + (*(*(a1 + 280) + v86) * *(*(a1 + 280) + v86));
                  ++v87;
                  *&v85[v86] = __N;
                }

                v86 += 4;
              }

              while (v88 != v86);
              v90 = v87;
            }

            memcpy(*(a1 + 248), v85, 4 * v84);
            if (*(a1 + 52) && SHIDWORD(__N) >= 3)
            {
              v91 = (*(a1 + 248) + 8);
              v92 = 4 * (HIDWORD(__N) - 1);
              v93 = 4;
              do
              {
                if (*(v91 - 2) == *&__N && *v91 == *&__N)
                {
                  *(*(a1 + 288) + v93) = __N;
                }

                ++v91;
                v93 += 4;
              }

              while (v92 != v93);
            }

            v94 = *(a1 + 64);
            v95 = *(a1 + 288);
            if (v94 > -2)
            {
              v97 = *(a1 + 280);
              v98 = (v94 + 2);
              v99 = *(a1 + 288);
              do
              {
                *v97++ = 0;
                v96 = *&__N;
                *v99++ = __N;
                --v98;
              }

              while (v98);
            }

            else
            {
              v96 = *&__N;
            }

            *&__N = -v96;
            memcpy(*(a1 + 248), v95, 4 * SHIDWORD(__N));
            vDSP_vsadd(*(a1 + 248), 1, &__N, *(a1 + 288), 1, SHIDWORD(__N));
            vDSP_maxvi(*(a1 + 280), 1, &__C + 1, &__I, SHIDWORD(__N));
            v100 = *(a1 + 280);
            v335 = 0;
            if (__I >= 2)
            {
              v101 = v100 + 4 * __I;
              if (*(v101 - 4) == 0.0 && *(v101 - 8) == 0.0)
              {
                v335 = 1;
              }
            }

            v102 = ((4100.0 / (*(a1 + 60) / 2)) * (*(a1 + 12) / 2));
            memcpy(*(a1 + 248), v100, 4 * SHIDWORD(__N));
            v103 = SHIDWORD(__N);
            v104 = *(a1 + 248);
            if (SHIDWORD(__N) >= v102)
            {
              bzero(&v104[v102 - 1], 4 * (HIDWORD(__N) - v102) + 4);
            }

            vDSP_maxvi(v104, 1, &__C + 1, &__I, v103);
            v105 = *(a1 + 12);
            if (__I)
            {
              v106 = __I;
            }

            else
            {
              v106 = 1.0;
            }

            if (__I <= (v105 >> 1))
            {
              v107 = v106;
            }

            else
            {
              v107 = (v105 >> 1);
            }

            v108 = v107;
            __I = v107;
            v109 = (*(a1 + 280) + 4 * v107);
            v110 = sub_100007EA0(v109 - 1);
            v111 = *v109 + (v110 * (*(v109 - 1) - v109[1])) * -0.25;
            *(&__C + 1) = v111;
            v112 = v105;
            v113 = (v110 + v108) * *(a1 + 60);
            if (v108 <= 5)
            {
              v114 = 5;
            }

            else
            {
              v114 = v108;
            }

            v115 = v108 + 5;
            v116 = SHIDWORD(__N);
            if (v108 + 5 >= HIDWORD(__N) - 1)
            {
              v115 = HIDWORD(__N) - 1;
            }

            v117 = *(a1 + 248);
            if ((v114 - 5) <= v115)
            {
              bzero(&v117[v114 - 5], 4 * (v115 - v114 + 5) + 4);
            }

            v118 = v113 / v112;
            vDSP_maxvi(v117, 1, &__C, &v358, v116);
            v119 = *(a1 + 12);
            if (v358)
            {
              v120 = v358;
            }

            else
            {
              v120 = 1.0;
            }

            if (v358 <= (v119 >> 1))
            {
              v121 = v120;
            }

            else
            {
              v121 = (v119 >> 1);
            }

            v122 = v121;
            v358 = v121;
            v123 = (*(a1 + 280) + 4 * v121);
            v124 = sub_100007EA0(v123 - 1);
            v125 = *v123 + (v124 * (*(v123 - 1) - v123[1])) * -0.25;
            *&__C = v125;
            v126 = ((v124 + v122) * *(a1 + 60)) / v119;
            if (vabds_f32(*(a1 + 680), v126) < 3.0 && *(&__C + 1) * 0.95 < v125)
            {
              v118 = v126;
            }

            v127 = *(a1 + 288);
            if (SHIDWORD(__N) < v119)
            {
              v128 = 4 * SHIDWORD(__N);
              v129 = v119 - SHIDWORD(__N);
              do
              {
                *(&v127->real + v128) = *(&v127->real + v129);
                v128 += 4;
                --v129;
              }

              while (v129);
            }

            vDSP_ctoz(v127, 2, (a1 + 264), 1, (v119 + (v119 >> 31)) >> 1);
            vDSP_fft_zrip(v13, (a1 + 264), 1, *(a1 + 16), 1);
            v130 = *(a1 + 264);
            v131 = *(a1 + 272);
            v132 = *(a1 + 12) / 2;
            v130[v132] = *v131;
            v131[v132] = 0.0;
            *v131 = 0.0;
            vDSP_vabs(v130, 1, *(a1 + 288), 1, v132 + 1);
            v133 = *(a1 + 328);
            v134 = *(a1 + 332);
            v135 = *(a1 + 320);
            if (v133 <= v134)
            {
              v139 = 0;
              v136 = (v134 - v133 + 1);
              v140 = *(a1 + 288) + 4 * v133;
              do
              {
                v135[v139] = *(v140 + 4 * v139);
                ++v139;
              }

              while (v136 != v139);
              v138 = *v135;
              if (v136)
              {
                v141 = 0;
                v137 = 0;
                do
                {
                  if (v138 < v135[v141])
                  {
                    v137 = v141;
                    v138 = v135[v141];
                  }

                  ++v141;
                }

                while (v136 != v141);
                v142 = 0;
                goto LABEL_145;
              }

              v137 = 0;
            }

            else
            {
              LODWORD(v136) = 0;
              v137 = 0;
              v138 = *v135;
            }

            v142 = 1;
LABEL_145:
            v143 = v19 * 7.0;
            *(&__C + 1) = v138;
            v144 = *(a1 + 312);
            v145 = 1.0 / *(v144 + 4 * v137);
            if (v145 < 90.0)
            {
              v145 = 90.0;
            }

            v146 = *(a1 + 60);
            v147 = (v146 / 2);
            if (v145 >= v147)
            {
              v145 = (v146 / 2);
            }

            *(&v357 + 1) = v145;
            v148 = sub_100007F04(v144, v136, v137);
            v149 = (v137 - v148) & ~((v137 - v148) >> 31);
            v150 = v148 + v137;
            if (v148 + v137 >= v136)
            {
              v150 = v136;
            }

            v151 = __OFSUB__(v150, v149);
            v152 = v150 - v149;
            if (v152 < 0 == v151)
            {
              bzero(&v135[v149], 4 * v152 + 4);
            }

            v153 = *v135;
            if (v142)
            {
              v154 = 0;
            }

            else
            {
              v155 = 0;
              v154 = 0;
              do
              {
                if (v153 < v135[v155])
                {
                  v154 = v155;
                  v153 = v135[v155];
                }

                ++v155;
              }

              while (v136 != v155);
            }

            v156 = v143 + 0.5;
            *(&__C + 1) = v153;
            v157 = (v138 - v153) / v138;
            v158 = v157 > 0.5 || v157 <= 0.0;
            v159 = v157 + v157;
            if (v158)
            {
              v159 = 1.0;
            }

            if (v157 >= 0.0)
            {
              v160 = v159;
            }

            else
            {
              v160 = 0.0;
            }

            if (v138 == 0.0)
            {
              v160 = 1.0;
            }

            v333 = v160;
            v161 = 1.0 / *(v144 + 4 * v154);
            if (v161 < 90.0)
            {
              v161 = 90.0;
            }

            if (v161 >= v147)
            {
              v161 = (v146 / 2);
            }

            *&v357 = v161;
            v162 = sub_100007F04(v144, v136, v154);
            v163 = (v154 - v162) & ~((v154 - v162) >> 31);
            v164 = v162 + v154;
            if (v162 + v154 >= v136)
            {
              v164 = v136;
            }

            v151 = __OFSUB__(v164, v163);
            v165 = v164 - v163;
            if (v165 < 0 == v151)
            {
              bzero(&v135[v163], 4 * v165 + 4);
            }

            v334 = v156;
            v166 = *v135;
            if (v142)
            {
              v167 = 0;
            }

            else
            {
              v168 = 0;
              LODWORD(v167) = 0;
              do
              {
                if (v166 < v135[v168])
                {
                  LODWORD(v167) = v168;
                  v166 = v135[v168];
                }

                ++v168;
              }

              while (v136 != v168);
              v167 = v167;
            }

            v169 = 0;
            v340 = (v89 * v83) / v90;
            *(&__C + 1) = v166;
            v170 = 1.0 / *(v144 + 4 * v167);
            if (v170 < 90.0)
            {
              v170 = 90.0;
            }

            if (v170 >= v147)
            {
              v170 = (v146 / 2);
            }

            v356 = v170;
            *&v362 = &v357 + 4;
            *(&v362 + 1) = &v357;
            v171 = *(a1 + 12);
            v172 = v171;
            v173 = v146;
            *&v363 = &v356;
            v174 = *(a1 + 280);
            do
            {
              v175 = *(&v362 + v169);
              v176 = (*v175 * v172) / v173;
              v177 = (v176 + 2.0) + 0.5;
              v178 = v177;
              v179 = (v176 + -2.0);
              if (v179 >= v178)
              {
                v181 = v177;
              }

              else
              {
                v180 = v174[v178];
                v181 = v177;
                do
                {
                  if (v174[v179] > v180)
                  {
                    v180 = v174[v179];
                    v181 = v179;
                  }

                  ++v179;
                }

                while (v178 != v179);
              }

              *v175 = ((sub_100007EA0(&v174[v181 - 1]) + v181) * v173) / v172;
              ++v169;
            }

            while (v169 != 3);
            v182 = 1;
            while (1)
            {
              v183 = v118 / v182;
              v184 = vabds_f32(*(&v357 + 1), v183);
              v185 = *(&v357 + 1) > 1000.0 && v184 < 20.0;
              v186 = v185;
              if (v184 < 6.0 || v186)
              {
                break;
              }

              if (++v182 == 30)
              {
                v183 = *(&v357 + 1);
                goto LABEL_209;
              }
            }

            *(&v357 + 1) = v118 / v182;
LABEL_209:
            v187 = 1;
            while (1)
            {
              v188 = v118 / v187;
              v189 = vabds_f32(*&v357, v188);
              v190 = *&v357 > 1000.0 && v189 < 20.0;
              v191 = v190;
              if (v189 < 6.0 || v191)
              {
                break;
              }

              if (++v187 == 30)
              {
                v188 = *&v357;
                goto LABEL_221;
              }
            }

            *&v357 = v118 / v187;
LABEL_221:
            v192 = 1;
            while (1)
            {
              v193 = v118 / v192;
              v194 = vabds_f32(v356, v193);
              v195 = v356 > 1000.0 && v194 < 20.0;
              v196 = v195;
              if (v194 < 6.0 || v196)
              {
                break;
              }

              if (++v192 == 30)
              {
                v193 = v356;
                goto LABEL_233;
              }
            }

            v356 = v118 / v192;
LABEL_233:
            v197 = HIDWORD(__N);
            sub_100008338(v59, v174, SHIDWORD(__N), v146, &v355, v183, v340);
            sub_100008338(v59, v174, v197, v146, &v354 + 1, v188, v340);
            sub_100008338(v59, v174, v197, v146, &v354, v193, v340);
            sub_100008338(v59, v174, v197, v146, &v353 + 1, v118, v340);
            sub_100008430(v59, v174, v197, v146, &v353, v183);
            sub_100008430(v59, v174, v197, v146, &v352 + 1, v188);
            sub_100008430(v59, v174, v197, v146, &v352, v193);
            sub_100008430(v59, v174, v197, v146, &v351, v118);
            v198 = 0;
            *v365 = v118;
            *&v365[1] = v183;
            *&v362 = &v348;
            *(&v362 + 1) = &v350;
            *&v363 = &v349 + 4;
            *(&v363 + 1) = &v349;
            *&v365[2] = v188;
            *&v365[3] = v193;
            do
            {
              **(&v362 + v198) = sub_10000852C(&v174[(((*&v365[v198] * v172) / v173) + 0.5) - 1]);
              ++v198;
            }

            while (v198 != 4);
            if (v171 >= -1)
            {
              v199 = (v171 / 2 + 1);
              v200 = v174;
              do
              {
                v201 = *v200;
                if (*v200 < 0.00001)
                {
                  v201 = 0.00001;
                }

                *v200++ = v201;
                --v199;
              }

              while (v199);
            }

            vvlogf(*(a1 + 288), v174, &__N + 1);
            sub_100007DA8(*(a1 + 288), SHIDWORD(__N), *(a1 + 336), *(a1 + 352), *(a1 + 344));
            v202 = *(a1 + 336);
            v203 = 0.0;
            v341 = 0.0;
            if (v202 >= 1)
            {
              v204 = 0;
              v206 = *(a1 + 344);
              v205 = *(a1 + 352);
              v207 = v205;
              v208 = *(a1 + 336);
              do
              {
                v209 = *v207++;
                v204 += v209;
                --v208;
              }

              while (v208);
              v210 = 0;
              while (1)
              {
                v211 = *v205++;
                v210 += v211;
                if ((*(a1 + 48) * v204) <= v210)
                {
                  break;
                }

                ++v206;
                if (!--v202)
                {
                  v212 = 0.0;
                  goto LABEL_248;
                }
              }

              v212 = *v206;
LABEL_248:
              v341 = v212;
            }

            v213 = *(a1 + 572);
            v214 = *(&v357 + 1);
            if (vabds_f32(v213, *(&v357 + 1)) < 3.0)
            {
              v203 = 0.2;
            }

            v338 = v355;
            v342 = *(&v353 + 1);
            if ((v355 + v203) < *(&v353 + 1))
            {
              goto LABEL_255;
            }

            v215 = v350;
            v216 = expf(v341);
            if (v216 <= (v348 * 0.02))
            {
              v216 = v348 * 0.02;
            }

            if (v215 >= v216)
            {
              v217 = (fabsf(v118 - (roundf(v118 / v214) * v214)) / v214) >= 0.02;
            }

            else
            {
LABEL_255:
              v217 = 1;
            }

            v218 = *&v357;
            v219 = 0.2;
            if (vabds_f32(v213, *&v357) >= 3.0)
            {
              v219 = 0.0;
            }

            v339 = *(&v354 + 1);
            if ((*(&v354 + 1) + v219) < v342)
            {
              goto LABEL_263;
            }

            v220 = *(&v349 + 1);
            v221 = expf(v341);
            if (v221 <= (v348 * 0.02))
            {
              v221 = v348 * 0.02;
            }

            if (v220 >= v221)
            {
              v222 = (fabsf(v118 - (roundf(v118 / v218) * v218)) / v218) >= 0.02;
            }

            else
            {
LABEL_263:
              v222 = 1;
            }

            LODWORD(v223) = v354;
            v224 = v356;
            v225 = 0.2;
            if (vabds_f32(v213, v356) >= 3.0)
            {
              v225 = 0.0;
            }

            if ((*&v354 + v225) < v342)
            {
              goto LABEL_271;
            }

            v226 = *&v349;
            v227 = expf(v341);
            if (v227 <= (v348 * 0.02))
            {
              v227 = v348 * 0.02;
            }

            if (v226 >= v227)
            {
              v263 = (fabsf(v118 - (roundf(v118 / v224) * v224)) / v224);
              v228 = 0.0;
              if (v217)
              {
                v229 = 0.0;
              }

              else
              {
                v229 = v214;
              }

              if (!v222)
              {
                v228 = v218;
              }

              if (v263 < 0.02)
              {
LABEL_277:
                v230 = 0.0;
                if (fabs(v229 + -111.1) <= 1.0)
                {
                  v229 = 0.0;
                }

                v231 = fabs(v229 + -111.1);
                if (v231 > 1.0)
                {
                  v232 = v228;
                }

                else
                {
                  v232 = 0.0;
                }

                v357 = __PAIR64__(LODWORD(v229), LODWORD(v232));
                if (v231 > 1.0)
                {
                  v233 = v224;
                }

                else
                {
                  v233 = 0.0;
                }

                v356 = v233;
                if (v232 <= v233)
                {
                  v234 = v233;
                }

                else
                {
                  v234 = v232;
                }

                if (v229 <= v234)
                {
                  v236 = 0;
                }

                else
                {
                  v235 = v339;
                  if (v339 <= v223)
                  {
                    v235 = v223;
                  }

                  if (vabds_f32(v213, v229) >= 3.0)
                  {
                    v230 = 0.2;
                  }

                  v236 = v338 > (v235 + v230);
                }

                if (v229 <= v233)
                {
                  v237 = v233;
                }

                else
                {
                  v237 = v229;
                }

                v238 = vabds_f32(v213, v232);
                if (v232 <= v237)
                {
                  v241 = 0;
                }

                else
                {
                  v239 = v338;
                  if (v338 <= v223)
                  {
                    v239 = v223;
                  }

                  v240 = 0.0;
                  if (v238 >= 3.0)
                  {
                    v240 = 0.2;
                  }

                  v241 = v339 > (v239 + v240);
                }

                if (v229 <= v232)
                {
                  v242 = v232;
                }

                else
                {
                  v242 = v229;
                }

                v158 = v233 <= v242;
                v243 = vabds_f32(v213, v233);
                if (v158)
                {
                  v246 = 0;
                }

                else
                {
                  v244 = v338;
                  if (v338 <= v339)
                  {
                    v244 = v339;
                  }

                  v245 = 0.0;
                  if (v243 >= 3.0)
                  {
                    v245 = 0.2;
                  }

                  v246 = v223 > (v244 + v245);
                }

                if (v229 >= v232 || v333 >= flt_10008D548[v238 < 3.0] || *(&v349 + 1) <= (flt_10008D550[v238 < 3.0] * v350))
                {
                  v248 = 0;
                }

                else
                {
                  v185 = v238 < 3.0;
                  v247 = 0.0;
                  if (v185)
                  {
                    v247 = 0.5;
                  }

                  v248 = (v339 + v247) > v338;
                }

                if (v232 >= v233 || v333 >= flt_10008D548[v243 < 3.0] || *&v349 <= (flt_10008D550[v243 < 3.0] * *(&v349 + 1)))
                {
                  v250 = 0;
                }

                else
                {
                  v185 = v243 < 3.0;
                  v249 = 0.0;
                  if (v185)
                  {
                    v249 = 0.5;
                  }

                  v250 = (v223 + v249) > v339;
                }

                if (v233 == 0.0 && v229 == 0.0 && v232 == 0.0)
                {
                  v346 = __PAIR64__(LODWORD(v351), LODWORD(v342));
                  v251 = HIDWORD(__N);
                  v252 = v348;
                  v253 = (v348 * 0.3);
                  v254 = expf(v341);
                  if (v254 * 1.2 >= v253)
                  {
                    v253 = v254 * 1.2;
                  }

                  if ((v252 * 0.2) <= v254)
                  {
                    v255 = v254;
                  }

                  else
                  {
                    v255 = v252 * 0.2;
                  }

                  v256 = 31;
                  while (1)
                  {
                    v232 = v118 / --v256;
                    if (v232 >= 90.0)
                    {
                      v257 = *(a1 + 280);
                      v258 = *(a1 + 60);
                      sub_10000CF20(v257, v251, v258, &v347, v118 / v256);
                      v259 = vabds_f32(v232, v213);
                      if (v259 > 3.0 && v253 < v347)
                      {
                        break;
                      }

                      if (v259 <= 3.0 && v347 > v255)
                      {
                        break;
                      }
                    }

                    if (v256 <= 2)
                    {
                      v232 = v118;
                      goto LABEL_374;
                    }
                  }

                  sub_100008338(v59, v257, v251, v258, &v346, v118 / v256, v340);
                  sub_100008430(v59, v257, v251, v258, &v346 + 1, v118 / v256);
LABEL_374:
                  v265 = 1;
                  while (1)
                  {
                    v266 = v118 / v265;
                    if (vabds_f32(v232, v266) < 5.0)
                    {
                      break;
                    }

                    if (++v265 == 31)
                    {
                      v266 = v232;
                      break;
                    }
                  }

                  v267 = fabsf(v266 + -100.0);
                  v268 = fabsf(v266 + -120.0);
                  v269 = *(&v346 + 1);
                  if (v266 < 140.0 && v267 > 1.5 && v268 > 1.5 && *(&v346 + 1) < 0.75)
                  {
                    if (v118 >= 140.0)
                    {
                      v269 = v351;
                      v346 = __PAIR64__(LODWORD(v351), LODWORD(v342));
                      v266 = v118;
                    }

                    else
                    {
                      v273 = 0.0;
                      if (*&v346 >= 0.5)
                      {
                        v273 = 1.0;
                        if (*&v346 > 0.5 && *&v346 <= 0.75)
                        {
                          v273 = (*&v346 + -0.5) * 4.0;
                        }
                      }

                      v269 = *(&v346 + 1) * v273;
                      *&v346 = *&v346 * v273;
                      *(&v346 + 1) = *(&v346 + 1) * v273;
                    }
                  }

                  v274 = *(a1 + 280);
                  v275 = HIDWORD(__N);
                  v276 = *(a1 + 60);
                  sub_100008430(v59, v274, SHIDWORD(__N), v276, &v344 + 1, v213);
                  sub_100008338(v59, v274, v275, v276, &v344, v213, v340);
                  if (*(a1 + 688) > 0.0 && vabds_f32(v213, *(a1 + 684)) < 2.0 && *(&v344 + 1) > (v269 * 5.0) && *(a1 + 564) >= 19)
                  {
                    v346 = v344;
                    v269 = *(&v344 + 1);
                    v266 = v213;
                  }

                  if ((fabsf(v213 - (roundf(v213 / v266) * v266)) / v266) < 0.02)
                  {
                    v277 = 0;
                    if (v213 <= (v266 + 10.0) || *(&v344 + 1) <= 0.4)
                    {
LABEL_407:
                      v278 = (fabsf(v266 - (roundf(v266 / v213) * v213)) / v213) < 0.02 && v266 * 0.9 > v213 && *(&v344 + 1) > 0.4 && *(&v344 + 1) * 0.7 > v269 && *(a1 + 564) > 9;
                      v279 = 1;
                      while (2)
                      {
                        v280 = v279;
                        for (i = 1; i != 20; ++i)
                        {
                          if (fabsf((v266 * v280) - (i * v213)) < 0.1)
                          {
                            v282 = v266 * v280;
                            goto LABEL_420;
                          }
                        }

                        if (++v279 != 20)
                        {
                          continue;
                        }

                        break;
                      }

                      v282 = 0.0;
LABEL_420:
                      v283 = vabds_f32(v282, v118) < 0.01 && *(&v344 + 1) > 0.4 && vabds_f32(*(&v344 + 1), v269) < 0.05 && *(a1 + 564) > 9;
                      if (v277 || v278 || v283)
                      {
                        v285 = 0;
                        while (vabds_f32(v266, *(a1 + 576 + v285)) <= 3.0)
                        {
                          v285 += 4;
                          if (v285 == 32)
                          {
                            v284 = v266;
                            if (!v283)
                            {
                              goto LABEL_433;
                            }

                            break;
                          }
                        }

                        v269 = *(&v344 + 1);
                        HIDWORD(v346) = HIDWORD(v344);
                        v284 = v213;
                      }

                      else
                      {
                        v284 = v266;
                      }

LABEL_433:
                      *(a1 + 576) = *(a1 + 580);
                      *(a1 + 592) = *(a1 + 596);
                      *(a1 + 600) = *(a1 + 604);
                      *(a1 + 604) = v266;
                      memmove((a1 + 608), (a1 + 612), 0x44uLL);
                      *(a1 + 676) = v266;
                      if (v284 <= 90.0 || fabsf(v284 + -5333.0) <= 4.0)
                      {
                        if (v213 <= 90.0 || fabsf(v213 + -5333.0) <= 4.0)
                        {
                          HIDWORD(v346) = 0;
                          v269 = 0.0;
                          v284 = 120.0;
                        }

                        else
                        {
                          v269 = *(&v344 + 1);
                          HIDWORD(v346) = HIDWORD(v344);
                          v284 = v213;
                        }
                      }

                      v286 = *(a5 + 28) != 1 && v335;
                      if (v286)
                      {
                        HIDWORD(v346) = 0;
                        v269 = 0.0;
                      }

                      *(a5 + 8) = v269;
                      *a5 = v284;
                      v287 = (a5 + 16);
                      sub_100008578(v334, v274, v275, v276, (a5 + 16), v284, v336, *(a1 + 56));
                      v288 = *a5;
                      sub_10000B6D4(v59, *(a1 + 280), v275, *(a1 + 60), &v346 + 1, *a5);
                      v289 = *(a5 + 16);
                      v290 = 0.0;
                      if (v289 >= 65.0)
                      {
                        v290 = 1.0;
                        if (v289 > 65.0 && v289 <= 70.0)
                        {
                          v290 = (v289 + -65.0) / 5.0;
                        }
                      }

                      *(a5 + 8) = (v290 * *(&v346 + 1)) + ((1.0 - v290) * *(a5 + 8));
                      v291 = *(a1 + 360);
                      *(a1 + 368 + 4 * v291) = v288;
                      v292 = (a1 + 440);
                      *(a1 + 440 + 4 * v291) = v23;
                      v293 = (a1 + 476);
                      v294 = *(a1 + 364);
                      *(a1 + 476 + 4 * v294) = 0;
                      if (*(a1 + 696))
                      {
                        v293[v294] = *v287;
                      }

                      *(a1 + 404) = *(a1 + 408);
                      *(a1 + 420) = *(a1 + 424);
                      v295 = *(a5 + 8);
                      *(a1 + 436) = v295;
                      *(a1 + 360) = (v291 + 1) % 9;
                      *(a1 + 364) = (v294 + 1) % 22;
                      v296 = (*(a1 + 564) + 1) % 0xFFFFFFF;
                      *(a1 + 564) = v296;
                      if (v296 > 8)
                      {
                        v298 = *(a1 + 384);
                        v362 = *(a1 + 368);
                        v363 = v298;
                        v364 = *(a1 + 400);
                        *(a5 + 4) = sub_1000408C8(&v362, 9);
                        v299 = *(a1 + 420);
                        v362 = *(a1 + 404);
                        v363 = v299;
                        v364 = *(a1 + 436);
                        *(a5 + 12) = 0;
                        v295 = 0.0;
                        if (!v286)
                        {
                          v295 = sub_1000408C8(&v362, 9);
                          *(a5 + 12) = v295;
                        }

                        v300 = *(a1 + 572);
                        if (v300 <= *a5)
                        {
                          v301 = *a5;
                        }

                        else
                        {
                          v301 = *(a1 + 572);
                        }

                        if (v300 >= *a5)
                        {
                          v300 = *a5;
                        }

                        if ((fabsf(v301 - (roundf(v301 / v300) * v300)) / v300) >= 0.02 && *(a5 + 8) > 0.7)
                        {
                          *(a5 + 4) = *a5;
                          *(a1 + 564) = 0;
                          *(a1 + 688) = 0;
                        }

                        v302 = (a1 + 408);
                        LOBYTE(v297) = 1;
                        v303 = 8;
                        do
                        {
                          v297 = v297 && *v302 > *(v302 - 1);
                          ++v302;
                          --v303;
                        }

                        while (v303);
                        v304 = 0;
                        v23 = *v292;
                        do
                        {
                          if (v23 < v292[v304])
                          {
                            v23 = v292[v304];
                          }

                          ++v304;
                        }

                        while (v304 != 9);
                        v296 = *(a1 + 564);
                        if (v296 > 21)
                        {
                          v306 = 0;
                          v305 = *v293;
                          do
                          {
                            if (v305 < v293[v306])
                            {
                              v305 = v293[v306];
                            }

                            ++v306;
                          }

                          while (v306 != 22);
LABEL_477:
                          *(a5 + 24) = v305;
                          v307 = 0.0;
                          if (v23 >= v337)
                          {
                            v308 = v337 >= v23 || v23 > v332;
                            v307 = (v23 - v337) / (v332 - v337);
                            if (v308)
                            {
                              v307 = 1.0;
                            }
                          }

                          v309 = *(a5 + 8);
                          if (v309 < 0.8 && *(a5 + 28) != 1)
                          {
                            v310 = 1.0 - v307;
                            v309 = v309 * v310;
                            v295 = v310 * v295;
                            *(a5 + 8) = v309;
                            *(a5 + 12) = v295;
                          }

                          *(a1 + 680) = v118;
                          v311 = *(a5 + 4);
                          *(a1 + 572) = v311;
                          *(a1 + 704) = v295;
                          if (v305 >= 30.0)
                          {
                            if (v305 <= 70.0)
                            {
                              v312 = (v305 * 0.0067) + 0.1333;
                            }

                            else
                            {
                              v312 = 0.6;
                            }
                          }

                          else
                          {
                            v312 = 0.3333;
                          }

                          v313 = v312 * 0.6;
                          if (!v297)
                          {
                            v313 = v312;
                          }

                          v314 = (v295 + -0.5) * 10.0;
                          if (v314 >= 0.0)
                          {
                            v315 = v314 + 65.0;
                          }

                          else
                          {
                            v315 = 65.0;
                          }

                          v316 = *(a5 + 28);
                          *(a1 + 692) = v316;
                          switch(v316)
                          {
                            case 3:
                              v317 = 0;
                              if (v305 >= (v315 + -6.0) || v295 <= 0.2433)
                              {
                                goto LABEL_527;
                              }

                              if (v295 <= v313)
                              {
                                v318 = v309 > 0.5 && v295 > 0.8;
                                v317 = v318;
                                goto LABEL_526;
                              }

                              goto LABEL_518;
                            case 1:
                              v319 = v313 + -0.2;
                              v320 = 0.3333;
                              if (v319 >= 0.3333)
                              {
                                v320 = v319;
                              }

                              if (v295 < 0.1533 || (v295 < v320 ? (v321 = v305 < v315) : (v321 = 0), !v321))
                              {
                                v317 = 0;
                                v318 = 3;
                                if (v305 < v315 && v295 >= 0.1533)
                                {
                                  v317 = 1;
LABEL_527:
                                  if (vabds_f32(*(a1 + 608), v266) <= 0.5)
                                  {
                                    v323 = 0;
                                    do
                                    {
                                      v324 = v323;
                                      if (v323 == 16)
                                      {
                                        break;
                                      }

                                      v325 = vabds_f32(*(a1 + 612 + 4 * v323++), v266);
                                    }

                                    while (v325 <= 0.5);
                                    v322 = v324 > 0xF;
                                  }

                                  else
                                  {
                                    v322 = 0;
                                  }

                                  v326 = v295 <= 0.8 || v296 <= 8;
                                  v327 = v317 & v322;
                                  if (!v326)
                                  {
                                    v327 = 1;
                                  }

                                  if (v327 == 1 && v316 == 1)
                                  {
                                    *(a1 + 684) = v311;
                                    *(a1 + 688) = v295;
                                  }

                                  if (!*(a1 + 568))
                                  {
                                    *(a1 + 568) = 1;
                                  }

                                  v329 = *(a1 + 696);
                                  if (v329 >= 4)
                                  {
                                    LOBYTE(v317) = 0;
                                  }

                                  v331 = v295 == 0.0 && v311 == 120.0;
                                  if ((v317 & 1) != 0 || v331)
                                  {
                                    *(a5 + 28) = 0;
                                  }

                                  result = 0;
                                  *(a1 + 696) = v329 + 1;
                                  return result;
                                }

LABEL_526:
                                *(a5 + 28) = v318;
                                goto LABEL_527;
                              }

                              break;
                            case 0:
                              if (v295 <= v313 && (v295 <= 0.5 || v309 <= 0.5) || v305 >= v315)
                              {
                                v317 = 0;
                                v318 = 3;
                                if (v305 < v315 && v295 >= 0.1533)
                                {
                                  goto LABEL_527;
                                }

                                goto LABEL_526;
                              }

LABEL_518:
                              v318 = 1;
                              v317 = 1;
                              goto LABEL_526;
                          }

                          v318 = 0;
                          v317 = 0;
                          goto LABEL_526;
                        }
                      }

                      else
                      {
                        v297 = 0;
                        *(a5 + 4) = *a5;
                        *(a5 + 12) = v295;
                      }

                      v305 = *v287;
                      goto LABEL_477;
                    }

                    if ((*&v344 + 1.5) > *&v346)
                    {
                      v277 = *(a1 + 564) > 9;
                      goto LABEL_407;
                    }
                  }

                  v277 = 0;
                  goto LABEL_407;
                }

                if (v229 <= 0.0 || v232 <= 0.0 || v233 <= 0.0)
                {
                  if (v229 <= 0.0)
                  {
                    v264 = v232 <= 0.0 || v250;
                    if (v264)
                    {
                      goto LABEL_372;
                    }

                    goto LABEL_373;
                  }
                }

                else
                {
                  v262 = v236 || v241;
                  if ((v262 | v246))
                  {
                    if (!v236)
                    {
                      if ((v262 & 1) == 0)
                      {
LABEL_372:
                        v346 = __PAIR64__(v352, LODWORD(v223));
                        v232 = v233;
                        goto LABEL_374;
                      }

LABEL_373:
                      v346 = __PAIR64__(HIDWORD(v352), LODWORD(v339));
                      goto LABEL_374;
                    }

LABEL_367:
                    v346 = __PAIR64__(v353, LODWORD(v338));
                    v232 = v229;
                    goto LABEL_374;
                  }
                }

                if (v248)
                {
                  goto LABEL_373;
                }

                goto LABEL_367;
              }
            }

            else
            {
LABEL_271:
              v228 = 0.0;
              if (v217)
              {
                v229 = 0.0;
              }

              else
              {
                v229 = v214;
              }

              if (!v222)
              {
                v228 = v218;
              }
            }

            v224 = 0.0;
            goto LABEL_277;
          }

          v21 = off_10041DCB0;
          if (off_10041DCB0 == &_os_log_default)
          {
            v21 = os_log_create("com.apple.isp", "general");
            off_10041DCB0 = v21;
          }

          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_10007F910(a1, v21);
          }
        }
      }
    }
  }

  return 1;
}

float sub_100007B98(float *a1, float *a2, int a3, int a4)
{
  result = 0.0;
  if (a4 && a1 && a2)
  {
    v5 = 0.0;
    v6 = 0.0;
    if (a4 >= 1)
    {
      v7 = a4;
      v8 = a1;
      do
      {
        v9 = *v8++;
        v6 = v6 + v9;
        --v7;
      }

      while (v7);
    }

    v10 = a4;
    if (fabsf(v6) <= a4)
    {
      v5 = v6;
    }

    *a2 = v5;
    if (a3 > a4)
    {
      v11 = a2 + 1;
      v12 = (a3 - a4 + 1) - 1;
      do
      {
        v5 = (v5 - *a1) + a1[a4];
        if (fabsf(v5) <= v10)
        {
          v13 = v5;
        }

        else
        {
          v13 = 0.0;
        }

        *v11++ = v13;
        ++a1;
        --v12;
      }

      while (v12);
    }

    v14 = 0.0;
    if (2 * a4 <= a3)
    {
      v15 = (a3 - 2 * a4 + 1);
      do
      {
        v16 = a2[a4];
        v17 = *a2++;
        v18 = vabds_f32(v16, v17);
        if (v18 > v14)
        {
          v14 = v18;
        }

        --v15;
      }

      while (v15);
    }

    return v14 / v10;
  }

  return result;
}

void sub_100007C6C(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, int a4, int a5, float *a6, FFTSetup *a7, const DSPSplitComplex *a8)
{
  sub_100007D30(a1, a3, a2, a4);
  v14 = a4 + (a4 >> 31);
  v15 = a4 / 2;
  vDSP_ctoz(a2, 2, a8, 1, v14 >> 1);
  vDSP_fft_zrip(*a7, a8, 1, a5, 1);
  imagp = a8->imagp;
  a8->realp[v15] = *imagp;
  imagp[v15] = 0.0;
  *imagp = 0.0;

  vDSP_zvabs(a8, 1, a6, 1, v15 + 1);
}

float32_t sub_100007D30(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, int a4)
{
  v4 = a4 & 0xFFFFFFFC;
  if (v4 < 1)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = 0;
    v6 = a1;
    v7 = a2;
    v8 = a3;
    do
    {
      v9 = *v6++;
      v10 = v9;
      v11 = *v7++;
      v12 = vmulq_f32(v10, v11);
      *v8++ = v12;
      v5 += 4;
    }

    while (v5 < v4);
  }

  if (v5 < a4)
  {
    v13 = &a3->i32[v5];
    v14 = &a2->f32[v5];
    v15 = &a1->f32[v5];
    v16 = a4 - v5;
    do
    {
      v17 = *v15++;
      v18 = v17;
      v19 = *v14++;
      v12.f32[0] = v18 * v19;
      *v13++ = v12.i32[0];
      --v16;
    }

    while (v16);
  }

  return v12.f32[0];
}

void sub_100007DA8(const float *a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  __C = 0;
  v10 = a2;
  vDSP_maxv(a1, 1, &__C + 1, a2);
  vDSP_minv(v9, 1, &__C, v10);
  v11 = *&__C;
  v12 = (*(&__C + 1) - *&__C) / a3;
  if (v12 == 0.0)
  {
    v12 = 0.0000001;
  }

  if (a3 >= 1)
  {
    v13 = 0;
    do
    {
      *(a5 + 4 * v13) = v11 + (v13 * v12);
      *(a4 + 4 * v13++) = 0;
    }

    while (a3 != v13);
  }

  if (a2 >= 1)
  {
    v14 = a2;
    do
    {
      v15 = *v9++;
      v16 = vcvtms_s32_f32((v15 - v11) / v12);
      if (v16 >= a3)
      {
        v16 = a3 - 1;
      }

      ++*(a4 + 4 * v16);
      --v14;
    }

    while (v14);
  }
}

float sub_100007EA0(float *a1)
{
  v1 = a1[2];
  v2 = (*a1 + (a1[1] * -2.0)) + v1;
  result = 0.0;
  if (v2 != 0.0)
  {
    v4 = (*a1 - v1) * 0.5 / v2;
    result = 0.5;
    if (v4 <= 0.5)
    {
      result = (*a1 - v1) * 0.5 / v2;
      if (v4 < -0.5)
      {
        return -0.5;
      }
    }
  }

  return result;
}

uint64_t sub_100007F04(uint64_t a1, int a2, int a3)
{
  v3 = a3 + 2;
  v4 = -1;
  v5 = 1.0 / *(a1 + 4 * a3);
  do
  {
    if (v3 >= a2 - 1)
    {
      v6 = a2 - 1;
    }

    else
    {
      v6 = v3;
    }

    v7 = v5 + (-1.0 / *(a1 + 4 * v6));
    v8 = v4 - 1;
    ++v3;
  }

  while (v7 < 30.0 && v4-- != -9);
  v10 = a3 - 2;
  v11 = -v8;
  v12 = 1;
  do
  {
    v13 = (1.0 / *(a1 + 4 * (v10 & ~(v10 >> 31)))) - v5;
    v14 = v12 + 1;
    --v10;
  }

  while (v13 < 30.0 && v12++ != 9);
  if (v11 >= v14)
  {
    return v14;
  }

  else
  {
    return v11;
  }
}

uint64_t sub_100007F98(uint64_t result)
{
  v1 = *(result + 40);
  if (*(v1 + 8))
  {
    v2 = result;
    bzero(&v13, 0x10uLL);
    v13.tv_nsec = 175000000;
    v3 = off_10041DCA0;
    if (off_10041DCA0 == &_os_log_default)
    {
      v3 = os_log_create("com.apple.isp", "photon");
      off_10041DCA0 = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000081DC();
    }

    pthread_mutex_lock((*(v1 + 8) + 424));
    *(*(*(v2 + 32) + 8) + 24) = pthread_cond_timedwait_relative_np((*(v1 + 8) + 488), (*(v1 + 8) + 424), &v13);
    v4 = *(v2 + 32);
    if (*(*(v4 + 8) + 24))
    {
      v5 = off_10041DCA0;
      if (off_10041DCA0 == &_os_log_default)
      {
        v5 = os_log_create("com.apple.isp", "photon");
        off_10041DCA0 = v5;
        v4 = *(v2 + 32);
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v12 = *(*(v4 + 8) + 24);
        *buf = 136315394;
        v15 = "GetLuxInfo_block_invoke";
        v16 = 1024;
        v17 = v12;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s - timed wait on a condition returned %d\n", buf, 0x12u);
        v4 = *(v2 + 32);
      }

      *(*(v4 + 8) + 24) = -536870186;
      v6 = *(v1 + 8);
    }

    else
    {
      v6 = *(v1 + 8);
      if (v6 && (v7 = *(v6 + 296)) != 0)
      {
        v8 = *(v2 + 48);
        *(v8 + 8) = *(v7 + 96);
        *v8 = *(v7 + 84);
        v9 = *(v1 + 56);
        if (v9)
        {
          v10 = 1;
        }

        else
        {
          v10 = *(v1 + 225);
        }

        *(v8 + 16) = v10 | (2 * *(*(v6 + 416) + 1)) | (4 * *(v7 + 112));
        *(v1 + 225) = v9;
      }

      else
      {
        v11 = *(v2 + 48);
        *v11 = 0;
        *(v11 + 8) = 0;
        *(v11 + 16) = 0;
        *(*(*(v2 + 32) + 8) + 24) = -536870212;
      }
    }

    return pthread_mutex_unlock((v6 + 424));
  }

  return result;
}

void sub_1000081DC()
{
  v1[0] = 136315394;
  sub_1000082DC();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s - %s: Waiting for lux\n", v1, 0x16u);
}

void sub_100008260(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void sub_1000082C0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

_BYTE *sub_100008328(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

float sub_100008338(int a1, uint64_t a2, int a3, int a4, float *a5, float a6, float a7)
{
  v8 = (a4 >> 1);
  v9 = a3;
  v10 = ((a6 / v8) * a3) + 0.5;
  v11 = v10;
  v12 = v10 <= 1.0;
  v13 = 1.0;
  if (!v12)
  {
    v13 = v11;
  }

  v14 = ((v9 / v13) + 0.5);
  if (v14 < 1)
  {
    v16 = 0.0;
  }

  else
  {
    v15 = 0;
    v16 = 0.0;
    do
    {
      v17 = (((++v15 * a6) / v8) * v9) + 0.5;
      v18 = (v17 - a1) & ~((v17 - a1) >> 31);
      v19 = v17 + a1;
      if (v19 >= a3 - 1)
      {
        v19 = a3 - 1;
      }

      if (v18 <= v19)
      {
        v20 = (v19 + 1);
        v21 = (a2 + 4 * v18);
        v22 = v20 - v18;
        do
        {
          v23 = *v21++;
          v16 = v16 + (v23 * v23);
          --v22;
        }

        while (v22);
      }
    }

    while (v15 != v14);
  }

  result = log10f(v16 / a7) * 10.0;
  *a5 = result;
  return result;
}

uint64_t sub_100008430(uint64_t result, float *a2, int a3, int a4, float *a5, float a6)
{
  v6 = (a4 >> 1);
  v7 = a3;
  v8 = ((a6 / v6) * a3) + 0.5;
  v9 = v8;
  v10 = v8 <= 1.0;
  v11 = 1.0;
  if (!v10)
  {
    v11 = v9;
  }

  v12 = ((v7 / v11) + 0.5);
  v13 = 0.0;
  v14 = 0.0;
  if (a3 >= 1)
  {
    v15 = a3;
    v16 = a2;
    do
    {
      v17 = *v16++;
      v14 = v14 + (v17 * v17);
      --v15;
    }

    while (v15);
  }

  if (v12 >= 1)
  {
    v18 = 0;
    v13 = 0.0;
    do
    {
      v19 = (((++v18 * a6) / v6) * v7) + 0.5;
      v20 = (v19 - result) & ~((v19 - result) >> 31);
      v21 = v19 + result;
      if (v21 >= a3 - 1)
      {
        v21 = a3 - 1;
      }

      if (v20 <= v21)
      {
        v22 = (v21 + 1);
        v23 = &a2[v20];
        v24 = v22 - v20;
        do
        {
          v25 = *v23++;
          v13 = v13 + (v25 * v25);
          --v24;
        }

        while (v24);
      }
    }

    while (v18 != v12);
  }

  v26 = v13 / v14;
  if ((v13 / v14) > 1.0)
  {
    v26 = 1.0;
  }

  *a5 = v26;
  return result;
}

float sub_100008578(int a1, uint64_t a2, int a3, int a4, float *a5, float a6, float a7, float a8)
{
  v9 = (a4 >> 1);
  v10 = a3;
  v11 = ((a6 / v9) * a3) + 0.5;
  v12 = v11;
  v13 = v11 <= 1.0;
  v14 = 1.0;
  if (!v13)
  {
    v14 = v12;
  }

  v15 = ((v10 / v14) + 0.5);
  if (v15 < 1)
  {
    v18 = 0.0;
  }

  else
  {
    v16 = 0;
    v17 = vcvtmd_s64_f64(((a8 / v9) * v10) + 0.5);
    v18 = 0.0;
    do
    {
      v19 = ((((++v16 * a6) / v9) * v10) + 0.5);
      v20 = v19 - a1;
      if (v19 - a1 <= v17)
      {
        v20 = v17;
      }

      v21 = v19 + a1;
      if (v21 >= a3 - 1)
      {
        v22 = a3 - 1;
      }

      else
      {
        v22 = v21;
      }

      if (v20 <= v22)
      {
        v23 = (a2 + 4 * v20);
        v24 = v22 - v20 + 1;
        do
        {
          v25 = *v23++;
          v18 = v18 + (v25 * v25);
          --v24;
        }

        while (v24);
      }
    }

    while (v16 != v15);
  }

  result = log10f(a7 / v18) * 10.0;
  *a5 = result;
  return result;
}

uint64_t sub_100008688(uint64_t a1)
{
  if (!a1)
  {
    return 3758097090;
  }

  pthread_mutex_lock((a1 + 336));
  *(a1 + 328) = 0;
  pthread_mutex_unlock((a1 + 336));
  [*(a1 + 400) requestResourceAccess];
  v2 = off_10041DC78;
  if (off_10041DC78 == &_os_log_default)
  {
    v2 = os_log_create("com.apple.isp", "general");
    off_10041DC78 = v2;
  }

  result = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    sub_10007D6D0();
    return 0;
  }

  return result;
}

uint64_t sub_1000087B8(uint64_t a1, AudioUnitRenderActionFlags *ioActionFlags, AudioTimeStamp *inTimeStamp, int a4, UInt32 inNumberFrames)
{
  if (a1)
  {
    v9 = *(a1 + 288);
    if (v9)
    {
      sub_10000D1F4(v9);
    }

    v10 = *(a1 + 80);
    if (!v10)
    {
      v16 = 0;
      goto LABEL_97;
    }

    v11 = *(a1 + 48) * inNumberFrames;
    v13 = (a1 + 104);
    v12 = *(a1 + 104);
    ioData.mBuffers[0].mData = (v10 + v12);
    ioData.mNumberBuffers = 1;
    ioData.mBuffers[0].mDataByteSize = v11;
    if (v12 + v11 <= *(a1 + 76))
    {
      v16 = AudioUnitRender(*(a1 + 16), ioActionFlags, inTimeStamp, 1u, inNumberFrames, &ioData);
      if (v16)
      {
        v18 = off_10041DC78;
        if (off_10041DC78 == &_os_log_default)
        {
          v18 = os_log_create("com.apple.isp", "general");
          off_10041DC78 = v18;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10007DDB0();
        }
      }

      v19 = *(a1 + 248);
      if (v19)
      {
        fwrite(ioData.mBuffers[0].mData, 1uLL, ioData.mBuffers[0].mDataByteSize, v19);
        fflush(*(a1 + 248));
      }

      v15 = *v13 + ioData.mBuffers[0].mDataByteSize;
    }

    else
    {
      v14 = off_10041DC78;
      if (off_10041DC78 == &_os_log_default)
      {
        v14 = os_log_create("com.apple.isp", "general");
        off_10041DC78 = v14;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10007DE2C();
      }

      v15 = 0;
      v16 = 0;
    }

    *(a1 + 104) = v15;
    if (v15 != *(a1 + 76))
    {
      goto LABEL_97;
    }

    __ptr = 0;
    *(a1 + 536) = 0;
    v20 = *(a1 + 544);
    if (v20)
    {
      sub_1000058DC(v20, &__ptr, (a1 + 536));
    }

    v21 = *(a1 + 280);
    if (v21)
    {
      fwrite(&__ptr, 1uLL, 1uLL, v21);
      fflush(*(a1 + 280));
    }

    if (*(a1 + 536) && (*(a1 + 8) & 1) == 0)
    {
      *(a1 + 104) = 0;
      *(*(a1 + 416) + 828) = 0;
      pthread_mutex_lock((a1 + 424));
      v42 = mach_absolute_time();
      v43 = *(a1 + 296);
      *(v43 + 96) = v42;
      LOBYTE(v44) = __ptr;
      *(v43 + 88) = v44;
      *(v43 + 84) = 0;
      *(v43 + 112) = 1;
      pthread_cond_broadcast((a1 + 488));
      pthread_mutex_unlock((a1 + 424));
      return 0;
    }

    memcpy(*(a1 + 96), (*(a1 + 96) + *(a1 + 76)), *(a1 + 76));
    memcpy((*(a1 + 96) + *(a1 + 76)), *(a1 + 80), *(a1 + 76));
    v22 = *(a1 + 256);
    if (v22)
    {
      fwrite(*(a1 + 96), 1uLL, *(a1 + 92), v22);
      fflush(*(a1 + 256));
    }

    v23 = malloc_type_calloc(1uLL, 0x110uLL, 0x1000040368141FCuLL);
    if (!v23)
    {
LABEL_96:
      *v13 = 0;
LABEL_97:
      v87 = *(a1 + 288);
      if (v87)
      {
        sub_100034CB4(v87);
      }

      return v16;
    }

    v25 = v23;
    LOBYTE(v24) = __ptr;
    v23[22] = v24;
    v99 = 2143289344;
    v98 = 0x7FC000007FC00000;
    v97 = 0;
    v96 = 0;
    v26 = *(*a1 + 8);
    v28 = *v26;
    v27 = v26[1];
    v29 = *(a1 + 116) >> 2;
    v30 = *(a1 + 132) >> 2;
    __F = 1065353216;
    info[0] = 0x3F80000000000000;
    vDSP_desamp(*(a1 + 96), 2, &__F, *(a1 + 136), v30, 2uLL);
    vDSP_desamp(*(a1 + 96), 2, info, *(a1 + 120), v29, 2uLL);
    v31 = *(a1 + 76) >> 3;
    v32 = sub_1000058F4(*(a1 + 120), v29);
    v33 = sub_1000058F4(*(a1 + 136), v30);
    v34 = v29 - v31;
    v35 = sub_1000058F4((*(a1 + 120) + 4 * v31), v34);
    v36 = v30 - v31;
    v37 = sub_1000058F4((*(a1 + 136) + 4 * v31), v36);
    if (*(a1 + 8) == 1)
    {
      v38 = off_10041DC78;
      if (off_10041DC78 == &_os_log_default)
      {
        v38 = os_log_create("com.apple.isp", "general");
        off_10041DC78 = v38;
      }

      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = *(a1 + 76);
        *buf = 67109376;
        *&buf[4] = v31;
        *&buf[8] = 1024;
        *&buf[10] = v39;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "skip buffer size in (float)%d, acc size %d\n\n", buf, 0xEu);
      }

      v32 = sub_1000058F4((*(a1 + 120) + 4 * v31), v34);
      v33 = sub_1000058F4((*(a1 + 136) + 4 * v31), v36);
      *(a1 + 8) = 0;
      *(a1 + 540) = 0;
    }

    else
    {
      *(a1 + 540) ^= 1u;
    }

    v40 = *(a1 + 416);
    *(v40 + 708) = 0x3EE666663E99999ALL;
    if (__ptr <= 2u)
    {
      if (!__ptr)
      {
        v41 = *(v40 + 744);
        goto LABEL_54;
      }

      if (__ptr == 1)
      {
        v41 = *(v40 + 752);
        goto LABEL_54;
      }
    }

    else
    {
      switch(__ptr)
      {
        case 3u:
          v41 = *(v40 + 760);
          goto LABEL_54;
        case 7u:
          v41 = *(v40 + 768);
          goto LABEL_54;
        case 0xFu:
          v41 = *(v40 + 776);
LABEL_54:
          v45 = vmul_f32(v41, 0x3400000034000000);
          *(v40 + 24) = vrev64_s32(v45);
          goto LABEL_55;
      }
    }

    v45 = vrev64_s32(*(v40 + 24));
LABEL_55:
    v46 = v33 - *v45.i32;
    v47 = 0.0;
    if ((v33 - *v45.i32) > 0.01)
    {
      *v45.i32 = v32 - *&v45.i32[1];
      if ((v32 - *&v45.i32[1]) > 0.01 && *v45.i32 > v46)
      {
        v47 = (v46 / *v45.i32);
      }
    }

    v48 = *(a1 + 272);
    if (v48)
    {
      fwrite(*(a1 + 136), 1uLL, *(a1 + 132), v48);
      fflush(*(a1 + 272));
    }

    v49 = *(a1 + 264);
    if (v49)
    {
      fwrite(*(a1 + 120), 1uLL, *(a1 + 116), v49);
      fflush(*(a1 + 264));
    }

    v92 = 0.0;
    v91 = 0;
    v90 = 0.0;
    memcpy(*(a1 + 152), *(a1 + 120), *(a1 + 148));
    memcpy(*(a1 + 168), *(a1 + 136), *(a1 + 148));
    sub_100005928((*(a1 + 416) + 716), __ptr, &v92, &v91 + 1, &v91, &v90, v50);
    v51 = sub_100005A3C((*(a1 + 416) + 716), 1, v35, v37, v92, *(&v91 + 1), *&v91, v90);
    if (v51 < 0.0)
    {
      v51 = 0.0;
    }

    v25[21] = v51;
    v52 = sub_100005AB0(*(a1 + 416), (a1 + 240), *(a1 + 152), *(a1 + 168), &__F, *(a1 + 408));
    v53 = *(a1 + 416);
    if (*(v53 + 1))
    {
      if (*(a1 + 408) != 8.0)
      {
        *(v53 + 828) = 0;
      }

      if (*(a1 + 540) == 1)
      {
        sub_100041078(*(a1 + 152), *(a1 + 168), *(a1 + 148) >> 2, 0xFA0u, *(v53 + 816), *(v53 + 824), buf);
      }
    }

    else
    {
      *(v53 + 828) = 0;
    }

    mach_timebase_info(info);
    if (info[0].denom)
    {
      v54 = info[0].numer / info[0].denom;
    }

    else
    {
      v54 = 1;
    }

    *&v104[1] = v54 * inTimeStamp->mHostTime;
    *(v25 + 51) = v102;
    v55 = v104[0];
    *(v25 + 55) = v103;
    *(v25 + 59) = v55;
    v56 = v101;
    *(v25 + 43) = *buf;
    *(v25 + 47) = v56;
    *(v25 + 250) = *(v104 + 14);
    v57 = HIDWORD(__F);
    v58 = 1;
    if ((*(&__F + 1) * 0.5) >= 59.0 && (*(&__F + 1) * 0.5) <= 61.0)
    {
      v58 = v106 < 0.95;
    }

    v60 = v110 >= 0.66 && v107 <= 13.66;
    *(v25 + 67) = v60 && v58;
    v98 = 1119092736;
    v99 = 0;
    v61 = 0.0;
    if (!v52)
    {
      LODWORD(v98) = v57;
      v99 = v108;
      v61 = v106 * 65535.0;
    }

    v89 = v61;
    v62 = *(a1 + 180) >> 2;
    *&info[0].numer = xmmword_10008D1F0;
    vDSP_desamp(*(a1 + 120), (v28 / v27), info, *(a1 + 184), v62, (v28 / v27));
    v63 = v27;
    sub_10000B05C(*(a1 + 184), v62, &v98, &v96, 3u, v63);
    v64 = v109;
    *v25 = v109;
    v65 = *(*(a1 + 224) + 4 * ((*(*(a1 + 224) + 8) + **(a1 + 224) - 1) % **(a1 + 224)) + 140);
    *&v96 = v65;
    v66 = v64;
    if (v64 != 3)
    {
      if (v64 == 1)
      {
        if (v65 > 0.4)
        {
          v66 = 1;
        }

        else
        {
          v66 = 2;
        }
      }

      else
      {
        v66 = 2;
      }
    }

    v67 = 0;
    v68 = *(&__F + 1) * 0.5;
    *(v25 + 6) = vcvtq_f64_f32(vminnm_f32(__PAIR64__(v99, LODWORD(v89)), vdup_n_s32(0x477FFF00u)));
    *(v25 + 1) = v68;
    *(v25 + 2) = v47;
    v69 = v107;
    v70 = v110;
    v25[20] = v107;
    v25[23] = v70;
    *(v25 + 5) = fminf(v65, 65535.0);
    v71 = fminf(*(&v96 + 1), 65535.0);
    *(v25 + 1) = v66;
    *(v25 + 13) = 0x200000001;
    *(v25 + 6) = v71;
    *(v25 + 7) = v32;
    *(v25 + 8) = v33;
    *(v25 + 9) = v47;
    v72 = *(a1 + 296);
    v73 = 1;
    do
    {
      v74 = v73;
      *(v72 + 8 + 8 * v67) = *&v25[2 * v67 + 2];
      *(v72 + 24 + 8 * v67) = *&v25[2 * v67 + 6];
      *(v72 + 40 + 8 * v67) = *&v25[2 * v67 + 10];
      v67 = 1;
      v73 = 0;
    }

    while ((v74 & 1) != 0);
    *(v72 + 56) = *(v25 + 7);
    *(v72 + 64) = *(v25 + 8);
    *v72 = v64;
    *(v72 + 4) = v66;
    *(v72 + 72) = *(v25 + 9);
    *(v72 + 80) = v69;
    *(v72 + 92) = v70;
    *(v72 + 104) = 1;
    pthread_mutex_lock((a1 + 424));
    *(*(a1 + 296) + 84) = v25[21];
    v75 = mach_absolute_time();
    v76 = *(a1 + 296);
    *(v76 + 96) = v75;
    *(v76 + 88) = v25[22];
    *(v76 + 112) = *(a1 + 536);
    pthread_cond_broadcast((a1 + 488));
    pthread_mutex_unlock((a1 + 424));
    v77 = *(a1 + 296);
    v78 = *(v25 + 41);
    v79 = *(v25 + 37);
    v80 = *(v25 + 33);
    *(v77 + 116) = *(v25 + 29);
    *(v77 + 132) = v80;
    *(v77 + 148) = v79;
    *(v77 + 164) = v78;
    v81 = *(a1 + 296);
    v82 = *(v25 + 59);
    v83 = *(v25 + 55);
    v84 = *(v25 + 51);
    *(v81 + 250) = *(v25 + 250);
    *(v81 + 204) = v84;
    *(v81 + 220) = v83;
    *(v81 + 236) = v82;
    v85 = *(v25 + 47);
    *(v81 + 172) = *(v25 + 43);
    *(v81 + 188) = v85;
    v86 = *(a1 + 312);
    if (v86)
    {
      v86(a1, *(a1 + 320), v25);
    }

    else
    {
      free(v25);
    }

    goto LABEL_96;
  }

  v17 = off_10041DC78;
  if (off_10041DC78 == &_os_log_default)
  {
    v17 = os_log_create("com.apple.isp", "general");
    off_10041DC78 = v17;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_10007DEA8();
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100009258(uint64_t a1, float a2)
{
  v2 = 3758097097;
  inData = a2;
  if (!a1)
  {
    return 3758097090;
  }

  *(a1 + 304) = a2;
  pthread_mutex_lock((a1 + 336));
  v4 = *(a1 + 16);
  if (v4 && AudioUnitSetProperty(v4, 0x7E6u, 1u, 1u, &inData, 4u))
  {
    v5 = off_10041DC78;
    if (off_10041DC78 == &_os_log_default)
    {
      v5 = os_log_create("com.apple.isp", "general");
      off_10041DC78 = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10007D7D0();
    }
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock((a1 + 336));
  return v2;
}

uint64_t sub_100009340(uint64_t a1)
{
  v2 = *(*a1 + 8);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = malloc_type_calloc(1uLL, 0x110uLL, 0x1000040368141FCuLL);
  v7 = (log2((v5 * (2 * (*(a1 + 24) * 0.125)) / v3) + -0.5) + 1.0);
  *(a1 + 232) = v7;
  *(a1 + 296) = v6;
  v8 = *(a1 + 56);
  v9 = *(a1 + 48);
  v10 = (1 << v7);
  v11 = (v3 * v10 / v5 * 0.5);
  v12 = malloc_type_calloc(v11, v9, 0x28673D1BuLL);
  *(a1 + 80) = v12;
  if (v12)
  {
    *(a1 + 76) = v9 * v11;
    v13 = 2 * v11;
    v14 = malloc_type_calloc(2 * v11, v9, 0x45AAAF08uLL);
    *(a1 + 96) = v14;
    if (v14)
    {
      v15 = v8 >> 3;
      *(a1 + 92) = v13 * v9;
      v16 = malloc_type_calloc(v10, v15, 0x5EBBDA42uLL);
      *(a1 + 152) = v16;
      if (v16)
      {
        v17 = malloc_type_calloc(v10, v15, 0x8D896DA0uLL);
        *(a1 + 168) = v17;
        if (v17)
        {
          *(a1 + 148) = v15 << v7;
          *(a1 + 164) = v15 << v7;
          v18 = malloc_type_calloc((v4 * v11 / v3), v15, 0xDCB814D4uLL);
          *(a1 + 184) = v18;
          if (v18)
          {
            *(a1 + 180) = v15 * (v4 * v11 / v3);
            if (**a1 != 1)
            {
              v19 = malloc_type_calloc(2 * v11, v15, 0xCC483281uLL);
              *(a1 + 120) = v19;
              if (!v19)
              {
                v39 = off_10041DC78;
                if (off_10041DC78 == &_os_log_default)
                {
                  v39 = os_log_create("com.apple.isp", "general");
                  off_10041DC78 = v39;
                }

                v33 = 3758097085;
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  sub_10007E288();
                }

                return v33;
              }

              *(a1 + 116) = v13 * v15;
              v20 = malloc_type_calloc(2 * v11, v15, 0x7A41E2FAuLL);
              *(a1 + 136) = v20;
              if (!v20)
              {
                v42 = off_10041DC78;
                if (off_10041DC78 == &_os_log_default)
                {
                  v42 = os_log_create("com.apple.isp", "general");
                  off_10041DC78 = v42;
                }

                v33 = 3758097085;
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  sub_10007E218();
                }

                return v33;
              }

              *(a1 + 132) = v13 * v15;
            }

            v21 = malloc_type_calloc((v10 + 2), v15, 0x96C1FFDAuLL);
            *(a1 + 200) = v21;
            if (v21)
            {
              *(a1 + 196) = (v10 + 2) * v15;
              v22 = malloc_type_calloc(1uLL, 0x14CuLL, 0x10000403F9E400DuLL);
              *(a1 + 224) = v22;
              if (v22)
              {
                v22[2] = 0;
                *v22 = 5;
                v23 = *(a1 + 232);
                if (v23 >= 4 && (fftsetup = vDSP_create_fftsetup(v23, 0), (*(a1 + 240) = fftsetup) != 0))
                {
                  if (**a1 == 1)
                  {
                    return 0;
                  }

                  v25 = malloc_type_calloc(1uLL, 0x340uLL, 0x1090040C959C1BCuLL);
                  *(a1 + 416) = v25;
                  if (v25)
                  {
                    v26 = ((112 << v7) + 4096);
                    *(a1 + 212) = v26;
                    v27 = (a1 + 212);
                    v28 = malloc_type_calloc(1uLL, v26, 0x5AF6BBF8uLL);
                    *(a1 + 216) = v28;
                    if (v28)
                    {
                      v29 = **a1;
                      if (v29 > 5)
                      {
                        if ((v29 - 9) < 2 || v29 == 6)
                        {
                          sub_10000A238(a1 + 552, a1 + 684, *(a1 + 416) + 716);
                          v31 = 0.0;
                          if (**a1 == 10)
                          {
                            v45 = *(a1 + 416);
                            v46.i32[0] = *(v45 + 744);
                            if (v46.f32[0] < -7130316.8)
                            {
                              v46.i32[1] = *(v45 + 748);
                              v46.i64[1] = *(v45 + 752);
                              v47 = vdupq_n_s32(0x3F333333u);
                              *(v45 + 744) = vmulq_f32(v46, v47);
                              *(v45 + 760) = vmulq_f32(*(v45 + 760), v47);
                              *(v45 + 776) = vmul_f32(*(v45 + 776), *v47.f32);
                              *(v45 + 716) = vdiv_f32(*(v45 + 716), *v47.f32);
                            }
                          }

                          goto LABEL_81;
                        }

                        if (v29 == 7)
                        {
                          v31 = -0.6268;
                          v30 = -0.6268;
                          goto LABEL_82;
                        }
                      }

                      else
                      {
                        switch(v29)
                        {
                          case 3:
                            v30 = -0.389;
                            v31 = -0.3895;
                            goto LABEL_82;
                          case 4:
                            v30 = -19.021;
                            v31 = -18.175;
                            goto LABEL_82;
                          case 5:
                            v30 = -24.91;
                            v31 = -25.06;
LABEL_82:
                            sub_100009BFC(*(a1 + 416), v3, (v3 / v5), v10, v10 >> 1, *(a1 + 216), v31, v30);
                            return 0;
                        }
                      }

                      v31 = 0.0;
LABEL_81:
                      v30 = 0.0;
                      goto LABEL_82;
                    }

                    v44 = off_10041DC78;
                    if (off_10041DC78 == &_os_log_default)
                    {
                      v44 = os_log_create("com.apple.isp", "general");
                      off_10041DC78 = v44;
                    }

                    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                    {
                      sub_10007E2F8();
                    }

                    v33 = 3758097085;
                    *v27 = 0;
                  }

                  else
                  {
                    v43 = off_10041DC78;
                    if (off_10041DC78 == &_os_log_default)
                    {
                      v43 = os_log_create("com.apple.isp", "general");
                      off_10041DC78 = v43;
                    }

                    v33 = 3758097085;
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                    {
                      sub_10007E37C();
                    }
                  }
                }

                else
                {
                  v40 = off_10041DC78;
                  if (off_10041DC78 == &_os_log_default)
                  {
                    v40 = os_log_create("com.apple.isp", "general");
                    off_10041DC78 = v40;
                  }

                  v33 = 3758097086;
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                  {
                    sub_10007E3F8();
                  }
                }
              }

              else
              {
                v41 = off_10041DC78;
                if (off_10041DC78 == &_os_log_default)
                {
                  v41 = os_log_create("com.apple.isp", "general");
                  off_10041DC78 = v41;
                }

                v33 = 3758097085;
                if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                {
                  sub_10007E470();
                }
              }
            }

            else
            {
              v38 = off_10041DC78;
              if (off_10041DC78 == &_os_log_default)
              {
                v38 = os_log_create("com.apple.isp", "general");
                off_10041DC78 = v38;
              }

              v33 = 3758097085;
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                sub_10007E4E0();
              }
            }
          }

          else
          {
            v37 = off_10041DC78;
            if (off_10041DC78 == &_os_log_default)
            {
              v37 = os_log_create("com.apple.isp", "general");
              off_10041DC78 = v37;
            }

            v33 = 3758097085;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              sub_10007E560();
            }
          }
        }

        else
        {
          v36 = off_10041DC78;
          if (off_10041DC78 == &_os_log_default)
          {
            v36 = os_log_create("com.apple.isp", "general");
            off_10041DC78 = v36;
          }

          v33 = 3758097085;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            sub_10007E5D0();
          }
        }
      }

      else
      {
        v35 = off_10041DC78;
        if (off_10041DC78 == &_os_log_default)
        {
          v35 = os_log_create("com.apple.isp", "general");
          off_10041DC78 = v35;
        }

        v33 = 3758097085;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_10007E640();
        }
      }
    }

    else
    {
      v34 = off_10041DC78;
      if (off_10041DC78 == &_os_log_default)
      {
        v34 = os_log_create("com.apple.isp", "general");
        off_10041DC78 = v34;
      }

      v33 = 3758097085;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_10007E6B0();
      }
    }
  }

  else
  {
    v32 = off_10041DC78;
    if (off_10041DC78 == &_os_log_default)
    {
      v32 = os_log_create("com.apple.isp", "general");
      off_10041DC78 = v32;
    }

    v33 = 3758097085;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_10007E720();
    }
  }

  return v33;
}

void sub_100009BFC(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, float a7, float a8)
{
  v8 = a6;
  *(a1 + 4) = a2;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  *(a1 + 20) = a5;
  *(a1 + 24) = a7;
  *(a1 + 28) = a8;
  *(a1 + 32) = 0x100000008;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x3F7333333F666666;
  v10.i32[1] = 90;
  *(a1 + 52) = 0x5A00000001;
  *(a1 + 336) = 64;
  *v10.i32 = (a2 / a3 / 2);
  *(a1 + 60) = a2 / a3;
  v11 = vcvt_s32_f32(vmul_n_f32(vdiv_f32(0x4580200042B40000, vdup_lane_s32(v10, 0)), (a4 / 2)));
  *(a1 + 64) = v11;
  *(a1 + 72) = a6;
  v12 = (a6 + 4 * a4);
  if (a4 >= 1)
  {
    v13 = 0;
    *v11.i32 = (a4 - 1);
    v14 = (a4 + 3) & 0xFFFFFFFC;
    v15 = vdupq_n_s64(a4 - 1);
    v91 = vdupq_lane_s32(v11, 0);
    v16 = xmmword_10008D130;
    v17 = xmmword_10008B050;
    v89 = vdupq_n_s64(4uLL);
    v90 = vdupq_n_s32(0x40C90FDAu);
    v18 = (a6 + 8);
    __asm
    {
      FMOV            V5.2D, #-0.5
      FMOV            V6.2D, #0.5
    }

    v92 = v15;
    v87 = _Q6;
    v88 = _Q5;
    do
    {
      v97 = v17;
      v98 = v16;
      v25 = vorr_s8(vdup_n_s32(v13), 0x300000002);
      v26 = vmovn_s64(vcgeq_u64(v15, v17));
      v95 = vuzp1_s16(v26, v25).u8[0];
      v27.i32[0] = v13;
      v27.i32[1] = v13 + 1;
      v27.u64[1] = v25;
      v99 = vmulq_f32(vdivq_f32(vcvtq_f32_u32(v27), v91), v90);
      v96 = cosf(v99.f32[2]);
      v94 = cosf(v99.f32[3]);
      v93 = cosf(v99.f32[0]);
      v28 = vmlaq_f64(v87, v88, vcvtq_f64_f32(__PAIR64__(COERCE_UNSIGNED_INT(cosf(v99.f32[1])), LODWORD(v93))));
      if (v95)
      {
        v29 = v28.f64[0];
        *(v18 - 2) = v29;
      }

      if (vuzp1_s16(v26, *&v28).i8[2])
      {
        v30 = v28.f64[1];
        *(v18 - 1) = v30;
      }

      v31 = vmlaq_f64(v87, v88, vcvtq_f64_f32(__PAIR64__(LODWORD(v94), LODWORD(v96))));
      v15 = v92;
      if (vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v92, *&v98))).i32[1])
      {
        v32 = v31.f64[0];
        *v18 = v32;
        v33 = v31.f64[1];
        v18[1] = v33;
      }

      v13 += 4;
      v16 = vaddq_s64(v98, v89);
      v17 = vaddq_s64(v97, v89);
      v18 += 4;
    }

    while (v14 != v13);
  }

  for (i = 0; i != 64; i += 8)
  {
    v35 = v12;
    *(a1 + 80 + i) = v12;
    v36 = 4 * (*(a1 + 12) / 2) + 4;
    v12 += v36;
    bzero(v35, v36);
  }

  *(a1 + 216) = v12;
  v37 = 4 * (*(a1 + 12) / 2) + 4;
  v38 = &v12[v37];
  bzero(v12, v37);
  for (j = 0; j != 64; j += 8)
  {
    v40 = v38;
    *(a1 + 144 + j) = v38;
    v41 = *(a1 + 12) / 2;
    v42 = 4 * v41 + 4;
    v38 += v42;
    bzero(v40, v42);
  }

  *(a1 + 224) = v38;
  v43 = *(a1 + 12) / 2;
  v44 = 4 * v43 + 4;
  v45 = &v38[v44];
  bzero(v38, v44);
  v46 = 0;
  *(a1 + 208) = 0;
  v47 = *(a1 + 12);
  v48 = v47;
  v49 = &v45[4 * v47];
  *(a1 + 232) = v45;
  *(a1 + 240) = v49;
  v50 = &v49[4 * v47];
  v51 = v47 + 2;
  v52 = v47 / 2;
  *(a1 + 264) = v50;
  *(a1 + 272) = &v50[4 * (v47 / 2)];
  v53 = &v50[4 * v47 + 8];
  *(a1 + 248) = v50;
  *(a1 + 256) = v53;
  v54 = &v53[4 * v47 + 8];
  if (v47 >= 2)
  {
    v46 = 0;
    for (k = v47; k > 1; k >>= 1)
    {
      ++v46;
    }
  }

  *(a1 + 16) = v46;
  v56 = (v52 + 1);
  v57 = &v54[4 * v56];
  *(a1 + 280) = v54;
  *(a1 + 288) = v57;
  v58 = &v57[4 * v47];
  *(a1 + 336) = 64;
  *(a1 + 344) = v58 + 256;
  *(a1 + 352) = v58;
  v59 = v58 + 512;
  v60 = &v58[4 * v56 + 512];
  *(a1 + 296) = v59;
  *(a1 + 304) = v60;
  v61 = &v60[4 * v56];
  v62 = &v61[v56];
  *(a1 + 312) = v61;
  *(a1 + 320) = v62;
  v63 = &v62[v56];
  *(a1 + 816) = v63;
  *(a1 + 824) = v63 - v8;
  *(a1 + 828) = 0;
  if (v47 > -2)
  {
    v66 = 0;
    v67 = vdupq_n_s64(v56 - 1);
    v68 = v47;
    v69 = *(a1 + 60);
    v70 = (v56 + 3) & 0x1FFFFFFFCLL;
    v71 = &v40[12 * v47 + 536 + 8 * v51 + 4 * v43 + 4 * v52 + 4 * v41];
    v72 = xmmword_10008D130;
    v73 = xmmword_10008B050;
    v74 = vdupq_n_s64(4uLL);
    do
    {
      v75 = vmovn_s64(vcgeq_u64(v67, v73));
      if (vuzp1_s16(v75, *v67.i8).u8[0])
      {
        *(v71 - 3) = (v66 / v68) * v69;
      }

      if (vuzp1_s16(v75, *&v67).i8[2])
      {
        *(v71 - 2) = ((v66 + 1) / v68) * v69;
      }

      if (vuzp1_s16(*&v67, vmovn_s64(vcgeq_u64(v67, *&v72))).i32[1])
      {
        *(v71 - 1) = ((v66 + 2) / v68) * v69;
        *v71 = ((v66 + 3) / v68) * v69;
      }

      v66 += 4;
      v72 = vaddq_s64(v72, v74);
      v73 = vaddq_s64(v73, v74);
      v71 += 4;
    }

    while (v70 != v66);
    *(a1 + 328) = 0;
    v65 = v52 - 1;
    *(a1 + 332) = v52 - 1;
    *v60 = 925353388;
    if (v47 < 4)
    {
      v64 = 0;
    }

    else
    {
      v64 = 0;
      v76 = *(a1 + 60);
      if (v52 <= 2)
      {
        v77 = 2;
      }

      else
      {
        v77 = v52;
      }

      v78 = &v40[12 * v48 + 528 + 8 * v51 + 8 * v52 + 4 * v43 + 4 * v41];
      v79 = 1;
      while (1)
      {
        v80 = v79 / v76;
        v78[1] = v80;
        if (v80 >= 0.0002 && *v78 < 0.0002)
        {
          *(a1 + 328) = v79;
          v64 = v79;
        }

        if (v80 >= 0.011111 && *v78 < 0.011111)
        {
          break;
        }

        ++v79;
        ++v78;
        if (v77 == v79)
        {
          goto LABEL_41;
        }
      }

      *(a1 + 332) = v79;
      v65 = v79;
    }
  }

  else
  {
    v64 = 0;
    *(a1 + 328) = 0;
    v65 = v52 - 1;
    *(a1 + 332) = v52 - 1;
    *v60 = 925353388;
  }

LABEL_41:
  if (v64 <= v65)
  {
    v81 = (v65 - v64 + 1);
    v82 = &v40[12 * v48 + 8 * v51 + 8 * v52 + 4 * v64];
    v83 = v43 + v41;
    v84 = &v82[4 * v83 + 528];
    v85 = &v40[12 * v48 + 532 + 12 * v52 + 8 * v51 + 4 * v83];
    do
    {
      v86 = *v84;
      v84 += 4;
      *v85 = v86;
      v85 += 4;
      --v81;
    }

    while (v81);
  }
}

float32x4_t sub_10000A238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a1)
  {
    if (a3)
    {
      v3 = vdupq_n_s32(0x2F800000u);
      *a3 = vmulq_f32(vcvtq_f32_u32(*(a1 + 16)), v3);
      *(a3 + 24) = *(a1 + 40) * 2.3283e-10;
      *(a3 + 16) = vmul_f32(vcvt_f32_u32(*(a1 + 32)), *v3.f32);
      v4.i64[0] = *(a2 + 12);
      *v3.f32 = vadd_s32(*(a1 + 76), *v4.i8);
      v4.i64[1] = v4.i64[0];
      *(a3 + 28) = vcvtq_f32_s32(vaddq_s32(*(a1 + 44), v4));
      *(a3 + 44) = vcvtq_f32_s32(vaddq_s32(*(a1 + 60), v4));
      *(a3 + 60) = vcvt_f32_s32(*v3.f32);
      v3.i64[0] = 0x3A0000003A000000;
      v3.i64[1] = 0x3A0000003A000000;
      *(a3 + 68) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*(a1 + 86))), v3);
      result = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*(a1 + 94))), v3);
      *(a3 + 84) = result;
    }
  }

  return result;
}

uint64_t sub_10000A2E8(uint64_t result)
{
  v1 = *(result + 56);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_10000A310(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  if (string)
  {
    v4 = string;
    v5 = *(a1 + 16);
    if (v5 == a1 + 8)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        v8 = v5 + 8;
        v5 = *(v5 + 8);
        v7 = *(v8 + 8);
        if (!*(v7 + 8))
        {
          v6 = v7;
        }
      }

      while (v5 != a1 + 8);
    }

    v9 = strlen(*(a1 + 968));
    if (!strncmp(v4, *(a1 + 968), v9))
    {
      if (!v6)
      {
        operator new();
      }
    }

    else
    {
      v10 = strlen(*(a1 + 976));
      if (!strncmp(v4, *(a1 + 976), v10))
      {
        if (v6)
        {
          v12 = *(*a1 + 48);

          v12(a1, v6);
        }
      }

      else
      {
        v11 = off_10041DCE8;
        if (off_10041DCE8 == &_os_log_default)
        {
          v11 = os_log_create("com.apple.isp", "daemon");
          off_10041DCE8 = v11;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100084BCC();
        }
      }
    }
  }
}

const void *sub_10000A4DC(uint64_t a1, int a2)
{
  qword_10041DF88 = a1;
  NSLog(@"Jasper calibration\n");
  umask(0);
  if ((sub_10000B5C8("/var/mobile/Library/ISP/JasperL") & 1) == 0)
  {
    NSLog(@"\tCouldn't validate directories\n");
    return 0;
  }

  NSLog(@"\tLooking for local cache\n");
  if ([NSData dataWithContentsOfFile:@"/var/mobile/Library/ISP/JasperL/JasperLCalib.bin"])
  {
    v4 = PDPeridotCalibCreateWithBinaryRepresentation();
    if (v4)
    {
      v5 = v4;
      if (sub_10000AC28(&dword_10041DE08, a1, v4))
      {
        sub_10001CD88();
      }

      if (!a2)
      {
        goto LABEL_21;
      }

      NSLog(@"\tValidating Calibration UUID (FDR vs cache)");
      sub_100021064(&v33);
      v6 = sub_10001FE08(&v33, 18);
      if (!v6)
      {
        if (byte_10041DE00 != 1 || (sub_10001C100(&v31), v6 = sub_10001FE08(&v31, 18), v31 = off_1000A2218, sub_100020734(v32), !v6))
        {
          NSLog(@"\tValidting SN (registry vs cache)");
          v14 = PDPeridotCalibCopySerialNumber();
          v15 = v14;
          if (v14)
          {
            v16 = [v14 UTF8String];
            v17 = strlen(v35);
            if (v17 == strlen(v16))
            {
              v9 = strncmp(v35, v16, v17);
              NSLog(@"\tCached Serial Number: %s, calibration: %s", v16, v35);
              CFRelease(v15);
              goto LABEL_20;
            }

            NSLog(@"\tSerial nubmers size mismatch");
            CFRelease(v15);
          }

          else
          {
            NSLog(@"\tCan't read serial number from cache");
          }

          v33 = off_1000A20A8;
          sub_10001E9B8(v34);
LABEL_30:
          sub_10001D550("/var/mobile/Library/ISP/JasperL");
          NSLog(@"\tCalibration UUID mismatch, removing contents of directory\n");
          CFRelease(v5);
          goto LABEL_31;
        }
      }

      v31 = 0;
      v32[0] = 0;
      v29 = 0;
      v30 = 0;
      PDPeridotCalibGetMpcUUID();
      PDPeridotCalibGetMpcUUIDFromCalibrationBlob();
      v7 = bswap64(v31);
      v8 = bswap64(0);
      if (v7 == v8 && (v7 = bswap64(v32[0]), v8 = bswap64(v30), v7 == v8))
      {
        v9 = 0;
      }

      else if (v7 < v8)
      {
        v9 = -1;
      }

      else
      {
        v9 = 1;
      }

      v10 = 0;
      v11 = @"Cached UUID: 0x";
      do
      {
        v11 = [(__CFString *)v11 stringByAppendingFormat:@"%02X", *(&v32[-1] + v10++)];
      }

      while (v10 != 16);
      v12 = [(__CFString *)v11 stringByAppendingString:@", calibration: 0x"];
      for (i = 0; i != 16; ++i)
      {
        v12 = [v12 stringByAppendingFormat:@"%02X", *(&v29 + i)];
      }

      NSLog(@"\t%@", v12);
      CFRelease(v6);
LABEL_20:
      v33 = off_1000A20A8;
      sub_10001E9B8(v34);
      if (!v9)
      {
LABEL_21:
        NSLog(@"\tFound\n");
        return v5;
      }

      goto LABEL_30;
    }
  }

LABEL_31:
  NSLog(@"\tLooking for local override files\n");
  sub_100021064(&v33);
  v5 = sub_10001D934(&v33, 0);
  if (v5)
  {
    goto LABEL_44;
  }

  if (byte_10041DE00 == 1)
  {
    NSLog(@"\tLooking for FDR data\n");
    v18 = IOServiceNameMatching("isp");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v18);
    v20 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"pearl-calibration-data", kCFAllocatorDefault, 3u);
    v21 = v20;
    if (v20)
    {
      Length = CFDataGetLength(v20);
      BytePtr = CFDataGetBytePtr(v21);
      v24 = fopen("/var/mobile/Library/ISP/JasperL/JasperRecalibration.bin", "rb");
      v25 = v24;
      if (v24)
      {
        fseeko(v24, 0, 2);
        v26 = ftello(v25);
        fseeko(v25, 0, 0);
        if (v26 == Length)
        {
          operator new[]();
        }

        fclose(v25);
      }

      [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:@"/var/mobile/Library/ISP/JasperL/JasperLCalib.bin", 0];
      v27 = fopen("/var/mobile/Library/ISP/JasperL/JasperRecalibration.bin", "wb");
      if (v27)
      {
        fwrite(BytePtr, Length, 1uLL, v27);
        fclose(v27);
      }
    }

    NSLog(@"\tReading from FDR\n");
    sub_10001C100(&v31);
    v5 = sub_10001DAC4(&v31, v21);
    if (v21)
    {
      CFRelease(v21);
    }

    v31 = off_1000A2218;
    sub_100020734(v32);
    if (v5)
    {
      goto LABEL_44;
    }
  }

  NSLog(@"\tLooking for calibration in NVM\n");
  sub_10002218C(&v31);
  v5 = sub_10001DC98(&v31, 0);
  v31 = off_1000A21E8;
  sub_10001E3A8(v32);
  if (v5)
  {
LABEL_44:
    sub_10000AC28(&dword_10041DE08, a1, v5);
    NSLog(@"Creating local cache\n");
    kdebug_trace();
    sub_10001CD88();
  }

  else
  {
    NSLog(@"\tDidn't find calibration\n");
    v5 = 0;
  }

  v33 = off_1000A20A8;
  sub_10001E9B8(v34);
  return v5;
}

uint64_t sub_10000AC28(int *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *a1;
    if ((*a1 - 1) >= 2 && v4 != 4)
    {
      if (v4 == 3)
      {
        NSLog(@"Component Validation: At least one component replaced. Resetting stray");
        PDPeridotCalibResetStray();
        *a1 = 4;
        return 1;
      }

      v11[0] = 0;
      v11[1] = v11;
      v11[2] = 0x3052000000;
      v11[3] = sub_100005490;
      v7 = &__NSArray0__struct;
      v11[4] = sub_10000C1E8;
      v12 = &__NSArray0__struct;
      v8 = **(a2 + 4304) - 66;
      if (v8 > 0x20)
      {
        goto LABEL_16;
      }

      if (((1 << v8) & 3) != 0)
      {
        v7 = &off_1000B0080;
      }

      else if (((1 << v8) & 0x18) != 0)
      {
        v7 = &off_1000B0098;
      }

      else
      {
        if (((1 << v8) & 0x180000000) == 0)
        {
LABEL_16:
          if ([v7 count])
          {
            v9 = *(a1 + 1);
            if (!v9)
            {
              v9 = dispatch_queue_create("com.apple.component-replacement.test", 0);
              *(a1 + 1) = v9;
            }

            *a1 = 2;
            v10[0] = _NSConcreteStackBlock;
            v10[1] = 3221225472;
            v10[2] = sub_10001FC88;
            v10[3] = &unk_1000A21B8;
            v10[4] = v11;
            v10[5] = a1;
            dispatch_async(v9, v10);
          }

          else
          {
            *a1 = 4;
          }

          _Block_object_dispose(v11, 8);
          return 0;
        }

        v7 = &off_1000B00B0;
      }

      v12 = v7;
      goto LABEL_16;
    }
  }

  return 0;
}

void sub_10000ADE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

xpc_object_t sub_10000ADF8(const __CFString *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFDictionaryGetTypeID())
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    CFDictionaryApplyFunction(a1, sub_10002F008, v3);
    return v3;
  }

  if (v2 == CFArrayGetTypeID())
  {
    v3 = xpc_array_create(0, 0);
    v13.length = CFArrayGetCount(a1);
    v13.location = 0;
    CFArrayApplyFunction(a1, v13, sub_10002F0F0, v3);
    return v3;
  }

  if (v2 == CFNumberGetTypeID())
  {
    Type = CFNumberGetType(a1);
    if (Type <= kCFNumberDoubleType && ((1 << Type) & 0x3060) != 0)
    {
      value[0] = 0;
      CFNumberGetValue(a1, kCFNumberDoubleType, value);
      return xpc_double_create(*value);
    }

    else
    {
      value[0] = 0;
      CFNumberGetValue(a1, kCFNumberSInt64Type, value);
      return xpc_int64_create(value[0]);
    }
  }

  if (v2 == CFStringGetTypeID())
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
    if (!CStringPtr)
    {
      if (CFStringGetCString(a1, value, 100, 0x8000100u))
      {
        CStringPtr = value;
      }

      else
      {
        CStringPtr = 0;
      }
    }

    return xpc_string_create(CStringPtr);
  }

  if (v2 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);

    return xpc_data_create(BytePtr, Length);
  }

  else
  {
    if (v2 != CFBooleanGetTypeID())
    {
      return 0;
    }

    v10 = CFBooleanGetValue(a1) != 0;

    return xpc_BOOL_create(v10);
  }
}

float32x4_t *sub_10000B05C(float32x4_t *result, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, float a6)
{
  if (a5)
  {
    v6 = 0;
    v7 = a5;
    v8 = 1;
    do
    {
      *(a4 + 4 * v6) = 0;
      v9 = *(a3 + 4 * v6);
      if (v9 <= 0.0)
      {
        v18 = v8;
      }

      else
      {
        v10 = (((a6 / v9) * ((a2 / (a6 / v9)) / 5.0)) + 0.5);
        if (v10 >= a2)
        {
          v11 = a2;
        }

        else
        {
          v11 = v10;
        }

        v12 = v11 & 0xFFFFFFFC;
        if (v12 < 1)
        {
          v17 = 0;
          v14 = 0uLL;
        }

        else
        {
          v13 = 0;
          v14 = 0uLL;
          v15 = result;
          do
          {
            v16 = *v15++;
            v14 = vmlaq_f32(v14, v16, v16);
            v13 += 4;
          }

          while (v13 < v12);
          v17 = v13;
        }

        v19 = v14.f32[3] + (v14.f32[2] + vaddv_f32(*v14.f32));
        if (v17 < v11)
        {
          v20 = v11 - v17;
          v21 = &result->f32[v17];
          do
          {
            v22 = *v21++;
            v19 = v19 + (v22 * v22);
            --v20;
          }

          while (v20);
        }

        v18 = v8 + 4;
        v23 = 0.0;
        v24 = v8;
        v25 = v10;
        v26 = result;
        do
        {
          v27 = v19;
          v28 = (result + 4 * v25);
          v29 = ~v25 + a2;
          if (v29 <= v10)
          {
            v29 = v29;
          }

          else
          {
            v29 = v10;
          }

          v30 = v29 & 0xFFFFFFFC;
          if (v30 < 1)
          {
            v38 = 0;
            v32 = 0uLL;
          }

          else
          {
            v31 = 0;
            v32 = 0uLL;
            v33 = v26;
            v34 = (result + 4 * v25);
            do
            {
              v35 = *v33++;
              v36 = v35;
              v37 = *v34++;
              v32 = vmlaq_f32(v32, v37, v36);
              v31 += 4;
            }

            while (v31 < v30);
            v38 = v31;
          }

          v39 = v25;
          v40 = v32.f32[3] + (v32.f32[2] + vaddv_f32(*v32.f32));
          if (v38 < v29)
          {
            v41 = v29 - v38;
            v42 = &result->f32[v38 + v39];
            v43 = &v26->f32[v38];
            do
            {
              v44 = *v43++;
              v45 = v44;
              v46 = *v42++;
              v40 = v40 + (v45 * v46);
              --v41;
            }

            while (v41);
          }

          if (v30 < 1)
          {
            v51 = 0;
            v48 = 0uLL;
          }

          else
          {
            v47 = 0;
            v48 = 0uLL;
            v49 = (result + 4 * v25);
            do
            {
              v50 = *v49++;
              v48 = vmlaq_f32(v48, v50, v50);
              v47 += 4;
            }

            while (v47 < v30);
            v51 = v47;
          }

          v19 = v48.f32[3] + (v48.f32[2] + vaddv_f32(*v48.f32));
          if (v51 < v29)
          {
            v52 = v29 - v51;
            v53 = &result->f32[v51 + v39];
            do
            {
              v54 = *v53++;
              v19 = v19 + (v54 * v54);
              --v52;
            }

            while (v52);
          }

          v55 = 0.0;
          if (fabsf(v27) > 0.001 && fabsf(v19) > 0.001)
          {
            v55 = (fabsf(v40) / sqrtf(v27)) / sqrtf(v19);
          }

          v25 += v10;
          v23 = v23 + v55;
          ++v24;
          v26 = v28;
        }

        while (v24 != v18);
        if (v18 > 1)
        {
          *(a4 + 4 * v6) = v23 / (v8 + 3);
        }
      }

      ++v6;
      v8 = v18;
    }

    while (v6 != v7);
  }

  return result;
}

CFDataRef sub_10000B2D0(void *a1)
{
  type = xpc_get_type(a1);
  if (type == &_xpc_type_dictionary)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    applier = COERCE_DOUBLE(_NSConcreteStackBlock);
    v13 = 0x40000000;
    v14 = sub_10002F138;
    v15 = &unk_1000A26A0;
    v16 = Mutable;
    xpc_dictionary_apply(a1, &applier);
    return Mutable;
  }

  if (type == &_xpc_type_array)
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    applier = COERCE_DOUBLE(_NSConcreteStackBlock);
    v13 = 0x40000000;
    v14 = sub_10002F1B8;
    v15 = &unk_1000A26C0;
    v16 = Mutable;
    xpc_array_apply(a1, &applier);
    return Mutable;
  }

  if (type == &_xpc_type_int64)
  {
    applier = COERCE_DOUBLE(xpc_int64_get_value(a1));
    v4 = kCFAllocatorDefault;
    v5 = kCFNumberSInt64Type;
    return CFNumberCreate(v4, v5, &applier);
  }

  if (type == &_xpc_type_double)
  {
    applier = xpc_double_get_value(a1);
    v4 = kCFAllocatorDefault;
    v5 = kCFNumberDoubleType;
    return CFNumberCreate(v4, v5, &applier);
  }

  if (type == &_xpc_type_string)
  {
    string_ptr = xpc_string_get_string_ptr(a1);

    return CFStringCreateWithCString(kCFAllocatorDefault, string_ptr, 0x8000100u);
  }

  else
  {
    if (type != &_xpc_type_data)
    {
      if (type != &_xpc_type_BOOL)
      {
        return 0;
      }

      value = xpc_BOOL_get_value(a1);
      v11 = &kCFBooleanTrue;
      if (!value)
      {
        v11 = &kCFBooleanFalse;
      }

      return *v11;
    }

    bytes_ptr = xpc_data_get_bytes_ptr(a1);
    length = xpc_data_get_length(a1);

    return CFDataCreate(kCFAllocatorDefault, bytes_ptr, length);
  }
}

void *H16ISPRgbJRunner::readData(H16ISPRgbJRunner *this, const __CFString *a2)
{
  v2 = [NSData dataWithContentsOfFile:this];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

uint64_t sub_10000B5C8(const char *a1)
{
  v2 = mkdir("/var/mobile/Library/ISP", 0x1FFu);
  if (v2)
  {
    v3 = v2;
    if (*__error() != 17)
    {
      printf("\tCan't create %s! (%d)\n", "/var/mobile/Library/ISP", v3);
      return 0;
    }
  }

  v4 = open_dprotected_np("/var/mobile/Library/ISP", 0, 0, 1);
  fcntl(v4, 64, 4);
  close(v4);
  v5 = mkdir(a1, 0x1FFu);
  if (v5)
  {
    v6 = v5;
    if (*__error() != 17)
    {
      printf("\tCan't create %s! (%d)\n", a1, v6);
      return 0;
    }
  }

  v7 = 1;
  v8 = open_dprotected_np(a1, 0, 0, 1);
  fcntl(v8, 64, 4);
  close(v8);
  return v7;
}

uint64_t sub_10000B6D4(uint64_t result, float *a2, int a3, int a4, float *a5, float a6)
{
  v6 = (a4 >> 1);
  v7 = a3;
  v8 = fmax(((a6 / v6) * a3) + 0.5, 1.0);
  v9 = (v8 - 4) >> 1;
  if (v9 <= 1)
  {
    v9 = 1;
  }

  v10 = ((v7 / v8) + 0.5);
  v11 = 0.0;
  v12 = 0.0;
  v13 = a3 - 1;
  if (a3 >= 1)
  {
    v14 = a3;
    v15 = a2;
    do
    {
      v16 = *v15++;
      v12 = v12 + (v16 * v16);
      --v14;
    }

    while (v14);
  }

  if (v10 >= 1)
  {
    v17 = 0;
    v11 = 0.0;
    do
    {
      v18 = ((((++v17 * a6) / v6) * v7) + 0.5);
      v19 = (v18 - result) & ~((v18 - result) >> 31);
      if (v19 >= v13)
      {
        v19 = a3 - 1;
      }

      v20 = v18 + result;
      if (v18 + result >= v13)
      {
        v20 = a3 - 1;
      }

      if (v19 > v20)
      {
        v20 = v19;
      }

      v21 = (v18 - v9) & ~((v18 - v9) >> 31);
      if (v21 >= v13)
      {
        v21 = a3 - 1;
      }

      v22 = v9 + v18;
      if (v22 >= v13)
      {
        v22 = a3 - 1;
      }

      if (v22 <= v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = v22;
      }

      v24 = &a2[v21];
      v25 = *v24;
      v26 = v23 - v21;
      if (v26 >= 0)
      {
        v27 = -(v26 + 1);
        do
        {
          v28 = *v24++;
          v29 = v28;
          if (v25 < v28)
          {
            v25 = v29;
          }

          v30 = __CFADD__(v27++, 1);
        }

        while (!v30);
      }

      v31 = &a2[v19];
      v32 = *v31;
      if (v20 - v19 >= 0)
      {
        v33 = -(v20 - v19 + 1);
        v34 = &a2[v19];
        do
        {
          v35 = *v34++;
          v36 = v35;
          if (v32 < v35)
          {
            v32 = v36;
          }

          v30 = __CFADD__(v33++, 1);
        }

        while (!v30);
      }

      if (v25 * 0.999 < v32)
      {
        v37 = ~v20 + v19;
        do
        {
          v38 = *v31++;
          v11 = v11 + (v38 * v38);
          v30 = __CFADD__(v37++, 1);
        }

        while (!v30);
      }
    }

    while (v17 != v10);
  }

  v39 = v11 / v12;
  if ((v11 / v12) > 1.0)
  {
    v39 = 1.0;
  }

  *a5 = v39;
  return result;
}

uint64_t sub_10000B878(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v3 = *(a2 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000B904;
    block[3] = &unk_1000A2990;
    block[4] = a2;
    block[5] = a3;
    block[6] = a1;
    dispatch_async(v3, block);
  }

  else
  {
    free(a3);
  }

  return 0;
}

void sub_10000B904(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 24) & 1) == 0)
  {
    goto LABEL_34;
  }

  v3 = *(a1 + 48);
  if (v3 && *v3)
  {
    v4 = **v3;
    if (v4 == 10 || v4 == 6)
    {
      v6 = *(v2 + 208);
      v7 = v2 + 24 * v6;
      v8 = v3[37];
      *(v7 + 112) = *(v8 + 21);
      v9 = v7 + 112;
      *(v9 + 8) = *(v8 + 12);
      v10 = *(v2 + 56);
      if (v10)
      {
        v11 = 1;
      }

      else
      {
        v11 = *(v2 + 225);
      }

      *(v9 + 16) = v11 | (4 * *(v8 + 112));
      *(v2 + 225) = v10;
      v12 = (v6 + 1) & 3;
      if (!v12 && (*(v2 + 212) & 1) == 0)
      {
        *(v2 + 212) = 1;
      }

      *(v2 + 208) = v12;
    }
  }

  v13 = mach_absolute_time();
  if ((*(v2 + 56) & 1) != 0 || (HIDWORD(v15) = 1041313291, LODWORD(v15) = *(v2 + 48), LODWORD(v14) = *(v2 + 52), (v13 - *(v2 + 64)) * 0.000000001 * v15 / v14 < 1.5))
  {
LABEL_34:
    v25 = *(a1 + 40);
    if (v25)
    {

      free(v25);
    }
  }

  else
  {
    if (*(v2 + 88) != 1.0)
    {
      *(v2 + 88) = 1065353216;
      sub_100009258(*(v2 + 8), *(v2 + 88));
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = *(a1 + 48);
      if (v17)
      {
        v18 = *(v17 + 296);
        if (v18)
        {
          v16[21] = *(v18 + 84);
          v16[26] = *(v18 + 104);
          v19 = *(v2 + 32);
          if (v19)
          {
            v19(0, *(v2 + 40));
          }

          v20 = *(v2 + 104);
          if (v20)
          {
            if (sub_100002970(v20))
            {
              v21 = *(v2 + 104);
              memcpy(v26, *(a1 + 40), 0x110uLL);
              if (!sub_10000BD30(v21, v26))
              {
                v22 = *(a1 + 40);
                *(v2 + 72) = *(v22 + 8);
                *(v2 + 80) = *(v22 + 4);
                v23 = off_10041DCA0;
                if (off_10041DCA0 == &_os_log_default)
                {
                  v23 = os_log_create("com.apple.isp", "photon");
                  off_10041DCA0 = v23;
                }

                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  v24 = *(*(a1 + 40) + 8);
                  v26[0] = 134218240;
                  *&v26[1] = v24;
                  LOWORD(v26[3]) = 1024;
                  *(&v26[3] + 2) = 0;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "SetFlickerFrequency: %6.2f Hz, deviceStatus 0x%08x \n", v26, 0x12u);
                }
              }
            }
          }

          v16 = *(a1 + 40);
          *(v2 + 232) = *(v16 + 1);
          *(v2 + 240) = *(v16 + 3);
          *(v2 + 248) = v16[21];
          *(v2 + 252) = *v16;
          *(v2 + 256) = v16[26] != 0;
          *(v2 + 257) = 1;
        }
      }
    }

    free(v16);
  }
}

_DWORD *sub_10000BC24(_DWORD *result, double *a2)
{
  v2 = *a2;
  if (*a2)
  {
    if (v2 == 1)
    {
      v3 = a2[1];
      if (v3 < 49.0 || v3 > 51.0)
      {
        if (v3 < 59.0 || v3 > 61.0)
        {
          if (v3 <= 100.0)
          {
            ++result[35];
          }

          else if (v3 <= 300.0)
          {
            ++result[36];
          }

          else if (v3 <= 500.0)
          {
            ++result[37];
          }

          else
          {
            ++result[38];
          }
        }

        else
        {
          ++result[34];
        }
      }

      else
      {
        ++result[33];
      }
    }

    else if (v2 == 3)
    {
      ++result[32];
    }
  }

  else
  {
    ++result[39];
  }

  return result;
}

uint64_t sub_10000BD30(uint64_t a1, uint64_t a2)
{
  bzero(v12, 0xD8uLL);
  v4 = 0;
  v13 = 20;
  v14 = v14 & 0x7FFF0000 | 0x80000000;
  v5 = *(a2 + 4);
  v15 = *a2;
  v16 = v5;
  v6 = vcvtd_n_s64_f64(*(a2 + 72), 0x10uLL);
  v7 = *(a2 + 104);
  v17 = *(a2 + 108);
  v20 = v6;
  v22 = v7;
  v21 = *(a2 + 80);
  v8 = 1;
  do
  {
    v9 = v8;
    v18[v4] = vcvtd_n_u64_f64(*(a2 + 8 + 8 * v4), 0x10uLL);
    *(&v18[2] + v4) = *(a2 + 24 + 8 * v4);
    *(&v18[3] + v4) = vcvtd_n_s64_f64(*(a2 + 40 + 8 * v4), 8uLL);
    v4 = 1;
    v8 = 0;
  }

  while ((v9 & 1) != 0);
  v19 = vmovn_s64(vcvtq_n_s64_f64(*(a2 + 56), 0x10uLL));
  v10 = *(a2 + 132);
  v23 = *(a2 + 116);
  v24 = v10;
  v25 = *(a2 + 148);
  v26 = *(a2 + 164);
  v29 = *(a2 + 204);
  v30 = *(a2 + 220);
  v31[0] = *(a2 + 236);
  *(v31 + 14) = *(a2 + 250);
  v27 = *(a2 + 172);
  v28 = *(a2 + 188);
  return sub_10000BE84(a1, v12, 0xD8u, 0, 0xFFFFFFFF);
}

uint64_t sub_10000BE84(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  kdebug_trace();
  v10 = *(a1 + 4344);
  if (v10)
  {
    input[0] = a2;
    input[1] = a3;
    input[2] = a4;
    input[3] = a5;
    v11 = IOConnectCallScalarMethod(v10, 0xAu, input, 4u, 0, 0);
  }

  else
  {
    v11 = 3758097084;
  }

  kdebug_trace();
  return v11;
}

uint64_t sub_10000BF7C(uint64_t a1, double *a2)
{
  v2 = 3758097088;
  if (*a1)
  {
    v3 = **(a1 + 16);
    if (v3)
    {
      if (a2)
      {
        v5 = [v3 copyPropertyForKey:@"DisplayBrightness"];
        if (v5)
        {
          v6 = v5;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [objc_msgSend(v6 objectForKeyedSubscript:{@"NitsPhysical", "floatValue"}];
            v2 = 0;
            *a2 = v7;
          }

          else
          {
            v2 = 3758097126;
          }
        }

        else
        {
          return 3758097102;
        }
      }

      else
      {
        return 3758097090;
      }
    }

    else
    {
      return 3758097112;
    }
  }

  return v2;
}

uint64_t sub_10000C03C(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 4344);
  if (!v2)
  {
    return 3758097084;
  }

  v4 = a2;
  return IOConnectCallScalarMethod(v2, 0x6Bu, &v4, 1u, 0, 0);
}

uint64_t sub_10000C0B8(uint64_t a1, double a2)
{
  v3 = *a1;
  if (!v3)
  {
    return 3758097090;
  }

  if (*(a1 + 32) == a2)
  {
    return 0;
  }

  result = sub_10000C03C(v3, a2);
  if (result)
  {
    v6 = *a1;

    return sub_10000C03C(v6, a2);
  }

  else
  {
    *(a1 + 32) = a2;
  }

  return result;
}

void sub_10000C148(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 24);
  v3 = 136315650;
  v4 = "GetLuxInfo";
  v5 = 2080;
  v6 = "GetLuxInfo";
  v7 = 1024;
  v8 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s - %s: Sending lux, ret = 0x%x\n", &v3, 0x1Cu);
}

uint64_t sub_10000C210(uint64_t a1, xpc_connection_t *a2, void *a3)
{
  if (a3 == &_xpc_error_termination_imminent)
  {
    v6 = off_10041DCE8;
    if (off_10041DCE8 == &_os_log_default)
    {
      v6 = os_log_create("com.apple.isp", "daemon");
      off_10041DCE8 = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100084A10(a2);
    }
  }

  else if (a3 == &_xpc_error_connection_interrupted)
  {
    v7 = off_10041DCE8;
    if (off_10041DCE8 == &_os_log_default)
    {
      v7 = os_log_create("com.apple.isp", "daemon");
      off_10041DCE8 = v7;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100084990(a2);
    }
  }

  else
  {
    v5 = off_10041DCE8;
    if (a3 == &_xpc_error_connection_invalid)
    {
      if (off_10041DCE8 == &_os_log_default)
      {
        v5 = os_log_create("com.apple.isp", "daemon");
        off_10041DCE8 = v5;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        pid = xpc_connection_get_pid(*a2);
        v10[0] = 67174657;
        v10[1] = pid;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Client disconnecting (pid %{private}d)\n", v10, 8u);
      }
    }

    else
    {
      if (off_10041DCE8 == &_os_log_default)
      {
        v5 = os_log_create("com.apple.isp", "daemon");
        off_10041DCE8 = v5;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100084910(a2);
      }
    }
  }

  return (*(*a1 + 48))(a1, a2);
}

uint64_t sub_10000C440(uint64_t result, void *a2)
{
  v34 = a2;
  if (!a2)
  {
    return result;
  }

  v2 = result;
  v3 = result + 8;
  sub_10000C9AC(result + 8, &v34);
  v4 = *(v2 + 904);
  if (v4 && H16ISPRgbJRunner::isContext(v4, v34))
  {
    H16ISPRgbJRunner::finalize(*(v2 + 904));
    v5 = *(v2 + 904);
    if (v5)
    {
      H16ISPRgbJRunner::~H16ISPRgbJRunner(v5);
      operator delete();
    }

    *(v2 + 904) = 0;
  }

  v6 = *(v2 + 912);
  if (v6)
  {
    v7 = sub_10003B534(v6, v34);
    v8 = *(v2 + 912);
    if (v7)
    {
      v9 = *v8;
      if (*(v8 + 9) == 1)
      {
        (*(v9 + 16))();
        goto LABEL_16;
      }

      (*(v9 + 8))();
    }

    else
    {
      if (!sub_10003A194(v8))
      {
        goto LABEL_16;
      }

      v10 = *(v2 + 912);
      if (v10[9])
      {
        goto LABEL_16;
      }

      (*(*v10 + 8))(v10);
    }

    *(v2 + 912) = 0;
  }

LABEL_16:
  for (i = *(v2 + 16); i != v3; i = *(i + 8))
  {
    if (*(*(i + 16) + 8) == 1)
    {
      v14 = 0;
      v13 = 1;
      goto LABEL_24;
    }
  }

  v12 = *(v2 + 88);
  if (v12)
  {
    sub_10003582C(v12);
  }

  v13 = 0;
  v14 = 1;
LABEL_24:
  v15 = *(v2 + 1024);
  if (v15)
  {
    sub_10000221C(v15, v14);
  }

  if (*(v2 + 920))
  {
    v16 = (*(*(v2 + 72) + 4304) + 16);
    v17 = 12;
    while (1)
    {
      v19 = *v16;
      v16 += 26;
      v18 = v19;
      if (v19 != 1785950322)
      {
        break;
      }

      if (*(v34 + v17) == 1)
      {
        v20 = 5;
LABEL_34:
        sub_10003E758(*(v2 + 920), v20);
      }

LABEL_35:
      if (++v17 == 18)
      {
        v21 = *(v2 + 936);
        block[0] = _NSConcreteStackBlock;
        block[1] = 0x40000000;
        block[2] = sub_10000CAFC;
        block[3] = &unk_1000AC640;
        block[4] = v2;
        v33 = v13;
        dispatch_sync(v21, block);
        goto LABEL_37;
      }
    }

    if (v18 != 1718186595 || (*(v34 + v17) & 1) == 0)
    {
      goto LABEL_35;
    }

    v20 = 3;
    goto LABEL_34;
  }

LABEL_37:
  if (*(v34 + 2) == 1 && (pid = xpc_connection_get_pid(*v34)) != 0)
  {
    xpc_release(*v34);
    v23 = off_10041DCE8;
    if (off_10041DCE8 == &_os_log_default)
    {
      v23 = os_log_create("com.apple.isp", "daemon");
      off_10041DCE8 = v23;
    }

    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_48;
    }

    *buf = 67174657;
    *&buf[4] = pid;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Removing client: pid %{private}d\n", buf, 8u);
  }

  else
  {
    v23 = off_10041DCE8;
    if (off_10041DCE8 == &_os_log_default)
    {
      v23 = os_log_create("com.apple.isp", "daemon");
      off_10041DCE8 = v23;
    }

    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_48;
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Removing client: kernel\n", buf, 2u);
  }

  v23 = off_10041DCE8;
LABEL_48:
  if (v23 == &_os_log_default)
  {
    v23 = os_log_create("com.apple.isp", "daemon");
    off_10041DCE8 = v23;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(v2 + 24);
    *buf = 134217984;
    *&buf[4] = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Total number of connections: %lu\n", buf, 0xCu);
  }

  sub_100003C74(v2);
  if (!*(v2 + 24))
  {
    if (*(v2 + 72))
    {
      v25 = 0;
      v26 = 0;
      v27 = 280;
      do
      {
        if (sub_10000D6E8(*(v2 + 72), v25, buf))
        {
          break;
        }

        v28 = *buf;
        *(v2 + v27) = *buf;
        v29 = *(v2 + 80);
        if (v29)
        {
          *(v29 + v25 + 8) = v28 != 0;
        }

        v26 += v28;
        ++v25;
        v27 += 56;
      }

      while (v25 != 6);
      if (v26)
      {
        if (*(v2 + 80))
        {
          sub_100012D58(v2);
        }

        v30 = *(v2 + 112);
        if (v30)
        {
          sub_100014AB4(v30);
        }
      }
    }

    bzero((v2 + 128), 0x308uLL);
    v31 = *(v2 + 48);
    if (v31)
    {
      os_release(v31);
      *(v2 + 48) = 0;
    }
  }

  result = kdebug_trace();
  if (v34)
  {
    free(*(v34 + 3));
    operator delete();
  }

  return result;
}

void *sub_10000C948(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t sub_10000C9AC(uint64_t a1, void *a2)
{
  v11[0] = v11;
  v11[1] = v11;
  v12 = 0;
  v2 = *(a1 + 8);
  if (v2 == a1)
  {
    v9 = 0;
  }

  else
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        sub_10000CA88(v11, v11, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
    v9 = v12;
  }

  sub_10000C948(v11);
  return v9;
}

void sub_10000CA74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000C948(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10000CA88(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4 != a5)
  {
    v5 = *a5;
    if (result != a3)
    {
      v6 = 1;
      if (v5 != a4)
      {
        v7 = a4;
        do
        {
          v7 = v7[1];
          ++v6;
        }

        while (v7 != v5);
      }

      *(a3 + 16) -= v6;
      *(result + 16) += v6;
    }

    v8 = v5[1];
    v9 = *a4;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a2;
    *(v10 + 8) = a4;
    *a4 = v10;
    *a2 = v5;
    v5[1] = a2;
  }

  return result;
}

uint64_t sub_10000CAFC(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = *(result + 32);
    v2 = *(v1 + 928);
    if (v2)
    {
      *(v1 + 1008) = 0;
      sub_10000CB90(v2);
      sub_10000CC18(*(v1 + 928));
    }

    result = *(v1 + 920);
    if (result)
    {
      sub_10000CCF8();
      operator delete();
    }
  }

  return result;
}

uint64_t sub_10000CB64(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1)
  {
    return IOConnectCallScalarMethod(v1, 3u, 0, 0, 0, 0);
  }

  else
  {
    return 3758097101;
  }
}

uint64_t sub_10000CB90(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    return sub_10000CB64(v1);
  }

  else
  {
    return 3758097088;
  }
}

uint64_t sub_10000CBA8(uint64_t a1)
{
  pthread_mutex_lock((a1 + 8));
  v2 = *(a1 + 4);
  if (v2)
  {
    IOConnectCallScalarMethod(v2, 1u, 0, 0, 0, 0);
    IOServiceClose(*(a1 + 4));
    v3 = 0;
    *(a1 + 4) = 0;
  }

  else
  {
    v3 = 3758097101;
  }

  pthread_mutex_unlock((a1 + 8));
  return v3;
}

uint64_t sub_10000CC18(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    return sub_10000CBA8(v1);
  }

  else
  {
    return 3758097088;
  }
}

uint64_t sub_10000CC30(uint64_t a1)
{
  v2 = *(a1 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000CCFC;
  block[3] = &unk_1000A28C0;
  block[4] = a1;
  dispatch_sync(v2, block);
  dispatch_sync(*(a1 + 16), &stru_1000A2970);
  dispatch_release(*(a1 + 16));
  *(a1 + 16) = 0;
  if (*(a1 + 224) == 1)
  {
    v3 = *(a1 + 104);
    if (v3)
    {
      sub_100056798(v3);
      *(a1 + 104) = 0;
    }

    v4 = *(a1 + 96);
    if (v4)
    {
      sub_10002EC34(v4);
    }
  }

  return a1;
}

uint64_t sub_10000CCFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 24) = 0;
  sub_100003F40(*(v1 + 8), 0, 0);
  *(v1 + 32) = 0;
  bzero((v1 + 112), 0x68uLL);
  bzero((v1 + 232), 0x20uLL);
  *(v1 + 88) = 1065353216;
  if (*v1)
  {
    IOHIDEventSystemClientCancel();
  }

  result = *(v1 + 8);
  if (result)
  {
    sub_10000CD78(result);
    result = sub_10000D0BC(*(v1 + 8));
    *(v1 + 8) = 0;
  }

  return result;
}

uint64_t sub_10000CD78(uint64_t a1)
{
  if (!a1)
  {
    return 3758097090;
  }

  pthread_mutex_lock((a1 + 336));
  *(a1 + 328) = 1;
  pthread_mutex_unlock((a1 + 336));
  sub_10000CE20(a1);
  v2 = off_10041DC78;
  if (off_10041DC78 == &_os_log_default)
  {
    v2 = os_log_create("com.apple.isp", "general");
    off_10041DC78 = v2;
  }

  result = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    sub_10007D750();
    return 0;
  }

  return result;
}

void sub_10000CE20(uint64_t a1)
{
  if (a1)
  {
    pthread_mutex_lock((a1 + 336));
    v2 = *(a1 + 16);
    if (v2)
    {
      if (AudioOutputUnitStop(v2))
      {
        v3 = off_10041DC78;
        if (off_10041DC78 == &_os_log_default)
        {
          v3 = os_log_create("com.apple.isp", "general");
          off_10041DC78 = v3;
        }

        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_10007D624();
        }
      }

      sub_10000CF9C(a1);
    }

    pthread_mutex_unlock((a1 + 336));
  }

  else
  {
    v4 = off_10041DC78;
    if (off_10041DC78 == &_os_log_default)
    {
      v4 = os_log_create("com.apple.isp", "general");
      off_10041DC78 = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10007D694();
    }
  }
}

uint64_t sub_10000CF20(uint64_t result, int a2, int a3, float *a4, float a5)
{
  v5 = ((a5 / (a3 / 2)) * a2);
  if (v5 <= 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = ((a5 / (a3 / 2)) * a2);
  }

  v7 = v6 - 2;
  if (v7 >= a2 - 1)
  {
    v7 = a2 - 1;
  }

  v8 = v5 + 2;
  if (v8 >= a2 - 1)
  {
    v8 = a2 - 1;
  }

  v9 = v8 & ~(v8 >> 31);
  v10 = (result + 4 * v7);
  v11 = *v10;
  v12 = v9 - v7;
  if (v12 >= 0)
  {
    v13 = -(v12 + 1);
    do
    {
      v14 = *v10++;
      v15 = v14;
      if (v11 < v14)
      {
        v11 = v15;
      }
    }

    while (!__CFADD__(v13++, 1));
  }

  *a4 = v11;
  return result;
}

void sub_10000CF9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    AudioComponentInstanceDispose(v2);
    *(a1 + 16) = 0;
  }

  if (**a1 != 1)
  {
    v3 = *(a1 + 120);
    if (v3)
    {
      free(v3);
      *(a1 + 120) = 0;
    }

    v4 = *(a1 + 136);
    if (v4)
    {
      free(v4);
      *(a1 + 136) = 0;
    }
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    free(v5);
    *(a1 + 80) = 0;
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    free(v6);
    *(a1 + 96) = 0;
  }

  v7 = *(a1 + 152);
  if (v7)
  {
    free(v7);
    *(a1 + 152) = 0;
  }

  v8 = *(a1 + 168);
  if (v8)
  {
    free(v8);
    *(a1 + 168) = 0;
  }

  v9 = *(a1 + 240);
  if (v9)
  {
    vDSP_destroy_fftsetup(v9);
    *(a1 + 240) = 0;
  }

  v10 = *(a1 + 184);
  if (v10)
  {
    free(v10);
    *(a1 + 184) = 0;
  }

  v11 = *(a1 + 200);
  if (v11)
  {
    free(v11);
    *(a1 + 200) = 0;
  }

  v12 = *(a1 + 224);
  if (v12)
  {
    free(v12);
    *(a1 + 224) = 0;
  }

  v13 = *(a1 + 296);
  if (v13)
  {
    free(v13);
    *(a1 + 296) = 0;
  }

  if (**a1 != 1)
  {
    v14 = *(a1 + 216);
    if (v14)
    {
      free(v14);
      *(a1 + 216) = 0;
    }

    v15 = *(a1 + 416);
    if (v15)
    {
      free(v15);
      *(a1 + 416) = 0;
    }
  }
}

uint64_t sub_10000D0BC(uint64_t a1)
{
  if (!a1)
  {
    return 3758097090;
  }

  [*(a1 + 400) cleanup];

  pthread_mutex_lock((a1 + 424));
  pthread_cond_broadcast((a1 + 488));
  pthread_mutex_unlock((a1 + 424));
  pthread_cond_destroy((a1 + 488));
  pthread_mutex_destroy((a1 + 424));
  pthread_mutex_destroy((a1 + 336));
  free(a1);
  v2 = off_10041DC78;
  if (off_10041DC78 == &_os_log_default)
  {
    v2 = os_log_create("com.apple.isp", "general");
    off_10041DC78 = v2;
  }

  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v3)
  {
    v5 = 136315138;
    v6 = "H16ISPFlickerDetectorDispose";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s - Success\n", &v5, 0xCu);
    return 0;
  }

  return result;
}

void *sub_10000D1F4(void *result)
{
  if (*result)
  {
    v1 = result;
    if (!result[3])
    {
      result = mach_absolute_time();
      v1[3] = result;
    }
  }

  return result;
}

uint64_t sub_10000D328(void *a1, uint64_t a2, unsigned int a3, char a4)
{
  if (a3 > 5)
  {
    return 3758097084;
  }

  v22[12] = v4;
  v22[13] = v5;
  if (a1[115])
  {
    v11 = a1[117];
    if (v11)
    {
      v12 = *(*(a1[9] + 4304) + 104 * a3 + 16);
      if (v12 == 1785950322)
      {
        v13 = v21;
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 0x40000000;
        v14 = &unk_1000AC7A8;
        v15 = sub_10005FDBC;
        goto LABEL_9;
      }

      if (v12 == 1718186595)
      {
        v13 = v22;
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 0x40000000;
        v14 = &unk_1000AC788;
        v15 = sub_10005FDA0;
LABEL_9:
        v13[2] = v15;
        v13[3] = v14;
        v13[4] = a1;
        *(v13 + 40) = a4;
        dispatch_async(v11, v13);
      }
    }
  }

  if ((a4 & 1) == 0)
  {
    v16 = 0;
    v17 = a1 + 11;
    v18 = 1;
    do
    {
      v19 = v17[v16];
      if (!v19)
      {
        break;
      }

      v20 = v18;
      sub_1000357EC(v19);
      v18 = 0;
      v16 = 1;
    }

    while ((v20 & 1) != 0);
  }

  result = 0;
  *(a2 + a3 + 12) = a4;
  return result;
}

uint64_t sub_10000D5F8(uint64_t a1, mach_port_t wake_port, uint64_t a3)
{
  v3 = *(a1 + 4344);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a3;
  input[1] = 2024;
  v6 = 0u;
  return IOConnectCallAsyncMethod(v3, 0x2Au, wake_port, &reference, 8u, input, 2u, 0, 0, 0, 0, 0, 0);
}

uint64_t sub_10000D690(uint64_t a1)
{
  pthread_mutex_lock((a1 + 144));
  v2 = *(a1 + 208);
  if (v2)
  {
    Current = CFAbsoluteTimeGetCurrent();
    CFRunLoopTimerSetNextFireDate(v2, Current + *(a1 + 280));
  }

  return pthread_mutex_unlock((a1 + 144));
}

uint64_t sub_10000D6E8(uint64_t a1, unsigned int a2, void *outputStruct)
{
  v5 = 8;
  v3 = *(a1 + 4344);
  if (!v3)
  {
    return 3758097084;
  }

  input = a2;
  return IOConnectCallMethod(v3, 0x63u, &input, 1u, 0, 0, 0, 0, outputStruct, &v5);
}

uint64_t sub_10000D77C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = byte_10041DF38;
  if (*(a2 + 32))
  {
    v7 = 0;
    v8 = (a2 + 488);
    v9 = (a2 + 48);
    do
    {
      v10 = v9[10];
      if (v4)
      {
        v11 = *(a1 + 8 * *(v9 - 3));
        if (v11)
        {
          sub_10000D1F4(v11);
        }
      }

      *a3 = 0;
      v12 = kdebug_trace();
      v13 = 5;
      switch(*(v9 - 3))
      {
        case 4:
          v14 = sub_10004EABC(v12, v8, v10);
          goto LABEL_16;
        case 5:
          v14 = sub_10004ED64(v12, v8, v10);
          goto LABEL_16;
        case 6:
          v14 = sub_10004F1E0(v12, v8, v10);
LABEL_16:
          v13 = v14;
          *a3 = 1;
          break;
        case 13:
          v15 = sub_10004F66C(a1);
          goto LABEL_21;
        case 14:
          v15 = sub_10004F7A4(v12, v8, v10);
          goto LABEL_21;
        case 15:
          v15 = sub_10004F8B0(v12, v8, v10);
          goto LABEL_21;
        case 16:
          v15 = sub_10004F9C0(v12, v8, v10);
          goto LABEL_21;
        case 17:
          v15 = sub_10004FAD4(v12, v8, v10);
          goto LABEL_21;
        case 18:
          v15 = sub_10004FE04(v12, v8, v10);
          goto LABEL_21;
        case 19:
          v15 = sub_10000E618(v12, v8, v10);
          goto LABEL_21;
        case 20:
          v15 = sub_10004FBEC(v12, v8, v10);
          goto LABEL_21;
        case 21:
          v15 = sub_10004FCF8(v12, v8, v10);
          goto LABEL_21;
        case 24:
          v15 = sub_10004FF50(a1, v8, v10);
LABEL_21:
          v13 = v15;
          break;
        default:
          break;
      }

      kdebug_trace();
      *v9 = v13;
      v4 = byte_10041DF38;
      if (byte_10041DF38 == 1)
      {
        v16 = *(a1 + 8 * *(v9 - 3));
        if (v16)
        {
          sub_100034CB4(v16);
          v4 = byte_10041DF38;
        }

        else
        {
          v4 = 1;
        }
      }

      ++*(a1 + 200);
      ++v7;
      v8 += 24;
      v9 += 14;
    }

    while (v7 < *(a2 + 32));
  }

  if ((v4 & 1) != 0 && *(a1 + 200) >= 0x400u)
  {
    v17 = off_10041DCC8;
    if (off_10041DCC8 == &_os_log_default)
    {
      v17 = os_log_create("com.apple.isp", "general");
      off_10041DCC8 = v17;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "*** Metrics report for firmware work processor ***\n", buf, 2u);
    }

    for (i = 0; i != 25; ++i)
    {
      if (*(a1 + 8 * i))
      {
        v19 = off_10041DCC8;
        if (off_10041DCC8 == &_os_log_default)
        {
          v19 = os_log_create("com.apple.isp", "general");
          off_10041DCC8 = v19;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v23 = i;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "*** Metrics for command %d ***\n", buf, 8u);
        }

        sub_100034EC0(*(a1 + 8 * i));
      }
    }

    v20 = off_10041DCC8;
    if (off_10041DCC8 == &_os_log_default)
    {
      v20 = os_log_create("com.apple.isp", "general");
      off_10041DCC8 = v20;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "*** End report ***\n", buf, 2u);
    }

    *(a1 + 200) = 0;
  }

  return 0;
}

uint64_t sub_10000DBB0(uint64_t a1, mach_port_t wake_port, uint64_t a3)
{
  v3 = *(a1 + 4344);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a3;
  input[1] = 2024;
  v6 = 0u;
  return IOConnectCallAsyncMethod(v3, 0x2Bu, wake_port, &reference, 8u, input, 2u, 0, 0, 0, 0, 0, 0);
}

void sub_10000DC48(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_10007FBEC();
  }

  if (!a2)
  {
    sub_10007FBC0();
  }

  bzero((a2 + 469820), 0x4424uLL);
  *(a2 + 469816) = *(a2 + 292);
  v4 = *(a2 + 4);
  if (v4 <= 3)
  {
    if (v4 == 2)
    {
      v31[0] = a1;
      v31[1] = 0;
      sub_1000444A0(v31, a2);
      return;
    }

    if (v4 == 3)
    {
      sub_10007FB68();
    }

LABEL_44:
    sub_10007FB94();
  }

  if (v4 != 4)
  {
    if (v4 == 5)
    {
      sub_10007FB10();
    }

    goto LABEL_44;
  }

  if (*(a2 + 700))
  {
    v5 = *(a2 + 32);
    if (*(a2 + 34) * v5 >= 0x81)
    {
      sub_10007FB3C();
    }

    v6 = *(a2 + 260);
    bzero((a2 + 427320), 0x3800uLL);
    v7 = *(a2 + 250) - *(a2 + 246);
    if (v7)
    {
      v8 = 0;
      v9 = *(a2 + 264);
      v10 = *(a2 + 266);
      v11 = *(a2 + 256);
      v12 = *(a2 + 248) - *(a2 + 244);
      v13 = a1 + v6 + *(a2 + 246) * v11 + 2 * *(a2 + 244);
      v14 = a2 + 427320 + 112 * -v5;
      v15 = *(a2 + 720);
      do
      {
        if (v8)
        {
          v16 = 0;
        }

        else
        {
          v16 = v5;
        }

        v14 += 112 * v16;
        if (!v8)
        {
          v8 = v10;
        }

        if (v12 >= 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = v14 - 112;
          v20 = v12 + 1;
          do
          {
            if (v18)
            {
              v21 = 0;
            }

            else
            {
              v18 = v9;
              v21 = 112;
            }

            v19 += v21;
            v22 = *(v13 + v17);
            if (v22 != 0x3FFF)
            {
              v23 = v22 + v15;
              v24 = 32 - __clz(v23 ^ (v23 >> 31));
              if (v23 == v23 >> 31)
              {
                v24 = 0;
              }

              v25 = v24 ^ (v23 >> 31);
              if (v25 >= 6)
              {
                v26 = 6;
              }

              else
              {
                v26 = v25;
              }

              v27 = v26 + 7;
              if (v25 >= -7)
              {
                v28 = v27;
              }

              else
              {
                v28 = 0;
              }

              v29 = v22;
              v30 = v19 + 8 * v28;
              *v30 = *v30 + v29;
              ++*(v30 + 4);
            }

            --v18;
            --v20;
            v17 += 2;
          }

          while (v20 > 1);
        }

        v13 += v11;
        --v8;
        --v7;
      }

      while (v7);
    }

    sub_10000DEC0(a2);

    sub_10000E45C(a2);
  }
}

_DWORD *sub_10000DEC0(_DWORD *result)
{
  v33 = *(result + 17);
  if (*(result + 17))
  {
    v1 = result;
    v2 = 0;
    result = v41;
    v34 = *(v1 + 32);
    do
    {
      if (v34)
      {
        v3 = 0;
        v4 = *(v1 + 296);
        v5 = *(v1 + 300);
        v6 = *(v1 + 304);
        v7 = *(v1 + 712);
        do
        {
          v8 = 0;
          do
          {
            v39 = 0;
            v35 = v8;
            if (v8 == 1)
            {
              v9 = 0;
              v10 = 0;
              v11 = 0;
              v12 = 1;
              v13 = -255.0;
              do
              {
                v14 = 0;
                v36 = v12;
                v15 = 1;
                do
                {
                  v16 = v15;
                  result = sub_10000E1BC(v1, v3, v2, v14 - 1, v9 - 1, v14, v9, &v39 + 1, &v39);
                  v15 = 0;
                  if (v13 < (v6 * (v5 * (*(&v39 + 1) - v4))) && v39 >= v7)
                  {
                    v13 = v6 * (v5 * (*(&v39 + 1) - v4));
                    v11 = v39;
                    v10 = v39 >= v7;
                  }

                  v14 = 1;
                }

                while ((v16 & 1) != 0);
                v12 = 0;
                v9 = 1;
              }

              while ((v36 & 1) != 0);
            }

            else
            {
              if (v8 == 2)
              {
                v17 = -1;
              }

              else
              {
                v17 = 0;
              }

              result = sub_10000E1BC(v1, v3, v2, v17, v17, v8 == 2, v8 == 2, &v39 + 1, &v39);
              v13 = v6 * (v5 * (*(&v39 + 1) - v4));
              v11 = v39;
              v10 = v39 >= v7;
            }

            *&v42[4 * v35] = v13;
            v40[v35] = v11;
            v38[v35 - 1] = v10;
            v8 = v35 + 1;
          }

          while (v35 != 2);
          v18 = *&v43[1];
          v19 = v41[1];
          v20 = v38[1];
          if (*(v1 + 726))
          {
            v21 = 0;
            v22 = 2;
            v23 = v42;
            v24 = v40;
            v25 = &v37;
            v26 = 1;
            result = v41;
            do
            {
              v27 = v26;
              if (*v25 == 1 && v18 < *v23)
              {
                v19 = *v24;
                v20 = 1;
                v22 = v21;
                v18 = *v23;
              }

              v26 = 0;
              v21 = 1;
              v25 = v38;
              v24 = v41;
              v23 = v43;
            }

            while ((v27 & 1) != 0);
            v28 = v22 << 6;
          }

          else
          {
            v28 = 0x80;
          }

          v29 = v1 + 480060 + 52 * (v2 * v34 + v3);
          v30 = (v20 & 1) == 0;
          if (v20)
          {
            v31 = 0xFFFF;
          }

          else
          {
            v31 = 0;
          }

          *v29 = v19;
          *(v29 + 4) = v31;
          if (v30)
          {
            v32 = 8;
          }

          else
          {
            v32 = 32;
          }

          *(v29 + 8) = v18;
          *(v29 + 12) = 0;
          *(v29 + 16) = 0;
          *(v29 + 20) = v32 | v28;
          ++v3;
        }

        while (v3 != v34);
      }

      ++v2;
    }

    while (v2 != v33);
  }

  return result;
}

uint64_t sub_10000E1BC(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7, float *a8, unsigned int *a9)
{
  v9 = *(result + 720);
  v10 = vcvts_n_f32_u32(*(result + 722), 0xFuLL);
  v11 = *(result + 704);
  if (v11)
  {
    v10 = -1.0;
  }

  v12 = 0.0;
  if (v11)
  {
    v9 = 0.0;
  }

  v13 = (100 - *(result + 716)) / 200.0;
  memset(v42, 0, sizeof(v42));
  if (a5 <= a7)
  {
    v14 = a7 + a3;
    v15 = a5 + a3;
    v16 = a4 + a2;
    v17 = a6 + a2;
    if (a6 + a2 <= a4 + a2)
    {
      v17 = a4 + a2;
    }

    if (v14 <= v15)
    {
      v14 = a5 + a3;
    }

    do
    {
      if ((v15 & 0x80000000) == 0 && v15 < *(result + 34) && a4 <= a6)
      {
        v19 = v16;
        do
        {
          if ((v19 & 0x80000000) == 0)
          {
            v20 = *(result + 32);
            if (v19 < v20)
            {
              v21 = (result + 427324 + 112 * (v19 + v15 * v20));
              v22 = 14;
              v23 = v42 + 1;
              do
              {
                *(v23 - 1) = *(v21 - 1) + *(v23 - 1);
                v24 = *v21;
                v21 += 2;
                *v23 += LODWORD(v24);
                v23 += 2;
                --v22;
              }

              while (v22);
            }
          }

          v25 = v19++ == v17;
        }

        while (!v25);
      }

      v25 = v15++ == v14;
    }

    while (!v25);
    v12 = DWORD1(v42[0]);
  }

  v26 = 1.0 - v13;
  v40[0] = v12;
  v27 = 1;
  v28 = 12;
  do
  {
    v12 = v12 + *(v42 + v28);
    v40[v27++] = v12;
    v28 += 8;
  }

  while (v27 != 14);
  if (v41 != 0.0)
  {
    for (i = 0; i != 14; ++i)
    {
      v40[i] = v40[i] / v41;
    }
  }

  v30 = 0;
  v31 = 0;
  v32 = 13;
  do
  {
    v33 = v40[v30];
    if (v33 <= v13 && v40[v30 + 1] > v13)
    {
      v31 = v30 + 1;
    }

    if (v33 < v26 && v40[v30 + 1] >= v26)
    {
      v32 = v30 + 1;
    }

    ++v30;
  }

  while (v30 != 13);
  if (v31 > v32)
  {
    v34 = 0;
LABEL_45:
    v39 = 0.0;
    goto LABEL_46;
  }

  v34 = 0;
  v35 = v32 - v31 + 1;
  v36 = ((v42 + 8 * v31) | 4);
  v37 = 0.0;
  do
  {
    v37 = v37 + *(v36 - 1);
    v38 = *v36;
    v36 += 2;
    v34 += LODWORD(v38);
    --v35;
  }

  while (v35);
  if (!v34)
  {
    goto LABEL_45;
  }

  v39 = -((v9 + (v37 / v34)) * v10);
LABEL_46:
  *a8 = v39;
  *a9 = v34;
  return result;
}

uint64_t sub_10000E45C(uint64_t result)
{
  if (*(result + 732))
  {
    v1 = *(result + 733);
    v2 = *(result + 734) == v1 ? 1 : *(result + 734) - v1;
    v3 = *(result + 34);
    if (*(result + 34))
    {
      v4 = 0;
      v5 = *(result + 280);
      v6 = result + 480060;
      v7 = *(result + 288);
      v8 = *(result + 270);
      v35 = *(result + 276);
      v9 = *(result + 32);
      v10 = (((v2 + ((v2 & 0x8000) >> 15)) >> 1) + 0x10000) / v2;
      do
      {
        v11 = v5 >> 8;
        v12 = v7 + v5;
        v13 = (v7 + v5 + 255) >> 8;
        v14 = (v5 >> 8) & ~(v5 >> 31);
        if (v11 > v8)
        {
          v14 = v8;
        }

        v15 = v13 & ~((v12 + 255) >> 31);
        if (v13 > v8)
        {
          v15 = v8;
        }

        v16 = v15 - v14;
        if (v15 < v14)
        {
          v16 = 0;
        }

        if (v9)
        {
          v17 = 0;
          v18 = *(result + 284);
          v19 = *(result + 268);
          v20 = *(result + 272);
          v21 = v35;
          do
          {
            v22 = 0;
            v23 = v21 >> 8;
            v24 = v18 + v21;
            v25 = (v18 + v21 + 255) >> 8;
            v26 = (v21 >> 8) & ~(v21 >> 31);
            if (v23 > v19)
            {
              v26 = v19;
            }

            v27 = v25 & ~((v24 + 255) >> 31);
            if (v25 > v19)
            {
              v27 = v19;
            }

            LODWORD(v28) = v27 - v26;
            if (v27 >= v26)
            {
              v28 = v28;
            }

            else
            {
              v28 = 0;
            }

            if (v15 > v14)
            {
              v22 = 0;
              v29 = result + 735 + v14 * v20 + v26;
              v30 = v16;
              do
              {
                if (v27 > v26)
                {
                  v31 = 0;
                  do
                  {
                    v32 = *(v29 + v31);
                    if (v32 <= v1)
                    {
                      v32 = v1;
                    }

                    v22 += v32;
                    ++v31;
                  }

                  while (v31 < v28);
                }

                v29 += v20;
                v33 = __OFSUB__(v30--, 1);
              }

              while (!((v30 < 0) ^ v33 | (v30 == 0)));
            }

            if (v28 * v16)
            {
              v22 /= v28 * v16;
            }

            v34 = (((v22 - v1) * v10) >> 8) & ~(((v22 - v1) * v10) >> 31);
            if (v34 >= 255)
            {
              LOBYTE(v34) = -1;
            }

            *(v6 + 48) = v34;
            v6 += 52;
            ++v17;
            v21 = v24;
          }

          while (v17 != v9);
        }

        ++v4;
        v5 = v12;
      }

      while (v4 != v3);
    }
  }

  return result;
}

uint64_t sub_10000E618(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != 2)
  {
    v4 = off_10041DCC8;
    if (off_10041DCC8 == &_os_log_default)
    {
      v4 = os_log_create("com.apple.isp", "general");
      off_10041DCC8 = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100081E4C();
    }

    return 3;
  }

  if (*(a2 + 8) <= 0x10008FuLL)
  {
    v3 = off_10041DCC8;
    if (off_10041DCC8 == &_os_log_default)
    {
      v3 = os_log_create("com.apple.isp", "general");
      off_10041DCC8 = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100081EC8();
    }

    return 3;
  }

  sub_10002FC80(*a2, *(a2 + 24));
  return 0;
}

void sub_10000E720(int *a1, uint64_t a2)
{
  if (!a1)
  {
    sub_10007EB44();
  }

  v2 = a1;
  v3 = (a1 + 1144);
  v4 = *a1;
  if (*a1 == 1)
  {
    v5 = a2;
    v93 = *(a1 + 4608);
    if (v93)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v2[4];
        v7 = v2[1169];
        v8 = v2[1170];
        v9 = v2[1153];
        *buf = 67109888;
        *v128 = v6;
        *&v128[4] = 1024;
        *&v128[6] = v7;
        LOWORD(v129) = 1024;
        *(&v129 + 2) = v8;
        HIWORD(v129) = 1024;
        *v130 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: #%08d (%4d x %4d) inputCount = %d\n", buf, 0x1Au);
      }

      if (v2[1153])
      {
        v10 = 0;
        do
        {
          v11 = &v2[5 * v10 + 1154];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(v5 + 8 * v10);
            v13 = *v11;
            v14 = v11[1];
            v15 = v11[2];
            v17 = v11[3];
            v16 = v11[4];
            *buf = 134219520;
            *v128 = v10;
            *&v128[8] = 2048;
            v129 = v12;
            *v130 = 1024;
            *&v130[2] = v13;
            *v131 = 1024;
            *&v131[2] = v14;
            *v132 = 1024;
            *&v132[2] = v15;
            *v133 = 1024;
            *&v133[2] = v16;
            LOWORD(v134[0]) = 1024;
            *(v134 + 2) = v17;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: input[%zu] = %p (level = %d) %d x %d, stride = %d, size = %d\n", buf, 0x34u);
          }

          v18 = *(v5 + 8 * v10);
          if (v18)
          {
            v19 = v11[1];
            if (v19)
            {
              if (v11[2])
              {
                v20 = &v18[v19 - 1];
                v21 = 4;
                do
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    v22 = *v18;
                    v23 = v18[1];
                    v24 = v18[2];
                    v25 = v18[3];
                    v26 = *(v20 - 3);
                    v27 = *(v20 - 2);
                    v28 = *(v20 - 1);
                    v29 = *v20;
                    *buf = 67110912;
                    *v128 = v22;
                    *&v128[4] = 1024;
                    *&v128[6] = v23;
                    LOWORD(v129) = 1024;
                    *(&v129 + 2) = v24;
                    HIWORD(v129) = 1024;
                    *v130 = v25;
                    *&v130[4] = 1024;
                    *v131 = v26;
                    *&v131[4] = 1024;
                    *v132 = v27;
                    *&v132[4] = 1024;
                    *v133 = v28;
                    *&v133[4] = 1024;
                    v134[0] = v29;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: %3d %3d %3d %3d ... %3d %3d %3d %3d\n", buf, 0x32u);
                  }

                  v30 = v11[4];
                  v18 += v30;
                  v20 += v30;
                  --v21;
                }

                while (v21);
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ... ... ... ... ... ... ... ... ...\n", buf, 2u);
                  v30 = v11[4];
                }

                v31 = (*(a2 + 8 * v10) + (v11[2] - 4) * v30);
                v32 = &v31[v11[1] - 1];
                v33 = 4;
                do
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    v34 = *v31;
                    v35 = v31[1];
                    v36 = v31[2];
                    v37 = v31[3];
                    v38 = *(v32 - 3);
                    v39 = *(v32 - 2);
                    v40 = *(v32 - 1);
                    v41 = *v32;
                    *buf = 67110912;
                    *v128 = v34;
                    *&v128[4] = 1024;
                    *&v128[6] = v35;
                    LOWORD(v129) = 1024;
                    *(&v129 + 2) = v36;
                    HIWORD(v129) = 1024;
                    *v130 = v37;
                    *&v130[4] = 1024;
                    *v131 = v38;
                    *&v131[4] = 1024;
                    *v132 = v39;
                    *&v132[4] = 1024;
                    *v133 = v40;
                    *&v133[4] = 1024;
                    v134[0] = v41;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: %3d %3d %3d %3d ... %3d %3d %3d %3d\n", buf, 0x32u);
                    v30 = v11[4];
                  }

                  v31 += v30;
                  v32 += v30;
                  --v33;
                }

                while (v33);
              }
            }
          }

          ++v10;
          v5 = a2;
        }

        while (v10 < v2[1153]);
      }
    }

    v42 = v2 + 40;
    v99 = &v2[5 * *v3];
    v97 = (v2 + 1171);
    bzero(v2 + 1171, 0x400uLL);
    v90 = v2 + 1427;
    memcpy(v2 + 1427, v2 + 40, 0x1160uLL);
    v43 = 0;
    __dst = (v2 + 35309);
    v44 = (v2 + 51693);
    v107 = (v2 + 27117);
    v45 = v93;
    v92 = v2;
    v94 = v3;
    v95 = v2 + 40;
    v103 = (v2 + 51693);
    do
    {
      v46 = &v42[368 * *v3];
      v47 = &v46[v43];
      if (v47[360] == 1)
      {
        v91 = v47[84];
        if (v91 >= 1)
        {
          v102 = 0;
          v48 = 0;
          v49 = &v46[2 * v43];
          v50 = *(v49 + 44);
          v51 = *(v49 + 48);
          v98 = v47[80];
          v112 = v51 / 2;
          v108 = v50 / 2;
          v96 = v50 / 4;
          v52 = v51 + 3;
          *v104 = v51;
          v105 = v43;
          if (v51 >= 0)
          {
            v52 = v51;
          }

          v113 = v52 >> 2;
          do
          {
            if (v98 >= 1)
            {
              v53 = 0;
              v54 = v48;
              do
              {
                v106 = v54;
                v55 = &v42[368 * *v3 + 104 + 64 * v43];
                v110 = *(v55 + 8 * v102 + 128);
                v111 = v53;
                v109 = *(v55 + 8 * v53);
                v56 = v104[0];
                if (v104[0] >= 1)
                {
                  v57 = *v104;
                  v58 = __dst;
                  v59 = *(v55 + 8 * v102 + 128);
                  do
                  {
                    memcpy(v58, (*(a2 + 8 * *v3) + v109 + (v99[1158] * v59++)), v50);
                    v58 += v50;
                    --v57;
                  }

                  while (v57);
                  v60 = 0;
                  v61 = __dst;
                  v44 = v103;
                  v56 = v104[0];
                  v62 = v103;
                  v45 = v93;
                  v2 = v92;
                  LODWORD(v43) = v105;
                  do
                  {
                    if (v50 >= 1)
                    {
                      v63 = v50;
                      v64 = v61;
                      v65 = v62;
                      do
                      {
                        v66 = *v64++;
                        *v65++ = 16 * v66;
                        --v63;
                      }

                      while (v63);
                    }

                    ++v60;
                    v62 += v50;
                    v61 += v50;
                  }

                  while (v60 != *v104);
                }

                if (v45)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67110144;
                    *v128 = v50;
                    *&v128[4] = 1024;
                    *&v128[6] = v56;
                    LOWORD(v129) = 1024;
                    *(&v129 + 2) = v43;
                    HIWORD(v129) = 1024;
                    *v130 = v102;
                    *&v130[4] = 1024;
                    *v131 = v111;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: PYRYU8[%dx%df][OBJ=%d][Y=%d][X=%d]=[\n", buf, 0x20u);
                  }

                  sub_10002E7E4(*(a2 + 8 * *v3), v109, v110, v50, v56, v99[1158]);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67110144;
                    *v128 = v50;
                    *&v128[4] = 1024;
                    *&v128[6] = v56;
                    LOWORD(v129) = 1024;
                    *(&v129 + 2) = v43;
                    HIWORD(v129) = 1024;
                    *v130 = v102;
                    *&v130[4] = 1024;
                    *v131 = v111;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ROIS16[%dx%df][OBJ=%d][Y=%d][X=%d]=[\n", buf, 0x20u);
                  }

                  sub_10002E530(v44, 0, 0, v50, v56, v50);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
                  }

                  sub_10000FF00(v44, v50, v56, (v2 + 84461), (v2 + 92653), (v2 + 100845), (v2 + 109037), (v2 + 18925), v107, v45);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v112;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: height_l1 = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v50 / 2;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: width_l1 = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: a1 = [\n", buf, 2u);
                  }

                  sub_10002E530((v2 + 84461), 0, 0, v108, v112, v108);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
                  }
                }

                else
                {
                  sub_10000FF00(v44, v50, v56, (v2 + 84461), (v2 + 92653), (v2 + 100845), (v2 + 109037), (v2 + 18925), v107, v45);
                }

                v67 = v50 / 2;
                v68 = v112;
                sub_10001167C((v2 + 92653), (v2 + 100845), (v2 + 109037), v108, v112, (v2 + 117229), v45);
                v126 = 0;
                sub_100011940((v2 + 109037), v108, v112, &v126, v45);
                if (v45)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v126;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: d1_median = %d\n", buf, 8u);
                  }

                  v67 = v50 / 2;
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v112;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: height_d1 = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v50 / 2;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: width_d1 = %d\n", buf, 8u);
                  }

                  v68 = v112;
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: d1 = [\n", buf, 2u);
                  }

                  sub_10002E530((v2 + 109037), 0, 0, v108, v112, v108);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
                  }

                  v125 = 0;
                  sub_100011BE4(v2 + 109037, v108, v112, &v126, &v125 + 1, &v125, (v2 + 10731), v45);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = SHIWORD(v125);
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: d1_mad_median = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v125;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: d1_mad_sigma = %d\n", buf, 8u);
                  }

                  v124 = 0;
                  sub_100011940((v2 + 117229), v108, v112, &v124, v45);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v124;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: emap1_median = %d\n", buf, 8u);
                  }
                }

                else
                {
                  v125 = 0;
                  sub_100011BE4(v2 + 109037, v108, v112, &v126, &v125 + 1, &v125, (v2 + 10731), v45);
                  v124 = 0;
                  sub_100011940((v2 + 117229), v108, v112, &v124, v45);
                }

                v123 = 1;
                v122 = 0;
                sub_100012098((v2 + 117229), v67, v68, &v124, &v123, &v122, &v125, (v2 + 125421), v45);
                v121 = 2;
                sub_100012548((v2 + 125421), v67, v68, &v121, (v2 + 133613), v96, v2 + 37846, v45);
                v120 = 0;
                v69 = v113;
                sub_100012790((v2 + 133613), v96, v113, &v120, v45);
                sub_10000FF00((v2 + 84461), v67, v68, (v2 + 135661), (v2 + 137709), (v2 + 139757), (v2 + 141805), (v2 + 18925), v107, v45);
                if (v45)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v113;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: height_l2 = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v50 / 4;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: width_l2 = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: a2 = [\n", buf, 2u);
                  }

                  sub_10002E530((v2 + 135661), 0, 0, v96, v113, v96);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
                  }

                  sub_10001167C((v2 + 137709), (v2 + 139757), (v2 + 141805), v96, v113, (v2 + 143853), v45);
                  v119 = 0;
                  sub_100011940((v2 + 141805), v96, v113, &v119, v45);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v119;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: d2_median = %d\n", buf, 8u);
                  }

                  v3 = v94;
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v113;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: height_d2 = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v50 / 4;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: width_d2 = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: d2 = [\n", buf, 2u);
                  }

                  sub_10002E530((v2 + 141805), 0, 0, v96, v113, v96);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
                  }

                  v118 = 0;
                  sub_100011BE4(v2 + 141805, v96, v113, &v119, &v118 + 1, &v118, (v2 + 10731), v45);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = SHIWORD(v118);
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: d2_mad_median = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v118;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: d2_mad_sigma = %d\n", buf, 8u);
                  }

                  v117 = 0;
                  v69 = v113;
                  sub_100011940((v2 + 143853), v96, v113, &v117, v45);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v117;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: emap2_median = %d\n", buf, 8u);
                  }
                }

                else
                {
                  sub_10001167C((v2 + 137709), (v2 + 139757), (v2 + 141805), v96, v113, (v2 + 143853), v45);
                  v119 = 0;
                  sub_100011940((v2 + 141805), v96, v113, &v119, v45);
                  v118 = 0;
                  sub_100011BE4(v2 + 141805, v96, v113, &v119, &v118 + 1, &v118, (v2 + 10731), v45);
                  v117 = 0;
                  sub_100011940((v2 + 143853), v96, v113, &v117, v45);
                  v3 = v94;
                }

                v116 = 0;
                sub_100012098((v2 + 143853), v96, v69, &v117, &v123, &v116, &v118, (v2 + 145901), v45);
                *buf = 0;
                sub_100012790((v2 + 145901), v96, v69, buf, v45);
                v42 = v95;
                v115 = v95[368 * *v3 + 364 + v105];
                v114 = 0;
                v43 = v105;
                sub_100012904((v2 + 133613), (v2 + 145901), v96, v69, &v115, &v114 + 1, &v114, v45);
                v70 = &v97[16 * v106 + v105];
                *v70 = v120;
                v70[4] = *buf;
                v71 = v114;
                v70[8] = *(&v114 + 1);
                *(v70 + 12) = v71;
                v54 = v106 + 1;
                v53 = v111 + 1;
                v44 = v103;
              }

              while (v111 + 1 != v98);
              v48 = v106 + 1;
            }

            ++v102;
          }

          while (v102 != v91);
        }
      }

      ++v43;
    }

    while (v43 != 4);
    if (v3[32])
    {
      v72 = 0;
      v73 = (v2 + 1175);
      v74 = (v2 + 1179);
      v75 = (v2 + 1183);
      do
      {
        if (v90[368 * *(v2 + 10124) + 360 + v72] == 1)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v76 = off_1000A2680[v72];
            *buf = 136315138;
            *v128 = v76;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: Output[OBJ=%s]:\n", buf, 0xCu);
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: sharpnessL1 = [\n", buf, 2u);
          }

          v77 = 0;
          v78 = v97;
          do
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v79 = *v78;
              *buf = 134218240;
              *v128 = v77;
              *&v128[8] = 2048;
              v129 = v79;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: [%2zu %010.6f];\n", buf, 0x16u);
            }

            ++v77;
            v78 += 16;
          }

          while (v77 != 16);
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: sharpnessL2 = [\n", buf, 2u);
          }

          v80 = 0;
          v81 = v73;
          do
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v82 = *v81;
              *buf = 134218240;
              *v128 = v80;
              *&v128[8] = 2048;
              v129 = v82;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: [%2zu %010.6f];\n", buf, 0x16u);
            }

            ++v80;
            v81 += 16;
          }

          while (v80 != 16);
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: blurConf = [\n", buf, 2u);
          }

          v83 = 0;
          v84 = v74;
          do
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v85 = *v84;
              *buf = 134218240;
              *v128 = v83;
              *&v128[8] = 2048;
              v129 = v85;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: [%2zu %010.6f];\n", buf, 0x16u);
            }

            ++v83;
            v84 += 16;
          }

          while (v83 != 16);
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: blurExtent = [\n", buf, 2u);
          }

          v86 = 0;
          v87 = v75;
          do
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v88 = *v87;
              *buf = 134218240;
              *v128 = v86;
              *&v128[8] = 2048;
              v129 = v88;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: [%2zu %010.6f];\n", buf, 0x16u);
            }

            ++v86;
            v87 += 16;
          }

          while (v86 != 16);
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
          }
        }

        ++v72;
        ++v97;
        ++v73;
        ++v74;
        ++v75;
      }

      while (v72 != 4);
    }

    v89 = 0;
  }

  else if (a1[1152])
  {
    v89 = 1;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v128 = 1;
      *&v128[4] = 1024;
      *&v128[6] = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: incompatible context version (expected %d, got %d)\n", buf, 0xEu);
    }
  }

  else
  {
    v89 = 1;
  }

  v2[2] = v89;
}