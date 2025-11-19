void sub_100000C50(uint64_t a1)
{
  v23 = 255;
  v2 = IOServiceNameMatching("AppleH10CamIn");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v2);
  v22 = 0;
  v4 = [+[MSUDataAccessor sharedDataAccessor](MSUDataAccessor "sharedDataAccessor")];
  v5 = [NSData dataWithContentsOfFile:@"/private/var/tmp/usr/standalone/firmware/Savage/SavagePatch.DAT"];
  if (a1)
  {
    v6 = v5;
    if (sub_1000195F4(a1, &v23))
    {
      if (v6)
      {
        NSLog(@"Found Savage override DAT file, which takes precedence over all others - %@", @"/private/var/tmp/usr/standalone/firmware/Savage/SavagePatch.DAT");
        v9 = 0;
        v8 = 0;
      }

      else
      {
        if (!v4)
        {
          NSLog(@"Personalized firmware root path accessor not found");
          return;
        }

        v7 = sub_10001AB84(MatchingService, &v24, __str);
        v8 = v24;
        v9 = *__str;
        if ((v7 & 1) == 0)
        {
          v20 = 0;
          if (!*__str)
          {
            goto LABEL_20;
          }

          goto LABEL_28;
        }

        v10 = CFGetTypeID(v24);
        if (v10 != CFDataGetTypeID())
        {
          goto LABEL_34;
        }

        v11 = CFGetTypeID(v9);
        if (v11 != CFDataGetTypeID())
        {
          goto LABEL_34;
        }

        BytePtr = CFDataGetBytePtr(v8);
        v13 = "B3";
        if (BytePtr && (*BytePtr & 0xF0) == 0xA0)
        {
          v13 = "BA";
        }

        v14 = CFDataGetBytePtr(v9);
        v15 = "Dev";
        if (v14 && *v14 == 10)
        {
          v15 = "Prod";
        }

        snprintf(__str, 0x400uLL, "Savage/SavagePatch%s%s.DAT", v13, v15);
        v16 = [v4 stringByAppendingPathComponent:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", __str)}];
        NSLog(@"DAT file for unprovisioned Savage - %@", v16);
        v17 = [v4 stringByAppendingPathComponent:@"/Savage/SavagePatch.DAT"];
        NSLog(@"DAT file for provisioned Savage - %@", v17);
        v18 = [NSData dataWithContentsOfFile:v16];
        if (!v18)
        {
          v19 = [NSData dataWithContentsOfFile:v17];
          if (v19)
          {
            v6 = v19;
            goto LABEL_17;
          }

          NSLog(@"No DAT file for Savage found");
LABEL_34:
          v20 = 0;
          goto LABEL_28;
        }

        v6 = v18;
        NSLog(@"Loading DAT file for unprovisioned Savage");
      }

LABEL_17:
      v20 = malloc_type_calloc([(NSData *)v6 length], 1uLL, 0x100004077774924uLL);
      if (v20)
      {
        [(NSData *)v6 getBytes:v20 length:[(NSData *)v6 length]];
        v21 = sub_100019414(a1, v23 | 0x80000000, v20, [(NSData *)v6 length], 5u);
        NSLog(@"Load Savage DAT File: Size = %ld; Status = %08x", [(NSData *)v6 length], v21);
      }

      if (!v9)
      {
LABEL_20:
        if (!v8)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

LABEL_28:
      CFRelease(v9);
      if (!v8)
      {
LABEL_22:
        if (v20)
        {
          free(v20);
        }

        goto LABEL_24;
      }

LABEL_21:
      CFRelease(v8);
      goto LABEL_22;
    }
  }

LABEL_24:
  if (v4)
  {
  }
}

void sub_100000F80(uint64_t a1)
{
  v25 = 255;
  v2 = IOServiceNameMatching("AppleH10CamIn");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v2);
  v24 = 0;
  v4 = [+[MSUDataAccessor sharedDataAccessor](MSUDataAccessor "sharedDataAccessor")];
  v5 = [NSData dataWithContentsOfFile:@"/private/var/tmp/usr/standalone/firmware/Yonkers/YonkersPatch.DAT"];
  if (a1)
  {
    v6 = v5;
    v7 = sub_1000195A0(a1, &v25);
    if (v6)
    {
      NSLog(@"Found Yonkers override DAT file, which takes precedence over all others - %@", @"/private/var/tmp/usr/standalone/firmware/Yonkers/YonkersPatch.DAT");
      v10 = 0;
      v9 = 0;
      goto LABEL_23;
    }

    if (v7)
    {
      if (!v4)
      {
        NSLog(@"Personalized firmware root path accessor not found");
        return;
      }

      v8 = sub_10001AC30(MatchingService, &v26, __str);
      v9 = v26;
      v10 = *__str;
      if ((v8 & 1) == 0)
      {
        v16 = 0;
        goto LABEL_25;
      }

      v11 = CFGetTypeID(*__str);
      if (v11 != CFDataGetTypeID())
      {
        goto LABEL_38;
      }

      v12 = CFGetTypeID(v9);
      if (v12 != CFDataGetTypeID())
      {
        goto LABEL_38;
      }

      BytePtr = CFDataGetBytePtr(v9);
      if (BytePtr)
      {
        v14 = __rev16(*BytePtr);
        v15 = "Ymgt";
        if (v14 != 54529 && v14 != 59905 && v14 != 61953 && v14 != 56577)
        {
          v15 = "Ngsk";
        }
      }

      else
      {
        v15 = "Ngsk";
      }

      v17 = CFDataGetBytePtr(v10);
      v18 = "Dev";
      if (v17 && *v17 == 8)
      {
        v18 = "Prod";
      }

      snprintf(__str, 0x400uLL, "Yonkers/YonkersPatch%s%s.DAT", v15, v18);
      v19 = [v4 stringByAppendingPathComponent:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", __str)}];
      NSLog(@"DAT file for unprovisioned Yonkers - %@", v19);
      v20 = [v4 stringByAppendingPathComponent:@"/Yonkers/YonkersPatch.DAT"];
      NSLog(@"DAT file for provisioned Yonkers - %@", v20);
      v21 = [NSData dataWithContentsOfFile:v19];
      if (!v21)
      {
        v22 = [NSData dataWithContentsOfFile:v20];
        if (v22)
        {
          v6 = v22;
          goto LABEL_23;
        }

        NSLog(@"No DAT file for Yonkers found");
LABEL_38:
        v16 = 0;
        goto LABEL_26;
      }

      v6 = v21;
      NSLog(@"Loading DAT file for unprovisioned Yonkers");
LABEL_23:
      v16 = malloc_type_calloc([(NSData *)v6 length], 1uLL, 0x100004077774924uLL);
      if (v16)
      {
        [(NSData *)v6 getBytes:v16 length:[(NSData *)v6 length]];
        v23 = sub_100019414(a1, v25 | 0x80000000, v16, [(NSData *)v6 length], 5u);
        NSLog(@"Load Yonkers DAT File: Size = %ld; Status = %08x", [(NSData *)v6 length], v23);
      }

LABEL_25:
      if (!v10)
      {
LABEL_27:
        if (v9)
        {
          CFRelease(v9);
        }

        if (v16)
        {
          free(v16);
        }

        goto LABEL_31;
      }

LABEL_26:
      CFRelease(v10);
      goto LABEL_27;
    }
  }

LABEL_31:
  if (v4)
  {
  }
}

void sub_1000012D8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_10001ADE4();
  }

  if (!a2)
  {
    sub_10001ADB8();
  }

  bzero((a2 + 469800), 0x4424uLL);
  *(a2 + 469796) = *(a2 + 284);
  v4 = *(a2 + 4);
  if (v4 <= 2)
  {
    switch(v4)
    {
      case 2:
        v76[0] = 0uLL;
        v74[0] = a1;
        v74[1] = 0;
        sub_10000181C(v76, v74, a2);
        return;
      case 0:
        sub_10001AD60();
      case 1:
        sub_10001AD34();
    }

LABEL_90:
    sub_10001AD8C();
  }

  if (v4 != 4)
  {
    if (v4 == 3)
    {
      sub_10001AD08();
    }

    goto LABEL_90;
  }

  if (*(a2 + 688))
  {
    v5 = *(a2 + 32);
    v6 = *(a2 + 34);
    if ((v6 * v5) >= 0x81)
    {
      sub_10001ACDC();
    }

    bzero((a2 + 427300), 0x3800uLL);
    v7 = *(a2 + 250) - *(a2 + 246);
    v73 = a2;
    if (v7)
    {
      v8 = 0;
      v9 = *(a2 + 254);
      v10 = *(a2 + 252);
      v11 = *(a2 + 248) - *(a2 + 244);
      v12 = a1 + *(a2 + 246) * v10 + 2 * *(a2 + 244);
      v13 = *(a2 + 704);
      v14 = *(a2 + 704);
      v15 = a2 + 427300 + 112 * -v5;
      v16 = *(a2 + 256);
      do
      {
        if (v8)
        {
          v17 = 0;
        }

        else
        {
          v17 = v5;
        }

        v15 += 112 * v17;
        if (!v8)
        {
          v8 = v16;
        }

        if (v11 >= 1)
        {
          v18 = 0;
          v19 = 0;
          v20 = v15 - 112;
          v21 = v11 + 1;
          do
          {
            if (v19)
            {
              v22 = 0;
            }

            else
            {
              v19 = v9;
              v22 = 112;
            }

            v20 += v22;
            v23 = *(v12 + v18);
            if (v23 != 0x3FFF)
            {
              v24 = v23 + v13;
              v25 = 32 - __clz(v24 ^ (v24 >> 31));
              if (v24 == v24 >> 31)
              {
                v25 = 0;
              }

              v26 = v25 ^ (v24 >> 31);
              if (v26 >= 6)
              {
                v27 = 6;
              }

              else
              {
                v27 = v26;
              }

              v28 = v27 + 7;
              if (v26 >= -7)
              {
                v29 = v28;
              }

              else
              {
                v29 = 0;
              }

              *(v20 + 8 * v29) = vadd_s32(*(v20 + 8 * v29), (*(v12 + v18) | 0x100000000));
            }

            --v19;
            --v21;
            v18 += 2;
          }

          while (v21 > 1);
        }

        v12 += v10;
        --v8;
        --v7;
      }

      while (v7);
      if (!v6)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v14 = *(a2 + 704);
      if (!v6)
      {
LABEL_78:

        sub_100007A80(v73);
        return;
      }
    }

    v30 = 0;
    v31 = *(v73 + 288);
    v32 = *(v73 + 292);
    v33 = *(v73 + 296);
    v34 = v14;
    v35 = vcvts_n_f32_u32(*(v73 + 706), 0xFuLL);
    v36 = (100 - *(v73 + 700)) / 200.0;
    v37 = *(v73 + 708) >> 1;
    v38 = -v37;
    v39 = v73 + 112 * v37 * ~v5 + 427300;
    v40 = 112 * v5;
    v41 = 1.0 - v36;
    while (!v5)
    {
LABEL_77:
      ++v30;
      ++v38;
      v39 += v40;
      if (v30 == v6)
      {
        goto LABEL_78;
      }
    }

    v42 = 0;
    v43 = *(v73 + 696);
    v44 = v39;
    v45 = -v37;
    while (1)
    {
      v46 = v44;
      v47 = v38;
      memset(v76, 0, sizeof(v76));
      do
      {
        if (v47 < v6)
        {
          v48 = v46;
          v49 = v45;
          do
          {
            if (v49 < v5)
            {
              for (i = 0; i != 112; i += 8)
              {
                *(v76 + i) = vadd_s32(*(v76 + i), *(v48 + i));
              }
            }

            v48 += 112;
            v51 = (v42 + v37) <= v49++;
          }

          while (!v51);
        }

        v46 += v40;
        v51 = (v30 + v37) <= v47++;
      }

      while (!v51);
      v52 = DWORD1(v76[0]);
      *v74 = DWORD1(v76[0]);
      v53 = v76 + 3;
      for (j = 4; j != 56; j += 4)
      {
        v55 = *v53;
        v53 += 2;
        v52 = v52 + v55;
        *(v74 + j) = v52;
      }

      if (v75 != 0.0)
      {
        for (k = 0; k != 56; k += 4)
        {
          *(v74 + k) = *(v74 + k) / v75;
        }
      }

      v57 = 0;
      v58 = 0;
      v59 = 13;
      do
      {
        v60 = *(v74 + v57);
        v61 = v74 + v57;
        if (v60 <= v36 && v61[1] > v36)
        {
          v58 = v57 + 1;
        }

        if (v60 < v41 && v61[1] >= v41)
        {
          v59 = v57 + 1;
        }

        ++v57;
      }

      while (v57 != 13);
      if (v58 > v59)
      {
        break;
      }

      v62 = 0;
      v63 = v59 - v58 + 1;
      v64 = v76 + 2 * v58 + 1;
      v65 = 0.0;
      do
      {
        v65 = v65 + *(v64 - 1);
        v66 = *v64;
        v64 += 2;
        v62 += v66;
        --v63;
      }

      while (v63);
      if (!v62)
      {
        goto LABEL_69;
      }

      v67 = -(((v65 / v62) + v34) * v35);
LABEL_70:
      v68 = v32 * (v67 - v31);
      v69 = v73 + 480040 + 52 * (v42 + v30 * v5);
      if (v62 >= v43)
      {
        v70 = 0x3FFF;
      }

      else
      {
        v70 = 0;
      }

      *v69 = v62;
      *(v69 + 4) = v70;
      v71 = v33 * v68;
      if (v62 >= v43)
      {
        v72 = -96;
      }

      else
      {
        v72 = -120;
      }

      *(v69 + 8) = v71;
      *(v69 + 12) = 0;
      *(v69 + 16) = 0;
      *(v69 + 20) = v72;
      ++v42;
      ++v45;
      v44 += 112;
      if (v42 == v5)
      {
        goto LABEL_77;
      }
    }

    v62 = 0;
LABEL_69:
    v67 = 0.0;
    goto LABEL_70;
  }
}

uint64_t sub_10000181C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 34) * *(a3 + 32) >= 0x81)
  {
    sub_10001B440();
  }

  v1084 = *(a3 + 8);
  if (v1084 >= 2)
  {
    sub_10001AE10();
  }

  v4 = (a3 + 486696);
  v5 = *(a3 + 4);
  v991 = (a3 + 486696);
  if (v5 < 2)
  {
    sub_100008008((a3 + 12), a1, a2, &v1117);
    v29 = *(a3 + 32);
    v30 = a3 + 6948;
    v31 = *(a3 + 12);
    v1067 = v29;
    if (!v1084)
    {
      if (v31 > 4)
      {
        sub_10001AF70();
      }

      if (v31 == 2)
      {
        v602 = *(a3 + 20);
        v1097 = *(a3 + 28);
        v1108.i32[0] = 0;
        if (v602)
        {
          v603 = v1097;
          do
          {
            v604 = 2 * v1119;
            v605 = 2 * *(a3 + 16);
            if (v605 >= 1)
            {
              v606 = 0;
              v607 = 2 * *(a3 + 24);
              v608 = v30 - 404;
              v609 = *(&v1120 + 1);
              v610 = (v1121[0] + 6);
              v611 = *(a3 + 304);
              v612 = v605 + 2;
              do
              {
                if (!v604)
                {
                  v604 = 2 * LODWORD(v1125[0]);
                  v610 = (v1125[4] + 6);
                  v609 = v1125[3];
                }

                if (v606)
                {
                  v613 = 0;
                }

                else
                {
                  v606 = v607;
                  v613 = 404;
                }

                v608 += v613;
                v614 = *v609;
                v615.i32[0] = v609[1];
                v615.i32[1] = v609[2];
                v616 = vshr_n_u32(v615, 4uLL);
                v617 = *v610;
                ++*(v608 + 384);
                *(v608 + 388) += v616.u32[0];
                *(v608 + 396) += v616.u32[0] * v616.u32[0];
                if ((v617 & 4) == 0)
                {
                  v618 = v610[1];
                  v619 = v618 & 7;
                  if ((v617 & 1) != 0 || (((v618 & 7u) < 6) & (v617 >> 1)) != 0)
                  {
                    v636.i32[0] = 1;
                    v636.i32[1] = v616.i32[0];
                    v636.i64[1] = (v614 >> 4) | 0x100000000;
                    *(v608 + 336) = vaddq_s32(*(v608 + 336), v636);
                    *(v608 + 352) = vadd_s32(*(v608 + 352), v616);
                  }

                  else
                  {
                    v620 = v619 > 5;
                    v621 = v617;
                    v622 = v610[2];
                    v623 = (v622 & 0xF) + 1;
                    v624 = v622 >> 4;
                    v625 = v617 >> 3;
                    v626 = v610[1] >> 3;
                    if (v626 >= 0)
                    {
                      LOWORD(v627) = v610[1] >> 3;
                    }

                    else
                    {
                      v627 = -v626;
                    }

                    if (v625 < 0)
                    {
                      v625 = -v625;
                    }

                    v628 = v619 - v620;
                    v629 = (16 * (v627 & 0xFFFu)) >> v620 >> 1;
                    v630 = ((v623 >> 1) * v624 * v629) >> 15 << v611;
                    if (v630 <= -32768)
                    {
                      v630 = -32768;
                    }

                    if (v630 >= 0x7FFF)
                    {
                      v630 = 0x7FFF;
                    }

                    v631 = ((v630 * v629) >> 15);
                    v632 = ((v630 * 8 * (v625 & 0xFFF)) >> 15);
                    if ((v626 ^ (v621 >> 3)) >= 0)
                    {
                      v633 = v628 + 7;
                    }

                    else
                    {
                      v633 = v628;
                    }

                    v634 = (v608 + 24 * v633);
                    v635 = v634[1] + v631;
                    *v634 += v623;
                    v634[1] = v635;
                    v634[2] += v632;
                  }
                }

                v609 += 4;
                v610 += 6;
                v604 -= 2;
                v606 -= 2;
                ++v1108.i32[0];
                v612 -= 2;
              }

              while (v612 > 2);
            }

            if (v604)
            {
              sub_10001B204();
            }

            sub_100008878(&v1117);
            sub_100008878(&v1123);
            v637 = v29;
            if (v603 != 1)
            {
              v637 = 0;
            }

            v30 += 404 * v637;
            if (v603 == 1)
            {
              v603 = v1097;
            }

            else
            {
              --v603;
            }

            --v602;
          }

          while (v602);
        }
      }

      else
      {
        v52 = *(a3 + 20);
        v53 = 2 * v52;
        v1090 = 2 * *(a3 + 28);
        v1108.i32[0] = 0;
        if (v31 <= 1)
        {
          if (v31)
          {
            if (v53)
            {
              v675 = v1090;
              v676 = -2 * v52;
              while (1)
              {
                sub_10000897C((a3 + 12), a3 + 300, 1, &v1119, v1125, v30, &v1108);
                sub_100008878(&v1117);
                sub_100008878(&v1123);
                sub_10000897C((a3 + 12), a3 + 300, 0, &v1121[1], &v1125[5], v30, &v1108);
                if (v1117 <= 1)
                {
                  if (v1117 != 1)
                  {
                    if (v1117)
                    {
                      goto LABEL_1534;
                    }

                    goto LABEL_1532;
                  }
                }

                else if (v1117 != 3)
                {
                  if (v1117 == 4)
                  {
                    sub_10001B0D0();
                  }

                  if (v1117 != 2)
                  {
LABEL_1534:
                    sub_10001B128();
                  }

LABEL_1532:
                  sub_10001B0FC();
                }

                *&v1122 = v1122 + 2 * *(&v1117 + 1) + 2 * v1118;
                if (v1121[3])
                {
                  --v1121[3];
                  v677 = *(&v1122 + 1) + 4 * *(&v1118 + 1);
                }

                else
                {
                  v677 = *(&v1122 + 1) + 2 * *(&v1118 + 1);
                }

                *(&v1122 + 1) = v677;
                LODWORD(v678) = vadd_s32(*(&v1121[1] + 4), 0x200000002).u32[0];
                HIDWORD(v678) = veor_s8(*(v1121 + 12), 0x100000001).i32[1];
                *(&v1121[1] + 4) = v678;
                if (v1123 <= 1)
                {
                  if (v1123 != 1)
                  {
                    if (v1123)
                    {
                      goto LABEL_1539;
                    }

                    goto LABEL_1537;
                  }
                }

                else if (v1123 != 3)
                {
                  if (v1123 == 4)
                  {
                    sub_10001B0D0();
                  }

                  if (v1123 != 2)
                  {
LABEL_1539:
                    sub_10001B128();
                  }

LABEL_1537:
                  sub_10001B0FC();
                }

                *&v1126 = v1126 + 2 * *(&v1123 + 1) + 2 * v1124;
                if (v1125[7])
                {
                  --v1125[7];
                  v679 = *(&v1126 + 1) + 4 * *(&v1124 + 1);
                }

                else
                {
                  v679 = *(&v1126 + 1) + 2 * *(&v1124 + 1);
                }

                *(&v1126 + 1) = v679;
                LODWORD(v680) = vadd_s32(*(&v1125[5] + 4), 0x200000002).u32[0];
                HIDWORD(v680) = veor_s8(*(v1125 + 44), 0x100000001).i32[1];
                *(&v1125[5] + 4) = v680;
                v681 = v1067;
                if (v675 != 2)
                {
                  v681 = 0;
                }

                v30 += 404 * v681;
                if (v675 == 2)
                {
                  v675 = v1090;
                }

                else
                {
                  v675 -= 2;
                }

                v676 += 2;
                if (!v676)
                {
                  goto LABEL_1017;
                }
              }
            }
          }

          else if (v53)
          {
            v371 = v1090;
            do
            {
              v372 = v1119;
              v373 = *(a3 + 16);
              if (v373 >= 1)
              {
                v374 = 0;
                v375 = *(a3 + 24);
                v376 = v30 - 404;
                v378 = *(&v1120 + 1);
                v377 = v1121[0];
                v379 = v1125[3];
                v380 = v1125[4];
                v381 = *(a3 + 304);
                v382 = v1125[1];
                v383 = v373 + 1;
                v384 = DWORD2(v1119);
                v385 = v1125[0];
                do
                {
                  if (!v372)
                  {
                    v372 = v385;
                    v384 = v382;
                    v377 = v380;
                    v378 = v379;
                  }

                  if (v374)
                  {
                    v386 = 0;
                  }

                  else
                  {
                    v374 = v375;
                    v386 = 404;
                  }

                  v376 += v386;
                  v387 = *v378;
                  v388 = v378[1] >> 4;
                  v389 = *v377;
                  ++*(v376 + 384);
                  *(v376 + 388) += v388;
                  *(v376 + 396) += v388 * v388;
                  if ((v389 & 4) == 0)
                  {
                    v390 = v377[1];
                    v391 = v390 & 7;
                    if ((v389 & 1) != 0 || (((v390 & 7u) < 6) & (v389 >> 1)) != 0)
                    {
                      v408 = v387 >> 4;
                      v409 = (v376 + 12 * v384);
                      v410.i32[0] = 1;
                      v410.i32[1] = v388;
                      v409[42] = vadd_s32(v409[42], v410);
                      v409[43].i32[0] += v408;
                    }

                    else
                    {
                      v392 = v391 > 5;
                      v393 = v389;
                      v394 = v377[2];
                      v395 = (v394 & 0xF) + 1;
                      v396 = v394 >> 4;
                      v397 = v389 >> 3;
                      v398 = v377[1] >> 3;
                      if (v398 >= 0)
                      {
                        LOWORD(v399) = v377[1] >> 3;
                      }

                      else
                      {
                        v399 = -v398;
                      }

                      if (v397 < 0)
                      {
                        v397 = -v397;
                      }

                      v400 = v391 - v392;
                      v401 = (16 * (v399 & 0xFFFu)) >> v392 >> 1;
                      v402 = ((v395 >> 1) * v396 * v401) >> 15 << v381;
                      if (v402 <= -32768)
                      {
                        v402 = -32768;
                      }

                      if (v402 >= 0x7FFF)
                      {
                        v402 = 0x7FFF;
                      }

                      v403 = ((v402 * v401) >> 15);
                      v404 = ((v402 * 8 * (v397 & 0xFFF)) >> 15);
                      if ((v398 ^ (v393 >> 3)) >= 0)
                      {
                        v405 = v400 + 7;
                      }

                      else
                      {
                        v405 = v400;
                      }

                      v406 = (v376 + 24 * v405);
                      v407 = v406[1];
                      *v406 += v395;
                      v406[1] = v407 + v403;
                      v406[2] += v404;
                    }
                  }

                  v378 += 2;
                  v377 += 3;
                  --v372;
                  --v374;
                  ++v1108.i32[0];
                  v384 ^= 1u;
                  --v383;
                }

                while (v383 > 1);
              }

              if (v372)
              {
                sub_10001B230();
              }

              sub_100008878(&v1117);
              sub_100008878(&v1123);
              v411 = v29;
              if (v371 != 1)
              {
                v411 = 0;
              }

              v30 += 404 * v411;
              if (v371 == 1)
              {
                v371 = v1090;
              }

              else
              {
                --v371;
              }

              --v53;
            }

            while (v53);
          }
        }

        else if (v31 == 4)
        {
          if (v53)
          {
            sub_10001B1D8();
          }
        }

        else if (v53)
        {
          v653 = v1090;
          v654 = -2 * v52;
          while (1)
          {
            sub_10000897C((a3 + 12), a3 + 300, 0, &v1121[1], &v1125[5], v30, &v1108);
            if (v1117 <= 1)
            {
              if (v1117 != 1)
              {
                if (v1117)
                {
                  goto LABEL_1516;
                }

                goto LABEL_1514;
              }
            }

            else if (v1117 != 3)
            {
              if (v1117 == 4)
              {
                sub_10001B0D0();
              }

              if (v1117 != 2)
              {
LABEL_1516:
                sub_10001B128();
              }

LABEL_1514:
              sub_10001B0FC();
            }

            *&v1122 = v1122 + 2 * *(&v1117 + 1) + 2 * v1118;
            if (v1121[3])
            {
              --v1121[3];
              v655 = *(&v1122 + 1) + 4 * *(&v1118 + 1);
            }

            else
            {
              v655 = *(&v1122 + 1) + 2 * *(&v1118 + 1);
            }

            *(&v1122 + 1) = v655;
            LODWORD(v656) = vadd_s32(*(&v1121[1] + 4), 0x200000002).u32[0];
            HIDWORD(v656) = veor_s8(*(v1121 + 12), 0x100000001).i32[1];
            *(&v1121[1] + 4) = v656;
            if (v1123 <= 1)
            {
              if (v1123 != 1)
              {
                if (v1123)
                {
                  goto LABEL_1521;
                }

                goto LABEL_1519;
              }
            }

            else if (v1123 != 3)
            {
              if (v1123 == 4)
              {
                sub_10001B0D0();
              }

              if (v1123 != 2)
              {
LABEL_1521:
                sub_10001B128();
              }

LABEL_1519:
              sub_10001B0FC();
            }

            *&v1126 = v1126 + 2 * *(&v1123 + 1) + 2 * v1124;
            if (v1125[7])
            {
              --v1125[7];
              v657 = *(&v1126 + 1) + 4 * *(&v1124 + 1);
            }

            else
            {
              v657 = *(&v1126 + 1) + 2 * *(&v1124 + 1);
            }

            *(&v1126 + 1) = v657;
            LODWORD(v658) = vadd_s32(*(&v1125[5] + 4), 0x200000002).u32[0];
            HIDWORD(v658) = veor_s8(*(v1125 + 44), 0x100000001).i32[1];
            *(&v1125[5] + 4) = v658;
            sub_10000897C((a3 + 12), a3 + 300, 1, &v1119, v1125, v30, &v1108);
            sub_100008878(&v1117);
            sub_100008878(&v1123);
            v659 = v1067;
            if (v653 != 2)
            {
              v659 = 0;
            }

            v30 += 404 * v659;
            if (v653 == 2)
            {
              v653 = v1090;
            }

            else
            {
              v653 -= 2;
            }

            v654 += 2;
            if (!v654)
            {
              goto LABEL_1017;
            }
          }
        }
      }

      goto LABEL_1017;
    }

    if (v31 > 4)
    {
      sub_10001AF70();
    }

    if (v31 != 2)
    {
      v32 = *(a3 + 20);
      v33 = 2 * v32;
      v1089 = 2 * *(a3 + 28);
      v1107 = 0;
      if (v31 > 1)
      {
        if (v31 == 4)
        {
          if (v33)
          {
            sub_10001B0A4();
          }
        }

        else if (v33)
        {
          v427 = v1089;
          v428 = -2 * v32;
          while (1)
          {
            sub_100008B90(a3 + 12, a3 + 300, 0, &v1121[1], &v1125[5], v30, &v1107);
            if (v1117 <= 1)
            {
              if (v1117 != 1)
              {
                if (v1117)
                {
                  goto LABEL_1486;
                }

                goto LABEL_1435;
              }
            }

            else if (v1117 != 3)
            {
              if (v1117 == 4)
              {
                sub_10001B0D0();
              }

              if (v1117 != 2)
              {
LABEL_1486:
                sub_10001B128();
              }

LABEL_1435:
              sub_10001B0FC();
            }

            *&v1122 = v1122 + 2 * *(&v1117 + 1) + 2 * v1118;
            if (v1121[3])
            {
              --v1121[3];
              v429 = *(&v1122 + 1) + 4 * *(&v1118 + 1);
            }

            else
            {
              v429 = *(&v1122 + 1) + 2 * *(&v1118 + 1);
            }

            *(&v1122 + 1) = v429;
            LODWORD(v430) = vadd_s32(*(&v1121[1] + 4), 0x200000002).u32[0];
            HIDWORD(v430) = veor_s8(*(v1121 + 12), 0x100000001).i32[1];
            *(&v1121[1] + 4) = v430;
            if (v1123 <= 1)
            {
              if (v1123 != 1)
              {
                if (v1123)
                {
                  goto LABEL_1488;
                }

                goto LABEL_1438;
              }
            }

            else if (v1123 != 3)
            {
              if (v1123 == 4)
              {
                sub_10001B0D0();
              }

              if (v1123 != 2)
              {
LABEL_1488:
                sub_10001B128();
              }

LABEL_1438:
              sub_10001B0FC();
            }

            *&v1126 = v1126 + 2 * *(&v1123 + 1) + 2 * v1124;
            if (v1125[7])
            {
              --v1125[7];
              v431 = *(&v1126 + 1) + 4 * *(&v1124 + 1);
            }

            else
            {
              v431 = *(&v1126 + 1) + 2 * *(&v1124 + 1);
            }

            *(&v1126 + 1) = v431;
            LODWORD(v432) = vadd_s32(*(&v1125[5] + 4), 0x200000002).u32[0];
            HIDWORD(v432) = veor_s8(*(v1125 + 44), 0x100000001).i32[1];
            *(&v1125[5] + 4) = v432;
            sub_100008B90(a3 + 12, a3 + 300, 1, &v1119, v1125, v30, &v1107);
            sub_100008878(&v1117);
            sub_100008878(&v1123);
            if (v427 == 2)
            {
              v433 = v29;
            }

            else
            {
              v433 = 0;
            }

            v30 += 404 * v433;
            if (v427 == 2)
            {
              v427 = v1089;
            }

            else
            {
              v427 -= 2;
            }

            v428 += 2;
            if (!v428)
            {
              goto LABEL_1017;
            }
          }
        }

        goto LABEL_1017;
      }

      if (!v31)
      {
        if (!v33)
        {
          goto LABEL_1017;
        }

        v115 = v1089;
        while (1)
        {
          v1053 = v115;
          v116 = v1119;
          v117 = *(a3 + 16);
          if (v117 >= 1)
          {
            break;
          }

LABEL_245:
          if (v116)
          {
            sub_10001B1AC();
          }

          sub_100008878(&v1117);
          sub_100008878(&v1123);
          v115 = v1053 - 1;
          if (v1053 == 1)
          {
            v176 = v29;
          }

          else
          {
            v176 = 0;
          }

          v30 += 404 * v176;
          if (v1053 == 1)
          {
            v115 = v1089;
          }

          if (!--v33)
          {
            goto LABEL_1017;
          }
        }

        v118 = 0;
        v119 = vdupq_n_s16(*(a3 + 304));
        v120 = *(a3 + 24);
        v121 = 40;
        if (!v1119)
        {
          v121 = 152;
        }

        v122 = *(&v1117 + v121);
        v123 = v30 - 404;
        v125 = *(&v1120 + 1);
        v124 = v1121[0];
LABEL_217:
        v126 = v1125[3];
        v127 = v1125[4];
        v128 = v1125[0];
        if (!v116)
        {
          v116 = v1125[0];
          v124 = v1125[4];
          v125 = v1125[3];
        }

        if (v116 <= 7)
        {
          v129 = v117;
          if (v116 != v117)
          {
            if (v116 < 1)
            {
              sub_10001B180();
            }

            v130 = 0;
            v131 = 2 * v116;
            do
            {
              v132 = &v125[v130];
              v1108.i16[v130 / 2] = *v132;
              v1116.i16[v130 / 2] = v132[1];
              v1115.i16[v130 / 2] = *v124;
              v1114.i16[v130 / 2] = v124[1];
              v1113.i16[v130 / 2] = v124[2];
              v124 += 3;
              v130 += 2;
            }

            while (v131 != v130);
            if (v117 >= 8)
            {
              v133 = 8;
            }

            else
            {
              v133 = v117;
            }

            if (v116 < v133)
            {
              v134 = 0;
              v135 = &v1113.i8[v131];
              v136 = &v1114.i8[v131];
              v137 = &v1115.i8[v131];
              v138 = &v1116.i8[v131];
              v139 = &v1108.i8[v131];
              v140 = v116;
              v141 = v126;
              do
              {
                v142 = &v126[v134];
                *&v139[v134] = *v142;
                *&v138[v134] = v142[1];
                *&v137[v134] = *v127;
                *&v136[v134] = v127[1];
                *&v135[v134] = v127[2];
                v143 = v141;
                v127 += 3;
                ++v140;
                v134 += 2;
                v141 = v142 + 2;
              }

              while (v133 > v140);
              v126 = v143 + 2;
              v29 = v1067;
            }

            v1137.val[0] = v1108;
            v1137.val[1] = v1116;
            v1138.val[1] = v1114;
            v1138.val[0] = v1115;
            v116 += v128 - v133;
            v124 = v127;
            v125 = v126;
            v1138.val[2] = v1113;
LABEL_234:
            v144 = 0;
            v145.i64[0] = 0x2000200020002;
            v145.i64[1] = 0x2000200020002;
            v146.i64[0] = 0x4000400040004;
            v146.i64[1] = 0x4000400040004;
            v147 = vceqzq_s16(vandq_s8(v1138.val[0], v146));
            v148.i64[0] = 0x7000700070007;
            v148.i64[1] = 0x7000700070007;
            v149 = vandq_s8(v1138.val[1], v148);
            v150.i64[0] = 0xF000F000F000FLL;
            v150.i64[1] = 0xF000F000F000FLL;
            v151 = vshrq_n_u16(v1137.val[0], 4uLL);
            v152 = vshrq_n_u16(v1137.val[1], 4uLL);
            v153 = vshrq_n_s16(v1138.val[1], 3uLL);
            v154 = vqshlq_n_u16(vabsq_s16(vshrq_n_s16(v1138.val[0], 3uLL)), 4uLL);
            v155.i64[0] = 0x5000500050005;
            v155.i64[1] = 0x5000500050005;
            v156 = vcgtq_u16(v149, v155);
            v157 = vorrq_s8(v156, vceqzq_s16(vandq_s8(v1138.val[0], v145)));
            v158 = vaddq_s16(v149, v156);
            v159 = vshlq_u16(vqshlq_n_u16(vabsq_s16(v153), 4uLL), v156);
            v156.i64[0] = 0x1000100010001;
            v156.i64[1] = 0x1000100010001;
            v160 = vandq_s8(vaddq_s16(vandq_s8(v1138.val[2], v150), vbicq_s8(v156, v1138.val[0])), v157);
            v161 = vaddq_s16(v158, vandq_s8(veorq_s8(vcltzq_s16(v1138.val[0]), vcgezq_s16(v153)), v148));
            v162 = vshrq_n_u16(v159, 1uLL);
            v163 = vqshlq_s16(vqdmulhq_s16(v162, vmulq_s16(vshrq_n_u16(v160, 1uLL), vshrq_n_u16(v1138.val[2], 4uLL))), v119);
            v164 = vceqzq_s16(v160);
            v1108 = v161;
            v1109 = vornq_s8(vandq_s8(v160, v147), v147);
            v1110 = vbslq_s8(v164, v152, vqdmulhq_s16(v163, v162));
            v1111 = vbslq_s8(v164, v151, vqdmulhq_s16(v163, vshrq_n_u16(v154, 1uLL)));
            v1116 = v152;
            v165 = &v1110;
            while (1)
            {
              if (v118)
              {
                v166 = 0;
              }

              else
              {
                v118 = v120;
                v166 = 404;
              }

              v123 += v166;
              v167 = v165[-2].u16[0];
              v168 = v165[-1].u16[0];
              v169 = v165->u16[0];
              v170 = v165[1].u16[0];
              ++*(v123 + 384);
              v171 = v1116.u16[v144];
              *(v123 + 388) += v171;
              *(v123 + 396) += v171 * v171;
              if (v168)
              {
                if (v168 != 0xFFFF)
                {
                  v172 = (v123 + 24 * v167);
                  v173 = v172[1];
                  *v172 += v168;
                  v172[1] = v173 + v169;
                  v172[2] += v170;
                }
              }

              else
              {
                v174 = (v123 + 12 * v122);
                v175.i32[0] = 1;
                v175.i32[1] = v169;
                v174[42] = vadd_s32(v174[42], v175);
                v174[43].i32[0] += v170;
              }

              ++v1107;
              if (v117 - 1 == v144)
              {
                goto LABEL_245;
              }

              v165 = (v165 + 2);
              v122 ^= 1u;
              --v118;
              if (++v144 == 8)
              {
                v117 -= 8;
                if (v117 + 1 > 1)
                {
                  goto LABEL_217;
                }

                goto LABEL_245;
              }
            }
          }
        }

        else
        {
          v129 = 8;
        }

        v1137 = vld2q_s16(v125);
        v125 += 16;
        v116 -= v129;
        v1138 = vld3q_s16(v124);
        v124 += 24;
        goto LABEL_234;
      }

      if (v33)
      {
        v542 = v1089;
        for (i = -2 * v32; i; i += 2)
        {
          sub_100008B90(a3 + 12, a3 + 300, 1, &v1119, v1125, v30, &v1107);
          sub_100008878(&v1117);
          sub_100008878(&v1123);
          sub_100008B90(a3 + 12, a3 + 300, 0, &v1121[1], &v1125[5], v30, &v1107);
          if (v1117 <= 1)
          {
            if (v1117 != 1)
            {
              if (v1117)
              {
                goto LABEL_1499;
              }

              goto LABEL_1441;
            }
          }

          else if (v1117 != 3)
          {
            if (v1117 == 4)
            {
              sub_10001B0D0();
            }

            if (v1117 != 2)
            {
LABEL_1499:
              sub_10001B128();
            }

LABEL_1441:
            sub_10001B0FC();
          }

          *&v1122 = v1122 + 2 * *(&v1117 + 1) + 2 * v1118;
          if (v1121[3])
          {
            --v1121[3];
            v544 = *(&v1122 + 1) + 4 * *(&v1118 + 1);
          }

          else
          {
            v544 = *(&v1122 + 1) + 2 * *(&v1118 + 1);
          }

          *(&v1122 + 1) = v544;
          LODWORD(v545) = vadd_s32(*(&v1121[1] + 4), 0x200000002).u32[0];
          HIDWORD(v545) = veor_s8(*(v1121 + 12), 0x100000001).i32[1];
          *(&v1121[1] + 4) = v545;
          if (v1123 <= 1)
          {
            if (v1123 != 1)
            {
              if (v1123)
              {
                goto LABEL_1501;
              }

              goto LABEL_1444;
            }
          }

          else if (v1123 != 3)
          {
            if (v1123 == 4)
            {
              sub_10001B0D0();
            }

            if (v1123 != 2)
            {
LABEL_1501:
              sub_10001B128();
            }

LABEL_1444:
            sub_10001B0FC();
          }

          *&v1126 = v1126 + 2 * *(&v1123 + 1) + 2 * v1124;
          if (v1125[7])
          {
            --v1125[7];
            v546 = *(&v1126 + 1) + 4 * *(&v1124 + 1);
          }

          else
          {
            v546 = *(&v1126 + 1) + 2 * *(&v1124 + 1);
          }

          *(&v1126 + 1) = v546;
          LODWORD(v547) = vadd_s32(*(&v1125[5] + 4), 0x200000002).u32[0];
          HIDWORD(v547) = veor_s8(*(v1125 + 44), 0x100000001).i32[1];
          *(&v1125[5] + 4) = v547;
          if (v542 == 2)
          {
            v548 = v29;
          }

          else
          {
            v548 = 0;
          }

          v30 += 404 * v548;
          if (v542 == 2)
          {
            v542 = v1089;
          }

          else
          {
            v542 -= 2;
          }
        }
      }

LABEL_1017:
      if (!*(a3 + 608))
      {
        goto LABEL_1095;
      }

      sub_100008008((a3 + 12), a1, a2, &v1117);
      v682 = *(a3 + 12);
      if (v682 <= 1)
      {
        if (!v682)
        {
          if (*(a3 + 16) != *(a3 + 160))
          {
            sub_10001AFF4();
          }

          if (*(a3 + 156))
          {
            v733 = 0;
            v734 = a3 + 487308;
            v735 = v991[137];
            v736 = v991[140];
            v1102 = v991[146];
            v1080 = v991[149];
            *v1050 = v991[143];
            v737 = *(a3 + 20);
            do
            {
              v738 = *(a3 + 140 + 4 * (v733 % *(a3 + 132)));
              v739 = v991 + 138;
              v740 = 5;
              do
              {
                bzero((v734 + *(v739 - 1)), *v739);
                v739 += 3;
                --v740;
              }

              while (v740);
              if (v737 >= v738)
              {
                v741 = v738;
              }

              else
              {
                v741 = v737;
              }

              sub_100008F60(a3, v741, &v1117, (v734 + v735), (v734 + v736), (v734 + *v1050));
              sub_1000090DC(v1084, (a3 + 132), a3 + 608, (v734 + v735), (v734 + v736), (v734 + v1102), (v734 + v1080), a3 + 58660 + 360 * *(a3 + 184) * v733);
              LOWORD(v737) = v737 - v738;
              ++v733;
            }

            while (v733 < *(a3 + 156));
          }

          goto LABEL_1095;
        }

        if (v682 == 1)
        {
          if (*(a3 + 16) != *(a3 + 160))
          {
            sub_10001AFF4();
          }

          v692 = a3 + 487308;
          v693 = v991[137];
          v694 = v991[140];
          v1099 = v991[146];
          v1077 = v991[149];
          v1060 = v991[143];
          if (*(a3 + 156))
          {
            v695 = 0;
            v696 = *(a3 + 20);
            do
            {
              v697 = *(a3 + 140 + 4 * (v695 % *(a3 + 132)));
              v698 = v991 + 138;
              v699 = 5;
              do
              {
                bzero((v692 + *(v698 - 1)), *v698);
                v698 += 3;
                --v699;
              }

              while (v699);
              if (v696 >= v697)
              {
                v700 = v697;
              }

              else
              {
                v700 = v696;
              }

              sub_100008F60(a3, v700, &v1117, (v692 + v693), (v692 + v694), (v692 + v1060));
              sub_1000090DC(v1084, (a3 + 132), a3 + 608, (v692 + v693), (v692 + v694), (v692 + v1099), (v692 + v1077), a3 + 58660 + 360 * *(a3 + 184) * v695);
              LOWORD(v696) = v696 - v697;
              ++v695;
            }

            while (v695 < *(a3 + 156));
            v693 = v991[137];
            v694 = v991[140];
            v1099 = v991[146];
            v1060 = v991[143];
            v1077 = v991[149];
          }

          if (*(a3 + 20) != *(a3 + 216))
          {
            sub_10001B020();
          }

          if (*(a3 + 212))
          {
            v701 = 0;
            v702 = 0;
            v703 = *(a3 + 16);
            do
            {
              v704 = *(a3 + 196 + 4 * (v702 % *(a3 + 188)));
              v705 = v991 + 138;
              v706 = 5;
              do
              {
                bzero((v692 + *(v705 - 1)), *v705);
                v705 += 3;
                --v706;
              }

              while (v706);
              if (v703 >= v704)
              {
                v707 = v704;
              }

              else
              {
                v707 = v703;
              }

              sub_1000099A8(a3, v701, v707, &v1117, (v692 + v693), (v692 + v694), (v692 + v1060));
              sub_1000090DC(v1084, (a3 + 188), a3 + 608, (v692 + v693), (v692 + v694), (v692 + v1099), (v692 + v1077), a3 + 242980 + 360 * *(a3 + 240) * v702);
              v701 += v704;
              LOWORD(v703) = v703 - v704;
              ++v702;
            }

            while (v702 < *(a3 + 212));
          }

          goto LABEL_1095;
        }
      }

      else
      {
        switch(v682)
        {
          case 2:
            if (*(a3 + 16) != *(a3 + 160))
            {
              sub_10001AFF4();
            }

            if (*(a3 + 156))
            {
              v708 = 0;
              v709 = a3 + 487308;
              v710 = v991[137];
              v711 = v991[140];
              v1100 = v991[146];
              v1078 = v991[149];
              v712 = *(a3 + 20);
              do
              {
                v713 = *(a3 + 140 + 4 * (v708 % *(a3 + 132)));
                v714 = v991 + 138;
                v715 = 5;
                do
                {
                  bzero((v709 + *(v714 - 1)), *v714);
                  v714 += 3;
                  --v715;
                }

                while (v715);
                if (v712 >= v713)
                {
                  v716 = v713;
                }

                else
                {
                  v716 = v712;
                }

                sub_100009BDC(a3 + 12, v716, &v1117, (v709 + v710), (v709 + v711));
                sub_1000090DC(v1084, (a3 + 132), a3 + 608, (v709 + v710), (v709 + v711), (v709 + v1100), (v709 + v1078), a3 + 58660 + 360 * *(a3 + 184) * v708);
                LOWORD(v712) = v712 - v713;
                ++v708;
              }

              while (v708 < *(a3 + 156));
            }

            goto LABEL_1095;
          case 3:
            if (*(a3 + 16) != *(a3 + 160))
            {
              sub_10001AFF4();
            }

            v717 = a3 + 487308;
            v718 = v991[137];
            v719 = v991[140];
            v1101 = v991[146];
            v1079 = v991[149];
            v1061 = v991[143];
            if (*(a3 + 156))
            {
              v720 = 0;
              v721 = *(a3 + 20);
              do
              {
                v722 = *(a3 + 140 + 4 * (v720 % *(a3 + 132)));
                v723 = v991 + 138;
                v724 = 5;
                do
                {
                  bzero((v717 + *(v723 - 1)), *v723);
                  v723 += 3;
                  --v724;
                }

                while (v724);
                if (v721 >= v722)
                {
                  v725 = v722;
                }

                else
                {
                  v725 = v721;
                }

                sub_100008F60(a3, v725, &v1117, (v717 + v718), (v717 + v719), (v717 + v1061));
                sub_1000090DC(v1084, (a3 + 132), a3 + 608, (v717 + v718), (v717 + v719), (v717 + v1101), (v717 + v1079), a3 + 58660 + 360 * *(a3 + 184) * v720);
                LOWORD(v721) = v721 - v722;
                ++v720;
              }

              while (v720 < *(a3 + 156));
              v718 = v991[137];
              v719 = v991[140];
              v1101 = v991[146];
              v1061 = v991[143];
              v1079 = v991[149];
            }

            if (*(a3 + 20) != *(a3 + 216))
            {
              sub_10001B020();
            }

            if (*(a3 + 212))
            {
              v726 = 0;
              v727 = 0;
              v728 = *(a3 + 16);
              do
              {
                v729 = *(a3 + 196 + 4 * (v727 % *(a3 + 188)));
                v730 = v991 + 138;
                v731 = 5;
                do
                {
                  bzero((v717 + *(v730 - 1)), *v730);
                  v730 += 3;
                  --v731;
                }

                while (v731);
                if (v728 >= v729)
                {
                  v732 = v729;
                }

                else
                {
                  v732 = v728;
                }

                sub_1000099A8(a3, v726, v732, &v1117, (v717 + v718), (v717 + v719), (v717 + v1061));
                sub_1000090DC(v1084, (a3 + 188), a3 + 608, (v717 + v718), (v717 + v719), (v717 + v1101), (v717 + v1079), a3 + 242980 + 360 * *(a3 + 240) * v727);
                v726 += v729;
                LOWORD(v728) = v728 - v729;
                ++v727;
              }

              while (v727 < *(a3 + 212));
            }

            goto LABEL_1095;
          case 4:
            if (*(a3 + 16) != *(a3 + 160))
            {
              sub_10001AFF4();
            }

            v683 = a3 + 487308;
            if (*(a3 + 156))
            {
              v684 = 0;
              v685 = v991[137];
              v686 = v991[140];
              v1098 = v991[146];
              v1076 = v991[149];
              v687 = *(a3 + 20);
              do
              {
                v688 = *(a3 + 140 + 4 * (v684 % *(a3 + 132)));
                v689 = v991 + 138;
                v690 = 5;
                do
                {
                  bzero((v683 + *(v689 - 1)), *v689);
                  v689 += 3;
                  --v690;
                }

                while (v690);
                if (v687 >= v688)
                {
                  v691 = v688;
                }

                else
                {
                  v691 = v687;
                }

                sub_100009BDC(a3 + 12, v691, &v1117, (v683 + v685), (v683 + v686));
                sub_1000090DC(v1084, (a3 + 132), a3 + 608, (v683 + v685), (v683 + v686), (v683 + v1098), (v683 + v1076), a3 + 58660 + 360 * *(a3 + 184) * v684);
                LOWORD(v687) = v687 - v688;
                ++v684;
              }

              while (v684 < *(a3 + 156));
            }

            if (*(a3 + 20) != *(a3 + 216))
            {
              sub_10001B020();
            }

            if (*(a3 + 212))
            {
              sub_10001B25C((v991 + 137), a3 + 487308);
            }

            goto LABEL_1095;
        }
      }

      sub_10001B078();
    }

    v252 = *(a3 + 20);
    v1091 = *(a3 + 28);
    v1107 = 0;
    if (!v252)
    {
      goto LABEL_1017;
    }

    v253 = v1091;
    while (1)
    {
      v254 = 2 * *(a3 + 16);
      if (v254 >= 1)
      {
        break;
      }

LABEL_368:
      sub_100008878(&v1117);
      sub_100008878(&v1123);
      if (v253 == 1)
      {
        v321 = v29;
      }

      else
      {
        v321 = 0;
      }

      v30 += 404 * v321;
      if (v253 == 1)
      {
        v253 = v1091;
      }

      else
      {
        --v253;
      }

      if (!--v252)
      {
        goto LABEL_1017;
      }
    }

    v255 = 0;
    v256 = vdupq_n_s16(*(a3 + 304));
    v257 = 2 * *(a3 + 24);
    v258 = 2 * v1119;
    v259 = v30 - 404;
    v260 = *(&v1120 + 1);
    v261 = v1121[0];
    v262 = v254 - 2;
LABEL_331:
    v263 = v1125[3];
    v264 = v1125[4];
    v265 = v1125[0];
    _ZF = v258 == 0;
    if (v258)
    {
      v267 = v261;
    }

    else
    {
      v258 = 2 * LODWORD(v1125[0]);
      v267 = v1125[4];
    }

    if (_ZF)
    {
      v260 = v1125[3];
    }

    if (v258 < 16)
    {
      v268 = v254;
      if (v258 != v254)
      {
        v273 = v258 == 1;
        if (v258 < 1)
        {
          sub_10001B154();
        }

        v274 = v258 >> 1;
        if (!v273)
        {
          if (v274 <= 1)
          {
            v275 = 1;
          }

          else
          {
            v275 = v274;
          }

          v276 = v267 + 5;
          v277 = &v1112;
          v278 = &v1113;
          v279 = &v1114;
          v280 = &v1115;
          v281 = &v1116;
          v282 = &v1108;
          do
          {
            v282->i16[0] = *v260;
            v282 = (v282 + 2);
            v281->i16[0] = v260[1];
            v281 = (v281 + 2);
            v280->i16[0] = v260[2];
            v280 = (v280 + 2);
            v279->i16[0] = *(v276 - 2);
            v279 = (v279 + 2);
            v278->i16[0] = *(v276 - 1);
            v278 = (v278 + 2);
            v283 = *v276;
            v276 += 6;
            v277->i16[0] = v283;
            v277 = (v277 + 2);
            v260 += 4;
            --v275;
          }

          while (v275);
        }

        LODWORD(v284) = v254 >> 1;
        if (v254 <= 15)
        {
          v284 = v284;
        }

        else
        {
          v284 = 8;
        }

        if (v274 >= v284)
        {
          v29 = v1067;
        }

        else
        {
          v285 = v274;
          v29 = v1067;
          do
          {
            v1108.i16[v285] = *v263;
            v1116.i16[v285] = v263[1];
            v1115.i16[v285] = v263[2];
            v1114.i16[v285] = v264[3];
            v1113.i16[v285] = v264[4];
            v1112.i16[v285] = v264[5];
            v263 += 4;
            v264 += 6;
            ++v285;
          }

          while (v284 != v285);
        }

        v1141.val[0] = v1108;
        v1141.val[1] = v1116;
        v270 = v1114;
        v1141.val[2] = v1115;
        v272 = v1112;
        v271 = v1113;
        v258 = 2 * (v265 - v284 + v274);
        v261 = v264;
        v260 = v263;
LABEL_356:
        v286 = 0;
        v287.i64[0] = 0x2000200020002;
        v287.i64[1] = 0x2000200020002;
        v288.i64[0] = 0x4000400040004;
        v288.i64[1] = 0x4000400040004;
        v289 = vceqzq_s16(vandq_s8(v270, v288));
        v290.i64[0] = 0x7000700070007;
        v290.i64[1] = 0x7000700070007;
        v291 = vandq_s8(v271, v290);
        v292.i64[0] = 0xF000F000F000FLL;
        v292.i64[1] = 0xF000F000F000FLL;
        v293 = vandq_s8(v272, v292);
        v294 = vshrq_n_u16(v1141.val[0], 4uLL);
        v295 = vshrq_n_u16(v1141.val[1], 4uLL);
        v296 = vshrq_n_u16(v1141.val[2], 4uLL);
        v297 = vshrq_n_s16(v271, 3uLL);
        v298 = vshrq_n_u16(v272, 4uLL);
        v299 = vqshlq_n_u16(vabsq_s16(vshrq_n_s16(v270, 3uLL)), 4uLL);
        v300 = vceqzq_s16(vandq_s8(v270, v287));
        v287.i64[0] = 0x5000500050005;
        v287.i64[1] = 0x5000500050005;
        v301 = vcgtq_u16(v291, v287);
        v302 = vorrq_s8(v301, v300);
        v303 = vaddq_s16(v291, v301);
        v304 = vshlq_u16(vqshlq_n_u16(vabsq_s16(v297), 4uLL), v301);
        v301.i64[0] = 0x1000100010001;
        v301.i64[1] = 0x1000100010001;
        v305 = vandq_s8(vaddq_s16(v293, vbicq_s8(v301, v270)), v302);
        v306 = vaddq_s16(v303, vandq_s8(veorq_s8(vcltzq_s16(v270), vcgezq_s16(v297)), v290));
        v307 = vmulq_s16(vshrq_n_u16(v305, 1uLL), v298);
        v308 = vshrq_n_u16(v304, 1uLL);
        v309 = vqshlq_s16(vqdmulhq_s16(v308, v307), v256);
        v310 = vqdmulhq_s16(v309, v308);
        v311 = vqdmulhq_s16(v309, vshrq_n_u16(v299, 1uLL));
        v312 = vceqzq_s16(v305);
        v1116 = v295;
        v1108 = vornq_s8(vandq_s8(v305, v289), v289);
        v1109 = vbslq_s8(v312, v295, v310);
        v1110 = vbslq_s8(v312, v294, v311);
        v1111 = vbslq_s8(v312, v296, v306);
        while (1)
        {
          if (v255)
          {
            v313 = 0;
          }

          else
          {
            v255 = v257;
            v313 = 404;
          }

          v259 += v313;
          v314 = v1108.u16[v286];
          ++*(v259 + 384);
          v315 = v1116.u16[v286];
          *(v259 + 388) += v315;
          *(v259 + 396) += v315 * v315;
          if (v314)
          {
            if (v314 != 0xFFFF)
            {
              v316 = v1110.u16[v286];
              v317 = (v259 + 24 * v1111.u16[v286]);
              v318 = v317[1] + *(&v1108 + v286 * 2 + 16);
              *v317 += v314;
              v317[1] = v318;
              v317[2] += v316;
            }
          }

          else
          {
            v319 = v1111.u16[v286];
            v320.i32[0] = 1;
            v320.i32[3] = 1;
            v320.i32[1] = *(&v1108 + v286 * 2 + 16);
            v320.i32[2] = v1110.u16[v286];
            *(v259 + 336) = vaddq_s32(*(v259 + 336), v320);
            *(v259 + 352) += v320.i32[1];
            *(v259 + 356) += v319;
          }

          ++v1107;
          if (v262 == (v286 * 2))
          {
            goto LABEL_368;
          }

          v255 -= 2;
          if (++v286 == 8)
          {
            v262 -= 16;
            v857 = v254 <= 16;
            v254 -= 16;
            if (v857)
            {
              goto LABEL_368;
            }

            goto LABEL_331;
          }
        }
      }
    }

    else
    {
      v268 = 16;
    }

    v1141 = vld4q_s16(v260);
    v260 += 32;
    v269 = v267;
    v1139 = vld3q_s16(v269);
    v269 += 24;
    v1140 = vld3q_s16(v269);
    v270 = vuzp2q_s16(v1139.val[0], v1140.val[0]);
    v271 = vuzp2q_s16(v1139.val[1], v1140.val[1]);
    v272 = vuzp2q_s16(v1139.val[2], v1140.val[2]);
    v261 = v267 + 48;
    v258 -= v268;
    goto LABEL_356;
  }

  if (v5 - 2 >= 2)
  {
    if (v5 == 4)
    {
      sub_10001AE3C();
    }

    sub_10001B414();
  }

  sub_1000083D8(a3 + 12, a2, &v1117);
  v1088 = *(a3 + 32);
  v12 = a3 + 6948;
  v13 = *(a3 + 12);
  if (v1084)
  {
    if (v13 > 4)
    {
      sub_10001AF70();
    }

    if (v13 != 2)
    {
      v14 = *(a3 + 20);
      v15 = 2 * v14;
      v1066 = 2 * *(a3 + 28);
      v1107 = 0;
      if (v13 > 1)
      {
        if (v13 == 3)
        {
          if (v15)
          {
            v16 = v1066;
            v17 = -2 * v14;
            while (1)
            {
              sub_10000A128(a3 + 12, a3 + 300, 0, &v1120, &v1124, v12, &v1107, v6, v7);
              if (v1117 <= 2)
              {
                break;
              }

              if (v1117 == 3)
              {
                goto LABEL_18;
              }

              if (v1117 != 4)
              {
                goto LABEL_1547;
              }

              if (v1121[0])
              {
                --v1121[0];
                v20 = v1121[1] + 4 * *(&v1117 + 1);
              }

              else
              {
                v20 = v1121[1] + 2 * *(&v1117 + 1);
              }

              v1121[1] = v20;
              DWORD1(v1120) += 2;
LABEL_24:
              if (SLODWORD(v1121[2]) <= 2)
              {
                if (LODWORD(v1121[2]) != 1)
                {
                  if (!LODWORD(v1121[2]) || LODWORD(v1121[2]) == 2)
                  {
                    sub_10001AE94();
                  }

LABEL_1548:
                  sub_10001AEC0();
                }

LABEL_30:
                if (v1125[0])
                {
                  --v1125[0];
                  v23 = v1125[1] + 4 * v1121[3];
                }

                else
                {
                  v23 = v1125[1] + 2 * v1121[3];
                }

                v1125[1] = v23;
                v19.i32[0] = vadd_s32(*(&v1124 + 4), 0x200000002).u32[0];
                *v18.i8 = veor_s8(*(&v1124 + 4), 0x100000001);
                v19.i32[1] = v18.i32[1];
                *(&v1124 + 4) = v19.i64[0];
                goto LABEL_36;
              }

              if (LODWORD(v1121[2]) == 3)
              {
                goto LABEL_30;
              }

              if (LODWORD(v1121[2]) != 4)
              {
                goto LABEL_1548;
              }

              if (v1125[0])
              {
                --v1125[0];
                v22 = v1125[1] + 4 * v1121[3];
              }

              else
              {
                v22 = v1125[1] + 2 * v1121[3];
              }

              v1125[1] = v22;
              DWORD1(v1124) += 2;
LABEL_36:
              sub_10000A128(a3 + 12, a3 + 300, 1, &v1118, &v1122, v12, &v1107, v18, v19);
              if (v1117 > 2)
              {
                if ((v1117 - 3) >= 2)
                {
LABEL_1455:
                  sub_10001AE68();
                }

                goto LABEL_42;
              }

              if (v1117)
              {
                if (v1117 != 1)
                {
                  if (v1117 != 2)
                  {
                    goto LABEL_1455;
                  }

                  *(&v1119 + 1) += 2 * *(&v1117 + 1);
                  v24 = DWORD1(v1118) + 1;
                  goto LABEL_46;
                }

LABEL_42:
                if (v1119)
                {
                  *&v1119 = v1119 - 1;
                  v25 = *(&v1119 + 1) + 2 * *(&v1117 + 1);
                }

                else
                {
                  v25 = *(&v1119 + 1) + 4 * *(&v1117 + 1);
                }

                *(&v1119 + 1) = v25;
                v24 = DWORD1(v1118) + 2;
LABEL_46:
                DWORD1(v1118) = v24;
                goto LABEL_48;
              }

              *(&v1119 + 1) += 2 * *(&v1117 + 1);
              v7.i32[0] = vadd_s32(*(&v1118 + 4), 0x100000001).u32[0];
              *v6.i8 = veor_s8(*(&v1118 + 4), 0x100000001);
              v7.i32[1] = v6.i32[1];
              *(&v1118 + 4) = v7.i64[0];
LABEL_48:
              if (SLODWORD(v1121[2]) > 2)
              {
                if ((LODWORD(v1121[2]) - 3) >= 2)
                {
LABEL_1456:
                  sub_10001AE68();
                }
              }

              else
              {
                if (!LODWORD(v1121[2]))
                {
                  *(&v1123 + 1) += 2 * v1121[3];
                  v7.i32[0] = vadd_s32(*(&v1122 + 4), 0x100000001).u32[0];
                  *v6.i8 = veor_s8(*(&v1122 + 4), 0x100000001);
                  v7.i32[1] = v6.i32[1];
                  *(&v1122 + 4) = v7.i64[0];
                  goto LABEL_59;
                }

                if (LODWORD(v1121[2]) != 1)
                {
                  if (LODWORD(v1121[2]) != 2)
                  {
                    goto LABEL_1456;
                  }

                  *(&v1123 + 1) += 2 * v1121[3];
                  v26 = DWORD1(v1122) + 1;
                  goto LABEL_58;
                }
              }

              if (v1123)
              {
                *&v1123 = v1123 - 1;
                v27 = *(&v1123 + 1) + 2 * v1121[3];
              }

              else
              {
                v27 = *(&v1123 + 1) + 4 * v1121[3];
              }

              *(&v1123 + 1) = v27;
              v26 = DWORD1(v1122) + 2;
LABEL_58:
              DWORD1(v1122) = v26;
LABEL_59:
              v28 = v1088;
              if (v16 != 2)
              {
                v28 = 0;
              }

              v12 += 404 * v28;
              if (v16 == 2)
              {
                v16 = v1066;
              }

              else
              {
                v16 -= 2;
              }

              v17 += 2;
              if (!v17)
              {
                goto LABEL_619;
              }
            }

            if (v1117 != 1)
            {
              if (!v1117 || v1117 == 2)
              {
                sub_10001AE94();
              }

LABEL_1547:
              sub_10001AEC0();
            }

LABEL_18:
            if (v1121[0])
            {
              --v1121[0];
              v21 = v1121[1] + 4 * *(&v1117 + 1);
            }

            else
            {
              v21 = v1121[1] + 2 * *(&v1117 + 1);
            }

            v1121[1] = v21;
            v19.i32[0] = vadd_s32(*(&v1120 + 4), 0x200000002).u32[0];
            *v18.i8 = veor_s8(*(&v1120 + 4), 0x100000001);
            v19.i32[1] = v18.i32[1];
            *(&v1120 + 4) = v19.i64[0];
            goto LABEL_24;
          }

          goto LABEL_619;
        }

        if (v15)
        {
          v412 = v1066;
          v413 = -2 * v14;
          while (1)
          {
            sub_10000A4E8(a3 + 12, a3 + 300, &v1120, &v1124, v12, &v1107);
            if (v1117 <= 2)
            {
              break;
            }

            if (v1117 == 3)
            {
              goto LABEL_490;
            }

            if (v1117 != 4)
            {
              goto LABEL_1551;
            }

            if (v1121[0])
            {
              --v1121[0];
              v414 = v1121[1] + 4 * *(&v1117 + 1);
            }

            else
            {
              v414 = v1121[1] + 2 * *(&v1117 + 1);
            }

            v1121[1] = v414;
            DWORD1(v1120) += 2;
LABEL_496:
            if (SLODWORD(v1121[2]) <= 2)
            {
              if (LODWORD(v1121[2]) != 1)
              {
                if (!LODWORD(v1121[2]) || LODWORD(v1121[2]) == 2)
                {
                  sub_10001AE94();
                }

LABEL_1552:
                sub_10001AEC0();
              }

LABEL_502:
              if (v1125[0])
              {
                --v1125[0];
                v418 = v1125[1] + 4 * v1121[3];
              }

              else
              {
                v418 = v1125[1] + 2 * v1121[3];
              }

              v1125[1] = v418;
              LODWORD(v419) = vadd_s32(*(&v1124 + 4), 0x200000002).u32[0];
              HIDWORD(v419) = veor_s8(*(&v1124 + 4), 0x100000001).i32[1];
              *(&v1124 + 4) = v419;
              goto LABEL_508;
            }

            if (LODWORD(v1121[2]) == 3)
            {
              goto LABEL_502;
            }

            if (LODWORD(v1121[2]) != 4)
            {
              goto LABEL_1552;
            }

            if (v1125[0])
            {
              --v1125[0];
              v417 = v1125[1] + 4 * v1121[3];
            }

            else
            {
              v417 = v1125[1] + 2 * v1121[3];
            }

            v1125[1] = v417;
            DWORD1(v1124) += 2;
LABEL_508:
            sub_10000A4E8(a3 + 12, a3 + 300, &v1118, &v1122, v12, &v1107);
            if (v1117 > 2)
            {
              if ((v1117 - 3) >= 2)
              {
LABEL_1483:
                sub_10001AE68();
              }

              goto LABEL_514;
            }

            if (v1117)
            {
              if (v1117 != 1)
              {
                if (v1117 != 2)
                {
                  goto LABEL_1483;
                }

                *(&v1119 + 1) += 2 * *(&v1117 + 1);
                v420 = DWORD1(v1118) + 1;
                goto LABEL_518;
              }

LABEL_514:
              if (v1119)
              {
                *&v1119 = v1119 - 1;
                v421 = *(&v1119 + 1) + 2 * *(&v1117 + 1);
              }

              else
              {
                v421 = *(&v1119 + 1) + 4 * *(&v1117 + 1);
              }

              *(&v1119 + 1) = v421;
              v420 = DWORD1(v1118) + 2;
LABEL_518:
              DWORD1(v1118) = v420;
              goto LABEL_520;
            }

            *(&v1119 + 1) += 2 * *(&v1117 + 1);
            LODWORD(v422) = vadd_s32(*(&v1118 + 4), 0x100000001).u32[0];
            HIDWORD(v422) = veor_s8(*(&v1118 + 4), 0x100000001).i32[1];
            *(&v1118 + 4) = v422;
LABEL_520:
            if (SLODWORD(v1121[2]) > 2)
            {
              if ((LODWORD(v1121[2]) - 3) >= 2)
              {
LABEL_1484:
                sub_10001AE68();
              }
            }

            else
            {
              if (!LODWORD(v1121[2]))
              {
                *(&v1123 + 1) += 2 * v1121[3];
                LODWORD(v426) = vadd_s32(*(&v1122 + 4), 0x100000001).u32[0];
                HIDWORD(v426) = veor_s8(*(&v1122 + 4), 0x100000001).i32[1];
                *(&v1122 + 4) = v426;
                goto LABEL_531;
              }

              if (LODWORD(v1121[2]) != 1)
              {
                if (LODWORD(v1121[2]) != 2)
                {
                  goto LABEL_1484;
                }

                *(&v1123 + 1) += 2 * v1121[3];
                v423 = DWORD1(v1122) + 1;
                goto LABEL_530;
              }
            }

            if (v1123)
            {
              *&v1123 = v1123 - 1;
              v424 = *(&v1123 + 1) + 2 * v1121[3];
            }

            else
            {
              v424 = *(&v1123 + 1) + 4 * v1121[3];
            }

            *(&v1123 + 1) = v424;
            v423 = DWORD1(v1122) + 2;
LABEL_530:
            DWORD1(v1122) = v423;
LABEL_531:
            v425 = v1088;
            if (v412 != 2)
            {
              v425 = 0;
            }

            v12 += 404 * v425;
            if (v412 == 2)
            {
              v412 = v1066;
            }

            else
            {
              v412 -= 2;
            }

            v413 += 2;
            if (!v413)
            {
              goto LABEL_619;
            }
          }

          if (v1117 != 1)
          {
            if (!v1117 || v1117 == 2)
            {
              sub_10001AE94();
            }

LABEL_1551:
            sub_10001AEC0();
          }

LABEL_490:
          if (v1121[0])
          {
            --v1121[0];
            v415 = v1121[1] + 4 * *(&v1117 + 1);
          }

          else
          {
            v415 = v1121[1] + 2 * *(&v1117 + 1);
          }

          v1121[1] = v415;
          LODWORD(v416) = vadd_s32(*(&v1120 + 4), 0x200000002).u32[0];
          HIDWORD(v416) = veor_s8(*(&v1120 + 4), 0x100000001).i32[1];
          *(&v1120 + 4) = v416;
          goto LABEL_496;
        }

LABEL_619:
        v4 = v991;
        goto LABEL_620;
      }

      if (!v13)
      {
        if (!v15)
        {
          goto LABEL_619;
        }

        v54 = vdupq_n_s16(*(a3 + 304));
        v55 = *(a3 + 24);
        v1022 = *(a3 + 16);
        v57 = *(&v1119 + 1);
        v56 = v1119;
        v58 = v1123;
        v59 = DWORD1(v1122);
        v992 = *(&v1117 + 1);
        v984 = 4 * *(&v1117 + 1);
        v987 = v1121[3];
        v981 = 4 * v1121[3];
        v60.i64[0] = 0x2000200020002;
        v60.i64[1] = 0x2000200020002;
        v61.i64[0] = 0x4000400040004;
        v61.i64[1] = 0x4000400040004;
        v8.i64[0] = 0x7000700070007;
        v8.i64[1] = 0x7000700070007;
        v62.i64[0] = 0xF000F000F000FLL;
        v62.i64[1] = 0xF000F000F000FLL;
        v9.i64[0] = 0x5000500050005;
        v9.i64[1] = 0x5000500050005;
        v63.i64[0] = 0x1000100010001;
        v63.i64[1] = 0x1000100010001;
        v1015 = v1118;
        v64 = v1066;
        v65 = DWORD1(v1118);
        __src = v1117;
        v997 = v1121[2];
        while (1)
        {
          v1029 = v65;
          v1037 = v59;
          *v1044 = v58;
          v1052 = v56;
          v66 = v1015;
          if (v1022 < 1)
          {
            goto LABEL_178;
          }

          v10.i32[0] = 0;
          v67 = 0;
          v68 = &v1122 + 8;
          v66 = v1015;
          if (v1015)
          {
            v68 = &v1118 + 8;
          }

          v69 = *v68;
          v11.i32[0] = *v68 & 1;
          v70 = vdup_lane_s32(vceq_s32(*v11.i8, *v10.i8), 0);
          v71 = v12 - 404;
          v10 = vcltzq_s16(vshlq_n_s16(vmovl_u8(vorr_s8((*&v70 & 0xFF00FF00FF00FF00), (*&vmvn_s8(v70) & 0xFF00FF00FF00FFLL))), 0xFuLL));
          v72 = v57;
          v73 = v1022;
LABEL_148:
          v74 = *(&v1123 + 1);
          v75 = v1122;
          if (v66)
          {
            v76 = v66;
          }

          else
          {
            v76 = v1122;
          }

          if (!v66)
          {
            v72 = *(&v1123 + 1);
          }

          if (v76 > 7)
          {
            break;
          }

          v77 = v73;
          if (v76 == v73)
          {
            goto LABEL_156;
          }

          if (v76 < 1)
          {
            sub_10001AF18();
          }

          v78 = 0;
          v79 = 2 * v76;
          do
          {
            v1108.i16[v78 / 2] = *v72;
            v1116.i16[v78 / 2] = v72[1];
            v1115.i16[v78 / 2] = v72[2];
            v1114.i16[v78 / 2] = v72[3];
            v72 += 4;
            v78 += 2;
          }

          while (v79 != v78);
          if (v73 >= 8)
          {
            v80 = 8;
          }

          else
          {
            v80 = v73;
          }

          if (v76 < v80)
          {
            v81 = &v1114.i16[v79 / 2];
            v82 = &v1115.i16[v79 / 2];
            v83 = &v1116.i16[v79 / 2];
            v84 = &v1108.i16[v79 / 2];
            v85 = v76;
            do
            {
              *v84++ = *v74;
              *v83++ = v74[1];
              *v82++ = v74[2];
              *v81++ = v74[3];
              v74 += 4;
              ++v85;
            }

            while (v80 > v85);
          }

          v11 = v1108;
          v1142.val[1] = v1116;
          v1142.val[3] = v1114;
          v1142.val[2] = v1115;
          v66 = v75 - v80 + v76;
          v72 = v74;
LABEL_167:
          v86 = 0;
          v87 = vceqzq_s16(vandq_s8(v11, v61));
          v88 = vandq_s8(v1142.val[1], v8);
          v89 = vshrq_n_s16(v11, 3uLL);
          v90 = vaddq_s16(v1142.val[3], vbslq_s8(v10, vnegq_s16(v89), v89));
          v91 = vshrq_n_s16(v1142.val[1], 3uLL);
          v92 = vcgtq_u16(v88, v9);
          v93 = vandq_s8(vaddq_s16(vandq_s8(v1142.val[2], v62), vbicq_s8(v63, v11)), vorrq_s8(v92, vceqzq_s16(vandq_s8(v11, v60))));
          v94 = vaddq_s16(vaddq_s16(v88, v92), vandq_s8(veorq_s8(vcltzq_s16(v11), vcgezq_s16(v91)), v8));
          v95 = vshrq_n_u16(vshlq_u16(vqshlq_n_u16(vabsq_s16(v91), 4uLL), v92), 1uLL);
          v96 = vqshlq_s16(vqdmulhq_s16(v95, vmulq_s16(vshrq_n_u16(v93, 1uLL), vshrq_n_u16(v1142.val[2], 4uLL))), v54);
          v97 = vqdmulhq_s16(v96, v95);
          v98 = vqdmulhq_s16(v96, vshrq_n_u16(vqshlq_n_u16(vabsq_s16(v89), 4uLL), 1uLL));
          v99 = vceqzq_s16(v93);
          v1108 = v94;
          v1109 = vornq_s8(vandq_s8(v93, v87), v87);
          v1110 = vbslq_s8(v99, v90, v97);
          v1111 = vbslq_s8(v99, v1142.val[3], v98);
          v1116 = v90;
          v100 = &v1110;
          while (1)
          {
            if (v67)
            {
              v101 = 0;
            }

            else
            {
              v67 = v55;
              v101 = 404;
            }

            v71 += v101;
            v102 = v100[-2].u16[0];
            v103 = v100[-1].u16[0];
            v104 = v100->u16[0];
            v105 = v100[1].u16[0];
            ++*(v71 + 384);
            v106 = v1116.u16[v86];
            *(v71 + 388) += v106;
            *(v71 + 396) += v106 * v106;
            if (v103)
            {
              if (v103 != 0xFFFF)
              {
                v107 = (v71 + 24 * v102);
                v108 = v107[1] + v104;
                *v107 += v103;
                v107[1] = v108;
                v107[2] += v105;
              }
            }

            else
            {
              v109 = (v71 + 12 * v69);
              v110.i32[0] = 1;
              v110.i32[1] = v104;
              *v11.i8 = vadd_s32(v109[42], v110);
              v109[42] = *v11.i8;
              v109[43].i32[0] += v105;
            }

            ++v1107;
            if (v73 - 1 == v86)
            {
              break;
            }

            v100 = (v100 + 2);
            v69 ^= 1u;
            --v67;
            if (++v86 == 8)
            {
              v73 -= 8;
              if (v73 + 1 > 1)
              {
                goto LABEL_148;
              }

              break;
            }
          }

LABEL_178:
          if (v66)
          {
            sub_10001AF44();
          }

          v56 = v1052;
          if (__src > 2)
          {
            v58 = *v1044;
            v111 = v1037;
            v112 = v997;
            if ((__src - 3) >= 2)
            {
LABEL_1469:
              sub_10001AE68();
            }

LABEL_185:
            if (v1052)
            {
              v56 = v1052 - 1;
              *&v1119 = v1052 - 1;
              v57 += v992;
            }

            else
            {
              v57 = (v57 + v984);
            }

            *(&v1119 + 1) = v57;
            v65 = v1029 + 2;
LABEL_189:
            DWORD1(v1118) = v65;
            goto LABEL_191;
          }

          v58 = *v1044;
          v111 = v1037;
          v112 = v997;
          if (__src)
          {
            if (__src == 1)
            {
              goto LABEL_185;
            }

            if (__src != 2)
            {
              goto LABEL_1469;
            }

            v57 += v992;
            *(&v1119 + 1) = v57;
            v65 = v1029 + 1;
            goto LABEL_189;
          }

          v57 += v992;
          *(&v1119 + 1) = v57;
          v65 = v1029 + 1;
          *(&v1118 + 4) = __PAIR64__(DWORD2(v1118), v1029 + 1) ^ 0x100000000;
LABEL_191:
          if (v112 > 2)
          {
            if ((v112 - 3) >= 2)
            {
LABEL_1470:
              sub_10001AE68();
            }
          }

          else
          {
            if (!v112)
            {
              *(&v1123 + 1) += 2 * v987;
              v59 = v111 + 1;
              *(&v1122 + 4) = __PAIR64__(DWORD2(v1122), v59) ^ 0x100000000;
              goto LABEL_203;
            }

            if (v112 != 1)
            {
              if (v112 != 2)
              {
                goto LABEL_1470;
              }

              *(&v1123 + 1) += 2 * v987;
              v59 = v111 + 1;
              goto LABEL_201;
            }
          }

          if (v58)
          {
            *&v1123 = --v58;
            v113 = *(&v1123 + 1) + 2 * v987;
          }

          else
          {
            v113 = *(&v1123 + 1) + v981;
          }

          *(&v1123 + 1) = v113;
          v59 = v111 + 2;
LABEL_201:
          DWORD1(v1122) = v59;
LABEL_203:
          v114 = v1088;
          if (v64 != 1)
          {
            v114 = 0;
          }

          v12 += 404 * v114;
          if (v64 == 1)
          {
            v64 = v1066;
          }

          else
          {
            --v64;
          }

          if (!--v15)
          {
            goto LABEL_619;
          }
        }

        v77 = 8;
LABEL_156:
        v66 = v76 - v77;
        *v11.i8 = vld4q_s16(v72);
        v72 += 32;
        goto LABEL_167;
      }

      if (!v15)
      {
        goto LABEL_619;
      }

      v434 = v1066;
      v435 = -2 * v14;
      while (1)
      {
        sub_10000A128(a3 + 12, a3 + 300, 1, &v1118, &v1122, v12, &v1107, v6, v7);
        if (v1117 > 2)
        {
          break;
        }

        if (v1117)
        {
          if (v1117 != 1)
          {
            if (v1117 != 2)
            {
              goto LABEL_1489;
            }

            *(&v1119 + 1) += 2 * *(&v1117 + 1);
            v438 = DWORD1(v1118) + 1;
            goto LABEL_575;
          }

LABEL_571:
          if (v1119)
          {
            *&v1119 = v1119 - 1;
            v439 = *(&v1119 + 1) + 2 * *(&v1117 + 1);
          }

          else
          {
            v439 = *(&v1119 + 1) + 4 * *(&v1117 + 1);
          }

          *(&v1119 + 1) = v439;
          v438 = DWORD1(v1118) + 2;
LABEL_575:
          DWORD1(v1118) = v438;
          goto LABEL_576;
        }

        *(&v1119 + 1) += 2 * *(&v1117 + 1);
        v437.i32[0] = vadd_s32(*(&v1118 + 4), 0x100000001).u32[0];
        *v436.i8 = veor_s8(*(&v1118 + 4), 0x100000001);
        v437.i32[1] = v436.i32[1];
        *(&v1118 + 4) = v437.i64[0];
LABEL_576:
        if (SLODWORD(v1121[2]) > 2)
        {
          if ((LODWORD(v1121[2]) - 3) >= 2)
          {
LABEL_1490:
            sub_10001AE68();
          }

          goto LABEL_582;
        }

        if (LODWORD(v1121[2]))
        {
          if (LODWORD(v1121[2]) != 1)
          {
            if (LODWORD(v1121[2]) != 2)
            {
              goto LABEL_1490;
            }

            *(&v1123 + 1) += 2 * v1121[3];
            v440 = DWORD1(v1122) + 1;
            goto LABEL_586;
          }

LABEL_582:
          if (v1123)
          {
            *&v1123 = v1123 - 1;
            v441 = *(&v1123 + 1) + 2 * v1121[3];
          }

          else
          {
            v441 = *(&v1123 + 1) + 4 * v1121[3];
          }

          *(&v1123 + 1) = v441;
          v440 = DWORD1(v1122) + 2;
LABEL_586:
          DWORD1(v1122) = v440;
          goto LABEL_587;
        }

        *(&v1123 + 1) += 2 * v1121[3];
        v437.i32[0] = vadd_s32(*(&v1122 + 4), 0x100000001).u32[0];
        *v436.i8 = veor_s8(*(&v1122 + 4), 0x100000001);
        v437.i32[1] = v436.i32[1];
        *(&v1122 + 4) = v437.i64[0];
LABEL_587:
        sub_10000A128(a3 + 12, a3 + 300, 0, &v1120, &v1124, v12, &v1107, v436, v437);
        if (v1117 <= 2)
        {
          if (v1117 != 1)
          {
            if (!v1117 || v1117 == 2)
            {
              sub_10001AE94();
            }

LABEL_1553:
            sub_10001AEC0();
          }

LABEL_593:
          if (v1121[0])
          {
            --v1121[0];
            v443 = v1121[1] + 4 * *(&v1117 + 1);
          }

          else
          {
            v443 = v1121[1] + 2 * *(&v1117 + 1);
          }

          v1121[1] = v443;
          v7.i32[0] = vadd_s32(*(&v1120 + 4), 0x200000002).u32[0];
          *v6.i8 = veor_s8(*(&v1120 + 4), 0x100000001);
          v7.i32[1] = v6.i32[1];
          *(&v1120 + 4) = v7.i64[0];
          goto LABEL_601;
        }

        if (v1117 == 3)
        {
          goto LABEL_593;
        }

        if (v1117 != 4)
        {
          goto LABEL_1553;
        }

        if (v1121[0])
        {
          --v1121[0];
          v442 = v1121[1] + 4 * *(&v1117 + 1);
        }

        else
        {
          v442 = v1121[1] + 2 * *(&v1117 + 1);
        }

        v1121[1] = v442;
        DWORD1(v1120) += 2;
LABEL_601:
        if (SLODWORD(v1121[2]) <= 2)
        {
          if (LODWORD(v1121[2]) != 1)
          {
            if (!LODWORD(v1121[2]) || LODWORD(v1121[2]) == 2)
            {
              sub_10001AE94();
            }

LABEL_1554:
            sub_10001AEC0();
          }
        }

        else if (LODWORD(v1121[2]) != 3)
        {
          if (LODWORD(v1121[2]) != 4)
          {
            goto LABEL_1554;
          }

          if (v1125[0])
          {
            --v1125[0];
            v444 = v1125[1] + 4 * v1121[3];
          }

          else
          {
            v444 = v1125[1] + 2 * v1121[3];
          }

          v1125[1] = v444;
          DWORD1(v1124) += 2;
          goto LABEL_613;
        }

        if (v1125[0])
        {
          --v1125[0];
          v445 = v1125[1] + 4 * v1121[3];
        }

        else
        {
          v445 = v1125[1] + 2 * v1121[3];
        }

        v1125[1] = v445;
        v7.i32[0] = vadd_s32(*(&v1124 + 4), 0x200000002).u32[0];
        *v6.i8 = veor_s8(*(&v1124 + 4), 0x100000001);
        v7.i32[1] = v6.i32[1];
        *(&v1124 + 4) = v7.i64[0];
LABEL_613:
        v446 = v1088;
        if (v434 != 2)
        {
          v446 = 0;
        }

        v12 += 404 * v446;
        if (v434 == 2)
        {
          v434 = v1066;
        }

        else
        {
          v434 -= 2;
        }

        v435 += 2;
        if (!v435)
        {
          goto LABEL_619;
        }
      }

      if ((v1117 - 3) >= 2)
      {
LABEL_1489:
        sub_10001AE68();
      }

      goto LABEL_571;
    }

    v177 = *(a3 + 20);
    v1068 = *(a3 + 28);
    v1107 = 0;
    if (!v177)
    {
      goto LABEL_619;
    }

    v178 = vdupq_n_s16(*(a3 + 304));
    v179 = 2 * *(a3 + 24);
    v180 = *(&v1119 + 1);
    v181 = v1119;
    v182 = DWORD1(v1118);
    v978 = DWORD2(v1118);
    v183 = v1123;
    v998 = v1118;
    v993 = 2 * v1118;
    v1008 = *(&v1117 + 1);
    v976 = 4 * *(&v1117 + 1);
    v977 = DWORD2(v1122);
    __srca = v1121[3];
    v975 = 4 * v1121[3];
    v1030 = 2 * *(a3 + 16);
    v184.i64[0] = 0x2000200020002;
    v184.i64[1] = 0x2000200020002;
    v185.i64[0] = 0x4000400040004;
    v185.i64[1] = 0x4000400040004;
    v8.i64[0] = 0x7000700070007;
    v8.i64[1] = 0x7000700070007;
    v186.i64[0] = 0xF000F000F000FLL;
    v186.i64[1] = 0xF000F000F000FLL;
    v9.i64[0] = 0x5000500050005;
    v9.i64[1] = 0x5000500050005;
    v187.i64[0] = 0x1000100010001;
    v187.i64[1] = 0x1000100010001;
    v188 = v1068;
    v189 = DWORD1(v1122);
    v1023 = v1117;
    v1016 = v1121[2];
    while (1)
    {
      v1038 = v188;
      *v1045 = v183;
      v1054 = v182;
      if (v1030 < 1)
      {
        goto LABEL_297;
      }

      v190 = 0;
      v191 = &v1122 + 8;
      v192 = v12 - 404;
      if (v998)
      {
        v191 = &v1118 + 8;
      }

      v193 = *v191;
      v194 = v1030 - 2;
      v195 = v180;
      v196 = v993;
      v197 = v1030;
LABEL_259:
      v198 = *(&v1123 + 1);
      v199 = v1122;
      v200 = v196 ? v196 : 2 * v1122;
      v201 = v196 ? v195 : *(&v1123 + 1);
      if (v200 >= 16)
      {
        break;
      }

      v202 = v197;
      if (v200 == v197)
      {
        goto LABEL_268;
      }

      if (v200 <= 0)
      {
        sub_10001AEEC();
      }

      v985 = v189;
      v979 = v181;
      v982 = v180;
      v210 = v200 >> 1;
      if (v200 != 1)
      {
        if (v210 <= 1)
        {
          v211 = 1;
        }

        else
        {
          v211 = v210;
        }

        v212 = v201 + 4;
        v213 = &v1113;
        v214 = &v1112;
        v215 = &v1114;
        v216 = &v1115;
        v217 = &v1116;
        v218 = &v1108;
        do
        {
          v218->i16[0] = *v212;
          v218 = (v218 + 2);
          v217->i16[0] = v212[1];
          v217 = (v217 + 2);
          v216->i16[0] = v212[2];
          v216 = (v216 + 2);
          v215->i16[0] = v212[3];
          v215 = (v215 + 2);
          v219 = *(v212 - 1);
          v214->i16[0] = v219;
          v214 = (v214 + 2);
          v213->i16[0] = v219 - (*(v212 - 4) >> 3);
          v213 = (v213 + 2);
          v212 += 8;
          --v211;
        }

        while (v211);
      }

      LODWORD(v220) = v197 >> 1;
      if (v197 <= 15)
      {
        v220 = v220;
      }

      else
      {
        v220 = 8;
      }

      if (v210 >= v220)
      {
        v181 = v979;
        v180 = v982;
      }

      else
      {
        v221 = v210;
        v181 = v979;
        v180 = v982;
        do
        {
          v1108.i16[v221] = v198[4];
          v1116.i16[v221] = v198[5];
          v1115.i16[v221] = v198[6];
          v1114.i16[v221] = v198[7];
          v222 = v198[3];
          v1112.i16[v221] = v222;
          v1113.i16[v221] = v222 - (*v198 >> 3);
          v198 += 8;
          ++v221;
        }

        while (v220 != v221);
      }

      v204 = v1108;
      v205 = v1116;
      v208 = v1114;
      v206 = v1115;
      v207 = v1112;
      v209 = v1113;
      v196 = 2 * (v199 - v220 + v210);
      v195 = v198;
      v189 = v985;
LABEL_285:
      v223 = 0;
      v224 = vceqzq_s16(vandq_s8(v204, v185));
      v225 = vandq_s8(v205, v8);
      v226 = vshrq_n_s16(v205, 3uLL);
      v227 = vqshlq_n_u16(vabsq_s16(vshrq_n_s16(v204, 3uLL)), 4uLL);
      v228 = vcgtq_u16(v225, v9);
      v229 = vshlq_u16(vqshlq_n_u16(vabsq_s16(v226), 4uLL), v228);
      v230 = vandq_s8(vaddq_s16(vandq_s8(v206, v186), vbicq_s8(v187, v204)), vorrq_s8(v228, vceqzq_s16(vandq_s8(v204, v184))));
      v231 = vaddq_s16(vaddq_s16(v225, v228), vandq_s8(veorq_s8(vcltzq_s16(v204), vcgezq_s16(v226)), v8));
      v232 = vmulq_s16(vshrq_n_u16(v230, 1uLL), vshrq_n_u16(v206, 4uLL));
      v233 = vshrq_n_u16(v229, 1uLL);
      v234 = vqshlq_s16(vqdmulhq_s16(v233, v232), v178);
      v235 = vceqzq_s16(v230);
      v1116 = v209;
      v1108 = vornq_s8(vandq_s8(v230, v224), v224);
      v1109 = vbslq_s8(v235, v209, vqdmulhq_s16(v234, v233));
      v1110 = vbslq_s8(v235, v207, vqdmulhq_s16(v234, vshrq_n_u16(v227, 1uLL)));
      v1111 = vbslq_s8(v235, v208, v231);
      while (1)
      {
        if (v190)
        {
          v236 = 0;
        }

        else
        {
          v190 = v179;
          v236 = 404;
        }

        v192 += v236;
        v237 = v1108.u16[v223];
        ++*(v192 + 384);
        v238 = v1116.u16[v223];
        *(v192 + 388) += v238;
        *(v192 + 396) += v238 * v238;
        if (v237)
        {
          if (v237 != 0xFFFF)
          {
            v239 = v1110.u16[v223];
            v240 = (v192 + 24 * v1111.u16[v223]);
            v241 = v240[1] + *(&v1108 + v223 * 2 + 16);
            *v240 += v237;
            v240[1] = v241;
            v240[2] += v239;
          }
        }

        else
        {
          v242 = v1110.u16[v223];
          v243 = v1111.u16[v223];
          v244 = (v192 + 336 + 12 * v193);
          v245.i32[0] = 1;
          v245.i32[1] = *(&v1108 + v223 * 2 + 16);
          *v244 = vadd_s32(*v244, v245);
          v244[1].i32[0] += v242;
          v246 = (v192 + 336 + 12 * (v193 + 1));
          *v246 = vadd_s32(*v246, v245);
          v246[1].i32[0] += v243;
        }

        ++v1107;
        if (v194 == (v223 * 2))
        {
          break;
        }

        v190 -= 2;
        if (++v223 == 8)
        {
          v194 -= 16;
          v857 = v197 <= 16;
          v197 -= 16;
          if (v857)
          {
            break;
          }

          goto LABEL_259;
        }
      }

LABEL_297:
      if (v1023 > 2)
      {
        v247 = v1054;
        v248 = v1016;
        if ((v1023 - 3) >= 2)
        {
LABEL_1472:
          sub_10001AE68();
        }
      }

      else
      {
        v247 = v1054;
        v248 = v1016;
        if (!v1023)
        {
          v180 += v1008;
          *(&v1119 + 1) = v180;
          v182 = v1054 + 1;
          DWORD1(v1118) = v1054 + 1;
          v978 ^= 1u;
          DWORD2(v1118) = v978;
LABEL_308:
          v183 = *v1045;
          v249 = v1038;
          goto LABEL_309;
        }

        if (v1023 != 1)
        {
          if (v1023 != 2)
          {
            goto LABEL_1472;
          }

          v180 += v1008;
          *(&v1119 + 1) = v180;
          v182 = v1054 + 1;
          DWORD1(v1118) = v1054 + 1;
          goto LABEL_308;
        }
      }

      if (v181)
      {
        *&v1119 = --v181;
        v180 += v1008;
      }

      else
      {
        v180 = (v180 + v976);
      }

      v183 = *v1045;
      v249 = v1038;
      *(&v1119 + 1) = v180;
      v182 = v247 + 2;
      DWORD1(v1118) = v182;
LABEL_309:
      if (v248 > 2)
      {
        if ((v248 - 3) >= 2)
        {
LABEL_1473:
          sub_10001AE68();
        }
      }

      else
      {
        if (!v248)
        {
          *(&v1123 + 1) += 2 * __srca;
          DWORD1(v1122) = ++v189;
          v977 ^= 1u;
          DWORD2(v1122) = v977;
          goto LABEL_321;
        }

        if (v248 != 1)
        {
          if (v248 != 2)
          {
            goto LABEL_1473;
          }

          *(&v1123 + 1) += 2 * __srca;
          ++v189;
          goto LABEL_319;
        }
      }

      if (v183)
      {
        *&v1123 = --v183;
        v250 = *(&v1123 + 1) + 2 * __srca;
      }

      else
      {
        v250 = *(&v1123 + 1) + v975;
      }

      *(&v1123 + 1) = v250;
      v189 += 2;
LABEL_319:
      DWORD1(v1122) = v189;
LABEL_321:
      v188 = v249 - 1;
      v251 = v1088;
      if (v249 != 1)
      {
        v251 = 0;
      }

      v12 += 404 * v251;
      if (v249 == 1)
      {
        v188 = v1068;
      }

      if (!--v177)
      {
        goto LABEL_619;
      }
    }

    v202 = 16;
LABEL_268:
    v203 = v201;
    v1143 = vld4q_s16(v203);
    v203 += 32;
    v1144 = vld4q_s16(v203);
    v204 = vuzp2q_s16(v1143.val[0], v1144.val[0]);
    v205 = vuzp2q_s16(v1143.val[1], v1144.val[1]);
    v206 = vuzp2q_s16(v1143.val[2], v1144.val[2]);
    v207 = vuzp1q_s16(v1143.val[3], v1144.val[3]);
    v208 = vuzp2q_s16(v1143.val[3], v1144.val[3]);
    v209 = vsraq_n_s16(v207, vuzp1q_s16(v1143.val[0], v1144.val[0]), 3uLL);
    v195 = v201 + 64;
    v196 = v200 - v202;
    goto LABEL_285;
  }

  if (v13 > 4)
  {
    sub_10001AF70();
  }

  if (v13 == 2)
  {
    v549 = *(a3 + 20);
    v550 = *(a3 + 28);
    v1108.i32[0] = 0;
    if (!v549)
    {
      goto LABEL_620;
    }

    v551 = 2 * *(a3 + 24);
    v552 = v1117;
    __srcd = v1118;
    v1041 = 2 * v1118;
    v553 = *(&v1119 + 1);
    v554 = v1119;
    v555 = v1123;
    v556 = DWORD1(v1122);
    v1019 = *(&v1117 + 1);
    v995 = 4 * *(&v1117 + 1);
    v1009 = v1121[3];
    v989 = 4 * v1121[3];
    v1033 = 2 * *(a3 + 16);
    v557 = DWORD1(v1118);
    v558 = v550;
    v1026 = v1121[2];
    while (1)
    {
      v1049 = v557;
      v1059 = v555;
      v1075 = v556;
      v559 = v552;
      v560 = v550;
      v561 = v1041;
      if (v1033 >= 1)
      {
        v562 = 0;
        v563 = v12 - 404;
        v564 = &v1122 + 8;
        v565 = (v553 + 8);
        v566 = *(a3 + 304);
        if (__srcd)
        {
          v564 = &v1118 + 8;
        }

        v567 = *v564;
        v568 = v1033 + 2;
        v561 = v1041;
        do
        {
          if (v561)
          {
            v569 = v561;
          }

          else
          {
            v569 = 2 * v1122;
          }

          if (!v561)
          {
            v565 = (*(&v1123 + 1) + 8);
          }

          if (v562)
          {
            v570 = v562;
          }

          else
          {
            v570 = v551;
          }

          if (v562)
          {
            v571 = 0;
          }

          else
          {
            v571 = 404;
          }

          v563 += v571;
          v572 = *(v565 - 1);
          v573 = v565[3];
          v574 = v572 + (*(v565 - 4) >> 3);
          v575 = *v565;
          ++*(v563 + 384);
          *(v563 + 388) += v574;
          *(v563 + 396) += v574 * v574;
          if ((v575 & 4) == 0)
          {
            v576 = v565[1] & 7;
            if ((v575 & 1) != 0 || ((v576 < 6) & (v575 >> 1)) != 0)
            {
              v593 = (v563 + 336 + 12 * v567);
              v594.i32[0] = 1;
              v594.i32[1] = v574;
              *v593 = vadd_s32(*v593, v594);
              v593[1].i32[0] += v572;
              v595 = (v563 + 336 + 12 * (v567 + 1));
              *v595 = vadd_s32(*v595, v594);
              v595[1].i32[0] += v573;
            }

            else
            {
              v577 = v576 > 5;
              v578 = v575;
              v579 = v565[2];
              v580 = (v579 & 0xF) + 1;
              v581 = v579 >> 4;
              v582 = v575 >> 3;
              v583 = v565[1] >> 3;
              if (v583 >= 0)
              {
                LOWORD(v584) = v565[1] >> 3;
              }

              else
              {
                v584 = -v583;
              }

              if (v582 < 0)
              {
                v582 = -v582;
              }

              v585 = v576 - v577;
              v586 = (16 * (v584 & 0xFFFu)) >> v577 >> 1;
              v587 = ((v580 >> 1) * v581 * v586) >> 15 << v566;
              if (v587 <= -32768)
              {
                v587 = -32768;
              }

              if (v587 >= 0x7FFF)
              {
                v587 = 0x7FFF;
              }

              v588 = ((v587 * v586) >> 15);
              v589 = ((v587 * 8 * (v582 & 0xFFF)) >> 15);
              if ((v583 ^ (v578 >> 3)) >= 0)
              {
                v590 = v585 + 7;
              }

              else
              {
                v590 = v585;
              }

              v591 = (v563 + 24 * v590);
              v592 = v591[1];
              *v591 += v580;
              v591[1] = v592 + v588;
              v591[2] += v589;
            }
          }

          v565 += 8;
          v561 = v569 - 2;
          v562 = v570 - 2;
          ++v1108.i32[0];
          v568 -= 2;
        }

        while (v568 > 2);
      }

      if (v561)
      {
        sub_10001AF9C();
      }

      v552 = v559;
      if (v559 > 2)
      {
        v598 = v559 - 3;
        v4 = v991;
        v550 = v560;
        v596 = v1075;
        v555 = v1059;
        v597 = v1049;
        if (v598 >= 2)
        {
LABEL_1502:
          sub_10001AE68();
        }
      }

      else
      {
        v4 = v991;
        v550 = v560;
        v596 = v1075;
        v555 = v1059;
        v597 = v1049;
        if (!v552)
        {
          v553 += 2 * v1019;
          *(&v1119 + 1) = v553;
          v557 = v1049 + 1;
          *(&v1118 + 4) = __PAIR64__(DWORD2(v1118), v1049 + 1) ^ 0x100000000;
LABEL_803:
          v599 = v1026;
          goto LABEL_804;
        }

        if (v552 != 1)
        {
          if (v552 != 2)
          {
            goto LABEL_1502;
          }

          v553 += 2 * v1019;
          *(&v1119 + 1) = v553;
          v557 = v1049 + 1;
          DWORD1(v1118) = v1049 + 1;
          goto LABEL_803;
        }
      }

      if (v554)
      {
        *&v1119 = --v554;
        v553 += 2 * v1019;
      }

      else
      {
        v553 += v995;
      }

      v599 = v1026;
      *(&v1119 + 1) = v553;
      v557 = v597 + 2;
      DWORD1(v1118) = v557;
LABEL_804:
      if (v599 > 2)
      {
        if ((v599 - 3) >= 2)
        {
LABEL_1503:
          sub_10001AE68();
        }
      }

      else
      {
        if (!v599)
        {
          *(&v1123 + 1) += 2 * v1009;
          v556 = v596 + 1;
          *(&v1122 + 4) = __PAIR64__(DWORD2(v1122), v556) ^ 0x100000000;
          goto LABEL_816;
        }

        if (v599 != 1)
        {
          if (v599 != 2)
          {
            goto LABEL_1503;
          }

          *(&v1123 + 1) += 2 * v1009;
          v556 = v596 + 1;
          goto LABEL_814;
        }
      }

      if (v555)
      {
        *&v1123 = --v555;
        v600 = *(&v1123 + 1) + 2 * v1009;
      }

      else
      {
        v600 = *(&v1123 + 1) + v989;
      }

      *(&v1123 + 1) = v600;
      v556 = v596 + 2;
LABEL_814:
      DWORD1(v1122) = v556;
LABEL_816:
      v601 = v1088;
      if (v558 != 1)
      {
        v601 = 0;
      }

      v12 += 404 * v601;
      if (v558 == 1)
      {
        v558 = v550;
      }

      else
      {
        --v558;
      }

      if (!--v549)
      {
        goto LABEL_620;
      }
    }
  }

  v34 = *(a3 + 20);
  v35 = 2 * v34;
  v36 = (2 * *(a3 + 28));
  v1108.i32[0] = 0;
  if (v13 <= 1)
  {
    if (!v13)
    {
      if (!v35)
      {
        goto LABEL_620;
      }

      v322 = *(a3 + 24);
      v324 = *(&v1119 + 1);
      v323 = v1119;
      v1046 = DWORD2(v1118);
      v325 = DWORD1(v1118);
      v326 = v1123;
      v1024 = *(&v1117 + 1);
      v1017 = v1121[3];
      v999 = 4 * v1121[3];
      __srcb = 4 * *(&v1117 + 1);
      v1039 = *(a3 + 16);
      v1055 = v1118;
      v327 = v1117;
      v328 = v36;
      v329 = DWORD1(v1122);
      v1031 = v1121[2];
      while (1)
      {
        v1069 = v329;
        v330 = v327;
        v331 = v36;
        v332 = v1055;
        if (v1039 >= 1)
        {
          v333 = 0;
          v334 = v12 - 404;
          v335 = *(a3 + 304);
          v336 = v1039 + 1;
          v337 = v324;
          v338 = v1046;
          v332 = v1055;
          do
          {
            v339 = v332 == 0;
            if (v332)
            {
              v340 = v338;
            }

            else
            {
              v332 = v1122;
              v340 = DWORD2(v1122);
            }

            if (v339)
            {
              v341 = *(&v1123 + 1);
            }

            else
            {
              v341 = v337;
            }

            if (v333)
            {
              v342 = v333;
            }

            else
            {
              v342 = v322;
            }

            if (v333)
            {
              v343 = 0;
            }

            else
            {
              v343 = 404;
            }

            v334 += v343;
            v344 = *v341;
            v345 = v344 >> 3;
            v346 = v341[3];
            if (v340)
            {
              v347 = -v345;
            }

            else
            {
              LOWORD(v347) = v344 >> 3;
            }

            v348 = v347 + v346;
            ++*(v334 + 384);
            *(v334 + 388) += v348;
            *(v334 + 396) += v348 * v348;
            if ((v344 & 4) == 0)
            {
              v349 = v341[1];
              v350 = v349 & 7;
              if ((v344 & 1) != 0 || (((v349 & 7u) < 6) & (v344 >> 1)) != 0)
              {
                v366 = (v334 + 12 * v340);
                v367.i32[0] = 1;
                v367.i32[1] = v348;
                v366[42] = vadd_s32(v366[42], v367);
                v366[43].i32[0] += v346;
              }

              else
              {
                v351 = v350 > 5;
                v352 = v341[2];
                v353 = (v352 & 0xF) + 1;
                v354 = v352 >> 4;
                v355 = v341[1];
                v356 = v355 >> 3;
                if (v355 >> 3 < 0)
                {
                  v356 = -v356;
                }

                if (v345 >= 0)
                {
                  LOWORD(v357) = v345;
                }

                else
                {
                  v357 = -v345;
                }

                v358 = v350 - v351;
                v359 = (16 * (v356 & 0xFFFu)) >> v351 >> 1;
                v360 = ((v353 >> 1) * v354 * v359) >> 15 << v335;
                if (v360 <= -32768)
                {
                  v360 = -32768;
                }

                if (v360 >= 0x7FFF)
                {
                  v360 = 0x7FFF;
                }

                v361 = ((v360 * v359) >> 15);
                v362 = ((v360 * 8 * (v357 & 0xFFF)) >> 15);
                if ((v345 ^ (v355 >> 3)) >= 0)
                {
                  v363 = v358 + 7;
                }

                else
                {
                  v363 = v358;
                }

                v364 = (v334 + 24 * v363);
                v365 = v364[1];
                *v364 += v353;
                v364[1] = v365 + v361;
                v364[2] += v362;
              }
            }

            v337 = v341 + 4;
            --v332;
            v333 = v342 - 1;
            ++v1108.i32[0];
            v338 = v340 ^ 1;
            --v336;
          }

          while (v336 > 1);
        }

        if (v332)
        {
          sub_10001AFC8();
        }

        v327 = v330;
        if (v330 > 2)
        {
          v4 = v991;
          v36 = v331;
          if ((v330 - 3) >= 2)
          {
LABEL_1475:
            sub_10001AE68();
          }
        }

        else
        {
          v4 = v991;
          v36 = v331;
          if (!v330)
          {
            v324 += v1024;
            *(&v1119 + 1) = v324;
            DWORD1(v1118) = ++v325;
            v1046 ^= 1u;
            DWORD2(v1118) = v1046;
LABEL_426:
            v368 = v1031;
            goto LABEL_427;
          }

          if (v330 != 1)
          {
            if (v330 != 2)
            {
              goto LABEL_1475;
            }

            v324 += v1024;
            *(&v1119 + 1) = v324;
            DWORD1(v1118) = ++v325;
            goto LABEL_426;
          }
        }

        if (v323)
        {
          *&v1119 = --v323;
          v324 += v1024;
        }

        else
        {
          v324 = (v324 + __srcb);
        }

        v368 = v1031;
        *(&v1119 + 1) = v324;
        v325 += 2;
        DWORD1(v1118) = v325;
LABEL_427:
        if (v368 > 2)
        {
          if ((v368 - 3) >= 2)
          {
LABEL_1476:
            sub_10001AE68();
          }
        }

        else
        {
          if (!v368)
          {
            *(&v1123 + 1) += 2 * v1017;
            v329 = v1069 + 1;
            DWORD1(v1122) = v1069 + 1;
            DWORD2(v1122) ^= 1u;
            goto LABEL_439;
          }

          if (v368 != 1)
          {
            if (v368 != 2)
            {
              goto LABEL_1476;
            }

            *(&v1123 + 1) += 2 * v1017;
            v329 = v1069 + 1;
            goto LABEL_437;
          }
        }

        if (v326)
        {
          *&v1123 = --v326;
          v369 = *(&v1123 + 1) + 2 * v1017;
        }

        else
        {
          v369 = *(&v1123 + 1) + v999;
        }

        *(&v1123 + 1) = v369;
        v329 = v1069 + 2;
LABEL_437:
        DWORD1(v1122) = v329;
LABEL_439:
        v370 = v1088;
        if (v328 != 1)
        {
          v370 = 0;
        }

        v12 += 404 * v370;
        if (v328 == 1)
        {
          v328 = v36;
        }

        else
        {
          --v328;
        }

        if (!--v35)
        {
          goto LABEL_620;
        }
      }
    }

    if (!v35)
    {
      goto LABEL_620;
    }

    v660 = v36;
    v661 = -2 * v34;
    while (1)
    {
      sub_100009CE0(a3 + 12, a3 + 300, 1, &v1118, &v1122, v12, &v1108);
      if (v1117 > 2)
      {
        break;
      }

      if (v1117)
      {
        if (v1117 != 1)
        {
          if (v1117 != 2)
          {
            goto LABEL_1522;
          }

          *(&v1119 + 1) += 2 * *(&v1117 + 1);
          v662 = DWORD1(v1118) + 1;
          goto LABEL_950;
        }

LABEL_946:
        if (v1119)
        {
          *&v1119 = v1119 - 1;
          v663 = *(&v1119 + 1) + 2 * *(&v1117 + 1);
        }

        else
        {
          v663 = *(&v1119 + 1) + 4 * *(&v1117 + 1);
        }

        *(&v1119 + 1) = v663;
        v662 = DWORD1(v1118) + 2;
LABEL_950:
        DWORD1(v1118) = v662;
        goto LABEL_951;
      }

      *(&v1119 + 1) += 2 * *(&v1117 + 1);
      LODWORD(v669) = vadd_s32(*(&v1118 + 4), 0x100000001).u32[0];
      HIDWORD(v669) = veor_s8(*(&v1118 + 4), 0x100000001).i32[1];
      *(&v1118 + 4) = v669;
LABEL_951:
      if (SLODWORD(v1121[2]) > 2)
      {
        if ((LODWORD(v1121[2]) - 3) >= 2)
        {
LABEL_1523:
          sub_10001AE68();
        }

        goto LABEL_957;
      }

      if (LODWORD(v1121[2]))
      {
        if (LODWORD(v1121[2]) != 1)
        {
          if (LODWORD(v1121[2]) != 2)
          {
            goto LABEL_1523;
          }

          *(&v1123 + 1) += 2 * v1121[3];
          v664 = DWORD1(v1122) + 1;
          goto LABEL_961;
        }

LABEL_957:
        if (v1123)
        {
          *&v1123 = v1123 - 1;
          v665 = *(&v1123 + 1) + 2 * v1121[3];
        }

        else
        {
          v665 = *(&v1123 + 1) + 4 * v1121[3];
        }

        *(&v1123 + 1) = v665;
        v664 = DWORD1(v1122) + 2;
LABEL_961:
        DWORD1(v1122) = v664;
        goto LABEL_962;
      }

      *(&v1123 + 1) += 2 * v1121[3];
      LODWORD(v670) = vadd_s32(*(&v1122 + 4), 0x100000001).u32[0];
      HIDWORD(v670) = veor_s8(*(&v1122 + 4), 0x100000001).i32[1];
      *(&v1122 + 4) = v670;
LABEL_962:
      sub_100009CE0(a3 + 12, a3 + 300, 0, &v1120, &v1124, v12, &v1108);
      if (v1117 <= 2)
      {
        if (v1117 != 1)
        {
          if (!v1117 || v1117 == 2)
          {
            sub_10001AE94();
          }

LABEL_1559:
          sub_10001AEC0();
        }

LABEL_968:
        if (v1121[0])
        {
          --v1121[0];
          v667 = v1121[1] + 4 * *(&v1117 + 1);
        }

        else
        {
          v667 = v1121[1] + 2 * *(&v1117 + 1);
        }

        v1121[1] = v667;
        LODWORD(v668) = vadd_s32(*(&v1120 + 4), 0x200000002).u32[0];
        HIDWORD(v668) = veor_s8(*(&v1120 + 4), 0x100000001).i32[1];
        *(&v1120 + 4) = v668;
        goto LABEL_976;
      }

      if (v1117 == 3)
      {
        goto LABEL_968;
      }

      if (v1117 != 4)
      {
        goto LABEL_1559;
      }

      if (v1121[0])
      {
        --v1121[0];
        v666 = v1121[1] + 4 * *(&v1117 + 1);
      }

      else
      {
        v666 = v1121[1] + 2 * *(&v1117 + 1);
      }

      v1121[1] = v666;
      DWORD1(v1120) += 2;
LABEL_976:
      if (SLODWORD(v1121[2]) <= 2)
      {
        if (LODWORD(v1121[2]) != 1)
        {
          if (!LODWORD(v1121[2]) || LODWORD(v1121[2]) == 2)
          {
            sub_10001AE94();
          }

LABEL_1560:
          sub_10001AEC0();
        }
      }

      else if (LODWORD(v1121[2]) != 3)
      {
        if (LODWORD(v1121[2]) != 4)
        {
          goto LABEL_1560;
        }

        if (v1125[0])
        {
          --v1125[0];
          v671 = v1125[1] + 4 * v1121[3];
        }

        else
        {
          v671 = v1125[1] + 2 * v1121[3];
        }

        v1125[1] = v671;
        DWORD1(v1124) += 2;
        goto LABEL_988;
      }

      if (v1125[0])
      {
        --v1125[0];
        v672 = v1125[1] + 4 * v1121[3];
      }

      else
      {
        v672 = v1125[1] + 2 * v1121[3];
      }

      v1125[1] = v672;
      LODWORD(v673) = vadd_s32(*(&v1124 + 4), 0x200000002).u32[0];
      HIDWORD(v673) = veor_s8(*(&v1124 + 4), 0x100000001).i32[1];
      *(&v1124 + 4) = v673;
LABEL_988:
      v674 = v1088;
      if (v660 != 2)
      {
        v674 = 0;
      }

      v12 += 404 * v674;
      if (v660 == 2)
      {
        v660 = v36;
      }

      else
      {
        v660 -= 2;
      }

      v661 += 2;
      if (!v661)
      {
        goto LABEL_620;
      }
    }

    if ((v1117 - 3) >= 2)
    {
LABEL_1522:
      sub_10001AE68();
    }

    goto LABEL_946;
  }

  if (v13 == 3)
  {
    if (!v35)
    {
      goto LABEL_620;
    }

    v37 = v36;
    v38 = -2 * v34;
    while (1)
    {
      sub_100009CE0(a3 + 12, a3 + 300, 0, &v1120, &v1124, v12, &v1108);
      if (v1117 <= 2)
      {
        break;
      }

      if (v1117 == 3)
      {
        goto LABEL_86;
      }

      if (v1117 != 4)
      {
        goto LABEL_1549;
      }

      if (v1121[0])
      {
        --v1121[0];
        v39 = v1121[1] + 4 * *(&v1117 + 1);
      }

      else
      {
        v39 = v1121[1] + 2 * *(&v1117 + 1);
      }

      v1121[1] = v39;
      DWORD1(v1120) += 2;
LABEL_92:
      if (SLODWORD(v1121[2]) <= 2)
      {
        if (LODWORD(v1121[2]) != 1)
        {
          if (!LODWORD(v1121[2]) || LODWORD(v1121[2]) == 2)
          {
            sub_10001AE94();
          }

LABEL_1550:
          sub_10001AEC0();
        }

LABEL_98:
        if (v1125[0])
        {
          --v1125[0];
          v43 = v1125[1] + 4 * v1121[3];
        }

        else
        {
          v43 = v1125[1] + 2 * v1121[3];
        }

        v1125[1] = v43;
        LODWORD(v44) = vadd_s32(*(&v1124 + 4), 0x200000002).u32[0];
        HIDWORD(v44) = veor_s8(*(&v1124 + 4), 0x100000001).i32[1];
        *(&v1124 + 4) = v44;
        goto LABEL_104;
      }

      if (LODWORD(v1121[2]) == 3)
      {
        goto LABEL_98;
      }

      if (LODWORD(v1121[2]) != 4)
      {
        goto LABEL_1550;
      }

      if (v1125[0])
      {
        --v1125[0];
        v42 = v1125[1] + 4 * v1121[3];
      }

      else
      {
        v42 = v1125[1] + 2 * v1121[3];
      }

      v1125[1] = v42;
      DWORD1(v1124) += 2;
LABEL_104:
      sub_100009CE0(a3 + 12, a3 + 300, 1, &v1118, &v1122, v12, &v1108);
      if (v1117 > 2)
      {
        if ((v1117 - 3) >= 2)
        {
LABEL_1465:
          sub_10001AE68();
        }

        goto LABEL_110;
      }

      if (v1117)
      {
        if (v1117 != 1)
        {
          if (v1117 != 2)
          {
            goto LABEL_1465;
          }

          *(&v1119 + 1) += 2 * *(&v1117 + 1);
          v45 = DWORD1(v1118) + 1;
          goto LABEL_114;
        }

LABEL_110:
        if (v1119)
        {
          *&v1119 = v1119 - 1;
          v46 = *(&v1119 + 1) + 2 * *(&v1117 + 1);
        }

        else
        {
          v46 = *(&v1119 + 1) + 4 * *(&v1117 + 1);
        }

        *(&v1119 + 1) = v46;
        v45 = DWORD1(v1118) + 2;
LABEL_114:
        DWORD1(v1118) = v45;
        goto LABEL_116;
      }

      *(&v1119 + 1) += 2 * *(&v1117 + 1);
      LODWORD(v47) = vadd_s32(*(&v1118 + 4), 0x100000001).u32[0];
      HIDWORD(v47) = veor_s8(*(&v1118 + 4), 0x100000001).i32[1];
      *(&v1118 + 4) = v47;
LABEL_116:
      if (SLODWORD(v1121[2]) > 2)
      {
        if ((LODWORD(v1121[2]) - 3) >= 2)
        {
LABEL_1466:
          sub_10001AE68();
        }
      }

      else
      {
        if (!LODWORD(v1121[2]))
        {
          *(&v1123 + 1) += 2 * v1121[3];
          LODWORD(v50) = vadd_s32(*(&v1122 + 4), 0x100000001).u32[0];
          HIDWORD(v50) = veor_s8(*(&v1122 + 4), 0x100000001).i32[1];
          *(&v1122 + 4) = v50;
          goto LABEL_128;
        }

        if (LODWORD(v1121[2]) != 1)
        {
          if (LODWORD(v1121[2]) != 2)
          {
            goto LABEL_1466;
          }

          *(&v1123 + 1) += 2 * v1121[3];
          v48 = DWORD1(v1122) + 1;
          goto LABEL_126;
        }
      }

      if (v1123)
      {
        *&v1123 = v1123 - 1;
        v49 = *(&v1123 + 1) + 2 * v1121[3];
      }

      else
      {
        v49 = *(&v1123 + 1) + 4 * v1121[3];
      }

      *(&v1123 + 1) = v49;
      v48 = DWORD1(v1122) + 2;
LABEL_126:
      DWORD1(v1122) = v48;
LABEL_128:
      v51 = v1088;
      if (v37 != 2)
      {
        v51 = 0;
      }

      v12 += 404 * v51;
      if (v37 == 2)
      {
        v37 = v36;
      }

      else
      {
        v37 -= 2;
      }

      v38 += 2;
      if (!v38)
      {
        goto LABEL_620;
      }
    }

    if (v1117 != 1)
    {
      if (!v1117 || v1117 == 2)
      {
        sub_10001AE94();
      }

LABEL_1549:
      sub_10001AEC0();
    }

LABEL_86:
    if (v1121[0])
    {
      --v1121[0];
      v40 = v1121[1] + 4 * *(&v1117 + 1);
    }

    else
    {
      v40 = v1121[1] + 2 * *(&v1117 + 1);
    }

    v1121[1] = v40;
    LODWORD(v41) = vadd_s32(*(&v1120 + 4), 0x200000002).u32[0];
    HIDWORD(v41) = veor_s8(*(&v1120 + 4), 0x100000001).i32[1];
    *(&v1120 + 4) = v41;
    goto LABEL_92;
  }

  if (v35)
  {
    v638 = v36;
    v639 = -2 * v34;
    while (1)
    {
      sub_100009EEC(a3 + 12, a3 + 300, &v1120, &v1124, v12, &v1108);
      if (v1117 <= 2)
      {
        break;
      }

      if (v1117 == 3)
      {
        goto LABEL_866;
      }

      if (v1117 != 4)
      {
        goto LABEL_1555;
      }

      if (v1121[0])
      {
        --v1121[0];
        v640 = v1121[1] + 4 * *(&v1117 + 1);
      }

      else
      {
        v640 = v1121[1] + 2 * *(&v1117 + 1);
      }

      v1121[1] = v640;
      DWORD1(v1120) += 2;
LABEL_872:
      if (SLODWORD(v1121[2]) <= 2)
      {
        if (LODWORD(v1121[2]) != 1)
        {
          if (!LODWORD(v1121[2]) || LODWORD(v1121[2]) == 2)
          {
            sub_10001AE94();
          }

LABEL_1556:
          sub_10001AEC0();
        }

LABEL_878:
        if (v1125[0])
        {
          --v1125[0];
          v644 = v1125[1] + 4 * v1121[3];
        }

        else
        {
          v644 = v1125[1] + 2 * v1121[3];
        }

        v1125[1] = v644;
        LODWORD(v645) = vadd_s32(*(&v1124 + 4), 0x200000002).u32[0];
        HIDWORD(v645) = veor_s8(*(&v1124 + 4), 0x100000001).i32[1];
        *(&v1124 + 4) = v645;
        goto LABEL_884;
      }

      if (LODWORD(v1121[2]) == 3)
      {
        goto LABEL_878;
      }

      if (LODWORD(v1121[2]) != 4)
      {
        goto LABEL_1556;
      }

      if (v1125[0])
      {
        --v1125[0];
        v643 = v1125[1] + 4 * v1121[3];
      }

      else
      {
        v643 = v1125[1] + 2 * v1121[3];
      }

      v1125[1] = v643;
      DWORD1(v1124) += 2;
LABEL_884:
      sub_100009EEC(a3 + 12, a3 + 300, &v1118, &v1122, v12, &v1108);
      if (v1117 > 2)
      {
        if ((v1117 - 3) >= 2)
        {
LABEL_1510:
          sub_10001AE68();
        }

        goto LABEL_890;
      }

      if (v1117)
      {
        if (v1117 != 1)
        {
          if (v1117 != 2)
          {
            goto LABEL_1510;
          }

          *(&v1119 + 1) += 2 * *(&v1117 + 1);
          v646 = DWORD1(v1118) + 1;
          goto LABEL_894;
        }

LABEL_890:
        if (v1119)
        {
          *&v1119 = v1119 - 1;
          v647 = *(&v1119 + 1) + 2 * *(&v1117 + 1);
        }

        else
        {
          v647 = *(&v1119 + 1) + 4 * *(&v1117 + 1);
        }

        *(&v1119 + 1) = v647;
        v646 = DWORD1(v1118) + 2;
LABEL_894:
        DWORD1(v1118) = v646;
        goto LABEL_896;
      }

      *(&v1119 + 1) += 2 * *(&v1117 + 1);
      LODWORD(v648) = vadd_s32(*(&v1118 + 4), 0x100000001).u32[0];
      HIDWORD(v648) = veor_s8(*(&v1118 + 4), 0x100000001).i32[1];
      *(&v1118 + 4) = v648;
LABEL_896:
      if (SLODWORD(v1121[2]) > 2)
      {
        if ((LODWORD(v1121[2]) - 3) >= 2)
        {
LABEL_1511:
          sub_10001AE68();
        }
      }

      else
      {
        if (!LODWORD(v1121[2]))
        {
          *(&v1123 + 1) += 2 * v1121[3];
          LODWORD(v651) = vadd_s32(*(&v1122 + 4), 0x100000001).u32[0];
          HIDWORD(v651) = veor_s8(*(&v1122 + 4), 0x100000001).i32[1];
          *(&v1122 + 4) = v651;
          goto LABEL_908;
        }

        if (LODWORD(v1121[2]) != 1)
        {
          if (LODWORD(v1121[2]) != 2)
          {
            goto LABEL_1511;
          }

          *(&v1123 + 1) += 2 * v1121[3];
          v649 = DWORD1(v1122) + 1;
          goto LABEL_906;
        }
      }

      if (v1123)
      {
        *&v1123 = v1123 - 1;
        v650 = *(&v1123 + 1) + 2 * v1121[3];
      }

      else
      {
        v650 = *(&v1123 + 1) + 4 * v1121[3];
      }

      *(&v1123 + 1) = v650;
      v649 = DWORD1(v1122) + 2;
LABEL_906:
      DWORD1(v1122) = v649;
LABEL_908:
      v652 = v1088;
      if (v638 != 2)
      {
        v652 = 0;
      }

      v12 += 404 * v652;
      if (v638 == 2)
      {
        v638 = v36;
      }

      else
      {
        v638 -= 2;
      }

      v639 += 2;
      if (!v639)
      {
        goto LABEL_620;
      }
    }

    if (v1117 != 1)
    {
      if (!v1117 || v1117 == 2)
      {
        sub_10001AE94();
      }

LABEL_1555:
      sub_10001AEC0();
    }

LABEL_866:
    if (v1121[0])
    {
      --v1121[0];
      v641 = v1121[1] + 4 * *(&v1117 + 1);
    }

    else
    {
      v641 = v1121[1] + 2 * *(&v1117 + 1);
    }

    v1121[1] = v641;
    LODWORD(v642) = vadd_s32(*(&v1120 + 4), 0x200000002).u32[0];
    HIDWORD(v642) = veor_s8(*(&v1120 + 4), 0x100000001).i32[1];
    *(&v1120 + 4) = v642;
    goto LABEL_872;
  }

LABEL_620:
  if (!*(a3 + 608))
  {
    goto LABEL_1095;
  }

  sub_1000083D8(a3 + 12, a2, &v1117);
  v447 = *(a3 + 12);
  if (v447 <= 1)
  {
    if (v447)
    {
      if (v447 != 1)
      {
        goto LABEL_1497;
      }

      if (*(a3 + 16) != *(a3 + 160))
      {
        sub_10001AFF4();
      }

      v490 = a3 + 487308;
      v491 = v4[137];
      v492 = v4[140];
      v1093 = v4[146];
      v1071 = v4[149];
      v1057 = v4[143];
      if (*(a3 + 156))
      {
        v493 = 0;
        v494 = *(a3 + 20);
        v495 = v4 + 138;
        do
        {
          v496 = *(a3 + 140 + 4 * (v493 % *(a3 + 132)));
          v497 = v495;
          v498 = 5;
          do
          {
            bzero((v490 + *(v497 - 1)), *v497);
            v497 += 3;
            --v498;
          }

          while (v498);
          if (v494 >= v496)
          {
            v499 = v496;
          }

          else
          {
            v499 = v494;
          }

          sub_10000A928(a3, v499, &v1117, (v490 + v491), (v490 + v492), (v490 + v1057));
          sub_1000090DC(v1084, (a3 + 132), a3 + 608, (v490 + v491), (v490 + v492), (v490 + v1093), (v490 + v1071), a3 + 58660 + 360 * *(a3 + 184) * v493);
          LOWORD(v494) = v494 - v496;
          ++v493;
        }

        while (v493 < *(a3 + 156));
        v491 = v991[137];
        v492 = v991[140];
        v1093 = v991[146];
        v1057 = v991[143];
        v1071 = v991[149];
      }

      if (*(a3 + 20) != *(a3 + 216))
      {
        sub_10001B020();
      }

      if (*(a3 + 212))
      {
        v500 = 0;
        v501 = 0;
        v502 = *(a3 + 16);
        do
        {
          v503 = *(a3 + 196 + 4 * (v501 % *(a3 + 188)));
          v504 = v991 + 138;
          v505 = 5;
          do
          {
            bzero((v490 + *(v504 - 1)), *v504);
            v504 += 3;
            --v505;
          }

          while (v505);
          if (v502 >= v503)
          {
            v506 = v503;
          }

          else
          {
            v506 = v502;
          }

          sub_10000ABF0(a3, v500, v506, &v1117, (v490 + v491), (v490 + v492), (v490 + v1057));
          sub_1000090DC(v1084, (a3 + 188), a3 + 608, (v490 + v491), (v490 + v492), (v490 + v1093), (v490 + v1071), a3 + 242980 + 360 * *(a3 + 240) * v501);
          v500 += v503;
          LOWORD(v502) = v502 - v503;
          ++v501;
        }

        while (v501 < *(a3 + 212));
      }
    }

    else
    {
      if (*(a3 + 16) != *(a3 + 160))
      {
        sub_10001AFF4();
      }

      if (*(a3 + 156))
      {
        v533 = 0;
        v534 = a3 + 487308;
        v535 = v991[137];
        v536 = v991[140];
        v1096 = v991[146];
        v1074 = v991[149];
        *v1048 = v991[143];
        v537 = *(a3 + 20);
        do
        {
          v538 = *(a3 + 140 + 4 * (v533 % *(a3 + 132)));
          v539 = v991 + 138;
          v540 = 5;
          do
          {
            bzero((v534 + *(v539 - 1)), *v539);
            v539 += 3;
            --v540;
          }

          while (v540);
          if (v537 >= v538)
          {
            v541 = v538;
          }

          else
          {
            v541 = v537;
          }

          sub_10000A928(a3, v541, &v1117, (v534 + v535), (v534 + v536), (v534 + *v1048));
          sub_1000090DC(v1084, (a3 + 132), a3 + 608, (v534 + v535), (v534 + v536), (v534 + v1096), (v534 + v1074), a3 + 58660 + 360 * *(a3 + 184) * v533);
          LOWORD(v537) = v537 - v538;
          ++v533;
        }

        while (v533 < *(a3 + 156));
      }
    }
  }

  else
  {
    switch(v447)
    {
      case 2:
        if (*(a3 + 16) != *(a3 + 160))
        {
          sub_10001AFF4();
        }

        if (*(a3 + 156))
        {
          v507 = 0;
          v508 = a3 + 487308;
          v509 = v991[137];
          v510 = v991[140];
          v1094 = v991[146];
          v1072 = v991[149];
          v511 = *(a3 + 20);
          do
          {
            v512 = *(a3 + 140 + 4 * (v507 % *(a3 + 132)));
            v513 = v991 + 138;
            v514 = 5;
            do
            {
              bzero((v508 + *(v513 - 1)), *v513);
              v513 += 3;
              --v514;
            }

            while (v514);
            if (v511 >= v512)
            {
              v515 = v512;
            }

            else
            {
              v515 = v511;
            }

            sub_10000AE4C(a3 + 12, v515, &v1117, (v508 + v509), (v508 + v510));
            sub_1000090DC(v1084, (a3 + 132), a3 + 608, (v508 + v509), (v508 + v510), (v508 + v1094), (v508 + v1072), a3 + 58660 + 360 * *(a3 + 184) * v507);
            LOWORD(v511) = v511 - v512;
            ++v507;
          }

          while (v507 < *(a3 + 156));
        }

        break;
      case 3:
        if (*(a3 + 16) != *(a3 + 160))
        {
          sub_10001AFF4();
        }

        v516 = a3 + 487308;
        v517 = v4[137];
        v518 = v4[140];
        v1095 = v4[146];
        v1073 = v4[149];
        v1058 = v4[143];
        if (*(a3 + 156))
        {
          v519 = 0;
          v520 = *(a3 + 20);
          v521 = v4 + 138;
          do
          {
            v522 = *(a3 + 140 + 4 * (v519 % *(a3 + 132)));
            v523 = v521;
            v524 = 5;
            do
            {
              bzero((v516 + *(v523 - 1)), *v523);
              v523 += 3;
              --v524;
            }

            while (v524);
            if (v520 >= v522)
            {
              v525 = v522;
            }

            else
            {
              v525 = v520;
            }

            sub_10000A928(a3, v525, &v1117, (v516 + v517), (v516 + v518), (v516 + v1058));
            sub_1000090DC(v1084, (a3 + 132), a3 + 608, (v516 + v517), (v516 + v518), (v516 + v1095), (v516 + v1073), a3 + 58660 + 360 * *(a3 + 184) * v519);
            LOWORD(v520) = v520 - v522;
            ++v519;
          }

          while (v519 < *(a3 + 156));
          v517 = v991[137];
          v518 = v991[140];
          v1095 = v991[146];
          v1058 = v991[143];
          v1073 = v991[149];
        }

        if (*(a3 + 20) != *(a3 + 216))
        {
          sub_10001B020();
        }

        if (*(a3 + 212))
        {
          v526 = 0;
          v527 = 0;
          v528 = *(a3 + 16);
          do
          {
            v529 = *(a3 + 196 + 4 * (v527 % *(a3 + 188)));
            v530 = v991 + 138;
            v531 = 5;
            do
            {
              bzero((v516 + *(v530 - 1)), *v530);
              v530 += 3;
              --v531;
            }

            while (v531);
            if (v528 >= v529)
            {
              v532 = v529;
            }

            else
            {
              v532 = v528;
            }

            sub_10000ABF0(a3, v526, v532, &v1117, (v516 + v517), (v516 + v518), (v516 + v1058));
            sub_1000090DC(v1084, (a3 + 188), a3 + 608, (v516 + v517), (v516 + v518), (v516 + v1095), (v516 + v1073), a3 + 242980 + 360 * *(a3 + 240) * v527);
            v526 += v529;
            LOWORD(v528) = v528 - v529;
            ++v527;
          }

          while (v527 < *(a3 + 212));
        }

        break;
      case 4:
        if (*(a3 + 16) != *(a3 + 160))
        {
          sub_10001AFF4();
        }

        v448 = a3 + 487308;
        v449 = v4[137];
        v450 = v4[140];
        v1040 = v4[146];
        v1032 = v4[149];
        if (*(a3 + 156))
        {
          v451 = 0;
          v452 = *(a3 + 20);
          v453 = v4 + 138;
          do
          {
            v454 = *(a3 + 140 + 4 * (v451 % *(a3 + 132)));
            v455 = v453;
            v456 = 5;
            do
            {
              bzero((v448 + *(v455 - 1)), *v455);
              v455 += 3;
              --v456;
            }

            while (v456);
            if (v452 >= v454)
            {
              v457 = v454;
            }

            else
            {
              v457 = v452;
            }

            sub_10000AE4C(a3 + 12, v457, &v1117, (v448 + v449), (v448 + v450));
            sub_1000090DC(v1084, (a3 + 132), a3 + 608, (v448 + v449), (v448 + v450), (v448 + v1040), (v448 + v1032), a3 + 58660 + 360 * *(a3 + 184) * v451);
            LOWORD(v452) = v452 - v454;
            ++v451;
          }

          while (v451 < *(a3 + 156));
          v449 = v991[137];
          v450 = v991[140];
          v1032 = v991[149];
          v1040 = v991[146];
        }

        if (*(a3 + 20) != *(a3 + 216))
        {
          sub_10001B020();
        }

        if (*(a3 + 212))
        {
          v458 = 0;
          v459 = 0;
          v1070 = *(a3 + 16);
          __srcc = (v448 + v449);
          v1047 = (v448 + v450);
          v460 = v1117;
          v994 = v1120;
          v986 = v1121[1];
          v988 = v1121[0];
          v461 = v1121[2];
          v462 = v1124;
          v1092 = *(&v1117 + 1);
          v463 = 4 * *(&v1117 + 1);
          v464 = v1121[3];
          v465 = 4 * v1121[3];
          v980 = v1125[1];
          v983 = v1125[0];
          do
          {
            v1025 = v458;
            v1018 = v459;
            v466 = 4 * (v459 % *(a3 + 188));
            v467 = v991 + 138;
            v1056 = *(a3 + 196 + v466);
            v468 = 5;
            do
            {
              bzero((v448 + *(v467 - 1)), *v467);
              v467 += 3;
              --v468;
            }

            while (v468);
            if (v1070 >= v1056)
            {
              v469 = v1056;
            }

            else
            {
              v469 = v1070;
            }

            if (!v469)
            {
              sub_10001B04C();
            }

            v470 = *(a3 + 20);
            if (v470)
            {
              v471 = 0;
              v472 = v994 - v1025;
              if (v994 - v1025 >= 1)
              {
                v473 = 0;
              }

              else
              {
                v473 = v462;
              }

              v474 = v473 + v472;
              v475 = __srcc;
              v476 = v1047;
              v477 = v980;
              v478 = v983;
              v480 = v986;
              v479 = v988;
              do
              {
                v481 = v477 + -16 * v472;
                if (v472 >= 1)
                {
                  v481 = v480 + 2 * (8 * v1025);
                }

                v482 = v469;
                v483 = v474;
                do
                {
                  if (!v483)
                  {
                    v481 = v477;
                    v483 = v462;
                  }

                  *v475 += *(v481 + 6) >> 2;
                  *v476 += *(v481 + 14) >> 2;
                  v481 += 16;
                  --v483;
                  --v482;
                }

                while (v482);
                if ((v460 - 3) >= 2 && v460 != 1)
                {
                  if (v460 == 2 || !v460)
                  {
                    sub_10001AE94();
                  }

                  sub_10001AEC0();
                }

                if ((v461 - 3) >= 2 && v461 != 1)
                {
                  if (v461 == 2 || !v461)
                  {
                    sub_10001AE94();
                  }

                  sub_10001AEC0();
                }

                v484 = v480 + 2 * v1092;
                v480 += v463;
                if (!v479)
                {
                  v480 = v484;
                }

                _CF = v479-- != 0;
                if (!_CF)
                {
                  v479 = 0;
                }

                v485 = v477 + 2 * v464;
                v477 += v465;
                v486 = v478 - 1;
                if (!v478)
                {
                  v486 = 0;
                  v477 = v485;
                }

                ++v475;
                ++v476;
                ++v471;
                v478 = v486;
              }

              while (v471 != v470);
              v487 = __srcc;
              v488 = v1047;
              v489 = 0x80 / v469;
              do
              {
                *v487 = (*v487 * v489) >> 5;
                ++v487;
                *v488 = (*v488 * v489) >> 5;
                ++v488;
                --v470;
              }

              while (v470);
            }

            sub_1000090DC(v1084, (a3 + 188), a3 + 608, __srcc, v1047, (v448 + v1040), (v448 + v1032), a3 + 242980 + 360 * *(a3 + 240) * v1018);
            v458 = v1056 + v1025;
            LOWORD(v1070) = v1070 - v1056;
            v459 = v1018 + 1;
          }

          while (v1018 + 1 < *(a3 + 212));
        }

        break;
      default:
LABEL_1497:
        sub_10001B078();
    }
  }

LABEL_1095:
  if (*(a3 + 608))
  {
    v742 = *(a3 + 12);
    if (v742 >= 5)
    {
      sub_10001B2B4();
    }

    v1020 = 0;
    __srce = *(a3 + 676);
    v743 = *(a3 + 684);
    v990 = *(a3 + 288);
    v744 = *(a3 + 292);
    v745 = *(a3 + 296);
    v746 = 8;
    if (v742 <= 1)
    {
      if (v742)
      {
LABEL_1103:
        if (8u / *(a3 + 164) != v746 / *(a3 + 220))
        {
          sub_10001B2E0();
        }

        v1020 = 1;
      }
    }

    else if (v742 != 2)
    {
      if (v742 != 4)
      {
        v746 = 4;
      }

      goto LABEL_1103;
    }

    v1000 = 8u / *(a3 + 164);
    v1010 = *(a3 + 656);
    v1012 = *(a3 + 680);
    v1116.i32[0] = 0;
    v1115.i32[0] = 0;
    __asm { FMOV            V12.2S, #1.0 }

    v751 = *(a3 + 664);
    if (*(a3 + 664))
    {
      v752 = 0;
      v753 = *(a3 + 668);
      v754 = *(a3 + 672);
      do
      {
        v1062 = v752;
        v755 = a3 + 132 + 56 * v752;
        *v1085 = *(v755 + 24);
        if (v1085[0])
        {
          v756 = 0;
          v757 = a3 + 58660 + 184320 * v752;
          v1081 = *(v755 + 52);
          do
          {
            if (v1081)
            {
              v758 = 0;
              v1103 = *(a3 + 620);
              do
              {
                v759 = (v757 + v758);
                LODWORD(v1117) = 0;
                v1108.i32[0] = 0;
                v760 = *(v757 + v758 + 340);
                if (v760)
                {
                  *v8.i32 = v760;
                }

                else
                {
                  *v8.i32 = 1.0;
                }

                v761.i32[1] = *(v757 + v758 + 168);
                v761.i32[0] = *(v757 + v758 + 160);
                v762 = vdiv_f32(v761, vdup_lane_s32(*v8.i8, 0));
                v763 = vmul_n_f32(v762, v760);
                v764.i32[1] = *(v757 + v758 + 176);
                v765 = vmul_n_f32(v763, v1103);
                v764.i32[0] = *(v757 + v758 + 164);
                v759[88] = fmaxf(vaddv_f32(vdiv_f32(vmls_f32(v764, v762, v763), vbsl_s8(vceqz_f32(v765), _D12, v765))) * 65536.0, 0.0);
                sub_10000B06C(a3 + 284, v757 + v758, v1108.i32, &v1117);
                v766 = *&v1117;
                v759[86] = v1117;
                v759[87] = v1108.i32[0];
                if (v766 >= v754 && v759[88] >= v753)
                {
                  *(v757 + v758 + 356) = 1;
                }

                v758 += 360;
              }

              while (360 * v1081 != v758);
              v757 += v758;
            }

            ++v756;
          }

          while (v756 != *v1085);
        }

        v752 = v1062 + 1;
      }

      while (v1062 != v1020);
    }

    *(a3 + 636) = 0;
    v1063 = *(a3 + 34);
    if (*(a3 + 34))
    {
      v1027 = 0;
      v767 = v1000 >> 1;
      v1082 = *(a3 + 32);
      v768 = (v1010 + (v1010 >> 15));
      v769 = -(v768 >> 1);
      v1001 = (__srce - v1012);
      v770 = 1.0 - v743;
      if (v743 == 1.0)
      {
        v770 = 1.0;
      }

      v996 = v770;
      v771 = v767;
      v1013 = v768 >> 1;
      if (v769 <= v768 >> 1)
      {
        v772 = v768 >> 1;
      }

      else
      {
        v772 = -(v768 >> 1);
      }

      v1104 = v772;
      v1034 = -(v768 >> 1);
      do
      {
        if (v1082)
        {
          *v1086 = 0;
          do
          {
            v1135 = 0;
            v1133 = 0u;
            v1134 = 0u;
            v1131 = 0u;
            v1132 = 0u;
            v1129 = 0u;
            v1130 = 0u;
            v1127 = 0u;
            v1128 = 0u;
            v1126 = 0u;
            v1124 = 0u;
            memset(v1125, 0, sizeof(v1125));
            v1122 = 0u;
            v1123 = 0u;
            memset(v1121, 0, sizeof(v1121));
            v1119 = 0u;
            v1120 = 0u;
            v1117 = 0u;
            v1118 = 0u;
            if (v769 <= v1013)
            {
              v774 = 0;
              v773 = 0;
              v775 = v769;
              do
              {
                v1042 = v775;
                v776 = v775 + v1027;
                do
                {
                  _CF = v769 + v1086[0] >= v1082 || v776 >= v1063;
                  if (!_CF)
                  {
                    v778 = 0;
                    v779 = *(a3 + 660);
                    v780 = a3 + 58676;
                    do
                    {
                      v781 = a3 + 132 + 56 * v778;
                      if (v778)
                      {
                        v782 = v769 + LOWORD(v1086[0]);
                      }

                      else
                      {
                        v782 = v776;
                      }

                      v783 = v782 * *v781;
                      if ((*v781 + v783) >= *(v781 + 24))
                      {
                        v784 = *(v781 + 24);
                      }

                      else
                      {
                        v784 = (*v781 + v783);
                      }

                      if (v784 > v783)
                      {
                        if (v778)
                        {
                          v785 = v776;
                        }

                        else
                        {
                          v785 = v769 + LOWORD(v1086[0]);
                        }

                        v786 = *(v781 + 52);
                        if ((v785 + 1) >= v786)
                        {
                          v787 = v786;
                        }

                        else
                        {
                          v787 = (v785 + 1);
                        }

                        v788 = v783;
                        v789 = v786 * v783 + v785;
                        v790 = a3 + 58660 + 184320 * v778 + 360 * v789;
                        v791 = v780 + 360 * v789;
                        do
                        {
                          v792 = v791;
                          v793 = v785;
                          v794 = v790;
                          if (v785 < v787)
                          {
                            do
                            {
                              if (!v751 || *(v794 + 356) == 1)
                              {
                                v795 = 0;
                                v796 = *(v794 + 340);
                                do
                                {
                                  v797 = (&v1117 + v795);
                                  *v797 = vaddq_f32(*(v794 + v795), *(&v1117 + v795));
                                  v797[1].f32[0] = *(v792 + v795) + *(&v1117 + v795 + 16);
                                  v795 += 20;
                                }

                                while (v795 != 340);
                                v774 += v796;
                                if (v796)
                                {
                                  *v9.i32 = v796;
                                }

                                else
                                {
                                  *v9.i32 = 1.0;
                                }

                                *v9.i8 = vdup_lane_s32(*v9.i8, 0);
                                v798.i32[1] = *(v794 + 168);
                                v798.i32[0] = *(v794 + 160);
                                v799 = vdiv_f32(v798, *v9.i8);
                                v800 = vmul_n_f32(v799, v796);
                                v801 = vmul_n_f32(v800, *(a3 + 620));
                                v802.i32[1] = *(v794 + 176);
                                v802.i32[0] = *(v794 + 164);
                                v773 += fmaxf(vaddv_f32(vdiv_f32(vmls_f32(v802, v799, v800), vbsl_s8(vceqz_f32(v801), _D12, v801))) * v779, 0.0);
                              }

                              v794 += 360;
                              ++v793;
                              v792 += 360;
                            }

                            while (v793 != v787);
                          }

                          v790 += 360 * v786;
                          ++v788;
                          v791 += 360 * v786;
                        }

                        while (v788 != v784);
                      }

                      ++v778;
                      v780 += 184320;
                    }

                    while (v778 != v1020 + 1);
                  }

                  _ZF = v769++ == v1104;
                }

                while (!_ZF);
                v775 = v1042 + 1;
                v769 = v1034;
              }

              while (v1042 != v1104);
              DWORD1(v1134) = v774;
            }

            else
            {
              v773 = 0;
            }

            sub_10000B06C(a3 + 284, &v1117, v1115.i32, v1116.i32);
            v803 = *v1116.i32 <= v743 || v773 <= __srce - (((*v1116.i32 - v743) * v1001) / v996);
            v769 = v1034;
            v804 = v744 * ((v771 * *v1115.i32) - v990);
            v805 = *v1086;
            v806 = !v803;
            if (v803)
            {
              v807 = 0;
            }

            else
            {
              v807 = v773;
            }

            v808 = a3 + 480040 + 52 * (*v1086 + v1027 * v1082);
            *(v808 + 24) = (*v1116.i32 * 1000.0);
            *(v808 + 28) = v807;
            if (v806)
            {
              v809 = -96;
            }

            else
            {
              v809 = -120;
            }

            *(v808 + 32) = v745 * v804;
            *(v808 + 36) = 0;
            *(v808 + 40) = 0;
            *(v808 + 44) = v809;
            ++*v1086;
          }

          while (v805 + 1 != v1082);
        }

        ++v1027;
      }

      while (v1027 != v1063);
    }

    v747 = v1063;
    goto LABEL_1181;
  }

  v990 = *(a3 + 288);
  v747 = *(a3 + 34);
LABEL_1181:
  v810 = *(a3 + 32);
  v811 = v747 * v810;
  if (v747 * v810)
  {
    v812 = a3 + 6948;
    v813 = a3 + 7092;
    v814 = vcvts_n_s32_f32(v990, 0xCuLL);
    v815 = (a3 + 6964);
    do
    {
      v816 = 0;
      v817 = v812;
      v818 = v813;
      do
      {
        for (j = 0; j != 24; j += 8)
        {
          v820 = *(v817 + j);
          *(v817 + j) = *(v818 + j);
          *(v818 + j) = v820;
        }

        ++v816;
        v818 -= 24;
        v817 += 24;
      }

      while (v816 != 3);
      v821 = 0;
      v822 = v815;
      do
      {
        v823 = *(v822 - 1);
        v824 = dword_10001FE90[v821];
        v825 = ((*v822 << dword_10001FE20[v821]) * dword_10001FE58[v821] - ((v823 * v814 + 2048) >> 12)) << v824;
        *(v822 - 1) = v823 << v824;
        *v822 = v825;
        ++v821;
        v822 += 3;
      }

      while (v821 != 14);
      v812 += 404;
      v813 += 404;
      v815 = (v815 + 404);
      --v811;
    }

    while (v811);
  }

  bzero((a3 + 441636), 0x6E00uLL);
  if (v747)
  {
    v826 = *(a3 + 292) * *(a3 + 296);
    v827 = a3 + 463652;
    v828 = a3 + 6948;
    v829 = *(a3 + 308);
    v830 = a3 + 441636;
    do
    {
      if (v810)
      {
        v831 = (v828 + 16);
        v832 = (v828 + 344);
        v833 = v830;
        v834 = v827;
        v835 = v810;
        do
        {
          v836 = 0;
          v837 = 0;
          v838 = 0;
          v839 = (v828 + 388);
          v840 = v831;
          do
          {
            v841 = *(v840 - 1);
            v842 = (v841 / v829);
            if (v842)
            {
              v843 = v826 * vcvts_n_f32_s64((*v840 << 8) / v841, 8uLL);
              if (v843 < 0.0)
              {
                v844 = -0.5;
              }

              else
              {
                v844 = 0.5;
              }

              v845 = (v843 + v844);
              v846 = *(v840 - 4);
            }

            else
            {
              v845 = 0;
              v846 = 0;
            }

            v847 = (v833 + v836 * 4);
            *v847 = v846;
            v847[14] = v842;
            v847[28] = v845;
            v837 += dword_10001FEC8[v836] * v842;
            v838 += v846;
            ++v836;
            v840 += 3;
          }

          while (v836 != 14);
          v848 = *(v828 + 384);
          if (v848 && *v839)
          {
            v849 = 0;
            v850 = *v839 * *v839;
            v851 = 16 * v837;
            if (v838 <= 1)
            {
              v852 = 1;
            }

            else
            {
              v852 = v838;
            }

            v853 = (a3 + 326);
            v854 = v851 / v852;
            do
            {
              v856 = *v853;
              v853 += 2;
              v855 = v856;
              if (v849 > 2)
              {
                break;
              }

              ++v849;
              v857 = v855 == 0xFFFF || v854 < v855;
            }

            while (!v857);
            v858 = 10000 * (*(v828 + 396) * v848 - v850) / v850 > *(v853 - 1);
          }

          else
          {
            v858 = 0;
          }

          v859 = 0;
          *(v833 + 168) = v858;
          v860 = v832;
          do
          {
            v861 = (v834 + v859);
            *v861 = *(v860 - 2);
            v861[4] = *(v860 - 1);
            v862 = *v860;
            v860 += 3;
            v861[8] = v862;
            v859 += 4;
          }

          while (v859 != 16);
          v828 += 404;
          v833 += 172;
          v834 += 48;
          v831 = (v831 + 404);
          v832 += 101;
          --v835;
        }

        while (v835);
      }

      v830 += 172 * v810;
      v827 += 48 * v810;
      --v747;
    }

    while (v747);
  }

  if (*(a3 + 312) != 1)
  {
    sub_10001B30C();
  }

  v863 = 0;
  v1035 = a3 + 312;
  v1014 = a3 + 469800;
  v864 = &v1120 + 8;
  v865 = 1;
  do
  {
    v1064 = v865;
    v866 = *(v1035 + 4 * v863);
    if (v866 >= 1)
    {
      v867 = v1014 + (v863 << 11);
      v868 = *(a3 + 32);
      v869 = *(a3 + 34);
      if (v866 == 1)
      {
        v870 = v869 * v868;
        if (v869 * v868)
        {
          v871 = a3 + 441636;
          do
          {
            sub_10000B394(a3 + 284, v871, v867);
            v871 += 172;
            v867 += 16;
            --v870;
          }

          while (v870);
        }
      }

      else
      {
        v872 = 0;
        if (v868 >= v866)
        {
          v873 = *(v1035 + 4 * v863);
        }

        else
        {
          v873 = *(a3 + 32);
        }

        if (v869 >= v866)
        {
          v874 = *(v1035 + 4 * v863);
        }

        else
        {
          v874 = *(a3 + 34);
        }

        v1105 = v874;
        v875 = *(a3 + 34);
        v876 = *(a3 + 32);
        do
        {
          if (v873 <= v876)
          {
            v878 = 0;
            LODWORD(v877) = v876;
            do
            {
              v879 = v878 + v877 * v872;
              v1124 = 0u;
              memset(v1125, 0, 28);
              v1122 = 0u;
              v1123 = 0u;
              memset(v1121, 0, sizeof(v1121));
              v1119 = 0u;
              v1120 = 0u;
              v1117 = 0u;
              v1118 = 0u;
              if (v869)
              {
                v880 = 0;
                v881 = 0;
                v882 = a3 + 441636 + 172 * v879;
                v883 = a3 + 441692 + 172 * (v878 + v872 * v877);
                v884 = v1105;
                do
                {
                  v885 = v883;
                  v886 = v873;
                  v887 = v882;
                  if (v868)
                  {
                    do
                    {
                      if (*(v887 + 168))
                      {
                        v888 = v885;
                        v889 = &v1120 + 2;
                        v890 = 14;
                        do
                        {
                          *(v889 - 14) += *(v888 - 14);
                          v891 = *v888;
                          *v889 += *v888;
                          v889[14] += v888[14] * v891;
                          ++v889;
                          ++v888;
                          --v890;
                        }

                        while (v890);
                        v880 = ++v881;
                      }

                      v887 += 172;
                      v885 += 43;
                      --v886;
                    }

                    while (v886);
                  }

                  v882 += 172 * v876;
                  v883 += 172 * v876;
                  --v884;
                }

                while (v884);
                LOBYTE(v1125[3]) = v880;
              }

              v892 = 0;
              v893 = v867 + 16 * v879;
              do
              {
                v894 = &v1117 + v892;
                v895 = *(&v1121[-1] + v892);
                if (v895)
                {
                  v896 = *(v894 + 28);
                  v897 = v895 >> 1;
                  if (v896 < 0)
                  {
                    v897 = -v897;
                  }

                  *(v894 + 28) = (v897 + v896) / v895;
                }

                v892 += 4;
              }

              while (v892 != 56);
              sub_10000B394(a3 + 284, &v1117, v893);
              v877 = *(a3 + 32);
              LOWORD(v876) = *(a3 + 32);
              v857 = v878++ < (v877 - v873);
            }

            while (v857);
            v875 = *(a3 + 34);
          }

          else
          {
            v877 = v876;
          }

          v876 = v877;
          v857 = v872++ < v875 - v1105;
        }

        while (v857);
      }
    }

    v865 = 0;
    v863 = 1;
  }

  while ((v1064 & 1) != 0);
  v898 = *(a3 + 12);
  if (v898 >= 5)
  {
    sub_10001B338();
  }

  v899 = *(a3 + 34);
  v900 = v899 * *(a3 + 32);
  v901 = (a3 + 463652);
  if (v900)
  {
    v902 = qword_10001FF60[v898];
    v903 = v899 * *(a3 + 32);
    do
    {
      v904 = v901;
      v905 = v902;
      do
      {
        v904[2561] = *v904;
        v904[2565] = v904[4];
        v904[2569] = v904[8];
        ++v904;
        --v905;
      }

      while (v905);
      v901 += 12;
      --v903;
    }

    while (v903);
  }

  *(a3 + 487232) = *(a3 + 6861);
  *(a3 + 487236) = *(a3 + 6865);
  if (*(a3 + 6860))
  {
    v906 = a3 + 486700;
    v907 = *v991;
    if (v900 && v907 <= 0x7F)
    {
      v908 = (v906 + 4 * v907);
      v909 = v900 - 1;
      v910 = a3 + 473896;
      do
      {
        sub_10000B5E0(*(a3 + 12), v910);
        LOWORD(v907) = *v991;
        if (v911 >= 0.0)
        {
          *v908++ = v911;
          LOWORD(v907) = v907 + 1;
          *v991 = v907;
        }

        if (!v909)
        {
          break;
        }

        v910 += 48;
        --v909;
      }

      while (v907 < 0x80u);
    }

    if (v907)
    {
      qsort((a3 + 486700), v907, 4uLL, sub_10000B73C);
      v912 = 0;
      v913 = *v991;
      do
      {
        v914 = (42949673 * (*(a3 + 487232 + v912) * v913 + 50)) >> 32;
        if (v914 >= v913)
        {
          LODWORD(v914) = v913 - 1;
        }

        *(a3 + 487212 + 4 * v912++) = *(v906 + 4 * v914);
      }

      while (v912 != 5);
    }

    v915 = 0;
    v916 = a3 + 6868;
    while (2)
    {
      v917 = 0;
      do
      {
        v918 = *(v916 + 4 * v917);
        if (v918 < 0.0)
        {
          goto LABEL_1285;
        }

        v919 = *(a3 + 487212 + 4 * v917);
        if (v917 > 3)
        {
          break;
        }

        ++v917;
      }

      while (v918 <= v919);
      if (v918 > v919)
      {
LABEL_1285:
        if (*(v991 + 544) >= 5u)
        {
          sub_10001B364();
        }

        break;
      }

      *(v991 + 544) = ++v915;
      v916 += 20;
      if (v915 != 4)
      {
        continue;
      }

      break;
    }
  }

  if (*(a3 + 400))
  {
    v920 = *(a3 + 404);
    if (*(v991 + 544) && v920 > *(a3 + 408))
    {
      v920 = *(a3 + 408);
    }
  }

  else
  {
    v920 = 0.0;
  }

  v921 = 0;
  v922 = ((*(a3 + 292) * *(a3 + 288)) * *(a3 + 296)) * -0.5;
  v923 = 1;
  do
  {
    v1106 = v923;
    v924 = *(v1035 + 4 * v921);
    if (v924 >= 1)
    {
      v925 = *(a3 + 34);
      v926 = v925 - v924;
      if (v925 >= v924)
      {
        v927 = 0;
        v928 = a3 + 480040;
        v929 = *(a3 + 469796);
        v930 = a3 + 473896;
        v931 = v1014 + (v921 << 11);
        v932 = a3 + 360 + 20 * v921;
        v933 = v921 << 6;
        v934 = *(a3 + 32);
        v1087 = v934 - v924;
        v935 = *(a3 + 32);
        v1028 = v925 - v924;
        v1021 = v934;
        while (v934 < v924)
        {
LABEL_1360:
          v930 += 48 * v935;
          v931 += 16 * v935;
          v928 += 52 * v935;
          _ZF = v927++ == v926;
          if (_ZF)
          {
            goto LABEL_1362;
          }
        }

        v1083 = v927;
        v936 = 0;
        *v1051 = v930;
        v1065 = v931;
        v1043 = v928;
        while (1)
        {
          sub_10000B5E0(*(a3 + 12), v930);
          if (*(a3 + 344))
          {
            v938 = *(v931 + 12) ? v864 & 0xFFFFFFFE : (v864 & 0xFFFFFFFE) + 1;
          }

          else
          {
            v938 = v864 & 0xFFFFFFFE;
          }

          if (*(a3 + 348))
          {
            v939 = *(v931 + 8);
            v940 = vcvts_n_f32_s32(v939, 4uLL) + v929;
            v941 = *(a3 + 356);
            v942 = v938 & 0xFFFFFFFB | (4 * (v940 >= v941));
            if (v939 >= -1024 && v940 < v941)
            {
              v942 = v938 & 0xFFFFFFFB | (4 * (v940 <= *(a3 + 352)));
            }
          }

          else
          {
            v942 = v938 & 0xFFFFFFFB;
          }

          if (*v932)
          {
            v943 = *(v932 + 4);
            if (v943 <= 1)
            {
              v943 = 1;
            }

            v944 = *(v931 + 4);
            v945 = *v931 / v943;
            v946 = (*(v931 + 8) * 0.0625) - v922;
            if (v946 < 0.0)
            {
              v946 = -v946;
            }

            v947 = ((1.0 - ((v946 + -16.0) * 0.0625)) * 20.0) + (((v946 + -16.0) * 0.0625) * 10.0);
            if (v946 > 32.0)
            {
              v947 = 10.0;
            }

            if (v946 <= 16.0)
            {
              v947 = ((1.0 - ((v946 + -8.0) * 0.125)) * 40.0) + (((v946 + -8.0) * 0.125) * 20.0);
            }

            v948 = v946 > 8.0 ? v947 : 40.0;
            v949 = (*(v932 + 8) * ((sqrtf(v945) * v948) + 0.5)) >> 8;
            v950 = v945 >= *(v932 + 16) || v944 >= *(v932 + 12);
            v951 = v950 && v944 >= v949;
            v952 = v951 ? 0 : 8;
            v953 = v952 | v942 & 0xFFFFFFF7;
          }

          else
          {
            v953 = v942 & 0xFFFFFFF7;
          }

          v954 = *(a3 + 400) ? v953 & 0xFFFFFFEF | (16 * (v937 >= v920)) : v953 & 0xFFFFFFEF;
          LODWORD(v864) = v954 & 0xFFFFFFDD;
          v955 = *(v931 + 8) * 0.0625;
          if (v924 != 1)
          {
            break;
          }

          if ((v1106 & 1) == 0)
          {
            sub_10001B3E8();
          }

          *v928 = *v931;
          *(v928 + 8) = v955;
          *(v928 + 12) = v937;
          *(v928 + 16) = 0;
          *(v928 + 20) = v954 & 0xDD;
          v956 = ~(2 * v954) & 0x20;
          if ((v954 & 0xD) != 0)
          {
            v956 = 0;
          }

          *(v928 + 20) = v956 | v954 & 0x1D;
LABEL_1357:
          v931 += 16;
          v930 += 48;
          v928 += 52;
          _ZF = v936++ == v1087;
          if (_ZF)
          {
            v935 = *(a3 + 32);
            v926 = v1028;
            v927 = v1083;
            v930 = *v1051;
            v931 = v1065;
            v934 = v1021;
            v928 = v1043;
            goto LABEL_1360;
          }
        }

        if (v1106)
        {
          sub_10001B3BC();
        }

        if ((v954 & 0xD) != 0)
        {
          goto LABEL_1357;
        }

        v957 = *(v931 + 12);
        v958 = v924;
        v959 = v928;
LABEL_1342:
        v960 = (v959 + 20);
        v961 = v924;
        while (1)
        {
          v962 = *v960;
          if (((*v960 & 0x10) != 0 || (*v960 & 1) != 0 && (v924 * v924) >> 1 >= v957) && !*(a3 + 324))
          {
            goto LABEL_1355;
          }

          if (*(a3 + 342) == 1)
          {
            if ((*v960 & 0x20) != 0 && *(v960 - 3) <= v955)
            {
              goto LABEL_1355;
            }
          }

          else
          {
            if (*(a3 + 342))
            {
              sub_10001B390();
            }

            if ((*v960 & 0x20) != 0 && *(v960 - 3) >= v955)
            {
              goto LABEL_1355;
            }
          }

          *(v960 - 5) = *v931;
          *(v960 - 3) = v955;
          *v960 = v962 & 0x33 | v933 | 0x20;
LABEL_1355:
          v960 += 13;
          if (!--v961)
          {
            v959 += 52 * *(a3 + 32);
            if (!--v958)
            {
              goto LABEL_1357;
            }

            goto LABEL_1342;
          }
        }
      }
    }

LABEL_1362:
    v923 = 0;
    v921 = 1;
  }

  while ((v1106 & 1) != 0);
  if (*(a3 + 412))
  {
    if (*(a3 + 608))
    {
      v963 = *(a3 + 34) * *(a3 + 32);
      if (v963)
      {
        v964 = a3 + 480048;
        do
        {
          if (*(a3 + 413) && (*(v964 + 36) & 0x20) == 0)
          {
            *(v964 + 12) = *(v964 + 12) & 0xDD | 2;
          }

          if ((*(v964 + 12) & 0x20) != 0)
          {
            v965 = *v964;
            if ((*v964 <= 0.0 || *(v964 + 24) >= 0.0) && (v965 >= 0.0 || *(v964 + 24) <= 0.0))
            {
              v966 = v965 >= 0.0 ? *v964 : -v965;
              if (v966 > 1.0)
              {
                v967 = *(v964 + 24);
                if (v967 >= 0.0)
                {
                  v968 = *(v964 + 24);
                }

                else
                {
                  v968 = -v967;
                }

                if (v968 <= v966)
                {
                  v969 = sub_10000B754(a3 + 480, v966);
                  if (v967 == 0.0)
                  {
                    v971 = 1.0;
                  }

                  else
                  {
                    v971 = v968;
                  }

                  v970 = v966 / v971;
                }

                else
                {
                  v969 = sub_10000B754(a3 + 544, v966);
                  v970 = v968 / v966;
                }

                v972 = powf(v970, v969);
                v973 = v972 * sub_10000B754(a3 + 416, *(v964 + 16));
                *v964 = (v967 * v973) + (v965 * (1.0 - v973));
                *(v964 + 8) = v973;
              }
            }
          }

          v964 += 52;
          --v963;
        }

        while (v963);
      }
    }
  }

  return sub_100007A80(a3);
}

uint64_t sub_100007A80(uint64_t result)
{
  if (*(result + 712))
  {
    v1 = *(result + 713);
    v2 = *(result + 714) == v1 ? 1 : *(result + 714) - v1;
    v3 = *(result + 34);
    if (*(result + 34))
    {
      v4 = 0;
      v5 = *(result + 272);
      v6 = result + 480040;
      v7 = *(result + 280);
      v8 = *(result + 262);
      v35 = *(result + 268);
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
          v18 = *(result + 276);
          v19 = *(result + 260);
          v20 = *(result + 264);
          v21 = v35;
          do
          {
            v22 = 0;
            v23 = v21 >> 8;
            v24 = (v21 >> 8) & ~(v21 >> 31);
            v21 += v18;
            v25 = (v21 + 255) >> 8;
            if (v23 <= v19)
            {
              v26 = v24;
            }

            else
            {
              v26 = v19;
            }

            if (v25 <= v19)
            {
              v27 = v25 & ~((v21 + 255) >> 31);
            }

            else
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
              v29 = result + 715 + v14 * v20 + v26;
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
              if (v27 > v26)
              {
                v22 /= v28 * v16;
              }
            }

            v34 = (((v22 - v1) * v10) >> 8) & ~(((v22 - v1) * v10) >> 31);
            if (v34 >= 255)
            {
              LOBYTE(v34) = -1;
            }

            *(v6 + 48) = v34;
            v6 += 52;
            ++v17;
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

uint64_t sub_100007C3C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a1)
  {
    sub_10001B574();
  }

  if (!a2)
  {
    sub_10001B548();
  }

  if (!a3)
  {
    sub_10001B51C();
  }

  bzero(a3 + 117450, 0x4424uLL);
  a3[117449] = a3[71];
  v6 = a3[1];
  if (v6 <= 1)
  {
    if (!v6)
    {
      v10 = a1;
      v11 = 0;
      v8 = a2;
      v9 = 0;
      return sub_10000181C(&v10, &v8, a3);
    }

    if (v6 == 1)
    {
      sub_10001B4C4();
    }

LABEL_19:
    sub_10001B4F0();
  }

  if (v6 != 3)
  {
    if (v6 == 2)
    {
      sub_10001B498();
    }

    if (v6 == 4)
    {
      sub_10001B46C();
    }

    goto LABEL_19;
  }

  v10 = 0;
  v11 = 0;
  v8 = a1;
  v9 = a2;
  return sub_10000181C(&v10, &v8, a3);
}

void sub_100007D3C(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          bzero(a4 + 117450, 0x4424uLL);
          a4[117449] = a4[71];
          v5 = a4[1];
          if (v5 <= 1)
          {
            if (!v5)
            {
              __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 5331, "false");
            }

            if (v5 == 1)
            {
              __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 5335, "false");
            }
          }

          else
          {
            switch(v5)
            {
              case 2:
                __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 5339, "false");
              case 3:
                __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 5343, "false");
              case 4:
                __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 5347, "false");
            }
          }

          __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 5351, "false");
        }

        __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 5326, "pContext != nullptr");
      }

      __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 5325, "pIn2 != nullptr");
    }

    __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 5324, "pIn1 != nullptr");
  }

  __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 5323, "pIn0 != nullptr");
}

uint64_t sub_100007EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (!a1)
  {
    sub_10001B72C();
  }

  if (!a2)
  {
    sub_10001B700();
  }

  if (!a3)
  {
    sub_10001B6D4();
  }

  if (!a4)
  {
    sub_10001B6A8();
  }

  if (!a5)
  {
    sub_10001B67C();
  }

  bzero(a5 + 117450, 0x4424uLL);
  a5[117449] = a5[71];
  v10 = a5[1];
  if (v10 != 1)
  {
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        sub_10001B5CC();
      }

      if (v10 == 4)
      {
        sub_10001B5A0();
      }
    }

    else
    {
      if (!v10)
      {
        sub_10001B624();
      }

      if (v10 == 2)
      {
        sub_10001B5F8();
      }
    }

    sub_10001B650();
  }

  v13[0] = a1;
  v13[1] = a3;
  v12[0] = a2;
  v12[1] = a4;
  return sub_10000181C(v13, v12, a5);
}

int *sub_100008008(int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = result + 6;
  v9 = 0uLL;
  v10 = 1;
  v42 = result;
  do
  {
    v11 = v10;
    v12 = a4 + 112 * v6;
    *(v12 + 80) = v9;
    *(v12 + 96) = v9;
    *(v12 + 48) = v9;
    *(v12 + 64) = v9;
    *(v12 + 16) = v9;
    *(v12 + 32) = v9;
    *v12 = v9;
    v13 = *result;
    v14 = &v8[12 * v6];
    *v12 = *result;
    *(v12 + 36) = -1;
    *(v12 + 76) = -1;
    v16 = v14[2].u32[0];
    v15 = v14[2].u32[1];
    v18 = v14[1].u32[0];
    v17 = v14[1].u32[1];
    v19 = v16 - v18;
    if (v16 <= v18 || v15 <= v17)
    {
      goto LABEL_51;
    }

    v21 = v15 - v17;
    *(v12 + 4) = v21;
    if (v13 > 1)
    {
      if (v13 != 2)
      {
        if (v13 != 3)
        {
          if (v13 != 4)
          {
            goto LABEL_76;
          }

          if (v14[3].i32[0])
          {
            sub_10001B758();
          }

          if (v14[3].i32[1] != 2)
          {
            sub_10001B784();
          }

          v22 = 0;
          v23 = 2;
LABEL_19:
          *(v12 + 72) = v19;
          *(v12 + 76) = 0;
          *(v12 + 80) = v23;
          *(v12 + 32) = v19;
          *(v12 + 36) = 1;
          v24 = v19;
          *(v12 + 40) = v22;
          goto LABEL_26;
        }

        goto LABEL_16;
      }

      if (v14[3].i32[0])
      {
        sub_10001B7B0();
      }

      if (v14[3].i32[1] != -1)
      {
        sub_10001B7DC();
      }

      v25 = 0;
LABEL_25:
      v24 = 0;
      *(v12 + 32) = v19;
      *(v12 + 36) = 0;
      *(v12 + 40) = v25;
      *(v12 + 72) = 0xFFFFFFFF00000000;
      *(v12 + 80) = -1;
      goto LABEL_26;
    }

    if (!v13)
    {
      v25 = v14[3].u32[0];
      if (v25 >= 2)
      {
        sub_10001BA18();
      }

      if (v14[3].i32[1] != -1)
      {
        sub_10001B860();
      }

      goto LABEL_25;
    }

    if (v13 != 1)
    {
LABEL_76:
      sub_10001BA44();
    }

LABEL_16:
    v22 = v14[3].u32[0];
    if (v22 >= 2)
    {
      sub_10001B834();
    }

    v23 = v14[3].i32[1];
    if ((v23 - 4) <= 0xFFFFFFFD)
    {
      sub_10001B808();
    }

    if (v13 != 1)
    {
      goto LABEL_19;
    }

    *(v12 + 32) = v19;
    *(v12 + 36) = 0;
    *(v12 + 40) = v22;
    *(v12 + 72) = v19;
    *(v12 + 76) = 1;
    v24 = v19;
    *(v12 + 80) = v23;
LABEL_26:
    if (v21 != result[2])
    {
      sub_10001B88C();
    }

    v26 = *(a2 + 8 * v6);
    if (!v26)
    {
      sub_10001B9EC();
    }

    v27 = v14[5];
    v28 = vshr_n_u32(v27, 1uLL);
    *&v29 = v28.u32[0];
    *(&v29 + 1) = v28.u32[1];
    *(v12 + 8) = v29;
    if (v27.i32[0] <= 1u)
    {
      sub_10001B9C0();
    }

    if (v27.i32[1] <= 1u)
    {
      sub_10001B994();
    }

    if (v13 <= 1)
    {
      if (v13)
      {
        v33 = v26 + v14[4].u32[1];
        *(v12 + 56) = v33;
        v31 = v33 + 2 * v28.u32[0];
      }

      else
      {
LABEL_35:
        v31 = 0;
        *(v12 + 56) = v26 + v14[4].u32[1];
      }

      v32 = 96;
      goto LABEL_38;
    }

    if (v13 == 2)
    {
      goto LABEL_35;
    }

    if (v13 != 3)
    {
      sub_10001B8B8();
    }

    v30 = v26 + v14[4].u32[1];
    *(v12 + 96) = v30;
    v31 = v30 + 2 * v28.u32[0];
    v32 = 56;
LABEL_38:
    *(v12 + v32) = v31;
    v34 = *(a3 + 8 * v6);
    if (!v34)
    {
      sub_10001B968();
    }

    v45 = v24;
    v47 = 0;
    v48 = 0;
    v46 = 0;
    sub_1000086DC(v13, &v8[12 * v6], 6, &v48, &v47, &v46);
    *(v12 + 24) = v48 >> 1;
    *(v12 + 48) = 0;
    *(v12 + 88) = 0;
    v35 = sub_100008850(v13);
    if (v13 > 1)
    {
      v9 = 0uLL;
      if (v13 == 3)
      {
LABEL_43:
        v37 = v14[1].u32[1];
        if (v35 > v37)
        {
          *(v12 + 48) = v35 - v37;
        }

        v38 = v14->u32[1] + ~v35;
        v39 = v38 >= v37;
        v40 = v38 - v37;
        if (v39)
        {
          *(v12 + 88) = v40;
        }

        *(v12 + 64) = v34 + v47;
        v36 = v34 + v46;
        goto LABEL_49;
      }
    }

    else
    {
      v9 = 0uLL;
      if (v13)
      {
        goto LABEL_43;
      }
    }

    v36 = 0;
    *(v12 + 64) = v34 + v47;
LABEL_49:
    result = v42;
    *(v12 + 104) = v36;
    if (!*(v12 + 24))
    {
      sub_10001B93C();
    }

    v7 += v45;
    v5 += v19;
LABEL_51:
    v10 = 0;
    v6 = 1;
  }

  while ((v11 & 1) != 0);
  v41 = result[1];
  if (v5 && v5 != v41)
  {
    sub_10001B910();
  }

  if (v7)
  {
    if (v7 != v41)
    {
      sub_10001B8E4();
    }
  }

  return result;
}

unint64_t sub_1000083D8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = result + 24;
  v9 = 0uLL;
  v10 = 1;
  do
  {
    v11 = v10;
    v12 = a3 + 80 * v6;
    *(v12 + 48) = v9;
    *(v12 + 64) = v9;
    *(v12 + 16) = v9;
    *(v12 + 32) = v9;
    *v12 = v9;
    v13 = *v4;
    v14 = (v8 + 48 * v6);
    *v12 = *v4;
    *(v12 + 20) = -1;
    *(v12 + 52) = -1;
    v15 = v14[4];
    v16 = v14[5];
    v18 = v14[2];
    v17 = v14[3];
    v19 = v15 >= v18;
    v20 = v15 - v18;
    if (v20 == 0 || !v19 || v16 <= v17)
    {
      goto LABEL_37;
    }

    v22 = v16 - v17;
    *(v12 + 4) = v22;
    if (v13 <= 1)
    {
      if (v13)
      {
        if (v13 != 1)
        {
LABEL_58:
          sub_10001BA44();
        }

LABEL_16:
        v23 = v14[6];
        if (v23 >= 2)
        {
          sub_10001B834();
        }

        v24 = v14[7];
        if ((v24 - 4) <= 0xFFFFFFFD)
        {
          sub_10001B808();
        }

        if (v13 == 1)
        {
          *(v12 + 16) = v20;
          *(v12 + 20) = 0;
          *(v12 + 24) = v23;
          *(v12 + 48) = v20;
          *(v12 + 52) = 1;
          v25 = v20;
          *(v12 + 56) = v24;
          goto LABEL_26;
        }

        goto LABEL_19;
      }

      v26 = v14[6];
      if (v26 >= 2)
      {
        sub_10001BA18();
      }

      if (v14[7] != -1)
      {
        sub_10001B860();
      }

LABEL_25:
      v25 = 0;
      *(v12 + 16) = v20;
      *(v12 + 20) = 0;
      *(v12 + 24) = v26;
      *(v12 + 48) = 0xFFFFFFFF00000000;
      *(v12 + 56) = -1;
      goto LABEL_26;
    }

    if (v13 == 2)
    {
      if (v14[6])
      {
        sub_10001B7B0();
      }

      if (v14[7] != -1)
      {
        sub_10001B7DC();
      }

      v26 = 0;
      goto LABEL_25;
    }

    if (v13 == 3)
    {
      goto LABEL_16;
    }

    if (v13 != 4)
    {
      goto LABEL_58;
    }

    if (v14[6])
    {
      sub_10001B758();
    }

    if (v14[7] != 2)
    {
      sub_10001B784();
    }

    v23 = 0;
    v24 = 2;
LABEL_19:
    *(v12 + 48) = v20;
    *(v12 + 52) = 0;
    *(v12 + 56) = v24;
    *(v12 + 16) = v20;
    *(v12 + 20) = 1;
    v25 = v20;
    *(v12 + 24) = v23;
LABEL_26:
    if (v22 != v4[2])
    {
      sub_10001BA70();
    }

    v27 = *(a2 + 8 * v6);
    if (!v27)
    {
      sub_10001B968();
    }

    v7 += v25;
    v35 = 0;
    v36 = 0;
    v5 += v20;
    v34 = 0;
    sub_1000086DC(v13, (v8 + 48 * v6), 8, &v36, &v35, &v34);
    *(v12 + 8) = v36 >> 1;
    *(v12 + 32) = 0;
    *(v12 + 64) = 0;
    result = sub_100008850(v13);
    v9 = 0uLL;
    if (((1 << v13) & 0x1A) != 0)
    {
      v28 = v14[3];
      if (result > v28)
      {
        *(v12 + 32) = result - v28;
      }

      v29 = v14[1] + ~result;
      v19 = v29 >= v28;
      v30 = v29 - v28;
      if (v19)
      {
        *(v12 + 64) = v30;
      }

      *(v12 + 40) = v27 + v35;
      v31 = v27 + v34;
    }

    else
    {
      v31 = 0;
      *(v12 + 40) = v27 + v35;
    }

    *(v12 + 72) = v31;
    if (!*(v12 + 8))
    {
      sub_10001B93C();
    }

LABEL_37:
    v10 = 0;
    v6 = 1;
  }

  while ((v11 & 1) != 0);
  v32 = v4[1];
  if (v5 && v5 != v32)
  {
    sub_10001BAC8();
  }

  if (v7)
  {
    if (v7 != v32)
    {
      sub_10001BA9C();
    }
  }

  return result;
}

unint64_t sub_1000086DC(signed int a1, unsigned int *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  result = sub_100008850(a1);
  if (a1 > 2)
  {
    if ((a1 - 3) >= 2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (!a1)
    {
      v13 = 0;
      v25 = *a2 * a3;
      *a4 = v25;
      v15 = a2[2] * a3 + v25 * 2 * a2[3];
      goto LABEL_15;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        v13 = 0;
        v14 = 2 * a3 * *a2;
        *a4 = v14;
        v15 = v14 * a2[3] + 2 * a2[2] * a3;
LABEL_15:
        *a5 = v15;
        goto LABEL_16;
      }

LABEL_19:
      sub_10001BB4C();
    }
  }

  v16 = a2[1];
  if (v16 <= 3)
  {
    sub_10001BB20();
  }

  v17 = a2[3];
  if (v17 >= v16)
  {
    sub_10001BAF4();
  }

  v18 = a3 << (a1 == 4);
  *a4 = v18 * *a2;
  *a5 = 0;
  v19 = 2 * v17 - result;
  if (result > v17)
  {
    v19 = v17;
  }

  *a5 = *a4 * v19;
  v20 = v16 + ~v17;
  v21 = *a4 * (2 * v16 - 1);
  *a6 = v21;
  v22 = v21 + *a4 * (result - 2 * v20);
  v23 = v21 - *a4 * v20;
  if (result <= v20)
  {
    v23 = v22;
  }

  *a6 = v23;
  v24 = v18 * a2[2];
  *a5 += v24;
  v13 = *a6 + v24;
LABEL_16:
  *a6 = v13;
  return result;
}

uint64_t sub_100008850(unsigned int a1)
{
  if (a1 >= 5)
  {
    sub_10001BB78();
  }

  return qword_10001FF38[a1];
}

uint64_t sub_100008878(uint64_t result)
{
  v1 = *result;
  if (*result <= 1)
  {
    if (!v1)
    {
      v4 = *(result + 36);
      LODWORD(v5) = vadd_s32(v4, 0x100000001).u32[0];
      v6 = *(result + 64) + 2 * *(result + 24);
      *(result + 56) += 2 * *(result + 8 * (v4.i8[0] & 1) + 8);
      *(result + 64) = v6;
      HIDWORD(v5) = veor_s8(*&v4, 0x100000001).i32[1];
      *(result + 36) = v5;
      return result;
    }

    if (v1 != 1)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  if (v1 != 2)
  {
    if (v1 != 3)
    {
      if (v1 == 4)
      {
        sub_10001BBA4();
      }

LABEL_15:
      sub_10001BBD0();
    }

LABEL_8:
    v2 = *(result + 48);
    *(result + 56) += 2 * *(result + 8) + 2 * *(result + 16);
    if (v2)
    {
      *(result + 48) = v2 - 1;
      v3 = *(result + 64) + 2 * *(result + 24);
    }

    else
    {
      v3 = *(result + 64) + 4 * *(result + 24);
    }

    *(result + 64) = v3;
    v9 = *(result + 36) + 2;
    goto LABEL_14;
  }

  v7 = *(result + 36);
  v8 = *(result + 64) + 2 * *(result + 24);
  *(result + 56) += 2 * *(result + 8 * (v7 & 1) + 8);
  *(result + 64) = v8;
  v9 = v7 + 1;
LABEL_14:
  *(result + 36) = v9;
  return result;
}

unsigned __int16 *sub_10000897C(unsigned __int16 *result, uint64_t a2, int a3, int *a4, int *a5, uint64_t a6, _DWORD *a7)
{
  v7 = *a4;
  v8 = *(result + 1);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 3);
    v11 = a6 - 404;
    v12 = a4[2];
    v14 = *(a4 + 3);
    v13 = *(a4 + 4);
    v15 = v8 + 1;
    v16 = *(a5 + 3);
    result = *(a5 + 4);
    v17 = *(a2 + 4);
    do
    {
      if (!v7)
      {
        v12 = a5[2];
        v7 = *a5;
        v13 = result;
        v14 = v16;
      }

      if (v9)
      {
        v18 = 0;
      }

      else
      {
        v9 = v10;
        v18 = 404;
      }

      v11 += v18;
      v19 = *v14;
      v20 = v14[1] >> 4;
      v21 = *v13;
      ++*(v11 + 384);
      *(v11 + 388) += v20;
      *(v11 + 396) += v20 * v20;
      if ((v21 & 4) == 0)
      {
        v22 = v13[1];
        v23 = v22 & 7;
        if ((v21 & 1) != 0 || (((v22 & 7u) < 6) & (v21 >> 1)) != 0)
        {
          v40 = v19 >> 4;
          v41 = (v11 + 12 * v12);
          v42.i32[0] = 1;
          v42.i32[1] = v20;
          v41[42] = vadd_s32(v41[42], v42);
          v41[43].i32[0] += v40;
        }

        else
        {
          v24 = v23 > 5;
          v25 = v21;
          v26 = v13[2];
          v27 = (v26 & 0xF) + 1;
          v28 = v26 >> 4;
          v29 = v21 >> 3;
          v30 = v13[1] >> 3;
          if (v30 >= 0)
          {
            LOWORD(v31) = v13[1] >> 3;
          }

          else
          {
            v31 = -v30;
          }

          if (v29 < 0)
          {
            v29 = -v29;
          }

          v32 = v23 - v24;
          v33 = (16 * (v31 & 0xFFFu)) >> v24 >> 1;
          v34 = ((v27 >> 1) * v28 * v33) >> 15 << v17;
          if (v34 <= -32768)
          {
            v34 = -32768;
          }

          if (v34 >= 0x7FFF)
          {
            v34 = 0x7FFF;
          }

          v35 = ((v34 * v33) >> 15);
          v36 = ((v34 * 8 * (v29 & 0xFFF)) >> 15);
          if ((v30 ^ (v25 >> 3)) >= 0)
          {
            v37 = v32 + 7;
          }

          else
          {
            v37 = v32;
          }

          v38 = (v11 + 24 * v37);
          v39 = v38[1];
          *v38 += v27;
          v38[1] = v39 + v35;
          v38[2] += v36;
        }
      }

      v14 += 2;
      v13 += 3;
      --v7;
      --v9;
      ++*a7;
      v12 ^= a3;
      --v15;
    }

    while (v15 > 1);
  }

  if (v7)
  {
    sub_10001B230();
  }

  return result;
}

void sub_100008B90(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v7 = *a4;
  v8 = *(a1 + 4);
  if (v8 < 1)
  {
    goto LABEL_34;
  }

  v9 = 0;
  v10 = vdupq_n_s16(*(a2 + 4));
  v11 = *(a1 + 12);
  if (v7)
  {
    v12 = a4;
  }

  else
  {
    v12 = a5;
  }

  v13 = *(v12 + 8);
  v14 = a6 - 404;
  v16 = *(a4 + 24);
  v15 = *(a4 + 32);
  v17 = v68;
  v18.i64[0] = 0x2000200020002;
  v18.i64[1] = 0x2000200020002;
  v19.i64[0] = 0x4000400040004;
  v19.i64[1] = 0x4000400040004;
  v20.i64[0] = 0x7000700070007;
  v20.i64[1] = 0x7000700070007;
  v21.i64[0] = 0xF000F000F000FLL;
  v21.i64[1] = 0xF000F000F000FLL;
  v22.i64[0] = 0x5000500050005;
  v22.i64[1] = 0x5000500050005;
  v23.i64[0] = 0x1000100010001;
  v23.i64[1] = 0x1000100010001;
LABEL_6:
  v24 = *(a5 + 24);
  v25 = *(a5 + 32);
  v26 = *a5;
  if (!v7)
  {
    v7 = *a5;
    v15 = *(a5 + 32);
    v16 = *(a5 + 24);
  }

  if (v7 > 7)
  {
    v27 = 8;
LABEL_11:
    v73 = vld2q_s16(v16);
    v16 += 16;
    v7 -= v27;
    v74 = vld3q_s16(v15);
    v15 += 24;
    goto LABEL_23;
  }

  v27 = v8;
  if (v7 == v8)
  {
    goto LABEL_11;
  }

  if (v7 < 1)
  {
    sub_10001B180();
  }

  v28 = 0;
  v29 = 2 * v7;
  do
  {
    v30 = &v16[v28];
    v67[0].i16[v28 / 2] = *v30;
    v72.i16[v28 / 2] = v30[1];
    v71.i16[v28 / 2] = *v15;
    v70.i16[v28 / 2] = v15[1];
    v69.i16[v28 / 2] = v15[2];
    v15 += 3;
    v28 += 2;
  }

  while (v29 != v28);
  if (v8 >= 8)
  {
    v31 = 8;
  }

  else
  {
    v31 = v8;
  }

  if (v7 < v31)
  {
    v66 = v17;
    v32 = 0;
    v33 = 0;
    v34 = &v69.i8[v29];
    v35 = &v70.i8[v29];
    v36 = &v71.i8[v29];
    v37 = &v72.i8[v29];
    v38 = &v67[0].i8[v29];
    v39 = v7;
    do
    {
      v40 = &v24[v33];
      *&v38[v33] = *v40;
      *&v37[v33] = v40[1];
      *&v36[v33] = *v25;
      *&v35[v33] = v25[1];
      *&v34[v33] = v25[2];
      v25 += 3;
      v33 += 2;
      ++v39;
      v32 += 4;
    }

    while (v31 > v39);
    v24 = (v24 + v32);
    v17 = v66;
  }

  v73.val[0] = v67[0];
  v73.val[1] = v72;
  v74.val[1] = v70;
  v74.val[0] = v71;
  v7 += v26 - v31;
  v15 = v25;
  v16 = v24;
  v74.val[2] = v69;
LABEL_23:
  v41 = 0;
  v42 = vceqzq_s16(vandq_s8(v74.val[0], v19));
  v43 = vandq_s8(v74.val[1], v20);
  v44 = vshrq_n_u16(v73.val[0], 4uLL);
  v45 = vshrq_n_u16(v73.val[1], 4uLL);
  v46 = vshrq_n_s16(v74.val[1], 3uLL);
  v47 = vqshlq_n_u16(vabsq_s16(vshrq_n_s16(v74.val[0], 3uLL)), 4uLL);
  v48 = vcgtq_u16(v43, v22);
  v49 = vshlq_u16(vqshlq_n_u16(vabsq_s16(v46), 4uLL), v48);
  v50 = vandq_s8(vaddq_s16(vandq_s8(v74.val[2], v21), vbicq_s8(v23, v74.val[0])), vorrq_s8(v48, vceqzq_s16(vandq_s8(v74.val[0], v18))));
  v51 = vaddq_s16(vaddq_s16(v43, v48), vandq_s8(veorq_s8(vcltzq_s16(v74.val[0]), vcgezq_s16(v46)), v20));
  v52 = vshrq_n_u16(v49, 1uLL);
  v53 = vqshlq_s16(vqdmulhq_s16(v52, vmulq_s16(vshrq_n_u16(v50, 1uLL), vshrq_n_u16(v74.val[2], 4uLL))), v10);
  v54 = vceqzq_s16(v50);
  v67[0] = v51;
  v67[1] = vornq_s8(vandq_s8(v50, v42), v42);
  v68[0] = vbslq_s8(v54, v45, vqdmulhq_s16(v53, v52));
  v68[1] = vbslq_s8(v54, v44, vqdmulhq_s16(v53, vshrq_n_u16(v47, 1uLL)));
  v72 = v45;
  v55 = v17;
  while (1)
  {
    if (v9)
    {
      v56 = 0;
    }

    else
    {
      v9 = v11;
      v56 = 404;
    }

    v14 += v56;
    v57 = *(v55 - 16);
    v58 = *(v55 - 8);
    v59 = *v55;
    v60 = v55[8];
    ++*(v14 + 384);
    v61 = v72.u16[v41];
    *(v14 + 388) += v61;
    *(v14 + 396) += v61 * v61;
    if (v58)
    {
      if (v58 != 0xFFFF)
      {
        v62 = (v14 + 24 * v57);
        v63 = v62[1];
        *v62 += v58;
        v62[1] = v63 + v59;
        v62[2] += v60;
      }
    }

    else
    {
      v64 = (v14 + 12 * v13);
      v65.i32[0] = 1;
      v65.i32[1] = v59;
      v64[42] = vadd_s32(v64[42], v65);
      v64[43].i32[0] += v60;
    }

    ++*a7;
    if (v8 - 1 == v41)
    {
      break;
    }

    ++v55;
    v13 ^= a3;
    --v9;
    if (++v41 == 8)
    {
      v8 -= 8;
      if (v8 + 1 > 1)
      {
        goto LABEL_6;
      }

      break;
    }
  }

LABEL_34:
  if (v7)
  {
    sub_10001B1AC();
  }
}

uint64_t sub_100008F60(uint64_t a1, unint64_t a2, uint64_t a3, _WORD *a4, _WORD *a5, _WORD *a6)
{
  v12 = *(a1 + 16);
  v13 = *(a1 + 628);
  bzero(a6, *(a1 + 487272));
  if (!a2)
  {
    sub_10001BC28();
  }

  v14 = 0;
  v15 = 40;
  if (!*(a3 + 32))
  {
    v15 = 152;
  }

  v23 = *(a3 + v15);
  do
  {
    v16 = *(a3 + 32);
    if (v12)
    {
      v17 = *(a3 + 56);
      v18 = v12;
      v19 = a6;
      v20 = a5;
      v21 = a4;
      do
      {
        if (!v16)
        {
          v17 = *(a3 + 168);
          v16 = *(a3 + 144);
        }

        *v21 += *v17 >> 6;
        *v20 += v17[1] >> 6;
        if (v13 < *v17 || v13 < v17[1])
        {
          ++*v19;
        }

        ++v19;
        v17 += 2;
        ++v21;
        ++v20;
        --v16;
        --v18;
      }

      while (v18);
    }

    sub_100008878(a3);
    sub_100008878(a3 + 112);
    if (v16)
    {
      sub_10001BBFC();
    }

    ++v14;
  }

  while (v14 != a2);

  return sub_100009370(a1 + 608, 0x80 / a2, v12, v23, a4, a5, a6);
}

void sub_1000090DC(int a1, unsigned int *a2, uint64_t a3, unsigned __int16 *__src, unsigned __int16 *a5, char *__dst, _WORD *a7, uint64_t a8)
{
  v15 = a2[8];
  switch(v15)
  {
    case 4u:
      sub_100009460(a2[7], __src, __dst);
      sub_100009460(a2[7], a5, a7);
      break;
    case 2u:
      sub_100009404(a2[7], __src, __dst);
      sub_100009404(a2[7], a5, a7);
      break;
    case 1u:
      memcpy(__dst, __src, 2 * a2[7]);
      memcpy(a7, a5, 2 * a2[7]);
      break;
    default:
      sub_10001BD04();
  }

  v16 = *(a3 + 4);
  if (a1)
  {
    if ((v16 & 0x80000000) == 0)
    {
      sub_10001BC80();
    }

    if (*(a3 + 8) <= 0)
    {
      sub_10001BC54();
    }

    if (a2[13])
    {
      v17 = 0;
      v18 = 0;
      v19 = a2[10];
      do
      {
        if (a2[12] + v18 >= a2[11])
        {
          v18 = a2[11];
        }

        else
        {
          v18 += a2[12];
        }

        v20 = (v18 - v19) & 0xFFFFFFF8;
        *(a8 + 340) = v20;
        v21 = &__dst[2 * v19];
        v22 = &a7[v19];
        sub_1000094E8(v20, v21, v22, a8);
        sub_1000094E8(v20, v21, v22 + 1, a8 + 160);
        a8 += 360;
        ++v17;
        v19 = v18;
      }

      while (v17 < a2[13]);
    }
  }

  else
  {
    if ((v16 & 0x80000000) == 0)
    {
      sub_10001BCD8();
    }

    v23 = *(a3 + 8);
    if (v23 <= 0)
    {
      sub_10001BCAC();
    }

    v24 = a2[13];
    if (v24)
    {
      v25 = 0;
      v26 = 0;
      v28 = a2[11];
      v27 = a2[12];
      v29 = v23 + 1;
      v30 = a2[10];
      do
      {
        v31 = v30;
        v32 = &__dst[2 * v30];
        v33 = &a7[v30];
        v30 = v25 + v27;
        if (v25 + v27 >= v28)
        {
          v30 = v28;
        }

        v34 = (v30 - v31) & 0xFFFFFFF8;
        *(a8 + 340) = v34;
        v35 = v16;
        v36 = a8;
        do
        {
          if (v34)
          {
            v37 = 0;
            v38 = 0uLL;
            v39 = v34;
            v40 = v32;
            v41 = &v33[v35];
            do
            {
              v42 = *v40;
              if (v42 != 0xFFFF)
              {
                v43 = *v41;
                if (v43 != 0xFFFF)
                {
                  v37 += v43 * v43;
                  v44.i32[0] = *v40;
                  v44.i32[1] = v42 * v42;
                  v44.i64[1] = __PAIR64__(v43 * v42, v43);
                  v38 = vaddq_s32(v38, v44);
                }
              }

              v40 += 2;
              ++v41;
              --v39;
            }

            while (v39);
            v45 = v37;
            v46 = vcvtq_f32_u32(v38);
          }

          else
          {
            v46 = 0uLL;
            v45 = 0.0;
          }

          v36[1].f32[0] = v45 + v36[1].f32[0];
          *v36 = vaddq_f32(v46, *v36);
          v36 = (v36 + 20);
          ++v35;
        }

        while (v29 != v35);
        ++v26;
        a8 += 360;
        v25 = v30;
      }

      while (v26 != v24);
    }
  }
}

uint64_t sub_100009370(uint64_t result, int a2, uint64_t a3, char a4, _WORD *a5, _WORD *a6, _WORD *a7)
{
  v7 = *(result + 24);
  if (!*(result + 16))
  {
    v7 = 0xFFFF;
  }

  for (; a3; --a3)
  {
    *a5 = (*a5 * a2) >> 5;
    v8 = *a6 * a2;
    *a6 = v8 >> 5;
    v9 = *a5;
    v10 = (v8 >> 4) & 0xFFFE;
    v11 = v10 >= v9;
    v12 = v10 - v9;
    if (!v11)
    {
      v12 = 0;
    }

    if (a4)
    {
      *a5 = v12;
      v12 = v9;
    }

    *a6 = v12;
    if (v7 <= *a7)
    {
      *a7 = 1;
      *a5 = -1;
      *a6 = -1;
    }

    ++a7;
    ++a5;
    ++a6;
    a4 ^= 1u;
  }

  return result;
}

uint64_t sub_100009404(uint64_t result, unsigned __int16 *a2, _WORD *a3)
{
  v3 = result - 1;
  if (result != 1)
  {
    do
    {
      v4 = *a2;
      *a3 = v4;
      if (v4 == 0xFFFF)
      {
        LOWORD(v6) = -1;
      }

      else
      {
        v5 = a2[1];
        v6 = (v4 + v5 + 1) >> 1;
        if (v5 == 0xFFFF)
        {
          LOWORD(v6) = -1;
        }
      }

      a3[1] = v6;
      ++a2;
      a3 += 2;
      --v3;
    }

    while (v3);
  }

  *a3 = *a2;
  return result;
}

uint64_t sub_100009460(uint64_t result, unsigned __int16 *a2, uint64_t a3)
{
  v3 = result - 1;
  if (result != 1)
  {
    do
    {
      v4 = *a2;
      *a3 = v4;
      if (v4 == 0xFFFF || (v5 = a2[1], v5 == 0xFFFF))
      {
        *(a3 + 2) = -1;
        LOWORD(v7) = -1;
      }

      else
      {
        v6 = v4 + v5 + 1;
        *(a3 + 4) = v6 >> 1;
        *(a3 + 2) = (v4 + (v6 >> 1) + 1) >> 1;
        v7 = (a2[1] + (v6 >> 1) + 1) >> 1;
      }

      *(a3 + 6) = v7;
      ++a2;
      a3 += 8;
      --v3;
    }

    while (v3);
  }

  *a3 = *a2;
  return result;
}

float sub_1000094E8(int a1, int16x8_t *a2, int8x16_t *a3, uint64_t a4)
{
  if (a1 < 1)
  {
    v20 = 0uLL;
    v90 = 0.0;
    v89 = 0.0;
    v88 = 0.0;
    v87 = 0.0;
    v86 = 0.0;
    v85 = 0.0;
    v84 = 0.0;
    v83 = 0.0;
    v19 = 0uLL;
    v18 = 0uLL;
    v17 = 0uLL;
    v16 = 0uLL;
    v15 = 0uLL;
    v13 = 0uLL;
    v12 = 0uLL;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = a1 + 8;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v93 = v20;
      v21 = a3[-1];
      v22 = vextq_s8(v21, *a3, 2uLL);
      v23 = vextq_s8(v21, *a3, 4uLL);
      v24 = vextq_s8(v21, *a3, 6uLL);
      v25 = *a2++;
      v26 = vextq_s8(v21, *a3, 8uLL);
      v27 = vextq_s8(v21, *a3, 0xAuLL);
      v28 = vextq_s8(v21, *a3, 0xCuLL);
      v92 = v28;
      v29 = vextq_s8(v21, *a3, 0xEuLL);
      v30.i64[0] = -1;
      v30.i64[1] = -1;
      v31 = vmvnq_s8(vceqq_s16(v25, v30));
      v32 = vbicq_s8(v31, vceqq_s16(v21, v30));
      v33 = vminq_u16(v25, v32);
      v34 = vminq_u16(v21, v32);
      v35 = vmlal_high_u16(vmull_u16(*v33.i8, *v33.i8), v33, v33);
      v36 = vmlal_high_u16(vmull_u16(*v34.i8, *v34.i8), v34, v34);
      v37 = vmlal_high_u16(vmull_u16(*v33.i8, *v34.i8), v33, v34);
      v33.i16[0] = vaddvq_s16(v33);
      v34.i16[0] = vaddvq_s16(v34);
      v38 = vbicq_s8(v31, vceqq_s16(v22, v30));
      v39 = vminq_u16(v25, v38);
      v40 = vminq_u16(v22, v38);
      v33.i32[1] = v34.i32[0];
      v41 = vmlal_high_u16(vmull_u16(*v39.i8, *v39.i8), v39, v39);
      v42 = vmlal_high_u16(vmull_u16(*v40.i8, *v40.i8), v40, v40);
      v43 = vmlal_high_u16(vmull_u16(*v39.i8, *v40.i8), v39, v40);
      v34.i16[0] = vaddvq_s16(v39);
      v40.i16[0] = vaddvq_s16(v40);
      v34.i32[1] = v40.i32[0];
      v44.i32[0] = vaddvq_s32(v37);
      v45 = vbicq_s8(v31, vceqq_s16(v23, v30));
      v46 = vminq_u16(v25, v45);
      v47 = vminq_u16(v23, v45);
      v48 = vmlal_high_u16(vmull_u16(*v46.i8, *v46.i8), v46, v46);
      v49 = vmlal_high_u16(vmull_u16(*v47.i8, *v47.i8), v47, v47);
      v50 = vmlal_high_u16(vmull_u16(*v46.i8, *v47.i8), v46, v47);
      v46.i16[0] = vaddvq_s16(v46);
      v47.i16[0] = vaddvq_s16(v47);
      v46.i32[1] = v47.i32[0];
      v51 = vbicq_s8(v31, vceqq_s16(v24, v30));
      v52 = vminq_u16(v25, v51);
      v53 = vminq_u16(v24, v51);
      v54 = vmlal_high_u16(vmull_u16(*v52.i8, *v52.i8), v52, v52);
      v55 = vmlal_high_u16(vmull_u16(*v53.i8, *v53.i8), v53, v53);
      v56 = v44.i32[0];
      v57 = vaddvq_s32(vmlal_high_u16(vmull_u16(*v52.i8, *v53.i8), v52, v53));
      v44.i16[0] = vaddvq_s16(v52);
      v52.i16[0] = vaddvq_s16(v53);
      v44.i32[1] = v52.i32[0];
      v58 = vaddvq_s32(v43);
      v59 = vbicq_s8(v31, vceqq_s16(v26, v30));
      v60 = vminq_u16(v25, v59);
      v61 = vminq_u16(v26, v59);
      v62 = vaddvq_s32(v50);
      v63 = vmlal_high_u16(vmull_u16(*v60.i8, *v60.i8), v60, v60);
      v64 = vmlal_high_u16(vmull_u16(*v61.i8, *v61.i8), v61, v61);
      *v26.i8 = vand_s8(*v33.i8, 0xFFFF0000FFFFLL);
      v65 = vaddvq_s32(vmlal_high_u16(vmull_u16(*v60.i8, *v61.i8), v60, v61));
      v60.i16[0] = vaddvq_s16(v60);
      v33.i16[0] = vaddvq_s16(v61);
      v66 = v57;
      v60.i32[1] = v33.i32[0];
      v67 = vbicq_s8(v31, vceqq_s16(v27, v30));
      v68 = vminq_u16(v25, v67);
      v69 = v65;
      v70 = vminq_u16(v27, v67);
      v71 = vmlal_high_u16(vmull_u16(*v68.i8, *v68.i8), v68, v68);
      *v27.i8 = vand_s8(*v34.i8, 0xFFFF0000FFFFLL);
      v72 = vaddvq_s32(vmlal_high_u16(vmull_u16(*v68.i8, *v70.i8), v68, v70));
      v73 = vmlal_high_u16(vmull_u16(*v70.i8, *v70.i8), v70, v70);
      v26.i64[1] = __PAIR64__(vaddvq_s32(v36), vaddvq_s32(v35));
      v28.i16[0] = vaddvq_s16(v68);
      v70.i16[0] = vaddvq_s16(v70);
      v28.i32[1] = v70.i32[0];
      v27.i64[1] = __PAIR64__(vaddvq_s32(v42), vaddvq_s32(v41));
      v4 += v56;
      *v35.i8 = vand_s8(*v46.i8, 0xFFFF0000FFFFLL);
      v35.i64[1] = __PAIR64__(vaddvq_s32(v49), vaddvq_s32(v48));
      v5 += v58;
      v6 += v62;
      *v68.i8 = vand_s8(v44, 0xFFFF0000FFFFLL);
      v68.i64[1] = __PAIR64__(vaddvq_s32(v55), vaddvq_s32(v54));
      v7 += v66;
      v8 += v69;
      *v34.i8 = vand_s8(*v60.i8, 0xFFFF0000FFFFLL);
      v34.i64[1] = __PAIR64__(vaddvq_s32(v64), vaddvq_s32(v63));
      v9 += v72;
      *v36.i8 = vand_s8(*v28.i8, 0xFFFF0000FFFFLL);
      v36.i32[2] = vaddvq_s32(v71);
      v28.i32[0] = vaddvq_s32(v73);
      v74 = vbicq_s8(v31, vceqq_s16(v92, v30));
      v75 = vminq_u16(v25, v74);
      v76 = vminq_u16(v92, v74);
      v77 = vmlal_high_u16(vmull_u16(*v76.i8, *v76.i8), v76, v76);
      v10 += vaddvq_s32(vmlal_high_u16(vmull_u16(*v75.i8, *v76.i8), v75, v76));
      v36.i32[3] = v28.i32[0];
      v28.i16[0] = vaddvq_s16(v75);
      v76.i16[0] = vaddvq_s16(v76);
      v28.i32[1] = v76.i32[0];
      v12 = vaddq_s32(v26, v12);
      *v28.i8 = vand_s8(*v28.i8, 0xFFFF0000FFFFLL);
      v28.i64[1] = __PAIR64__(vaddvq_s32(v77), vaddvq_s32(vmlal_high_u16(vmull_u16(*v75.i8, *v75.i8), v75, v75)));
      v13 = vaddq_s32(v27, v13);
      v78 = vbicq_s8(v31, vceqq_s16(v29, v30));
      v79 = vminq_u16(v25, v78);
      v15 = vaddq_s32(v35, v15);
      v80 = vminq_u16(v29, v78);
      v81 = vmlal_high_u16(vmull_u16(*v79.i8, *v79.i8), v79, v79);
      v82 = vmlal_high_u16(vmull_u16(*v80.i8, *v80.i8), v80, v80);
      v16 = vaddq_s32(v68, v16);
      v11 += vaddvq_s32(vmlal_high_u16(vmull_u16(*v79.i8, *v80.i8), v79, v80));
      v17 = vaddq_s32(v34, v17);
      v79.i16[0] = vaddvq_s16(v79);
      v80.i16[0] = vaddvq_s16(v80);
      v79.i32[1] = v80.i32[0];
      v18 = vaddq_s32(v36, v18);
      *v80.i8 = vand_s8(*v79.i8, 0xFFFF0000FFFFLL);
      v80.i64[1] = __PAIR64__(vaddvq_s32(v82), vaddvq_s32(v81));
      v19 = vaddq_s32(v28, v19);
      ++a3;
      v14 -= 8;
      v20 = vaddq_s32(v80, v93);
    }

    while (v14 > 8);
    v83 = v4;
    v84 = v5;
    v85 = v6;
    v86 = v7;
    v87 = v8;
    v88 = v9;
    v89 = v10;
    v90 = v11;
  }

  *a4 = vcvt_f32_u32(vzip1_s32(*v12.i8, *&vextq_s8(v12, v12, 8uLL)));
  *(a4 + 8) = v12.u32[1];
  *(a4 + 12) = v83;
  *(a4 + 16) = vcvtq_f32_u32(vextq_s8(v12, vuzp2q_s32(vtrn1q_s32(v12, v13), v13), 0xCuLL));
  *(a4 + 32) = v84;
  *(a4 + 36) = vcvtq_f32_u32(vextq_s8(v13, vuzp2q_s32(vtrn1q_s32(v13, v15), v15), 0xCuLL));
  *(a4 + 52) = v85;
  *(a4 + 56) = vcvtq_f32_u32(vextq_s8(v15, vuzp2q_s32(vtrn1q_s32(v15, v16), v16), 0xCuLL));
  *(a4 + 72) = v86;
  *(a4 + 76) = vcvtq_f32_u32(vextq_s8(v16, vuzp2q_s32(vtrn1q_s32(v16, v17), v17), 0xCuLL));
  *(a4 + 92) = v87;
  *(a4 + 96) = vcvtq_f32_u32(vextq_s8(v17, vuzp2q_s32(vtrn1q_s32(v17, v18), v18), 0xCuLL));
  *(a4 + 112) = v88;
  *(a4 + 116) = vcvtq_f32_u32(vextq_s8(v18, vuzp2q_s32(vtrn1q_s32(v18, v19), v19), 0xCuLL));
  *(a4 + 132) = v89;
  *(a4 + 136) = vcvtq_f32_u32(vextq_s8(v19, vuzp2q_s32(vtrn1q_s32(v19, v20), v20), 0xCuLL));
  result = v20.u32[3];
  *(a4 + 152) = v90;
  *(a4 + 156) = v20.u32[3];
  return result;
}

uint64_t sub_1000099A8(uint64_t a1, int a2, unint64_t a3, uint64_t a4, _WORD *a5, _WORD *a6, _WORD *a7)
{
  v9 = *(a1 + 20);
  v10 = *a4;
  v34 = *(a4 + 16);
  v35 = *(a4 + 8);
  v30 = *(a4 + 72);
  v11 = *(a4 + 96);
  v12 = *(a4 + 112);
  v13 = *(a4 + 128);
  v33 = *(a4 + 120);
  v14 = *(a4 + 184);
  v15 = *(a4 + 208);
  v16 = *(a1 + 628);
  bzero(a7, *(a1 + 487272));
  if (!a3)
  {
    sub_10001BD30();
  }

  v17 = 80;
  if (!*(a4 + 72))
  {
    v17 = 192;
  }

  v18 = *(a4 + v17);
  if (v9)
  {
    v19 = 0;
    v20 = v30 - a2;
    if (v30 - a2 >= 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = v14;
    }

    v22 = v21 + v20;
    v23 = a5;
    v24 = a6;
    v25 = a7;
    do
    {
      if (v20 >= 1)
      {
        v26 = (v11 + 4 * a2);
      }

      else
      {
        v26 = &v15[-2 * v20];
      }

      v27 = a3;
      v28 = v22;
      do
      {
        if (!v28)
        {
          v26 = v15;
          v28 = v14;
        }

        *v23 += *v26 >> 6;
        *v24 += v26[1] >> 6;
        if (v16 < *v26 || v16 < v26[1])
        {
          ++*v25;
        }

        v26 += 2;
        --v28;
        --v27;
      }

      while (v27);
      if (v10 <= 1)
      {
        if (v10 != 1)
        {
          if (!v10)
          {
            goto LABEL_41;
          }

          goto LABEL_37;
        }
      }

      else if (v10 != 3)
      {
        if (v10 == 4)
        {
          sub_10001B0D0();
        }

        if (v10 == 2)
        {
LABEL_41:
          sub_10001B0FC();
        }

LABEL_37:
        sub_10001B128();
      }

      if (v12 <= 1)
      {
        if (v12 != 1)
        {
          if (!v12)
          {
LABEL_39:
            sub_10001B0FC();
          }

LABEL_42:
          sub_10001B128();
        }
      }

      else if (v12 != 3)
      {
        if (v12 == 2)
        {
          goto LABEL_39;
        }

        if (v12 == 4)
        {
          sub_10001B0D0();
        }

        goto LABEL_42;
      }

      v11 += 2 * v35 + 2 * v34;
      ++v23;
      ++v24;
      ++v25;
      ++v19;
      v15 += v33 + v13;
    }

    while (v19 != v9);
  }

  return sub_100009370(a1 + 608, 0x80 / a3, v9, v18, a5, a6, a7);
}

uint64_t sub_100009BDC(uint64_t a1, unsigned int a2, uint64_t a3, _WORD *a4, _WORD *a5)
{
  if (!a2)
  {
    sub_10001BD88();
  }

  v10 = 0;
  v11 = *(a1 + 4);
  do
  {
    v12 = *(a3 + 32);
    v13 = *(a1 + 4);
    if (v13)
    {
      v14 = *(a3 + 56);
      v15 = a5;
      v16 = a4;
      do
      {
        if (!v12)
        {
          v14 = *(a3 + 168);
          v12 = *(a3 + 144);
        }

        *v16++ += *v14 >> 6;
        *v15++ += v14[2] >> 6;
        v14 += 4;
        --v12;
        --v13;
      }

      while (v13);
    }

    sub_100008878(a3);
    result = sub_100008878(a3 + 112);
    if (v12)
    {
      sub_10001BD5C();
    }

    ++v10;
  }

  while (v10 != a2);
  if (v11)
  {
    v18 = 0x80 / a2;
    do
    {
      *a4 = (v18 * *a4) >> 5;
      ++a4;
      *a5 = (v18 * *a5) >> 5;
      ++a5;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_100009CE0(uint64_t result, uint64_t a2, int a3, int *a4, int *a5, uint64_t a6, _DWORD *a7)
{
  v7 = *a4;
  v8 = *(result + 4);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 12);
    v11 = a6 - 404;
    v12 = a4[2];
    v13 = v8 + 1;
    v14 = *(a4 + 3);
    v15 = *(a2 + 4);
    do
    {
      v16 = *a5;
      if (v7)
      {
        v16 = v7;
      }

      else
      {
        v12 = a5[2];
      }

      if (!v7)
      {
        v14 = *(a5 + 3);
      }

      if (v9)
      {
        v17 = v9;
      }

      else
      {
        v17 = v10;
      }

      if (v9)
      {
        v18 = 0;
      }

      else
      {
        v18 = 404;
      }

      v11 += v18;
      v19 = *v14;
      v20 = v19 >> 3;
      v21 = v14[3];
      if (v12)
      {
        v22 = -v20;
      }

      else
      {
        v22 = v19 >> 3;
      }

      v23 = v22 + v21;
      ++*(v11 + 384);
      *(v11 + 388) += v23;
      *(v11 + 396) += v23 * v23;
      if ((v19 & 4) == 0)
      {
        v24 = v14[1];
        v25 = v24 & 7;
        if ((v19 & 1) != 0 || (((v24 & 7u) < 6) & (v19 >> 1)) != 0)
        {
          v41 = (v11 + 12 * v12);
          v42.i32[0] = 1;
          v42.i32[1] = v23;
          v41[42] = vadd_s32(v41[42], v42);
          v41[43].i32[0] += v21;
        }

        else
        {
          v26 = v25 > 5;
          v27 = v14[2];
          v28 = (v27 & 0xF) + 1;
          v29 = v27 >> 4;
          v30 = v14[1];
          v31 = v30 >> 3;
          if (v30 >> 3 < 0)
          {
            v31 = -v31;
          }

          if (v20 >= 0)
          {
            LOWORD(v32) = v20;
          }

          else
          {
            v32 = -v20;
          }

          v33 = v25 - v26;
          v34 = (16 * (v31 & 0xFFFu)) >> v26 >> 1;
          v35 = ((v28 >> 1) * v29 * v34) >> 15 << v15;
          if (v35 <= -32768)
          {
            v35 = -32768;
          }

          if (v35 >= 0x7FFF)
          {
            v35 = 0x7FFF;
          }

          v36 = ((v35 * v34) >> 15);
          v37 = ((v35 * 8 * (v32 & 0xFFF)) >> 15);
          if ((v20 ^ (v30 >> 3)) >= 0)
          {
            v38 = v33 + 7;
          }

          else
          {
            v38 = v33;
          }

          v39 = (v11 + 24 * v38);
          v40 = v39[1];
          *v39 += v28;
          v39[1] = v40 + v36;
          v39[2] += v37;
        }
      }

      v14 += 4;
      v7 = v16 - 1;
      v9 = v17 - 1;
      result = (*a7 + 1);
      *a7 = result;
      v12 ^= a3;
      --v13;
    }

    while (v13 > 1);
  }

  if (v7)
  {
    sub_10001AFC8();
  }

  return result;
}

uint64_t sub_100009EEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v6 = 2 * *a3;
  v7 = 2 * *(result + 4);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = 2 * *(result + 12);
    v10 = a5 - 404;
    if (*a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = a4;
    }

    v12 = *(v11 + 8);
    v13 = *(a3 + 24);
    v14 = v7 + 2;
    v15 = *(a2 + 4);
    result = 24;
    do
    {
      v16 = 2 * *a4;
      if (v6)
      {
        v16 = v6;
      }

      else
      {
        v13 = *(a4 + 24);
      }

      if (v8)
      {
        v17 = v8;
      }

      else
      {
        v17 = v9;
      }

      if (v8)
      {
        v18 = 0;
      }

      else
      {
        v18 = 404;
      }

      v10 += v18;
      v19 = v13[3];
      v20 = v13[7];
      v21 = v20 - (v13[4] >> 3);
      v22 = *v13;
      ++*(v10 + 384);
      *(v10 + 388) += v21;
      *(v10 + 396) += v21 * v21;
      if ((v22 & 4) == 0)
      {
        v23 = v13[1];
        v24 = v23 & 7;
        if ((v22 & 1) != 0 || (((v23 & 7u) < 6) & (v22 >> 1)) != 0)
        {
          v41 = (v10 + 336 + 12 * v12);
          v42.i32[0] = 1;
          v42.i32[1] = v21;
          *v41 = vadd_s32(*v41, v42);
          v41[1].i32[0] += v19;
          v43 = (v10 + 336 + 12 * (v12 + 1));
          *v43 = vadd_s32(*v43, v42);
          v43[1].i32[0] += v20;
        }

        else
        {
          v25 = v24 > 5;
          v26 = v22;
          v27 = v13[2];
          v28 = (v27 & 0xF) + 1;
          v29 = v27 >> 4;
          v30 = v22 >> 3;
          v31 = v13[1] >> 3;
          if (v31 >= 0)
          {
            LOWORD(v32) = v13[1] >> 3;
          }

          else
          {
            v32 = -v31;
          }

          if (v30 < 0)
          {
            v30 = -v30;
          }

          v33 = v24 - v25;
          v34 = (16 * (v32 & 0xFFFu)) >> v25 >> 1;
          v35 = ((v28 >> 1) * v29 * v34) >> 15 << v15;
          if (v35 <= -32768)
          {
            v35 = -32768;
          }

          if (v35 >= 0x7FFF)
          {
            v35 = 0x7FFF;
          }

          v36 = ((v35 * v34) >> 15);
          v37 = ((v35 * 8 * (v30 & 0xFFF)) >> 15);
          if ((v31 ^ (v26 >> 3)) >= 0)
          {
            v38 = v33 + 7;
          }

          else
          {
            v38 = v33;
          }

          v39 = (v10 + 24 * v38);
          v40 = v39[1];
          *v39 += v28;
          v39[1] = v40 + v36;
          v39[2] += v37;
        }
      }

      v13 += 8;
      v6 = v16 - 2;
      v8 = v17 - 2;
      ++*a6;
      v14 -= 2;
    }

    while (v14 > 2);
  }

  if (v6)
  {
    sub_10001AF9C();
  }

  return result;
}

uint64_t sub_10000A128(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, int32x4_t a8, int32x4_t a9)
{
  v9 = *a4;
  if (*a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  v11 = *(v10 + 8);
  v12 = *(result + 4);
  if (a3)
  {
    a8.i32[0] = 0;
    a9.i32[0] = v11 & 1;
    v13 = vdupq_lane_s32(*&vceqq_s32(a9, a8), 0);
    v14.i64[0] = 0xFFFF0000FFFFLL;
    v14.i64[1] = 0xFFFF0000FFFFLL;
    v15.i64[0] = 0xFFFF0000FFFF0000;
    v15.i64[1] = 0xFFFF0000FFFF0000;
    v16 = vbslq_s8(v13, v15, v14);
  }

  else
  {
    v16 = vdupq_n_s16(-(v11 & 1));
  }

  if (v12 < 1)
  {
    goto LABEL_36;
  }

  v17 = 0;
  v18 = *(a4 + 24);
  v19 = vdupq_n_s16(*(a2 + 4));
  v20 = a6 - 404;
  v21 = *(result + 12);
  v22.i64[0] = 0x2000200020002;
  v22.i64[1] = 0x2000200020002;
  v23.i64[0] = 0x4000400040004;
  v23.i64[1] = 0x4000400040004;
  v24.i64[0] = 0x7000700070007;
  v24.i64[1] = 0x7000700070007;
  v25.i64[0] = 0xF000F000F000FLL;
  v25.i64[1] = 0xF000F000F000FLL;
  v26.i64[0] = 0x5000500050005;
  v26.i64[1] = 0x5000500050005;
  v27.i64[0] = 0x1000100010001;
  v27.i64[1] = 0x1000100010001;
  result = 24;
LABEL_9:
  v28 = *(a5 + 24);
  v29 = *a5;
  if (!v9)
  {
    v9 = *a5;
    v18 = *(a5 + 24);
  }

  if (v9 > 7)
  {
    v30 = 8;
LABEL_14:
    v9 -= v30;
    v69 = vld4q_s16(v18);
    v18 += 32;
    goto LABEL_25;
  }

  v30 = v12;
  if (v9 == v12)
  {
    goto LABEL_14;
  }

  if (v9 < 1)
  {
    sub_10001AF18();
  }

  v31 = 0;
  v32 = 2 * v9;
  do
  {
    v64[0].i16[v31 / 2] = *v18;
    v68.i16[v31 / 2] = v18[1];
    v67.i16[v31 / 2] = v18[2];
    v66.i16[v31 / 2] = v18[3];
    v18 += 4;
    v31 += 2;
  }

  while (v32 != v31);
  if (v12 >= 8)
  {
    v33 = 8;
  }

  else
  {
    v33 = v12;
  }

  if (v9 < v33)
  {
    v34 = &v66.i16[v32 / 2];
    v35 = &v67.i16[v32 / 2];
    v36 = &v68.i16[v32 / 2];
    v37 = &v64[0].i16[v32 / 2];
    v38 = v9;
    do
    {
      *v37++ = *v28;
      *v36++ = v28[1];
      *v35++ = v28[2];
      *v34++ = v28[3];
      v28 += 4;
      ++v38;
    }

    while (v33 > v38);
  }

  v69.val[0] = v64[0];
  v69.val[2] = v67;
  v69.val[1] = v68;
  v69.val[3] = v66;
  v9 += v29 - v33;
  v18 = v28;
LABEL_25:
  v39 = 0;
  v40 = vceqzq_s16(vandq_s8(v69.val[0], v23));
  v41 = vandq_s8(v69.val[1], v24);
  v42 = vshrq_n_s16(v69.val[0], 3uLL);
  v43 = vaddq_s16(v69.val[3], vbslq_s8(v16, vnegq_s16(v42), v42));
  v44 = vshrq_n_s16(v69.val[1], 3uLL);
  v45 = vcgtq_u16(v41, v26);
  v46 = vandq_s8(vaddq_s16(vandq_s8(v69.val[2], v25), vbicq_s8(v27, v69.val[0])), vorrq_s8(v45, vceqzq_s16(vandq_s8(v69.val[0], v22))));
  v47 = vaddq_s16(vaddq_s16(v41, v45), vandq_s8(veorq_s8(vcltzq_s16(v69.val[0]), vcgezq_s16(v44)), v24));
  v48 = vshrq_n_u16(vshlq_u16(vqshlq_n_u16(vabsq_s16(v44), 4uLL), v45), 1uLL);
  v49 = vqshlq_s16(vqdmulhq_s16(v48, vmulq_s16(vshrq_n_u16(v46, 1uLL), vshrq_n_u16(v69.val[2], 4uLL))), v19);
  v50 = vqdmulhq_s16(v49, v48);
  v51 = vqdmulhq_s16(v49, vshrq_n_u16(vqshlq_n_u16(vabsq_s16(v42), 4uLL), 1uLL));
  v52 = vceqzq_s16(v46);
  v64[0] = v47;
  v64[1] = vornq_s8(vandq_s8(v46, v40), v40);
  v65[0] = vbslq_s8(v52, v43, v50);
  v65[1] = vbslq_s8(v52, v69.val[3], v51);
  v68 = v43;
  v53 = v65;
  while (1)
  {
    if (v17)
    {
      v54 = 0;
    }

    else
    {
      v17 = v21;
      v54 = 404;
    }

    v20 += v54;
    v55 = *(v53 - 16);
    v56 = *(v53 - 8);
    v57 = *v53;
    v58 = v53[8];
    ++*(v20 + 384);
    v59 = v68.u16[v39];
    *(v20 + 388) += v59;
    *(v20 + 396) += v59 * v59;
    if (v56)
    {
      if (v56 != 0xFFFF)
      {
        v60 = (v20 + 24 * v55);
        v61 = v60[1];
        *v60 += v56;
        v60[1] = v61 + v57;
        v60[2] += v58;
      }
    }

    else
    {
      v62 = (v20 + 12 * v11);
      v63.i32[0] = 1;
      v63.i32[1] = v57;
      v62[42] = vadd_s32(v62[42], v63);
      v62[43].i32[0] += v58;
    }

    ++*a7;
    if (v12 - 1 == v39)
    {
      break;
    }

    ++v53;
    v11 ^= a3;
    --v17;
    if (++v39 == 8)
    {
      v12 -= 8;
      if (v12 + 1 > 1)
      {
        goto LABEL_9;
      }

      break;
    }
  }

LABEL_36:
  if (v9)
  {
    sub_10001AF44();
  }

  return result;
}

uint64_t sub_10000A4E8(uint64_t result, uint64_t a2, int *a3, int *a4, uint64_t a5, _DWORD *a6)
{
  v6 = 2 * *(result + 4);
  if (v6 < 1)
  {
    return result;
  }

  v7 = 0;
  v8 = vdupq_n_s16(*(a2 + 4));
  v9 = 2 * *(result + 12);
  if (*a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = a4;
  }

  v11 = v10[2];
  v12 = 2 * *a3;
  v13 = a5 - 404;
  v14 = *(a3 + 3);
  v15 = v6 - 2;
  v16.i64[0] = 0x2000200020002;
  v16.i64[1] = 0x2000200020002;
  v17.i64[0] = 0x4000400040004;
  v17.i64[1] = 0x4000400040004;
  v18.i64[0] = 0x7000700070007;
  v18.i64[1] = 0x7000700070007;
  v19.i64[0] = 0xF000F000F000FLL;
  v19.i64[1] = 0xF000F000F000FLL;
  v20.i64[0] = 0x5000500050005;
  v20.i64[1] = 0x5000500050005;
  result = 0xFFFFLL;
  v21.i64[0] = 0x1000100010001;
  v21.i64[1] = 0x1000100010001;
LABEL_6:
  v22 = *(a4 + 3);
  v23 = *a4;
  v24 = 2 * *a4;
  if (v12)
  {
    v24 = v12;
  }

  else
  {
    v14 = *(a4 + 3);
  }

  if (v24 >= 16)
  {
    v25 = 16;
LABEL_12:
    v26 = v14;
    v76 = vld4q_s16(v26);
    v26 += 32;
    v77 = vld4q_s16(v26);
    v27 = vuzp1q_s16(v76.val[0], v77.val[0]);
    v28 = vuzp1q_s16(v76.val[1], v77.val[1]);
    v29 = vuzp1q_s16(v76.val[2], v77.val[2]);
    v30 = vuzp1q_s16(v76.val[3], v77.val[3]);
    v31 = vuzp2q_s16(v76.val[3], v77.val[3]);
    v32 = vsubq_s16(v31, vshrq_n_s16(vuzp2q_s16(v76.val[0], v77.val[0]), 3uLL));
    v14 += 64;
    v12 = v24 - v25;
    goto LABEL_27;
  }

  v25 = v6;
  if (v24 == v6)
  {
    goto LABEL_12;
  }

  if (v24 <= 0)
  {
    sub_10001AEEC();
  }

  v33 = v24 >> 1;
  if (v24 != 1)
  {
    if (v33 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = v33;
    }

    v35 = &v72;
    v36 = &v71;
    v37 = &v73;
    v38 = &v74;
    v39 = &v75;
    v40 = v70;
    do
    {
      *v40++ = *v14;
      v39->i16[0] = v14[1];
      v39 = (v39 + 2);
      v38->i16[0] = v14[2];
      v38 = (v38 + 2);
      v37->i16[0] = v14[3];
      v37 = (v37 + 2);
      v41 = v14[7];
      v36->i16[0] = v41;
      v36 = (v36 + 2);
      v35->i16[0] = v41 + (v14[4] >> 3);
      v35 = (v35 + 2);
      v14 += 8;
      --v34;
    }

    while (v34);
  }

  LODWORD(v42) = v6 >> 1;
  if (v6 <= 15)
  {
    v42 = v42;
  }

  else
  {
    v42 = 8;
  }

  if (v33 < v42)
  {
    v43 = 0;
    do
    {
      *(v70 + v33 + v43) = *v22;
      v75.i16[v33 + v43] = v22[1];
      v74.i16[v33 + v43] = v22[2];
      v73.i16[v33 + v43] = v22[3];
      v44 = v22[7];
      v71.i16[v33 + v43] = v44;
      v72.i16[v33 + v43] = v44 + (v22[4] >> 3);
      v22 += 8;
      ++v43;
    }

    while (v42 - v33 != v43);
  }

  v27 = v70[0];
  v28 = v75;
  v30 = v73;
  v29 = v74;
  v31 = v71;
  v32 = v72;
  v12 = 2 * (v23 - v42 + v33);
  v14 = v22;
LABEL_27:
  v45 = 0;
  v46 = vceqzq_s16(vandq_s8(v27, v17));
  v47 = vandq_s8(v28, v18);
  v48 = vshrq_n_s16(v28, 3uLL);
  v49 = vqshlq_n_u16(vabsq_s16(vshrq_n_s16(v27, 3uLL)), 4uLL);
  v50 = vcgtq_u16(v47, v20);
  v51 = vshlq_u16(vqshlq_n_u16(vabsq_s16(v48), 4uLL), v50);
  v52 = vandq_s8(vaddq_s16(vandq_s8(v29, v19), vbicq_s8(v21, v27)), vorrq_s8(v50, vceqzq_s16(vandq_s8(v27, v16))));
  v53 = vaddq_s16(vaddq_s16(v47, v50), vandq_s8(veorq_s8(vcltzq_s16(v27), vcgezq_s16(v48)), v18));
  v54 = vmulq_s16(vshrq_n_u16(v52, 1uLL), vshrq_n_u16(v29, 4uLL));
  v55 = vshrq_n_u16(v51, 1uLL);
  v56 = vqshlq_s16(vqdmulhq_s16(v55, v54), v8);
  v57 = vceqzq_s16(v52);
  v75 = v32;
  v70[0] = vornq_s8(vandq_s8(v52, v46), v46);
  v70[1] = vbslq_s8(v57, v32, vqdmulhq_s16(v56, v55));
  v70[2] = vbslq_s8(v57, v30, vqdmulhq_s16(v56, vshrq_n_u16(v49, 1uLL)));
  v70[3] = vbslq_s8(v57, v31, v53);
  while (1)
  {
    if (v7)
    {
      v58 = 0;
    }

    else
    {
      v7 = v9;
      v58 = 404;
    }

    v13 += v58;
    v59 = *(v70 + v45);
    ++*(v13 + 384);
    v60 = v75.u16[v45 / 2];
    *(v13 + 388) += v60;
    *(v13 + 396) += v60 * v60;
    if (v59)
    {
      if (v59 != 0xFFFF)
      {
        v61 = *(&v70[2] + v45);
        v62 = (v13 + 24 * *(&v70[3] + v45));
        v63 = v62[1] + *(&v70[1] + v45);
        *v62 += v59;
        v62[1] = v63;
        v62[2] += v61;
      }
    }

    else
    {
      v64 = *(&v70[2] + v45);
      v65 = *(&v70[3] + v45);
      v66 = (v13 + 336 + 12 * v11);
      v67.i32[0] = 1;
      v67.i32[1] = *(&v70[1] + v45);
      *v66 = vadd_s32(*v66, v67);
      v66[1].i32[0] += v64;
      v68 = (v13 + 336 + 12 * (v11 + 1));
      *v68 = vadd_s32(*v68, v67);
      v68[1].i32[0] += v65;
    }

    ++*a6;
    if (v15 == v45)
    {
      return result;
    }

    v45 += 2;
    v7 -= 2;
    if (v45 == 16)
    {
      v15 -= 16;
      v69 = v6 <= 16;
      v6 -= 16;
      if (v69)
      {
        return result;
      }

      goto LABEL_6;
    }
  }
}