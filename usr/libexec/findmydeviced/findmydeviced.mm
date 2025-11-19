id sub_100002880()
{
  if (qword_100314698 != -1)
  {
    sub_10022B0F4();
  }

  v1 = qword_1003146A0;

  return v1;
}

id sub_1000029E0()
{
  if (qword_100314708 != -1)
  {
    sub_100002A4C();
  }

  v1 = qword_100314710;

  return v1;
}

void sub_100002E34(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[112])
  {
    v3 = qword_1003147C0;
    v4 = (*(*(a1 + 40) + 8) + 40);
  }

  else
  {
    v5 = [v2 _stringGestaltQueryForKey:@"UserAssignedDeviceName"];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = *(*(*(a1 + 40) + 8) + 40);
    v4 = &qword_1003147C0;
  }

  v8 = v3;
  v9 = *v4;
  *v4 = v8;

  *(*(a1 + 32) + 112) = 1;
}

id sub_100002F84(uint64_t a1)
{
  if (!a1)
  {
    v4 = 0;
    goto LABEL_14;
  }

  v12 = 0;
  v13 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v1 = [NSScanner scannerWithString:a1];
  [v1 scanUnsignedLongLong:&v13];
  sub_100003284(v13, &v12, &v11, &v10, &v9);
  if (v2 == -45061)
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ADIOTPRequest():kADIAccountNotProvisoned", v8, 2u);
    }

    goto LABEL_12;
  }

  v3 = v2;
  if (v2)
  {
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100227C6C(v3, v6);
    }

LABEL_12:
    v4 = 0;
    goto LABEL_13;
  }

  v4 = [NSData dataWithBytes:v12 length:v11];
  sub_10020CDFC(v12);
  sub_10020CDFC(v10);
LABEL_13:

LABEL_14:

  return v4;
}

void sub_100003284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = v5 || a4 == 0 || a5 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10000333C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, _DWORD *a28, uint64_t a29, uint64_t a30, uint64_t a31, _DWORD *a32, uint64_t a33, void *a34, void *a35)
{
  *a35 = 0;
  *a32 = 0;
  *a34 = 0;
  *a28 = 0;
  return (*(v35 + 8 * ((200 * (a33 != 0)) ^ 0x26Au)))(a1, a2, 551906117);
}

uint64_t sub_100003448(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int *a10, unsigned int *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if ((a33 + 6) < 5)
  {
    goto LABEL_2;
  }

  if (a33 == -1)
  {
    v61 = a3 + v54;
    v62 = a3 + v54 - 600;
    v63 = (*(v53 + 8 * (v54 + 551908262)))(*a10, &a48) != 0;
    return (*(v53 + 8 * ((v63 * (v61 - 763)) ^ v62)))();
  }

  else
  {
    if (a33 == -8)
    {
LABEL_2:
      v55 = a3 + v54 - 600;
      v56 = (v54 + 13) ^ ((*(v53 + 8 * (v54 + 551908262)))(*a19, &a53) == ((v54 - 686759667) ^ 0xB62B78EF));
      return (*(v53 + 8 * ((44 * (v56 & 1)) ^ v55)))();
    }

    v58 = a3 + v54;
    v59 = a3 + v54 - 189;
    v60 = (*(v53 + 8 * (v54 ^ (v54 + 1160))))(*a11, &a38) == (v54 ^ (v54 - 225)) - 227;
    return (*(v53 + 8 * ((v60 * (v58 + 892)) ^ v59)))();
  }
}

uint64_t sub_100003734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v40 = (*(v37 + 8 * (v38 + 415)))(v39 - 144, 0);
  if (v40 >= 0)
  {
    a31 = *(v39 - 144);
  }

  v48 = a31 / (((v38 - 512) | 0x40u) ^ 0x856);
  v49 = *(a36 + 40 * v36 + 36);
  v51 = v49 >= v48;
  v50 = v49 - v48;
  v51 = !v51 || v50 >= 0x12C;
  v52 = !v51;
  return (*(v37 + 8 * ((35 * v52) | v38)))(v40, v41, 551906117, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_1000037C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t *a35)
{
  v39 = (*(v37 + 8 * (v38 + 828)))(*(v35 + 40 * v36 + 16), 0x100004077774924);
  *a35 = v39;
  return (*(v37 + 8 * (((v39 == 0) * ((v38 + 464) ^ v38 ^ 0x240)) | v38)))();
}

uint64_t sub_100003840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t *a34)
{
  v38 = (*(v36 + 8 * ((v37 - 551) ^ 0xDA5)))(*(v34 + 40 * v35 + 32), 0x100004077774924);
  *a34 = v38;
  return (*(v36 + 8 * (((v38 == 0) * ((((4 * (v37 - 551)) ^ 0x1814) + 1655999399) & 0x9D4B7BFC ^ 0x82F)) ^ (v37 - 551))))(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1000038C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  v37 = (*(v35 + 8 * (v36 ^ 0xB1A)))(*a35);
  *a35 = 0;
  return sub_1000036B4(v37, v38, 551906117);
}

void sub_1000039BC()
{
  v5 = (v0 + 276668541) & 0xEF8258EA;
  v7 = *v1 - ((2 * *v1) & 0x133BDFB86) - 0x75332ED76621023DLL;
  v8 = *(v4 - 184);
  v9 = *(v4 - 176);
  v10 = *(v4 - 168);
  v6 = *(v2 + 8 * v5);
  __asm { BRAA            X14, X17 }
}

uint64_t sub_100008334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v50 = v45 ^ (v49 - 1721);
  *(v46 - 0x2F9FA99D07A4AD62) = 0;
  *(v46 - 0x2F9FA99D07A4AD5ALL) = -1317876224;
  *(v46 - 0x2F9FA99D07A4AD56) = 0;
  v51 = (*(v47 + 8 * (v45 ^ (v49 + 1158))))(v46 - 0x2F9FA99D07A4AD62);
  return (*(v47 + 8 * ((((((v50 - 281) ^ (a45 == v48)) & 1) == 0) * (((v50 - 537224937) & 0xFF1FF7FF) + 551905353)) ^ v50)))(v51);
}

void sub_100008478()
{
  (*(v3 + 8 * ((v0 & 0xDFBFD7E2) + 551908264)))();
  *v4 = 0;
  *(v1 - 0x63E5E14B55EA7FF6) = v2;
  *(v1 - 0x63E5E14B55EA7FF2) = 223807700;
  JUMPOUT(0x1000084E4);
}

uint64_t sub_100008538()
{
  (*(v2 + 8 * (v1 + 1164)))(v4, v3);
  v5 = (*(v2 + 8 * (v1 + 1156)))() == v0;
  return (*(v2 + 8 * ((v5 * (((v1 - 630840386) & 0x2599DF2D) + 824)) ^ v1)))();
}

uint64_t sub_1000085D8()
{
  (*(v2 + 8 * (v1 ^ 0xCB4)))(v4, v3);
  v5 = (*(v2 + 8 * (v1 + 1156)))() == v0;
  return (*(v2 + 8 * ((v5 * (v1 + 1764)) ^ v1)))();
}

void sub_100008630()
{
  v2 = *v1;
  v3 = (((v0 + 409103236) & 0xE79D96BA) - 1317876888) ^ *(v1 + 2);
  JUMPOUT(0x100008178);
}

uint64_t sub_100008674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v43 = (*(v41 + 8 * (v40 ^ 0x202)))(a1, 0x100004077774924);
  *(v42 - 232) = v43;
  return (*(v41 + 8 * (((v43 != 0) * (v40 + ((2 * v40) ^ 0x1324) - 2467)) ^ v40)))(v43, v44, 551906117, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

void sub_1000086E8()
{
  v2 = *v1;
  v3 = (v0 + 624) ^ *(v1 + 2) ^ 0xB172CC98;
  JUMPOUT(0x100008178);
}

uint64_t sub_100008710(mach_port_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  v16 = 1;
  v17 = a2;
  v18 = 16777472;
  v19 = a3;
  v20 = NDR_record;
  v21 = a3;
  reply_port = mig_get_reply_port();
  v15.msgh_remote_port = a1;
  v15.msgh_local_port = reply_port;
  v15.msgh_bits = -2147478253;
  *&v15.msgh_voucher_port = 0x4B000000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v15);
    msgh_local_port = v15.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&v15, 3, 0x38u, 0x40u, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v15.msgh_local_port);
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(v15.msgh_local_port);
    return v11;
  }

  if (v15.msgh_id == 71)
  {
    v13 = 4294966988;
  }

  else if (v15.msgh_id == 1300)
  {
    if ((v15.msgh_bits & 0x80000000) != 0)
    {
      v13 = 4294966996;
      if (v16 == 1 && v15.msgh_size == 56 && !v15.msgh_remote_port && HIBYTE(v18) == 1)
      {
        v14 = v19;
        if (v19 == v21)
        {
          *a4 = v17;
          *a5 = v14;
          return 0;
        }
      }
    }

    else if (v15.msgh_size == 36)
    {
      v13 = 4294966996;
      if (HIDWORD(v17))
      {
        if (v15.msgh_remote_port)
        {
          v13 = 4294966996;
        }

        else
        {
          v13 = HIDWORD(v17);
        }
      }
    }

    else
    {
      v13 = 4294966996;
    }
  }

  else
  {
    v13 = 4294966995;
  }

  mach_msg_destroy(&v15);
  return v13;
}

void sub_100008900(id a1, void *a2)
{
  v2 = *(&off_1002D7710 + (byte_100259400[byte_1002590E0[(-3 * (dword_100313A80 ^ 0x8A ^ dword_100313A70))] ^ 7] ^ (-3 * (dword_100313A80 ^ 0x8A ^ dword_100313A70))) + 11);
  v3 = *(v2 - 4);
  v4 = *(&off_1002D7710 + (byte_100259654[(byte_10025930C[(-3 * (v3 ^ dword_100313A70 ^ 0x8A)) - 12] ^ 0xEA) - 4] ^ (-3 * (v3 ^ dword_100313A70 ^ 0x8A))) - 188);
  v5 = v3 - &v11 + *v4;
  v6 = 1543604477 * (v5 - 0x45EA3381FA58338ALL);
  v7 = 1543604477 * (v5 ^ 0x45EA3381FA58338ALL);
  *(v2 - 4) = v6;
  *v4 = v7;
  LOBYTE(v7) = -3 * (*(v2 - 4) ^ 0x8A ^ v7);
  v8 = *(&off_1002D7710 + ((-3 * ((dword_100313A70 + dword_100313A80) ^ 0x8A)) ^ byte_100259650[byte_100259300[(-3 * ((dword_100313A70 + dword_100313A80) ^ 0x8A))] ^ 0xB0]) - 90) - 12;
  v9 = (*&v8[8 * (v7 ^ byte_100259400[byte_1002590E0[v7] ^ 7]) + 23824])(a2);
  v10 = *&v8[8 * (byte_1002589D8[(byte_100259550[(-3 * ((*v4 + *(v2 - 4)) ^ 0x8A))] ^ 0xE2) - 8] ^ (-3 * ((*v4 + *(v2 - 4)) ^ 0x8A))) + 22664];

  v10(v9);
}

uint64_t sub_100008B8C()
{
  v0 = *(&off_1002D7710 + ((-3 * ((dword_100313A70 - dword_100313A88) ^ 0x8A)) ^ byte_1002589D0[byte_100259550[(-3 * ((dword_100313A70 - dword_100313A88) ^ 0x8A))] ^ 0x78]) - 199);
  v1 = *(v0 - 4);
  v2 = *(&off_1002D7710 + (byte_100258EE0[byte_100258BD0[(-3 * (v1 ^ dword_100313A70 ^ 0x8A))] ^ 6] ^ (-3 * (v1 ^ dword_100313A70 ^ 0x8A))) - 62);
  v3 = 1543604477 * ((*v2 + v1) ^ &v12 ^ 0x45EA3381FA58338ALL);
  *(v0 - 4) = v3;
  *v2 = v3;
  v4 = *(v0 - 4);
  v5 = *(&off_1002D7710 + ((-3 * (dword_100313A88 ^ 0x8A ^ dword_100313A70)) ^ byte_1002589D0[byte_100259550[(-3 * (dword_100313A88 ^ 0x8A ^ dword_100313A70))] ^ 0x80]) - 241) - 12;
  (*&v5[8 * (byte_1002589D0[byte_100259550[(-3 * ((v3 - v4) ^ 0x8A))] ^ 0xEC] ^ (-3 * ((v3 - v4) ^ 0x8A))) + 22288])(**(&off_1002D7710 + (byte_100258DE0[byte_100258AD0[(-3 * (v4 ^ 0x8A ^ v3))] ^ 0x90] ^ (-3 * (v4 ^ 0x8A ^ v3))) - 90));
  v6 = -3 * (*(v0 - 4) ^ 0x8A ^ *v2);
  (*&v5[8 * (byte_100258FE8[(byte_100258CD8[v6 - 8] ^ 0xF0) - 8] ^ v6) + 23496])(**(&off_1002D7710 + (v6 ^ byte_100258EE0[byte_100258BD0[v6] ^ 0x3F]) - 118));
  v7 = *(v0 - 4);
  v8 = *v2;
  v9 = **(&off_1002D7710 + ((-3 * (v7 ^ 0x8A ^ v8)) ^ byte_1002589D0[byte_100259550[(-3 * (v7 ^ 0x8A ^ v8))] ^ 0xA9]) - 98);
  v10 = *&v5[8 * ((-3 * ((v8 + v7) ^ 0x8A)) ^ byte_100258DE0[byte_100258AD0[(-3 * ((v8 + v7) ^ 0x8A))] ^ 0xC3]) + 23160];

  return v10(v9);
}

void sub_10000958C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000095A4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  if (v2 == 1)
  {
    v3 = objc_opt_new();
    v4 = [v3 settingsConfiguration];

    v5 = [[FMSynchronizer alloc] initWithDescription:@"SP-BA-STATUS" andTimeout:5.0];
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_100152554;
    v11 = &unk_1002CE5C8;
    v6 = *(a1 + 40);
    v12 = v5;
    v13 = v6;
    v7 = v5;
    [v4 beginRefreshingServiceStateWithBlock:&v8];
    [v7 wait];
    *(*(a1 + 32) + 104) = *(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = v2;
  }
}

void sub_100009814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000983C(uint64_t a1)
{
  v2 = [*(a1 + 32) maskedAppleID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100009C84(uint64_t a1)
{
  if (*(*(a1 + 32) + 114))
  {
    *(*(*(a1 + 40) + 8) + 24) = byte_100314940;
  }

  else
  {
    v2 = +[MCProfileConnection sharedConnection];
    *(*(*(a1 + 40) + 8) + 24) = [v2 isPasscodeSet];

    byte_100314940 = *(*(*(a1 + 40) + 8) + 24);
  }

  *(*(a1 + 32) + 114) = 1;
}

void sub_100009E2C(uint64_t a1)
{
  v2 = [*(a1 + 32) currentPasscodeConstraint];
  v3 = v2;
  if (v2 == dword_100313260)
  {
    v4 = qword_100314958;
    v5 = (*(*(a1 + 40) + 8) + 40);
  }

  else
  {
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    if (v2 > 2)
    {
      v8 = @"unknown";
    }

    else
    {
      v8 = off_1002D0428[v2];
    }

    *(v6 + 40) = v8;

    v4 = *(*(*(a1 + 40) + 8) + 40);
    v5 = &qword_100314958;
  }

  v9 = v4;
  v10 = *v5;
  *v5 = v9;

  dword_100313260 = v3;
}

void sub_100009FAC(uint64_t a1)
{
  if (*(*(a1 + 32) + 113))
  {
    *(*(*(a1 + 40) + 8) + 24) = dword_100314928;
  }

  else
  {
    v2 = +[MCProfileConnection sharedConnection];
    v3 = [v2 effectiveValueForSetting:MCFeaturePasscodeKeyboardComplexity];
    *(*(*(a1 + 40) + 8) + 24) = [v3 intValue];

    dword_100314928 = *(*(*(a1 + 40) + 8) + 24);
  }

  *(*(a1 + 32) + 113) = 1;
}

void sub_10000A430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A450(uint64_t a1)
{
  v5 = [*(a1 + 32) accessoriesByIdentifier];
  v2 = [v5 allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_10000A938(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_10000A964(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A974(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A984(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A994(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A9A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A9B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A9C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A9D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A9E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A9F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AA04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AA14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AA24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AA34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AA44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AA54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AA64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AA74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AA84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AA94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AAA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AAB4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AAC4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AAD4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AAE4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AAF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AB04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AB14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AB24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AB34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AB44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AB54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AB64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AB74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AB84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AB94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000ABA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000AFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000AFE8(uint64_t a1)
{
  v5 = [*(a1 + 32) supportedAccessories];
  v2 = [v5 objectForKey:@"FMDSupportedAccessoryRegistryVersionKey"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &off_1002E7CC0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
}

id sub_10000BE38()
{
  if (qword_1003146E8 != -1)
  {
    sub_10022B158();
  }

  v1 = qword_1003146F0;

  return v1;
}

void sub_10000C56C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf, int a12, __int16 a13, __int16 a14, id a15)
{
  if (a2 == 1)
  {
    v15 = objc_begin_catch(a1);
    v16 = sub_100002880();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      LODWORD(buf) = 138412802;
      *(&buf + 4) = v17;
      WORD6(buf) = 2048;
      a14 = 2112;
      a15 = v15;
      v18 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Received expection when encoding auth : %@", &buf, 0x20u);
    }

    objc_end_catch();
    JUMPOUT(0x10000C520);
  }

  _Unwind_Resume(a1);
}

id sub_10000C688()
{
  if (qword_1003146C8 != -1)
  {
    sub_10022B130();
  }

  v1 = qword_1003146D0;

  return v1;
}

void sub_10000C7C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10000D344(uint64_t a1)
{
  v2 = [*(a1 + 32) info];
  [v2 removeObjectForKey:@"qcPendingEpoch"];

  v3 = [*(a1 + 32) infoAtStartup];
  v4 = [v3 count];

  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [*(a1 + 32) infoAtStartup];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        v9 = 0;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * v9);
          v11 = [*(a1 + 32) info];
          v12 = [v11 objectForKeyedSubscript:v10];

          v13 = [*(a1 + 32) infoAtStartup];
          v14 = [v13 objectForKeyedSubscript:v10];

          if (v12)
          {
            if ([v12 isEqualToNumber:v14])
            {
              v15 = [*(a1 + 32) info];
              [v15 removeObjectForKey:v10];
            }
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [*(a1 + 32) setInfoAtStartup:0];
    [*(a1 + 32) _saveInfo];
  }
}

void sub_10000E910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id a49)
{
  objc_destroyWeak(&a49);
  objc_destroyWeak((v49 - 184));
  _Block_object_dispose((v49 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_10000EBD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000EDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000EDF8(uint64_t a1)
{
  v6 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FindMyDevice.framework"];
  v2 = [[CLLocationManager alloc] initWithEffectiveBundle:v6];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) locationManagers];
  [v5 addObject:*(*(*(a1 + 40) + 8) + 40)];
}

uint64_t sub_10000F038()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F090(__SecKey *a1, const UInt8 *a2, CFIndex length, UInt8 **a4, unsigned int *a5)
{
  error = 0;
  v8 = CFDataCreate(0, a2, length);
  v9 = SecKeyCreateSignature(a1, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, v8, &error);
  if (!v9)
  {
    v14 = 4294925247;
    if (!v8)
    {
      return v14;
    }

    goto LABEL_8;
  }

  v10 = v9;
  v11 = CFDataGetLength(v9);
  v12 = malloc_type_malloc(v11, 0x100004077774924uLL);
  if (v12)
  {
    v13 = v12;
    v17.length = CFDataGetLength(v10);
    v17.location = 0;
    CFDataGetBytes(v10, v17, v13);
    v14 = 0;
    *a4 = v13;
    *a5 = v11;
  }

  else
  {
    v14 = 4294925268;
  }

  CFRelease(v10);
  if (v8)
  {
LABEL_8:
    CFRelease(v8);
  }

  return v14;
}

uint64_t sub_10000F18C()
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_10000F38C;
  v11 = sub_10000F39C;
  v12 = 0;
  v0 = dispatch_semaphore_create(0);
  if (v0)
  {
    if (getenv("RunningTestSUInfoRefetch"))
    {
      v15[0] = @"IgnoreExistingCollection";
      v16[0] = [NSNumber numberWithUnsignedChar:1];
      v16[1] = &__kCFBooleanTrue;
      v15[1] = @"scheduleCollectionForCurrentBuild";
      v15[2] = @"NetworkTimeoutInterval";
      v16[2] = &off_1002E7CD8;
      v1 = v15;
      v2 = v16;
      v3 = 3;
    }

    else
    {
      v13 = @"scheduleCollectionForCurrentBuild";
      v14 = &__kCFBooleanTrue;
      v1 = &v13;
      v2 = &v14;
      v3 = 1;
    }

    [NSDictionary dictionaryWithObjects:v2 forKeys:v1 count:v3];
    MAEPerformCollectionWithCompletion();
    v5 = dispatch_time(0, 70000000000);
    v4 = 4294924355;
    if (!dispatch_semaphore_wait(v0, v5))
    {
      if (v8[5])
      {
        v4 = 4294924355;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 4294925268;
  }

  dispatch_release(v0);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_10000F374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000F3BC(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 3);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 8);
}

void sub_10000F40C(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 3);
}

uint64_t sub_10000F450(uint64_t result)
{
  v1 = 218380439 * (((result ^ 0x63E01C0209EB8FF3) - 2 * ((result ^ 0x63E01C0209EB8FF3) & 0x8889D36A3452E4C0) - 0x77762C95CBAD1B40) ^ 0xF517F5FB059CEE52);
  v2 = *(result + 32) + v1;
  v3 = *result - v1;
  v4 = *(result + 20) + 218380439 * (((result ^ 0x9EB8FF3) - 2 * ((result ^ 0x9EB8FF3) & 0x3452E4C0) + 877847744) ^ 0x59CEE52);
  v5 = v2 == v3;
  v6 = v2 > v3;
  if ((*(result + 8) ^ (218380439 * (((result ^ 0x9EB8FF3) - 2 * ((result ^ 0x9EB8FF3) & 0x3452E4C0) + 877847744) ^ 0x59CEE52))))
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (!v7)
  {
    v4 = *(result + 12) - 218380439 * (((result ^ 0x9EB8FF3) - 2 * ((result ^ 0x9EB8FF3) & 0x3452E4C0) + 877847744) ^ 0x59CEE52);
  }

  *(result + 40) = v4 ^ (*(result + 24) + 218380439 * (((result ^ 0x9EB8FF3) - 2 * ((result ^ 0x9EB8FF3) & 0x3452E4C0) + 877847744) ^ 0x59CEE52));
  return result;
}

void sub_10000F4F0(uint64_t a1)
{
  v1 = 398132233 * (a1 ^ 0xF19B9341B4144DA6);
  v2 = (*(a1 + 40) + v1);
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = *(a1 + 28) ^ v1;
  v6 = *(a1 + 8) ^ v1;
  __asm { BRAA            X12, X17 }
}

uint64_t sub_10000F574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = v7 + v6;
  if (a4)
  {
    v9 = v5 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  return (*(v4 + 8 * (v8 | (8 * ((v10 ^ (v7 + 18)) & 1)))))(a1, a2, a3);
}

uint64_t sub_10000F5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = v7 + v6;
  if (a4)
  {
    v9 = v5 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  return (*(v4 + 8 * (((((v7 + 1541529584) & 0xC7FEEF7F) - 1621) * v10) | v8)))(a1, a2, a3);
}

uint64_t sub_10000F6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = 1574982917 * (((v13 | 0xECD797A1) - v13 + (v13 & 0x13286858)) ^ 0x17F2D71C);
  v14 = (v4 + 1931) ^ v6;
  v21 = &v11;
  v20 = 399364581 - v6;
  v13[1] = &v10;
  v13[2] = 0;
  v13[0] = v3;
  v15 = 0;
  v16 = 0x2F38A81C3234F21BLL;
  v17 = a2;
  v18 = v12;
  (*(v2 + 8 * (v4 + 2028)))(v13);
  result = a1;
  v12[1] = v19;
  *(a1 + 24) = v19;
  v9 = *(v5 - 24);
  return result;
}

void sub_10000F83C(uint64_t a1)
{
  v1 = *(a1 + 28) - 923786993 * ((~a1 & 0x10A645DB | a1 & 0xEF59BA24) ^ 0x7A41F994);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10000F940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 40))
  {
    v7 = *(a1 + 16) == 0x38719A36542A0B63;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  return (*(a3 + 8 * ((v8 ^ (v6 - 1)) & 1 ^ v6)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_10000F9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v4 ^ 0xFF) & v5;
  v8 = *(a1 + 24) - v3 == 257197106 && v6 == ((v4 - 164266389) & 0x9CA87FF) - 1883;
  return (*(a3 + 8 * ((604 * v8) ^ v4)))();
}

void sub_100054240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, char a58, uint64_t a59, uint64_t a60, char a61, int a62)
{
  LODWORD(STACK[0x378]);
  LODWORD(STACK[0x378]);
  LODWORD(STACK[0x378]);
  LODWORD(STACK[0x378]);
  v62 = (((a24 + 1) & 3) + 1705365433 - 2 * ((a24 + 1) & 1)) ^ 0x65A5CFB9 | a62;
  v63 = (((2 * a57) | 0xFFFFFFFB) + (a57 & 3 ^ 0x88279926) - 21) ^ 0x8827990E | a62;
  v64 = ((a58 & 3) - 1433245157 - 2 * (a58 & 3)) ^ 0xAA926A1B | a62;
  LODWORD(STACK[0x358]) = v64 + 706912886 - ((2 * v64) & 0x544544EC);
  v65 = ((a61 + 1) & 3 | a62) + 1394482897 - 2 * (((a61 + 1) & 3 | a62) ^ STACK[0x34C] & 8);
  LODWORD(STACK[0x340]) = v62 - 1499767389 - ((2 * v62) & 0x4D36BB4A) + 2;
  LODWORD(STACK[0x350]) = v63 + 1007383813 - ((2 * v63) & 0x7816EA1E) + 10;
  JUMPOUT(0x100011928);
}

uint64_t sub_1000545A4(uint64_t result)
{
  v1 = 1614251083 * ((2 * (result & 0x37F8631DB4548D5ALL) - result - 0x37F8631DB4548D5BLL) ^ 0x7C2D473D23B21F45);
  v2 = *(result + 16) ^ v1;
  v3 = *(result + 40) + v1;
  v4 = v2 >= v3;
  v5 = v2 < v3;
  v6 = !v4;
  if ((*(result + 8) + 1614251083 * ((2 * (result & 0xB4548D5A) - result + 1269527205) ^ 0x23B21F45)))
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    v8 = result;
  }

  else
  {
    v8 = (result + 24);
  }

  *(result + 4) = *v8 ^ (1614251083 * ((2 * (result & 0xB4548D5A) - result + 1269527205) ^ 0x23B21F45)) ^ (*(result + 32) - 1614251083 * ((2 * (result & 0xB4548D5A) - result + 1269527205) ^ 0x23B21F45));
  return result;
}

void sub_100054648(uint64_t a1)
{
  v1 = 1117245193 * ((((2 * a1) | 0x8B53CAEE) - a1 + 978721417) ^ 0x15AA2E7E);
  v5 = *(a1 + 16) - v1;
  if (*(a1 + 8))
  {
    v2 = *(a1 + 24) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = !v2 && *(a1 + 32) != 0;
  __asm { BRAA            X14, X17 }
}

uint64_t sub_10005470C@<X0>(uint64_t a1@<X8>)
{
  v8 = 1574982917 * ((-1669748345 - (v12 | 0x9C79A987) + (v12 | 0x63865678)) ^ 0x98A316C5);
  v19 = -442462546 - v8;
  v16 = v2;
  v17 = v3;
  v12[1] = 0;
  v12[2] = 0;
  v12[0] = &v11;
  v14 = 0;
  v15 = 0x2F38A81C3234F21BLL;
  v20 = a1;
  v13 = (v5 + v1 + 1960) ^ v8;
  result = (*(v4 + 8 * (v1 ^ 0x9520175C)))(v12);
  *v6 = v18;
  v10 = *(v7 - 24);
  return result;
}

void sub_1000547F0()
{
  v0 = __chkstk_darwin();
  v1 = *(v0 + 64) + 1670914187 * (((v0 | 0xC051CF9A) - v0 + (v0 & 0x3FAE3065)) ^ 0xE0233B4);
  v2 = *(v0 + 40);
  v3 = (*(&off_1002D7880 + (v1 | 0x79)))(21504, 1951826711);
  *(v2 - 0x5DA3895CB52A6E57) = v3 + 0x606985B424E1B15ELL;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10005492C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X7>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(a12 + 32);
  v14 = (v13 + v12);
  v15 = (a6 - 1771) | 0x5C8;
  v19 = (*(a12 + 12) ^ v12) == v15 + 1352785654 || v14 == 126238804 || *(a12 + 16) + v12 == 927940940 || *(a12 + 48) + v12 == 438783090;
  *(*(a12 + 80) - 0x4696E7649AFAC746) = 604931837;
  return (*(&off_1002D7880 + ((19 * v19) ^ a6)))(v14, v13, a1, a2, a3, (v15 + 536), a4, a5, a7, a8, a9);
}

uint64_t sub_1000549E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v15 = a14[7];
  v16 = a14[3];
  v20 = v16 == 0x612F5EEDFD47CC22 || a14[9] == 0x6C9CEFEC55D2C59DLL || v15 == 0x2344937AD629B1A1 || *a14 == 0x99187B47AA1D2C2;
  return (*(&off_1002D7880 + ((v20 * (a6 + 881 * (v14 ^ 0x5EA) - 2795)) ^ v14)))(a1, a2, v16, v15, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_100054A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  result = (*(&off_1002D7880 + (a6 ^ 0x68)))();
  *(v10 + 8) = v6;
  v9 = *(v7 - 104);
  return result;
}

uint64_t sub_100054AE8()
{
  v2 = v0 + 231;
  v3 = (v0 - 14) ^ *(v1 - 0x99187B47AA1D17BLL);
  v4 = (*(v1 - 0x99187B47AA1D2B0) ^ 0xD4) - ((2 * (*(v1 - 0x99187B47AA1D2B0) ^ 0xD4)) & 0x114) - 278486646;
  v5 = ((((*(v1 - 0x99187B47AA1D2A1) ^ 0xD4) - ((2 * (*(v1 - 0x99187B47AA1D2A1) ^ 0xD4)) & 0x1EA)) << 16) - 202047488) ^ 0xF3F50000;
  v6 = ((((*(v1 - 0x99187B47AA1D2C0) ^ 0xD4) - ((2 * (*(v1 - 0x99187B47AA1D2C0) ^ 0xD4)) & 0x90)) << 8) - 1553381376) ^ 0xA3694800;
  v7 = (v6 - ((2 * v6) & 0x28C7200) + 21379489) ^ 0x14639A1 | (v5 - ((2 * v5) & 0x46360000) + 1662774521) ^ 0x631BECF9;
  v8 = ((((*(v1 - 0x99187B47AA1D2ABLL) ^ 0xD4) - ((2 * (*(v1 - 0x99187B47AA1D2ABLL) ^ 0xD4)) & 0xAAAAAAAA)) << 16) + 72679424) ^ 0x4550000;
  v9 = ((((*(v1 - 0x99187B47AA1D1E3) ^ 0xD4) - ((2 * *(v1 - 0x99187B47AA1D1E3)) & 0x52)) << 8) + 1448159488) ^ 0x56512900;
  v10 = (v9 - ((2 * v9) & 0x110B0000) + 1216708617) ^ 0x48858009 | (v8 - ((2 * v8) & 0x7E780000) + 1060907744) ^ 0x3F3C2AE0;
  v11 = ((((*(v1 - 0x99187B47AA1D206) ^ 0xD4) - ((2 * (*(v1 - 0x99187B47AA1D206) ^ 0xD4)) & 0x1C0)) << 16) + 1121976320) ^ 0x42E00000;
  v12 = ((((*(v1 - 0x99187B47AA1D12DLL) ^ 0xD4) - 2 * ((*(v1 - 0x99187B47AA1D12DLL) ^ 0xD4) & 0x7F)) << 8) - 278233344) ^ 0xEF6A7F00;
  v13 = (v12 - ((2 * v12) & 0x135C7C00) - 911327658) ^ 0xC9AE3E56 | (v11 - ((2 * v11) & 0x74980000) - 1169403112) ^ 0xBA4C5318;
  v14 = (v10 - ((2 * v10) & 0x6E717AFC) + 926465406) ^ 0x3738BD7E | ((*(v1 - 0x99187B47AA1D23DLL) ^ 0xD4) - ((2 * (*(v1 - 0x99187B47AA1D23DLL) ^ 0xD4)) & 0x9A) - 1905064883) ^ 0x8E73044D;
  v15 = (((((v13 - ((2 * v13) & 0x7F23B638) + 1066523420) ^ 0x3F91DB1C | (v3 - ((2 * v3) & 0x19A) - 1307601203) ^ 0xB20F96CD) - ((2 * ((v13 - ((2 * v13) & 0x7F23B638) + 1066523420) ^ 0x3F91DB1C | (v3 - ((2 * v3) & 0x19A) - 1307601203) ^ 0xB20F96CD)) & 0x22CEC8)) << 8) - 1855495168) ^ 0x91676400;
  v16 = ((((*(v1 - 0x99187B47AA1D2B8) ^ 0xD4) - ((2 * (*(v1 - 0x99187B47AA1D2B8) ^ 0xD4)) & 0x8E)) << 16) + 910622720) ^ 0x36470000;
  v17 = ((((*(v1 - 0x99187B47AA1D129) ^ 0xD4) - ((2 * (*(v1 - 0x99187B47AA1D129) ^ 0xD4)) & 0x1A)) << 8) - 1284764416) ^ 0xB36C0D00;
  v18 = v15 - ((2 * v15) & 0x46D4B400) - 1553310986;
  v19 = (v17 - ((2 * v17) & 0x79505C00) - 1129828793) ^ 0xBCA82E47 | (v16 - ((2 * v16) & 0xBCC0000) - 974778583) ^ 0xC5E60F29;
  v20 = (*(v1 - 0x99187B47AA1D2ADLL) ^ 0xD4) - ((2 * (*(v1 - 0x99187B47AA1D2ADLL) ^ 0xD4)) & 0xA4) - 440416174;
  v21 = (((((v7 - ((2 * v7) & 0x1D6EBF84) + 246898626) ^ 0xEB75FC2 | v4 ^ 0xEF66A18A) - ((2 * ((v7 - ((2 * v7) & 0x1D6EBF84) + 246898626) ^ 0xEB75FC2 | v4 ^ 0xEF66A18A)) & 0xEBA872)) << 8) + 1976842496) ^ 0x75D43900;
  v22 = (v21 - ((2 * v21) & 0x24333A00) + 303668605) ^ 0x12199D7D | ((*(v1 - 0x99187B47AA1D1C5) ^ 0xD4) - ((2 * (*(v1 - 0x99187B47AA1D1C5) ^ 0xD4)) & 0xB0) - 1573908648) ^ 0xA2300F58;
  v23 = (((((v14 - ((2 * v14) & 0x8EB790)) << 8) + 1197197312) ^ 0x475BC800) - ((2 * ((((v14 - ((2 * v14) & 0x8EB790)) << 8) + 1197197312) ^ 0x475BC800)) & 0xC9255000) + 1687333086) ^ 0x6492A8DE | ((*(v1 - 0x99187B47AA1D22CLL) ^ 0xD4) - ((2 * (*(v1 - 0x99187B47AA1D22CLL) ^ 0xD4)) & 0x1D8) + 631220204) ^ 0x259FA7EC;
  v24 = 2 * (v18 ^ 0xA36A5AF6 | ((*(v1 - 0x99187B47AA1D151) ^ 0xD4) - ((2 * (*(v1 - 0x99187B47AA1D151) ^ 0xD4)) & 0x8C) - 1448003258) ^ 0xA9B13946);
  v25 = (((((v19 - ((2 * v19) & 0x1C486D34) + 1310996122) ^ 0x4E24369A | v20 ^ 0xE5BFC852) + 9067032 - ((2 * ((v19 - ((2 * v19) & 0x1C486D34) + 1310996122) ^ 0x4E24369A | v20 ^ 0xE5BFC852)) & 0x14B602)) << 8) + 59648) ^ 0x8A5B0100;
  v26 = 2 * ((v25 - ((2 * v25) & 0xAF739600) - 675689650) ^ 0xD7B9CB4E | ((*(v1 - 0x99187B47AA1D25BLL) ^ 0xD4) - ((2 * (*(v1 - 0x99187B47AA1D25BLL) ^ 0xD4)) & 0x1E0) - 2014121488) ^ 0x87F2F1F0);
  *(&STACK[0x8C0] + (((v2 - 394) ^ 0x8206E4FA) + 2113531879) % 0x55C) = 2035698401;
  return (*(&off_1002D7880 + v2))(v24);
}

uint64_t sub_100055340(int a1, uint64_t a2, int a3, int a4, int a5)
{
  v10 = a3 ^ 0x28;
  v11 = v6 + v5;
  v12 = v7 + a1;
  v13 = v8 + a5;
  v14 = (v10 ^ 0xF1AFFAB4 ^ ((v13 - 1839267202) * (v13 - 1839267202))) + v9 + a4 + ((2 * (v13 - 1839267202) * (v13 - 1839267202)) & 0xE35FFFFA);
  v15 = ((((v14 - 1363646028) % 0xFFFF) ^ 0x7BFFEFFE) - 2080370686 + ((2 * ((v14 - 1363646028) % 0xFFFF)) & 0x1DFFC)) % 0x190;
  v16 = (97 * (((2 * ((v9 + a4 - 1603769934) % 0x190u)) & 0x3F0) + (((v9 + a4 - 1603769934) % 0x190u) ^ 0x7FFFEFF8)) - 2147031628) % 0x55C;
  v17 = (97 * (((2 * v15) & 0x3BE) + (v15 ^ 0x6EFFB7DF)) - 249813203) % 0x55C;
  v18 = *(&STACK[0x8C0] + v16);
  *(&STACK[0x8C0] + v16) = *(&STACK[0x8C0] + v17);
  v19 = (v8 + a5 - 539495442 + (((v12 - 1655994433) * (v12 - 1655994433)) ^ 0x237ADFBC) + ((2 * (v12 - 1655994433) * (v12 - 1655994433)) & 0x46F5BF78u) - 1895026987) % 0xFFFF;
  v20 = ((v19 ^ 0xF7DFF7FD) + 136316931 + ((2 * v19) & 0x1EFFA)) % 0x190;
  v21 = (97 * ((((v13 - 1839267202) % 0x190u) ^ 0xB9BBFBFF) + 2 * ((v13 - 1839267202) % 0x190u)) - 1614391539) % 0x55C;
  *(&STACK[0x8C0] + v17) = v18;
  v22 = *(&STACK[0x8C0] + v21);
  v23 = (97 * (((2 * v20) & 0x2F6) + (v20 ^ 0x7B6BFF7B)) + 1008010513) % 0x55C;
  *(&STACK[0x8C0] + v21) = *(&STACK[0x8C0] + v23);
  v24 = (v12 - 1655994433) % 0x190u;
  v25 = (((v11 - 2104557835) * (v11 - 2104557835)) ^ 0xEEF4F9BD) + v12 + ((2 * (v11 - 2104557835) * (v11 - 2104557835)) & 0xDDE9F37A);
  *(&STACK[0x8C0] + v23) = v22;
  v26 = ((((v25 - 1370059261) % 0xFFFF) ^ 0x57F6FBFE) - 1475804158 + ((2 * ((v25 - 1370059261) % 0xFFFF)) & 0x1F7FC)) % 0x190;
  v27 = (97 * ((v24 ^ 0xFFEEFFFF) + 2 * v24) + 108122893) % 0x55C;
  v28 = (97 * (((2 * v26) & 0x2FE) + (v26 ^ 0x6DF9297F)) + 1419254157) % 0x55C;
  v29 = *(&STACK[0x8C0] + v27);
  *(&STACK[0x8C0] + v27) = *(&STACK[0x8C0] + v28);
  *(&STACK[0x8C0] + v28) = v29;
  v30 = v11 + (((v14 - 1363646028) * (v14 - 1363646028)) ^ 0x3DED5E75) + ((2 * (v14 - 1363646028) * (v14 - 1363646028)) & 0x7BDABCEA);
  v31 = (97 * ((((v11 - 2104557835) % 0x190u) ^ 0x5F7F73FF) + 2 * ((v11 - 2104557835) % 0x190u)) - 793387251) % 0x55C;
  v32 = ((((v30 + 1151443073) % 0xFFFFu) ^ 0xFF3FC3DF) + 12598014 + ((2 * ((v30 + 1151443073) % 0xFFFFu)) & 0x187BE) + 291) % 0x190;
  v33 = (97 * (((2 * v32) & 0x2FE) + (v32 ^ 0xFFBFC37F)) + 408403853) % 0x55C;
  v34 = *(&STACK[0x8C0] + v31);
  *(&STACK[0x8C0] + v31) = *(&STACK[0x8C0] + v33);
  *(&STACK[0x8C0] + v33) = v34;
  return (*(&off_1002D7880 + (v10 ^ 0x28)))();
}

uint64_t sub_1000557F4@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W8>)
{
  v4 = *(&STACK[0x8C0] + (((194 * (a3 ^ 0x79564AE1)) & 0xB96BBFC2) + ((97 * (a3 ^ 0x79564AE1)) ^ 0xDCB5DFE1) + 592114379) % 0x55C) ^ 0x79564AE1;
  *(&STACK[0x8C0] + (((194 * v4) & 0x7CDF7FF6) + ((97 * v4) ^ 0xBE6FBFFB) + 1100065345) % 0x55C) = a3;
  return (*(v3 + 8 * ((35 * ((((a3 ^ 0x79564AE1) + 2035698401 - ((2 * (a3 ^ 0x79564AE1) + 2) & 0xF2AC95C2) + 1) ^ a2) < 0x190)) ^ a1)))();
}

uint64_t sub_1000558E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = (v8 * a3 + 1326415261) % (((a1 + 1878993122) & 0xFF76DB57) - 1870005239);
  v13 = *(a4 + 4 * v12) ^ (a8 + 14);
  v14 = dword_10027D9D0[(((2722 * v13) & 0xAECD2FFA) + ((1361 * v13) ^ 0x576697FD) - 1465991596) % 0x12E0] ^ 0x1B9047AC;
  v15 = ((-2114329278 * v14) & 0xFD3FEABC) + ((v14 * v11) ^ 0xFE9FF55E) + 23071394;
  v16 = 8 * (v15 * v15 - ((2 * v15 * v15) & 0x137E6E50)) + 1308211520;
  v17 = ((v16 ^ 0x4DF9B940) + v9 - 2 * ((v16 ^ 0x4DF9B940) & (v9 + 26) ^ v16 & 0x20)) ^ v15;
  v18 = *(v10 + 8 * ((908 * (v8 == 739053198)) ^ a1));
  *(a4 + 4 * v12) = ((v17 ^ v9) + 189950768 - 2 * ((v17 ^ v9) & 0xB526B31 ^ v17 & 1)) ^ 0xC14CA207;
  return v18(a1, 1870006595);
}

uint64_t sub_100055A7C@<X0>(int a1@<W1>, int a2@<W8>)
{
  v9 = (((a1 - 1870008126 + ((a2 - 1145276836) & 0xD4CD87DB)) ^ 0xE) + 296618081 - ((2 * (a1 - 1870008126 + ((a2 - 1145276836) & 0xD4CD87DB))) & 0x235C10C2)) ^ 0x11AE0861;
  v10 = ((v9 * v4) & 0xF657EFFE) + ((v9 * v3) ^ 0xFB2BF7FF) + 81354322;
  v11 = dword_10027D9D0[v10 - (((v10 * v5) >> 32) >> 10) * v6] ^ 0x1B9047AC;
  v12 = ((33154370 * v11) & 0x37FF5AC6) + ((v11 * v8) ^ 0x9BFFAD63) + 1677742749;
  v13 = (8 * (v12 * v12 - ((2 * v12 * v12) & 0x17536AC2)) - 582112504) ^ 0xDD4DAB08;
  v14 = v12 ^ 0x45921E19 ^ (v13 + 1167203865 - ((2 * v13) & 0x8B243C30));
  v15 = *(v7 + 8 * ((3770 * (((a1 + 1 - a2) | (a2 - (a1 + 1))) >= 0)) ^ (v2 + 3200)));
  *(&STACK[0x8C0] + (97 * a1 - 1001881751) % 0x55Cu) = (v14 - ((2 * v14) & 0x88B516CA) - 1000699035) ^ 0xE444252;
  return v15();
}

uint64_t sub_100055C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62)
{
  v65 = ((((v63 + 1331283142) * (v63 + 1521188275)) ^ 0xFCFDEFBB) - 1765498258 + ((2 * (v63 + 1331283142) * (v63 + 1521188275)) & 0xF9FBDF76)) * (v63 + 1521188275);
  *(*a62 + 4 * (v63 + 1799841271) - 0x606985B46751526ELL) = ((2 * v65) & 0xFDDFFFFA) + (v65 ^ 0xFEEFFFFD) - ((2 * (((2 * v65) & 0xFDDFFFFA) + (v65 ^ 0xFEEFFFFD)) - 888934828) & 0xF2AC95C2) - 556252661;
  return (*(v64 + 8 * ((22 * ((v62 ^ 0x78ALL) + v63 != 2773784397)) ^ v62)))();
}

uint64_t sub_100055D24@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, unsigned int a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, unsigned int a55, uint64_t a56, uint64_t a57)
{
  v58 = a1 + 345;
  v59 = (*(v57 + 8 * (a1 ^ 0x933)))((a7 + a5 + a6 - 2 * (((a1 + 345) ^ 0x6E8F78C8) & (a7 + a5 + a6 + 1888000386) ^ (a7 + a5 + a6) & 1) - 552070164) ^ 0x6E8F7A6A, 0x100004077774924);
  v64 = (a6 - 887266100) < 0x26CA618;
  *(v59 + a55 + a5 + a57 - 1479025970) = *(a52 - 0x2344937AD629B1A1 + ((101 * (v58 ^ 0x2A6u)) ^ 0xFFFFFFFFB85F63AALL) + 1201708461);
  if ((a6 - 887266100) >= 0x26CA618)
  {
    v64 = (a6 - 887266100) > 0x26CA619;
  }

  return (*(v57 + 8 * (((32 * v64) | (v64 << 6)) ^ v58)))(v59, a5, a57, a55, v60, v61, v62, v63, a2, a3);
}

uint64_t sub_100055E88(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v60 = (2 * v58) ^ 0x214;
  v61 = a2 - 201306359 < (v60 ^ 0x44A23201u);
  *(a1 + (a4 + a3 - 126238804)) = *((v60 + 1562) + 1457725437 + a58 - 0x612F5EEDFD47CC22 - 1457727485);
  v62 = a2 - 201306359 < (v60 ^ 0x44A23201u);
  v63 = (a2 - 201306359) > 0x44A233E8;
  if (!v61)
  {
    v61 = v63;
  }

  v64 = *(v59 + 8 * ((31 * v61) ^ v60));
  return v64(a1, v64, v62, 1457725437, a5, a6, a7, a8, a9);
}

uint64_t sub_100055F68(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v63 = (a13 + 1420230335) < 0x5C2D3F13;
  *a1 = *(a61 - 0x6C9CEFEC55D2C59DLL) - ((2 * *(a61 - 0x6C9CEFEC55D2C59DLL)) & 0x8F) - 57;
  v64 = (v61 ^ 0x1473E287) + 1203328141;
  v65 = v63 ^ (v64 < 0x5C2D3F13);
  v66 = v64 < a13 + 1420230335;
  if (!v65)
  {
    v63 = v66;
  }

  v67 = *(v62 + 8 * ((26 * v63) ^ (v61 - 442)));
  return v67(a1, v67, v66, 0, a5, a6, a7, a8);
}

uint64_t sub_100056240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, int a57, int a58, int a59, int a60, uint64_t a61, uint64_t a62, int a63)
{
  HIDWORD(v892) = v65;
  LODWORD(v893) = *(a1 + (a20 - 649662366));
  v68 = ((((v63 - 1833) ^ a20) - ((2 * a20 + 848158916) & 0x73D44E74) + 321984412) ^ 0x39EA273A) + ((2 * a20) & 2);
  v69 = (v64 & (2 * v68)) + (v68 ^ 0xFF7FF9FB);
  v901 = *(a1 + v69 + 8390150);
  v902 = *(a1 + v69 + 8390151);
  v70 = *(a1 + v69 + 8390152);
  v71 = *(a1 + v69 + 8390153);
  v899 = *(a1 + v69 + 8390154);
  v900 = *(a1 + v69 + 8390155);
  v72 = *(a1 + v69 + 8390156);
  v73 = *(a1 + v69 + 8390157);
  v74 = *(a1 + v69 + 8390158);
  LODWORD(a46) = v66 + (v67 ^ v66) - 2 * (((v67 ^ v66) + 2147483616) & (v66 + 1) ^ v67 & 1) - 32;
  HIDWORD(a49) = *(a1 + v69 + 8390159);
  v75 = *(a1 + v69 + 8390160);
  v76 = *(a1 + v69 + 8390161);
  LODWORD(a52) = *(a1 + v69 + 8390162);
  v898 = *(a1 + v69 + 8390163);
  v77 = *(a1 + v69 + 8390164);
  v78 = *(a1 + v69 + 8390165);
  v79 = *(a1 + v69 + 8390166);
  v80 = *(a1 + v69 + 8390167);
  v81 = *(a1 + v69 + 8390168);
  LODWORD(a48) = *(a1 + v69 + 8390169);
  v897 = *(a1 + v69 + 8390170);
  v903 = *(a1 + v69 + 8390171);
  v82 = *(a1 + v69 + 8390173);
  v83 = *(a1 + v69 + 8390174);
  v84 = *(a1 + v69 + 8390175);
  v85 = *(a1 + v69 + 8390177);
  v86 = *(a1 + v69 + 8390178);
  HIDWORD(a47) = *(a1 + v69 + 8390149);
  v87 = *(a1 + v69 + 8390179);
  LODWORD(v855) = v69 + 658052546;
  HIDWORD(v857) = *(a1 + v69 + 8390172);
  LODWORD(v891) = (v63 - 676) | 0x131;
  LODWORD(v862) = *(a1 + v69 + 8390176);
  v88 = (v862 ^ a6) - ((2 * (v862 ^ a6)) & 0x16E);
  HIDWORD(v859) = v82;
  v89 = (v82 ^ a6) - ((2 * (v82 ^ a6)) & 0x164);
  v90 = ((((((v63 + 92) | 0x31) ^ BYTE4(v857) ^ 0x70) - ((2 * (v891 ^ HIDWORD(v857) ^ 0x70)) & 0x30)) << 16) + 1981284352) ^ 0x76180000;
  v91 = (v90 + 1194712311 - ((2 * v90) & 0xE6A0000)) ^ 0x4735DCF7 | ((((v89 << 8) - 1751928320) ^ 0x9793B200) + 1379523798 - ((2 * (((v89 << 8) - 1751928320) ^ 0x9793B200)) & 0x2473B800)) ^ 0x5239DCD6;
  v92 = v91 - 1403811402 - ((2 * v91) & 0x58A7136C);
  v856 = __PAIR64__(v81, v83);
  v93 = v92 ^ 0xAC5389B6 | ((v83 ^ a6) + 1093208645 - ((2 * (v83 ^ a6)) & 0x8A)) ^ 0x41290A45;
  v94 = v93 - ((2 * v93) & 0x35B7FB98) + 450624972;
  HIDWORD(v863) = v85;
  v95 = (v85 ^ 0xC7) - ((2 * (v85 ^ 0xC7)) & 0x52);
  LODWORD(v857) = v84;
  v96 = (v84 ^ 0xC7) - 1517705831 - ((2 * (v84 ^ 0xC7)) & 0x132);
  v97 = (((v94 << 8) ^ 0xDBFDCC00) + 985484323 - ((2 * ((v94 << 8) ^ 0xDBFDCC00)) & 0x757A9800)) ^ 0x3ABD4C23 | v96 ^ 0xA589A599;
  v98 = v97 - 220309245 - ((2 * v97) & 0xE5BCB206);
  v858 = __PAIR64__(v75, v77);
  v99 = (v77 ^ 0xC7) - ((2 * (v77 ^ 0xC7)) & 0x1A6);
  HIDWORD(v862) = v72;
  v100 = (v72 ^ 0xC7) - ((2 * (v72 ^ 0xC7)) & 0x7A);
  v860 = __PAIR64__(v76, v70);
  v101 = (v70 ^ 0xC7) - ((2 * (v70 ^ 0xC7)) & 0x1EE);
  v102 = ((((v73 ^ 0xC7) - ((2 * (v73 ^ 0xC7)) & 0x1E2)) << 8) + 1614868736) ^ 0x6040F100;
  v103 = ((((v100 << 16) + 121438208) ^ 0x73D0000) - 183099172 - ((2 * (((v100 << 16) + 121438208) ^ 0x73D0000)) & 0x6A2C0000)) ^ 0xF51620DC | (v102 + 1813945212 - ((2 * v102) & 0x583D3600)) ^ 0x6C1E9B7C;
  v104 = v103 + 253037038 - ((2 * v103) & 0x1E2A13DC);
  v861 = __PAIR64__(v73, v78);
  v105 = (v78 ^ 0xC7) - ((2 * (v78 ^ 0xC7)) & 0xB0);
  v106 = ((((v99 << 16) - 1529675776) ^ 0xA4D30000) - 346533898 - ((2 * (((v99 << 16) - 1529675776) ^ 0xA4D30000)) & 0x56B00000)) ^ 0xEB584FF6 | ((((v105 << 8) + 873420800) ^ 0x340F5800) - 240861773 - ((2 * (((v105 << 8) + 873420800) ^ 0x340F5800)) & 0x63497A00)) ^ 0xF1A4BDB3;
  v889 = v106 - 1930324462 - ((2 * v106) & 0x19E32C24);
  LODWORD(v859) = v79;
  v107 = v889 ^ 0x8CF19612 | ((v79 ^ 0xC7) + 352022596 + (~(2 * (v79 ^ 0xC7)) | 0xFFFFFF77) + 1) ^ 0x14FB7044;
  v108 = ((((v95 << 8) - 1339610880) ^ 0xB0272900) - 1041851502 - ((2 * (((v95 << 8) - 1339610880) ^ 0xB0272900)) & 0x3CD3600)) ^ 0xC1E69B92 | ((((v88 << 16) + 1085734912) ^ 0x40B70000) - 614741213 - ((2 * (((v88 << 16) + 1085734912) ^ 0x40B70000)) & 0xB6B60000)) ^ 0xDB5BCB23;
  v884 = v108 - 2031257866 - ((2 * v108) & 0xDDAEDEC);
  LODWORD(v864) = v86;
  v109 = v884 ^ 0x86ED76F6 | ((v86 ^ 0xC7) - 1792940776 - ((2 * v86) & 0x30)) ^ 0x9521E518;
  v896 = v109 - ((2 * v109) & 0xB2AA3A28) - 648733420;
  v110 = (((v107 - ((2 * v107) & 0xDE78D0)) << 8) - 281253888) ^ 0xEF3C6800;
  v111 = (v76 ^ 0xC7) - ((2 * (v76 ^ 0xC7)) & 0x1AA);
  HIDWORD(v855) = v80;
  v112 = (v110 + 1236498165 - ((2 * v110) & 0x9366EC00)) ^ 0x49B376F5 | ((v80 ^ 0xC7) + 401648178 - ((2 * (v80 ^ 0xC7)) & 0x64)) ^ 0x17F0AA32;
  HIDWORD(v891) = v71;
  v886 = (v81 ^ 0xC7) - ((2 * (v81 ^ 0xC7)) & 0xA8);
  v113 = (((v98 << 15) ^ 0x2C818000) + 1997998662 - ((2 * ((v98 << 15) ^ 0x2C818000)) & 0xEE2E0000)) ^ 0x77170A46 | (v92 >> 9) ^ 0x5629C4;
  v114 = v113 - 1363581795 - ((2 * v113) & 0x5D72C93A);
  LODWORD(v892) = v74;
  v115 = v104 ^ 0xF1509EE | ((v74 ^ 0xC7) - 17544094 - ((2 * (v74 ^ 0xC7)) & 0xC4)) ^ 0xFEF44C62;
  v116 = (((v115 - ((2 * v115) & 0xDDB98A)) << 8) + 1859962112) ^ 0x6EDCC500;
  v117 = (BYTE4(a49) ^ 0xC7) + 1999212831 - 2 * ((BYTE4(a49) ^ 0xC7) & 0x1F);
  v118 = (v116 + 607844932 + (~(2 * v116) | 0xB78A0BFF) + 1) ^ 0x243AFA44 | v117 ^ 0x7729911F;
  v119 = v118 + 908332416 - ((2 * v118) & 0x6C481BEA) + 117;
  LODWORD(v863) = v87;
  v894 = (v87 ^ 0xC7) + 1119063076 - ((2 * (v87 ^ 0xC7)) & 0x48);
  v120 = (((v896 << 8) ^ 0x551D1400) + 312824904 - ((2 * ((v896 << 8) ^ 0x551D1400)) & 0x254AA800)) ^ 0x12A55448 | v894 ^ 0x42B38C24;
  v121 = v120 - 329327108 - ((2 * v120) & 0xD8BDBBF8);
  v122 = ((((v75 ^ 0xC7) - ((2 * (v75 ^ 0xC7)) & 0x1D4)) << 16) - 840302592) ^ 0xCDEA0000;
  v123 = (v122 + 860049435 - ((2 * v122) & 0x66860000)) ^ 0x3343501B | ((((v111 << 8) - 1559571200) ^ 0xA30AD500) + 1286214894 - ((2 * (((v111 << 8) - 1559571200) ^ 0xA30AD500)) & 0x19542800)) ^ 0x4CAA14EE;
  v124 = v123 + 533290914 - ((2 * v123) & 0x3F92BF44);
  v125 = ((v98 << 14) ^ 0x9640C000) - 371044278 - ((2 * ((v98 << 14) ^ 0x9640C000)) & 0xD3C48000);
  LODWORD(v895) = v98;
  HIDWORD(v126) = v96 ^ 0x99999999;
  LODWORD(v126) = v98 ^ 0xF2DE5900;
  v904 = v126 >> 7;
  v127 = v124 ^ 0x1FC95FA2 | ((a52 ^ 0xC7) + 1502722617 - ((2 * (a52 ^ 0xC7)) & 0x72)) ^ 0x5991BA39;
  v128 = (((v127 - ((2 * v127) & 0x3394FA)) << 8) - 1714782976) ^ 0x99CA7D00;
  v129 = ((v98 << 13) ^ 0xCB206000) + 1943950988 - ((2 * ((v98 << 13) ^ 0xCB206000)) & 0xE7BC8000);
  v130 = ((((v71 ^ 0xC7) - ((2 * (v71 ^ 0xC7)) & 0x144)) << 8) + 1754178048) ^ 0x688EA200;
  v131 = (v130 - 567349866 - ((2 * v130) & 0x3C5DDA00)) ^ 0xDE2EED96 | ((((v101 << 16) - 571015168) ^ 0xDDF70000) - 275692371 - ((2 * (((v101 << 16) - 571015168) ^ 0xDDF70000)) & 0x5F220000)) ^ 0xEF9144AD;
  v132 = v131 - 67712012 - ((2 * v131) & 0x77ED97E8);
  v133 = (v898 ^ 0xC7) + 601830922 - ((2 * (v898 ^ 0xC7)) & 0x14);
  v134 = ((v128 - 2118784124 - ((2 * v128) & 0x36BD600)) ^ 0x81B5EB84 | v133 ^ 0x23DF360A) - 2027304448 - ((2 * ((v128 - 2118784124 - ((2 * v128) & 0x36BD600)) ^ 0x81B5EB84 | v133 ^ 0x23DF360A)) & 0xE539482);
  v883 = (v125 ^ 0xE9E2504A | (v92 >> 10) ^ 0x2B14E2) - 1914627725 - ((2 * (v125 ^ 0xE9E2504A | (v92 >> 10) ^ 0x2B14E2)) & 0x1BC232E6);
  v870 = v119;
  HIDWORD(v126) = v117 ^ 0x1F;
  LODWORD(v126) = v119 ^ 0x36240D80;
  v135 = ((((v893 ^ 0xC7) - ((2 * (v893 ^ 0xC7)) & 0x1BC)) << 16) + 1977483264) ^ 0x75DE0000;
  v136 = ((((BYTE4(a47) ^ 0xC7) - ((2 * (HIDWORD(a47) ^ 0xC7)) & 0xAC)) << 8) + 1319261696) ^ 0x4EA25600;
  v137 = (v136 - 1176000122 - ((2 * v136) & 0x73CF5200)) ^ 0xB9E7A986 | (v135 - 737235677 - ((2 * v135) & 0x281C0000)) ^ 0xD40EAD23;
  v138 = v137 + 1082390663 - ((2 * v137) & 0x107F10E);
  v139 = (v114 ^ 0xAEB9649D) + (((v129 ^ 0x73DE568C | (v92 >> 11) ^ 0x158A71) - 1727633632 - ((2 * (v129 ^ 0x73DE568C | (v92 >> 11) ^ 0x158A71)) & 0x320CCE40)) ^ 0x99066720);
  v140 = (((v134 + 65) << 14) ^ 0x72904000) + 59172306 - ((2 * (((v134 + 65) << 14) ^ 0x72904000)) & 0x70D8000);
  v141 = ((v94 >> 2) ^ 0x6B6FF73) + (v139 ^ 0x80D1B225) - ((2 * v139) & 0xFE5C9BB4);
  v142 = v132 ^ 0xFBF6CBF4 | ((v899 ^ 0xC7) - 874904272 - ((2 * v899) & 0x60)) ^ 0xCBDA0530;
  v143 = (((v142 - ((2 * v142) & 0x775342)) << 8) - 1146511104) ^ 0xBBA9A100;
  v144 = ((((v897 ^ 0xC7) - ((2 * (v897 ^ 0xC7)) & 0xA6)) << 8) + 225596160) ^ 0xD725300;
  v145 = ((v903 ^ 0xC7) + 985265922 - ((2 * (v903 ^ 0xC7)) & 4)) ^ 0x3AB9F702 | (v144 - 266614879 - ((2 * v144) & 0x60378E00)) ^ 0xF01BC7A1;
  v146 = v112 + 1632512228 - ((2 * v112) & 0xC29C51C8);
  v147 = ((((a48 ^ 0xC7) - ((2 * (a48 ^ 0xC7)) & 0x32)) << 16) - 1457979392) ^ 0xA9190000;
  v148 = (v147 + 1621772239 - ((2 * v147) & 0x41540000)) ^ 0x60AA47CF | ((((v886 << 24) - 738197504) ^ 0xD4000000) + 693356228 - ((2 * ((v886 << 24) - 738197504)) & 0x52000000)) ^ 0x2953C6C4;
  v149 = v148 - 1818784295 - ((2 * v148) & 0x272F1BB2);
  v150 = (((v119 << 14) ^ 0x37D4000) - 1308718791 - ((2 * ((v119 << 14) ^ 0x37D4000)) & 0x63FD0000)) ^ 0xB1FE8939 | (v104 >> 10) ^ 0x3C542;
  v151 = ((v119 >> 3) ^ 0xF93B7E41) + ((v126 >> 7) ^ 0x9FAFDFF7) + ((2 * (v126 >> 7)) & 0x3F5FBFEE) + 1615863818;
  v152 = (v151 ^ 0xBB67DAFE) + ((2 * v151) & 0x76CFB5FC) + 1150821634 + ((v150 + 1095164140 - ((2 * v150) & 0x828DC1D8)) ^ 0x4146E0EC);
  v153 = (v149 ^ 0x93978DD9 | (v145 - 269874028 - ((2 * v145) & 0x5FD41928)) ^ 0xEFEA0C94) + 35304958 - ((2 * (v149 ^ 0x93978DD9 | (v145 - 269874028 - ((2 * v145) & 0x5FD41928)) ^ 0xEFEA0C94)) & 0x4356BFC);
  v154 = (((v121 << 13) ^ 0xDBBF8000) - 1807598785 - ((2 * ((v121 << 13) ^ 0xDBBF8000)) & 0x28844000)) ^ 0x94423B3F | (v884 >> 11) ^ 0x10DDAE;
  v155 = ((2 * v152) & 0xDF6FF5EC) + (v152 ^ 0xEFB7FAF6) + ((v141 + 2133741019) ^ 0xE7EDCFDE) + ((2 * (v141 + 2133741019)) & 0xCFDB9FBC);
  v156 = v155 - ((2 * v155 + 1354000984) & 0xB80562E2) - 2074286435;
  v157 = (((v121 << 15) ^ 0x6EFE0000) - 1873732583 - ((2 * ((v121 << 15) ^ 0x6EFE0000)) & 0x20A20000)) ^ 0x90511C19 | (v884 >> 9) ^ 0x4376BB;
  v134 += 65;
  HIDWORD(v126) = v133 ^ 0xA;
  LODWORD(v126) = v134 ^ 0x8729CA00;
  v158 = v126 >> 7;
  v159 = (v143 - 198256261 - ((2 * v143) & 0xE85DB200)) ^ 0xF42ED97B | ((v900 ^ 0xC7) + 729141732 - ((2 * (v900 ^ 0xC7)) & 0x1C8)) ^ 0x2B75D1E4;
  v160 = v159 - 1477738761 - ((2 * v159) & 0x4FD6FDEE);
  v161 = (((v146 << 14) ^ 0x8A390000) - 1446963194 - ((2 * ((v146 << 14) ^ 0x8A390000)) & 0x53820000)) ^ 0xA9C11806 | (v889 >> 10) ^ 0x233C65;
  v162 = v161 - ((2 * v161) & 0xC9038230) - 461258472;
  v163 = v121;
  v164 = ((v121 << 14) ^ 0xB77F0000) + 955549205 - ((2 * ((v121 << 14) ^ 0xB77F0000)) & 0x71E90000);
  v165 = v146;
  HIDWORD(v126) = ((v80 ^ 0xC7) + 401648178 - ((2 * (v80 ^ 0xC7)) & 0x64)) ^ 0x32;
  LODWORD(v126) = v146 ^ 0x614E2880;
  v887 = v160;
  v166 = (v160 ^ 0xFBE9CF86 ^ v156) + (v160 ^ 0xA7EB7EF7) - 2067399168 - ((2 * ((v160 ^ 0xFBE9CF86 ^ v156) + (v160 ^ 0xA7EB7EF7))) & 0x98BFC9E) + 79;
  v167 = (v158 ^ 0xBDA87BDB) + ((2 * v158) & 0x7B50F7B6) + 1113031717 + (((v140 ^ 0x386E5D2 | (v124 >> 10) ^ 0x7F257) - 1979339838 - ((2 * (v140 ^ 0x386E5D2 | (v124 >> 10) ^ 0x7F257)) & 0x140B5784)) ^ 0x8A05ABC2);
  v168 = ((v126 >> 7) ^ 0x5D8DFCF7) + ((2 * (v126 >> 7)) & 0xBB1BF9EE) - 1569586422 + (v162 ^ 0x1B7E3EE7);
  v169 = v168 - ((2 * v168) & 0x26A5B3E0) + 324196848;
  HIDWORD(v126) = v166 ^ 0x5FE4F;
  LODWORD(v126) = v166 ^ 0x84C00000;
  v170 = (v126 >> 19) - ((2 * (v126 >> 19)) & 0x70B90BE0) - 1201895952;
  v868 = v134;
  v171 = ((v134 >> 3) ^ 0x10E53948) + (v167 ^ 0xEDDB67FE) + ((2 * v167) & 0xDBB6CFFC) + 304388098;
  v172 = ((v157 - 918245737 - ((2 * v157) & 0x92895D2E)) ^ 0xC944AE97) + ((v154 + 611180885 - ((2 * v154) & 0x48DBC2AA)) ^ 0x246DE155);
  HIDWORD(v126) = v166 ^ 0x1FE4F;
  LODWORD(v126) = v166 ^ 0x84C40000;
  v173 = (v126 >> 17) - ((2 * (v126 >> 17)) & 0x5616715A) - 1425327955;
  v174 = ((v172 - ((2 * v172) & 0x99F53CD6) + 1291492971) ^ (v896 >> 2) ^ 0x7AAFD92E) + (v171 ^ 0xFFF7FA3F) + ((2 * v171) & 0xFFEFF47E) + 525761;
  v175 = v174 - 1323479969 - ((2 * v174) & 0x623A98BE);
  HIDWORD(v126) = v166 ^ 0x1FE4F;
  LODWORD(v126) = v166 ^ 0x84C40000;
  v176 = v126 >> 18;
  v177 = (v883 ^ 0x8DE11973) + ((v98 >> 3) ^ 0x1E5BCB20);
  HIDWORD(v126) = v153 ^ 0x2B5FE;
  LODWORD(v126) = v149 ^ 0x93940000;
  v178 = v126 >> 18;
  v179 = v178 ^ 0xD5635FFF;
  v180 = (2 * v178) & 0xAAC6BFFE;
  v181 = (v170 ^ (v166 >> 10) ^ v173 ^ 0x13768C22) + (v169 ^ (v165 >> 3) ^ 0x1F7B1CEC);
  v182 = v138 ^ 0x4083F887 | ((v901 ^ 0xC7) + 1315182411 - ((2 * (v901 ^ 0xC7)) & 0x96)) ^ 0x4E64174B;
  v183 = ((((2 * v134) ^ 0xE539482) - 1997209368 - ((2 * ((2 * v134) ^ 0xE539482)) & 0x11EA01D0)) ^ 0x88F500E8) + (v181 ^ 0xDDDF7BF7) + ((2 * v181) & 0xBBBEF7EE) + 572556297;
  v184 = v183 + 132088448 - ((2 * v183) & 0xFBF055C) + 46;
  v185 = (((v182 - ((2 * v182) & 0xD224DC)) << 8) - 384668160) ^ 0xE9126E00;
  v186 = v153;
  HIDWORD(v126) = ((v903 ^ 0xC7) + 985265922 - ((2 * (v903 ^ 0xC7)) & 4)) ^ 2;
  LODWORD(v126) = v153 ^ 0x21AB580;
  v187 = v126 >> 7;
  HIDWORD(v126) = v166 ^ 0xFFFFFFCF;
  LODWORD(v126) = v166 ^ 0x84C5FE00;
  v188 = v126 >> 7;
  v189 = v185 + 265142006 - ((2 * v185) & 0x1F9B7C00);
  HIDWORD(v126) = v894 ^ 0x24;
  LODWORD(v126) = v163 ^ 0xEC5EDD80;
  v190 = v126 >> 7;
  HIDWORD(v126) = v175 ^ 0x54C5F;
  LODWORD(v126) = v175 ^ 0xB1180000;
  v191 = v126 >> 19;
  HIDWORD(v871) = v186;
  v192 = ((v186 >> 3) ^ 0x4356BF) + v179 + v180;
  HIDWORD(v126) = v184 ^ 0x182AE;
  LODWORD(v126) = v184 ^ 0x7DE0000;
  v193 = (v126 >> 17) - ((2 * (v126 >> 17)) & 0x264A0D6);
  HIDWORD(v126) = v175 ^ 0x14C5F;
  LODWORD(v126) = v175 ^ 0xB11C0000;
  v194 = ((v126 >> 17) ^ 0xE5EDAFF7) + (v191 ^ 0x7FAFB5FF) + ((2 * v191) & 0xFF5F6BFE) + ((2 * (v126 >> 17)) & 0xCBDB5FEE);
  v195 = ((v192 + 714907649) ^ 0xF76F5E7F) + ((2 * (v192 + 714907649)) & 0xEEDEBCFE) + 143696257 + ((v194 - ((2 * v194 + 885339156) & 0x3A17BA00) + 929986314) ^ (v175 >> 10) ^ 0x9D279A53);
  v196 = (v187 ^ 0x6EF99E7A) + ((2 * v187) & 0xDDF33CF4) + (v195 ^ 0xA8400017) - ((2 * v195) & 0xAF7FFFD0) + 1;
  LODWORD(v871) = v165 ^ 0x614E28E4;
  v197 = (v165 ^ 0xEBD2A18D ^ (v196 - ((2 * v196 + 294437596) & 0x153912D2) + 1935862487)) + (v165 ^ 0x614E28E4);
  v198 = v197 + 1541268819 - ((2 * v197) & 0xB7BBCAA6);
  v199 = ((v193 - 2127409045) ^ (v184 >> 19) ^ (((v184 << 13) ^ 0xF055C000) - ((2 * ((v184 << 13) ^ 0xF055C000)) & 0x96F3C000) + 1266286252) ^ 0xCA4BAE3C) + ((v184 >> 10) ^ 0x1F7E0);
  v200 = (v904 ^ 0xDD6FFCE7) + ((((2 * v186) ^ 0x4356BFC) + 371142053 - ((2 * ((2 * v186) ^ 0x4356BFC)) & 0x2C3E5B48)) ^ 0x161F2DA5) + ((2 * v904) & 0xBADFF9CE) + (v177 ^ 0x80200268) - ((2 * v177) & 0xFFBFFB2E) + (v199 ^ 0xAA0C2C0C) - ((2 * v199) & 0xABE7A7E6) - 127675227;
  v201 = v200 + 512501504 - ((2 * v200) & 0x3D184E4A) + 37;
  v872 = __PAIR64__(v166, v163);
  v202 = (((v164 ^ 0x38F48615 | (v884 >> 10) ^ 0x21BB5D) - 1263382799 - ((2 * (v164 ^ 0x38F48615 | (v884 >> 10) ^ 0x21BB5D)) & 0x69649DE2)) ^ 0xB4B24EF1) + ((v163 >> 3) ^ 0x1D8BDBBF);
  v203 = (v190 ^ 0xF1B7BCBA) + ((2 * v190) & 0xE36F7974) + (v202 ^ 0xC2008146) - ((2 * v202) & 0x7BFEFD72) + 1;
  HIDWORD(v126) = v198 ^ 0x5E553;
  LODWORD(v126) = v198 ^ 0x5BD80000;
  v204 = (v126 >> 19) - ((2 * (v126 >> 19)) & 0x9924134A) - 862844507;
  HIDWORD(v126) = v198 ^ 0x1E553;
  LODWORD(v126) = v198 ^ 0x5BDC0000;
  v205 = (v204 ^ ((v126 >> 17) - ((2 * (v126 >> 17)) & 0x9D8B9E70) - 825897160) ^ 0x257C69D) - ((v198 >> 10) ^ 0x16F779);
  HIDWORD(v126) = v201 ^ 0x42725;
  LODWORD(v126) = v201 ^ 0x1E880000;
  v206 = (v205 - ((2 * v205) & 0x11336434) + 144290330) ^ (v203 - ((2 * v203 + 412058622) & 0x62FC26D6) + 2110117226);
  v207 = (v126 >> 19) + 591835939 + (~(2 * (v126 >> 19)) | 0xB97299BB);
  v208 = ((v166 >> 3) ^ 0x1098BFC9) + (v188 ^ 0x3BDFF89F) + (v176 ^ 0x69FDDA6F) + ((2 * v188) & 0x77BFF13E) + ((2 * v176) & 0xD3FBB4DE) + 1512189170;
  v209 = v201 ^ 0x2725;
  v210 = v201 ^ 0x1E8C0000;
  HIDWORD(v126) = v201 ^ 0x2725;
  LODWORD(v126) = v201 ^ 0x1E8C0000;
  v211 = (v126 >> 17) - ((2 * (v126 >> 17)) & 0x1D38520);
  HIDWORD(v126) = v175 ^ 0xFFFFFFDF;
  LODWORD(v126) = v175 ^ 0xB11D4C00;
  v212 = v126 >> 7;
  v213 = v212 ^ 0xFEFB75DD;
  v214 = (2 * v212) & 0xFDF6EBBA;
  HIDWORD(v126) = v184 ^ 0x382AE;
  LODWORD(v126) = v184 ^ 0x7DC0000;
  v215 = (v126 >> 18) - ((2 * (v126 >> 18)) & 0xB699C26A);
  HIDWORD(v126) = v175 ^ 0x14C5F;
  LODWORD(v126) = v175 ^ 0xB11C0000;
  v216 = v126 >> 18;
  v217 = ((v208 - ((2 * v208) & 0x6FDF4050) + 938450984) ^ (v201 >> 10) ^ v207 ^ (v211 - 2132163952) ^ 0x94477293) + ((((2 * v163) ^ 0xD8BDBBF8) - 1745842778 - ((2 * ((2 * v163) ^ 0xD8BDBBF8)) & 0x2FE11B4C)) ^ 0x97F08DA6);
  LODWORD(v875) = v201;
  HIDWORD(v126) = v201 ^ 0x25;
  LODWORD(v126) = v201 ^ 0x1E8C2700;
  v218 = v217 + 988087652 - ((2 * v217) & 0x75CA0AC8);
  v219 = (v126 >> 7) - ((2 * (v126 >> 7)) & 0x3B1FC06C);
  v220 = v189 ^ 0xFCDBEF6 | ((v902 ^ 0xC7) - 964561110 - ((2 * (v902 ^ 0xC7)) & 0x54)) ^ 0xC681F72A;
  v890 = v220 + 1275338959 - ((2 * v220) & 0x9808419E);
  HIDWORD(v126) = v206 ^ 0x7A171;
  LODWORD(v126) = v206 ^ 0x39E00000;
  v221 = v126 >> 19;
  LODWORD(v874) = v184;
  HIDWORD(v126) = v184 ^ 0x2E;
  LODWORD(v126) = v184 ^ 0x7DF8280;
  v222 = (v126 >> 7) - ((2 * (v126 >> 7)) & 0xAD65AD9C);
  HIDWORD(v126) = v218 ^ 0x50564;
  LODWORD(v126) = v218 ^ 0x3AE00000;
  v223 = v126 >> 19;
  HIDWORD(v126) = v206 ^ 0x1A171;
  LODWORD(v126) = v206 ^ 0x39E60000;
  v224 = ((v175 >> 3) ^ 0x1623A98B) + (v216 ^ 0x3F3FFBFC) + v213 + ((2 * v216) & 0x7E7FF7F8) + v214 - 1044083161;
  v225 = ((v206 >> 10) ^ 0xFFF18617) + ((v126 >> 17) ^ 0x65D7DF77) + (v221 ^ 0xFFED3E9B) + ((2 * (v126 >> 17)) & 0xCBAFBEEE) + ((2 * v221) & 0xFFDA7D36) - 1707417105;
  v226 = v215 - 615718603;
  v227 = ((v224 - ((2 * v224) & 0xD0631966) + 1748077747) ^ 0x78A3CA2F ^ (v225 - ((2 * v225) & 0x21248D38) + 278021788)) - ((((2 * HIDWORD(v872)) ^ 0x98BFC9E) - 501352827 - ((2 * ((2 * HIDWORD(v872)) ^ 0x98BFC9E)) & 0xC43BED08)) ^ 0xE21DF685);
  v228 = v227 - 1985430077 - ((2 * v227) & 0x13517B86);
  HIDWORD(v126) = v198 ^ 0x53;
  LODWORD(v126) = v198 ^ 0x5BDDE500;
  v229 = (v126 >> 7) - ((2 * (v126 >> 7)) & 0xE824C26E);
  HIDWORD(v126) = v198 ^ 0x1E553;
  LODWORD(v126) = v198 ^ 0x5BDC0000;
  v230 = (v126 >> 18) - ((2 * (v126 >> 18)) & 0x9380842);
  HIDWORD(v126) = v206 ^ 0x3A171;
  LODWORD(v126) = v206 ^ 0x39E40000;
  v231 = v126 >> 18;
  v232 = (v226 ^ (v222 - 692922674) ^ 0xDFE37FB) + ((v184 >> 3) ^ 0xFBF055);
  v233 = (v232 ^ 0x7F7DFF3E) + ((2 * v232) & 0xFEFBFE7C) - 2138963774 + ((v218 >> 10) ^ 0xEB941);
  v873 = __PAIR64__(v198, v175);
  HIDWORD(v126) = v218 ^ 0x10564;
  LODWORD(v126) = v218 ^ 0x3AE40000;
  v234 = (v175 ^ 0xB11D4C5F) + (v223 ^ 0x57F5FDEA) + ((v126 >> 17) ^ 0x33E5FFEB) + ((2 * v223) & 0xAFEBFBD4) + ((2 * (v126 >> 17)) & 0x67CBFFD6) + 1948516907;
  v235 = (v233 ^ 0x7FEBA5FB) + ((2 * v233) & 0xFFD74BF6) + (v234 ^ 0x9E202C28) - ((2 * v234) & 0xC3BFA7AE) + 1;
  HIDWORD(v126) = v228 ^ 0xBDC3;
  LODWORD(v126) = v228 ^ 0x89A80000;
  v236 = v126 >> 17;
  HIDWORD(v126) = v228 ^ 0xBDC3;
  LODWORD(v126) = v228 ^ 0x89A80000;
  v237 = ((v126 >> 19) ^ 0xFFCFD9FF) + (v236 ^ 0xEF2F5FB3) + ((2 * v236) & 0xDE5EBF66) + ((2 * (v126 >> 19)) & 0xFF9FB3FE);
  v238 = (v235 - ((2 * v235 - 1008182344) & 0x9053F534) + 706619510) ^ v175;
  v239 = (v229 + 1947361591) ^ (v198 >> 3) ^ (v230 + 77333537) ^ (v228 >> 10) ^ (v237 - ((2 * v237 + 570526876) & 0x2EE9B2CE) - 1468686411);
  HIDWORD(v126) = v238 ^ 0x4B6C5;
  LODWORD(v126) = v238 ^ 0xF9300000;
  v240 = v126 >> 19;
  HIDWORD(v126) = v206 ^ 0xFFFFFFF1;
  LODWORD(v126) = v206 ^ 0x39E7A100;
  v241 = v126 >> 7;
  HIDWORD(v126) = v228 ^ 0xFFFFFFC3;
  LODWORD(v126) = v228 ^ 0x89A8BD80;
  v242 = (v126 >> 7) - ((2 * (v126 >> 7)) & 0x3A477C8E);
  v243 = ((v206 >> 3) ^ 0x73CF42E) + (v231 ^ 0x737F4EFC) + (v241 ^ 0xAF7A7FFE) + ((2 * v231) & 0xE6FE9DF8) + ((2 * v241) & 0x5EF4FFFC);
  LODWORD(v877) = v218;
  HIDWORD(v126) = v218 ^ 0x64;
  LODWORD(v126) = v218 ^ 0x3AE50500;
  v244 = v126 >> 7;
  HIDWORD(v126) = v238 ^ 0xB6C5;
  LODWORD(v126) = v238 ^ 0xF9340000;
  v245 = ((v238 >> 10) ^ 0x3E4D2D) + ((v126 >> 17) ^ 0xBF9FFFD3) + (v240 ^ 0x80108030) + ((2 * (v126 >> 17)) & 0x7F3FFFA6) - ((2 * v240) & 0xFFDEFF9E) - 1068531715;
  v246 = ((v875 >> 3) ^ 0x3D184E4) + (v245 ^ 0x7F5DB3F7) + ((2 * v245) & 0xFEBB67EE) - 2136847351;
  v247 = ((v219 - 1651515338) ^ ((__PAIR64__(v209, v210) >> 18) - ((2 * (__PAIR64__(v209, v210) >> 18)) & 0xE661DD62) - 214896975) ^ 0x6EBF0E87) - 539495442 + (v246 ^ 0x20280AF5) - ((2 * v246) & 0xBFAFEA14) + 285;
  v248 = (v198 ^ 0x5BDDE553) + (v247 ^ 0x9BE69996) + ((2 * v247) & 0x37CD332C) + 1679386218;
  HIDWORD(v126) = v228 ^ 0xBDC3;
  LODWORD(v126) = v228 ^ 0x89A80000;
  v249 = (v126 >> 18) - ((2 * (v126 >> 18)) & 0xEEE4646C);
  HIDWORD(v126) = v238 ^ 0xB6C5;
  LODWORD(v126) = v238 ^ 0xF9340000;
  v250 = v126 >> 18;
  v251 = v238;
  HIDWORD(v126) = v238 ^ 0x45;
  LODWORD(v126) = v238 ^ 0xF934B680;
  v252 = v126 >> 7;
  HIDWORD(v126) = v218 ^ 0x10564;
  LODWORD(v126) = v218 ^ 0x3AE40000;
  v253 = v126 >> 18;
  v254 = (v248 - ((2 * v248) & 0x6DEAFC36) - 1225425381) ^ v198;
  HIDWORD(v126) = v254 ^ 0x9B48;
  LODWORD(v126) = v254 ^ 0xED280000;
  v255 = v126 >> 17;
  HIDWORD(v126) = v239 ^ 0x16AF4;
  LODWORD(v126) = v239 ^ 0xECA20000;
  v256 = v126 >> 17;
  v257 = ((v218 >> 3) ^ 0x75CA0AC) + (v244 ^ 0x6EEEBFBD) + (v253 ^ 0xE85000C7) + ((2 * v244) & 0xDDDD7F7A) - ((2 * v253) & 0x2F5FFE70);
  HIDWORD(v126) = v254 ^ 0x9B48;
  LODWORD(v126) = v254 ^ 0xED280000;
  v258 = ((v254 >> 10) ^ 0x3B4A26) + (v255 ^ 0xDFFFFCDF) + ((v126 >> 19) ^ 0xFEFD37CC) + ((2 * v255) & 0xBFFFF9BE) + ((2 * (v126 >> 19)) & 0xFDFA6F98);
  HIDWORD(v126) = v239 ^ 0x36AF4;
  LODWORD(v126) = v239 ^ 0xECA00000;
  v259 = ((v126 >> 19) ^ 0xF7EFFA5E) + (v256 ^ 0xEFFDAEBE) + ((2 * v256) & 0xDFFB5D7C) + ((2 * (v126 >> 19)) & 0xEFDFF4BC);
  v260 = ((v243 - 586796794) ^ 0x7BD887EF) + ((2 * (v243 - 586796794)) & 0xF7B10FDE) - 2077788142 + ((v259 - ((2 * v259 + 807710152) & 0x8F48EF3A) - 541667711) ^ (v239 >> 10) ^ 0x3860A0B8);
  v261 = v260 - 1166920447 - ((2 * v260) & 0x74E46A02);
  v262 = ((2 * (v257 - 1463730308)) & 0x3B9AFFBE) + ((v257 - 1463730308) ^ 0x9DCD7FDF) + ((v258 + 553831253) ^ 0xA9DFDFEF) + ((2 * (v258 + 553831253)) & 0x53BFBFDE);
  HIDWORD(v874) = v206 ^ 0x39E7A171;
  v263 = (v206 ^ 0xF1D30DEC ^ (v262 - ((2 * v262 + 1889878116) & 0x9069593A) - 2138616625)) + (v206 ^ 0x39E7A171);
  HIDWORD(v878) = v239;
  HIDWORD(v126) = v239 ^ 0x74;
  LODWORD(v126) = v239 ^ 0xECA36A80;
  v264 = v126 >> 7;
  HIDWORD(v126) = v254 ^ 0x9B48;
  LODWORD(v126) = v254 ^ 0xED280000;
  v265 = v126 >> 18;
  HIDWORD(v126) = v261 ^ 0x3501;
  LODWORD(v126) = v261 ^ 0xBA720000;
  v266 = v126 >> 17;
  HIDWORD(v126) = v261 ^ 0x23501;
  LODWORD(v126) = v261 ^ 0xBA700000;
  v267 = (v266 ^ 0xCFFF7E7F) + ((v126 >> 19) ^ 0xE7EFFF97) + ((2 * (v126 >> 19)) & 0xCFDFFF2E) + ((2 * v266) & 0x9FFEFCFE);
  v268 = v267 - ((2 * v267 - 1876884524) & 0xFFCCB03A);
  v269 = v263 + 1924419200 - ((2 * v263) & 0xE5689DA8) + 84;
  HIDWORD(v126) = v269 ^ 0x44ED4;
  LODWORD(v126) = v269 ^ 0x72B00000;
  v270 = v126 >> 19;
  v271 = v269 ^ 0x4ED4;
  v272 = v269 ^ 0x72B40000;
  v273 = v269;
  HIDWORD(v126) = v269 ^ 0x4ED4;
  LODWORD(v126) = v269 ^ 0x72B40000;
  v274 = v126 >> 17;
  v275 = (v250 ^ 0x29924684) + (v252 ^ 0xCFB7A9FD) + ((2 * v252) & 0x9F6F53FA) - ((2 * v250) & 0xACDB72F6);
  HIDWORD(v126) = v239 ^ 0x36AF4;
  LODWORD(v126) = v239 ^ 0xECA00000;
  v276 = v126 >> 18;
  v277 = v275 + 1 - ((2 * (v275 + 1) + 225189628) & 0x9676539E);
  HIDWORD(v875) = v228;
  v278 = ((v268 - 940123641) ^ (v261 >> 10) ^ 0x7FC8C490) + ((v228 >> 3) ^ 0x113517B8);
  v279 = ((v249 - 143510986) ^ (v242 + 488881735) ^ 0xEA518C71) + (v278 ^ 0x140E0) - ((2 * v278) & 0xFFFD7E3E) - 82144;
  v280 = v279 + 1527748608 - ((2 * v279) & 0xB61F3072);
  v281 = v254;
  HIDWORD(v126) = v254 ^ 0x48;
  LODWORD(v126) = v254 ^ 0xED289B00;
  v282 = v126 >> 7;
  HIDWORD(v126) = v261 ^ 0x23501;
  LODWORD(v126) = v261 ^ 0xBA700000;
  v283 = (v126 >> 18) - ((2 * (v126 >> 18)) & 0xC96ACB30);
  v284 = (v276 ^ 0xA300302) + (v264 ^ 0x77FA77FB) + ((2 * v264) & 0xEFF4EFF6) - ((2 * v276) & 0xEB9FF9FA) + 1;
  v285 = ((2 * v274) & 0x77ABDEEE) - ((2 * v270) & 0x175FF5FE) + (v270 ^ 0x74500500) + (v274 ^ 0x3BD5EF77) + 1;
  HIDWORD(v126) = a57 ^ 0x24;
  LODWORD(v126) = a57 ^ 0x7846E5C0;
  v286 = v126 >> 6;
  v287 = v280 + 57;
  HIDWORD(v126) = (v280 + 57) ^ 0x79839;
  LODWORD(v126) = (v280 + 57) ^ 0x5B080000;
  v288 = v126 >> 19;
  HIDWORD(v126) = v261 ^ 1;
  LODWORD(v126) = v261 ^ 0xBA723500;
  v289 = (v126 >> 7) - ((2 * (v126 >> 7)) & 0x23CAD5B6);
  v290 = ((v277 + 1374763341) ^ (v251 >> 3) ^ 0x541DBF17) + (HIDWORD(v875) ^ 0x89A8BDC3);
  v291 = (v290 ^ 0xEFFBEFF9) + ((2 * v290) & 0xDFF7DFF2) + 268701703 + ((v285 - 2 * ((v285 + 1339689864) & 0x7339DB1B ^ (v270 + (v274 ^ 0x77) + 1) & 1) - 1022105950) ^ (v273 >> 10) ^ 0x73257609);
  HIDWORD(v126) = v287 ^ 0x19839;
  LODWORD(v126) = v287 ^ 0x5B0E0000;
  v292 = ((v287 >> 10) ^ 0x16C3E6) + (v288 ^ 0x6F8CD3DD) + ((v126 >> 17) ^ 0xFD7FFBB2) + ((2 * v288) & 0xDF19A7BA) + ((2 * (v126 >> 17)) & 0xFAFFF764) - 1829556111;
  v293 = ((v284 - ((2 * v284 - 72676860) & 0xE72C230E) - 244607351) ^ (v239 >> 3) ^ 0x6E027CD9) + (v292 ^ 0x4000002) - ((2 * v292) & 0xF7FFFFFA) - 67108866;
  HIDWORD(v876) = v251;
  v294 = (v251 ^ 0x993E23A7 ^ (v293 - ((2 * v293) & 0xC0152AC4) + 1611306338)) + (v251 ^ 0xF934B6C5);
  v295 = v294 + 2018656896 - ((2 * v294) & 0xF0A48530);
  v296 = (HIDWORD(v875) ^ 0x89A8BDC3) + (v291 ^ 0x7FCFFC7D) + ((2 * v291) & 0xFF9FF8FA) - 2144337021;
  v297 = v296 + 1980660056 - ((2 * v296) & 0xEC1CF2B0);
  v298 = v273;
  LODWORD(v880) = v273;
  HIDWORD(v126) = v273 ^ 0x54;
  LODWORD(v126) = v273 ^ 0x72B44E80;
  v299 = v126 >> 7;
  HIDWORD(v126) = v297 ^ 0x7958;
  LODWORD(v126) = v297 ^ 0x760E0000;
  v300 = __PAIR64__(v271, v272) >> 18;
  v301 = (v126 >> 17) - ((2 * (v126 >> 17)) & 0x6E0F1A9C);
  HIDWORD(v126) = v297 ^ 0x67958;
  LODWORD(v126) = v297 ^ 0x76080000;
  v302 = ((v281 >> 3) ^ 0x1DA51369) + (v265 ^ 0x77EFEF7B) + ((2 * v265) & 0xEFDFDEF6) - 2012213115;
  v303 = (v302 ^ 0x5F6CBFBF) + ((2 * v302) & 0xBED97F7E) - 1600962495 + (((v126 >> 19) - ((2 * (v126 >> 19)) & 0x43CFF70E) + 568851335) ^ (v297 >> 10) ^ (v301 - 1224241842) ^ 0x96FDF557);
  v304 = (v282 ^ 0x76DD7FAB) + ((2 * v282) & 0xEDBAFF56) + (v303 ^ 0x1050D40) - ((2 * v303) & 0xFDF5E57E) + 1;
  v305 = v304 - ((2 * v304 + 272295464) & 0x82A161A4);
  HIDWORD(v126) = a57 ^ 0x46E5E4;
  LODWORD(v126) = a57 ^ 0x78000000;
  v306 = v126 >> 25;
  HIDWORD(v126) = v287 ^ 0x39839;
  LODWORD(v126) = v287 ^ 0x5B0C0000;
  v307 = (v126 >> 18) + 1527341852 + (~(2 * (v126 >> 18)) | 0x49ED39C9);
  HIDWORD(v126) = a57 ^ 0x5E4;
  LODWORD(v126) = a57 ^ 0x7846E000;
  v308 = (v306 ^ 0x8D800000) + ((v126 >> 11) ^ 0x98080103) + (v286 ^ 0x6DBB3777) + ((2 * v286) & 0xDB766EEE) - ((2 * v306) & 0xE4FFFFFE) - ((2 * (v126 >> 11)) & 0xCFEFFDF8);
  HIDWORD(v126) = (v295 + 24) ^ 0x4298;
  LODWORD(v126) = (v295 + 24) ^ 0x78520000;
  v309 = v126 >> 17;
  HIDWORD(v895) = v287;
  HIDWORD(v126) = v287 ^ 0x39;
  LODWORD(v126) = v287 ^ 0x5B0F9800;
  v310 = v126 >> 7;
  HIDWORD(v126) = v297 ^ 0x58;
  LODWORD(v126) = v297 ^ 0x760E7900;
  v879 = v126 >> 7;
  HIDWORD(v126) = (v295 + 24) ^ 0x24298;
  LODWORD(v126) = (v295 + 24) ^ 0x78500000;
  v881 = v126 >> 18;
  v311 = ((v283 - 457874024) ^ (v289 - 1847235877) ^ 0x75500F43) + ((v261 >> 3) ^ 0x174E46A0);
  v312 = (((v295 + 24) >> 10) ^ 0x1E1490) + (v309 ^ 0xF58D7DC9) + ((v126 >> 19) ^ 0x2C000515) + ((2 * v309) & 0xEB1AFB92) - ((2 * (v126 >> 19)) & 0xA7FFF5D4) - 562922206;
  v313 = ((2 * v311) & 0x7BB363E6) + (v311 ^ 0x3DD9B1F3) + (v312 ^ 0x5FAFFFF7);
  HIDWORD(v877) = v281;
  v314 = (v281 ^ 0xF3974012 ^ (v313 + ((2 * v312) & 0xBF5FFFEE) - 2 * ((v313 + ((2 * v312) & 0xBF5FFFEE) + 41307670) & 0x1EBFDB5B ^ v313 & 1) - 2127156880)) + (v281 ^ 0xED289B48);
  v315 = v314 - 1962603851 - ((2 * v314) & 0x160A156A);
  v316 = (v300 ^ 0x894C6840) + (v299 ^ 0xFFFF4D5E) + ((2 * v299) & 0xFFFE9ABC) - ((2 * v300) & 0xED672F7E) + 1;
  v317 = v316 - ((2 * v316 - 311913278) & 0xA36BDF3A);
  HIDWORD(v126) = a57 ^ 0x6E5E4;
  LODWORD(v126) = a57 ^ 0x78787878;
  v318 = v126 >> 22;
  HIDWORD(v126) = v315 ^ 0x50AB5;
  LODWORD(v126) = v315 ^ 0x8B000000;
  v319 = (v126 >> 19) + 36051407 + (~(2 * (v126 >> 19)) | 0xFBB3CC63);
  HIDWORD(v126) = a57 ^ 0x5E4;
  LODWORD(v126) = a57 ^ 0x7846E000;
  v320 = v126 >> 13;
  LODWORD(v885) = a58 ^ 0xF4D45EB;
  v321 = (v307 ^ 0x38141DB2 ^ (v310 - ((2 * v310) & 0xC63AFD52) + 1662877353)) + ((v287 >> 3) ^ 0xB61F307);
  v905 = v305 + 1231954918;
  v865 = (v305 + 1231954918) ^ 0xB0D2;
  v322 = (v305 + 1231954918) ^ 0xC1500000;
  v323 = v321 - ((2 * v321) & 0x6F942256);
  v324 = (((v305 + 1231954918) >> 10) ^ 0x30542C) + ((__PAIR64__(v865, v322) >> 17) ^ 0xFEF235FE) + ((__PAIR64__(v865, v322) >> 19) ^ 0xA2326110) + ((2 * (__PAIR64__(v865, v322) >> 17)) & 0xFDE46BFC) - ((2 * (__PAIR64__(v865, v322) >> 19)) & 0xBB9B3DDE);
  v325 = ((v317 - 932562434) ^ (v298 >> 3) ^ 0x5FE36647) + ((v324 + 1591437554) ^ 0xFD7E6DDF) + ((2 * (v324 + 1591437554)) & 0xFAFCDBBE) + 42045985;
  v326 = (a60 ^ ((a57 ^ 0x7846E5E4) + (a63 ^ a57 ^ 0x97327946) - ((2 * ((a57 ^ 0x7846E5E4) + (a63 ^ a57 ^ 0x97327946))) & 0xBFE78E1E) + 1609811727) ^ 0x924AD729 ^ (v308 + 2 - ((2 * (v308 + 2) + 427396872) & 0x14BB30CE) - 149266453)) + 694531638;
  v327 = (v326 ^ 0x7F6DA3FF) + ((2 * v326) & 0xFEDB47FE) - 2137891839 + (v890 ^ 0x4C0420CF);
  HIDWORD(v126) = a57;
  LODWORD(v126) = a57 ^ 0x7846E5E4;
  v328 = (((a57 ^ 0x7846E5E4) + (a63 ^ 0xEF749CA2)) ^ 0x98B40040) + (v318 ^ 0xEDE1F2DF) + ((v126 >> 2) ^ 0xFD7BEFFF) + (v320 ^ 0x80104211) + ((2 * v318) & 0xDBC3E5BE) + ((2 * (v126 >> 2)) & 0xFAF7DFFE) - ((2 * ((a57 ^ 0x7846E5E4) + (a63 ^ 0xEF749CA2))) & 0xCE97FF7E) - ((2 * v320) & 0xFFDF7BDC);
  v329 = (a58 ^ a57 ^ 0x770BA00F) + (((a63 ^ 0xEF749CA2) + (a58 ^ 0xF4D45EB)) ^ 0x6FEFFEFE) + ((2 * ((a63 ^ 0xEF749CA2) + (a58 ^ 0xF4D45EB))) & 0xDFDFFDFC) - 1877999358;
  v330 = v328 + (v329 ^ 0xBF57DBEF) + ((2 * v329) & 0x7EAFB7DE) + (v327 ^ 0xFC7FC1F) + ((2 * v327) & 0x1F8FF83E);
  v866 = v315 ^ 0x10AB5;
  v331 = v315 ^ 0x8B040000;
  HIDWORD(v126) = v315 ^ 0x10AB5;
  LODWORD(v126) = v315 ^ 0x8B040000;
  v332 = (v126 >> 17) - ((2 * (v126 >> 17)) & 0x1A4FD5EE);
  LODWORD(v876) = v261 ^ 0xBA723501;
  v333 = (v261 ^ 0xFEAA19A9 ^ (v325 - ((2 * v325) & 0x89B05950) + 1155017896)) - (v261 ^ 0xBA723501);
  HIDWORD(v126) = v297 ^ 0x27958;
  LODWORD(v126) = v297 ^ 0x760C0000;
  v334 = v126 >> 18;
  v335 = v330 + 1980179675;
  v336 = v330 + 1980179675 - ((2 * v330 + 1501300102) & 0x92924428) - 4;
  v337 = (v336 << 21) ^ 0x42800000;
  v338 = ((v337 - ((2 * v337) & 0xBD000000) - 560846912) & 0xF8000000 | (v336 >> 11)) ^ 0xD8092924;
  v339 = (v319 ^ 0xF01F339 ^ (v332 + 220719863)) - ((v315 >> 10) ^ 0x22C142);
  HIDWORD(v893) = v295 + 24;
  HIDWORD(v126) = (v295 + 24) ^ 0x18;
  LODWORD(v126) = (v295 + 24) ^ 0x78524280;
  v340 = v126 >> 7;
  HIDWORD(v126) = (v336 >> 11) ^ 0x12924;
  LODWORD(v126) = (v338 - ((2 * v338) & 0x60217F36) + 896581531) ^ 0x35700000;
  v341 = (v126 >> 19) - 1231811328 - ((2 * (v126 >> 19)) & 0x6D281ABC);
  v342 = (v339 - ((2 * v339) & 0x3029CC6) + 25251427) ^ (v323 + 935989547);
  v343 = v333 - ((2 * v333) & 0xF8305E80) - 65523904;
  HIDWORD(v126) = v343 ^ 0x2F40;
  LODWORD(v126) = v343 ^ 0xFC180000;
  v344 = (v126 >> 19) - ((2 * (v126 >> 19)) & 0x6A43F2A);
  HIDWORD(v126) = (v341 + 94) ^ 0x5E;
  LODWORD(v126) = (v341 + 94) ^ 0xB6940D00;
  v345 = (v126 >> 8) + 379479204 - ((2 * (v126 >> 8)) & 0x2D3CC948);
  HIDWORD(v126) = v336 ^ 0x1492214;
  LODWORD(v126) = v336 ^ 0x48000000;
  v346 = v126 >> 25;
  HIDWORD(v126) = v336 ^ 0x92214;
  LODWORD(v126) = v336 ^ 0x49400000;
  v347 = v126 >> 22;
  HIDWORD(v126) = v343 ^ 0x2F40;
  LODWORD(v126) = v343 ^ 0xFC180000;
  v348 = (v337 - 551031319 - ((2 * v337) & 0xBE400000)) ^ 0xDF27EDE9 | (v336 >> 11) ^ 0x92924;
  v349 = v348 - ((2 * v348) & 0x2A1F726E);
  v350 = (((v126 >> 17) - ((2 * (v126 >> 17)) & 0xC955CA) + 6597349) ^ (v344 + 55713685) ^ 0x336B570) + ((v343 >> 10) ^ 0x3F060B);
  HIDWORD(v126) = v342 ^ 0x15F48;
  LODWORD(v126) = v342 ^ 0x364A0000;
  v351 = (v126 >> 17) - ((2 * (v126 >> 17)) & 0xCF5AA12);
  v352 = v345 ^ 0x169E64A4 | (260910109 - ((v335 & 3) << 27) + ((v336 << 26) ^ 0x50000000)) ^ 0xF8D2C1D;
  v882 = __PAIR64__(v343, v342);
  HIDWORD(v126) = v342 ^ 0x35F48;
  LODWORD(v126) = v342 ^ 0x36480000;
  v353 = (v126 >> 19) - ((2 * (v126 >> 19)) & 0x7017001E);
  HIDWORD(v126) = v336 ^ 0x214;
  LODWORD(v126) = v336 ^ 0x49492000;
  v354 = v126 >> 13;
  v355 = v287;
  v356 = (v287 ^ 0xA4F067C6) - 2147474750 + (v350 ^ 0x7FFFDD3F) + ((2 * v350) & 0xFFFFBA7E);
  v357 = ((v297 >> 3) ^ 0xEC1CF2B) + (v334 ^ 0xF5AF2D3B) + ((2 * v334) & 0xEB5E5A76) + 173068997;
  v358 = (v879 ^ 0xDFFBBEFE) + ((2 * v879) & 0xBFF77DFC) + (v357 ^ 0xD116818) - ((2 * v357) & 0xE5DD2FCE) + (v356 ^ 0xFEAEB6FE) + ((2 * v356) & 0xFD5D6DFC) + 1;
  v359 = v358 - ((2 * v358 + 680018902) & 0x2AF61A82);
  LODWORD(v888) = a63 ^ 0xEF749CA2;
  v360 = ((2 * ((v336 ^ 0x49492214) + (a57 ^ 0x7846E5E4))) & 0x97DFF7DC) + (((v336 ^ 0x49492214) + (a57 ^ 0x7846E5E4)) ^ 0xCBEFFBEE) + 873464850;
  v361 = ((v336 ^ 0x49492214) - (a63 ^ 0xEF749CA2) + 1885214673 - ((2 * ((v336 ^ 0x49492214) - (a63 ^ 0xEF749CA2))) & 0xE0BC2FA2)) ^ 0x705E17D1 ^ v360;
  v362 = (a58 ^ 0xF4D45EB) + (v346 ^ 0x6FEC7DCC) + ((2 * v346) & 0xDFD8FB98) - 1877769676;
  v363 = ((v349 - 1794131657) ^ 0xD7A00CBB ^ (v352 + 1118811533 + (~(2 * v352) | 0x7AA094E7))) + (a63 ^ 0xDEB49BAD ^ (v361 - ((2 * v361) & 0x63800E1E) + 834668303));
  v364 = (v362 ^ 0xEFFDF272) + ((2 * v362) & 0xDFFBE4E4) + (v363 ^ 0x16100201);
  HIDWORD(v867) = v315;
  HIDWORD(v126) = v315 ^ 0x35;
  LODWORD(v126) = v315 ^ 0x8B050A80;
  HIDWORD(v888) = v126 >> 7;
  v365 = ((v351 + 108713225) ^ (v353 + 940277775) ^ 0x3E715506) + ((v342 >> 10) ^ 0xD92D7);
  v366 = v295 + 24;
  v367 = (((v295 + 24) >> 3) ^ 0xF0A4853) + (v365 ^ 0xE766FFFA) + ((2 * v365) & 0xCECDFFF4) + 412680198;
  v368 = (v340 ^ 0xF78EBEEB) + (v881 ^ 0xFFDFF5FB) + ((2 * v340) & 0xEF1D7DD6) + ((2 * v881) & 0xFFBFEBF6) + (v367 ^ 0x42220014) - ((2 * v367) & 0x7BBBFFD6) + 1;
  v369 = v887 ^ 0x65FE55E5 ^ (v364 + 1 - ((2 * v363) & 0xD3DFFBFC) - 2 * ((v364 + 1 - ((2 * v363) & 0xD3DFFBFC) + 2040821898) & 0x42152B13 ^ (v364 + 1) & 1) + 1002021788);
  HIDWORD(v126) = v335;
  LODWORD(v126) = v336 ^ 0x49492214;
  v370 = (a57 ^ 0x310FC7F0 ^ v336) + (((v336 ^ 0x49492214) + (a63 ^ 0xEF749CA2)) ^ 0xA185D04C) - ((2 * ((v336 ^ 0x49492214) + (a63 ^ 0xEF749CA2))) & 0xBCF45F66) + 1585065908;
  v371 = (((a63 ^ 0xEF749CA2) - (a57 ^ 0x7846E5E4)) ^ 0x77F3D7DF) + ((2 * ((a63 ^ 0xEF749CA2) - (a57 ^ 0x7846E5E4))) & 0xEFE7AFBE) + (v347 ^ 0xCC4C2004) + (v354 ^ 0x6BFCFF77) + ((v126 >> 2) ^ 0x6FCB73E6) + ((2 * v354) & 0xD7F9FEEE) + ((2 * (v126 >> 2)) & 0xDF96E7CC) - ((2 * v347) & 0x6767BFF6) + (v370 ^ 0x75EE57FE) + ((2 * v370) & 0xEBDCAFFC) + 1778990274 + v369;
  v372 = ((2 * v371) & 0xE6F7F3F2) + (v371 ^ 0x737BF9F9);
  HIDWORD(v885) = __PAIR64__(v866, v331) >> 18;
  v373 = v297 ^ 0x5684DF68 ^ (v368 - ((2 * v368 + 215913994) & 0x41154C60) - 419827403);
  HIDWORD(v126) = v905 ^ 0x52;
  LODWORD(v126) = v905 ^ 0xC150B080;
  LODWORD(v878) = v297 ^ 0x760E7958;
  v374 = v373 - (v297 ^ 0x760E7958) - ((2 * (v373 - (v297 ^ 0x760E7958))) & 0x9346EC60);
  LODWORD(v867) = (v126 >> 7) - ((2 * (v126 >> 7)) & 0x5C113BCC);
  v375 = ((2 * (v372 - 1937504761 + (v336 ^ 0x49492214))) & 0x7F7DEF7E) + ((v372 - 1937504761 + (v336 ^ 0x49492214)) ^ 0xBFBEF7BF);
  v376 = v375 + 1078003777 + (((a57 ^ 0x7846E5E4 ^ (v372 - 1937504761)) + 63820507 - ((2 * (a57 ^ 0x7846E5E4 ^ (v372 - 1937504761))) & 0x79BA5B6)) ^ 0x3CDD2DB);
  HIDWORD(v864) = (__PAIR64__(v865, v322) >> 18) - ((2 * (__PAIR64__(v865, v322) >> 18)) & 0xC7C10884);
  HIDWORD(v126) = v372 + 7;
  LODWORD(v126) = v372 - 1937504761;
  v377 = (v126 >> 6) - ((2 * (v126 >> 6)) & 0xC7612246);
  HIDWORD(v126) = v372 + 1543;
  LODWORD(v126) = v372 - 1937504761;
  v378 = ((v126 >> 11) - ((2 * (v126 >> 11)) & 0x921BD154) - 921835350) ^ (v377 + 1672515875);
  HIDWORD(v126) = v372 + 8652295;
  LODWORD(v126) = v372 - 1937504761;
  v379 = ((v126 >> 25) ^ 0xBF6F717D) + ((2 * (v126 >> 25)) & 0x7EDEE2FA) + 1083215491 + (v378 ^ 0xAABD7989);
  v380 = (a57 ^ 0x7846E5E4) + (v376 ^ 0xFFFFFFEE) + ((2 * v376) & 0xFFFFFFDC);
  v381 = v360 + ((v372 - 1937504761 + (a57 ^ 0x7846E5E4) - ((2 * (v372 - 1937504761 + (a57 ^ 0x7846E5E4))) & 0xF6F2FF66) + 2071560115) ^ (v372 + (v336 ^ 0xB6B6DDEB) - ((2 * (v372 + (v336 ^ 0xB6B6DDEB)) + 419957776) & 0xFF2B4A60) + 203008824) ^ 0xFB13257C);
  v382 = (v359 + 700395308) ^ v355;
  HIDWORD(v126) = v382 ^ 0x49578;
  LODWORD(v126) = v382 ^ 0x4E700000;
  v383 = (v126 >> 19) - ((2 * (v126 >> 19)) & 0xB8734A0E);
  v384 = ((v380 + 18) ^ 0x54FF9DFF) + ((2 * (v380 + 18)) & 0xA9FF3BFE) - 1426038271 + (a63 ^ 0x7D00A11D ^ (v379 - 1837875776 + ~((2 * v379) & 0x24E87B7E)));
  HIDWORD(v880) = v382;
  HIDWORD(v126) = v382 ^ 0x9578;
  LODWORD(v126) = v382 ^ 0x4E740000;
  v385 = (v126 >> 17) - ((2 * (v126 >> 17)) & 0x2765FB1A);
  HIDWORD(v126) = v372 + 263687;
  LODWORD(v126) = v372 - 1937504761;
  v386 = v126 >> 22;
  HIDWORD(v126) = v372 - 1;
  LODWORD(v126) = v372 - 1937504761;
  v387 = v126 >> 2;
  HIDWORD(v126) = v372 + 1543;
  LODWORD(v126) = v372 - 1937504761;
  v388 = (v386 ^ 0x8D090805) + (v387 ^ 0x76B675FE) + ((v126 >> 13) ^ 0x35FDEFF7) + ((2 * v387) & 0xED6CEBFC) + ((2 * (v126 >> 13)) & 0x6BFBDFEE) - ((2 * v386) & 0xE5EDEFF4) + ((v381 + 1) ^ 0xFF26EFD6) + ((2 * (v381 + 1)) & 0xFE4DDFAC) - 954490320 + (v870 ^ 0xE1482A63 ^ (((2 * v384) & 0x39EDFADE) + (v384 ^ 0x9CF6FD6F) - ((2 * (((2 * v384) & 0x39EDFADE) + (v384 ^ 0x9CF6FD6F)) - 961566546) & 0xAED84F2C) + 985922541));
  v389 = v388 + 162955264 - ((2 * v388) & 0x136D0A2E);
  HIDWORD(v869) = v374 + 1235449392;
  HIDWORD(v126) = (v374 + 1235449392) ^ 0x37630;
  LODWORD(v126) = (v374 + 1235449392) ^ 0x49A00000;
  v390 = v126 >> 19;
  HIDWORD(v126) = (v374 + 1235449392) ^ 0x17630;
  LODWORD(v126) = (v374 + 1235449392) ^ 0x49A20000;
  v391 = v126 >> 17;
  v392 = v389 + 1303;
  v393 = ((2 * ((v392 ^ 0x9B68517) - v372 + 1937504761)) & 0xF779DBF6) + (((v392 ^ 0x9B68517) - v372 + 1937504761) ^ 0x7BBCEDFB);
  HIDWORD(v126) = (v389 + 1303) ^ 0x368517;
  LODWORD(v126) = (v389 + 1303) ^ 0x9800000;
  v394 = v126 >> 22;
  HIDWORD(v126) = (v389 + 1303) ^ 0x517;
  LODWORD(v126) = (v389 + 1303) ^ 0x9B68000;
  v395 = (v126 >> 13) - ((2 * (v126 >> 13)) & 0x84055E1A);
  v396 = (v126 >> 11) - ((2 * (v126 >> 11)) & 0x3BB705F8);
  v397 = ((((2 * v392) ^ 0x136D0A2E) + 2112937578 - 2 * (((2 * v392) ^ 0x136D0A2E) & 0x7DF0DE7A ^ (2 * v392) & 0x10)) ^ 0x7DF0DE6A) + v372 - 1937504761;
  v398 = ((((2 * v336) ^ 0x92924428) + 601495202 - 2 * (((2 * v336) ^ 0x92924428) & 0x23DA16B2 ^ (2 * v336) & 0x10)) ^ 0x23DA16A2) + (v397 ^ 0xD832215C) - ((2 * v397) & 0x4F9BBD46);
  HIDWORD(v126) = -1332 - v389;
  LODWORD(v126) = (v389 + 1303) ^ 0x9B68514;
  v399 = (v126 >> 2) - ((2 * (v126 >> 2)) & 0x89620ACE);
  HIDWORD(v126) = v392 ^ 0x1B68517;
  LODWORD(v126) = v392 ^ 0x8000000;
  v400 = (v126 >> 25) - ((2 * (v126 >> 25)) & 0xFD02DACC);
  v401 = (v394 ^ 0x88036685) - ((2 * v394) & 0xEFF932F4) + 2013043067 + ((v399 + 1152451943) ^ (v395 - 1040011507) ^ 0x86B3AA6A);
  HIDWORD(v126) = v392 ^ 0x17;
  LODWORD(v126) = v392 ^ 0x9B68500;
  v402 = ((v392 ^ 0x9B68517) + (v336 ^ 0x49492214) + 1743843694 - ((2 * ((v392 ^ 0x9B68517) + (v336 ^ 0x49492214))) & 0xCFE1E2DC)) ^ 0x67F0F16E ^ (v393 - 2075979259);
  v403 = ((v402 - 1087231352 - ((2 * v402) & 0x7E645510)) ^ 0xBF322A88) - v375;
  v404 = (a57 ^ 0x7846E5E4) - ((v396 - 1646558468) ^ ((v126 >> 6) - ((2 * (v126 >> 6)) & 0x1EB12608) - 1890020604) ^ (v400 + 2122411366) ^ 0x6C027C9E);
  v405 = ((2 * v404) & 0xF7B7D33E) + (v404 ^ 0x7BDBE99F) + ((v398 + 667803300) ^ 0x66B5B5DB) + ((2 * (v398 + 667803300)) & 0xCD6B6BB6);
  v406 = (v868 ^ 0xFA7F53B0 ^ (v405 - ((2 * v405 - 1499204828) & 0xFAAD33E2) - 794258557)) + ((v401 - ((2 * v401) & 0x6D05F8D6) - 1232929685) ^ 0x8CF3722E ^ (v403 - ((2 * v403 + 2138959742) & 0x74E31C8A) - 97483260));
  v407 = v406 + 1632199571 - ((2 * v406) & 0xC292C726);
  HIDWORD(v126) = -25 - v407;
  LODWORD(v126) = v407 ^ 0x61496390;
  v408 = v126 >> 2;
  HIDWORD(v126) = v407 ^ 0x13;
  LODWORD(v126) = v407 ^ 0x61496380;
  v409 = v126 >> 6;
  HIDWORD(v126) = v407 ^ 0x96393;
  LODWORD(v126) = v407 ^ 0x61400000;
  v410 = v126 >> 22;
  v411 = (v390 ^ 0x272400A8) + (v391 ^ 0x75F6FBDF) + ((2 * v391) & 0xEBEDF7BE) - ((2 * v390) & 0xB1B7FEAE) + 1;
  LODWORD(v869) = v411 - ((2 * v411 + 97126128) & 0x126F09C4);
  v412 = (((v407 ^ 0x61496393) - (v392 ^ 0x9B68517)) ^ 0xFB3FFB3D) + 79692995 + ((2 * ((v407 ^ 0x61496393) - (v392 ^ 0x9B68517))) & 0xF67FF67A);
  v413 = ((v372 - 1937504761 + (v407 ^ 0x9EB69C6C) + 1) ^ 0x7FFDFF9F) - v372 + (((v407 ^ 0x61496393) + (v392 ^ 0x9B68517)) ^ 0x5FBBFDFF) + ((2 * (v372 - 1937504761 + (v407 ^ 0x9EB69C6C) + 1)) & 0xFFFBFF3E) + ((2 * ((v407 ^ 0x61496393) + (v392 ^ 0x9B68517))) & 0xBF77FBFE);
  HIDWORD(v126) = v407 ^ 0x1496393;
  LODWORD(v126) = v407 ^ 0x60000000;
  v414 = v126 >> 25;
  HIDWORD(v126) = v407 ^ 0x393;
  LODWORD(v126) = v407 ^ 0x61496000;
  v415 = v126 >> 13;
  HIDWORD(v126) = v407 ^ 0x393;
  LODWORD(v126) = v407 ^ 0x61496000;
  v416 = (v414 ^ 0xFFFFF7FF) + ((2 * v414) & 0xFFFFEFFF) + ((v409 - ((2 * v409) & 0xB8BD249C) + 1549701710) ^ ((v126 >> 11) - ((2 * (v126 >> 11)) & 0x9C5857CE) + 1311517671) ^ 0xED8D4656) + 2050;
  v417 = (v336 ^ 0x49492214) + (v416 ^ 0x7DBF577B) + ((2 * v416) & 0xFB7EAEF6) - 2109691771;
  v418 = ((v413 - ((2 * v413 + 126089398) & 0xB45C07C) - 1721443175) ^ 0xACEAA03D ^ (v417 - ((2 * v417) & 0x52908006) - 1454882813)) + 672521749;
  v419 = (((v407 ^ 0x61496393 ^ (v372 - 1937504761)) + 893693969 - ((2 * (v407 ^ 0x61496393 ^ (v372 - 1937504761))) & 0x6A896022)) ^ 0x3544B011) + v412;
  v420 = v871 + (v418 ^ 0x7FFFB0FF) + ((2 * v418) & 0xFFFF61FE) - 2147463423;
  v421 = (v415 ^ 0x8A204051) - v393 + (v408 ^ 0x25BF63FD) + (v410 ^ 0xFFFF76E9) + ((2 * v408) & 0x4B7EC7FA) + ((2 * v410) & 0xFFFEEDD2) - ((2 * v415) & 0xEBBF7F5C) + (v419 ^ 0x1118638) - ((2 * v419) & 0xFDDCF38E) + (v420 ^ 0x3B8F6F7D) + ((2 * v420) & 0x771EDEFA);
  v422 = (2 * v421 + 511293982) & 0x48EB9FAC;
  v421 += 867347685;
  v423 = v421 - v422;
  v424 = (v421 - v422) ^ 0xA475CFD6;
  v425 = ((2 * (v424 + (v407 ^ 0x61496393))) & 0xBEFFDFDE) + ((v424 + (v407 ^ 0x61496393)) ^ 0xDF7FEFEF);
  v426 = ((v385 + 330497421) ^ (v382 >> 10) ^ (v383 + 1547281671) ^ 0x4F98C5AF) + ((((2 * v366) ^ 0xF0A48530) - 229854641 - ((2 * ((2 * v366) ^ 0xF0A48530)) & 0xE499649C)) ^ 0xF24CB24F);
  HIDWORD(v126) = v421 ^ 2;
  LODWORD(v126) = (v421 - v422) ^ 0xA475CFD4;
  v427 = v126 >> 2;
  HIDWORD(v126) = v423 ^ 0xFD6;
  LODWORD(v126) = v423 ^ 0xA475C000;
  v428 = v126 >> 13;
  HIDWORD(v126) = v423 ^ 0x16;
  LODWORD(v126) = v423 ^ 0xA475CFC0;
  v429 = v126 >> 6;
  HIDWORD(v126) = v423 ^ 0x35CFD6;
  LODWORD(v126) = v423 ^ 0xA4400000;
  v430 = v126 >> 22;
  HIDWORD(v126) = v423 ^ 0x7D6;
  LODWORD(v126) = v423 ^ 0xA475C800;
  v431 = v126 >> 11;
  v432 = (v424 - (v392 ^ 0x9B68517) + 2123210552 - ((2 * (v424 - (v392 ^ 0x9B68517))) & 0xFD1B3E70)) ^ 0x7E8D9F38 ^ (v425 + 545263633);
  HIDWORD(v126) = v423 ^ 0x75CFD6;
  LODWORD(v126) = v423 ^ 0xA4000000;
  v433 = ((v432 - 379551579 - ((2 * v432) & 0xD2C1014A)) ^ 0xE96080A5) + v412;
  v434 = v372 + (v431 ^ 0x1619188) + ((v126 >> 25) ^ 0x72DF57BD) + (v429 ^ 0xFF0FFBBF) + ((2 * (v126 >> 25)) & 0xE5BEAF7A) + ((2 * v429) & 0xFE1FF77E) - ((2 * v431) & 0xFD3CDCEE) + 422781187 + (v392 ^ 0xCE6D27B9 ^ (v425 + (v392 ^ 0x523CB53E ^ v423) - ((2 * (v425 + (v392 ^ 0x523CB53E ^ v423)) + 1090527268) & 0x8FB7455C) - 396643648));
  v435 = (v430 ^ 0x80424000) + (v428 ^ 0x6C0850) + (v427 ^ 0xFFED9EF5) + ((2 * v427) & 0xFFDB3DEA) - ((2 * v430) & 0xFF7B7FFE) - ((2 * v428) & 0xFF27EF5E) + (v433 ^ 0xDBFFF4DD) + ((2 * v433) & 0xB7FFE9BA);
  v436 = (HIDWORD(v871) ^ 0x21AB5FE) + (v434 ^ 0x79B9F67F) + ((2 * v434) & 0xF373ECFE) - 77155710;
  v437 = v435 + (v436 ^ 0xBFFF3DFD) + ((2 * v436) & 0x7FFE7BFA) + 2;
  v438 = v437 - ((2 * v437 + 1187630014) & 0x49BD9F8A);
  v439 = v438 + 138655140;
  HIDWORD(v126) = (v438 + 138655140) ^ 5;
  LODWORD(v126) = (v438 + 138655140) ^ 0x24DECFC0;
  v440 = v126 >> 6;
  HIDWORD(v126) = (v438 + 138655140) ^ 0xFC5;
  LODWORD(v126) = (v438 + 138655140) ^ 0x24DEC000;
  v441 = v126 >> 13;
  v442 = (v438 + 138655140) ^ 0x24DECFC5;
  v443 = ((2 * (v442 + (v407 ^ 0x61496393))) & 0x2FDDFBFE) + ((v442 + (v407 ^ 0x61496393)) ^ 0x17EEFDFF);
  HIDWORD(v126) = (v438 + 138655140) ^ 0x7C5;
  LODWORD(v126) = (v438 + 138655140) ^ 0x24DEC800;
  v444 = v126 >> 11;
  HIDWORD(v126) = (v438 + 138655140) ^ 0xDECFC5;
  LODWORD(v126) = (v438 + 138655140) ^ 0x24000000;
  v445 = (v126 >> 25) - ((2 * (v126 >> 25)) & 0x5A3C25E);
  HIDWORD(v126) = (v438 + 138655156) ^ 1;
  LODWORD(v126) = (v438 + 138655140) ^ 0x24DECFC4;
  v446 = v126 >> 2;
  v447 = (v443 - 401538559) ^ (v442 - v424 - 758746410 - ((2 * (v442 - v424)) & 0xA58CE5AC));
  v448 = (v444 ^ 0x6D77D775) + (v440 ^ 0x5E7FDF5F) + ((2 * v440) & 0xBCFFBEBE) + ((2 * v444) & 0xDAEFAEEA);
  HIDWORD(v126) = v439 ^ 0x1ECFC5;
  LODWORD(v126) = v439 ^ 0x24C00000;
  v449 = ((v126 >> 22) ^ 0x946DEB9F) + (v446 ^ 0x7F5E5CFB) + (v441 ^ 0x820111C0) + ((2 * (v126 >> 22)) & 0x28DBD73E) + ((2 * v446) & 0xFEBCB9F6) - ((2 * v441) & 0xFBFDDC7E) + 1;
  v450 = ((v445 - 2100174545) ^ 0xDDDFB04B ^ (v448 - ((2 * v448 + 1745916504) & 0xBE1CA2C8) - 1827235184)) + (v392 ^ 0x9B68517);
  v451 = (((v447 ^ 0xD2C672D6) - 243451801 - 2 * ((v447 ^ 0xD2C672D6) & 0x717D386F ^ v447 & 8)) ^ 0xF17D3867) + (v407 ^ 0xC53CAC45 ^ v423);
  v452 = (v407 ^ 0x61496393) + ((v442 + v424) ^ 0x2FEEFFDF) + ((2 * (v442 + v424)) & 0x5FDDFFBE) + v443 - 1205730782;
  v453 = (v449 - ((2 * v449 + 1415924554) & 0x74A875C0) - 1534664571) ^ 0x87948DE3 ^ (v451 - ((2 * v451) & 0x7B816E06) - 1111443709);
  v454 = (v895 ^ 0xF2DE5903) + (v452 ^ 0xCFDFFFF) + ((2 * v452) & 0x19FBFFFE) - 217972735;
  v455 = (v454 ^ 0x80000814) - ((2 * v454) & 0xFFFFEFD6) + (v450 ^ 0x7FF7FEF1) + ((2 * v450) & 0xFFEFFDE2) - 1694862092 + v453;
  v456 = v455 + 890935296 - ((2 * v455) & 0x6A3537FA);
  v457 = v456 + 1021;
  v458 = (v456 + 1021) ^ 0x351A9BFD;
  HIDWORD(v126) = (v456 + 1049) ^ 1;
  LODWORD(v126) = (v456 + 1021) ^ 0x351A9BFC;
  v459 = v126 >> 2;
  v460 = ((v458 - v424) ^ 0x8FFB7FF7) + ((v458 + v442) ^ 0xA66DAFFB) + ((2 * (v458 + v442)) & 0x4CDB5FF6) + ((2 * (v458 - v424)) & 0x1FF6FFEE);
  HIDWORD(v126) = v457 ^ 0xFFFFFFFD;
  LODWORD(v126) = v457 ^ 0x351A9BC0;
  v461 = v126 >> 6;
  HIDWORD(v126) = v457 ^ 0x3FD;
  LODWORD(v126) = v457 ^ 0x351A9800;
  v462 = v126 >> 11;
  v463 = v460 - ((2 * v460 - 1825726436) & 0x9CAB24DA);
  v464 = ((v458 - v442) ^ 0x7FB635B9) - 2142647737 + ((2 * (v458 - v442)) & 0xFF6C6B72);
  HIDWORD(v126) = v457 ^ 0x1BFD;
  LODWORD(v126) = v457 ^ 0x351A8000;
  v465 = v126 >> 13;
  HIDWORD(v126) = v457 ^ 0x11A9BFD;
  LODWORD(v126) = v457 ^ 0x34000000;
  v466 = v126 >> 25;
  HIDWORD(v126) = v457 ^ 0x1A9BFD;
  LODWORD(v126) = v457 ^ 0x35000000;
  v467 = (v462 ^ 0x88000282) + (v466 ^ 0x7FE6F17F) + (v461 ^ 0x7B57EFE9) + ((2 * v466) & 0xFFCDE2FE) + ((2 * v461) & 0xF6AFDFD2) - ((2 * v462) & 0xEFFFFAFA) + 2093030422 + (v423 ^ 0xC5A63509 ^ (v464 + (v423 ^ 0x916F542B ^ v457) - ((2 * (v464 + (v423 ^ 0x916F542B ^ v457))) & 0xC3A7F5BE) + 1641282271));
  v468 = (v407 ^ 0x61496393) + (v467 ^ 0x80482104) - ((2 * v467) & 0xFF6FBDF6) + 2142756604;
  v469 = (v465 ^ 0x5F1B9F6F) + ((2 * v465) & 0xBE373EDE) - 1595645807 + (v423 ^ v439 ^ 0xCEFE927E ^ (v463 + 401367675));
  v470 = (v459 ^ 0xFF9F6FFB) + ((v126 >> 22) ^ 0x7F7F2773) + ((2 * v459) & 0xFF3EDFF6) + ((2 * (v126 >> 22)) & 0xFEFE4EE6) + (v469 ^ 0x88010895) - ((2 * v469) & 0xEFFDEED4);
  v471 = (v872 ^ 0xEC5EDDFC) + (v468 ^ 0xDBDFEBCB) + ((2 * v468) & 0xB7BFD796) - 1732599086;
  v472 = v470 + (v471 ^ 0x59FDFF7B) + ((2 * v471) & 0xB3FBFEF6);
  v473 = v472 - 197864902;
  v474 = v472 - 197864902 - ((2 * v472 + 1036304644) & 0xAAA4E358) - 12;
  HIDWORD(v126) = v474 ^ 0x2C;
  LODWORD(v126) = v474 ^ 0x55527180;
  v475 = v126 >> 6;
  HIDWORD(v126) = v474 ^ 0x1AC;
  LODWORD(v126) = v474 ^ 0x55527000;
  v476 = v126 >> 11;
  v906 = ((v867 - 1375167002) ^ (v905 >> 3) ^ (HIDWORD(v864) + 1675658306) ^ 0x2A3DF041) + (v426 ^ 0x6E786FFE) + ((2 * v426) & 0xDCF0DFFC);
  HIDWORD(v126) = v474 ^ 0x11AC;
  LODWORD(v126) = v474 ^ 0x55526000;
  v477 = v126 >> 13;
  HIDWORD(v126) = v473;
  LODWORD(v126) = v474 ^ 0x555271AC;
  v478 = (v477 ^ 0x4F7FF7F4) + ((v126 >> 2) ^ 0xE276B47F) + ((2 * (v126 >> 2)) & 0xC4ED68FE) + ((2 * v477) & 0x9EFFEFE8);
  v479 = (v476 ^ 0x6048C400) + (v475 ^ 0x3FE2EBBF) + ((2 * v475) & 0x7FC5D77E) - ((2 * v476) & 0x3F6E77FE);
  HIDWORD(v126) = v474 ^ 0x1271AC;
  LODWORD(v126) = v474 ^ 0x55555555;
  v480 = (v126 >> 22) - ((2 * (v126 >> 22)) & 0x8F2C0E64);
  HIDWORD(v126) = v474 ^ 0x15271AC;
  LODWORD(v126) = v474 ^ 0x55555555;
  v481 = v457 ^ v439;
  v482 = v423 ^ ((v126 >> 25) - ((2 * (v126 >> 25)) & 0xB661E8C4) + 1529934946) ^ 0xE407F1E0 ^ (v479 + 1 - 2 * ((v479 + 534007873) & 0x1B42CA5D ^ (v479 + 1) & 9) + 2065111700);
  v483 = (v481 ^ v474 ^ 0xB676E94C ^ ((v474 ^ 0x555271AC) - v442 - ((2 * ((v474 ^ 0x555271AC) - v442)) & 0xE5C199B0) - 220148520)) - 898248179;
  v484 = (v483 ^ 0x3FFD7BFA) + ((2 * v483) & 0x7FFAF7F4) - 1073576954 + v482;
  v485 = v481 ^ v464 ^ (v480 - 946469070) ^ (v478 - ((2 * v478 - 1676499174) & 0x868BF814) + 290410391);
  v486 = (((v485 ^ 0x9517AF00) - 1138282452 - 2 * ((v485 ^ 0x9517AF00) & 0x3C27302D ^ v485 & 1)) ^ 0xBC27302C) + (HIDWORD(v872) ^ 0x1D84688 ^ (v484 - ((2 * v484) & 0xA3B718E) - 2061649721));
  v487 = v486 - 1928926292 - ((2 * v486) & 0x1A0DD758);
  HIDWORD(v126) = v487 ^ 0x106EBAC;
  LODWORD(v126) = v487 ^ 0x8C000000;
  v488 = (v126 >> 25) - ((2 * (v126 >> 25)) & 0x2A8DD3E2);
  HIDWORD(v126) = v487 ^ 0x2C;
  LODWORD(v126) = v487 ^ 0x8D06EB80;
  v489 = v126 >> 6;
  HIDWORD(v126) = v487 ^ 0xBAC;
  LODWORD(v126) = v487 ^ 0x8D06E000;
  v490 = v126 >> 13;
  HIDWORD(v126) = v487 ^ 0x3AC;
  LODWORD(v126) = v487 ^ 0x8D06E800;
  v491 = v126 >> 11;
  v492 = (v491 ^ 0x49208380) + (v489 ^ 0xAF7BECED);
  v493 = ((2 * v489) & 0x5EF7D9DA) - ((2 * v491) & 0x6DBEF8FE);
  v494 = v458 + (((v457 ^ 0xB81C7051 ^ v487) + (v474 ^ 0x555271AC)) ^ 0xFD8F9FFD) + ((2 * ((v457 ^ 0xB81C7051 ^ v487) + (v474 ^ 0x555271AC))) & 0xFB1F3FFA) + 40919043;
  HIDWORD(v126) = v487 ^ 0x6EBAC;
  LODWORD(v126) = v487 ^ 0x8D000000;
  v495 = v126 >> 22;
  v496 = ((v488 + 356968945) ^ 0xE4F9EBEB ^ (v493 + v492 + 1 - 2 * ((v493 + v492 + 1 + 123965330) & 0x71BF021B ^ (v492 + 1) & 1) - 115174996)) + v442;
  v497 = (((v487 ^ 0x8D06EBAC) + (v474 ^ 0x555271AC)) ^ 0xA8D3B97B) + 1462519429 + ((2 * ((v487 ^ 0x8D06EBAC) + (v474 ^ 0x555271AC))) & 0x51A772F6);
  v498 = ((v474 ^ 0x555271AC) + v458 - ((2 * ((v474 ^ 0x555271AC) + v458)) & 0xEC26B114) + 1980979338) ^ v497 ^ ((v487 ^ 0x8D06EBAC) - v458 - ((2 * ((v487 ^ 0x8D06EBAC) - v458)) & 0x3D31D572) + 513338041) ^ 0x688BB233;
  v499 = (v487 ^ 0x8D06EBAC) + (v494 ^ 0xA8610808) - ((2 * v494) & 0xAF3DEFEE) + 1470035960;
  HIDWORD(v126) = v486;
  LODWORD(v126) = v487 ^ 0x8D06EBAC;
  v500 = (v490 ^ 0x63942180) + ((v126 >> 2) ^ 0x6DF4EEFB) + (v495 ^ 0x13014600) + ((2 * (v126 >> 2)) & 0xDBE9DDF6) - ((2 * v495) & 0xD9FD73FE) - ((2 * v490) & 0x38D7BCFE) + 460695941 + ((v498 + 298431697 - ((2 * v498) & 0x239369A2)) ^ 0x11C9B4D1);
  v501 = (v873 ^ 0x4EE2B3A0) + (v499 ^ 0x4EB77CFF) + ((2 * v499) & 0x9D6EF9FE) + (v496 ^ 0xCB7DC7F3) + ((2 * v496) & 0x96FB8FE6) + 1211746604;
  v502 = ((2 * v500) & 0x77DFBFD2) + (v500 ^ 0xBBEFDFE9) + (v501 ^ 0xFBD7BDFF) + ((2 * v501) & 0xF7AF7BFE);
  v503 = v502 - ((2 * v502 + 7390256) & 0x7883726);
  v504 = v503 - 872645205;
  v505 = (v503 - 872645205) ^ 0x83C41B93;
  HIDWORD(v126) = (v503 - 872645205) ^ 0x13;
  LODWORD(v126) = (v503 - 872645205) ^ 0x83C41B80;
  v506 = v126 >> 6;
  HIDWORD(v126) = (v503 - 872645205) ^ 0x1B93;
  LODWORD(v126) = (v503 - 872645205) ^ 0x83C40000;
  v507 = v126 >> 13;
  v508 = (v474 ^ 0x296995C0 ^ (v503 - 872645205)) + ((v505 + (v487 ^ 0x8D06EBAC)) ^ 0xA7DBDFFF) + ((2 * (v505 + (v487 ^ 0x8D06EBAC))) & 0x4FB7BFFE) + 1478762498;
  HIDWORD(v126) = 872645188 - v503;
  LODWORD(v126) = (v503 - 872645205) ^ 0x83C41B90;
  v509 = v126 >> 2;
  v510 = (v503 - 872645205) ^ v487;
  v511 = (v510 ^ 0x1CC028B ^ (v505 + (v474 ^ 0x555271AC) - ((2 * (v505 + (v474 ^ 0x555271AC))) & 0x1E1DE568) + 252637876)) + v497;
  HIDWORD(v126) = v504 ^ 0x393;
  LODWORD(v126) = v504 ^ 0x83C41800;
  v512 = (v126 >> 11) - ((2 * (v126 >> 11)) & 0x56FF23D4) - 1417702934;
  HIDWORD(v126) = v512 ^ 0x791EA;
  LODWORD(v126) = v512 ^ 0xAB780000;
  v513 = (v126 >> 19) - ((2 * (v126 >> 19)) & 0xC1473936);
  HIDWORD(v126) = v504 ^ 0x1C41B93;
  LODWORD(v126) = v504 ^ 0x83FFFFFF;
  v514 = v126 >> 25;
  v513 += 1621335195;
  HIDWORD(v126) = v513 ^ 0x1C9B;
  LODWORD(v126) = v513 ^ 0x60A38000;
  v515 = v126 >> 13;
  v516 = (v507 ^ 0xE221B81A) + (v509 ^ 0x3B69EFBB) + ((2 * v509) & 0x76D3DF76) - ((2 * v507) & 0x3BBC8FCA) + 1;
  HIDWORD(v126) = v504 ^ 0x41B93;
  LODWORD(v126) = v504 ^ 0x83C00000;
  v517 = v458 + (v514 ^ 0x80200000) + (v506 ^ 0x1DC40004) - ((2 * v506) & 0xC477FFF6) - ((2 * v514) & 0xFFBFFFFE) + (v515 ^ 0x3BF5EF7F) + ((2 * v515) & 0x77EBDEFE) + 640028797;
  v518 = (v474 ^ 0xCE89727C ^ (v508 - ((2 * v508) & 0x37B607A0) - 1680145456)) + (v517 ^ 0xFCFFD67B) + ((2 * v517) & 0xF9FFACF6) + 50342277;
  v519 = (v874 ^ 0xF8207D51) + (v518 ^ 0xFEEB7FAF) + ((2 * v518) & 0xFDD6FF5E) - 2035718565;
  v520 = (((v126 >> 22) - ((2 * (v126 >> 22)) & 0x20486758) + 270807980) ^ (v511 - ((2 * v511) & 0x28A80DDE) + 341051119) ^ (v516 - ((2 * v516 - 991383468) & 0xA08A4B06) + 851017133) ^ 0x543510C0) + (v519 ^ 0xFB6FF74D) + ((2 * v519) & 0xF6DFEE9A) + 76548275;
  v521 = v520 - 700562154 - ((2 * v520) & 0xAC7C8A24) - 4;
  HIDWORD(v126) = (v520 - 700562154) ^ 2;
  LODWORD(v126) = v521 ^ 0xD63E4510;
  v522 = (v126 >> 2) - ((2 * (v126 >> 2)) & 0xF0D2F034);
  HIDWORD(v126) = v521 ^ 0x512;
  LODWORD(v126) = v521 ^ 0xD63E4000;
  v523 = (v126 >> 13) - ((2 * (v126 >> 13)) & 0x9A1E1BC2);
  v524 = ((2 * ((v521 ^ 0xD63E4512) + v505)) & 0xBAFBB7DE) + (((v521 ^ 0xD63E4512) + v505) ^ 0x5D7DDBEF);
  HIDWORD(v126) = v521 ^ 0x512;
  LODWORD(v126) = v521 ^ 0xD63E4000;
  v525 = v126 >> 11;
  v522 -= 127305702;
  HIDWORD(v126) = v522 ^ 0x781A;
  LODWORD(v126) = v522 ^ 0xF8690000;
  v526 = (v126 >> 15) - ((2 * (v126 >> 15)) & 0x7414FCEC) + 973766262;
  HIDWORD(v126) = v526 ^ 0x7E76;
  LODWORD(v126) = v526 ^ 0x3A0A0000;
  v527 = (v126 >> 17) - ((2 * (v126 >> 17)) & 0x4072865C);
  HIDWORD(v126) = v521 ^ 0x12;
  LODWORD(v126) = v521 ^ 0xD63E4500;
  v528 = v126 >> 6;
  HIDWORD(v126) = v521 ^ 0x3E4512;
  LODWORD(v126) = v521 ^ 0xD6000000;
  v529 = v126 >> 22;
  HIDWORD(v126) = v521 ^ 0x3E4512;
  LODWORD(v126) = v521 ^ 0xD6000000;
  v530 = (v529 ^ 0xBB7E3AED) + ((2 * v529) & 0x76FC75DA) + 1149355283 + ((v523 - 854651423) ^ 0xED364ECF ^ (v527 + 540623662));
  v531 = ((v521 ^ 0xD63E4512) - (v487 ^ 0x8D06EBAC) - 1988952038 - ((2 * ((v521 ^ 0xD63E4512) - (v487 ^ 0x8D06EBAC))) & 0x12E60034)) ^ 0x8973001A ^ (v524 - 1568529391);
  v532 = (v487 ^ 0x8D06EBAC) + (((v521 ^ 0xD63E4512) + (v487 ^ 0x8D06EBAC)) ^ 0x3BF6EF6F) + ((2 * ((v521 ^ 0xD63E4512) + (v487 ^ 0x8D06EBAC))) & 0x77EDDEDE) + v524;
  v533 = ((v531 + 1124944327 - ((2 * v531) & 0x861A938E)) ^ 0x430D49C7) + (v510 ^ 0xEC2F03F);
  v534 = (v474 ^ 0x555271AC) + (v525 ^ 0xBEFDEC06) + ((v126 >> 25) ^ 0x5E32BBEE) + ((2 * v525) & 0x7DFBD80C) + ((2 * (v126 >> 25)) & 0xBC6577DC) - 489727988;
  v535 = (v528 ^ 0x3118008) - ((2 * v528) & 0xF9DCFFEE) + ((v532 + 1720399010) ^ 0x1026405A) + (v534 ^ 0x33F7CFE7) - ((2 * (v532 + 1720399010)) & 0xDFB37F4A) + ((2 * v534) & 0x67EF9FCE) + 2;
  v536 = ((v533 - ((2 * v533) & 0x9D6C48C8) - 826923932) ^ 0x1961C6E7 ^ (v530 - ((2 * v530) & 0xAFAFC506) - 673717629)) + (v198 ^ 0xCB187A7D ^ (v535 - ((2 * v535 + 926320490) & 0x218B3E5C) + 1818288867));
  v537 = v536 - 528462676 - ((2 * v536) & 0xC1009958);
  v538 = v537 ^ 0xE0804CAC;
  v539 = (v504 ^ 0x6344573F ^ v537) + 16778499 + (((v537 ^ 0xE0804CAC) + (v521 ^ 0xD63E4512)) ^ 0xFEFFF7EF) + ((2 * ((v537 ^ 0xE0804CAC) + (v521 ^ 0xD63E4512))) & 0xFDFFEFDE) + 782;
  HIDWORD(v126) = v536;
  LODWORD(v126) = v537 ^ 0xE0804CAC;
  v540 = v539 - ((2 * v539) & 0xC2345A36);
  v541 = (v537 ^ 0xE0804CAC) - (v521 ^ 0xD63E4512);
  v542 = (v541 ^ 0xFFDF6ADE) + 2135330 + ((2 * v541) & 0xFFBED5BC);
  v543 = v542 ^ 0xC264ECC ^ ((v537 ^ 0xE0804CAC) + v505 + 203837132 - ((2 * ((v537 ^ 0xE0804CAC) + v505)) & 0x184C9D98));
  v544 = v543 - 831321217 - ((2 * v543) & 0x9CE616FE);
  v545 = v504 ^ 0x62DE3688 ^ (v540 - 518378213);
  v546 = (v126 >> 2) - ((2 * (v126 >> 2)) & 0x2F94BC82) + 399138369;
  HIDWORD(v126) = v546 ^ 0x4A5E41;
  LODWORD(v126) = v546 ^ 0x17800000;
  v547 = (v126 >> 23) - ((2 * (v126 >> 23)) & 0x6201C552);
  HIDWORD(v126) = (v547 - 251600215) ^ 0x3100E2A9;
  LODWORD(v126) = v547 + 822141609;
  v548 = v126 >> 30;
  HIDWORD(v126) = v537 ^ 0x4AC;
  LODWORD(v126) = v537 ^ 0xE0804800;
  v549 = v126 >> 11;
  v550 = v548 + 527710208 - ((2 * v548) & 0x3EE8743C) + 542;
  HIDWORD(v126) = v550 ^ 0x21E;
  LODWORD(v126) = v550 ^ 0x1F743800;
  v551 = v126 >> 11;
  HIDWORD(v126) = v537 ^ 0x2C;
  LODWORD(v126) = v537 ^ 0xE0804C80;
  v552 = v126 >> 6;
  HIDWORD(v126) = v537 ^ 0xCAC;
  LODWORD(v126) = v537 ^ 0xE0804000;
  v553 = v126 >> 13;
  HIDWORD(v126) = v537 ^ 0x804CAC;
  LODWORD(v126) = v537 ^ 0xE0000000;
  v554 = (v549 ^ 0x95EEBBFD) + ((v126 >> 25) ^ 0xDFD2FAB3) + (v552 ^ 0x3FFCE2FF) + ((2 * (v126 >> 25)) & 0xBFA5F566) + ((2 * v549) & 0x2BDD77FA) + ((2 * v552) & 0x7FF9C5FE);
  HIDWORD(v126) = v537 ^ 0x4CAC;
  LODWORD(v126) = v537 ^ 0xE0800000;
  v555 = ((v545 - 2114705756) ^ 0x7AE7F7EF) + ((2 * (v545 - 2114705756)) & 0xF5CFEFDE) + (v487 ^ 0x2237BF28 ^ (v554 - ((2 * v554 + 344116386) & 0x5E62A908) - 109921579)) - 2062022639;
  v556 = ((v126 >> 22) ^ 0xDBA3F79F) + (v553 ^ 0x78BF7BE3) + ((2 * (v126 >> 22)) & 0xB747EF3E) + ((2 * v553) & 0xF17EF7C6) + (((v544 ^ 0xCE730B7F) + v524 - 1568529391) ^ 0x64080018) - ((2 * ((v544 ^ 0xCE730B7F) + v524 - 1568529391)) & 0x37EFFFCE) + (v551 ^ 0x8D8FDFE3) + ((2 * v551) & 0x1B1FBFC6) + (v875 ^ 0x85E37B69 ^ (v555 - ((2 * v555) & 0x36DEB898) - 1687200692)) - 1174098813;
  v557 = v556 + 1521213440 - ((2 * v556) & 0xB557C5CE);
  v558 = v557 + 743;
  HIDWORD(v126) = (v557 + 743) ^ 0xFFFFFFE7;
  LODWORD(v126) = (v557 + 743) ^ 0x5AABE2C0;
  v559 = v126 >> 6;
  HIDWORD(v126) = (v557 + 743) ^ 0x2BE2E7;
  LODWORD(v126) = (v557 + 743) ^ 0x5A800000;
  v560 = (v126 >> 22) - ((2 * (v126 >> 22)) & 0xCE0FFB44);
  HIDWORD(v126) = (v557 + 743) ^ 0xABE2E7;
  LODWORD(v126) = (v557 + 743) ^ 0x5A000000;
  v561 = v126 >> 25;
  v562 = (v557 + 743) ^ 0x5AABE2E7;
  HIDWORD(v126) = (v557 + 743) ^ 0x2E7;
  LODWORD(v126) = (v557 + 743) ^ 0x5AABE000;
  v563 = (v561 ^ 0xF7F7BDE7) + (v559 ^ 0x7EDD1D63) + ((v126 >> 11) ^ 0x88084868) + ((2 * v561) & 0xEFEF7BCE) + ((2 * v559) & 0xFDBA3AC6) - ((2 * (v126 >> 11)) & 0xEFEF6F2E) + 1;
  HIDWORD(v126) = -764 - v557;
  LODWORD(v126) = (v557 + 743) ^ 0x5AABE2E4;
  v564 = (v504 ^ 0x3B3D7F12 ^ (v563 - ((2 * v563 + 38123674) & 0x71F2C902) - 1172553522)) + (v521 ^ 0x5912C0F3 ^ (v541 - ((2 * v541) & 0x1E590BC2) - 1892907551));
  v565 = (v557 + 743) ^ v537;
  v566 = (v565 ^ 0x28C54199 ^ (v562 + (v521 ^ 0xD63E4512) - ((2 * (v562 + (v521 ^ 0xD63E4512))) & 0x25DDDFA4) - 1829834798)) + v542;
  v567 = HIDWORD(v874) + (v564 ^ 0xCCDDDF7F) + ((2 * v564) & 0x99BBBEFE) + 1927184730;
  v568 = (((__PAIR64__((v557 + 743) ^ 0x2E7, (v557 + 743) ^ 0x5AABE000) >> 13) - ((2 * (__PAIR64__((v557 + 743) ^ 0x2E7, (v557 + 743) ^ 0x5AABE000) >> 13)) & 0x779019EC) + 1002966262) ^ ((v126 >> 2) - ((2 * (v126 >> 2)) & 0xC3712788) + 1639486404) ^ (v560 + 1728576930) ^ 0xC66F228B ^ (v566 - ((2 * v566) & 0xF6308036) - 82296805)) + (v567 ^ 0xA6976D73) + ((2 * v567) & 0x4D2EDAE6) + 1500025485;
  v569 = v568 + 1967210496 - ((2 * v568) & 0xEA828916);
  v570 = v569 + 1163;
  v571 = (v569 + 1163) ^ 0x7541448B;
  v572 = v571 + (v537 ^ 0xE0804CAC) - 856655347 - ((2 * (v571 + (v537 ^ 0xE0804CAC))) & 0x99E0F41A);
  HIDWORD(v126) = (v569 + 1163) ^ 0x1448B;
  LODWORD(v126) = (v569 + 1163) ^ 0x75400000;
  v573 = v126 >> 22;
  HIDWORD(v126) = (v569 + 1163) ^ 0x141448B;
  LODWORD(v126) = (v569 + 1163) ^ 0x74000000;
  v574 = v126 >> 25;
  HIDWORD(v126) = (v569 + 1163) ^ 0xB;
  LODWORD(v126) = (v569 + 1163) ^ 0x75414480;
  v575 = v126 >> 6;
  v576 = ((2 * (v571 - v562)) & 0x9533B71E) + ((v571 - v562) ^ 0xCA99DB8F);
  v577 = (v569 + 1163) ^ 0x48B;
  v578 = (v569 + 1163) ^ 0x75414000;
  v579 = (v537 ^ 0x95C10827 ^ (v569 + 1163)) + ((v571 + v562) ^ 0x5F7EC5EE) + ((2 * (v571 + v562)) & 0xBEFD8BDC) - 1602143726;
  v580 = v579 - ((2 * v579) & 0xB05A7D0);
  v581 = ((v576 + 895886449) ^ v572 ^ 0xCCF07A0D) + 2037721256 - 2 * (((v576 + 895886449) ^ v572 ^ 0xCCF07A0D) & 0x797528BA ^ ((v576 + 895886449) ^ v572) & 0x12);
  HIDWORD(v126) = -v569;
  LODWORD(v126) = (v569 + 1163) ^ 0x75414488;
  v582 = (v573 ^ 0x254B4D02) - ((2 * v573) & 0xB56965FA) - 625691906 + (((v126 >> 2) - ((2 * (v126 >> 2)) & 0x2211032) - 2129623015) ^ ((__PAIR64__(v577, v578) >> 13) - ((2 * (__PAIR64__(v577, v578) >> 13)) & 0x9B5FB270) + 1303370040) ^ 0xCCBF5121);
  v583 = (v580 - 2055023640) ^ v565 ^ (v582 - ((2 * v582) & 0x255A6F18) - 1834141812);
  v584 = (v574 ^ 0x93919848) - ((2 * v574) & 0xD8DCCF6E) + 1819174840 + (((__PAIR64__(v577, v578) >> 11) - ((2 * (__PAIR64__(v577, v578) >> 11)) & 0xC0F8EF58) - 528713812) ^ (v575 - ((2 * v575) & 0x836B9B0C) - 1045049978) ^ 0x21C9BA2A);
  HIDWORD(v126) = v583 ^ 0x1044A2F;
  LODWORD(v126) = v583 ^ 0xAC000000;
  v585 = (v126 >> 26) + 303781888 - ((2 * (v126 >> 26)) & 0x2436BDC6) + 1763;
  HIDWORD(v126) = v585 ^ 0x6E3;
  LODWORD(v126) = v585 ^ 0x121B5800;
  v586 = (v521 ^ 0xAB417E8F ^ (v584 - ((2 * v584) & 0xFAFE773A) + 2105490333)) + (((v581 ^ 0x797528A8) - v538) ^ 0x3FE7F7FB) + ((2 * ((v581 ^ 0x797528A8) - v538)) & 0x7FCFEFF6) - 1072166907;
  v587 = (v126 >> 11) + 55496011 + (~(2 * (v126 >> 11)) | 0xF9626569) + 1;
  HIDWORD(v126) = v587 ^ 0x34ECD4B;
  LODWORD(v126) = v587;
  v588 = (v218 ^ 0x3AE50564) + (v586 ^ 0x776C5ABE) + ((2 * v586) & 0xEED8B57C) - 165353936;
  v589 = ((2 * v588) & 0x679DFB90) + (v588 ^ 0x33CEFDC8) + ((v126 >> 27) ^ 0xEF5F7FDD) + ((2 * (v126 >> 27)) & 0xDEBEFFBA);
  v590 = v589 + 898968535;
  v591 = v589 + 898968535 - ((2 * v589 - 1180498762) & 0xB18752F8);
  v592 = v591 ^ 0x58C3A97C;
  v593 = ((2 * ((v591 ^ 0x58C3A97C) - v571)) & 0xFAF7FF6E) + (((v591 ^ 0x58C3A97C) - v571) ^ 0xFD7BFFB7);
  HIDWORD(v126) = v591 ^ 0x3C;
  LODWORD(v126) = v591 ^ 0x58C3A940;
  v594 = v126 >> 6;
  HIDWORD(v126) = v591 ^ 0x17C;
  LODWORD(v126) = v591 ^ 0x58C3A800;
  v595 = v126 >> 11;
  HIDWORD(v126) = v591 ^ 0x97C;
  LODWORD(v126) = v591 ^ 0x58C3A000;
  v596 = v126 >> 13;
  v597 = (v570 ^ 0x2D82EDF7 ^ v591) + (((v591 ^ 0x58C3A97C) + v562) ^ 0xE11FBF66) + ((2 * ((v591 ^ 0x58C3A97C) + v562)) & 0xC23F7ECC) + 518013082;
  HIDWORD(v126) = v591 ^ 0xC3A97C;
  LODWORD(v126) = v591 ^ 0x58000000;
  v598 = v126 >> 25;
  HIDWORD(v126) = v590;
  LODWORD(v126) = v591 ^ 0x58C3A97C;
  v599 = ((v126 >> 2) ^ 0x77BF6FEF) + (v596 ^ 0x7EFDCDB8) + ((2 * v596) & 0xFDFB9B70) + ((2 * (v126 >> 2)) & 0xEF7EDFDE);
  HIDWORD(v126) = v591 ^ 0x3A97C;
  LODWORD(v126) = v591 ^ 0x58C00000;
  v600 = v538 + (v594 ^ 0x94008B24) + (v595 ^ 0xEFEBF9F7) + (v598 ^ 0xFFBF8BEE) + ((2 * v595) & 0xDFD7F3EE) + ((2 * v598) & 0xFF7F17DC) - ((2 * v594) & 0xD7FEE9B6);
  v601 = (v558 ^ 0xD690F655 ^ (v597 - ((2 * v597) & 0x18762964) - 1942285134)) + ((v600 + 2085875447) ^ 0x19FBFBF3) + ((2 * (v600 + 2085875447)) & 0x33F7F7E6) - 435944435;
  v602 = (v558 ^ 0xFD97B464 ^ v591) + 42205257 + v593 + 1;
  v603 = v576 + (v602 ^ 0x4AEFB9EF) + ((2 * v602) & 0x95DF73DE) - 361338238 + (((v126 >> 22) - ((2 * (v126 >> 22)) & 0x5BCD4FF6) + 770091003) ^ 0x835A5281 ^ (v599 - ((2 * v599 + 310740146) & 0x5D79EAF4) - 1207978029));
  v604 = (HIDWORD(v875) ^ 0x7657423C) + (v601 ^ 0x8ABE7973) + ((2 * v601) & 0x157CF2E6) - 943037643;
  v605 = ((2 * v603) & 0xE39FFB8E) + (v603 ^ 0xF1CFFDC7) + (v604 ^ 0xFFFFF5F8) + ((2 * v604) & 0xFFFFEBF0);
  v606 = v605 - ((2 * v605 + 476059778) & 0xC4A54C0E);
  v607 = v606 - 259870136;
  HIDWORD(v126) = 259870115 - v606;
  LODWORD(v126) = (v606 - 259870136) ^ 0xE252A604;
  v608 = v126 >> 2;
  HIDWORD(v126) = v607 ^ 7;
  LODWORD(v126) = v607 ^ 0xE252A600;
  v609 = v126 >> 6;
  HIDWORD(v126) = v607 ^ 0x607;
  LODWORD(v126) = v607 ^ 0xE252A000;
  v610 = v126 >> 11;
  HIDWORD(v126) = v607 ^ 0x607;
  LODWORD(v126) = v607 ^ 0xE252A000;
  v611 = v126 >> 13;
  HIDWORD(v126) = v607 ^ 0x52A607;
  LODWORD(v126) = v607 ^ 0xE2000000;
  v612 = (v126 >> 25) - ((2 * (v126 >> 25)) & 0x8466EAF2);
  v613 = (v611 ^ 0x6FFBFB4D) + (v608 ^ 0xBDBFFBFE) + ((2 * v608) & 0x7B7FF7FC) + ((2 * v611) & 0xDFF7F69A);
  v614 = v613 - ((2 * v613 + 612897130) & 0x3598D2CA);
  v615 = v607 ^ 0xE252A607;
  v616 = (((v607 ^ 0xE252A607) - v571) ^ 0xE7FDFFE7) + (((v607 ^ 0xE252A607) - (v591 ^ 0x58C3A97C)) ^ 0x7B7AFFF8) + ((2 * ((v607 ^ 0xE252A607) - (v591 ^ 0x58C3A97C))) & 0xF6F5FFF0) + ((2 * ((v607 ^ 0xE252A607) - v571)) & 0xCFFBFFCE);
  v617 = (v610 ^ 0x80189E00) + (v609 ^ 0xFDBDA7FE) + ((2 * v609) & 0xFB7B4FFC) - ((2 * v610) & 0xFFCEC3FE) + 1;
  v618 = v616 - ((2 * v616 + 957218882) & 0x2E8C5CD2) + 869084810;
  HIDWORD(v126) = v607 ^ 0x12A607;
  LODWORD(v126) = v607 ^ 0xE2400000;
  v619 = (((v126 >> 22) - ((2 * (v126 >> 22)) & 0x83ABB830) - 1042949096) ^ 0x5B19B57D ^ (v614 + 1829794330)) - ((((v593 + 42205257) ^ 0x97462E69 ^ v618) + 1998525030 - ((2 * ((v593 + 42205257) ^ 0x97462E69 ^ v618)) & 0xEE3E24CC)) ^ 0x771F1266);
  v620 = v558 ^ v570 ^ (v612 - 1036814983) ^ v618 ^ 0x19F1485A ^ (v617 - ((2 * v617 + 72578050) & 0xC6DD6A4C) - 442994905);
  v621 = (v619 ^ 0xBFDBBFFF) + ((2 * v619) & 0x7FB77FFE) + (HIDWORD(v876) ^ 0x470B01FB ^ (v620 - ((2 * v620 + 1697642736) & 0x7C7F6E7C) + 819442614)) + 1076117505;
  v622 = v621 - 1355380998;
  v623 = v621 - 1355380998 - ((2 * v621) & 0x5E6D0DF4);
  v624 = v623 ^ 0xAF3686FA;
  v625 = (v623 ^ 0xAF3686FA) + (v591 ^ 0x58C3A97C) - ((2 * ((v623 ^ 0xAF3686FA) + (v591 ^ 0x58C3A97C))) & 0xFF582F06);
  HIDWORD(v126) = v623 ^ 0x3A;
  LODWORD(v126) = v623 ^ 0xAF3686C0;
  v626 = (v126 >> 6) - ((2 * (v126 >> 6)) & 0x79AB9224);
  HIDWORD(v126) = v623 ^ 0x13686FA;
  LODWORD(v126) = v623 ^ 0xAE000000;
  v627 = (v126 >> 25) - ((2 * (v126 >> 25)) & 0x2EB9F630);
  HIDWORD(v126) = v623 ^ 0x6FA;
  LODWORD(v126) = v623 ^ 0xAF368000;
  v628 = v570 ^ (v626 + 1020643602) ^ ((v126 >> 11) - ((2 * (v126 >> 11)) & 0x4790580A) + 600321029) ^ (v627 + 391969560);
  v629 = v591 ^ 0xBA910F7B ^ v607;
  v630 = ((v629 - (v591 ^ 0x58C3A97C)) ^ 0xFFFFEED1) + ((2 * (v629 - (v591 ^ 0x58C3A97C))) & 0xFFFFDDA2) + 4399 + (v628 ^ 0x7D005A84);
  HIDWORD(v126) = v622 ^ 2;
  LODWORD(v126) = v623 ^ 0xAF3686F8;
  v631 = v126 >> 2;
  HIDWORD(v126) = v623 ^ 0x6FA;
  LODWORD(v126) = v623 ^ 0xAF368000;
  v632 = v126 >> 13;
  HIDWORD(v126) = v623 ^ 0x3686FA;
  LODWORD(v126) = v623 ^ 0xAF000000;
  v633 = ((2 * v630) & 0xF17EFFA0) + (v630 ^ 0xF8BF7FD0) + 1242945280 - ((2 * (((2 * v630) & 0xF17EFFA0) + (v630 ^ 0xF8BF7FD0)) + 1408402524) & 0x403929A4);
  v634 = v623 ^ v607;
  v635 = (v623 ^ v607 ^ 0x32C8377E ^ (v625 + 2141984643)) - v629;
  v636 = ((v126 >> 22) ^ 0x5FBC9F7F) + (v632 ^ 0xEFFD7FB1) + (v631 ^ 0x6FDDF9E9) + ((2 * (v126 >> 22)) & 0xBF793EFE) + ((2 * v632) & 0xDFFAFF62) + ((2 * v631) & 0xDFBBF3D2) + (v635 ^ 0x85ECFFB9) + ((2 * v635) & 0xBD9FF72) - 1166350546 + (HIDWORD(v878) ^ 0x4CBFFE26 ^ v633);
  v637 = v636 - 1103506378;
  v638 = v636 - 1103506378 - ((2 * v636) & 0x7C73A86C);
  HIDWORD(v126) = v638 ^ 0x39D436;
  LODWORD(v126) = v638 ^ 0xBE000000;
  v639 = (v126 >> 22) - ((2 * (v126 >> 22)) & 0xAF8A8C4);
  HIDWORD(v126) = v638 ^ 0x36;
  LODWORD(v126) = v638 ^ 0xBE39D400;
  v640 = v126 >> 6;
  HIDWORD(v126) = v638 ^ 0x436;
  LODWORD(v126) = v638 ^ 0xBE39D000;
  v641 = ((v126 >> 11) ^ 0x624C2303) + (v640 ^ 0xEFFCFFFF) + ((2 * v640) & 0xDFF9FFFE) - ((2 * (v126 >> 11)) & 0x3B67B9F8) + 1;
  v642 = v641 - ((2 * v641 + 1533917690) & 0x54ADC6E0);
  v643 = v638 ^ 0xBE39D436;
  v644 = (v607 ^ 0x5C6B7231 ^ v638) + (((v638 ^ 0xBE39D436) + (v623 ^ 0xAF3686FA)) ^ 0x97B7FAF9) + ((2 * ((v638 ^ 0xBE39D436) + (v623 ^ 0xAF3686FA))) & 0x2F6FF5F2) + 1749550343;
  HIDWORD(v126) = v638 ^ 0x39D436;
  LODWORD(v126) = v638 ^ 0xBE000000;
  v645 = (v126 >> 25) - ((2 * (v126 >> 25)) & 0x87E7BFD4);
  HIDWORD(v126) = v637 ^ 2;
  LODWORD(v126) = v638 ^ 0xBE39D434;
  v646 = (v126 >> 2) - ((2 * (v126 >> 2)) & 0xEBA1E354);
  HIDWORD(v126) = v638 ^ 0x1436;
  LODWORD(v126) = v638 ^ 0xBE39C000;
  v647 = ((v645 + 1140056042) ^ 0xE9A53C9A ^ (v642 + 1477296237)) + v592;
  v648 = (v634 ^ 0x79B1B35D ^ (v644 - ((2 * v644) & 0x69AB2740) + 886412192)) + ((v646 + 1976627626) ^ ((v126 >> 13) - ((2 * (v126 >> 13)) & 0x642B86CC) + 840287078) ^ (v639 - 2055449502) ^ 0xC2B966AE);
  v649 = (HIDWORD(v877) ^ 0x12D764B7) + (((v623 ^ 0x25F4A28E ^ (v647 - ((2 * v647) & 0x158448E8) - 1966988172)) + 846739860) ^ 0x5FF67EBA) + ((2 * ((v623 ^ 0x25F4A28E ^ (v647 - ((2 * v647) & 0x158448E8) - 1966988172)) + 846739860)) & 0xBFECFD74) - 1609989817;
  v650 = ((2 * v648) & 0xFFADEDEC) + (v648 ^ 0xFFD6F6F6) + (v649 ^ 0xEC7D6757) + ((2 * v649) & 0xD8FACEAE);
  v651 = v650 - ((2 * v650 + 660030310) & 0xC505AB72);
  v652 = v651 - 164726932;
  v653 = (v651 - 164726932) ^ 0xE282D5B9;
  v654 = ((2 * (v653 - (v638 ^ 0xBE39D436))) & 0xBEABFFFE) + ((v653 - (v638 ^ 0xBE39D436)) ^ 0x5F55FFFF);
  HIDWORD(v126) = (v651 - 164726932) ^ 0xFFFFFFF9;
  LODWORD(v126) = (v651 - 164726932) ^ 0xE282D580;
  v655 = v126 >> 6;
  HIDWORD(v126) = (v651 - 164726932) ^ 0x82D5B9;
  LODWORD(v126) = (v651 - 164726932) ^ 0xE2000000;
  v656 = v126 >> 25;
  HIDWORD(v126) = (v651 - 164726932) ^ 0x5B9;
  LODWORD(v126) = (v651 - 164726932) ^ 0xE282D000;
  v657 = v126 >> 11;
  HIDWORD(v126) = (v651 - 164726932) ^ 0x15B9;
  LODWORD(v126) = (v651 - 164726932) ^ 0xE282C000;
  v658 = v126 >> 13;
  HIDWORD(v126) = (v651 - 164726928) ^ 1;
  LODWORD(v126) = (v651 - 164726932) ^ 0xE282D5B8;
  v659 = v126 >> 2;
  v660 = (v658 ^ 0x848010D6) + (v659 ^ 0xF2EB7B77);
  v661 = (v656 ^ 0xDEAB7F4D) + ((2 * v656) & 0xBD56FE9A) + 559186100 + ((v657 - ((2 * v657) & 0x7EE4E356) + 1064464811) ^ (v655 - ((2 * v655) & 0x2567CA22) - 1833704175) ^ 0x523E6B45);
  v662 = ((2 * v659) & 0xE5D6F6EE) - ((2 * v658) & 0xF6FFDE52) + v660 + 1;
  HIDWORD(v126) = v652 ^ 0x2D5B9;
  LODWORD(v126) = v652 ^ 0xE2800000;
  v663 = ((v638 ^ 0xBE39D436) - (v623 ^ 0xAF3686FA) - ((2 * ((v638 ^ 0xBE39D436) - (v623 ^ 0xAF3686FA))) & 0xE1F330C6) + 1895405667) ^ v623 ^ v652 ^ (v654 - 1599471615);
  v664 = v615 + (v661 ^ 0xD5DF16BF) + ((2 * v661) & 0xABBE2D7E) + 706799937;
  v665 = (((v663 ^ 0x3D4DCB20) - 1930955646 - 2 * ((v663 ^ 0x3D4DCB20) & 0xCE7F486 ^ v663 & 4)) ^ 0x8CE7F482) + (((v126 >> 22) - ((2 * (v126 >> 22)) & 0x6A3D34A4) - 1256285614) ^ 0x2734DAEC ^ (v662 - 2 * ((v662 + 143946674) & 0x122A40BF ^ (v660 + 1) & 1) + 448705648));
  v666 = v653 + ((((2 * v623) ^ 0x5E6D0DF4) - 1862363686 - ((2 * ((2 * v623) ^ 0x5E6D0DF4)) & 0x21FD2BB4)) ^ 0x90FE95DA);
  v667 = v876 + (v666 ^ 0x7F9775CD) + ((2 * v666) & 0xFF2EEB9A) - v654 + (v664 ^ 0x7BFE77BD) + ((2 * v664) & 0xF7FCEF7A) - 1610241713;
  v668 = ((2 * v667) & 0xF1E7FFBA) + (v667 ^ 0xF8F3FFDD) + (v665 ^ 0x39D8FFED) + ((2 * v665) & 0x73B1FFDA);
  v669 = v668 - ((2 * v668 + 442892396) & 0x4DEF403A) - 198533037;
  v670 = v669 ^ 0x26F7A01D;
  HIDWORD(v126) = v669 ^ 0x37A01D;
  LODWORD(v126) = v669 ^ 0x26C00000;
  v671 = v126 >> 22;
  v672 = (v669 ^ 0x26F7A01D) + (v638 ^ 0xBE39D436);
  v673 = v638 ^ 0x5CBB018F ^ v652;
  v674 = v673 + v643 - ((2 * (v673 + v643)) & 0x1C97E1F8);
  v675 = v673 + 558499 + (v672 ^ 0xFFF77A5D);
  HIDWORD(v126) = v669 ^ 0x1D;
  LODWORD(v126) = v669 ^ 0x26F7A000;
  v676 = v126 >> 13;
  HIDWORD(v126) = v669 ^ 0x1D;
  LODWORD(v126) = v669 ^ 0x26F7A000;
  v677 = v126 >> 11;
  v678 = v675 + ((2 * v672) & 0xFFEEF4BA);
  HIDWORD(v126) = v669 ^ 0x1D;
  LODWORD(v126) = v669 ^ 0x26F7A000;
  v679 = v126 >> 6;
  HIDWORD(v126) = v669 ^ 0xF7A01D;
  LODWORD(v126) = v669 ^ 0x26000000;
  v680 = v126 >> 25;
  v681 = (v652 ^ 0xC47575A4 ^ v669) + (v678 ^ 0x861211B0) - ((2 * v678) & 0xF3DBDC9E);
  HIDWORD(v126) = v669 ^ 1;
  LODWORD(v126) = v669 ^ 0x26F7A01C;
  v682 = v624 + (v680 ^ 0x824064E6) + (v677 ^ 0x204E4275) + (v679 ^ 0x8210260) - ((2 * v677) & 0xBF637B14) - ((2 * v680) & 0xFB7F3632) - ((2 * v679) & 0xEFBDFB3E) + 1431328325;
  v683 = (v674 + 239857916) ^ 0xEA50F302 ^ (v682 - ((2 * v682) & 0xC83607FC) - 467991554);
  v684 = (v671 ^ 0xAE0FDFBE) + (v676 ^ 0x77BCF3BB) + ((v126 >> 2) ^ 0x7FBDFB7F) + ((2 * v671) & 0x5C1FBF7C) + ((2 * v676) & 0xEF79E776) + ((2 * (v126 >> 2)) & 0xFF7BF6FE) + ((v681 + 2045636176) ^ 0xFFDA9D3F) + ((2 * (v681 + 2045636176)) & 0xFFB53A7E) + 1520079817 + (v880 ^ 0x6991C500 ^ (v683 - ((2 * v683 + 516746820) & 0x364B17A8) + 1250689782));
  v685 = v684 - 814556247 - ((2 * v684) & 0x9EE5B752);
  v686 = ((2 * ((v685 ^ 0xCF72DBA9) - v653)) & 0x7DEEB6F6) + (((v685 ^ 0xCF72DBA9) - v653) ^ 0xBEF75B7B);
  v687 = ((2 * ((v685 ^ 0xCF72DBA9) - (v669 ^ 0x26F7A01D))) & 0xFF5B7BBE) + (((v685 ^ 0xCF72DBA9) - (v669 ^ 0x26F7A01D)) ^ 0x7FADBDDF);
  HIDWORD(v126) = v685 ^ 0x1BA9;
  LODWORD(v126) = v685 ^ 0xCF72C000;
  v688 = v126 >> 13;
  HIDWORD(v126) = v685 ^ 0x29;
  LODWORD(v126) = v685 ^ 0xCF72DB80;
  v689 = v126 >> 6;
  v690 = ((v686 + 1091085445) ^ (v687 - 2142092767)) + 1494783960 - ((2 * ((v686 + 1091085445) ^ (v687 - 2142092767))) & 0xB2312FB0);
  HIDWORD(v126) = v685 ^ 0x3A9;
  LODWORD(v126) = v685 ^ 0xCF72D800;
  v691 = v126 >> 11;
  v692 = (((v669 ^ 0x26F7A01D) + v653) ^ 0x22921288) - ((2 * ((v669 ^ 0x26F7A01D) + v653)) & 0xBADBDAEE) + v687 + v686 + 1;
  HIDWORD(v126) = v685 ^ 0x172DBA9;
  LODWORD(v126) = v685 ^ 0xCE000000;
  v693 = v126 >> 25;
  HIDWORD(v126) = v685 ^ 1;
  LODWORD(v126) = v685 ^ 0xCF72DBA8;
  v694 = v126 >> 2;
  v695 = v643 + (v693 ^ 0x6038122) + (v689 ^ 0x229280D) + (v691 ^ 0xFFDFAFAF) - ((2 * v689) & 0xFBADAFE4) - ((2 * v693) & 0xF3F8FDBA);
  v696 = (v695 + ((2 * v691) & 0xFFBF5F5E) - 135026910 - ((2 * (v695 + ((2 * v691) & 0xFFBF5F5E) - 135026910)) & 0xA4DE7A50) + 1383021864) ^ 0x576938D4 ^ ((v690 ^ 0x591897D8) + v653 - ((2 * ((v690 ^ 0x591897D8) + v653)) & 0xA0C0BF8) + 84280828);
  HIDWORD(v126) = v685 ^ 0x32DBA9;
  LODWORD(v126) = v685 ^ 0xCF400000;
  v697 = ((v126 >> 22) ^ 0xEA7DFAF5) + (v694 ^ 0x7DF4FDFF) + (v688 ^ 0x18100D10) + ((2 * (v126 >> 22)) & 0xD4FBF5EA) + ((2 * v694) & 0xFBE9FBFE) - ((2 * v688) & 0xCFDFE5DE) + 1;
  v698 = (HIDWORD(v895) ^ 0x6379A397 ^ (v696 - ((2 * v696 + 1845629730) & 0x70EC775C) - 277396161)) + ((v692 - ((2 * v692 + 1032955962) & 0x6BEB931A) - 725705302) ^ 0x34C3A8F1 ^ (v697 - ((2 * v697 + 49935350) & 0x26CC2F8) - 2135729289));
  v699 = v698 + 540872704 - ((2 * v698) & 0x407A20FE);
  v700 = v699 + 127;
  v701 = (v699 + 127) ^ 0x203D107F;
  v702 = ((2 * (v701 + (v685 ^ 0xCF72DBA9))) & 0xFD33FAFE) + ((v701 + (v685 ^ 0xCF72DBA9)) ^ 0x7E99FD7F);
  HIDWORD(v126) = (v699 + 127) ^ 0x7F;
  LODWORD(v126) = (v699 + 127) ^ 0x203D1000;
  v703 = (v126 >> 11) - ((2 * (v126 >> 11)) & 0xFF902262);
  v704 = ((2 * (v701 - (v669 ^ 0x26F7A01D))) & 0xADEB7CFE) + ((v701 - (v669 ^ 0x26F7A01D)) ^ 0x56F5BE7F);
  v705 = (v685 ^ 0xEF4FCBD6 ^ (v699 + 127)) + 1458945663 - v704;
  HIDWORD(v126) = -128 - v699;
  LODWORD(v126) = (v699 + 127) ^ 0x203D1040;
  v706 = (v669 ^ 0xE9857BB4 ^ v685) + v702 + v704 + 712000514;
  v707 = ((v126 >> 6) - ((2 * (v126 >> 6)) & 0xA6A14F6E) - 749688905) ^ (v703 - 3665615);
  HIDWORD(v126) = (v699 + 127) ^ 0x3D107F;
  LODWORD(v126) = (v699 + 127) ^ 0x20000000;
  v708 = ((v126 >> 25) ^ 0x804A88C8) - ((2 * (v126 >> 25)) & 0xFF6AEE6E) + 2142598968 + (v707 ^ 0x2C98B686);
  v709 = v126 >> 22;
  v710 = v653 + (v708 ^ 0xFFBB5FFE) + ((2 * v708) & 0xFF76BFFC) + 4497410;
  HIDWORD(v126) = -156 - v699;
  LODWORD(v126) = (v699 + 127) ^ 0x203D107C;
  v711 = (v126 >> 2) - ((2 * (v126 >> 2)) & 0x3D9CD56A);
  HIDWORD(v126) = v700 ^ 0xFFFFF07F;
  LODWORD(v126) = v700 ^ 0x203D0000;
  v712 = v669 ^ (v705 - ((2 * v705) & 0x46EE0F04) - 1552480382) ^ 0xF521C113 ^ (v710 - ((2 * v710) & 0xE142CD18) + 1889625740);
  v713 = (v709 ^ 0x53010986) - ((2 * v709) & 0x59FDECF2) + (v706 ^ 0xC00640B0) + (((v126 >> 13) - ((2 * (v126 >> 13)) & 0xE89AE55E) + 1951232687) ^ (v711 - 1630639435) ^ 0xEA83181A) - ((2 * v706) & 0x7FF37E9E) - 319244854;
  v714 = v878 + ((v712 - 1298429573) ^ 0x57EE7FDF) + ((2 * (v712 - 1298429573)) & 0xAFDCFFBE) - 1475248095;
  v715 = ((2 * v713) & 0xCFDFFD72) + (v713 ^ 0xE7EFFEB9) + (v714 ^ 0x6EF9BDF7) + ((2 * v714) & 0xDDF37BEE);
  v716 = v715 - 2 * ((v715 + 152453968) & 0x17B09938 ^ v715 & 8) - 1060709248;
  v717 = v716 ^ 0x17B09930;
  HIDWORD(v126) = v716 ^ 0x130;
  LODWORD(v126) = v716 ^ 0x17B09800;
  v718 = v126 >> 11;
  HIDWORD(v126) = v715;
  LODWORD(v126) = v716 ^ 0x17B09930;
  v719 = v126 >> 2;
  HIDWORD(v126) = v716 ^ 0x1B09930;
  LODWORD(v126) = v716 ^ 0x16000000;
  v720 = v126 >> 25;
  v721 = v719 - ((2 * v719) & 0xEF8CC09C);
  HIDWORD(v126) = v716 ^ 0x309930;
  LODWORD(v126) = v716 ^ 0x17800000;
  v722 = v126 >> 22;
  v723 = v701 + (((v716 ^ 0x17B09930) + (v685 ^ 0xCF72DBA9)) ^ 0x6FFFFB9E) + ((2 * ((v716 ^ 0x17B09930) + (v685 ^ 0xCF72DBA9))) & 0xDFFFF73C) - 1879047070;
  v724 = (v716 ^ 0x17B09930) + (v723 ^ 0x62522089) - ((2 * v723) & 0x3B5BBEEC) - 1649549449;
  v725 = v724 - 504901833 - ((2 * v724) & 0xC3CF9E6E);
  v726 = v716 ^ v700;
  v727 = (v716 ^ v700 ^ 0x378D894F) - (v685 ^ 0xD8C24299 ^ v716);
  HIDWORD(v126) = v716 ^ 0x30;
  LODWORD(v126) = v716 ^ 0x17B09900;
  v728 = v126 >> 6;
  v729 = ((v702 - 2124021119) ^ 0xE1E7CF37 ^ v725) - 1864837430 - ((2 * ((v702 - 2124021119) ^ 0xE1E7CF37 ^ v725)) & 0x21B1AD94);
  HIDWORD(v126) = v716 ^ 0x1930;
  LODWORD(v126) = v716 ^ 0x17B08000;
  v730 = (v722 ^ 0x55248442) - ((2 * v722) & 0x55B6F77A) - 1428456514 + ((v721 - 137994162) ^ ((v126 >> 13) - ((2 * (v126 >> 13)) & 0x11B08936) - 1999092581) ^ 0x7F1E24D5);
  v731 = (v730 ^ 0xEFFBBFB7) + ((2 * v730) & 0xDFF77F6E) + 268714057 + (v729 ^ 0x90D8D6CA);
  v732 = (v685 ^ 0xCF72DBA9) + (v727 ^ 0x5AFDD7F3) + ((2 * v727) & 0xB5FBAFE6) - 1526585331;
  v733 = v670 + (v720 ^ 0x66450E08) + (v728 ^ 0x147A019) + (v718 ^ 0x29DF73FD) - ((2 * v728) & 0xFD70BFCC) - ((2 * v720) & 0x3375E3EE) + ((2 * v718) & 0x53BEE7FA) + (v732 ^ 0x404C9290) - ((2 * v732) & 0x7F66DADE) + 776424274;
  v734 = (HIDWORD(v893) ^ 0x1AED6189 ^ (((2 * v733) & 0x9DFFFCFE) + (v733 ^ 0xCEFFFE7F) - ((2 * (((2 * v733) & 0x9DFFFCFE) + (v733 ^ 0xCEFFFE7F)) + 1960463116) & 0xC57E4622) + 489441431)) + (v731 ^ 0x5FDEEFDD) + ((2 * v731) & 0xBFBDDFBA) - 1608445917;
  v735 = v734 - 1334412071 - ((2 * v734) & 0x60ECF9B2);
  v736 = ((2 * (v735 ^ v716)) & 0x9F971BBE ^ 0xF850B92) + (v735 ^ v716 ^ 0x680D6836);
  HIDWORD(v126) = v735 ^ 0x4D9;
  LODWORD(v126) = v735 ^ 0xB0767800;
  v737 = v126 >> 11;
  v738 = v735 ^ 0xB0767CD9;
  HIDWORD(v126) = v735 ^ 0x99999999;
  LODWORD(v126) = v735 ^ 0xB0767CC0;
  v739 = v126 >> 6;
  HIDWORD(v126) = v735 ^ 0x767CD9;
  LODWORD(v126) = v735 ^ 0xB0000000;
  v740 = v126 >> 25;
  v741 = v736 + (v700 ^ 0x6FB49359 ^ v735) - ((2 * (v736 + (v700 ^ 0x6FB49359 ^ v735)) + 6874180) & 0xE2E5D7A);
  v742 = (((v735 ^ 0xB0767CD9) - (v716 ^ 0x17B09930)) ^ 0x7F5F2FF7) + ((v701 - (v735 ^ 0xB0767CD9)) ^ 0xF6E7EDFC) + ((2 * (v701 - (v735 ^ 0xB0767CD9))) & 0xEDCFDBF8) + ((2 * ((v735 ^ 0xB0767CD9) - (v716 ^ 0x17B09930))) & 0xFEBE5FEE);
  v743 = (v742 - ((2 * v742 + 326222874) & 0x4D8A128C) + 813558611) ^ v700;
  HIDWORD(v126) = v735 ^ 0x1CD9;
  LODWORD(v126) = v735 ^ 0xB0766000;
  v744 = v126 >> 13;
  v745 = (v740 ^ 0x80008C0) + (v737 ^ 0x8165E810) + (v739 ^ 0x5DFDF41E) + ((2 * v739) & 0xBBFBE83C) - ((2 * v740) & 0xEFFFEE7E) - ((2 * v737) & 0xFD342FDE);
  HIDWORD(v126) = v735 ^ 0x367CD9;
  LODWORD(v126) = v735 ^ 0xB0400000;
  v746 = v126 >> 22;
  HIDWORD(v126) = v743 ^ 0xF81939;
  LODWORD(v126) = v743 ^ 0x86000000;
  v747 = (v126 >> 24) - 461369883 - ((2 * (v126 >> 24)) & 0xC9000EF4) - 1643;
  HIDWORD(v126) = v735 ^ 1;
  LODWORD(v126) = v735 ^ 0xB0767CD8;
  v748 = v126 >> 2;
  HIDWORD(v126) = v747 ^ 0x7A;
  LODWORD(v126) = v747 ^ 0xE4800700;
  v749 = (v746 ^ 0x21E71040) + (v744 ^ 0x23E2820A) + (v748 ^ 0x5BFFE76E) + ((2 * v748) & 0xB7FFCEDC) - ((2 * v746) & 0xBC31DF7E) - ((2 * v744) & 0xB83AFBEA) + 2;
  v750 = (v685 ^ (v745 + 2 - 2 * ((v745 + 412883730) & 0x4AF9E444 ^ (v745 + 2) & 4) - 476709040) ^ 0xB1026966 ^ ((v126 >> 8) - ((2 * (v126 >> 8)) & 0x6912AD1E) - 1266067825)) + 1088089828;
  v751 = (v905 ^ 0x3EAF4F2D) + (v750 ^ 0xFFFF9FB5) + ((2 * v750) & 0xFFFF3F6A) + 24652;
  v752 = (v726 ^ (v741 - 1219780385) ^ 0x2B25DE16 ^ (v749 - ((2 * v749 + 1013779596) & 0x377EF3C8) - 101318614)) + (v751 ^ 0xC7F7FED) + ((2 * v751) & 0x18FEFFDA) - 209682413;
  v753 = v752 + 177102045 - ((2 * v752) & 0x151CB9BA);
  v754 = v753 ^ 0xA8E5CDD;
  v755 = (v753 ^ 0xA8E5CDD) + (v735 ^ 0xB0767CD9);
  HIDWORD(v126) = v753 ^ 0xDDDDDDDD;
  LODWORD(v126) = v753 ^ 0xA8E5CC0;
  v756 = (v126 >> 6) - ((2 * (v126 >> 6)) & 0x382780C2);
  HIDWORD(v126) = v753 ^ 1;
  LODWORD(v126) = v753 ^ 0xA8E5CDC;
  v757 = (v126 >> 2) - ((2 * (v126 >> 2)) & 0xF573EDB2);
  HIDWORD(v126) = v753 ^ 0x4DD;
  LODWORD(v126) = v753 ^ 0xA8E5800;
  v758 = (v126 >> 11) - ((2 * (v126 >> 11)) & 0x245739B6);
  HIDWORD(v126) = v753 ^ 0x8E5CDD;
  LODWORD(v126) = v753 ^ 0xA000000;
  v759 = v126 >> 25;
  HIDWORD(v126) = v753 ^ 0xE5CDD;
  LODWORD(v126) = v753 ^ 0xA800000;
  v760 = (v126 >> 22) - ((2 * (v126 >> 22)) & 0xB3CCAB5E);
  HIDWORD(v126) = v753 ^ 0x1CDD;
  LODWORD(v126) = v753 ^ 0xA8E4000;
  v761 = v753 ^ v716;
  v762 = (v759 ^ 0x7FEE7BBF) + ((2 * v759) & 0xFFDCF77E) - 2146335678 + ((v758 + 304848091) ^ (v756 - 1676427167) ^ 0x71C7A345);
  v763 = (v761 ^ 0x29C556A2 ^ (v755 - ((2 * v755) & 0x69F7269E) + 888902479)) + v717;
  v764 = v736 + 808743457 + (v761 ^ 0xCF5FC287 ^ (v755 - ((2 * v755) & 0xA4C20ED4) - 765393046));
  v765 = (HIDWORD(v867) ^ 0x8B050AB5) + (v763 ^ 0xBEDFF77B) + ((2 * v763) & 0x7DBFEEF6) + ((v701 + (v762 ^ 0x47EFFBFB) + ((2 * v762) & 0x8FDFF7F6) - 1206909947) ^ 0x37EEEF73) + ((2 * (v701 + (v762 ^ 0x47EFFBFB) + ((2 * v762) & 0x8FDFF7F6) - 1206909947)) & 0x6FDDDEE6) - 544168403;
  v766 = (v764 ^ 0x20E2122) + ((v757 + 2059007705) ^ ((v126 >> 13) - ((2 * (v126 >> 13)) & 0x61C54EBC) + 820160350) ^ (v760 - 639216209) ^ 0x93BD0428) - ((2 * v764) & 0xFBE3BDBA) - 34480418;
  v767 = ((2 * v766) & 0xFFFFF7D8) + (v766 ^ 0xFFFFFBEC) + (v765 ^ 0xE3EDF7DF) + ((2 * v765) & 0xC7DBEFBE);
  v768 = v767 - ((2 * v767 + 941889642) & 0xFFBA4484);
  v769 = v768 + 468659831;
  v770 = (v768 + 468659831) ^ 2;
  v771 = (v768 + 468659831) ^ 0xFFDD2240;
  v772 = (v768 + 468659831) ^ 0x242;
  v773 = (v768 + 468659831) ^ 0xFFDD2000;
  v774 = (v768 + 468659831) ^ 0x1DD2242;
  v768 = -468659832 - v768;
  v775 = ((__PAIR64__(v772, v773) >> 11) ^ 0x7EB9F7FF) + ((__PAIR64__(v770, v771) >> 6) ^ 0x573FA5AF) + ((2 * (__PAIR64__(v770, v771) >> 6)) & 0xAE7F4B5E) + ((2 * (__PAIR64__(v772, v773) >> 11)) & 0xFD73EFFE);
  v776 = v775 - ((2 * v775 + 1410122916) & 0xBC12AA9C) + 135247776;
  v777 = (__PAIR64__(v772, v773) >> 13) - ((2 * (__PAIR64__(v772, v773) >> 13)) & 0x8267E3FE) + 1093923327;
  v778 = (v753 ^ 0xF5537E9F ^ v769) + (v735 ^ 0x4FAB5E9B ^ v769);
  v779 = v778 ^ 0x40C204D;
  v780 = (2 * v778) & 0xF7E7BF64;
  v781 = v769 ^ 0xFFDD2242;
  HIDWORD(v126) = v769 ^ 0x1D2242;
  LODWORD(v126) = v768;
  v782 = (__PAIR64__(v770, v771) >> 2) - ((2 * (__PAIR64__(v770, v771) >> 2)) & 0x24BF55A4);
  v783 = (v753 ^ 0xA8E5CDD) - (v769 ^ 0xFFDD2242);
  v784 = ((__PAIR64__(v774, v768) >> 25) - ((2 * (__PAIR64__(v774, v768) >> 25)) & 0x84281F46) - 1038872669) ^ 0x1C1D5AED ^ v776;
  v785 = (v753 ^ 0xA8E5CDD) + ((v784 + v717) ^ 0x8EEBDDBF) + ((2 * (v784 + v717)) & 0x1DD7BB7E) + 1897144897;
  v786 = (v735 ^ 0xBAF82004 ^ v753) - 67903565 + v779 - v780;
  v787 = (v786 ^ 0x9FFFFF74) + 1610611583 + ((2 * v786) & 0x3FFFFEE8) + ((v782 - 1839224110) ^ v777 ^ ((v126 >> 22) - ((2 * (v126 >> 22)) & 0xD446D49A) + 1780705869) ^ 0xB94F3160) + 1293;
  v788 = (v787 ^ 0x7FFFFFFD) + ((2 * v787) & 0xFFFFFFFB) - 2147483645 + (HIDWORD(v882) ^ 0xAAAD1B75 ^ (((2 * v785) & 0xF77CABEC) + (v785 ^ 0xFBBE55F6) - ((2 * (((2 * v785) & 0xF77CABEC) + (v785 ^ 0xFBBE55F6)) - 1570586450) & 0xAD6A686A) + 669422732));
  v789 = v788 - 2080218759 - ((2 * v788) & 0x804C2F2);
  v790 = v789 ^ 0x84026179;
  HIDWORD(v126) = v789 ^ 0x26179;
  LODWORD(v126) = v789 ^ 0x84000000;
  v791 = v126 >> 22;
  v792 = (v753 ^ 0x7173C25B ^ v789) + (((v789 ^ 0x84026179) + (v769 ^ 0xFFDD2242)) ^ 0xFFDFEEFB) + ((2 * ((v789 ^ 0x84026179) + (v769 ^ 0xFFDD2242))) & 0xFFBFDDF6) + 2101510;
  v793 = ((2 * v783) & 0x6BF6FD8C) + (v783 ^ 0x35FB7EC6);
  HIDWORD(v126) = v789 ^ 0x179;
  LODWORD(v126) = v789 ^ 0x84026000;
  v794 = v126 >> 11;
  v795 = v793 + (v792 ^ 0x7F4BFBF7) + ((2 * v792) & 0xFE97F7EE) - ((2 * (v793 + (v792 ^ 0x7F4BFBF7) + ((2 * v792) & 0xFE97F7EE)) - 1787753850) & 0xF6632652) - 974514068;
  HIDWORD(v126) = v789 ^ 0x26179;
  LODWORD(v126) = v789 ^ 0x84000000;
  v796 = v126 >> 25;
  HIDWORD(v126) = v789 ^ 0x179;
  LODWORD(v126) = v789 ^ 0x84026000;
  v797 = v126 >> 13;
  HIDWORD(v126) = v789 ^ 0xFFFFFFF9;
  LODWORD(v126) = v789 ^ 0x84026140;
  v798 = v126 >> 6;
  HIDWORD(v126) = v789 ^ 1;
  LODWORD(v126) = v789 ^ 0x84026178;
  v799 = (v791 ^ 0x9A000600) + 1711274496 - ((2 * v791) & 0xCBFFF3FE) + ((v797 - ((2 * v797) & 0xAB7707CC) + 1438352358) ^ ((v126 >> 2) - 138465334 - ((2 * (v126 >> 2)) & 0xEF7E5F94)) ^ 0xA204AC2C);
  v800 = v738 + (v796 ^ 0x1041008) + (v794 ^ 0x46BDAFFF) + (v798 ^ 0x5FEFEAB3) + ((2 * v794) & 0x8D7B5FFE) + ((2 * v798) & 0xBFDFD566) - ((2 * v796) & 0xFDF7DFEE) + 1481528646;
  v801 = (v769 ^ 0xFFDD2242) + (v800 ^ 0x7FFAAFFA) + ((2 * v800) & 0xFFF55FF4) - 2147135482;
  v802 = (v882 ^ 0x4D50585D ^ (((2 * v801) & 0xBF7DEF1E) + (v801 ^ 0xDFBEF78F) - ((2 * (((2 * v801) & 0xBF7DEF1E) + (v801 ^ 0xDFBEF78F)) + 34855012) & 0xF6360E2A) + 2082796359)) + ((v799 - ((2 * v799) & 0x6654D098) + 858417228) ^ 0x481BFB65 ^ v795);
  v803 = v802 - 2130804736 - ((2 * v802) & 0x1FD1526);
  v804 = v803 + 2707;
  v805 = (v803 + 2707) ^ 0x80FE8A93;
  v806 = v805 + (v789 ^ 0x84026179) - ((2 * (v805 + (v789 ^ 0x84026179))) & 0x4F907956) - 1480049493;
  HIDWORD(v126) = (v803 + 2707) ^ 0xA93;
  LODWORD(v126) = (v803 + 2707) ^ 0x80FE8000;
  v807 = (v126 >> 13) - ((2 * (v126 >> 13)) & 0xE59D75E0) - 221332752;
  HIDWORD(v126) = (v803 + 2707) ^ 0xFE8A93;
  LODWORD(v126) = v803 + HIDWORD(a15);
  v808 = v126 >> 25;
  HIDWORD(v126) = -2732 - v803;
  LODWORD(v126) = (v803 + 2707) ^ 0x80FE8A90;
  v809 = ((v805 - (v769 ^ 0xFFDD2242) - ((2 * (v805 - (v769 ^ 0xFFDD2242))) & 0xC7A147BE) - 472865825) ^ v806 ^ 0x44189F74) + (v769 ^ 0xFFDD2242);
  v810 = (v126 >> 2) - ((2 * (v126 >> 2)) & 0x6391CD0A);
  HIDWORD(v126) = v804 ^ 0x13;
  LODWORD(v126) = v804 ^ 0x80FE8A80;
  v811 = v126 >> 6;
  HIDWORD(v126) = v804 ^ 0x3E8A93;
  LODWORD(v126) = v804 ^ 0x80FFFFFF;
  v812 = v126 >> 22;
  HIDWORD(v126) = v804 ^ 0x293;
  LODWORD(v126) = v804 ^ 0x80FE8800;
  v813 = (v789 ^ 0x4FCEBEA ^ v804) + (v769 ^ 0x7F23A8D1 ^ v804);
  v814 = (v769 ^ 0x7BDF433B ^ v789) + (v813 ^ 0x9FFEFDEB) + ((2 * v813) & 0x3FFDFBD6) + 1610678805;
  v815 = v754 + (v808 ^ 0x20364) + (v811 ^ 0x18282088) + ((v126 >> 11) ^ 0x42FEC7FB) - ((2 * v811) & 0xCFAFBEEE) - ((2 * v808) & 0xFFFBF936) + ((2 * (v126 >> 11)) & 0x85FD8FF6) - 1529408487;
  v816 = (v812 ^ 0xCC643840) - ((2 * v812) & 0x67378F7E) + 865847232 + (v807 ^ (v810 + 835249797) ^ 0xC3065C75);
  v817 = (HIDWORD(v880) ^ 0x4E749578) + (v809 ^ 0xBFCF7A0E) + (v815 ^ 0x7FEFB7FF) + ((2 * v809) & 0x7F9EF41C) + ((2 * v815) & 0xFFDF6FFE) + 1983384370;
  v818 = ((v814 - ((2 * v814) & 0xDFE95EBE) + 1878306655) ^ 0x289570A9 ^ (v816 - ((2 * v816) & 0x8EC3BFEC) + 1197596662)) + (v817 ^ 0x33F89AFE) + ((2 * v817) & 0x67F135FC) - 871930622;
  v819 = v818 + 273479546;
  v820 = v818 + 273479546 - ((2 * v818) & 0x2099EEF4);
  v821 = ((2 * (v820 ^ v804)) & 0x597FEFFE ^ 0x164EBD2) + (v820 ^ v804 ^ 0x3C0D8A16);
  v822 = (((v820 ^ 0x104CF77A) + (v789 ^ 0x84026179)) ^ 0xAC8121CA) - ((2 * ((v820 ^ 0x104CF77A) + (v789 ^ 0x84026179))) & 0xA6FDBC6A) + v821 + 1;
  HIDWORD(v126) = v820 ^ 0x177A;
  LODWORD(v126) = v820 ^ 0x104CE000;
  v823 = v126 >> 13;
  HIDWORD(v126) = v820 ^ 0x3A;
  LODWORD(v126) = v820 ^ 0x104CF740;
  v824 = v126 >> 6;
  HIDWORD(v126) = v820 ^ 0x77A;
  LODWORD(v126) = v820 ^ 0x104CF000;
  v825 = v126 >> 11;
  HIDWORD(v126) = v820 ^ 0x4CF77A;
  LODWORD(v126) = v820 ^ 0x10000000;
  v826 = v126 >> 25;
  v827 = (v789 ^ 0x944E9603 ^ v820) + (((v820 ^ 0x104CF77A) - v805) ^ 0xD7AFFE7E) + ((2 * ((v820 ^ 0x104CF77A) - v805)) & 0xAF5FFCFC) + 676331906;
  HIDWORD(v126) = v819 ^ 2;
  LODWORD(v126) = v820 ^ 0x104CF778;
  v828 = v126 >> 2;
  HIDWORD(v126) = v820 ^ 0xCF77A;
  LODWORD(v126) = v820 ^ 0x10400000;
  v829 = v790 + (v827 ^ 0xAFE6BCE7) + ((2 * v827) & 0x5FCD79CE) + 1343832857;
  v830 = v781 + (v825 ^ 0xE6480D14) + (v826 ^ 0x1DF781DF) + (v824 ^ 0x18440030) + ((2 * v826) & 0x3BEF03BE) - ((2 * v825) & 0x336FE5D6) - ((2 * v824) & 0xCF77FF9E) - 478383907;
  v831 = (HIDWORD(v869) ^ 0xB65C89CF) + (v830 ^ 0xE67B9F7E) + (v829 ^ 0xAE3FCFBF);
  v832 = ((2 * v830) & 0xCCF73EFC) + ((2 * v829) & 0x5C7F9F7E);
  v833 = (v823 ^ 0xC1039050) + (v828 ^ 0xFBFB5FFA) + ((v126 >> 22) ^ 0x21005315) + ((2 * v828) & 0xF7F6BFF4) - ((2 * (v126 >> 22)) & 0xBDFF59D4) - ((2 * v823) & 0x7DF8DF5E) + 570473633 + (v806 ^ 0x512EDCDA ^ (v822 - ((2 * v822 + 1300089964) & 0xEDCDC0E2) - 1650080089));
  v834 = ((2 * v833) & 0x6BC3CFF6) + (v833 ^ 0x35E1E7FB) + ((v831 + v832 - 539871583) ^ 0x5E62F5F7) + ((2 * (v831 + v832 - 539871583)) & 0xBCC5EBEE);
  v835 = v834 - ((2 * v834 + 1467368476) & 0x7BB566D6);
  v836 = v835 - 1449798279;
  HIDWORD(v126) = (v835 - 1449798279) ^ 0x2B;
  LODWORD(v126) = (v835 - 1449798279) ^ 0x3DDAB340;
  v837 = v126 >> 6;
  v838 = v837 ^ 0xEFB7FAFD;
  v839 = (2 * v837) & 0xDF6FF5FA;
  HIDWORD(v126) = (v835 - 1449798279) ^ 0x36B;
  LODWORD(v126) = (v835 - 1449798279) ^ 0x3DDAB000;
  v840 = v126 >> 11;
  v841 = (v835 - 1449798279) ^ 0x3DDAB36B;
  HIDWORD(v126) = (v835 - 1449798279) ^ 0x1DAB36B;
  LODWORD(v126) = (v835 - 1449798279) ^ 0x3C000000;
  v842 = v126 >> 25;
  HIDWORD(v126) = (v835 - 1449798279) ^ 0x1AB36B;
  LODWORD(v126) = (v835 - 1449798279) ^ 0x3DC00000;
  v843 = v126 >> 22;
  v844 = (v835 - 1449798279) ^ v804;
  v845 = v790 + (v842 ^ 0x88004104) + (v840 ^ 0xFEF8A23D) + v838 + ((2 * v840) & 0xFDF1447A) + v839 - ((2 * v842) & 0xEFFF7DF6);
  HIDWORD(v126) = ~(v835 - 1449798259);
  LODWORD(v126) = (v835 - 1449798279) ^ 0x3DDAB368;
  v846 = v126 >> 2;
  HIDWORD(v126) = v836 ^ 0x136B;
  LODWORD(v126) = v836 ^ 0x3DDAA000;
  v847 = (v846 ^ 0x7BE7D7FF) + ((v126 >> 13) ^ 0xFF7BF7FE) + (v843 ^ 0x6D008801) + ((2 * v846) & 0xF7CFAFFE) + ((2 * (v126 >> 13)) & 0xFEF7EFFC) - ((2 * v843) & 0x25FEEFFC) + 1;
  v848 = v805 + (((v844 ^ 0xBD2439F8) + ((v841 + (v820 ^ 0x104CF77A)) ^ 0xFAFDFBAF) + ((2 * (v841 + (v820 ^ 0x104CF77A))) & 0xF5FBF75E) + 84018257) ^ 0x1408429) - ((2 * ((v844 ^ 0xBD2439F8) + ((v841 + (v820 ^ 0x104CF77A)) ^ 0xFAFDFBAF) + ((2 * (v841 + (v820 ^ 0x104CF77A))) & 0xF5FBF75E) + 84018257)) & 0xFD7EF7AC) - 21005353;
  v849 = (v844 ^ 0xDB6DEAD7 ^ (v841 - (v820 ^ 0x104CF77A) - ((2 * (v841 - (v820 ^ 0x104CF77A))) & 0xCC93A65E) + 1716114223)) - v821;
  v850 = ((v906 - 1853386749) ^ 0xFFFF2ABD) + ((2 * (v906 - 1853386749)) & 0xFFFE557A) + ((v845 - 1991302718) ^ 0xF6EFEBC3) + (v848 ^ 0x7B6DFDB7) + ((2 * v848) & 0xF6DBFB6E) + ((2 * (v845 - 1991302718)) & 0xEDDFD786) - 2054013167 + ((v849 - ((2 * v849 + 427814910) & 0x21E45D5A) + 1035085484) ^ 0x969FB029 ^ (v847 - ((2 * v847 + 255283202) & 0xCDB3D08) + 503924357));
  v851 = v850 - 185564671 - ((2 * v850) & 0xE9E10402);
  v852 = (2 * ((v841 & (a58 ^ 0xF4D45EB)) - ((2 * (v841 & (a58 ^ 0xF4D45EB))) & 0x47844C7E)) - 947630978) ^ 0xC7844C7E;
  v853 = ((v852 - 595142213 - ((2 * v852) & 0xB90DB374)) ^ 0xDC86D9BB) + (a58 ^ 0x3297F680 ^ v836);
  HIDWORD(v126) = v851 ^ 1;
  LODWORD(v126) = v851 ^ 0xF4F08200;
  return (*(&off_1002D7880 + (((SHIDWORD(v892) < ((v891 - 2085813688) & 0x7C52FD1D ^ 0x612CC45A)) * (((v891 - 1206) | 0x41C) - 1192)) ^ v891)))(3153978362, (v126 >> 6) ^ 0xDDFEF1FD, 1630323013, 3959029698, v853 + 256722411 - ((2 * v853) & 0x1E9A8BD6), 4109402625, (v820 ^ 0x104CF77A) + (a60 ^ 0x47E48841) + 1206159425 - ((2 * ((v820 ^ 0x104CF77A) + (a60 ^ 0x47E48841))) & 0x8FC91082), 256722411, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v855, v856, v857, v858, v859, v860, v861, v862, v863, v864, v867, v869, v871, v872, v873, v874, v875, v876, v877, v878, v880, v882, v885, v888, v891, v892, a46, a47, a48, a49, v893, v895, a52);
}

uint64_t sub_10005FF40@<X0>(int a1@<W4>, int a2@<W6>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unsigned int a57)
{
  v60 = (v59 - 120);
  v60[6] = BYTE1(a1) ^ 0xAA;
  v60[3] = a2 ^ 0xAE;
  v60[8] = BYTE2(a3) ^ 0x94;
  v60[12] = HIBYTE(a3) ^ 0x29;
  v61 = (HIBYTE(a1) ^ 0xF) - ((2 * (HIBYTE(a1) ^ 0xF)) & 0xCA) - 27;
  v60[14] = v61 ^ 0xA;
  v572 = (a2 ^ 0x41) + v58 - ((2 * (a2 ^ 0x41)) & 0xD4);
  v573 = -(v61 ^ 0xE5);
  v570 = (BYTE2(a3) ^ 0x7B) - ((2 * (BYTE2(a3) ^ 0x7B)) & 0x140);
  v62 = *((LODWORD(STACK[0xC38]) ^ 0x5FFF7F77EFA3759FLL) + a9 + ((2 * (LODWORD(STACK[0xC38]) ^ 0x79564AE1u)) & 0x12DEA7EFCLL) - 0x6991072C11971240) ^ 0xD4;
  v563 = v62 - ((2 * v62) & 0x148);
  v63 = a57;
  v60[9] = BYTE2(a57) ^ 0x9B;
  v568 = (BYTE2(a57) ^ 0x74) - ((2 * (BYTE2(a57) ^ 0x74)) & 0x162);
  v64 = *((LODWORD(STACK[0xAB4]) ^ 0xFAEF5F7382F9E357) + a9 + ((2 * (LODWORD(STACK[0xAB4]) ^ 0x79564AE1u)) & 0x1F75F536CLL) - 0x480E72876517C78) ^ 0xD4;
  v65 = v64 - ((2 * v64) & 0x98);
  v66 = *((LODWORD(STACK[0xF40]) ^ 0x53DFB1FCC268F55ALL) + a9 + ((2 * (LODWORD(STACK[0xF40]) ^ 0x79564AE1u)) & 0x1767D7F76) - 0x5D7139B135E0927DLL) ^ 0xD4;
  v566 = v66 - ((2 * v66) & 0x1C);
  v565 = STACK[0x968];
  v67 = *((LODWORD(STACK[0x1248]) ^ 0x793BF7F3B421BD14) + a9 + ((2 * (LODWORD(STACK[0x1248]) ^ 0x79564AE1u)) & 0x19AEFEFEALL) + 0x7D328057B7E63549);
  v68 = *((LODWORD(STACK[0x930]) ^ 0x7FBBFF7D85A33531) + a9 + ((2 * (LODWORD(STACK[0x930]) ^ 0x79564AE1u)) & 0x1F9EAFFA0) + 0x76B278CD8868AD6ELL) ^ 0xD4;
  v69 = v68 - ((2 * v68) & 0x118);
  v70 = (v67 ^ 0xD4) - ((2 * (v67 ^ 0xD4)) & 0x11111111);
  v60[13] = HIBYTE(a57);
  v71 = (HIBYTE(v63) ^ 0xEF) - ((2 * (HIBYTE(v63) ^ 0xEF)) & 0xE0);
  v72 = *((LODWORD(STACK[0x16D4]) ^ 0x76FFB9FF1229F51ELL) + a9 + ((2 * (LODWORD(STACK[0x16D4]) ^ 0x79564AE1u)) & 0xD6FF7FFELL) + 0x7F6EBE4C19DE6D3FLL) ^ 0xD4;
  v73 = v72 - ((2 * v72) & 0x2C);
  v74 = *((LODWORD(STACK[0x1890]) ^ 0xFEF77A1F8CA23C5ALL) + a9 + ((2 * (LODWORD(STACK[0x1890]) ^ 0x79564AE1u)) & 0x1EBE8ED76) - 0x88901D47096497DLL) ^ 0xD4;
  v75 = v74 - ((2 * v74) & 0x2E);
  *v60 = a3 ^ 0xD0;
  v76 = (a3 ^ 0x3F) - ((2 * (a3 ^ 0x3F)) & 0x190);
  v77 = (HIBYTE(a3) ^ 0xC6) - ((2 * (HIBYTE(a3) ^ 0xC6)) & 0xFFFFFFCF);
  v60[4] = BYTE1(a3) ^ 0x11;
  v78 = (v57 + 114) ^ a57;
  v60[5] = BYTE1(a57) ^ 0x73;
  v79 = *((LODWORD(STACK[0x1A14]) ^ 0x3EFFFDFEAF8CA45CLL) + a9 + ((2 * (LODWORD(STACK[0x1A14]) ^ 0x79564AE1u)) & 0x1ADB5DD7ALL) - 0x489185B3517CC17FLL) ^ 0xD4;
  v80 = *((LODWORD(STACK[0x1550]) ^ 0xFEE8E7F393ED9106) + a9 + ((2 * (LODWORD(STACK[0x1550]) ^ 0x79564AE1u)) & 0x1D577B7CELL) - 0x87A6FA8655DAEA9) ^ 0xD4;
  v81 = v80 - ((2 * v80) & 0x2E);
  v82 = ((((v69 << 16) - 1702100992) ^ 0x9A8C0000) - ((2 * (((v69 << 16) - 1702100992) ^ 0x9A8C0000)) & 0x78840000) + 2084713325) ^ 0x7C42336D | ((((v65 << 8) + 719014912) ^ 0x2ADB4C00) - ((2 * (((v65 << 8) + 719014912) ^ 0x2ADB4C00)) & 0xE727600) + 121191368) ^ 0x7393BC8;
  v83 = v82 - ((2 * v82) & 0x490D4564);
  v84 = ((((BYTE1(a3) ^ 0xFE) - ((2 * (BYTE1(a3) ^ 0xFE)) & 0x68)) << 16) - 902561792) ^ 0xCA340000;
  v85 = ((((BYTE1(v63) ^ 0x9C) - ((2 * (BYTE1(v63) ^ 0x9C)) & 0x5C)) << 8) + 1250110976) ^ 0x4A832E00;
  v86 = (v85 - ((2 * v85) & 0x6EF01000) - 143128378) ^ 0xF77808C6 | (v84 - ((2 * v84) & 0xED80000) - 2022942065) ^ 0x876C5A8F;
  v87 = *((LODWORD(STACK[0x19DC]) ^ 0xFF9FFDBF1AA3357CLL) + a9 + ((2 * (LODWORD(STACK[0x19DC]) ^ 0x79564AE1u)) & 0xC7EAFF3ALL) - 0x9318573DE97525FLL) ^ 0xD4;
  v88 = v87 - ((2 * v87) & 0x76);
  v89 = *((LODWORD(STACK[0x1858]) ^ 0x37FEEEF7CEA8B67ELL) + a9 + ((2 * (LODWORD(STACK[0x1858]) ^ 0x79564AE1u)) & 0x16FFDF93ELL) - 0x419076AC32A0CF61) ^ 0xD4;
  v90 = *((LODWORD(STACK[0x13CC]) ^ 0xF779F53788E9B3CCLL) + a9 + ((2 * (LODWORD(STACK[0x13CC]) ^ 0x79564AE1u)) & 0x1E37FF25ALL) - 0x10B7CEC6C61CBEFLL) ^ 0xD4;
  v574 = v57;
  v91 = v90 - ((2 * v90) & 0x78);
  v60[15] = HIBYTE(a2) ^ 0xA8;
  v93 = BYTE2(a1) ^ 0xA2;
  v60[2] = a1 ^ 4;
  v94 = (a1 ^ 0xEB) - 2 * ((a1 ^ 0xEB) & 1);
  v95 = *((LODWORD(STACK[0x1B98]) ^ 0x7C7BFDCE8EED84DELL) + a9 + ((2 * (LODWORD(STACK[0x1B98]) ^ 0x79564AE1u)) & 0x1EF779C7ELL) + 0x79F27A7C8DA25EFFLL) ^ 0xD4;
  v96 = (v86 + 169500173 + (~(2 * v86) | 0xEBCB43E5) + 1) ^ 0xA1A5E0D | ((BYTE1(a1) ^ 0x45) - ((2 * (BYTE1(a1) ^ 0x45)) & 0xFFFFFF9F) - 1852483121) ^ 0x919559CF;
  v97 = (((v79 + 12922152 - ((2 * v79) & 0xDE)) << 8) + 280320) ^ 0xC5316F00;
  v98 = (v97 + 1676176444 + (~(2 * v97) | 0xB82F27FF) + 1) ^ 0x63E86C3C | ((((v75 << 16) + 135725056) ^ 0x8170000) - ((2 * (((v75 << 16) + 135725056) ^ 0x8170000)) & 0x6E5E0000) + 1999619958) ^ 0x772FC776;
  v99 = (v98 - ((2 * v98) & 0xFDF1011C) + 2130215054) ^ 0x7EF8808E | (v95 - ((2 * v95) & 0x1A) - 1918694643) ^ 0x8DA30B0D;
  v100 = ((((v81 << 16) + 1679228928) ^ 0x64170000) - ((2 * (((v81 << 16) + 1679228928) ^ 0x64170000)) & 0x2DAE0000) + 383220302) ^ 0x16D77A4E | ((((v73 << 8) - 363915776) ^ 0xEA4F1600) - ((2 * (((v73 << 8) - 363915776) ^ 0xEA4F1600)) & 0x4C938A00) - 431372843) ^ 0xE649C5D5;
  v101 = *((LODWORD(STACK[0xDBC]) ^ 0xCFFF25B387BFD51CLL) + a9 + ((2 * (LODWORD(STACK[0xDBC]) ^ 0x79564AE1u)) & 0x1FDD33FFALL) + 0x266F529786748D41) ^ 0xD4;
  v102 = v101 - ((2 * v101) & 0x80);
  v103 = (v100 - ((2 * v100) & 0x43EB0D3C) + 569738910) ^ 0x21F5869E | (v89 - ((2 * v89) & 0x8C) + 923662662) ^ 0x370DF946;
  v104 = v103 - ((2 * v103) & 0xFB5BBA);
  v60[1] = v78;
  v105 = (v78 ^ 0xEF) - ((2 * (v78 ^ 0xEF)) & 0xB2);
  v106 = (((v96 - ((2 * v96) & 0x9A8B6C) + 5064123) << 8) - 1280) ^ 0x4D45B600;
  v107 = (v83 - 1534680398) ^ 0xA486A2B2 | (v563 - 1602566492) ^ 0xA07AC6A4;
  v108 = (((v99 + 3066986 - ((2 * v99) & 0x5DA06E)) << 8) + 249088) ^ 0x2ED03700;
  v109 = (((v107 - ((2 * v107) & 0xFBD856)) << 8) - 34854144) ^ 0xFDEC2B00;
  v110 = v109 - ((2 * v109) & 0x3E365600);
  v60[11] = BYTE2(a2) ^ 0xB;
  v60[10] = v93;
  v111 = (((((v105 << 8) + 662329600) ^ 0x277A5900) - 2090849633 + (~(2 * (((v105 << 8) + 662329600) ^ 0x277A5900)) | 0xF93FABFF)) | 1) ^ 0x83602A9F | ((((v76 << 16) + 885522432) ^ 0x34C80000) - ((2 * (((v76 << 16) + 885522432) ^ 0x34C80000)) & 0x4A240000) - 1525484465) ^ 0xA512F44F;
  v60[7] = BYTE1(a2) ^ 0x67;
  v112 = *((LODWORD(STACK[0x10C4]) ^ 0x5FEDDBFF90F9A23CLL) + a9 + ((2 * (LODWORD(STACK[0x10C4]) ^ 0x79564AE1u)) & 0x1D35FD1BALL) - 0x697F63B46451BB9FLL) ^ 0xD4;
  v113 = (v111 - ((2 * v111) & 0x250C7478) - 762955204) ^ 0xD2863A3C | (v94 - 823205119) ^ 0xCEEEE301;
  v114 = v113 - ((2 * v113) & 0xD15D0C);
  v115 = *((LODWORD(STACK[0x1D1C]) ^ 0x9B77F2B59125E51ALL) + a9 + ((2 * (LODWORD(STACK[0x1D1C]) ^ 0x79564AE1u)) & 0x1D0E75FF6) + 0x5AF685959CEA7D43) ^ 0xD4;
  v116 = (v106 - ((2 * v106) & 0x1DE73C00) + 250846848) ^ 0xEF39E80 | ((BYTE1(a2) ^ 0x88) - ((2 * (BYTE1(a2) ^ 0x88)) & 0x156) + 44899243) ^ 0x2AD1BAB;
  v117 = (((v112 - ((2 * v112) & 0xA0)) << 8) + 3428352) ^ 0x345000;
  v118 = (v117 - ((2 * v117) & 0x3A96200) - 2116767450) ^ 0x81D4B126 | ((((v566 << 16) - 670171136) ^ 0xD80E0000) - ((2 * (((v566 << 16) - 670171136) ^ 0xD80E0000)) & 0x64160000) - 234094638) ^ 0xF20BFFD2;
  v119 = (v108 - ((2 * v108) & 0x6283DE00) + 826404623) ^ 0x3141EF0F | (v115 - ((2 * v115) & 0xB6) - 467769509) ^ 0xE41E675B;
  v120 = (v118 - ((2 * v118) & 0xA71117AA) - 746026027) ^ 0xD3888BD5 | (v70 + 1879008136) ^ 0x6FFF6388;
  v121 = v120 - ((2 * v120) & 0x61354C);
  v122 = ((((v104 << 8) - 38937344) ^ 0xFDADDD00) - ((2 * (((v104 << 8) - 38937344) ^ 0xFDADDD00)) & 0xC0B03400) - 531097086) ^ 0xE0581A02 | (v88 + 248912699) ^ 0xED61B3B;
  v123 = v122 - ((2 * v122) & 0x863D6B2A) - 1021397611;
  v124 = (v110 + 521874326) ^ 0x1F1B2B96 | (v102 + 250960704) ^ 0xEF55B40;
  v125 = ((((v568 << 8) + 1579921664) ^ 0x5E2BB100) - ((2 * (((v568 << 8) + 1579921664) ^ 0x5E2BB100)) & 0x563D0200) + 1797161311) ^ 0x6B1E815F | ((((v570 << 16) - 1298137088) ^ 0xB2A00000) - ((2 * (((v570 << 16) - 1298137088) ^ 0xB2A00000)) & 0x66100000) - 1291295043) ^ 0xB30866BD;
  v126 = ((v93 ^ 0xEF) - ((2 * (v93 ^ 0xEF)) & 0xFFFFFFEF) - 478152457) ^ 0xE37FF8F7 | (v125 - ((2 * v125) & 0x723ECC28) + 2032100884) ^ 0x791F6614;
  v127 = (((v126 - ((2 * v126) & 0xAF6500)) << 8) - 676167680) ^ 0xD7B28000;
  v128 = (v127 - ((2 * v127) & 0xE7492400) + 1940165177) ^ 0x73A49239 | ((BYTE2(a2) ^ 0xE4) - 996770999 + (~(2 * (BYTE2(a2) ^ 0xE4)) | 0xFFFFFF6D) + 1) ^ 0xC4967B49;
  v129 = ((((v121 << 8) - 1332042240) ^ 0xB09AA600) - ((2 * (((v121 << 8) - 1332042240) ^ 0xB09AA600)) & 0x83738000) - 1044791076) ^ 0xC1B9C0DC | (v91 - 1731459012) ^ 0x98CC083C;
  v130 = (v124 - ((2 * v124) & 0x3DCB962C) + 518376214) ^ ((HIBYTE(a2) ^ 0x47) - ((2 * (HIBYTE(a2) ^ 0x47)) & 0x7C) - 1497653954) ^ v123 ^ (v116 - ((2 * v116) & 0x216B19C6) - 1867150109);
  v131 = (v119 - ((2 * v119) & 0x84F7454A) + 1115398821) ^ v572 ^ ((((v114 << 8) + 1756268032) ^ 0x68AE8600) - ((2 * (((v114 << 8) + 1756268032) ^ 0x68AE8600)) & 0xB14C0C00) + 1487275723) ^ (v129 - ((2 * v129) & 0xCE3CD2FA) - 417437315) ^ (v128 - ((2 * v128) & 0x5696D5BA) + 726362845);
  v132 = ((((v77 << 16) + 1810300928) ^ 0x6BE70000) - ((2 * (((v77 << 16) + 1810300928) ^ 0x6BE70000)) & 0x438E0000) + 1640474159) ^ 0x61C7A62F | (((((v71 + 11786370) << 8) - 4608) ^ 0xB3D87000) - ((2 * ((((v71 + 11786370) << 8) - 4608) ^ 0xB3D87000)) & 0x34DA7000) + 443365623) ^ 0x1A6D38F7;
  v133 = (v132 - ((2 * v132) & 0x680B44AE) - 1274699177) ^ 0xB405A257 | (v573 - 2082971905) ^ 0x83D85EFF;
  v134 = (((v133 - ((2 * v133) & 0x8CD6B6)) << 8) + 1181440768) ^ 0x466B5B00;
  LOBYTE(STACK[0x468]) = v131 ^ 0x63;
  LOBYTE(STACK[0x4A0]) = v131 ^ 0x63;
  v135 = v130 ^ (v134 - ((2 * v134) & 0xA3592400) - 777219472);
  v136 = ((((v135 ^ 0x3A59FD2E) - 1487922518) ^ 0x554FBBF3) - 1431288819 + ((2 * ((v135 ^ 0x3A59FD2E) - 1487922518)) & 0xAA9F77E6)) * (v135 ^ 0x3A59FD2E);
  LOBYTE(STACK[0x631]) = BYTE1(v131) ^ 0x1A;
  LOBYTE(STACK[0x669]) = BYTE1(v131) ^ 0x1A;
  LOBYTE(STACK[0x64D]) = BYTE1(v135) ^ 0x3A;
  LOBYTE(STACK[0x685]) = BYTE1(v135) ^ 0x3A;
  LOBYTE(STACK[0x832]) = BYTE2(v131) ^ 0xC0;
  LOBYTE(STACK[0x7FA]) = BYTE2(v131) ^ 0xC0;
  LOBYTE(STACK[0x2BB]) = HIBYTE(v131) ^ 0x7F;
  LOBYTE(STACK[0x2F3]) = HIBYTE(v131) ^ 0x7F;
  LOBYTE(STACK[0x84E]) = BYTE2(v135) ^ 0x9E;
  LOBYTE(STACK[0x816]) = BYTE2(v135) ^ 0x9E;
  v137 = (v136 ^ 0x7FE1DFFB) + (v131 ^ 0xB807DDA4) + ((2 * v136) & 0xFFC3BFF6) - 2083325193 - ((2 * ((v136 ^ 0x7FE1DFFB) + (v131 ^ 0xB807DDA4) + ((2 * v136) & 0xFFC3BFF6) - 2083325193)) & 0xA05740E8) - 802447244;
  LOBYTE(v130) = v130 ^ 0x99;
  LOBYTE(STACK[0x484]) = v130;
  LOBYTE(STACK[0x4BC]) = v130;
  v138 = ((((v137 ^ 0xD02BA074) + 1716246669) ^ 0xB9DFE3FF) + 1176509441 + ((2 * ((v137 ^ 0xD02BA074) + 1716246669)) & 0x73BFC7FE)) * (v137 ^ 0xD02BA074);
  v139 = (v135 ^ 0x3A59FD2E) + (v138 ^ 0xEFFDEFFF) + ((2 * v138) & 0xDFFBDFFE) - 1975435397;
  LOBYTE(STACK[0x2D7]) = HIBYTE(v135) ^ 0xFD;
  LOBYTE(STACK[0x30F]) = HIBYTE(v135) ^ 0xFD;
  LOBYTE(STACK[0x86A]) = BYTE2(v137) ^ 0xEC;
  LOBYTE(STACK[0x8A2]) = BYTE2(v137) ^ 0xEC;
  v140 = v139 - ((2 * v139) & 0xBBD8F3C2) - 571704863;
  v141 = ((((v140 ^ 0xDDEC79E1) - 210102860) ^ 0x6BFFC0E7) - 1811923175 + ((2 * ((v140 ^ 0xDDEC79E1) - 210102860)) & 0xD7FF81CE)) * (v140 ^ 0xDDEC79E1);
  LOBYTE(STACK[0x4D8]) = ((v136 ^ 0xFB) + (v131 ^ 0xA4) + ((2 * v136) & 0xF6) - 9 - ((2 * ((v136 ^ 0xFB) + (v131 ^ 0xA4) + ((2 * v136) & 0xF6) - 9)) & 0xE8) + 116) ^ 0xB3;
  LOBYTE(STACK[0x510]) = ((v136 ^ 0xFB) + (v131 ^ 0xA4) + ((2 * v136) & 0xF6) - 9 - ((2 * ((v136 ^ 0xFB) + (v131 ^ 0xA4) + ((2 * v136) & 0xF6) - 9)) & 0xE8) + 116) ^ 0xB3;
  LOBYTE(STACK[0x6A1]) = BYTE1(v137) ^ 0x67;
  LOBYTE(STACK[0x6D9]) = BYTE1(v137) ^ 0x67;
  LOBYTE(STACK[0x4F4]) = v140 ^ 0x26;
  LOBYTE(STACK[0x52C]) = v140 ^ 0x26;
  LOBYTE(STACK[0x363]) = HIBYTE(v137) ^ 0x17;
  LOBYTE(STACK[0x32B]) = HIBYTE(v137) ^ 0x17;
  v142 = (v137 ^ 0xD02BA074) + (v141 ^ 0xFF5FFCFF) + ((2 * v141) & 0xFEBFF9FE) + 1597583782;
  LOBYTE(STACK[0x6BD]) = BYTE1(v140) ^ 0xBE;
  LOBYTE(STACK[0x6F5]) = BYTE1(v140) ^ 0xBE;
  v143 = v142 - ((2 * v142) & 0xB6F85130) - 612620136;
  LOBYTE(STACK[0x37F]) = HIBYTE(v140) ^ 0x1A;
  LOBYTE(STACK[0x347]) = HIBYTE(v140) ^ 0x1A;
  v144 = ((((v143 ^ 0xDB7C2898) - 606828698) ^ 0x56DFEF3D) - 1457516349 + ((2 * ((v143 ^ 0xDB7C2898) - 606828698)) & 0xADBFDE7A)) * (v143 ^ 0xDB7C2898);
  v145 = (v140 ^ 0xDDEC79E1) + (v144 ^ 0x7FFFE57F) + ((2 * v144) & 0xFFFFCAFE) - 1170599909;
  LOBYTE(STACK[0x886]) = BYTE2(v140) ^ 0x2B;
  LOBYTE(STACK[0x580]) = v143 ^ 0x5F;
  LOBYTE(STACK[0x548]) = v143 ^ 0x5F;
  v146 = v145 - ((2 * v145) & 0x337FC062) + 432005169;
  v147 = ((((v146 ^ 0x19BFE031) - 184632911) ^ 0x8FF6B330) + 1879657680 + ((2 * ((v146 ^ 0x19BFE031) - 184632911)) & 0x1FED6660)) * (v146 ^ 0x19BFE031);
  v148 = (v143 ^ 0xDB7C2898) + (v147 ^ 0xCBE7D75D) + ((2 * v147) & 0x97CFAEBA) - 1944399488;
  v149 = ((2 * v148) & 0xFF8FD9FC) + (v148 ^ 0x7FC7ECFE);
  LOBYTE(STACK[0x711]) = BYTE1(v143) ^ 0xEF;
  LOBYTE(STACK[0x749]) = BYTE1(v143) ^ 0xEF;
  HIDWORD(v150) = v149 + 3674882;
  LODWORD(v150) = v149 - 2143808766;
  LOBYTE(STACK[0x20A]) = BYTE2(v143) ^ 0xBB;
  v151 = (v150 >> 30) + 1074941412 - ((2 * (v150 >> 30)) & 0x80249BCA) + 1;
  HIDWORD(v150) = v151 ^ 1;
  LODWORD(v150) = v151 ^ 0x40124DE4;
  v152 = (v150 >> 2) - ((2 * (v150 >> 2)) & 0x69B3F248) - 1260783324;
  LOBYTE(STACK[0x765]) = BYTE1(v146) ^ 0x27;
  LOBYTE(STACK[0x72D]) = BYTE1(v146) ^ 0x27;
  LOBYTE(STACK[0x3D3]) = HIBYTE(v143) ^ 0x1C;
  LOBYTE(STACK[0x39B]) = HIBYTE(v143) ^ 0x1C;
  v153 = ((((v152 ^ 0xB4D9F924) + 237491931) ^ 0x1AFF7FD3) - 452952019 + ((2 * ((v152 ^ 0xB4D9F924) + 237491931)) & 0x35FEFFA6)) * (v152 ^ 0xB4D9F924);
  LOBYTE(STACK[0x564]) = v146 ^ 0xF6;
  LOBYTE(STACK[0x59C]) = v146 ^ 0xF6;
  LOBYTE(v70) = ((v150 >> 2) - ((2 * (v150 >> 2)) & 0x48) + 36) ^ 0xE3;
  LOBYTE(STACK[0x5F0]) = v70;
  LOBYTE(STACK[0x5B8]) = v70;
  LOBYTE(STACK[0x226]) = BYTE2(v146) ^ 0x78;
  v154 = (v146 ^ 0x19BFE031) + (v153 ^ 0xEFDFFAFF) + ((2 * v153) & 0xDFBFF5FE) + 821141449;
  LOBYTE(STACK[0x3B7]) = HIBYTE(v146) ^ 0xDE;
  LOBYTE(STACK[0x3EF]) = HIBYTE(v146) ^ 0xDE;
  v155 = v154 - ((2 * v154) & 0x2D5FFAEA) - 1766851211;
  v156 = ((((v155 ^ 0x96AFFD75) - 303042231) ^ 0xB77F7C7F) + 1216381825 + ((2 * ((v155 ^ 0x96AFFD75) - 303042231)) & 0x6EFEF8FE)) * (v155 ^ 0x96AFFD75);
  LOBYTE(STACK[0x242]) = BYTE2(v152) ^ 0x1E;
  LOBYTE(STACK[0x27A]) = BYTE2(v152) ^ 0x1E;
  v157 = (v152 ^ 0xB4D9F924) + (v156 ^ 0x4FE77D5B) + ((2 * v156) & 0x9FCEFAB6) - 2078629961;
  LOBYTE(STACK[0x7B9]) = BYTE1(v152) ^ 0x3E;
  LOBYTE(STACK[0x781]) = BYTE1(v152) ^ 0x3E;
  v158 = v157 - ((2 * v157) & 0x86B20046) - 1017577437;
  LOBYTE(STACK[0x660]) = v158 ^ 0xE4;
  LOBYTE(STACK[0x628]) = v158 ^ 0xE4;
  LOBYTE(STACK[0x5D4]) = v155 ^ 0xB2;
  LOBYTE(STACK[0x60C]) = v155 ^ 0xB2;
  LOBYTE(STACK[0x79D]) = BYTE1(v155) ^ 0x3A;
  LOBYTE(STACK[0x7D5]) = BYTE1(v155) ^ 0x3A;
  LOBYTE(STACK[0x443]) = HIBYTE(v152) ^ 0x73;
  LOBYTE(STACK[0x40B]) = HIBYTE(v152) ^ 0x73;
  LOBYTE(STACK[0x45F]) = HIBYTE(v155) ^ 0x51;
  LOBYTE(STACK[0x427]) = HIBYTE(v155) ^ 0x51;
  v159 = ((((v158 ^ 0xC3590023) - 657524290) ^ 0x7FF2E7F0) - 2146625520 + ((2 * ((v158 ^ 0xC3590023) - 657524290)) & 0xFFE5CFE0)) * (v158 ^ 0xC3590023);
  LOBYTE(STACK[0x25E]) = BYTE2(v155) ^ 0x68;
  LOBYTE(STACK[0x296]) = BYTE2(v155) ^ 0x68;
  v160 = (v155 ^ 0x96AFFD75) + (v159 ^ 0xEFDBFEFF) + ((2 * v159) & 0xDFB7FDFE) - 675017131;
  v161 = v160 - ((2 * v160) & 0x270EDF58) + 327643052;
  v162 = ((((v161 ^ 0x13876FAC) - 96651400) ^ 0x6AECFBCC) - 1793915852 + ((2 * ((v161 ^ 0x13876FAC) - 96651400)) & 0xD5D9F798)) * (v161 ^ 0x13876FAC);
  LOBYTE(STACK[0x829]) = BYTE1(v158) ^ 0xC7;
  LOBYTE(STACK[0x7F1]) = BYTE1(v158) ^ 0xC7;
  LOBYTE(STACK[0x47B]) = HIBYTE(v158) ^ 4;
  LOBYTE(STACK[0x4B3]) = HIBYTE(v158) ^ 4;
  v163 = (v158 ^ 0xC3590023) + (v162 ^ 0x7FB736FF) + ((2 * v162) & 0xFF6E6DFE) - 1440961391;
  v164 = v163 - ((2 * v163) & 0xF54BDAAA) + 2057694549;
  LOBYTE(STACK[0x2EA]) = BYTE2(v158) ^ 0x9E;
  LOBYTE(STACK[0x2B2]) = BYTE2(v158) ^ 0x9E;
  v165 = ((((v164 ^ 0x7AA5ED55) - 1695139088) ^ 0x4AF64EB1) - 1257655985 + ((2 * ((v164 ^ 0x7AA5ED55) - 1695139088)) & 0x95EC9D62)) * (v164 ^ 0x7AA5ED55);
  LOBYTE(STACK[0x2CE]) = BYTE2(v161) ^ 0x40;
  LOBYTE(STACK[0x306]) = BYTE2(v161) ^ 0x40;
  v166 = (v161 ^ 0x13876FAC) + (v165 ^ 0xFFF43FFF) + ((2 * v165) & 0xFFE87FFE) + 770049;
  v167 = ((2 * v166) & 0xF9FFFFEE) + (v166 ^ 0xFCFFFFF7);
  LOBYTE(STACK[0x861]) = BYTE1(v164) ^ 0x2A;
  LOBYTE(STACK[0x899]) = BYTE1(v164) ^ 0x2A;
  LOBYTE(v63) = BYTE1(v161) ^ 0xA8;
  LOBYTE(v161) = v161 ^ 0x6B;
  LOBYTE(STACK[0x67C]) = v161;
  LOBYTE(STACK[0x644]) = v161;
  LOBYTE(STACK[0x4CF]) = HIBYTE(v161) ^ 0xD4;
  LOBYTE(STACK[0x497]) = HIBYTE(v161) ^ 0xD4;
  v168 = v167 - ((2 * v167 + 10241610) & 0x591FD1E) + 588718516;
  LOBYTE(STACK[0x80D]) = v63;
  LOBYTE(STACK[0x845]) = v63;
  v169 = v168 ^ 0x2C8FE8F;
  LOBYTE(STACK[0x322]) = BYTE2(v164) ^ 0x62;
  LOBYTE(STACK[0x35A]) = BYTE2(v164) ^ 0x62;
  LOBYTE(STACK[0x6EC]) = (v167 - ((2 * v167 + 74) & 0x1E) - 76) ^ 0x48;
  LOBYTE(STACK[0x6B4]) = (v167 - ((2 * v167 + 74) & 0x1E) - 76) ^ 0x48;
  LOBYTE(STACK[0x698]) = v164 ^ 0x92;
  LOBYTE(STACK[0x6D0]) = v164 ^ 0x92;
  LOBYTE(STACK[0x523]) = HIBYTE(v164) ^ 0xBD;
  LOBYTE(STACK[0x4EB]) = HIBYTE(v164) ^ 0xBD;
  v170 = (v164 ^ 0x7AA5ED55) + (((v168 ^ 0x2C8FE8F) * (v167 - 1167962685)) ^ 0x1D19FE1B) + ((2 * (v168 ^ 0x2C8FE8F) * (v167 - 1167962685)) & 0x3A33FC36) - 2091519636;
  LOBYTE(STACK[0x8B5]) = BYTE1(v168) ^ 0x39;
  LOBYTE(STACK[0x87D]) = BYTE1(v168) ^ 0x39;
  LOBYTE(v164) = HIBYTE(v168) ^ 0xC5;
  LOBYTE(STACK[0x376]) = BYTE2(v168) ^ 0xF;
  LOBYTE(STACK[0x33E]) = BYTE2(v168) ^ 0xF;
  v171 = v170 - ((2 * v170) & 0x79E4179E) - 1124987953;
  v172 = ((((v171 ^ 0xBCF20BCF) - 1999460649) ^ 0x7FCE9BF6) - 2144246774 + ((2 * ((v171 ^ 0xBCF20BCF) - 1999460649)) & 0xFF9D37EC)) * (v171 ^ 0xBCF20BCF);
  LOBYTE(STACK[0x53F]) = v164;
  LOBYTE(STACK[0x507]) = v164;
  v173 = v169 + (v172 ^ 0x717B79CB) + ((2 * v172) & 0xE2F6F396) + 1275289972;
  LOBYTE(STACK[0x740]) = v171 ^ 8;
  LOBYTE(STACK[0x708]) = v171 ^ 8;
  v174 = v173 - ((2 * v173) & 0x561A37C0) - 1425204256;
  v175 = ((((v174 ^ 0xAB0D1BE0) + 1323737862) ^ 0x77DDF1DF) - 2011034079 + ((2 * ((v174 ^ 0xAB0D1BE0) + 1323737862)) & 0xEFBBE3BE)) * (v174 ^ 0xAB0D1BE0);
  LOBYTE(STACK[0x21D]) = BYTE1(v174) ^ 0xDC;
  v176 = (v171 ^ 0xBCF20BCF) + (v175 ^ 0x7EBBFFFB) + ((2 * v175) & 0xFD77FFF6) + 2102552054;
  v177 = v176 - ((2 * v176) & 0xC7875CC0) - 473715104;
  LOBYTE(STACK[0x201]) = BYTE1(v171) ^ 0xCC;
  LOBYTE(STACK[0x392]) = BYTE2(v171) ^ 0x35;
  LOBYTE(STACK[0x3CA]) = BYTE2(v171) ^ 0x35;
  LOBYTE(STACK[0x55B]) = HIBYTE(v171) ^ 0x7B;
  LOBYTE(STACK[0x593]) = HIBYTE(v171) ^ 0x7B;
  v178 = ((((v177 ^ 0xE3C3AE60) - 418013189) ^ 0x7FFF76BF) - 2147448511 + ((2 * ((v177 ^ 0xE3C3AE60) - 418013189)) & 0xFFFEED7E)) * (v177 ^ 0xE3C3AE60);
  LOBYTE(STACK[0x3AE]) = BYTE2(v174) ^ 0xCA;
  LOBYTE(STACK[0x3E6]) = BYTE2(v174) ^ 0xCA;
  v179 = (v174 ^ 0xAB0D1BE0) + (v178 ^ 0xAE07AF7F) + ((2 * v178) & 0x5C0F5EFE) + 2037929004;
  LOBYTE(STACK[0x577]) = HIBYTE(v174) ^ 0x6C;
  LOBYTE(STACK[0x5AF]) = HIBYTE(v174) ^ 0x6C;
  LOBYTE(v128) = v174 ^ 0x27;
  LOBYTE(STACK[0x239]) = BYTE1(v177) ^ 0x69;
  LOBYTE(STACK[0x271]) = BYTE1(v177) ^ 0x69;
  v180 = v179 - ((2 * v179) & 0x316E440C) + 414654982;
  v181 = ((((v180 ^ 0x18B72206) - 516152047) ^ 0x863FAFEC) + 2042646548 + ((2 * ((v180 ^ 0x18B72206) - 516152047)) & 0xC7F5FD8)) * (v180 ^ 0x18B72206);
  LOBYTE(STACK[0x724]) = v128;
  LOBYTE(STACK[0x75C]) = v128;
  LOBYTE(STACK[0x43A]) = BYTE2(v177) ^ 4;
  LOBYTE(STACK[0x402]) = BYTE2(v177) ^ 4;
  LOBYTE(v128) = (v176 - ((2 * v176) & 0xC0) + 96) ^ 0xA7;
  LOBYTE(STACK[0x778]) = v128;
  LOBYTE(STACK[0x7B0]) = v128;
  v182 = (v177 ^ 0xE3C3AE60) + (v181 ^ 0x7AFDFBFF) + ((2 * v181) & 0xF5FBF7FE) + 510549340;
  LOBYTE(STACK[0x5CB]) = HIBYTE(v177) ^ 0x24;
  LOBYTE(STACK[0x603]) = HIBYTE(v177) ^ 0x24;
  LOBYTE(STACK[0x41E]) = BYTE2(v180) ^ 0x70;
  LOBYTE(STACK[0x456]) = BYTE2(v180) ^ 0x70;
  v183 = v182 - ((2 * v182) & 0xB6459F08) + 1529008004;
  LOBYTE(STACK[0x255]) = BYTE1(v180) ^ 0xE5;
  LOBYTE(STACK[0x28D]) = BYTE1(v180) ^ 0xE5;
  v184 = (((HIBYTE(v183) & 0xF ^ 0xFFFFFFFB) + ((2 * (HIBYTE(v183) & 0xF ^ (~HIBYTE(v183) | 0x7C))) ^ 0xFFFFFF91) + 77) ^ 0x4C) & (((HIBYTE(v183) & 0xF0 ^ 0x5F) - 2 * ((HIBYTE(v183) & 0xF0 ^ 0x5F) & 0x3F) + 63) ^ 0x3F);
  LOBYTE(STACK[0x63B]) = v184 - ((2 * v184) & 0x8F) - 57;
  LOBYTE(STACK[0x7CC]) = v180 ^ 0xC1;
  LOBYTE(STACK[0x794]) = v180 ^ 0xC1;
  v185 = ((((v183 ^ 0x5B22CF84) + 1006707731) ^ 0xADFABBA6) + 1376076890 + ((2 * ((v183 ^ 0x5B22CF84) + 1006707731)) & 0x5BF5774C)) * (v183 ^ 0x5B22CF84);
  LOBYTE(STACK[0x472]) = BYTE2(v183) ^ 0xE5;
  LOBYTE(STACK[0x4AA]) = BYTE2(v183) ^ 0xE5;
  LOBYTE(STACK[0x5E7]) = HIBYTE(v180) ^ 0xDF;
  LOBYTE(STACK[0x61F]) = HIBYTE(v180) ^ 0xDF;
  LOBYTE(STACK[0x2A9]) = BYTE1(v183) ^ 8;
  LOBYTE(STACK[0x2E1]) = BYTE1(v183) ^ 8;
  v186 = (v180 ^ 0x18B72206) + (v185 ^ 0xBAFFBE7F) + ((2 * v185) & 0x75FF7CFE) + 87023291;
  v187 = v186 - ((2 * v186) & 0xA89F9A24) - 732967662;
  LOBYTE(STACK[0x7E8]) = (v182 - ((2 * v182) & 8) - 124) ^ 0x43;
  LOBYTE(STACK[0x820]) = (v182 - ((2 * v182) & 8) - 124) ^ 0x43;
  v188 = ((((v187 ^ 0xD44FCD12) - 900071694) ^ 0xFFE9FFFB) + 1441797 + ((2 * ((v187 ^ 0xD44FCD12) - 900071694)) & 0xFFD3FFF6)) * (v187 ^ 0xD44FCD12);
  LOBYTE(STACK[0x673]) = HIBYTE(v183) ^ 0x9C;
  LOBYTE(STACK[0x804]) = v187 ^ 0xD5;
  LOBYTE(STACK[0x83C]) = v187 ^ 0xD5;
  v189 = (v183 ^ 0x5B22CF84) + (v188 ^ 0xF9F1D7FE) + ((2 * v188) & 0xF3E3AFFC) - 328872776;
  LOBYTE(STACK[0x48E]) = BYTE2(v187) ^ 0x88;
  LOBYTE(STACK[0x4C6]) = BYTE2(v187) ^ 0x88;
  v190 = v189 - ((2 * v189) & 0xADF485E6) - 688241933;
  LOBYTE(STACK[0x68F]) = HIBYTE(v187) ^ 0x13;
  LOBYTE(STACK[0x657]) = HIBYTE(v187) ^ 0x13;
  v191 = v187 >> 8;
  LOBYTE(STACK[0x2FD]) = BYTE1(v187) ^ 0xA;
  v192 = ((((v190 ^ 0xD6FA42F3) + 1299977728) ^ 0x3BFFBF55) - 1006616405 + ((2 * ((v190 ^ 0xD6FA42F3) + 1299977728)) & 0x77FF7EAA)) * (v190 ^ 0xD6FA42F3);
  v193 = (v187 ^ 0xD44FCD12) + (v192 ^ 0x9C1B3EB7) + ((2 * v192) & 0x38367D6E) + 652623365;
  LOBYTE(v191) = ((v191 & 0x56 ^ 0xED) - 2 * (((v191 & 0x56 ^ 0xED) & 4 | 0x7A) ^ (v191 & 0x56 ^ 0xED | 0x7B)) + 2) & (((v191 & 0xA9 ^ 0xDF) - ((2 * (v191 & 0xA9 ^ 0xDF)) & 0x56) + 43) ^ 0x2B);
  LOBYTE(STACK[0x2C5]) = v191 - ((2 * v191) & 0x8F) - 57;
  v194 = v193 - ((2 * v193) & 0xEFFD27A4) + 2013172690;
  LOBYTE(STACK[0x319]) = BYTE1(v190) ^ 0x85;
  LOBYTE(STACK[0x351]) = BYTE1(v190) ^ 0x85;
  LOBYTE(STACK[0x858]) = v190 ^ 0x34;
  LOBYTE(STACK[0x890]) = v190 ^ 0x34;
  v195 = ((((v194 ^ 0x77FE93D2) + 295780580) ^ 0xEFF9DDE6) + 268837402 + ((2 * ((v194 ^ 0x77FE93D2) + 295780580)) & 0xDFF3BBCC)) * (v194 ^ 0x77FE93D2);
  LOBYTE(STACK[0x4E2]) = BYTE2(v190) ^ 0x3D;
  LOBYTE(STACK[0x51A]) = BYTE2(v190) ^ 0x3D;
  v196 = (v190 ^ 0xD6FA42F3) + (v195 ^ 0x37FF3EAE) + ((2 * v195) & 0x6FFE7D5C) - 752414289;
  LOBYTE(STACK[0x6E3]) = HIBYTE(v190) ^ 0x11;
  LOBYTE(STACK[0x6AB]) = HIBYTE(v190) ^ 0x11;
  LOBYTE(STACK[0x6FF]) = HIBYTE(v194) ^ 0xB0;
  LOBYTE(STACK[0x6C7]) = HIBYTE(v194) ^ 0xB0;
  v197 = v196 - ((2 * v196) & 0x70AA8C44) - 1202371038;
  v198 = ((((v197 ^ 0xB8554622) - 1249060897) ^ 0x5B5FFBEB) - 1533018630 + ((2 * ((v197 ^ 0xB8554622) - 1249060897)) & 0xB6BFF7D6) + 1563) * (v197 ^ 0xB8554622);
  LOBYTE(STACK[0x4FE]) = BYTE2(v194) ^ 0x39;
  LOBYTE(STACK[0x536]) = BYTE2(v194) ^ 0x39;
  v199 = (v194 ^ 0x77FE93D2) + (v198 ^ 0xFE773F79) + ((2 * v198) & 0xFCEE7EF2) + 1554818643;
  LOBYTE(STACK[0x36D]) = BYTE1(v194) ^ 0x54;
  LOBYTE(STACK[0x335]) = BYTE1(v194) ^ 0x54;
  LOBYTE(STACK[0x8AC]) = v194 ^ 0x15;
  LOBYTE(STACK[0x874]) = v194 ^ 0x15;
  LOBYTE(STACK[0x58A]) = BYTE2(v197) ^ 0x92;
  LOBYTE(STACK[0x552]) = BYTE2(v197) ^ 0x92;
  LOBYTE(STACK[0x3C1]) = BYTE1(v197) ^ 0x81;
  LOBYTE(STACK[0x389]) = BYTE1(v197) ^ 0x81;
  v200 = v199 - ((2 * v199) & 0x2368701C) - 1850460146;
  v201 = ((((v200 ^ 0x91B4380E) - 221323325) ^ 0xDB3FD9CF) + 616572465 + ((2 * ((v200 ^ 0x91B4380E) - 221323325)) & 0xB67FB39E)) * (v200 ^ 0x91B4380E);
  LOBYTE(STACK[0x753]) = HIBYTE(v197) ^ 0x7F;
  LOBYTE(STACK[0x71B]) = HIBYTE(v197) ^ 0x7F;
  v202 = (v197 ^ 0xB8554622) + (v201 ^ 0x91E2FAEA) + ((2 * v201) & 0x23C5F5D4) - 1520942732;
  v203 = v202 - ((2 * v202) & 0x16F261B2) + 192491737;
  v204 = ((((v203 ^ 0xB7930D9) - 673024271) ^ 0xDDF1D7DE) + 571353122 + ((2 * ((v203 ^ 0xB7930D9) - 673024271)) & 0xBBE3AFBC)) * (v203 ^ 0xB7930D9);
  LOBYTE(STACK[0x214]) = v200 ^ 0xC9;
  LOBYTE(STACK[0x3A5]) = ~BYTE1(v200);
  LOBYTE(STACK[0x3DD]) = ~BYTE1(v200);
  LOBYTE(v192) = BYTE2(v200) ^ 0x73;
  LOBYTE(STACK[0x737]) = HIBYTE(v200) ^ 0x56;
  LOBYTE(STACK[0x76F]) = HIBYTE(v200) ^ 0x56;
  v205 = (v200 ^ 0x91B4380E) + (v204 ^ 0xBF957EFF) + ((2 * v204) & 0x7F2AFDFE) + 1621957487;
  LOBYTE(STACK[0x230]) = v203 ^ 0x1E;
  LOBYTE(STACK[0x268]) = v203 ^ 0x1E;
  v206 = v205 - ((2 * v205) & 0x8835020A) + 1142587653;
  v207 = ((((v206 ^ 0x441A8105) + 1179275108) ^ 0x63D25BDD) - 1674730461 + ((2 * ((v206 ^ 0x441A8105) + 1179275108)) & 0xC7A4B7BA)) * (v206 ^ 0x441A8105);
  LOBYTE(STACK[0x56E]) = v192;
  LOBYTE(STACK[0x5A6]) = v192;
  LOBYTE(STACK[0x5C2]) = BYTE2(v203) ^ 0xBE;
  LOBYTE(STACK[0x5FA]) = BYTE2(v203) ^ 0xBE;
  LOBYTE(STACK[0x78B]) = HIBYTE(v203) ^ 0xCC;
  LOBYTE(STACK[0x7C3]) = HIBYTE(v203) ^ 0xCC;
  LOBYTE(STACK[0x431]) = BYTE1(v203) ^ 0xF7;
  LOBYTE(STACK[0x3F9]) = BYTE1(v203) ^ 0xF7;
  v208 = (v203 ^ 0xB7930D9) + (v207 ^ 0xCFABFFB8) + ((2 * v207) & 0x9F57FF70) + 720577303;
  LOBYTE(STACK[0x44D]) = BYTE1(v206) ^ 0x46;
  LOBYTE(STACK[0x415]) = BYTE1(v206) ^ 0x46;
  v209 = v208 - ((2 * v208) & 0x1ADEC68) - 2133395916;
  v210 = ((((v209 ^ 0x80D6F634) + 394078803) ^ 0xBF2F7DE9) + 1087406615 + ((2 * ((v209 ^ 0x80D6F634) + 394078803)) & 0x7E5EFBD2)) * (v209 ^ 0x80D6F634);
  LOBYTE(STACK[0x24C]) = v206 ^ 0xC2;
  LOBYTE(STACK[0x284]) = v206 ^ 0xC2;
  LOBYTE(STACK[0x5DE]) = BYTE2(v206) ^ 0xDD;
  LOBYTE(STACK[0x616]) = BYTE2(v206) ^ 0xDD;
  v211 = (v206 ^ 0x441A8105) + (v210 ^ 0x7FF577BF) + ((2 * v210) & 0xFFEAEF7E) - 465562898;
  v212 = v211 - ((2 * v211) & 0xEDC411BE) + 1994524895;
  LOBYTE(STACK[0x632]) = BYTE2(v209) ^ 0x11;
  LOBYTE(STACK[0x66A]) = BYTE2(v209) ^ 0x11;
  LOBYTE(STACK[0x2BC]) = v212 ^ 0x18;
  LOBYTE(STACK[0x2F4]) = v212 ^ 0x18;
  LOBYTE(STACK[0x2A0]) = v209 ^ 0xF3;
  LOBYTE(STACK[0x2D8]) = v209 ^ 0xF3;
  v213 = ((((v212 ^ 0x76E208DF) + 1895837160) ^ 0x5FEBFFFF) - 1609302015 + ((2 * ((v212 ^ 0x76E208DF) + 1895837160)) & 0xBFD7FFFE)) * (v212 ^ 0x76E208DF);
  LOBYTE(STACK[0x7A7]) = HIBYTE(v206) ^ 0x83;
  LOBYTE(STACK[0x7DF]) = HIBYTE(v206) ^ 0x83;
  LOBYTE(STACK[0x7FB]) = HIBYTE(v209) ^ 0x47;
  LOBYTE(STACK[0x833]) = HIBYTE(v209) ^ 0x47;
  LOBYTE(STACK[0x4A1]) = BYTE1(v209) ^ 0x31;
  LOBYTE(STACK[0x469]) = BYTE1(v209) ^ 0x31;
  LOBYTE(STACK[0x4BD]) = BYTE1(v212) ^ 0xCF;
  LOBYTE(STACK[0x485]) = BYTE1(v212) ^ 0xCF;
  v214 = (v209 ^ 0x80D6F634) + (v213 ^ 0x73EDB938) + ((2 * v213) & 0xE7DB7270) + 1669921715;
  v215 = v214 - ((2 * v214) & 0xE63C32D0) + 1931352424;
  LOBYTE(STACK[0x348]) = v215 ^ 0xAF;
  LOBYTE(STACK[0x310]) = v215 ^ 0xAF;
  LOBYTE(STACK[0x64E]) = BYTE2(v212) ^ 0x25;
  LOBYTE(STACK[0x686]) = BYTE2(v212) ^ 0x25;
  v216 = ((((v215 ^ 0x731E1968) + 1576830580) ^ 0xBF6FEFBF) + 1083183169 + ((2 * ((v215 ^ 0x731E1968) + 1576830580)) & 0x7EDFDF7E)) * (v215 ^ 0x731E1968);
  LOBYTE(STACK[0x6A2]) = BYTE2(v215) ^ 0xD9;
  LOBYTE(STACK[0x6DA]) = BYTE2(v215) ^ 0xD9;
  v217 = (v212 ^ 0x76E208DF) + (v216 ^ 0xD5FF27EF) + ((2 * v216) & 0xABFE4FDE) + 683691750;
  v218 = v217 - ((2 * v217) & 0xF878D774) + 2084334522;
  LOBYTE(STACK[0x817]) = HIBYTE(v212) ^ 0xB1;
  LOBYTE(STACK[0x84F]) = HIBYTE(v212) ^ 0xB1;
  v219 = ((((v218 ^ 0x7C3C6BBA) + 1348956198) ^ 0x7BBAE7F2) - 2075846642 + ((2 * ((v218 ^ 0x7C3C6BBA) + 1348956198)) & 0xF775CFE4)) * (v218 ^ 0x7C3C6BBA);
  v220 = (v215 ^ 0x731E1968) + (v219 ^ 0xFBF46FD6) + ((2 * v219) & 0xF7E8DFAC) - 1775551967;
  LOBYTE(STACK[0x511]) = BYTE1(v215) ^ 0xDE;
  LOBYTE(STACK[0x4D9]) = BYTE1(v215) ^ 0xDE;
  LOBYTE(STACK[0x8A3]) = HIBYTE(v215) ^ 0xB4;
  LOBYTE(STACK[0x86B]) = HIBYTE(v215) ^ 0xB4;
  v221 = v220 - ((2 * v220) & 0x641FC328) + 839901588;
  LOBYTE(STACK[0x32C]) = v218 ^ 0x7D;
  LOBYTE(STACK[0x364]) = v218 ^ 0x7D;
  v222 = ((((v221 ^ 0x320FE194) + 51644021) ^ 0xDFBEFB5F) + 541131937 + ((2 * ((v221 ^ 0x320FE194) + 51644021)) & 0xBF7DF6BE)) * (v221 ^ 0x320FE194);
  LOBYTE(STACK[0x52D]) = BYTE1(v218) ^ 0xAC;
  LOBYTE(STACK[0x4F5]) = BYTE1(v218) ^ 0xAC;
  v223 = (v218 ^ 0x7C3C6BBA) + (v222 ^ 0xDFEEBEEF) + ((2 * v222) & 0xBFDD7DDE) - 1203365846;
  v224 = v223 - ((2 * v223) & 0xA44E5C18) + 1378299404;
  LOBYTE(STACK[0x6BE]) = BYTE2(v218) ^ 0xFB;
  LOBYTE(STACK[0x6F6]) = BYTE2(v218) ^ 0xFB;
  LOBYTE(STACK[0x3B8]) = v221 ^ 0x53;
  LOBYTE(STACK[0x380]) = v221 ^ 0x53;
  v225 = ((((v224 ^ 0x52272E0C) - 1952420128) ^ 0x6BD937FB) - 1809397755 + ((2 * ((v224 ^ 0x52272E0C) - 1952420128)) & 0xD7B26FF6)) * (v224 ^ 0x52272E0C);
  LOBYTE(STACK[0x887]) = HIBYTE(v218) ^ 0xBB;
  LOBYTE(STACK[0x20B]) = HIBYTE(v221) ^ 0xF5;
  v226 = (v221 ^ 0x320FE194) + (v225 ^ 0xFF5EFB97) + ((2 * v225) & 0xFEBDF72E) - 946035084;
  LOBYTE(STACK[0x59D]) = BYTE1(v224) ^ 0xE9;
  LOBYTE(STACK[0x565]) = BYTE1(v224) ^ 0xE9;
  LOBYTE(v194) = BYTE2(v221) ^ 0xC8;
  LOBYTE(v192) = BYTE1(v221) ^ 0x26;
  LOBYTE(STACK[0x3D4]) = v224 ^ 0xCB;
  LOBYTE(STACK[0x39C]) = v224 ^ 0xCB;
  v227 = v226 - ((2 * v226) & 0x29343A6E) - 1801839305;
  LOBYTE(STACK[0x549]) = v192;
  LOBYTE(STACK[0x581]) = v192;
  LOBYTE(STACK[0x74A]) = v194;
  LOBYTE(STACK[0x712]) = v194;
  v228 = ((((v227 ^ 0x949A1D37) - 401238862) ^ 0x7B3FF3FF) - 2067791872 + ((2 * ((v227 ^ 0x949A1D37) - 401238862)) & 0xF67FE7FE) + 3073) * (v227 ^ 0x949A1D37);
  LOBYTE(STACK[0x428]) = v227 ^ 0xF0;
  LOBYTE(STACK[0x3F0]) = v227 ^ 0xF0;
  v229 = (v224 ^ 0x52272E0C) + (v228 ^ 0xFB6FBDF3) + ((2 * v228) & 0xF6DF7BE6) + 1638759802;
  v230 = v229 - ((2 * v229) & 0xCB2F7872) - 443040711;
  LOBYTE(STACK[0x5F1]) = BYTE1(v227) ^ 0xDA;
  LOBYTE(STACK[0x5B9]) = BYTE1(v227) ^ 0xDA;
  v231 = ((((v230 ^ 0xE597BC39) - 734889248) ^ 0x9BF7F675) + 1678245912 + ((2 * ((v230 ^ 0xE597BC39) - 734889248)) & 0x37EFECEA) + 2419) * (v230 ^ 0xE597BC39);
  v232 = ((((2 * (v231 - ((2 * v231) & 0xF751C67A) + 2074665789)) ^ 0xF751C67A) - ((2 * ((2 * (v231 - ((2 * v231) & 0xF751C67A) + 2074665789)) ^ 0xF751C67A)) & 0x6D21CBBC) + 915465695) & 0xA6877C1E ^ 0x2680641E) + ((v231 - ((2 * v231) & 0xF751C67A) + 2074665789) ^ 0xA8EB5D32);
  LOBYTE(STACK[0x766]) = BYTE2(v224) ^ 0xE0;
  LOBYTE(STACK[0x72E]) = BYTE2(v224) ^ 0xE0;
  LOBYTE(STACK[0x227]) = HIBYTE(v224) ^ 0x95;
  v233 = (v227 ^ 0x949A1D37) + (v232 ^ 0x7BAFEBBE) + ((2 * v232) & 0xF75FD77C) - 2075126718;
  v234 = v233 - ((2 * v233) & 0xB9F7FCBC) - 587465122;
  LOBYTE(STACK[0x27B]) = HIBYTE(v227) ^ 0x53;
  LOBYTE(STACK[0x243]) = HIBYTE(v227) ^ 0x53;
  LOBYTE(STACK[0x7BA]) = BYTE2(v227) ^ 0x5D;
  LOBYTE(STACK[0x782]) = BYTE2(v227) ^ 0x5D;
  v235 = ((((v234 ^ 0xDCFBFE5E) - 1868708802) ^ 0xD5D7DFEF) + 707272721 + ((2 * ((v234 ^ 0xDCFBFE5E) - 1868708802)) & 0xABAFBFDE)) * (v234 ^ 0xDCFBFE5E);
  LOBYTE(STACK[0x5D5]) = BYTE1(v230) ^ 0x7B;
  LOBYTE(STACK[0x60D]) = BYTE1(v230) ^ 0x7B;
  v236 = (v230 ^ 0xE597BC39) + (v235 ^ 0xF3EF5FBB) + ((2 * v235) & 0xE7DEBF76) - 324863502;
  LOBYTE(v232) = HIBYTE(v230) ^ 0x22;
  LOBYTE(v230) = v230 ^ 0xFE;
  LOBYTE(STACK[0x40C]) = v230;
  LOBYTE(STACK[0x444]) = v230;
  LOBYTE(STACK[0x79E]) = BYTE2(v230) ^ 0x50;
  LOBYTE(STACK[0x7D6]) = BYTE2(v230) ^ 0x50;
  v237 = v236 - ((2 * v236) & 0x41394EB8) + 547137372;
  LOBYTE(STACK[0x661]) = BYTE1(v234) ^ 0x39;
  LOBYTE(STACK[0x629]) = BYTE1(v234) ^ 0x39;
  v238 = ((((v237 ^ 0x209CA75C) + 227270299) ^ 0xDFBDBB4F) + 541213873 + ((2 * ((v237 ^ 0x209CA75C) + 227270299)) & 0xBF7B769E)) * (v237 ^ 0x209CA75C);
  LOBYTE(STACK[0x460]) = v234 ^ 0x99;
  LOBYTE(STACK[0x498]) = v234 ^ 0x99;
  LOBYTE(STACK[0x25F]) = v232;
  LOBYTE(STACK[0x297]) = v232;
  LOBYTE(STACK[0x67D]) = BYTE1(v237) ^ 0x60;
  LOBYTE(STACK[0x645]) = BYTE1(v237) ^ 0x60;
  LOBYTE(STACK[0x2B3]) = HIBYTE(v234) ^ 0x1B;
  LOBYTE(STACK[0x2EB]) = HIBYTE(v234) ^ 0x1B;
  v239 = (v234 ^ 0xDCFBFE5E) + (v238 ^ 0xFF9CFDFD) + ((2 * v238) & 0xFF39FBFA) - 294277396;
  v240 = HIWORD(v234);
  v241 = v239 - ((2 * v239) & 0xF7CC7896) + 2078686283;
  LOBYTE(v240) = v240 ^ 0x3C;
  LOBYTE(STACK[0x82A]) = v240;
  LOBYTE(STACK[0x7F2]) = v240;
  LOBYTE(STACK[0x307]) = HIBYTE(v237) ^ 0xE7;
  LOBYTE(STACK[0x2CF]) = HIBYTE(v237) ^ 0xE7;
  v242 = ((((v241 ^ 0x7BE63C4B) + 1716980124) ^ 0x79EBBDDA) - 2045492698 + ((2 * ((v241 ^ 0x7BE63C4B) + 1716980124)) & 0xF3D77BB4)) * (v241 ^ 0x7BE63C4B);
  LOBYTE(STACK[0x4D0]) = v241 ^ 0x8C;
  LOBYTE(STACK[0x508]) = v241 ^ 0x8C;
  LOBYTE(STACK[0x846]) = BYTE2(v237) ^ 0x5B;
  LOBYTE(STACK[0x80E]) = BYTE2(v237) ^ 0x5B;
  v243 = (v237 ^ 0x209CA75C) + (v242 ^ 0xBEE5BAFE) + ((2 * v242) & 0x7DCB75FC) - 1599485230;
  v244 = v243 - ((2 * v243) & 0xC3867F66) + 1640185779;
  v245 = ((((v244 ^ 0x61C33FB3) - 1874359617) ^ 0x6552BA37) - 1699920439 + ((2 * ((v244 ^ 0x61C33FB3) - 1874359617)) & 0xCAA5746E)) * (v244 ^ 0x61C33FB3);
  LOBYTE(STACK[0x699]) = BYTE1(v241) ^ 0xFB;
  LOBYTE(STACK[0x6D1]) = BYTE1(v241) ^ 0xFB;
  LOBYTE(v237) = v237 ^ 0x9B;
  LOBYTE(STACK[0x47C]) = v237;
  LOBYTE(STACK[0x4B4]) = v237;
  LOBYTE(STACK[0x862]) = BYTE2(v241) ^ 0x21;
  LOBYTE(STACK[0x89A]) = BYTE2(v241) ^ 0x21;
  v246 = (v241 ^ 0x7BE63C4B) + (v245 ^ 0xFDEFF780) + ((2 * v245) & 0xFBDFEF00) - 1826489821;
  LOBYTE(STACK[0x4EC]) = (v243 - ((2 * v243) & 0x66) - 77) ^ 0x74;
  LOBYTE(STACK[0x524]) = (v243 - ((2 * v243) & 0x66) - 77) ^ 0x74;
  LOBYTE(STACK[0x323]) = HIBYTE(v241) ^ 0xBC;
  LOBYTE(STACK[0x35B]) = HIBYTE(v241) ^ 0xBC;
  v247 = v246 - ((2 * v246) & 0x7F93C9DA) - 1077287699;
  LOBYTE(STACK[0x6B5]) = BYTE1(v244) ^ 0xF8;
  LOBYTE(STACK[0x6ED]) = BYTE1(v244) ^ 0xF8;
  v248 = ((((v247 ^ 0xBFC9E4ED) - 606660320) ^ 0xFFE7EFFE) + 1576962 + ((2 * ((v247 ^ 0xBFC9E4ED) - 606660320)) & 0xFFCFDFFC)) * (v247 ^ 0xBFC9E4ED);
  LOBYTE(STACK[0x8B6]) = BYTE2(v244) ^ 4;
  LOBYTE(STACK[0x87E]) = BYTE2(v244) ^ 4;
  v249 = (v244 ^ 0x61C33FB3) + (v248 ^ 0x7567EEEB) + ((2 * v248) & 0xEACFDDD6) + 616458843;
  LOBYTE(STACK[0x709]) = BYTE1(v247) ^ 0x23;
  LOBYTE(STACK[0x741]) = BYTE1(v247) ^ 0x23;
  v250 = v249 - ((2 * v249) & 0xB850566A) + 1546136373;
  LOBYTE(STACK[0x578]) = v247 ^ 0x2A;
  LOBYTE(STACK[0x540]) = v247 ^ 0x2A;
  v251 = ((((v250 ^ 0x5C282B35) + 2049871696) ^ 0x13D7FF6F) - 332922735 + ((2 * ((v250 ^ 0x5C282B35) + 2049871696)) & 0x27AFFEDE)) * (v250 ^ 0x5C282B35);
  LOBYTE(STACK[0x377]) = HIBYTE(v244) ^ 0xA6;
  LOBYTE(STACK[0x33F]) = HIBYTE(v244) ^ 0xA6;
  v252 = (v247 ^ 0xBFC9E4ED) + (v251 ^ 0xEA7EF6BF) + ((2 * v251) & 0xD4FDED7E) - 2008531597;
  LOBYTE(STACK[0x3CB]) = HIBYTE(v247) ^ 0x78;
  LOBYTE(STACK[0x393]) = HIBYTE(v247) ^ 0x78;
  LOBYTE(STACK[0x202]) = BYTE2(v247) ^ 0xE;
  LOBYTE(STACK[0x725]) = BYTE1(v250) ^ 0xEC;
  LOBYTE(STACK[0x75D]) = BYTE1(v250) ^ 0xEC;
  LOBYTE(STACK[0x594]) = v250 ^ 0xF2;
  LOBYTE(STACK[0x55C]) = v250 ^ 0xF2;
  v253 = v252 - ((2 * v252) & 0x70E55278) + 947038524;
  v254 = ((((v253 ^ 0x3872A93C) - 391348697) ^ 0xBFE965ED) + 1075223059 + ((2 * ((v253 ^ 0x3872A93C) - 391348697)) & 0x7FD2CBDA)) * (v253 ^ 0x3872A93C);
  LOBYTE(STACK[0x21E]) = BYTE2(v250) ^ 0xEF;
  v255 = (v250 ^ 0x5C282B35) + (v254 ^ 0x95FF7EBF) + ((2 * v254) & 0x2BFEFD7E) + 1440741069;
  v256 = v255 - ((2 * v255) & 0xEA252C90) + 1964152392;
  LOBYTE(STACK[0x3E7]) = HIBYTE(v250) ^ 0x9B;
  LOBYTE(STACK[0x3AF]) = HIBYTE(v250) ^ 0x9B;
  LOBYTE(STACK[0x5E8]) = v253 ^ 0xFB;
  LOBYTE(STACK[0x5B0]) = v253 ^ 0xFB;
  v257 = ((((v256 ^ 0x75129648) + 308654761) ^ 0xFB7F58BF) + 75540289 + ((2 * ((v256 ^ 0x75129648) + 308654761)) & 0xF6FEB17E)) * (v256 ^ 0x75129648);
  LOBYTE(STACK[0x604]) = v256 ^ 0x8F;
  LOBYTE(STACK[0x5CC]) = v256 ^ 0x8F;
  LOBYTE(STACK[0x779]) = BYTE1(v253) ^ 0x6E;
  LOBYTE(STACK[0x7B1]) = BYTE1(v253) ^ 0x6E;
  v258 = (v253 ^ 0x3872A93C) + (v257 ^ 0xFEF5B5F7) + ((2 * v257) & 0xFDEB6BEE) - 100097474;
  v259 = v258 - ((2 * v258) & 0x513C0C0E) + 681444871;
  LOBYTE(STACK[0x23A]) = BYTE2(v253) ^ 0xB5;
  LOBYTE(STACK[0x272]) = BYTE2(v253) ^ 0xB5;
  LOBYTE(STACK[0x403]) = ~HIBYTE(v253);
  LOBYTE(STACK[0x43B]) = ~HIBYTE(v253);
  LOBYTE(STACK[0x7CD]) = BYTE1(v256) ^ 0x51;
  LOBYTE(STACK[0x795]) = BYTE1(v256) ^ 0x51;
  LOBYTE(STACK[0x256]) = BYTE2(v256) ^ 0xD5;
  LOBYTE(STACK[0x28E]) = BYTE2(v256) ^ 0xD5;
  v260 = ((((v259 ^ 0x289E0607) - 285718906) ^ 0x7EF7F3F7) - 2130179063 + ((2 * ((v259 ^ 0x289E0607) - 285718906)) & 0xFDEFE7EE)) * (v259 ^ 0x289E0607);
  LOBYTE(STACK[0x620]) = v259 ^ 0xC0;
  LOBYTE(STACK[0x658]) = v259 ^ 0xC0;
  v261 = (v256 ^ 0x75129648) + (v260 ^ 0xBF77FDFF) + ((2 * v260) & 0x7EEFFBFE) - 1952606363;
  LOBYTE(STACK[0x457]) = HIBYTE(v256) ^ 0xB2;
  LOBYTE(STACK[0x41F]) = HIBYTE(v256) ^ 0xB2;
  v262 = v261 - ((2 * v261) & 0x5912845A) - 1400290771;
  LOBYTE(STACK[0x473]) = HIBYTE(v259) ^ 0xEF;
  LOBYTE(STACK[0x4AB]) = HIBYTE(v259) ^ 0xEF;
  v263 = ((((v262 ^ 0xAC89422D) + 1712468581) ^ 0x3ECA73FA) - 1053455354 + ((2 * ((v262 ^ 0xAC89422D) + 1712468581)) & 0x7D94E7F4)) * (v262 ^ 0xAC89422D);
  LOBYTE(STACK[0x2E2]) = BYTE2(v259) ^ 0x59;
  LOBYTE(STACK[0x2AA]) = BYTE2(v259) ^ 0x59;
  LOBYTE(STACK[0x7E9]) = BYTE1(v259) ^ 0xC1;
  LOBYTE(STACK[0x821]) = BYTE1(v259) ^ 0xC1;
  v264 = (v259 ^ 0x289E0607) + (v263 ^ 0xFBFEAF7B) + ((2 * v263) & 0xF7FD5EF6) + 1632036787;
  LOBYTE(v263) = (v261 - ((2 * v261) & 0x5A) + 45) ^ 0xEA;
  LOBYTE(STACK[0x674]) = v263;
  LOBYTE(STACK[0x63C]) = v263;
  v265 = v264 - ((2 * v264) & 0x6BD34154) + 904503466;
  v266 = ((((v265 ^ 0x35E9A0AA) - 1402364828) ^ 0x75EEAA9D) - 1978575517 + ((2 * ((v265 ^ 0x35E9A0AA) - 1402364828)) & 0xEBDD553A)) * (v265 ^ 0x35E9A0AA);
  LOBYTE(STACK[0x2C6]) = BYTE2(v262) ^ 0x4E;
  LOBYTE(STACK[0x2FE]) = BYTE2(v262) ^ 0x4E;
  LOBYTE(STACK[0x48F]) = HIBYTE(v262) ^ 0x6B;
  LOBYTE(STACK[0x4C7]) = HIBYTE(v262) ^ 0x6B;
  LOBYTE(STACK[0x690]) = (v264 - ((2 * v264) & 0x54) - 86) ^ 0x6D;
  LOBYTE(STACK[0x6C8]) = (v264 - ((2 * v264) & 0x54) - 86) ^ 0x6D;
  v267 = (v262 ^ 0xAC89422D) + (v266 ^ 0xDBB1DAB5) + ((2 * v266) & 0xB763B56A);
  LOBYTE(STACK[0x352]) = BYTE2(v265) ^ 0x2E;
  LOBYTE(STACK[0x31A]) = BYTE2(v265) ^ 0x2E;
  v268 = v267 - 993434949 - ((2 * (v267 - 993434949)) & 0x745F29C6) - 1171286813;
  LOBYTE(STACK[0x51B]) = HIBYTE(v265) ^ 0xF2;
  LOBYTE(STACK[0x4E3]) = HIBYTE(v265) ^ 0xF2;
  v269 = ((((v268 ^ 0xBA2F94E3) + 907690172) ^ 0x777FBFDE) - 2004860894 + ((2 * ((v268 ^ 0xBA2F94E3) + 907690172)) & 0xEEFF7FBC)) * (v268 ^ 0xBA2F94E3);
  LOBYTE(STACK[0x6AC]) = v268 ^ 0x24;
  LOBYTE(STACK[0x6E4]) = v268 ^ 0x24;
  LOBYTE(STACK[0x805]) = BYTE1(v262) ^ 0x85;
  LOBYTE(STACK[0x83D]) = BYTE1(v262) ^ 0x85;
  v270 = (v265 ^ 0x35E9A0AA) + (v269 ^ 0xF7DABEEF) + ((2 * v269) & 0xEFB57DDE) - 1534006161;
  v271 = v270 - ((2 * v270) & 0x8B96424E) + 1170940199;
  v272 = ((((v271 ^ 0x45CB2127) - 488710073) ^ 0xE1F677BF) + 503941185 + ((2 * ((v271 ^ 0x45CB2127) - 488710073)) & 0xC3ECEF7E)) * (v271 ^ 0x45CB2127);
  LOBYTE(STACK[0x8AD]) = BYTE1(v268) ^ 0x53;
  LOBYTE(STACK[0x875]) = BYTE1(v268) ^ 0x53;
  LOBYTE(STACK[0x859]) = BYTE1(v265) ^ 0x67;
  LOBYTE(STACK[0x891]) = BYTE1(v265) ^ 0x67;
  v273 = (v268 ^ 0xBA2F94E3) + (v272 ^ 0x7BFCBBFC) + ((2 * v272) & 0xF7F977F8) - 441692658;
  LOBYTE(v63) = BYTE2(v268) ^ 0xE8;
  v274 = v273 - ((2 * v273) & 0x6E5C4EB2) - 1221712039;
  LOBYTE(STACK[0x4FF]) = HIBYTE(v268) ^ 0x7D;
  LOBYTE(STACK[0x537]) = HIBYTE(v268) ^ 0x7D;
  v275 = ((((v274 ^ 0xB72E2759) - 406886107) ^ 0x7FFFDBFF) - 2147474750 + ((2 * ((v274 ^ 0xB72E2759) - 406886107)) & 0xFFFFB7FE) + 319) * (v274 ^ 0xB72E2759);
  LOBYTE(STACK[0x700]) = v271 ^ 0xE0;
  LOBYTE(STACK[0x738]) = v271 ^ 0xE0;
  LOBYTE(STACK[0x36E]) = v63;
  LOBYTE(STACK[0x336]) = v63;
  LOBYTE(STACK[0x3C2]) = BYTE2(v271) ^ 0xC;
  LOBYTE(STACK[0x38A]) = BYTE2(v271) ^ 0xC;
  v276 = (v271 ^ 0x45CB2127) + (v275 ^ 0xF7F8FFB5) + ((2 * v275) & 0xEFF1FF6A) + 463200238;
  v277 = v276 - ((2 * v276) & 0x898FDA2) + 72122065;
  LOBYTE(STACK[0x215]) = BYTE1(v274) ^ 0xE0;
  LOBYTE(STACK[0x553]) = HIBYTE(v271) ^ 0x82;
  LOBYTE(STACK[0x58B]) = HIBYTE(v271) ^ 0x82;
  v278 = ((((v277 ^ 0x44C7ED1) - 1527019979) ^ 0x3EE15BDB) - 1054956507 + ((2 * ((v277 ^ 0x44C7ED1) - 1527019979)) & 0x7DC2B7B6)) * (v277 ^ 0x44C7ED1);
  LOBYTE(STACK[0x754]) = v274 ^ 0x9E;
  LOBYTE(STACK[0x71C]) = v274 ^ 0x9E;
  LOBYTE(STACK[0x3DE]) = BYTE2(v274) ^ 0xE9;
  LOBYTE(STACK[0x3A6]) = BYTE2(v274) ^ 0xE9;
  v279 = (v274 ^ 0xB72E2759) + (v278 ^ 0x6EF6EC7F) + ((2 * v278) & 0xDDEDD8FE) + 315531351;
  v280 = v279 - ((2 * v279) & 0x369EF574) - 1689290054;
  LOBYTE(STACK[0x5A7]) = HIBYTE(v274) ^ 0x70;
  LOBYTE(STACK[0x56F]) = HIBYTE(v274) ^ 0x70;
  LOBYTE(STACK[0x7A8]) = v277 ^ 0x16;
  LOBYTE(STACK[0x770]) = v277 ^ 0x16;
  LOBYTE(STACK[0x269]) = BYTE1(v277) ^ 0xB9;
  LOBYTE(STACK[0x231]) = BYTE1(v277) ^ 0xB9;
  LOBYTE(STACK[0x7C4]) = v280 ^ 0x7D;
  LOBYTE(STACK[0x78C]) = v280 ^ 0x7D;
  LOBYTE(STACK[0x432]) = BYTE2(v277) ^ 0x8B;
  LOBYTE(STACK[0x3FA]) = BYTE2(v277) ^ 0x8B;
  v281 = (v277 ^ 0x44C7ED1) + ((((((v280 ^ 0x9B4F7ABA) + 27847528) ^ 0x63ABBF9F) - 1672200095 + ((2 * ((v280 ^ 0x9B4F7ABA) + 27847528)) & 0xC7577F3E)) * (v280 ^ 0x9B4F7ABA)) ^ 0xFAFB89BD) + ((2 * ((((v280 ^ 0x9B4F7ABA) + 27847528) ^ 0x63ABBF9F) - 1672200095 + ((2 * ((v280 ^ 0x9B4F7ABA) + 27847528)) & 0xC7577F3E)) * (v280 ^ 0x9B4F7ABA)) & 0xF5F7137A) + 321755822;
  LOBYTE(STACK[0x5C3]) = HIBYTE(v277) ^ 0xC3;
  LOBYTE(STACK[0x5FB]) = HIBYTE(v277) ^ 0xC3;
  v282 = v281 - ((2 * v281) & 0x243801A2) + 303825105;
  v283 = ((((v282 ^ 0x121C00D1) - 1878192448) ^ 0x75E4FDF7) - 1977941495 + ((2 * ((v282 ^ 0x121C00D1) - 1878192448)) & 0xEBC9FBEE)) * (v282 ^ 0x121C00D1);
  v284 = (v280 ^ 0x9B4F7ABA) + (v283 ^ 0xBFBEEF3F) + ((2 * v283) & 0x7F7DDE7E) + 1679287249;
  v285 = v284 - ((2 * v284) & 0x82EC1D48) + 1098256036;
  LOBYTE(STACK[0x24D]) = BYTE1(v280) ^ 0xBD;
  LOBYTE(STACK[0x285]) = BYTE1(v280) ^ 0xBD;
  LOBYTE(STACK[0x5DF]) = HIBYTE(v280) ^ 0x5C;
  LOBYTE(STACK[0x617]) = HIBYTE(v280) ^ 0x5C;
  LOBYTE(STACK[0x416]) = BYTE2(v280) ^ 0x88;
  LOBYTE(STACK[0x44E]) = BYTE2(v280) ^ 0x88;
  LOBYTE(STACK[0x7E0]) = v282 ^ 0x16;
  LOBYTE(STACK[0x818]) = v282 ^ 0x16;
  LOBYTE(STACK[0x633]) = HIBYTE(v282) ^ 0xD5;
  LOBYTE(STACK[0x66B]) = HIBYTE(v282) ^ 0xD5;
  v286 = ((((v285 ^ 0x41760EA4) + 1254560578) ^ 0xB8EFEACD) + 1192236339 + ((2 * ((v285 ^ 0x41760EA4) + 1254560578)) & 0x71DFD59A)) * (v285 ^ 0x41760EA4);
  LOBYTE(STACK[0x4A2]) = BYTE2(v282) ^ 0xDB;
  LOBYTE(STACK[0x46A]) = BYTE2(v282) ^ 0xDB;
  LOBYTE(STACK[0x2A1]) = BYTE1(v282) ^ 0xC7;
  LOBYTE(STACK[0x2D9]) = BYTE1(v282) ^ 0xC7;
  v287 = (v282 ^ 0x121C00D1) + (v286 ^ 0xEFCEFEEF) + ((2 * v286) & 0xDF9DFDDE) - 785285648;
  v288 = v287 - ((2 * v287) & 0x943E685C) - 903924690;
  LOBYTE(STACK[0x2BD]) = BYTE1(v285) ^ 0xC9;
  LOBYTE(STACK[0x2F5]) = BYTE1(v285) ^ 0xC9;
  v289 = ((((v288 ^ 0xCA1F342E) + 2098130734) ^ 0xED7FFFFF) + 310378497 + ((2 * ((v288 ^ 0xCA1F342E) + 2098130734)) & 0xDAFFFFFE)) * (v288 ^ 0xCA1F342E);
  LOBYTE(STACK[0x834]) = v285 ^ 0x63;
  LOBYTE(STACK[0x7FC]) = v285 ^ 0x63;
  LOBYTE(STACK[0x486]) = BYTE2(v285) ^ 0xB1;
  LOBYTE(STACK[0x4BE]) = BYTE2(v285) ^ 0xB1;
  v290 = (v285 ^ 0x41760EA4) + (v289 ^ 0x6FDF4DEE) + ((2 * v289) & 0xDFBE9BDC) - 269885406;
  v291 = v290 - ((2 * v290) & 0x70BDF634) - 1201734886;
  LOBYTE(STACK[0x687]) = HIBYTE(v285) ^ 0x86;
  LOBYTE(STACK[0x64F]) = HIBYTE(v285) ^ 0x86;
  LOBYTE(STACK[0x6A3]) = HIBYTE(v288) ^ 0xD;
  LOBYTE(STACK[0x6DB]) = HIBYTE(v288) ^ 0xD;
  LOBYTE(STACK[0x850]) = v288 ^ 0xE9;
  LOBYTE(STACK[0x888]) = v288 ^ 0xE9;
  LOBYTE(STACK[0x365]) = BYTE1(v291) ^ 0x3C;
  LOBYTE(STACK[0x32D]) = BYTE1(v291) ^ 0x3C;
  LOBYTE(STACK[0x349]) = BYTE1(v288) ^ 0xF3;
  LOBYTE(STACK[0x311]) = BYTE1(v288) ^ 0xF3;
  LOBYTE(STACK[0x4DA]) = BYTE2(v288) ^ 0xD8;
  LOBYTE(STACK[0x512]) = BYTE2(v288) ^ 0xD8;
  LOBYTE(STACK[0x8A4]) = v291 ^ 0xDD;
  LOBYTE(STACK[0x86C]) = v291 ^ 0xDD;
  LOBYTE(STACK[0x6F7]) = HIBYTE(v291) ^ 0x7F;
  LOBYTE(STACK[0x6BF]) = HIBYTE(v291) ^ 0x7F;
  LOBYTE(STACK[0x52E]) = BYTE2(v291) ^ 0x99;
  v292 = *(v59 - 114) ^ 0xEF;
  LOBYTE(STACK[0x4F6]) = BYTE2(v291) ^ 0x99;
  v293 = (*(v59 - 115) ^ 0xEF) - ((2 * (*(v59 - 115) ^ 0xEF)) & 0xFFFFFF9F);
  v571 = (*(v59 - 120) ^ 0xEF) - ((2 * (*(v59 - 120) ^ 0xEF)) & 0x126);
  v294 = (*(v59 - 112) ^ 0xEF) - ((2 * (*(v59 - 112) ^ 0xEF)) & 0x122);
  v295 = *((LODWORD(STACK[0x18C8]) ^ 0xE63EDFAE8681B70ELL) + a9 + ((2 * (LODWORD(STACK[0x18C8]) ^ 0x79564AE1u)) & 0x1FFAFFBDELL) + 0x102F989C85862F4FLL);
  v296 = (*(v59 - 111) ^ 0xEF) - ((2 * (*(v59 - 111) ^ 0xEF)) & 0xB2) + 3066986;
  v297 = LOBYTE(STACK[0x770]) ^ 0x13 ^ *((LODWORD(STACK[0x15C0]) ^ 0xDFF5AFDD46A8B59ELL) + a9 + ((2 * (LODWORD(STACK[0x15C0]) ^ 0x79564AE1u)) & 0x7FFDFEFE) + 0x1678C86E455F2DBFLL);
  v298 = v297 - ((2 * v297) & 0xDE);
  v299 = *((LODWORD(STACK[0x1D54]) ^ 0x6EB5EDFF8731D5DFLL) + a9 + ((2 * (LODWORD(STACK[0x1D54]) ^ 0x79564AE1u)) & 0x1FCCF3E7CLL) - 0x784775B479097200);
  v300 = (*(v59 - 108) ^ 0xEF) - ((2 * (*(v59 - 108) ^ 0xEF)) & 0x194);
  v301 = *((LODWORD(STACK[0x1BD0]) ^ 0x6CCFBC73E6EC3713) + a9 + ((2 * (LODWORD(STACK[0x1BD0]) ^ 0x79564AE1u)) & 0x13F74FBE4) - 0x766144281A5C50B4);
  v302 = *((LODWORD(STACK[0x170C]) ^ 0xFF70BB7396EBB53ELL) + a9 + ((2 * (LODWORD(STACK[0x170C]) ^ 0x79564AE1u)) & 0x1DF7BFFBELL) - 0x90243286A5FD2A1);
  v569 = (*(v59 - 119) ^ 0xEF) - ((2 * (*(v59 - 119) ^ 0xEF)) & 0x84);
  v567 = *((LODWORD(STACK[0xAEC]) ^ 0xFA729B6B87A91496) + a9 + ((2 * (LODWORD(STACK[0xAEC]) ^ 0x79564AE1u)) & 0x1FDFEBCEELL) - 0x404232079A13139);
  v303 = *((LODWORD(STACK[0xC70]) ^ 0x75FEFAF4B68F23EELL) + a9 + ((2 * (LODWORD(STACK[0xC70]) ^ 0x79564AE1u)) & 0x19FB2D21ELL) - 0x7F9082A94A7B3BD1);
  v304 = *((LODWORD(STACK[0x1588]) ^ 0x1F15E8FA45A8A11ELL) + a9 + ((2 * (LODWORD(STACK[0x1588]) ^ 0x79564AE1u)) & 0x79FDD7FE) - 0x28A770AEB7A0BEC1);
  v305 = (LOBYTE(STACK[0x78C]) ^ 0x13 ^ v301) - ((2 * (LOBYTE(STACK[0x78C]) ^ 0x13 ^ v301)) & 0x1E8);
  v306 = *((LODWORD(STACK[0x1280]) ^ 0x7F76E4FF88CF32C8) + a9 + ((2 * (LODWORD(STACK[0x1280]) ^ 0x79564AE1u)) & 0x1E332F052) + 0x76F7934B93C4B515);
  v307 = ((((v296 << 8) - 4352) ^ 0x2ECC5900) - ((2 * (((v296 << 8) - 4352) ^ 0x2ECC5900)) & 0x7A405000) + 1025517779) ^ 0x3D2028D3 | ((((v294 << 16) - 309264384) ^ 0xED910000) - ((2 * (((v294 << 16) - 309264384) ^ 0xED910000)) & 0x61D60000) - 253031335) ^ 0xF0EB0C59;
  v308 = LOBYTE(STACK[0x269]) ^ 0x13 ^ *((LODWORD(STACK[0xDF4]) ^ 0x6FC3EF5B56EF315ELL) + a9 + ((2 * (LODWORD(STACK[0xDF4]) ^ 0x79564AE1u)) & 0x5F72F77E) - 0x7955770FAA5B4E81);
  v564 = v308 - ((2 * v308) & 0x1B2);
  v309 = *((v565 ^ 0xE2D77A7BE7B9B45ELL) + a9 + ((2 * (v565 ^ 0x79564AE1)) & 0x13DDFFD7ELL) + 0x1396FDCFE66E2E7FLL);
  v310 = (LOBYTE(STACK[0x7A8]) ^ 0x13 ^ v303) - ((2 * (LOBYTE(STACK[0x7A8]) ^ 0x13 ^ v303)) & 0x70);
  v311 = ((((*(v59 - 116) ^ 0xEF) - ((2 * (*(v59 - 116) ^ 0xEF)) & 0x140)) << 8) - 1445748736) ^ 0xA9D3A000;
  v312 = v311 + 1854896746 - ((2 * v311) & 0x5D1EF400);
  v313 = (v302 ^ LOBYTE(STACK[0x617]) ^ 0x13) - ((2 * (v302 ^ LOBYTE(STACK[0x617]) ^ 0x13)) & 0x160);
  v314 = (LOBYTE(STACK[0x24D]) ^ 0x13 ^ v299) - ((2 * (LOBYTE(STACK[0x24D]) ^ 0x13 ^ v299)) & 0xFFFFFFCF);
  LODWORD(v60) = (LOBYTE(STACK[0x7C4]) ^ 0x13 ^ v306) - ((2 * (LOBYTE(STACK[0x7C4]) ^ 0x13 ^ v306)) & 0xE6);
  v315 = *((LODWORD(STACK[0x10FC]) ^ 0x55EFF33F803CF058) + a9 + ((2 * (LODWORD(STACK[0x10FC]) ^ 0x79564AE1u)) & 0x1F2D57572) - 0x5F817AF4740C8D7BLL);
  v316 = LOBYTE(STACK[0x231]) ^ 0x13 ^ *((LODWORD(STACK[0x1744]) ^ 0xF5FFF75AA4A5D01ELL) + a9 + ((2 * (LODWORD(STACK[0x1744]) ^ 0x79564AE1u)) & 0x1BBE735FELL) + 0x6E80F0A76A923FLL);
  v317 = (v312 ^ 0x6E8F7A6A | (v293 - 710445105) ^ 0xD5A777CF) - ((2 * (v312 ^ 0x6E8F7A6A | (v293 - 710445105) ^ 0xD5A777CF)) & 0xA96A);
  v318 = (LOBYTE(STACK[0x3FA]) ^ 0x13 ^ v295) - ((2 * (LOBYTE(STACK[0x3FA]) ^ 0x13 ^ v295)) & 0xFFFFFF07);
  v319 = LOBYTE(STACK[0x285]) ^ 0x13 ^ *((LODWORD(STACK[0x1404]) ^ 0x77FEDFF70EC9B712) + a9 + ((2 * (LODWORD(STACK[0x1404]) ^ 0x79564AE1u)) & 0xEF3FFBE6) + 0x7E6F98540DBE2F4BLL);
  v320 = ((((*(v59 - 107) ^ 0xEF) - ((2 * (*(v59 - 107) ^ 0xEF)) & 0x190)) << 8) - 768030720) ^ 0xD238C800;
  v321 = (v320 - ((2 * v320) & 0x7E163200) + 1057692157) ^ 0x3F0B19FD | ((((v300 << 16) - 573964288) ^ 0xDDCA0000) - ((2 * (((v300 << 16) - 573964288) ^ 0xDDCA0000)) & 0x73B20000) - 103182603) ^ 0xF9D98EF5;
  v322 = (v321 - ((2 * v321) & 0x7B68931E) - 1112258161) ^ 0xBDB4498F | ((*(v59 - 106) ^ 0xEF) - ((2 * (*(v59 - 106) ^ 0xEF)) & 0x56) + 1872036907) ^ 0x6F95042B;
  v323 = *((LODWORD(STACK[0x1A4C]) ^ 0x35DECF7F422D553FLL) + a9 + ((2 * (LODWORD(STACK[0x1A4C]) ^ 0x79564AE1u)) & 0x76F63FBC) - 0x3F705733B61CF2A0);
  v324 = v322 - ((2 * v322) & 0x3BC456);
  v325 = (((v316 - ((2 * v316) & 0xDDDDDDDD)) << 8) - 1404572160) ^ 0xAC47EE00;
  v326 = (v325 - ((2 * v325) & 0x3DDAFA00) + 518880642) ^ 0x1EED7D82 | ((((v298 << 16) - 982581248) ^ 0xC56F0000) - ((2 * (((v298 << 16) - 982581248) ^ 0xC56F0000)) & 0x8040000) - 2080235333) ^ 0x840220BB;
  v327 = (v307 - ((2 * v307) & 0x18750EDA) + 1278904173) ^ 0x4C3A876D | ((*(v59 - 110) ^ 0xEF) - 297636924 + (~(2 * (*(v59 - 110) ^ 0xEF)) | 0xFFFFFE77) + 1) ^ 0xEE426BC4;
  v328 = ((((v305 << 16) + 2096365568) ^ 0x7CF40000) - ((2 * (((v305 << 16) + 2096365568) ^ 0x7CF40000)) & 0x34A80000) + 441728172) ^ 0x1A543CAC | ((((v314 << 8) - 755636480) ^ 0xD2F5E700) - ((2 * (((v314 << 8) - 755636480) ^ 0xD2F5E700)) & 0xD342800) - 962980822) ^ 0xC69A142A;
  v329 = (v326 - ((2 * v326) & 0x2551CEBE) - 1834424481) ^ 0x92A8E75F | (v318 + 60198019) ^ 0x3968C83;
  v330 = v329 + 3674882 - ((2 * v329) & 0x702978);
  v331 = LOBYTE(STACK[0x432]) ^ *((LODWORD(STACK[0xF78]) ^ 0xF7FF7F398773BDDELL) + a9 + ((2 * (LODWORD(STACK[0xF78]) ^ 0x79564AE1u)) & 0x1FC4BEE7ELL) - 0x19106EE78C7CA01);
  v332 = (v331 ^ 0x13) - ((2 * v331) & 0x40);
  v333 = (((((v564 << 8) - 471213824) ^ 0xE3E9D900) + 1400937129 + (~(2 * (((v564 << 8) - 471213824) ^ 0xE3E9D900)) | 0xD8FECBFF)) | 1) ^ 0x53809AA9 | ((((v310 << 16) + 20447232) ^ 0x1380000) - ((2 * (((v310 << 16) + 20447232) ^ 0x1380000)) & 0x7FDC0000) + 1072625288) ^ 0x3FEEF688;
  v334 = (((v319 - ((2 * v319) & 0x42)) << 8) + 1989746944) ^ 0x76992100;
  v335 = (v334 - ((2 * v334) & 0x7AADCE00) - 1118378104) ^ 0xBD56E788 | ((((v60 << 16) + 1970470912) ^ 0x75730000) - ((2 * (((v60 << 16) + 1970470912) ^ 0x75730000)) & 0xA9C0000) + 1162800222) ^ 0x454EEC5E;
  v336 = (v332 + 464086560) ^ 0x1BA96620 | (v333 - ((2 * v333) & 0x1895D5EE) + 206236407) ^ 0xC4AEAF7;
  v337 = (((v327 + 1762932 - ((2 * v327) & 0x35D636)) << 8) + 304896) ^ 0x1AEB1B00;
  v338 = v337 - ((2 * v337) & 0xA2BE9400);
  v339 = *(v59 - 105) ^ 0xEF;
  v340 = ((v309 ^ LOBYTE(STACK[0x416]) ^ 0x13) - ((2 * (v309 ^ LOBYTE(STACK[0x416]) ^ 0x13)) & 0x19C) - 1557343282) ^ 0xA32CD3CE | (v328 - ((2 * v328) & 0x135D6B72) + 1236186553) ^ 0x49AEB5B9;
  v341 = ((((v569 << 8) - 1857601024) ^ 0x91474200) - ((2 * (((v569 << 8) - 1857601024) ^ 0x91474200)) & 0x11342C00) - 929425805) ^ 0xC89A1673 | ((((v571 << 16) - 778895360) ^ 0xD1930000) - ((2 * (((v571 << 16) - 778895360) ^ 0xD1930000)) & 0x29760000) + 347834855) ^ 0x14BB89E7;
  v342 = (((v292 + 11786370 - ((2 * v292) & 0xB0)) << 8) + 316928) ^ 0xB3DD5800;
  v343 = ((((v317 << 16) - 726335488) ^ 0xD4B50000) - ((2 * (((v317 << 16) - 726335488) ^ 0xD4B50000)) & 0x820000) + 4264641) ^ 0x4112C1 | (v342 - ((2 * v342) & 0x28227200) + 336673260) ^ 0x141139EC;
  v344 = v343 - ((2 * v343) & 0xE8F1B574);
  v345 = ((*(v59 - 109) ^ 0xEF) - ((2 * (*(v59 - 109) ^ 0xEF)) & 0xC) - 794159098) ^ 0xD0AA1806 | (v338 - 782284070) ^ 0xD15F4ADA;
  v346 = v345 - ((2 * v345) & 0x62632B48) - 1322150492;
  v347 = (v335 - ((2 * v335) & 0x6F8F984E) + 935840807) ^ 0x37C7CC27 | ((v304 ^ LOBYTE(STACK[0x44E]) ^ 0x13) - ((2 * (v304 ^ LOBYTE(STACK[0x44E]) ^ 0x13)) & 0x78) - 1736825540) ^ 0x987A253C;
  v348 = v347 - ((2 * v347) & 0x6D6EBE);
  v349 = (((((v336 - ((2 * v336) & 0x2FD742)) << 8) - 1746165504) ^ 0x97EBA100) - ((2 * ((((v336 - ((2 * v336) & 0x2FD742)) << 8) - 1746165504) ^ 0x97EBA100)) & 0x9D58EC00) + 1319925385) ^ 0x4EAC7689 | ((LOBYTE(STACK[0x5FB]) ^ 0x13 ^ v315) - ((2 * (LOBYTE(STACK[0x5FB]) ^ 0x13 ^ v315)) & 0x3C) - 1590126562) ^ 0xA138981E;
  v350 = v349 - ((2 * v349) & 0x119E6A9C) - 1999686322;
  v351 = (((v340 - ((2 * v340) & 0xC51686)) << 8) - 494189824) ^ 0xE28B4300;
  v352 = (v344 + 1954077370) ^ 0x7478DABA | ((*(v59 - 113) ^ 0xEF) - ((2 * (*(v59 - 113) ^ 0xEF)) & 0xB4) + 2071297882) ^ 0x7B757F5A;
  v353 = v352 - ((2 * v352) & 0xAE463EFE) - 685564033;
  v354 = ((*(v59 - 118) ^ 0xEF) - ((2 * (*(v59 - 118) ^ 0xEF)) & 0x190) - 1018788408) ^ 0xC34685C8 | (v341 - ((2 * v341) & 0x97810CA) - 994310043) ^ 0xC4BC0865;
  v355 = (((v354 - ((2 * v354) & 0xAC1A9C)) << 8) - 703771136) ^ 0xD60D4E00;
  v356 = (v355 - ((2 * v355) & 0x112F5E00) + 144158530) ^ 0x897AF42 | ((*(v59 - 117) ^ 0xEF) - ((2 * (*(v59 - 117) ^ 0xEF)) & 0xA0) - 1399846832) ^ 0xAC900850;
  v357 = (v351 - ((2 * v351) & 0x300B2000) - 1744465850) ^ 0x98059046 | ((v567 ^ LOBYTE(STACK[0x5DF]) ^ 0x13) - ((2 * (v567 ^ LOBYTE(STACK[0x5DF]) ^ 0x13)) & 0x126) - 794088557) ^ 0xD0AB2B93;
  v358 = ((((v330 << 8) + 113152) ^ 0x3814BC00) - ((2 * (((v330 << 8) + 113152) ^ 0x3814BC00)) & 0x715AC800) - 1196596021) ^ 0xB8AD64CB | ((LOBYTE(STACK[0x5C3]) ^ 0x13 ^ v323) - ((2 * (LOBYTE(STACK[0x5C3]) ^ 0x13 ^ v323)) & 0x166) - 25358413) ^ 0xFE7D0FB3;
  LODWORD(STACK[0xDE8]) = v350 ^ v346 ^ 0x40A8EA0B;
  v359 = ((((v324 << 8) - 1646122240) ^ 0x9DE22B00) - ((2 * (((v324 << 8) - 1646122240) ^ 0x9DE22B00)) & 0x1BA40A00) - 1915615974) ^ 0x8DD2051A | (-v339 - 1102179585) ^ 0xBE4E12FF;
  v360 = (v357 - ((2 * v357) & 0x288C2354) + 340136362) ^ v353;
  v361 = ((((v348 << 8) + 917987072) ^ 0x36B75F00) - ((2 * (((v348 << 8) + 917987072) ^ 0x36B75F00)) & 0xF16B1E00) + 2025164573) ^ 0x78B58F1D | (v313 - 409807440) ^ 0xE792D5B0;
  v362 = (v359 - ((2 * v359) & 0xC91C193C) + 1687030942) ^ (v361 - ((2 * v361) & 0x6C1B405C) + 906862638);
  LODWORD(STACK[0xC64]) = v360 ^ 0xBA334434;
  v363 = v360 ^ 0xC3650ED5;
  v364 = (v360 ^ 0xC3650ED5) - 365499804;
  v365 = v364 ^ 0x5D3FF7B2;
  v366 = (2 * v364) & 0xBA7FEF64;
  v367 = v362 ^ 0x2BD5E651;
  v368 = v362 ^ 0x5283ACB0;
  v369 = (v358 - ((2 * v358) & 0x6079C844) - 1338186718) ^ (v356 - ((2 * v356) & 0x7E928C38) - 1085716964);
  v370 = v350 ^ v346 ^ 0x39FEA0EA;
  LODWORD(STACK[0xAE0]) = v369 ^ 0x7623E8DF;
  v371 = ((((v362 ^ 0x5283ACB0) - 1206593844) ^ 0x7B5F5F5F) - 2069847903 + ((2 * ((v362 ^ 0x5283ACB0) - 1206593844)) & 0xF6BEBEBE)) * (v362 ^ 0x5283ACB0);
  v372 = (v365 - 1564473266 + v366) * v363;
  v373 = v372 ^ 0xFFF757FF;
  v374 = (2 * v372) & 0xFFEEAFFE;
  v375 = v370 + (v371 ^ 0xDF7739FF) + ((2 * v371) & 0xBEEE73FE) + 97237444;
  v376 = v375 + 2035698401 - ((2 * v375) & 0xF2AC95C2);
  v377 = v376 ^ 0x79564AE1;
  v378 = (v376 ^ 0x79564AE1) + 931829429;
  v379 = (((v370 + 206442678) ^ 0xFEFFFAFD) + 16778499 + ((2 * (v370 + 206442678)) & 0xFDFFF5FA)) * v370;
  LODWORD(STACK[0xF6C]) = v367;
  v380 = (v369 ^ 0xF75A23E) + v373 + v374 + 1130684826 - ((2 * ((v369 ^ 0xF75A23E) + v373 + v374 - 905013575)) & 0xF2AC95C2);
  v381 = v380 ^ 0x79564AE1;
  v382 = v363 + (v379 ^ 0x753CC77B) + ((2 * v379) & 0xEA798EF6) - 1907910496;
  v383 = v382 + 2035698401 - ((2 * v382) & 0xF2AC95C2);
  LODWORD(STACK[0x10F0]) = v380;
  v384 = ((((v380 ^ 0x79564AE1) - 1849164566) ^ 0xE7BFBDF9) + 406864391 + ((2 * ((v380 ^ 0x79564AE1) - 1849164566)) & 0xCF7F7BF2)) * (v380 ^ 0x79564AE1);
  v385 = v384 ^ 0xFFE7877F;
  v386 = (2 * v384) & 0xFFCF0EFE;
  LODWORD(STACK[0x13F8]) = v376;
  v387 = v383 ^ 0x79564AE1;
  v388 = ((((v383 ^ 0x79564AE1) + 1655660131) ^ 0xFDFFDD5D) + 33563299 + ((2 * ((v383 ^ 0x79564AE1) + 1655660131)) & 0xFBFFBABA)) * (v383 ^ 0x79564AE1);
  v389 = ((2 * v388) & 0xF97B7F7E) + (v388 ^ 0xFCBDBFBF);
  HIDWORD(v150) = v389 + 1;
  LODWORD(v150) = v389 + 54673473;
  v390 = (v150 >> 4) - ((2 * (v150 >> 4)) & 0xC2C84664) - 513531086;
  LODWORD(STACK[0x1274]) = v383;
  v391 = v368 + v385 + v386 - 522874982 - ((2 * (v368 + v385 + v386 + 1736393913)) & 0xF2AC95C2);
  v392 = v391 ^ 0x79564AE1;
  v393 = (v391 ^ 0x79564AE1) + 231422626;
  v394 = v393 ^ 0x7C2EFFBD;
  v395 = (2 * v393) & 0xF85DFF7A;
  v396 = ((v378 ^ 0xFBFFD1F7) + 67120649 + ((2 * v378) & 0xF7FFA3EE)) * v377;
  v397 = v396 ^ 0x7FC96AFF;
  v398 = (2 * v396) & 0xFF92D5FE;
  HIDWORD(v150) = v390 ^ 0x1642332;
  LODWORD(v150) = v390 ^ 0xE0000000;
  v399 = v381 + ((v150 >> 28) ^ 0xCFF8FB4B) + ((2 * (v150 >> 28)) & 0x9FF1F696) + 382930829;
  v400 = v399 + 2035698401 - ((2 * v399) & 0xF2AC95C2);
  LODWORD(STACK[0x157C]) = v391;
  v401 = v377 + (((v394 - 2083454909 + v395) * (v391 ^ 0x79564AE1)) ^ 0x3BF1EE35) + ((2 * (v394 - 2083454909 + v395) * (v391 ^ 0x79564AE1)) & 0x77E3DC6A) + 1651860619;
  v402 = v401 + 2035698401 - ((2 * v401) & 0xF2AC95C2);
  v403 = ((((v400 ^ 0x79564AE1) - 500197015) ^ 0xEDE1FF96) + 303956074 + ((2 * ((v400 ^ 0x79564AE1) - 500197015)) & 0xDBC3FF2C)) * (v400 ^ 0x79564AE1);
  v404 = v403 ^ 0x7DBFFCBE;
  v405 = (2 * v403) & 0xFB7FF97C;
  v406 = v402 ^ 0x79564AE1;
  v407 = ((((v402 ^ 0x79564AE1) - 2080480705) ^ 0x3FDFEEBD) - 1071640253 + ((2 * ((v402 ^ 0x79564AE1) - 2080480705)) & 0x7FBFDD7A)) * (v402 ^ 0x79564AE1);
  v408 = v387 + v397 + v398 - 1890465964 - ((2 * (v387 + v397 + v398 + 368802931)) & 0xF2AC95C2);
  v409 = v392 + v404 + v405 - 246926545 - ((2 * (v392 + v404 + v405 + 2012342350)) & 0xF2AC95C2);
  v410 = (v409 ^ 0x79564AE1) - 437995449;
  v411 = v410 ^ 0xFFF772BF;
  v412 = (2 * v410) & 0xFFEEE57E;
  v413 = ((((v408 ^ 0x79564AE1) + 1094628872) ^ 0xFD6DBF99) + 43139175 + ((2 * ((v408 ^ 0x79564AE1) + 1094628872)) & 0xFADB7F32)) * (v408 ^ 0x79564AE1);
  v414 = (v408 ^ 0x79564AE1) + (v407 ^ 0x7EBF15BF) + ((2 * v407) & 0xFD7E2B7E) + 1697456528;
  v415 = v414 + 2035698401 - ((2 * v414) & 0xF2AC95C2);
  v416 = (v400 ^ 0x79564AE1) + (v413 ^ 0xFAEBD6FE) + ((2 * v413) & 0xF5D7ADFC) - 131221337;
  v417 = v416 + 2035698401 - ((2 * v416) & 0xF2AC95C2);
  v418 = v417 ^ 0x79564AE1;
  LODWORD(STACK[0x1A08]) = v402;
  v419 = (v415 ^ 0x79564AE1) + 1060866930;
  v420 = v419 ^ 0x2EE51ED9;
  v421 = (2 * v419) & 0x5DCA3DB2;
  LODWORD(STACK[0x1700]) = v400;
  v422 = ((((v417 ^ 0x79564AE1) - 1885332716) ^ 0x2FFB79AB) - 805009835 + ((2 * ((v417 ^ 0x79564AE1) - 1885332716)) & 0x5FF6F356)) * (v417 ^ 0x79564AE1);
  v423 = (v411 + 558499 + v412 + 1950) * (v409 ^ 0x79564AE1);
  v424 = v406 + (v423 ^ 0x7FFCBFFF) + ((2 * v423) & 0xFFF97FFE) - 167704833;
  v425 = v424 + 2035698401 - ((2 * v424) & 0xF2AC95C2);
  v426 = (v420 - 786767577 + v421) * (v415 ^ 0x79564AE1);
  v427 = v426 ^ 0xFEFF7E3D;
  v428 = (2 * v426) & 0xFDFEFC7A;
  LODWORD(STACK[0x1884]) = v408;
  v429 = (v409 ^ 0x79564AE1) + (v422 ^ 0xEFDBE9EF) + ((2 * v422) & 0xDFB7D3DE) - 1712109767;
  v430 = v429 + 2035698401 - ((2 * v429) & 0xF2AC95C2);
  LODWORD(STACK[0x1B8C]) = v409;
  v431 = (v425 ^ 0x79564AE1) - 979017405;
  v432 = v431 ^ 0x759FB5DB;
  v433 = (2 * v431) & 0xEB3F6BB6;
  v434 = v430 ^ 0x79564AE1;
  v435 = ((((v430 ^ 0x79564AE1) - 1991769739) ^ 0xABEF7B72) + 1410368654 + ((2 * ((v430 ^ 0x79564AE1) - 1991769739)) & 0x57DEF6E4)) * (v430 ^ 0x79564AE1);
  LODWORD(STACK[0x1D10]) = v417;
  v436 = (v415 ^ 0x79564AE1) + (((v432 - 1973401051 + v433) * (v425 ^ 0x79564AE1)) ^ 0x7EFDFCD7) + ((2 * (v432 - 1973401051 + v433) * (v425 ^ 0x79564AE1)) & 0xFDFBF9AE) - 1357360710;
  v437 = v436 + 2035698401 - ((2 * v436) & 0xF2AC95C2);
  v438 = (v437 ^ 0x79564AE1) + 1139318838;
  v439 = v438 ^ 0x3FFF7BBF;
  v440 = (2 * v438) & 0x7FFEF77E;
  v441 = (v425 ^ 0x79564AE1) + (v435 ^ 0x771C7FA9) + ((2 * v435) & 0xEE38FF52) - 1452088340;
  v442 = v441 + 2035698401 - ((2 * v441) & 0xF2AC95C2);
  v443 = v418 + v427 + v428 + 528145111 - ((2 * (v418 + v427 + v428 - 1507553290)) & 0xF2AC95C2);
  LODWORD(STACK[0xAA8]) = v425;
  v444 = ((((v443 ^ 0x79564AE1) + 276784180) ^ 0xCFFCFDC3) + 805503549 + ((2 * ((v443 ^ 0x79564AE1) + 276784180)) & 0x9FF9FB86)) * (v443 ^ 0x79564AE1);
  v445 = v444 ^ 0x6FE77FFB;
  v446 = (2 * v444) & 0xDFCEFFF6;
  v447 = ((((v442 ^ 0x79564AE1) + 1191749206) ^ 0x3EFBABFB) - 1056680955 + ((2 * ((v442 ^ 0x79564AE1) + 1191749206)) & 0x7DF757F6)) * (v442 ^ 0x79564AE1);
  LODWORD(STACK[0xC2C]) = v430;
  LODWORD(STACK[0xF34]) = v437;
  v448 = (v437 ^ 0x79564AE1) + (v447 ^ 0x6D7BF8DD) + ((2 * v447) & 0xDAF7F1BA) + 528329218;
  v449 = v448 + 2035698401 - ((2 * v448) & 0xF2AC95C2);
  v450 = (v443 ^ 0x79564AE1) + (((v439 - 1073707967 + v440) * (v437 ^ 0x79564AE1)) ^ 0x3BF7F253) + ((2 * (v439 - 1073707967 + v440) * (v437 ^ 0x79564AE1)) & 0x77EFE4A6) - 854203149;
  v451 = v450 + 2035698401 - ((2 * v450) & 0xF2AC95C2);
  v452 = v434 + v445 + v446 + 1843804027 - ((2 * (v434 + v445 + v446 - 191894374)) & 0xF2AC95C2);
  v453 = (v449 ^ 0x79564AE1) + 887327061;
  v454 = v453 ^ 0xEF27F8FF;
  v455 = (2 * v453) & 0xDE4FF1FE;
  v456 = ((((v452 ^ 0x79564AE1) - 1438325955) ^ 0x5DBEBDAE) - 1572781486 + ((2 * ((v452 ^ 0x79564AE1) - 1438325955)) & 0xBB7D7B5C)) * (v452 ^ 0x79564AE1);
  v457 = (v442 ^ 0x79564AE1) + (v456 ^ 0x75F65C5F) + ((2 * v456) & 0xEBECB8BE) + 1858965264;
  v458 = v457 + 2035698401 - ((2 * v457) & 0xF2AC95C2);
  v459 = v458 ^ 0x79564AE1;
  LODWORD(STACK[0xDB0]) = v443;
  LODWORD(STACK[0x10B8]) = v442;
  v460 = ((((v458 ^ 0x79564AE1) - 638075184) ^ 0xF5F6FFF7) + 168361993 + ((2 * ((v458 ^ 0x79564AE1) - 638075184)) & 0xEBEDFFEE)) * (v458 ^ 0x79564AE1);
  v461 = v460 ^ 0x2EF6E6F7;
  v462 = (2 * v460) & 0x5DEDCDEE;
  LODWORD(STACK[0x123C]) = v452;
  v463 = ((((v451 ^ 0x79564AE1) + 1574679164) ^ 0xDEB7DFAF) + 558374993 + ((2 * ((v451 ^ 0x79564AE1) + 1574679164)) & 0xBD6FBF5E)) * (v451 ^ 0x79564AE1);
  v464 = (v452 ^ 0x79564AE1) + (v463 ^ 0xF5FBFBFB) + ((2 * v463) & 0xEBF7F7F6) + 1270021511;
  v465 = v464 + 2035698401 - ((2 * v464) & 0xF2AC95C2);
  v466 = (v465 ^ 0x79564AE1) + 1613576073;
  v467 = v466 ^ 0x7BDF9A4F;
  v468 = (2 * v466) & 0xF7BF349E;
  LODWORD(STACK[0x1544]) = v449;
  v469 = (v451 ^ 0x79564AE1) + (((v454 + 282593025 + v455) * (v449 ^ 0x79564AE1)) ^ 0xDEF7FFEF) + ((2 * (v454 + 282593025 + v455) * (v449 ^ 0x79564AE1)) & 0xBDEFFFDE) - 869058603;
  v470 = v469 + 2035698401 - ((2 * v469) & 0xF2AC95C2);
  v471 = (v449 ^ 0x79564AE1) + v461 + v462 + 223523103 - ((2 * ((v449 ^ 0x79564AE1) + v461 + v462 - 1812175298)) & 0xF2AC95C2);
  v472 = (v467 - 2078251599 + v468) * (v465 ^ 0x79564AE1);
  v473 = ((((v470 ^ 0x79564AE1) - 982741109) ^ 0xFF461BBD) + 12182595 + ((2 * ((v470 ^ 0x79564AE1) - 982741109)) & 0xFE8C377A)) * (v470 ^ 0x79564AE1);
  LODWORD(STACK[0x16C8]) = v458;
  LODWORD(STACK[0x13C0]) = v451;
  v474 = (v465 ^ 0x79564AE1) + (v473 ^ 0xEDED9DDB) + ((2 * v473) & 0xDBDB3BB6) - 441732585 + 2035698401 - ((2 * ((v465 ^ 0x79564AE1) + (v473 ^ 0xEDED9DDB) + ((2 * v473) & 0xDBDB3BB6) - 441732585)) & 0xF2AC95C2);
  v475 = ((2 * (v459 + (v472 ^ 0xEFDFF4ED) + ((2 * v472) & 0xDFBFE9DA) + 270535443)) & 0xF9EFD7F2) + ((v459 + (v472 ^ 0xEFDFF4ED) + ((2 * v472) & 0xDFBFE9DA) + 270535443) ^ 0xFCF7EBF9);
  v476 = v475 - ((2 * v475 + 1518536854) & 0xF2AC95C2) - 1500000468;
  v477 = v474 ^ 0x79564AE1;
  v478 = (v474 ^ 0x79564AE1) - 1563902107;
  LODWORD(STACK[0x924]) = v415;
  LODWORD(STACK[0x8EC]) = v474;
  v479 = (v476 ^ 0x79564AE1) * (v475 - 2012485954);
  v480 = v479 ^ 0xD9FEFF64;
  v481 = (2 * v479) & 0xB3FDFEC8;
  v482 = ((v478 ^ 0xFFF7B7BB) + 542789 + ((2 * v478) & 0xFFEF6F76)) * v477;
  LODWORD(STACK[0x184C]) = v465;
  v483 = (v482 ^ 0xFD7EAFFF) + ((2 * v482) & 0xFAFD5FFE) - 1311133211 + (v476 ^ 0x79564AE1);
  v484 = v483 + 2035698401 - ((2 * v483) & 0xF2AC95C2);
  v485 = ((((v471 ^ 0x79564AE1) + 24266156) ^ 0xFF7737FB) + 8964101 + ((2 * ((v471 ^ 0x79564AE1) + 24266156)) & 0xFEEE6FF6)) * (v471 ^ 0x79564AE1);
  LODWORD(STACK[0x1B54]) = v471;
  v486 = (v471 ^ 0x79564AE1) + v480 + v481 - 1164400613 - ((2 * ((v471 ^ 0x79564AE1) + v480 + v481 + 1094868282)) & 0xF2AC95C2);
  LODWORD(STACK[0x1CD8]) = v476;
  LODWORD(STACK[0x19D0]) = v470;
  v487 = (v470 ^ 0x79564AE1) + (v485 ^ 0xFEFB717E) + ((2 * v485) & 0xFDF6E2FC) + 555179177;
  v488 = v487 + 2035698401 - ((2 * v487) & 0xF2AC95C2);
  v489 = v488 ^ 0x79564AE1;
  v490 = (v488 ^ 0x79564AE1) + 1632780830;
  v491 = v490 ^ 0x5FFFFB7F;
  v492 = (2 * v490) & 0xBFFFF6FE;
  v493 = v484 ^ 0x79564AE1;
  v494 = (v491 - 1610612876 + v492 + 1293) * (v488 ^ 0x79564AE1);
  v495 = ((((v484 ^ 0x79564AE1) - 833715648) ^ 0xEBD3FF7F) + 338428033 + ((2 * ((v484 ^ 0x79564AE1) - 833715648)) & 0xD7A7FEFE)) * (v484 ^ 0x79564AE1);
  v496 = v486 ^ 0x79564AE1;
  v497 = (v486 ^ 0x79564AE1) + 1602764768;
  LODWORD(STACK[0xBF4]) = v486;
  LODWORD(STACK[0xA70]) = v488;
  v498 = v477 + (v494 ^ 0x5FF5BFF9) + ((2 * v494) & 0xBFEB7FF2) - 108787338;
  v499 = v498 + 2035698402 + ~((2 * v498) & 0xF2AC95C2);
  v500 = (v486 ^ 0x79564AE1) + (v495 ^ 0x37CFBA57) + ((2 * v495) & 0x6F9F74AE) - 683170012;
  v501 = v500 + 2035698401 - ((2 * v500) & 0xF2AC95C2);
  v502 = ((v497 ^ 0xF73B5BF9) + 147104775 + ((2 * v497) & 0xEE76B7F2)) * v496;
  LODWORD(STACK[0xD78]) = v484;
  v503 = v489 + (v502 ^ 0xF3BEEF37) + ((2 * v502) & 0xE77DDE6E) + 1794878578;
  v504 = v503 + 2035698401 - ((2 * v503) & 0xF2AC95C2);
  v505 = ((((v499 ^ 0x79564AE1) - 862877015) ^ 0xFFFE9FEB) + 89062 + ((2 * ((v499 ^ 0x79564AE1) - 862877015)) & 0xFFFD3FD6) + 1071) * (v499 ^ 0x79564AE1);
  v506 = v505 ^ 0x7FF7FF7F;
  v507 = (2 * v505) & 0xFFEFFEFE;
  v508 = v501 ^ 0x79564AE1;
  v509 = ((((v501 ^ 0x79564AE1) + 247930638) ^ 0xECBEB86F) + 323045265 + ((2 * ((v501 ^ 0x79564AE1) + 247930638)) & 0xD97D70DE)) * (v501 ^ 0x79564AE1);
  v510 = v504 ^ 0x79564AE1;
  v511 = v493 + v506 + v507 - 1988047681 - ((2 * (v493 + v506 + v507 + 271221214)) & 0xF2AC95C2);
  v512 = ((((v504 ^ 0x79564AE1) + 29657148) ^ 0x5EE3FFF7) - 1592000503 + ((2 * ((v504 ^ 0x79564AE1) + 29657148)) & 0xBDC7FFEE)) * (v504 ^ 0x79564AE1);
  v513 = v512 ^ 0xBF6D6FF5;
  v514 = (2 * v512) & 0x7EDADFEA;
  v515 = v511 ^ 0x79564AE1;
  LODWORD(STACK[0x1204]) = v501;
  LODWORD(STACK[0xEFC]) = v499;
  v516 = (v499 ^ 0x79564AE1) + v513 + v514 - 606989163 - ((2 * ((v499 ^ 0x79564AE1) + v513 + v514 + 1652279732)) & 0xF2AC95C2);
  v517 = v516 ^ 0x79564AE1;
  v518 = (v516 ^ 0x79564AE1) - 91915878;
  LODWORD(STACK[0x150C]) = v516;
  v519 = ((((v511 ^ 0x79564AE1) + 873602273) ^ 0x520EFFFF) - 1376714751 + ((2 * ((v511 ^ 0x79564AE1) + 873602273)) & 0xA41DFFFE)) * (v511 ^ 0x79564AE1);
  LODWORD(STACK[0x1080]) = v504;
  v520 = ((v518 ^ 0x79FFBBFF) - 2046802943 + ((2 * v518) & 0xF3FF77FE)) * v517;
  LODWORD(STACK[0x1388]) = v511;
  v521 = v510 + (v509 ^ 0x7B8FF7EF) + ((2 * v509) & 0xF71FEFDE) - 406235667;
  v522 = v521 + 2035698401 - ((2 * v521) & 0xF2AC95C2);
  v523 = v522 ^ 0x79564AE1;
  v524 = ((((v522 ^ 0x79564AE1) + 536294654) ^ 0xB6FFFFED) + 1224736787 + ((2 * ((v522 ^ 0x79564AE1) + 536294654)) & 0x6DFFFFDA)) * (v522 ^ 0x79564AE1);
  v525 = v508 + (v519 ^ 0xDEE7FFE7) + ((2 * v519) & 0xBDCFFFCE) + 2107202464;
  v526 = v525 + 2035698402 + ~((2 * v525) & 0xF2AC95C2);
  v527 = v515 + (v520 ^ 0xCE1FDFFF) + ((2 * v520) & 0x9C3FBFFE) + 852317324;
  v528 = v527 + 2035698401 - ((2 * v527) & 0xF2AC95C2);
  LODWORD(STACK[0x1814]) = v526;
  v529 = v526 ^ 0x79564AE1;
  v530 = (v526 ^ 0x79564AE1) - 1434580277;
  v531 = v530 ^ 0x7E4FF53B;
  v532 = (2 * v530) & 0xFC9FEA76;
  LODWORD(STACK[0x1690]) = v522;
  v533 = v517 + (v524 ^ 0x73F7BFFD) + ((2 * v524) & 0xE7EF7FFA) + 510720571;
  v534 = v533 + 2035698401 - ((2 * v533) & 0xF2AC95C2);
  v535 = ((((v534 ^ 0x79564AE1) - 147545505) ^ 0x767B177B) - 1987778427 + ((2 * ((v534 ^ 0x79564AE1) - 147545505)) & 0xECF62EF6)) * (v534 ^ 0x79564AE1);
  v536 = v529 + 28735859 + ((((((v528 ^ 0x79564AE1) - 646577300) ^ 0x9FD6FFE6) + 1613299738 + ((2 * ((v528 ^ 0x79564AE1) - 646577300)) & 0x3FADFFCC)) * (v528 ^ 0x79564AE1)) ^ 0xDBF7BDDF) + ((2 * ((((v528 ^ 0x79564AE1) - 646577300) ^ 0x9FD6FFE6) + 1613299738 + ((2 * ((v528 ^ 0x79564AE1) - 646577300)) & 0x3FADFFCC)) * (v528 ^ 0x79564AE1)) & 0xB7EF7BBE);
  v537 = v523 + (((v531 - 2119169339 + v532) * v529) ^ 0xFDFF0FBB) + ((2 * (v531 - 2119169339 + v532) * v529) & 0xFBFE1F76) + 1061330973;
  v538 = v537 + 2035698401 - ((2 * v537) & 0xF2AC95C2);
  LODWORD(STACK[0x1CA0]) = v538;
  v539 = (v528 ^ 0x79564AE1) + (v535 ^ 0xC9EB7DF6) + ((2 * v535) & 0x93D6FBEC) + 429555255;
  LODWORD(STACK[0x1998]) = v528;
  LODWORD(STACK[0xA38]) = v539 + 2035698401 - ((2 * v539) & 0xF2AC95C2);
  v540 = ((((v538 ^ 0x79564AE1) - 889553716) ^ 0xCD8FFD9E) + 846201442 + ((2 * ((v538 ^ 0x79564AE1) - 889553716)) & 0x9B1FFB3C)) * (v538 ^ 0x79564AE1);
  LODWORD(STACK[0x1E24]) = v536 + 2035698401 - ((2 * v536) & 0xF2AC95C2);
  v541 = (v574 - 1031) | 0x400;
  v542 = (v534 ^ 0x79564AE1) + (v540 ^ 0x5BFFB3BF) + ((2 * v540) & 0xB7FF677E) + 231937659;
  LODWORD(STACK[0xBBC]) = v542 + 2035698401 - ((2 * v542) & 0xF2AC95C2);
  LODWORD(STACK[0x1B1C]) = v534;
  v543 = (a8 + 1853438341) < 0x75FF79D9;
  v544 = (-1632020887 * ((*a12 ^ ((v541 ^ 0x1D1) + 1811636986)) + 2 * *a12) - ((24292562 * ((*a12 ^ ((v541 ^ 0x1D1) + 1811636986)) + 2 * *a12) + 56057042) & 0x2B61E8A) + 956743086) ^ 0x6D9C8C2;
  v545 = (v544 ^ 0x992EFD0F ^ ((v544 ^ 0x1375F3F3u) % 0x101 - 1973747456 - ((2 * ((v544 ^ 0x1375F3F3u) % 0x101)) & 0x1F8) + 3580)) + 1884058600;
  v546 = (v545 ^ 0xDFDFEFB6) - 1108138398 + ((2 * v545) & 0xBFBFDF6C) + 538972234;
  v547 = ((v546 + 585424497 - ((2 * v546) & 0x45C9BCE2)) ^ 0xEFCFF504) + 1017221113;
  v548 = ((2 * v547) & 0xF4D97BCE) + (v547 ^ 0x7A6CBDE7);
  v549 = ((2 * (945808457 - v548)) & 0xCEEA6F7E) + ((945808457 - v548) ^ 0x677537BF);
  v550 = -356961841 - v548 - ((2 * (-356961841 - v548)) & 0x6FD5DD84) - 1209340222;
  v551 = ((2 * ((v548 - 2053946855) ^ 0xD92BD650)) & 0x7F7AFD7E ^ 0x2800F84A) + ((v548 - 2053946855) ^ 0xF29655CA);
  v552 = (((v550 ^ 0xA19C8A0) + 737525808) ^ 0x7ED97F75) + v551 + ((2 * ((v550 ^ 0xA19C8A0) + 737525808)) & 0xFDB2FEEA);
  v553 = v552 - ((2 * v552 + 47317912) & 0x27EF0222) - 715095331;
  v554 = ((2 * (v553 ^ v550)) & 0xF5D6FDF4 ^ 0x4012DDA4) + (v553 ^ v550 ^ 0xDEF61129);
  v555 = ((2 * (v551 - 1069383359 + (v553 ^ 0x93F78111))) & 0xF3DFCD76) + ((v551 - 1069383359 + (v553 ^ 0x93F78111)) ^ 0xF9EFE6BB);
  v556 = ((2 * (v553 ^ (v549 - 1735735231))) & 0xC407EFC2 ^ 0x4070202) + (v553 ^ (v549 - 1735735231) ^ 0xF1F476F0);
  v557 = v549 + v554 - v555 - 87631700 - ((2 * (v549 + v554 - v555 - 87631700) + 965783212) & 0x8FDD8100) - 457762858;
  v558 = v554 + 85229830 + (v557 ^ 0x7CCC5F3C);
  if ((a8 + 1853438341) >= 0x75FF79D9)
  {
    v543 = (a8 + 1853438341) > 0x75FF79DA;
  }

  v559 = (v558 ^ 0xF9ACBC5F) + 106120097 + ((2 * v558) & 0xF35978BE);
  v560 = (1512436768 - v556 - ((-1006112830 - 2 * v556) & 0xF043F87E)) ^ 0xF821FC3F ^ v559;
  v561 = ((2 * (v557 ^ (v555 + 101718341))) & 0xBFEEFCFC ^ 0xB988BC78) + (v557 ^ (v555 + 101718341) ^ 0xA33B2142) + 537428354 + ((v560 - 1603823558 - ((2 * v560) & 0x40CF3074)) ^ 0xA067983A);
  return (*(&off_1002D7880 + ((15 * v543) ^ v541)))(4193248955, ((v561 - ((2 * v561) & 0xA0BBDFF2) + 1348333561) ^ 0xC60CA685) + v559 + 303196734 - ((2 * (((v561 - ((2 * v561) & 0xA0BBDFF2) + 1348333561) ^ 0xC60CA685) + v559)) & 0x2424D47C));
}

uint64_t sub_1000660E0(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  LOBYTE(STACK[0x395]) = BYTE1(v64) ^ 0x96;
  LOBYTE(STACK[0x542]) = BYTE2(v65) ^ 0xCB;
  LOBYTE(STACK[0x727]) = HIBYTE(v64) ^ 0x7A;
  LOBYTE(STACK[0x379]) = BYTE1(v65) ^ 0x61;
  LOBYTE(STACK[0x55E]) = BYTE2(v64) ^ 0x29;
  LOBYTE(STACK[0x70B]) = HIBYTE(v65) ^ 1;
  LOBYTE(STACK[0x75F]) = HIBYTE(v61) ^ 0xD3;
  LOBYTE(STACK[0x204]) = v61 ^ 0xE2;
  LOBYTE(STACK[0x3B1]) = BYTE1(a2) ^ 0xAD;
  LOBYTE(STACK[0x57A]) = BYTE2(a2) ^ 0xD5;
  LOBYTE(STACK[0x3CD]) = BYTE1(v61) ^ 0x3A;
  LOBYTE(STACK[0x743]) = HIBYTE(a2) ^ 0xD5;
  LOBYTE(STACK[0x596]) = BYTE2(v61) ^ 0xC7;
  v66 = (HIDWORD(a11) + 267737597);
  v67 = v66 < 0x60973EDB;
  v68 = (a3 ^ 0x922EFCB6) - 838698623 * ((((a61 ^ 0x7CB) - 336) & (2 * (*a17 ^ 0xC7))) + (*a17 ^ 0xFDFF3578)) + 1149281217;
  v69 = ((2 * v68) & 0xDE5FFFBE) + (v68 ^ 0x6F2FFFDF);
  v70 = (v69 - 1865416671) % 0x101;
  v71 = a2 ^ v63;
  v72 = v71 + (((v62 ^ 0xA3AE59A) - 1865416671 + v69 + 1) ^ 0xAEEB7FE7) + ((2 * ((v62 ^ 0xA3AE59A) - 1865416671 + v69 + 1)) & 0x5DD6FFCE) + 1360298009;
  v73 = (v70 ^ 0xEDE3FFFF) + 2 * v70 + (v72 ^ 0xE4E7DFD5) + ((2 * v72) & 0xC9CFBFAA) - 2 * (((v70 ^ 0xEDE3FFFF) + 2 * v70 + (v72 ^ 0xE4E7DFD5) + ((2 * v72) & 0xC9CFBFAA) + 758390828) & 0x2A87E95D ^ ((v70 ^ 0xEDE3FFFF) + 2 * v70 + (v72 ^ 0xE4E7DFD5)) & 1) + 1471941000;
  v74 = v73 ^ v61;
  v75 = (v73 ^ 0x62C7F294) + 2130670574 + ((2 * v73) & 0xBAF3F8AC ^ 0x3A701884);
  v76 = ((2 * (v71 - (v74 ^ 0xABBEF3E7))) & 0xFB9AFF5C) + ((v71 - (v74 ^ 0xABBEF3E7)) ^ 0xFDCD7FAE);
  v77 = (v62 ^ 0xF5C51A65) - (v74 ^ 0xABBEF3E7) - 574405281 - ((2 * ((v62 ^ 0xF5C51A65) - (v74 ^ 0xABBEF3E7))) & 0xBB868ABE);
  v78 = (v74 ^ 0x767DB6B8 ^ v77) + 644140058;
  v79 = v78 ^ 0xB6FE7E3D;
  v80 = (2 * v78) & 0x6DFCFC7A;
  if (v66 >= 0x60973EDB)
  {
    v67 = v66 > 0x60973EDC;
  }

  v81 = v75 - v76 + v79 + v80;
  v82 = v81 + v75;
  v81 -= 363491027;
  v83 = (v77 ^ 0xDDC3455F ^ v81) + 1582029903 - ((2 * (v77 ^ 0xDDC3455F ^ v81)) & 0xBC97B89E);
  v84 = ((v81 ^ (v76 + 36864082)) + 985236813 - ((2 * (v81 ^ (v76 + 36864082))) & 0x75730A9A)) ^ 0x3AB9854D;
  v85 = (v83 ^ 0xA1B423B0) + ((v84 + v81) ^ 0xBFADE6BC) + ((2 * (v84 + v81)) & 0x7F5BCD78) + 1079122245;
  v86 = (v82 - 1914953495) ^ 0x63529DFD ^ (v85 + 1666358781 - ((2 * v85) & 0xC6A53BFA));
  v87 = ((v86 + 371983470 - ((2 * v86) & 0x2C5808DC)) ^ 0x162C046E) + 1288883131;
  v88 = ((2 * v87) & 0xD5BF37F6) + (v87 ^ 0x6ADF9BFB);
  v89 = v82 + v88;
  v90 = (v84 ^ (v88 - 1793039355)) - ((2 * (v84 ^ (v88 - 1793039355))) & 0x792D10) - 2143512952;
  v91 = (v83 ^ 0x5E4BDC4F ^ (v88 - 1793039355)) - 1024506332 + (~(2 * (v83 ^ 0x5E4BDC4F ^ (v88 - 1793039355))) | 0x7A2173B9);
  v92 = ((v91 ^ 0x3D10B9DC) + v88 - ((2 * ((v91 ^ 0x3D10B9DC) + v88) + 708888588) & 0xA1E14CC6) - 435090839) ^ v90;
  v93 = ((2 * v92) & 0xBFEEE7CE ^ 0xA18861C6) + (v92 ^ 0x8F3B430C);
  v94 = v93 - v89 - 529195101 - ((2 * (v93 - v89 - 529195101) + 239146660) & 0x245DF96C) + 1498384392;
  return (*(&off_1002D7880 + ((22 * !v67) ^ a61)))(v66, v94 ^ v90, v94, 22, 2429550625, v94 ^ v91, 1666358781, 1620524763, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61);
}

uint64_t sub_10006668C(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned __int8 *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  LOBYTE(STACK[0x23C]) = a6 ^ 0x52;
  LOBYTE(STACK[0x405]) = BYTE1(a6) ^ 0x7D;
  LOBYTE(STACK[0x77B]) = HIBYTE(a3) ^ 0x55;
  LOBYTE(STACK[0x5CE]) = BYTE2(a6) ^ 6;
  LOBYTE(STACK[0x5B2]) = BYTE2(a3) ^ 0xE9;
  LOBYTE(STACK[0x220]) = a3 ^ 0x71;
  LOBYTE(STACK[0x3E9]) = BYTE1(a3) ^ 0x3B;
  LOBYTE(STACK[0x258]) = a2 ^ 0xF9;
  LOBYTE(STACK[0x5EA]) = BYTE2(a2) ^ 0xD5;
  LOBYTE(STACK[0x606]) = BYTE2(v52) ^ 0xC7;
  LOBYTE(STACK[0x43D]) = BYTE1(v52) ^ 0x3A;
  LOBYTE(STACK[0x797]) = HIBYTE(a6) ^ 0x97;
  LOBYTE(STACK[0x7B3]) = HIBYTE(a2) ^ 0xD5;
  LOBYTE(STACK[0x274]) = v52 ^ 0xE2;
  LOBYTE(STACK[0x421]) = (a2 >> (((v54 + 62) | 0xC1) + 59)) ^ 0xAD;
  LOBYTE(STACK[0x7CF]) = HIBYTE(v52) ^ 0xD3;
  v56 = (a12 - 950959819) < 0xFEA0C281;
  v57 = (a3 ^ 0x6DD10349) + 1673095841 * ((((*a18 ^ 0xC7) << ((-111 * (((v54 + 62) | 0xC1) ^ 0xCE)) ^ 0xB2)) & 0x162) + (*a18 ^ 0x6FADFC76)) - 1442198864;
  v58 = (v57 ^ 0x537F7BD7) - 1400863703 + ((2 * v57) & 0xA6FEF7AE);
  v59 = v58 ^ 0xE73BE37A ^ (v58 % 0x101 - 415505542 + (~(2 * (v58 % 0x101)) | 0xFFFFFD0B) + 1);
  v60 = (v53 ^ 0xFD7A0B88 ^ (v59 - ((2 * v59) & 0x117E23DA) + 146739693)) + 212975785;
  v61 = a2 ^ v55;
  v62 = v52 ^ 0x1400FD25;
  v63 = ((v62 + v61) ^ 0xE01A2B07) - ((2 * (v62 + v61)) & 0x3FCBA9F0) + (v60 ^ 0x7FEF57F9) + ((2 * v60) & 0xFFDEAFF2) - 1611236096;
  v64 = ((2 * (v63 + v61)) & 0xFF147FDC) + ((v63 + v61) ^ 0xFF8A3FEE);
  v65 = v63 + (v53 ^ 0xF5C51A65) - 1794431375 - ((2 * (v63 + (v53 ^ 0xF5C51A65))) & 0x2A164CE2);
  v66 = (v62 ^ v63) - 1994821956 - ((2 * (v62 ^ v63)) & 0x1232DD78);
  v67 = (((v53 ^ 0xA3AE59A) + 7716883 + v64 - ((2 * ((v53 ^ 0xA3AE59A) + 7716883 + v64)) & 0x1F3A834) - 2131110886) ^ v66 ^ 0x9E0BAA6) + 921723784;
  v68 = ((2 * v67) & 0xBA7BF972) + (v67 ^ 0x5D3DFCB9);
  v69 = v68 - 1564343481;
  v70 = v68 - 1564343481 + (v66 ^ 0x89196EBC);
  v71 = v68 + v64 - 600556791 + ((965769548 - 2 * (v68 + v64)) | 0x8E0710A1);
  v72 = (v65 ^ 0x950B2671 ^ v69) - 203558916 - ((2 * (v65 ^ 0x950B2671 ^ v69)) & 0xE7BBDFF8);
  v73 = ((2 * v70) & 0x19DBFFDE) + (v70 ^ 0xCEDFFEF) - 216924143;
  v74 = v73 + (v65 ^ 0xADF751DE ^ v71) - ((2 * (v73 + (v65 ^ 0xADF751DE ^ v71))) & 0x1794EA4A) - 1949666011;
  v75 = ((2 * (v74 ^ v71)) & 0xDFFBFE7C ^ 0xCA11E028) + (v74 ^ v71 ^ 0x9AF70F6B);
  v76 = ((2 * (v73 + (v74 ^ 0x32097805) + 1)) & 0x65FFFFBE) + ((v73 + (v74 ^ 0x32097805) + 1) ^ 0x32FFFFDF);
  v77 = v74 ^ 0xCDF687FA;
  v78 = (v72 ^ 0xF3DDEFFC) - v77;
  if ((a12 - 950959819) >= 0xFEA0C281)
  {
    v56 = (a12 - 950959819) > 0xFEA0C282;
  }

  v79 = (v78 ^ 0xA49FFDFA) + 1533017067 + ((2 * v78) & 0x493FFBF4) + 1563;
  v80 = (((v77 ^ v79) - 851070169 - ((2 * (v77 ^ v79)) & 0x9A8B664E)) ^ 0xCD45B327) - (v75 + v76);
  v81 = v80 - ((2 * v80 + 100400698) & 0x236EA814) + 884298535;
  return (*(&off_1002D7880 + ((v56 | (2 * v56)) ^ ((v54 - 706) | 0x2C1))))(335609125, (v81 ^ 0xCB9139C2) + v75 - ((2 * ((v81 ^ 0xCB9139C2) + v75) + 537133446) & 0x2424D47C) - 1575720191, v81 ^ 0xA6403A8B, 335609125, 594454548, 950652303, 4271948417, 4091408380, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_100066C7C(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, uint64_t a63)
{
  LOBYTE(STACK[0x459]) = BYTE1(v67) ^ 1;
  LOBYTE(STACK[0x7EB]) = HIBYTE(v67) ^ 0xF3;
  LOBYTE(STACK[0x2AC]) = v65 ^ 0xA2;
  LOBYTE(STACK[0x2C8]) = a2 ^ 0xF9;
  LOBYTE(STACK[0x491]) = (a2 >> ((a62 - 8) ^ 0xA3)) ^ 0xAD;
  LOBYTE(STACK[0x807]) = HIBYTE(v65) ^ 0x32;
  LOBYTE(STACK[0x475]) = BYTE1(v65) ^ 0xDD;
  LOBYTE(STACK[0x63E]) = BYTE2(v65) ^ 2;
  LOBYTE(STACK[0x65A]) = BYTE2(a2) ^ 0xD5;
  LOBYTE(STACK[0x2E4]) = v64 ^ 0xE2;
  LOBYTE(STACK[0x622]) = BYTE2(v67) ^ 0xA9;
  LOBYTE(STACK[0x676]) = BYTE2(v64) ^ 0xC7;
  LOBYTE(STACK[0x823]) = HIBYTE(a2) ^ 0xD5;
  v68 = (((~v67 | 0xFFFFFFCA) + ((2 * (v67 & 0x14 ^ (~v67 | 0x7B))) ^ 0x35) + 27) ^ 0x1A) & (((v67 & 0xFFFFFFCA ^ 0x3D) - (v67 >> 6 << 7) + 32) ^ 0x60);
  LOBYTE(STACK[0x290]) = v68 + (~(2 * v68) | 0x71) - 56;
  LOBYTE(STACK[0x83F]) = HIBYTE(v64) ^ 0xD3;
  LOBYTE(STACK[0x4AD]) = BYTE1(v64) ^ 0x3A;
  v69 = (a10 + 4601358) < 0x1A6D8280;
  v70 = *(&a64 + (1314345374 * ((a62 - 202) ^ 0x220u) + 640101018) % 0x708) ^ *((LODWORD(STACK[0x1560]) ^ 0x7BBF69F66EA9BD3BLL) + a14 - 0x99187B47AA1D2C2 + ((2 * (LODWORD(STACK[0x1560]) ^ 0x79564AE1u)) & 0x2FFFEFB4) - 0x7BBF69F617FFF7DALL);
  v71 = (a3 ^ 0x6DD10349) - 36496591 * (((2 * (v70 ^ 3)) & 0x19E) + (v70 ^ 0x7EC5FBDC)) - 1141966750;
  v72 = (v71 ^ 0xDFFFF7FD) + 536872963 + ((2 * v71) & 0xBFFFEFFA);
  v73 = v72 ^ 0xA49ECFBF ^ (v72 % 0x101 - 1533096001 - ((2 * (v72 % 0x101)) & 0x37E));
  v74 = a2 ^ v66;
  v75 = (((v65 ^ 0xF5C51A65) + v74) ^ 0xC40400) - ((2 * ((v65 ^ 0xF5C51A65) + v74)) & 0xFE77F7FE) - 12846080 + ((v73 - 890788443 - ((2 * v73) & 0x95CF4B4A)) ^ 0xCAE7A5A5);
  v76 = v64 ^ 0x6EF43D41 ^ (v75 - ((2 * v75) & 0xF5E980C8) + 2062860388);
  v77 = v76 - ((2 * v76 + 991135088) & 0x4E3F4822) + 1151952585;
  v78 = ((2 * ((v77 ^ 0xA71FA411) + v74)) & 0xDD5FE4F2) + (((v77 ^ 0xA71FA411) + v74) ^ 0x6EAFF279);
  v79 = v77 ^ v64;
  v80 = (v79 ^ 0xFEA9EA99 ^ ((v65 ^ 0xF5C51A65) - 1857024633 + v78 - ((2 * ((v65 ^ 0xF5C51A65) - 1857024633 + v78)) & 0x9B6D675A) + 1303819181)) + 1423587212;
  v81 = ((2 * v80) & 0xFF7D7DF6) + (v80 ^ 0xFFBEBEFB);
  v82 = ((2 * (v81 + 4276485 + (v65 ^ 0x52DABE74 ^ v77))) & 0x2DBFE2FE) + ((v81 + 4276485 + (v65 ^ 0x52DABE74 ^ v77)) ^ 0x96DFF17F);
  v83 = (v79 ^ 0xB31F5934 ^ (v81 + 4276485)) - 1370139886 - ((2 * (v79 ^ 0xB31F5934 ^ (v81 + 4276485))) & 0x5CAAA624);
  if ((a10 + 4601358) >= 0x1A6D8280)
  {
    v69 = (a10 + 4601358) > 0x1A6D8281;
  }

  v84 = (v83 ^ 0x78AF5F73 ^ (1367482287 - (v78 + 1962422102 + v82) - ((-183490916 - 2 * (v78 + 1962422102 + v82)) & 0xADF418C2))) - 1894401551;
  v85 = ((2 * v84) & 0xBBF3E7F2) + (v84 ^ 0xDDF9F3F9);
  v86 = (v85 + 570821639) ^ (v82 + 1763708545);
  v87 = v78 + v81 + v85;
  v88 = (v87 + v85 - 397701243 + ((2 * v86) & 0xF3FFC7FE) + (v86 ^ 0xF9FFE3FF) - ((2 * (v87 + v85 - 397701243 + ((2 * v86) & 0xF3FFC7FE) + (v86 ^ 0xF9FFE3FF)) + 1722017324) & 0x4EC9AE7E) + 448186965) ^ (((v85 + 570821639) ^ v83 ^ 0xAE555312) + 797890014 - 2 * (((v85 + 570821639) ^ v83 ^ 0xAE555312) & 0x2F8ED5DF ^ ((v85 + 570821639) ^ v83) & 1));
  return (*(&off_1002D7880 + ((106 * v69) ^ (a62 + 248))))(3013040787, (v88 ^ (v87 - 1281926509) ^ 0xE885D490) + v66 - 2 * ((v88 ^ (v87 - 1281926509) ^ 0xE885D490) & (v66 + 1) ^ (v88 ^ (v87 - 1281926509)) & 1));
}

uint64_t sub_1000672E8@<X0>(int a1@<W1>, int a2@<W5>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  LOBYTE(STACK[0x31C]) = (a3 - 71) ^ v59;
  LOBYTE(STACK[0x300]) = a2 ^ 0x57;
  LOBYTE(STACK[0x877]) = HIBYTE(v59) ^ 0x32;
  LOBYTE(STACK[0x4C9]) = BYTE1(a2) ^ 0x13;
  LOBYTE(STACK[0x6CA]) = BYTE2(a1) ^ 0xD5;
  LOBYTE(STACK[0x6AE]) = BYTE2(v59) ^ 2;
  LOBYTE(STACK[0x85B]) = HIBYTE(a2) ^ 0x2F;
  LOBYTE(STACK[0x354]) = v58 ^ 0xE2;
  LOBYTE(STACK[0x4E5]) = BYTE1(v59) ^ 0xDD;
  LOBYTE(STACK[0x338]) = a1 ^ 0xF9;
  LOBYTE(STACK[0x893]) = HIBYTE(a1) ^ 0xD5;
  LOBYTE(STACK[0x6E6]) = BYTE2(v58) ^ 0xC7;
  LOBYTE(STACK[0x692]) = BYTE2(a2) ^ 0x42;
  LOBYTE(STACK[0x51D]) = BYTE1(v58) ^ 0x3A;
  LOBYTE(STACK[0x8AF]) = HIBYTE(v58) ^ 0xD3;
  LOBYTE(STACK[0x501]) = BYTE1(a1) ^ 0xAD;
  v156 = a3 - 12;
  v60 = *(&a58 + 0 % (((a3 + 2067068646) & 0x84CB073F) + 1273));
  v61 = -2029177211 - 1487347361 * (((2 * (v60 ^ 0xFFFFFFCF)) & 0xE8) + (v60 ^ 0x7DFFF3B3));
  v62 = v61 - 418090588 + (((v61 + 1680096658) % 0x101) ^ 0x7FD9F7F8) + ((2 * ((v61 + 1680096658) % 0x101)) & 0x3F0) - 464894566;
  v63 = (v62 ^ 0xFEDEFE55) + 878212207 + ((2 * v62) & 0xFDBDFCAA);
  v64 = ((v63 - 2 * ((v63 + 1909308608) & 0x4B55D40A ^ v63 & 2) - 1121742648) ^ 0x89737BA6) - 1738420157;
  v65 = (v64 ^ 0xE36F3FBC) - 1734123120 + ((2 * v64) & 0xC6DE7F78) + 1;
  v66 = ((v65 - ((2 * v65 - 1204789498) & 0x8AA7D02C) - 1586751591) ^ 0x947F75D5) + 1361311262;
  v67 = ((v66 - ((2 * v66 + 904283102) & 0x5EFF48C8) + 1249035859) ^ 0x6F2EE305) - 35086739;
  v68 = (v67 - ((2 * v67) & 0xB435F5B6) + 1511717595) ^ 0xD44EBDC8;
  v69 = (v68 ^ 0x74F587B1) - 2 * (((v68 ^ 0x74F587B1) + 1848641040) & 0x69FDAA9D ^ v68 & 8) + 1479389349;
  v70 = v69 ^ 0xE9FDAA95;
  v71 = ((2 * (644941650 - (v69 ^ 0xE9FDAA95))) & 0xD77B86FE) + ((644941650 - (v69 ^ 0xE9FDAA95)) ^ 0xEBBDC37F);
  v72 = ((2 * (v69 ^ 0x721E4536)) & 0xFA5BD978 ^ 0xBA038158) + (v69 ^ 0x50A06824);
  v73 = (v69 ^ 0x1602556A) + 621096837;
  v74 = v73 ^ 0x7D9BBF6E;
  v75 = (2 * v73) & 0xFB377EDC;
  v76 = v69 ^ 0xDB069714;
  v77 = v69 ^ 0xD44EBDC8;
  v78 = v69 ^ 0xDCEF89BA;
  v79 = (v69 ^ 0x1602556A) - 35086739;
  v80 = v69 ^ 0xF8E045EB;
  v81 = (v69 ^ 0x1602556A) + 776780893 - ((2 * ((v69 ^ 0x1602556A) + 776780893) + 1412048846) & 0x5FEC47E0);
  v82 = ((2 * (v69 ^ 0xBA0AB150)) & 0xF6FDADFC ^ 0x60C484C0) + (v69 ^ 0xF5970DCF);
  v83 = ((2 * (v70 - 1068415135)) & 0xEF5EE7AA) + ((v70 - 1068415135) ^ 0xF7AF73D5);
  v84 = (v69 ^ 0x9416BAEB) - 1070448592 + ((2 * (v69 ^ 0x9AB5D698)) & 0x7F9B7FA0 ^ 0x62992700);
  v85 = v74 - 2107359086 + v75;
  v86 = ((v69 ^ 0x1602556A) + 1117723493) ^ 0xF7F7F7DF;
  v87 = (2 * ((v69 ^ 0x1602556A) + 1117723493)) & 0xEFEFEFBE;
  v88 = v82 - v71 + ((v85 + (v69 ^ 0x2080303E)) ^ 0x541C0058) + ((v84 + (v69 ^ 0xE9FDAA95)) ^ 0xFFBBFF36) - ((2 * (v85 + (v69 ^ 0x2080303E))) & 0x57C7FF4E) + ((2 * (v84 + (v69 ^ 0xE9FDAA95))) & 0xFF77FE6C) + 1;
  v89 = v88 - ((2 * v88 + 953014756) & 0xF5B4230E);
  v90 = v81 + 436942807;
  v91 = v70 + 334030835 - ((2 * (v70 + 334030835)) & 0x46EAB1C8) + 594893028;
  v92 = ((v70 - 179867185) ^ 0x66FFFFBF) - 1728053183 + ((2 * (v70 - 179867185)) & 0xCDFFFF7E);
  v93 = v86 + 134744097 + v87;
  v94 = ((v90 ^ 0x552C3277 ^ (v89 - 1757348231)) + v92 - 1553920700 - ((2 * ((v90 ^ 0x552C3277 ^ (v89 - 1757348231)) + v92)) & 0x46C21A88)) ^ v93;
  v95 = (((v94 ^ 0xA3610D44) + 640617779 - 2 * ((v94 ^ 0xA3610D44) & 0x262F0D3B ^ v94 & 8)) ^ 0x262F0D33) - (v80 ^ 0xC9ADD1AF);
  v96 = (v95 ^ 0xFDFDF7BB) + v72 + ((2 * v95) & 0xFBFBEF76);
  v97 = (v78 ^ v91 ^ 0xED7D786E ^ (v96 - 1144346044 + ((1985464556 - 2 * v96) | 0x9212E28B))) - v83;
  v98 = ((v79 + 1) ^ 0x7F3FDFDF) - 2134892511 + ((2 * (v79 + 1)) & 0xFE7FBFBE);
  v99 = v98 ^ 0x76E41019 ^ (v97 - ((2 * v97 - 278992982) & 0xEDC82032) + 1855161326);
  v100 = ((v99 - 464484167 - ((2 * v99) & 0xC8A11172)) ^ 0xE45088B9) - (v77 ^ 0xC712D7FF);
  v101 = ((2 * v100) & 0x3FF34F7E) + (v100 ^ 0x9FF9A7BF) - ((2 * (((2 * v100) & 0x3FF34F7E) + (v100 ^ 0x9FF9A7BF)) + 2093979246) & 0xD5D4EB84) - 1454227207;
  v102 = ((2 * (v101 ^ v90)) & 0xCFFEEB9E ^ 0x8A38A804) + (v101 ^ v90 ^ 0x22E323FD);
  v103 = ((2 * (v72 + 47317912 + (v101 ^ 0x6AEA75C2) + 4012)) & 0x1EDF671C) + ((v72 + 47317912 + (v101 ^ 0x6AEA75C2) + 4012) ^ 0x8F6FB38E);
  v104 = (((v101 ^ 0x6AEA75C2) + v93) ^ 0xEFFB3EBF) + 951451518 + ((2 * ((v101 ^ 0x6AEA75C2) + v93)) & 0xDFF67D7E);
  v105 = v101 ^ v78;
  v106 = v101 ^ v91;
  v107 = ((2 * (v101 ^ (v71 + 339885185))) & 0x76BF3376 ^ 0x54942304) + (v101 ^ (v71 + 339885185) ^ 0x51B5EC79);
  v108 = v101 ^ v77;
  v109 = v82 + 75573506 + (v101 ^ 0x6AEA75C2) - ((2 * (v82 + 75573506 + (v101 ^ 0x6AEA75C2))) & 0xE18E7194) + 1892104394;
  v110 = ((2 * ((v101 ^ 0x6AEA75C2) + v92)) & 0xFF7B6F5C) + (((v101 ^ 0x6AEA75C2) + v92) ^ 0x7FBDB7AE);
  v111 = v101 ^ v76;
  v112 = ((2 * (v84 + (v101 ^ 0x95158A3D) + 1)) & 0x7DDF42E6) + ((v84 + (v101 ^ 0x95158A3D) + 1) ^ 0x3EEFA173);
  v113 = v101 ^ v80;
  v114 = ((2 * ((v101 ^ 0x6AEA75C2) + v85)) & 0xFAFFB59E) + (((v101 ^ 0x6AEA75C2) + v85) ^ 0x7D7FDACF);
  v115 = ((2 * (v83 + 139496492 + (v101 ^ 0x95158A3D))) & 0x59FBFFFC) + ((v83 + 139496492 + (v101 ^ 0x95158A3D)) ^ 0x2CFDFFFE);
  v116 = (v114 - 2105531087) ^ 0xA6E50B5A ^ ((v109 ^ v101 ^ (v112 - 1055891827) ^ 0x1A2D4D08) - 1494938790 - 2 * ((v109 ^ v101 ^ (v112 - 1055891827) ^ 0x1A2D4D08) & 0x26E50B5E ^ (v109 ^ v101 ^ (v112 - 1055891827)) & 4));
  v117 = v102 + 402688561 + ((v116 + 1792646678 - ((2 * v116) & 0xD5B33C2C)) ^ 0x6AD99E16);
  v118 = v110 - v104 + (((v111 ^ 0x916CD2E8) - 996121019 + v107) ^ 0xC008560) - ((2 * ((v111 ^ 0x916CD2E8) - 996121019 + v107)) & 0xE7FEF53E) + (v117 ^ 0x7EFBF7E7) + ((2 * v117) & 0xFDF7EFCE) - 1844964735;
  v119 = (v101 ^ v80 ^ 0xB07BEB5E ^ (v118 - ((2 * v118 + 400420238) & 0x26789E66) - 1624553990)) - v103 - 1888504946;
  v120 = (v105 ^ 0x1214DBF2) + (v119 ^ 0x7FEFEFC3) + ((2 * v119) & 0xFFDFDF86) - 2146430915;
  v121 = (v120 + 1095152513 - ((2 * v120) & 0x828D6702)) ^ (v115 - 754843646);
  v122 = (v106 ^ 0x8666491 ^ ((v121 ^ 0x4146B381) + 1106856375 - 2 * ((v121 ^ 0x4146B381) & 0x41F949BF ^ v121 & 8))) - 762027389;
  v123 = (v108 ^ 0x52075DC2) + (v122 ^ 0x9E79EEF7) + ((2 * v122) & 0x3CF3DDEE) + 1636176138;
  v124 = ((2 * v123) & 0xECF733FE) + (v123 ^ 0x767B99FF);
  v125 = (((v101 ^ 0x6AEA75C2) + v98) ^ 0x74DC7FE3) + ((2 * ((v101 ^ 0x6AEA75C2) + v98)) & 0xE9B8FFC6) + v124 - 1142130979;
  v126 = v125 - 537949761;
  v127 = v102 + v125 - 537949761;
  v128 = v114 + v125 - 537949761;
  v129 = v115 + v125 - 537949761;
  v130 = v112 - 373686322 + v125 - 537949761;
  v131 = v110 - 8466976 + v125 - 537949761;
  HIDWORD(v132) = (v128 - 1210812423) ^ 2;
  LODWORD(v132) = v128 - 78902605;
  v133 = (v132 >> 2) - ((2 * (v132 >> 2)) & 0xA7997034) - 741558246;
  HIDWORD(v132) = v133 ^ 0x81A;
  LODWORD(v132) = v133 ^ 0xD3CCB000;
  v134 = (v132 >> 12) - ((2 * (v132 >> 12)) & 0x8170CBAA) + 1085826517;
  v125 += 1488678721;
  v135 = ((2 * (v125 ^ v105)) & 0x7E7EE3DE ^ 0x2428A3C4) + (v125 ^ v105 ^ 0xAD2BAA1D);
  v136 = ((2 * (v125 + (v106 ^ 0x499F2D26))) & 0xB3F7D79A) + ((v125 + (v106 ^ 0x499F2D26)) ^ 0x59FBEBCD);
  v137 = v107 - v126;
  v138 = ((2 * (v125 ^ v108)) & 0xDCEAF1EC ^ 0x58E04068) + (v125 ^ v108 ^ 0xC38DDACB);
  HIDWORD(v132) = v134 ^ 0x65D5;
  LODWORD(v132) = v134 ^ 0x40B80000;
  v139 = (v132 >> 18) + 1275896484 - ((2 * (v132 >> 18)) & 0x98194548);
  v140 = ((2 * (v125 + (v113 ^ 0xA347A46D))) & 0xE7EFCEF8) + ((v125 + (v113 ^ 0xA347A46D)) ^ 0xF3F7E77C);
  v141 = ((2 * (v125 ^ v111)) & 0xFCBF7FBE ^ 0x20992590) + (v125 ^ v111 ^ 0x6F336D37);
  v142 = ((2 * (v125 ^ v109)) & 0xD87D397E ^ 0xC00C3114) + (v125 ^ v109 ^ 0x9CF9A475);
  v143 = ((2 * (v125 ^ (v103 + 1888504946))) & 0xFD9FFF2E) + (v125 ^ (v103 + 1888504946) ^ 0xFECFFF97);
  v144 = (((v139 ^ v125 ^ 0x4C0CA2A4) - 505296812 - 2 * ((v139 ^ v125 ^ 0x4C0CA2A4) & 0x61E1C855 ^ (v139 ^ v125) & 1)) ^ 0xE1E1C854) + v137 + 1272217795;
  v145 = v130 + v141 + v142 + (v144 ^ 0x6F2DFDBB) + ((2 * v144) & 0xDE5BFB76) - 67475452;
  v146 = (v127 - 1865650253) ^ 0x6699B011 ^ (v145 - ((2 * v145 - 189332536) & 0xCD336022) + 1626681845);
  v147 = ((v146 - 862511878 - ((2 * v146) & 0x992E39F4)) ^ 0xCC971CFA) - v131;
  v148 = (v126 + v104 + 1343924037) ^ 0x25354686 ^ (v147 - ((2 * v147 + 216088600) & 0x4A6A8D0C) + 732292754);
  v149 = v135 + 1086361105 + ((v148 - 175306240 - ((2 * v148) & 0xEB1A1400)) ^ 0xF58D0A00);
  v150 = (v149 ^ 0xAFEAFF96) - (v143 + v136 + v140) + ((2 * v149) & 0x5FD5FF2C) - 1898857656;
  v151 = (v129 + 1271784836) ^ 0x632CF6CD ^ (v150 - ((2 * v150 + 470691844) & 0xC659ED9A) + 1899237071);
  v152 = ((v151 - 223747261 - ((2 * v151) & 0xE553C686)) ^ 0xF2A9E343) - v138 + 1853192438;
  v153 = (v152 ^ 0xE8C96FFB) + v124 + ((2 * v152) & 0xD192DFF6);
  v154 = v153 - ((2 * v153 + 1098247180) & 0xD6575DBA) - 1947818781;
  return (*(&off_1002D7880 + (v156 ^ 0x34)))(v136 - (((2 * v154) & 0xEDFF777C ^ 0xE5EF3714) + (v154 ^ 0x8D082074)), 63);
}

uint64_t sub_100068DB0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  v60 = (v58 + a1 + 182 + v57 - 2 * ((v57 + 1169934376) & v56 ^ v57 & 6) + 700242199) ^ (v56 + 82);
  v61 = dword_10027D9D0[(((2722 * v60) & 0x7BFF373E) + ((1361 * v60) ^ 0x3DFF9B9Fu) - 1037841190) % 0x12E0] ^ 0x1B9047AC;
  v62 = v61 - ((2 * v61 - 698937670) & 0xBC791458) + 1231557001;
  v63 = v62 ^ (v62 >> 7) ^ (v62 >> 3) ^ 0x1DDDA253;
  v64 = *(v59 + 8 * ((842 * (((v57 + 1 - v58) | (v58 - (v57 + 1))) >= 0)) ^ (v58 + a1)));
  *(&a56 + (457 * v57 - 63389272) % 0x708u) = byte_100269F20[(((4424 * v63) & 0xFDF71F78) + ((2212 * v63) ^ 0x7EFB8FBF) - 2128652587) % 0x97F] ^ 0xD9;
  return v64();
}

uint64_t sub_100068F54(int a1, uint64_t a2, int a3, int a4, unsigned int a5, int a6, unsigned int a7)
{
  v13 = v9 * a4 - 668602128 - ((((v9 * a4 - 668602128) * a7) >> 32) >> 10) * v10;
  v14 = (((((a1 - 1641) | 0x204) ^ 0x352) & (2 * (*(v7 + v13) ^ 0xC7))) + (*(v7 + v13) ^ 0xAB1FCB60)) * a4 - 2076084447;
  v15 = *(v7 + v14 - (((v14 * a7) >> 32) >> 10) * v10);
  v16 = (((2 * (v15 ^ 4)) & 0xAE) + (v15 ^ 0x16F31BDB)) * a3 - 1285045180;
  v17 = *(v11 + v16 - (((v16 * a5) >> 32) >> 10) * a6);
  HIDWORD(v18) = v17 ^ 0xA;
  LODWORD(v18) = v17 << 24;
  v19 = (v18 >> 31) - ((2 * (v18 >> 31)) & 0x62) - 79;
  v20 = ((v19 & 0xFC) >> 2) ^ 0x2C;
  v21 = (2 * ((v20 & (v19 ^ 0x31)) - 2 * (v20 & (v19 ^ 0x31) & 7)) + 14) ^ 0xE;
  LOBYTE(v20) = (v19 ^ 0xB1) + v20 + ((v21 - ((2 * v21) & 0xBF) - 33) ^ 0x20);
  v22 = v19 ^ (((v20 + 1 - ((2 * (v20 + 1)) & 0xD8) - 20) & 0xF0) >> 4) ^ 0xC9;
  v23 = (((2 * v22) & 0x9E) + (v22 ^ 0x3799FE4F)) * a3 - 1850925144;
  v24 = *(v11 + v23 - (((v23 * a5) >> 32) >> 10) * a6);
  v25 = (((2 * (v24 ^ 0xA0)) & 0xFFFFFFFB) + (v24 ^ 0x767F8F5D)) * a4 + 1984456603;
  v26 = *(v7 + v25 - (((v25 * a7) >> 32) >> 10) * v10);
  v27 = (((2 * (v26 ^ 0x90)) & 0x174) + (v26 ^ 0x1ED3632E)) * a3 - 1518398616;
  v28 = *(v11 + v27 - (((v27 * a5) >> 32) >> 10) * a6);
  v29 = (-97 * (v28 ^ 0xA) - (((v28 << 6) - 2 * (v28 ^ 0xA)) & 0x76) + 59) ^ 0xD7;
  v30 = (((2 * v29) & 0xF8) + (v29 ^ 0x17FBAE7C)) * a3 - 980586691;
  v31 = *(v11 + v30 - (((v30 * a5) >> 32) >> 10) * a6) ^ 0xA;
  v32 = 23 * v31 - ((46 * v31) & 0xFFFFFFAA) - 43;
  v33 = (((2 * (v32 ^ 0x56 ^ (v32 >> 3) & 9)) & 0x19A) + (v32 ^ 0x56 ^ (v32 >> 3) & 9 ^ 0xEAFA3FCD)) * a4 - 2025433525;
  v34 = *(v7 + v33 - (((v33 * a7) >> 32) >> 10) * v10);
  v35 = (((2 * (v34 ^ 0xC6)) & 0xDDDDDDDD) + (v34 ^ 0x19FF7629)) * a4 - 1762085534;
  *(v7 + v9 * a4 - 668042760 - ((((v9 * a4 - 668042760) * a7) >> 32) >> 10) * v10) = *(v7 + v35 - (((v35 * a7) >> 32) >> 10) * v10);
  v36 = (2 * ((*(v7 + v13) ^ 7) & 0x1F) + (*(v7 + v13) ^ 0x49CFCFD8)) * a4 + 1007371753;
  v37 = *(v7 + v36 - (((v36 * a7) >> 32) >> 10) * v10);
  v38 = (((2 * (v37 ^ 0xFFFFFFDF)) & 0xD4) + (v37 ^ 0x15BEFE35)) * a3 + 431076376;
  v39 = *(v11 + v38 - (((v38 * a5) >> 32) >> 10) * a6);
  HIDWORD(v18) = v39 ^ 0xA;
  LODWORD(v18) = v39 << 24;
  v40 = ((v18 >> 31) - ((2 * (v18 >> 31)) & 0xBF) + 95);
  v41 = (((2 * (((v18 >> 31) - ((2 * (v18 >> 31)) & 0xFFFFFFBF) + 95) ^ (v40 >> 6) ^ (v40 >> 4) ^ 0xA1)) & 0x1EE) + ((((v18 >> 31) - ((2 * (v18 >> 31)) & 0xBF) + 95) ^ (v40 >> 6) ^ (v40 >> 4)) ^ 0xE79F5F56)) * a4 - 2072108463;
  v42 = *(v7 + v41 - (((v41 * a7) >> 32) >> 10) * v10);
  v43 = (((2 * (v42 ^ 0x7C)) & 0x1AC) + (v42 ^ 0x3FBE7F82)) * a3 + 909413140;
  v44 = *(v11 + v43 - (((v43 * a5) >> 32) >> 10) * a6) ^ 0xA;
  v45 = 23 * v44 - ((46 * v44) & 0xFFFFFFB8) + 92;
  LOBYTE(v45) = v45 ^ 0x34 ^ (v45 >> 3) & 9;
  v46 = ((v45 ^ 0x67B5FFFF) + 2 * v45) * a4 - 602129143;
  v47 = *(v7 + v46 - (((v46 * a7) >> 32) >> 10) * v10);
  v48 = *(v12 + 8 * ((19 * (v9 + 1 == v8 + 256)) ^ a1));
  *(v7 + v9 * a4 - 668364488 - ((((v9 * a4 - 668364488) * a7) >> 32) >> 10) * v10) = *(v7 + (((2 * (v47 ^ 0xC5)) & 0xBBBBBBBB) + (v47 ^ 0x633EFB1A)) * a4 - 728471877 - (((((((2 * (v47 ^ 0xC5)) & 0xBBBBBBBB) + (v47 ^ 0x633EFB1A)) * a4 - 728471877) * a7) >> 32) >> 10) * v10);
  return v48();
}

uint64_t sub_100069450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  LODWORD(a39) = v77;
  HIDWORD(v159) = v74 - 15;
  LODWORD(v159) = (((v74 - 15) ^ 0x212) * v73) ^ 0x2C8;
  v81 = *((LODWORD(STACK[0x177C]) ^ 0xEFBFF6EB96A934BELL) + a61 + ((2 * (LODWORD(STACK[0x177C]) ^ 0x79564AE1u)) & 0x1DFFEFCBELL) + 0x10400914100081A1) ^ LOBYTE(STACK[0x553]) ^ v75;
  v82 = a66 ^ *((LODWORD(STACK[0x1474]) ^ 0x767FF54F87E9B14ELL) + a61 + ((2 * (LODWORD(STACK[0x1474]) ^ 0x79564AE1u)) & 0x1FD7FF75ELL) - 0x767FF54FFEBFFBAFLL);
  v83 = LOBYTE(STACK[0x38A]) ^ v75 ^ *((LODWORD(STACK[0x15F8]) ^ 0x3355EE1B87E9D41CLL) + a61 + ((2 * (LODWORD(STACK[0x15F8]) ^ 0x79564AE1u)) & 0x1FD7F3DFALL) - 0x3355EE1BFEBF9EFDLL);
  v84 = *((LODWORD(STACK[0x12F0]) ^ 0xFEFFFFEE44A1BF1ELL) + a61 + ((2 * (LODWORD(STACK[0x12F0]) ^ 0x79564AE1u)) & 0x7BEFEBFE) + 0x1000011C2080A01) ^ 0xD4;
  v85 = (((v81 - ((v81 << v159) & v76)) << 16) + 1844903936) ^ 0x6DF70000;
  v86 = (((v83 - (v79 & (2 * v83))) << 8) + 1351372544) ^ 0x508C4F00;
  v87 = (v86 - 833285605 - ((2 * v86) & 0x1CAA2400)) ^ 0xCE55121B | (v85 - 240679309 - ((2 * v85) & 0x634E0000)) ^ 0xF1A78673;
  v88 = (v87 - 1212328903 - ((2 * v87) & 0x6F7AA872)) ^ 0xB7BD5439 | ((v82 ^ v75) - 1121399416 - ((2 * v82) & 0x11111111)) ^ 0xBD28CD88;
  v89 = (((v88 - ((2 * v88) & 0x75CB40)) << 8) - 1159356416) ^ 0xBAE5A000;
  v90 = (v89 - 1062413985 - ((2 * v89) & 0x8159B200)) ^ 0xC0ACD95F | (v84 - 650165824 - ((2 * v84) & 0x180)) ^ 0xD93F41C0;
  *(*a62 - 0x606985B424E1601ELL) = ((LOBYTE(STACK[0x700]) ^ 0xC7) - ((2 * (LOBYTE(STACK[0x700]) ^ 0xC7)) & 0x32) - 1390297575) ^ 0x32511B01 ^ (v90 - ((2 * v90) & 0xCC4DDFF2) - 433655815);
  v91 = LOBYTE(STACK[0x56F]) ^ 0x13 ^ *((LODWORD(STACK[0x1D8C]) ^ 0xF5E7A6EF87833417) + a61 + ((2 * (LODWORD(STACK[0x1D8C]) ^ 0x79564AE1u)) & 0x1FDAAFDECLL) + 0xA185910012A810ALL);
  v92 = *((LODWORD(STACK[0x1C08]) ^ 0x3FEBBFBDB409373FLL) + a61 + ((2 * (LODWORD(STACK[0x1C08]) ^ 0x79564AE1u)) & 0x19ABEFBBCLL) - 0x3FEBBFBDCD5F7DDELL) ^ LOBYTE(STACK[0x3A6]) ^ 0x13;
  v93 = a71 ^ 0x13 ^ *((LODWORD(STACK[0x1A84]) ^ 0xFEB6B6FD86A595BELL) + a61 + ((2 * (LODWORD(STACK[0x1A84]) ^ 0x79564AE1u)) & 0x1FFE7BEBELL) + 0x1494902000C20A1);
  v94 = (((v91 - ((2 * v91) & 0x60)) << 16) + 691011584) ^ 0x29300000;
  v95 = (((v92 + 4600747 - ((2 * v92) & 0x11C)) << 8) - 7424) ^ 0x46338E00;
  v96 = (v95 - 1099305283 - ((2 * v95) & 0x7CF3DC00)) ^ 0xBE79EEBD | (v94 + 1264289199 - ((2 * v94) & 0x16B60000)) ^ 0x4B5B85AF;
  v97 = (v96 - 736195811 - ((2 * v96) & 0x283D163A)) ^ 0xD41E8B1D | (v93 + 642394355 - ((2 * v93) & 0xFFFFFFE7)) ^ 0x264A28F3;
  v98 = LOBYTE(STACK[0x71C]) ^ 0x13 ^ *((LODWORD(STACK[0x1900]) ^ 0x4FC35CFE96B5F11ELL) + a61 + ((2 * (LODWORD(STACK[0x1900]) ^ 0x79564AE1u)) & 0x1DFC777FELL) - 0x4FC35CFEEFE3BBFFLL);
  v99 = (((v97 - ((2 * v97) & 0x6AB3D2)) << 8) - 1252398848) ^ 0xB559E900;
  v100 = (v99 + 952097129 - ((2 * v99) & 0x717FB200)) ^ 0x38BFD969 | (v98 - 1417128367 - ((2 * v98) & 0xA2)) ^ 0xAB885651;
  *(*a62 - 0x606985B424E1600ELL) = v100 + 2035698401 - ((2 * v100) & 0xF2AC95C2);
  v101 = *((LODWORD(STACK[0xCA8]) ^ 0x3F7E75BB8729F7DALL) + a61 + ((2 * (LODWORD(STACK[0xCA8]) ^ 0x79564AE1u)) & 0x1FCFF7A76) - 0x3F7E75BBFE7FBD3BLL);
  v102 = *((LODWORD(STACK[0x9A0]) ^ 0xFBFFDBF78268911CLL) + a61 + ((2 * (LODWORD(STACK[0x9A0]) ^ 0x79564AE1u)) & 0x1F67DB7FALL) + 0x400240804C12403) ^ LOBYTE(STACK[0x738]) ^ 0x13;
  v103 = LOBYTE(STACK[0x58B]) ^ 0x13 ^ *((LODWORD(STACK[0xE2C]) ^ 0x2DFED6DB82813322) + a61 + ((2 * (LODWORD(STACK[0xE2C]) ^ 0x79564AE1u)) & 0x1F7AEF386) - 0x2DFED6DBFBD779C3);
  v104 = (((v103 - (v78 & (2 * v103))) << 8) + 1556551168) ^ 0x5CC71600;
  v105 = ((LOBYTE(STACK[0x3C2]) ^ 0xC7) + 1108649403 - ((2 * (LOBYTE(STACK[0x3C2]) ^ 0xC7)) & 0x77777777)) ^ 0x4214A5BB;
  v106 = (v104 - 1273839980 - ((2 * v104) & 0x68257C00)) ^ 0xB412BE94 | v105;
  v107 = (v101 ^ 0xFFFFF57B) + ((2 * (v101 ^ 0x84)) & 0x15E) + 2641;
  v108 = ((v106 + 1561925797 - ((2 * v106) & 0x3A32314A)) ^ 0x5D1918A5) + v107;
  v109 = ((((v105 & v107) - ((2 * (v105 & v107)) & 0x2694EC)) << 9) + 647293952) ^ 0x2694EC00;
  v110 = (((v108 - ((2 * v108) & 0x9AFEEA)) << 8) - 847284992) ^ 0xCD7F7500;
  v111 = ((v110 - 1534792199 - ((2 * v110) & 0x4909DA00)) ^ 0xA484EDF9) - ((v109 + 1290731853 - ((2 * v109) & 0x19DE0000)) ^ 0x4CEF014D);
  v112 = *((LODWORD(STACK[0xB24]) ^ 0x7FBFBF7F9E11D506) + a61 + ((2 * (LODWORD(STACK[0xB24]) ^ 0x79564AE1u)) & 0x1CE8F3FCELL) - 0x7FBFBF7FE7479FE7) ^ 0xD4;
  v113 = (v111 - 1106309229 - ((2 * v111) & 0x7C1E1F26)) ^ 0xBE0F0F93 | (v112 + 1552797414 - ((2 * v112) & 0x1CC)) ^ 0x5C8DCEE6;
  v114 = (((v113 - ((2 * v113) & 0x715762) + 12102577) ^ ((a73 ^ 0xC7) + 12020832 - ((2 * (a73 ^ 0xC7)) & 4) + 2466)) << 8) ^ 0xFDDB300;
  v115 = (v114 - 1119425078 - ((2 * v114) & 0x7A8DDA00)) ^ 0xBD46EDCA | (v102 - 588593983 - ((2 * v102) & 0xFFFFFF83)) ^ 0xDCEAC4C1;
  *(*a62 - 0x606985B424E15FFELL) = v115 + 2035698401 - ((2 * v115) & 0xF2AC95C2);
  HIDWORD(v160) = (*(v80 - 117) ^ 0xEF) - ((2 * (*(v80 - 117) ^ 0xEF)) & 0x58);
  v116 = *((LODWORD(STACK[0x19EC]) ^ 0xA587BCFF8733B11FLL) + a61 + ((2 * (LODWORD(STACK[0x19EC]) ^ 0x79564AE1u)) & 0x1FCCBF7FCLL) + 0x5A784300019A0402);
  v163 = (*(v80 - 120) ^ 0xEF) - 1497392079 - ((2 * (*(v80 - 120) ^ 0xEF)) & 0x62);
  LODWORD(v160) = 238;
  v117 = (LOBYTE(STACK[0x2BB]) ^ 0x13 ^ v116) - ((2 * (LOBYTE(STACK[0x2BB]) ^ 0x13 ^ v116)) & 0xD2);
  LODWORD(v161) = 696;
  v118 = (*(v80 - 118) ^ 0xEF) - ((2 * (*(v80 - 118) ^ 0xEF)) & 0x1A);
  v119 = *((LODWORD(STACK[0x1868]) ^ 0x6BAF7CF79EA93D5ELL) + a61 + ((2 * (LODWORD(STACK[0x1868]) ^ 0x79564AE1u)) & 0x1CFFEEF7ELL) - 0x6BAF7CF7E7FF77BFLL) ^ 0xD4;
  HIDWORD(v161) = v119 - ((2 * v119) & 0x14C);
  v120 = (((v117 << 8) - 1517524736) ^ 0xA58C6900) - 1560497624 - ((2 * (((v117 << 8) - 1517524736) ^ 0xA58C6900)) & 0x45F96400);
  v162 = (LODWORD(STACK[0x1634]) ^ 0xEDD6FDED1CC82714) + a61 + ((2 * (LODWORD(STACK[0x1634]) ^ 0x79564AE1u)) & 0xCB3CDBEALL);
  v121 = (LOBYTE(STACK[0x7FA]) ^ 0xC7) + 1521851366 - ((2 * (LOBYTE(STACK[0x7FA]) ^ 0xC7)) & 0x1CC);
  v122 = ((((v118 << 8) - 3011328) ^ 0xFFD20D00) - 1032533177 - ((2 * (((v118 << 8) - 3011328) ^ 0xFFD20D00)) & 0x4E99600)) ^ 0xC274CB47 | ((((HIDWORD(v160) << 16) - 1054081024) ^ 0xC12C0000) - 92678126 - ((2 * (((HIDWORD(v160) << 16) - 1054081024) ^ 0xC12C0000)) & 0x74F20000)) ^ 0xFA79D812;
  v123 = (v122 - 1749558915 - ((2 * v122) & 0x2F6FB2FA)) ^ 0x97B7D97D | ((*(v80 - 119) ^ 0xEF) - 238390700 - ((2 * (*(v80 - 119) ^ 0xEF)) & 0xA8)) ^ 0xF1CA7254;
  v124 = (LODWORD(STACK[0x17B8]) ^ 0xBFFFDEEF9BB5B5DELL) + a61 + ((2 * (LODWORD(STACK[0x17B8]) ^ 0x79564AE1u)) & 0x1C5C7FE7ELL);
  v125 = (((v123 - ((2 * v123) & 0xD8E512)) << 8) + 1819445504) ^ 0x6C728900;
  v126 = v125 + 720311590 - ((2 * v125) & 0x55DE2A00);
  v127 = LOBYTE(STACK[0x78B]) ^ 0x13 ^ *((LODWORD(STACK[0xDFC]) ^ 0x7DBD75A79CB99350) + a61 + ((2 * (LODWORD(STACK[0xDFC]) ^ 0x79564AE1u)) & 0x1CBDFB362) - 0x7DBD75A7E5EFD9B1);
  v128 = v127 - ((2 * v127) & 0x16A);
  v129 = (v121 ^ 0x5AB59BE6 | v120 ^ 0xA2FCB228) - ((2 * (v121 ^ 0x5AB59BE6 | v120 ^ 0xA2FCB228)) & 0xD35C);
  v130 = LOBYTE(STACK[0x5C2]) ^ 0x13 ^ *((LODWORD(STACK[0xC78]) ^ 0xFD6FCDFF94A0B11ELL) + a61 + ((2 * (LODWORD(STACK[0xC78]) ^ 0x79564AE1u)) & 0x1DBEDF7FELL) + 0x290320012090401);
  v131 = v130 - ((2 * v130) & 0x4C);
  v132 = LOBYTE(STACK[0x631]) ^ 0x13 ^ *((LODWORD(STACK[0x16E4]) ^ 0x7DF3E3F38AA9BD12) + a61 + ((2 * (LODWORD(STACK[0x16E4]) ^ 0x79564AE1u)) & 0x1E7FFEFE6) - 0x7DF3E3F3F3FFF7F3);
  v133 = LOBYTE(STACK[0x468]) ^ 0x13 ^ *((LODWORD(STACK[0x1560]) ^ 0x1FF5EFFF26E8B5BCLL) + a61 + ((2 * (LODWORD(STACK[0x1560]) ^ 0x79564AE1u)) & 0xBF7DFEBALL) - 0x1FF5EFFF5FBEFF5DLL);
  v134 = v133 + 2017239263 - ((2 * v133) & 0xFFFFFFBF);
  v135 = LOBYTE(STACK[0x3F9]) ^ 0x13 ^ *((LODWORD(STACK[0xAF4]) ^ 0x6BFF9EF717ABF116) + a61 + ((2 * (LODWORD(STACK[0xAF4]) ^ 0x79564AE1u)) & 0xDDFB77EELL) - 0x6BFF9EF76EFDBBF7);
  v136 = ((((v131 << 8) - 928635392) ^ 0xC8A62600) + 600753673 - ((2 * (((v131 << 8) - 928635392) ^ 0xC8A62600)) & 0x479D8C00)) ^ 0x23CEC609 | ((((v128 << 16) + 515178496) ^ 0x1EB50000) + 1081240728 + (~(2 * (((v128 << 16) + 515178496) ^ 0x1EB50000)) | 0xFF1BFFFF) + 1) ^ 0x40726C98;
  v137 = *((LODWORD(STACK[0x970]) ^ 0xFD7FEDFF940BECDFLL) + a61 + ((2 * (LODWORD(STACK[0x970]) ^ 0x79564AE1u)) & 0x1DABB4C7CLL) + 0x280120012A259C2) ^ LOBYTE(STACK[0x230]) ^ 0x13;
  v138 = (((((v129 + 27054) ^ (HIDWORD(v161) + 48038)) << 16) ^ 0xD2080000) - 1461150714 - ((2 * ((((v129 + 27054) ^ (HIDWORD(v161) + 48038)) << 16) ^ 0xD2080000)) & 0x51D00000)) ^ 0xA8E89C06 | (((((v132 - ((2 * v132) & 0x74)) << 8) - 18269696) ^ 0xFEE93A00) - 118016909 - ((2 * ((((v132 - ((2 * v132) & 0x74)) << 8) - 18269696) ^ 0xFEE93A00)) & 0x71EE6800)) ^ 0xF8F73473;
  v139 = (v136 - 1987291196 - ((2 * v136) & 0x1318AF88)) ^ 0x898C57C4 | (v135 - 1639946913 - ((2 * v135) & 0xBE)) ^ 0x9E40655F;
  v140 = (((v139 - ((2 * v139) & 0x5700DC)) << 8) + 729837056) ^ 0x2B806E00;
  v141 = (v138 - 1203535331 - ((2 * v138) & 0x7087043A)) ^ 0xB843821D | v134 ^ 0x783CA0DF;
  v142 = LODWORD(STACK[0xAE0]) ^ ((v126 ^ 0x2AEF1526 | v163 ^ 0xA6BF9C31) - ((2 * (v126 ^ 0x2AEF1526 | v163 ^ 0xA6BF9C31)) & 0xE4DF946) + 119995555) ^ (v137 - ((2 * v137) & 0xA8) + 1475882324) ^ (v140 - ((2 * v140) & 0xDE07C00) - 2031075660) ^ 0xA7102C7 ^ (v141 - ((2 * v141) & 0xB8BFDB08) - 597693052);
  v143 = *((LODWORD(STACK[0x193C]) ^ 0x7E7FEFFFA419E536) + a61 + ((2 * (LODWORD(STACK[0x193C]) ^ 0x79564AE1u)) & 0x1BA9F5FAELL) - 0x7E7FEFFFDD4FAFD7);
  v144 = LOBYTE(STACK[0x5B9]);
  v145 = *(v162 + 0x122902129A61920BLL);
  v146 = *(v124 + 0x400021101D1C00C1);
  v147 = LOBYTE(STACK[0x782]);
  v148 = LOBYTE(STACK[0x243]);
  v149 = LOBYTE(STACK[0x3F0]);
  v150 = *((LODWORD(STACK[0x14B0]) ^ 0xFBF45E7E9FB9A71ALL) + a61 + ((2 * (LODWORD(STACK[0x14B0]) ^ 0x79564AE1u)) & 0x1CDDFDBF6) + 0x40BA18119101205);
  *(*a62 - 0x606985B424E1B15ELL) = v142;
  v151 = v146 ^ v147 ^ 0x13;
  v152 = ((((v143 ^ v148 ^ 0x13) - ((2 * (v143 ^ v148 ^ 0x13)) & 0x1EA)) << 16) - 2047541248) ^ 0x85F50000;
  v153 = (((v151 - ((2 * v151) & 0x156)) << 8) + 1165536000) ^ 0x4578AB00;
  v154 = (v152 - 856888485 - ((2 * v152) & 0x19D80000)) ^ 0xCCECEB5B | (v153 + 1531342585 - ((2 * v153) & 0x368CDC00)) ^ 0x5B466EF9;
  v155 = (v154 + 796867966 - ((2 * v154) & 0x5EFE7AFC)) ^ 0x2F7F3D7E | v144 ^ 0x13 ^ v145;
  v156 = (v149 ^ 0x13 ^ v150) + 225948425 - ((2 * (v149 ^ 0x13 ^ v150)) & 0x12);
  v157 = (((v155 - ((2 * v155) & 0xE44D3A)) << 8) + 1915133184) ^ 0x72269D00;
  *(*a62 - 0x606985B424E1608ELL) = ((v157 + 1385977599 - ((2 * v157) & 0xA538AC00)) ^ 0x529C56FF | v156 ^ 0xD77B309) + 2035698401 - ((2 * ((v157 + 1385977599 - ((2 * v157) & 0xA538AC00)) ^ 0x529C56FF | v156 ^ 0xD77B309)) & 0xF2AC95C2);
  return (*(&off_1002D7880 + (HIDWORD(v159) ^ 0x11)))(0x9F967A4A365895C2, 1184591915, 4176950387, v124, 1201507328, 2833816582, 2655020383, 2307676100, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, v159, v160, v161, v162);
}

uint64_t sub_10006AB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, char a63)
{
  v64 = (a55 - 616) * v63;
  v86 = (((v63 - 107465422) >> 1) & 0x69FFFF76) + (((v63 - 107465422) >> 2) ^ 0xB4FFFFBB);
  v65 = &STACK[0x8C0];
  v66 = *(&STACK[0x8C0] + (v64 - 1834118319) % 0x55Cu) ^ 0x79564AE1u;
  v67 = *(&STACK[0x8C0] + (v64 - 1834118513) % 0x55Cu) ^ 0x79564AE1u;
  v68 = *((*(v65 + (v64 - 1834095039) % 0x55Cu) ^ 0x7E7DFDDC8B428F1DLL) + a61 + ((2 * (*(v65 + (v64 - 1834095039) % 0x55Cu) ^ 0x79564AE1u)) & 0x1E4298BF8) - 0x7E7DFDDCF214C5FCLL);
  v69 = *(&STACK[0x8C0] + (v64 - 1834118416) % 0x55Cu) ^ 0x79564AE1u;
  v70 = *((*(v65 + (v64 - 1834095136) % 0x55Cu) ^ 0xEBFEFD3F8408B506) + a61 + ((2 * (*(v65 + (v64 - 1834095136) % 0x55Cu) ^ 0x79564AE1u)) & 0x1FABDFFCELL) + 0x140102C002A10019);
  v71 = *(&a63 + (457 * v63 - 1866541645) % 0x708u) ^ 0x13 ^ *((v67 ^ 0x7DFFEFFF686FD8BFLL) + a61 + ((2 * v67) & 0xD0DFB17ELL) - 0x7DFFEFFF686FD8BFLL);
  LODWORD(v69) = *(&a63 + (457 * v63 - 1866541188) % 0x708u) ^ 0x13 ^ *((v69 ^ 0xFAFF6D545FC6FABFLL) + a61 + ((2 * v69) & 0xBF8DF57ELL) + 0x50092ABA0390541);
  v72 = *((v66 ^ 0xEFF3B7F75A3A7DBDLL) + a61 + ((2 * v66) & 0xB474FB7ALL) + 0x100C4808A5C58243) ^ *(&a63 + (457 * v63 - 1866540731) % 0x708u) ^ 0x13;
  v73 = *(&STACK[0x8C0] + (v64 - 1834095330) % 0x55Cu);
  v74 = *((*(v65 + (v64 - 1834095233) % 0x55Cu) ^ 0x5EFFF7BF88B9B35ELL) + a61 + ((2 * (*(v65 + (v64 - 1834095233) % 0x55Cu) ^ 0x79564AE1u)) & 0x1E3DFF37ELL) - 0x5EFFF7BFF1EFF9BFLL);
  v75 = *((v73 ^ 0x6ACFFBCF96AD3D18) + a61 + ((2 * (v73 ^ 0x79564AE1)) & 0x1DFF6EFF2) - 0x6ACFFBCFEFFB77F9);
  v76 = *(&a63 + (457 * v63 - 1866542102) % 0x708u) ^ 0x13 ^ *((*(v65 + (v64 - 1834118610) % 0x55Cu) ^ 0xBD7F7EBB84AC94BELL) + a61 + ((2 * (*(v65 + (v64 - 1834118610) % 0x55Cu) ^ 0x79564AE1u)) & 0x1FBF5BCBELL) + 0x42808144020521A1);
  v77 = (((v72 - ((2 * v72) & 0x78)) << 16) + 1681653760) ^ 0x643C0000;
  LODWORD(v69) = (((v69 + 122876 - ((2 * v69) & 0x33333333)) << 8) + 630016) ^ 0x1E99900;
  LODWORD(v69) = (v69 - 411630377 - ((2 * v69) & 0x4EEE0800)) ^ 0xE77704D7 | (v77 - 360738859 - ((2 * v77) & 0x54FE0000)) ^ 0xEA7F8FD5;
  LODWORD(v69) = (v69 - 1019404436 - ((2 * v69) & 0x67A3ED8)) ^ 0xC33D1F6C | (v71 + 557974831 - ((2 * v71) & 0x5E)) ^ 0x2142052F;
  LODWORD(v69) = (((v69 - ((2 * v69) & 0xB76C60)) << 8) + 1538666496) ^ 0x5BB63000;
  LODWORD(v69) = (v69 + 1451365651 - ((2 * v69) & 0xAD042A00)) ^ 0x56821513 | (v76 - 1390061740 + (~(2 * v76) | 0xFFFFFF57) + 1) ^ 0xAD255754;
  v78 = *(&a63 + (457 * v63 - 1866431051) % 0x708u);
  v79 = *(&a63 + (457 * v63 - 1866432422) % 0x708u);
  v80 = *(&a63 + (457 * v63 - 1866431965) % 0x708u);
  v81 = *(&a63 + (457 * v63 - 1866431508) % 0x708u);
  *(((4 * (v86 + 1597734758)) | ((v86 + 1597734758 < 0x143B7F21) << 34)) + *a62 - 0x606985B475CFADE2) = *(&STACK[0x8C0] + (97 * (v86 + 1597734758) + 1433744767) % 0x55C) ^ 0xB67504D8 ^ (v69 - 1233845032 - ((2 * v69) & 0x6CEA09B0));
  LODWORD(v69) = (v68 ^ v78 ^ 0x13) + (~(2 * (v68 ^ v78 ^ 0x13)) | 0xFFFE3D);
  LODWORD(v69) = ((v70 ^ 0xD4) - 629528492 - ((2 * (v70 ^ 0xD4)) & 0xA8)) ^ 0xDA7A2854 | ((((v69 << 8) + 2000675328) ^ 0x773FE100) + 1516194463 - ((2 * (((v69 << 8) + 2000675328) ^ 0x773FE100)) & 0xBE9400)) ^ 0x5A5F4A9F;
  v82 = (v74 ^ v80 ^ 0x13) - ((2 * (v74 ^ v80 ^ 0x13)) & 0xD6);
  LODWORD(v69) = ((v81 ^ 0xC7) - ((2 * (v81 ^ 0xC7)) & 0xF8) + 27516) ^ (v69 - ((2 * v69) & 0x786) + 33731);
  v83 = (((v69 << 16) ^ 0xE8BF0000) + 476194609 - ((2 * ((v69 << 16) ^ 0xE8BF0000)) & 0x38C40000)) ^ 0x1C622731 | ((((v82 << 8) + 1982950144) ^ 0x76316B00) - 661967421 - ((2 * (((v82 << 8) + 1982950144) ^ 0x76316B00)) & 0x31165A00)) ^ 0xD88B2DC3;
  v84 = (v83 - 1252702616 - ((2 * v83) & 0x6AAA8CD0)) ^ 0xB5554668 | ((v75 ^ v79 ^ 0x13) + 2000313615 - 2 * ((v75 ^ v79 ^ 0x13) & 0xF)) ^ 0x773A5D0F;
  *(((4 * (v86 + 1732410769)) | ((v86 + 1732410769 < 0x1C426918) << 34)) + *a62 - 0x606985B495EB55BELL) = v84 + 2035698401 - ((2 * v84) & 0xF2AC95C2);
  return (*(&off_1002D7880 + ((59 * ((v63 - 107465418) < 0x20)) ^ a55)))((v63 - 107465418) < 0x20, 3632999875, 1372, &STACK[0x8C0], 19, 476194609, 2000313615, 1353029461, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43);
}

uint64_t sub_10006B324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v54 = ((((v47 + 476598678) & 0xE397ABA0) + 2146433887) ^ ((a8 - 1353029429) >> 2)) + (((a8 - 1353029429) >> 1) & 0x7FDFF9FE) - 134333498;
  HIDWORD(v55) = a8 + 7;
  LODWORD(v55) = a8 - 1353028473;
  v56 = (v55 >> 5) + 1407877120 - ((2 * (v55 >> 5)) & 0xA7D515AA) + 2773;
  HIDWORD(v55) = v56 ^ 0xAD5;
  LODWORD(v55) = v56 ^ 0x53EA8000;
  v57 = (v55 >> 13) + 82657280 - ((2 * (v55 >> 13)) & 0x9DA9BE4) + 3570;
  HIDWORD(v55) = v57 ^ 0xDF2;
  LODWORD(v55) = v57 ^ 0x4ED4000;
  v58 = 97 * (((2 * (v55 >> 14)) & 0xDA4FAFFE) + ((v55 >> 14) ^ 0x6D27D7FF)) - 1545131935;
  v59 = *(v49 + 457 * a8 + 141358438 - (457 * a8 + 141358438) / 0x708u * v48) ^ a5 ^ *((*(a4 + 4 * (97 * a8 + 1900224586 - ((((97 * a8 + 1900224586) * v50) >> 32) >> 10) * a3)) ^ 0x449FF3FF842BFD5ELL) + v53 + ((2 * (*(a4 + 4 * (97 * a8 + 1900224586 - ((((97 * a8 + 1900224586) * v50) >> 32) >> 10) * a3)) ^ 0x79564AE1u)) & 0x1FAFB6F7ELL) - 0x449FF3FFFD7DB7BFLL);
  v60 = *(a4 + 4 * (v58 - (((v58 * v50) >> 32) >> 10) * a3)) ^ 0x79564AE1u;
  v61 = *(v49 + 457 * a8 + 141357067 - (457 * a8 + 141357067) / 0x708u * v48) ^ v46;
  v62 = *(v49 + 457 * a8 + 141357981 - (457 * a8 + 141357981) / 0x708u * v48) ^ a5 ^ *((*(a4 + 4 * (97 * a8 + 1900224489 - ((((97 * a8 + 1900224489) * v50) >> 32) >> 10) * a3)) ^ 0x7FE7CF6B0639FD1ELL) + v53 + ((2 * (*(a4 + 4 * (97 * a8 + 1900224489 - ((((97 * a8 + 1900224489) * v50) >> 32) >> 10) * a3)) ^ 0x79564AE1u)) & 0xFEDF6FFELL) - 0x7FE7CF6B7F6FB7FFLL);
  v63 = (((v59 - ((2 * v59) & 0x1B2)) << 16) - 992411648) ^ 0xC4D90000;
  v64 = (((v62 - ((2 * v62) & 0x116)) << 8) + 1438550784) ^ 0x55BE8B00;
  v65 = (v64 - 997913104 - ((2 * v64) & 0x90A1A00)) ^ 0xC4850DF0 | (v63 + 2032853362 - ((2 * v63) & 0x72540000)) ^ 0x792AE172;
  LODWORD(v60) = *((v60 ^ 0x5C77F77FF3EEFFAFLL) + v53 + ((2 * v60) & 0x1E7DDFF5ELL) - 0x5C77F77FF3EEFFAFLL) ^ v51;
  v66 = *(v49 + 457 * a8 + 141357524 - (457 * a8 + 141357524) / 0x708u * v48) ^ a5 ^ *((*(a4 + 4 * (97 * a8 + 1900224392 - ((((97 * a8 + 1900224392) * v50) >> 32) >> 10) * a3)) ^ 0x7E9BDF7F8686355CLL) + v53 + ((2 * (*(a4 + 4 * (97 * a8 + 1900224392 - ((((97 * a8 + 1900224392) * v50) >> 32) >> 10) * a3)) ^ 0x79564AE1u)) & 0x1FFA0FF7ALL) - 0x7E9BDF7FFFD07FBDLL);
  v67 = (v65 + 726555136 - ((2 * v65) & 0x569CB400)) ^ 0x2B4E5A00 | (v66 - 1778917211 - ((2 * v66) & 0x14A)) ^ 0x95F7E0A5;
  v68 = (((v67 - ((2 * v67) & 0x729640)) << 8) - 1186258944) ^ 0xB94B2000;
  v69 = (v68 + 1296150098 - ((2 * v68) & 0x9A835C00)) ^ 0x4D41AE52 | (v61 + 926138782 - ((2 * v61) & 0x13C)) ^ 0x3733C19E;
  *(((4 * v54) | ((v54 < 0x77EE38C5) << 34)) + *v52 - 0x606985B6049A9472) = (v60 - ((2 * v60) & 0x124) + 401356690) ^ *(a4 + 4 * (97 * v54 - 1900224933 - ((((97 * v54 - 1900224933) * v50) >> 32) >> 10) * a3)) ^ 0x56745325 ^ (v69 - ((2 * v69) & 0x8330C96E) + 1100506295);
  return (*(&off_1002D7880 + ((196 * ((a8 - 1353029425) < 0x60)) ^ v47)))(0x9F967A49FB656B8ELL, 1450464037, a3, a4, a5, 97, 906537253, (a8 + 4), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_10006B7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, char a63)
{
  v64 = (((a7 - 906537157) >> 1) & 0x771EF7AE) + (((a7 - 906537157) >> 2) ^ 0x3B8F7BD7);
  v65 = &STACK[0x8C0];
  v66 = *(&STACK[0x8C0] + (97 * a7 - 2034648505) % 0x55Cu);
  v67 = *(&STACK[0x8C0] + (97 * a7 - 2034648214) % 0x55Cu);
  v68 = *(&STACK[0x8C0] + (97 * a7 - 2034648408) % 0x55Cu);
  v69 = *(&STACK[0x8C0] + (97 * a7 - 2034665286) % 0x55Cu);
  v70 = v66 ^ 0x79564AE1;
  v71 = (v67 ^ 0xEFE7EFF9820D870ELL) + a61 + ((2 * (v67 ^ 0x79564AE1)) & 0x1F6B79BDELL);
  v72 = (v66 ^ 0x9BE97EFF1570B51ELL) + a61;
  v73 = *(v71 + 0x1018100604A43211);
  LODWORD(v70) = *(v72 + ((2 * v70) & 0xD84DFFFELL) + 0x6416810093D90001);
  v74 = *(&STACK[0x8C0] + (97 * a7 - 2034648311) % 0x55Cu);
  v75 = *((v74 ^ 0xBBE76EF5C5E1B53DLL) + a61 + ((2 * (v74 ^ 0x79564AE1)) & 0x1796FFFB8) + 0x4418910A43480024);
  v76 = *((v68 ^ 0x7EBD7CFDBFB9889DLL) + a61 + ((2 * (v68 ^ 0x79564AE1)) & 0x18DDF84F8) - 0x7EBD7CFDC6EFC27CLL);
  LODWORD(v71) = *((*(v65 + (97 * a7 - 2034665383) % 0x55Cu) ^ 0x7D7FF57FAEAD7D4CLL) + a61 + ((2 * (*(v65 + (97 * a7 - 2034665383) % 0x55Cu) ^ 0x79564AE1u)) & 0x1AFF66F5ALL) - 0x7D7FF57FD7FB37ADLL) ^ *(&a63 + (457 * a7 - 1970103923) % 0x708u) ^ 0x13;
  v77 = *((v69 ^ 0xDD7F52ED82ABBE44) + v63 + ((2 * (v69 ^ 0x79564AE1)) & 0x1F7FBE94ALL) + 0x2280AD1204020B5BLL) ^ *(&a63 + (457 * a7 - 1970103466) % 0x708u) ^ 0x13;
  v78 = *(&a63 + (457 * a7 - 1970104380) % 0x708u) ^ 0x13 ^ *((*(v65 + (97 * a7 - 2034665480) % 0x55Cu) ^ 0x3DEEFB578309B51ELL) + a61 + ((2 * (*(v65 + (97 * a7 - 2034665480) % 0x55Cu) ^ 0x79564AE1u)) & 0x1F4BFFFFELL) - 0x3DEEFB57FA5FFFFFLL);
  v79 = (((v77 - ((2 * v77) & 0x178)) << 16) + 280756224) ^ 0x10BC0000;
  LODWORD(v71) = (((v71 - ((2 * v71) & 0x146)) << 8) - 713841920) ^ 0xD573A300;
  LODWORD(v71) = (v71 - 781027708 - ((2 * v71) & 0x22E4EC00)) ^ 0xD1727684;
  v80 = (v79 + 932974484 - ((2 * v79) & 0x6F380000)) ^ 0x379C0F94 | v71;
  v81 = v71 | (v78 - 485413145 - ((2 * v78) & 0xFFFFFFCF)) ^ 0xE3112EE7;
  HIDWORD(v82) = (v81 - ((2 * v81) & 0x468) + 2612) ^ 0xA34;
  LODWORD(v82) = (v80 + 740171776 - ((2 * v80) & 0x583C4CBE) + 1631) ^ 0x2C1E2000;
  v83 = *(&a63 + (457 * a7 - 1970104837) % 0x708u) ^ 0x13 ^ *((*(v65 + (97 * a7 - 2034665577) % 0x55Cu) ^ 0x7F9F1EDF92A9233ELL) + a61 + ((2 * (*(v65 + (97 * a7 - 2034665577) % 0x55Cu) ^ 0x79564AE1u)) & 0x1D7FED3BELL) - 0x7F9F1EDFEBFF69DFLL);
  v84 = (v82 >> 12) - ((2 * (v82 >> 12)) & 0x3EBB699A) - 1621248819;
  HIDWORD(v82) = v84 ^ 0xDB4CD;
  LODWORD(v82) = v84 ^ 0x9F500000;
  v85 = ((((v82 >> 20) - ((2 * (v82 >> 20)) & 0x771B2E)) << 8) - 1148348672) ^ 0xBB8D9700;
  v86 = (v85 + 97023767 - ((2 * v85) & 0xB90EE00)) ^ 0x5C87717 | (v83 - 310605423 - ((2 * v83) & 0x122)) ^ 0xED7C8991;
  v87 = *(&a63 + (457 * a7 - 1970023034) % (((a55 - 416) | 0x190) ^ 0x698u));
  v88 = *(&a63 + (457 * a7 - 1970023491) % 0x708u);
  v89 = *(&a63 + (457 * a7 - 1970024405) % 0x708u);
  v90 = *(&a63 + (457 * a7 - 1970023948) % 0x708u);
  *(((4 * (v64 - 813699264)) | ((v64 - 813699264 < 0xB0F6B17) << 34)) + *a62 - 0x606985B4511F5DBALL) = *(&STACK[0x8C0] + (97 * (v64 - 813699264) - 819409591) % 0x55C) ^ 0xE5F5097E ^ (v86 - 436926082 - ((2 * v86) & 0xCBEA12FC));
  v91 = ((((v87 ^ 0x13 ^ v73) - ((2 * (v87 ^ 0x13 ^ v73)) & 0x18C)) << 16) - 1715077120) ^ 0x99C60000;
  v92 = ((((v88 ^ 0x13 ^ v75) - ((2 * (v88 ^ 0x13 ^ v75)) & 0x144)) << 8) - 1142644224) ^ 0xBBE4A200;
  v93 = (v92 - 942789039 - ((2 * v92) & 0xF9C5C00)) ^ 0xC7CE2E51 | (v91 + 1871941468 - ((2 * v91) & 0x5F260000)) ^ 0x6F938F5C;
  v94 = (2 * v93) & 0x769511F2;
  v95 = (v93 - 1152743175 - v94) ^ 0xBB4A88F9 | ((v90 ^ 0xC7) - 1420629728 - ((2 * v90) & 0x40)) ^ 0xAB52E920;
  v96 = (v95 - ((2 * v95) & 0xFD2D20) + 8296080) ^ ((v76 ^ 0xD4) - ((2 * (v76 ^ 0xD4)) & 0x194) + 2612938);
  v97 = (((v96 << 8) ^ 0x59485A00) - 1261069178 - ((2 * ((v96 << 8) ^ 0x59485A00)) & 0x69AB3800)) ^ 0xB4D59C86 | ((v70 ^ v89 ^ 0x13) + 1533816207 - ((2 * (v70 ^ v89 ^ 0x13)) & 0xFFFFFF1F)) ^ 0x5B6C2D8F;
  *(((4 * v64) | ((v64 < 0x3B8F67B3) << 34)) + *a62 - 0x606985B5131F502ALL) = v97 + 2035698401 - ((2 * v97) & 0xF2AC95C2);
  return (*(&off_1002D7880 + ((2014 * ((a7 - 906537153) < 0xB0)) ^ a55)))(&STACK[0x8C0], v94, 2443359173, 1800, &a63, 19, (a7 + 4), 3142224121, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_10006C014(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, int a6)
{
  v14 = (((v7 - 36639960) >> 2) ^ 0x357EF4FF) + (((v7 - 36639960) >> 1) & 0x6AFDE9FE);
  v15 = *(a5 + 457 * v7 + 435924331 - ((((457 * v7 + 435924331) * a3) >> 32) >> 10) * a4) ^ a6 ^ *((*(a1 + 4 * (97 * v7 + 740984199 - ((((97 * v7 + 740984199) * v8) >> 32) >> 10) * v9)) ^ 0x68FDDF93E02DB734) + v13 + ((2 * (*(a1 + 4 * (97 * v7 + 740984199 - ((((97 * v7 + 740984199) * v8) >> 32) >> 10) * v9)) ^ 0x79564AE1u)) & 0x132F7FBAALL) - 0x68FDDF93997BFDD5);
  v16 = *(a5 + 457 * v7 + 435923874 - ((((457 * v7 + 435923874) * a3) >> 32) >> 10) * a4) ^ a6 ^ *((*(a1 + 4 * (97 * v7 + 740984102 - ((((97 * v7 + 740984102) * v8) >> 32) >> 10) * v9)) ^ 0xFB97FFC7B628B51FLL) + v13 + ((2 * (*(a1 + 4 * (97 * v7 + 740984102 - ((((97 * v7 + 740984102) * v8) >> 32) >> 10) * v9)) ^ 0x79564AE1u)) & 0x19EFDFFFCLL) + 0x468003830810002);
  v17 = *(a5 + 457 * v7 + 435923417 - ((((457 * v7 + 435923417) * a3) >> 32) >> 10) * a4) ^ a6 ^ *((*(a1 + 4 * (97 * v7 + 740984005 - ((((97 * v7 + 740984005) * v8) >> 32) >> 10) * v9)) ^ 0x5F77F7BB44F8B515) + v13 + ((2 * (*(a1 + 4 * (97 * v7 + 740984005 - ((((97 * v7 + 740984005) * v8) >> 32) >> 10) * v9)) ^ 0x79564AE1u)) & 0x7B5DFFE8) - 0x5F77F7BB3DAEFFF4);
  v18 = (((v15 - ((2 * v15) & 0xFFFFFF83)) << 16) - 1648295936) ^ 0x9DC10000;
  v19 = (((v16 - (v6 & (2 * v16))) << 8) + 1593141760) ^ 0x5EF56A00;
  v20 = (v18 + 743820815 - ((2 * v18) & 0x58AA0000)) ^ 0x2C55CE0F | (v19 - 1616281447 - ((2 * v19) & 0x3F530000)) ^ 0x9FA98099;
  v21 = (v20 - 1234150683 - ((2 * v20) & 0x6CE0B5CA)) ^ 0xB6705AE5 | (v17 + 201258445 - ((2 * v17) & 0x19A)) ^ 0xBFEF5CD;
  v22 = *(a5 + 457 * v7 + 435922960 - ((((457 * v7 + 435922960) * a3) >> 32) >> 10) * a4) ^ a6 ^ *((*(a1 + 4 * (97 * v7 + 740983908 - ((((97 * v7 + 740983908) * v8) >> 32) >> 10) * v9)) ^ 0xF27AEDFE46CDB58ELL) + v13 + ((2 * (*(a1 + 4 * (97 * v7 + 740983908 - ((((97 * v7 + 740983908) * v8) >> 32) >> 10) * v9)) ^ 0x79564AE1u)) & 0x7F37FEDE) + 0xD851201C0640091);
  v23 = (((v21 - ((2 * v21) & 0x94852E)) << 8) + 1245878016) ^ 0x4A429700;
  v24 = (v23 + 692346820 - ((2 * v23) & 0x5288BE00)) ^ 0x29445FC4 | (v22 + 719132363 - ((2 * v22) & 0x196)) ^ 0x2ADD16CB;
  v25 = (v24 - ((2 * v24) & 0xAB5123D6) + 1437110763) ^ *(a1 + 4 * (97 * v14 - 1159365319 - ((((97 * v14 - 1159365319) * v8) >> 32) >> 10) * v9));
  HIDWORD(v26) = v25 ^ 0x30A;
  LODWORD(v26) = v25 ^ 0x2CFED800;
  v27 = (v26 >> 11) - ((2 * (v26 >> 11)) & 0xA186B606) + 1354980099;
  HIDWORD(v26) = v27 ^ 0x10C35B03;
  LODWORD(v26) = v27 ^ 0x40000000;
  v28 = (v26 >> 29) - ((2 * (v26 >> 29)) & 0x685FE144) + 875557026;
  HIDWORD(v26) = v28 ^ 0x2FF0A2;
  LODWORD(v26) = v28 ^ 0x34000000;
  *(((4 * v14) | ((v14 < 0x357EF503) << 34)) + *v11 - 0x606985B4FADD856ALL) = (v26 >> 24) + 2035698401 - ((2 * (v26 >> 24)) & 0xF2AC95C2);
  return (*(v10 + 8 * (((16 * ((v7 - 36639956) < 0xE0)) | (32 * ((v7 - 36639956) < 0xE0))) ^ v12)))();
}

uint64_t sub_10006C468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, int a54, int a55, int a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = (((((2 * v66) ^ 0x2A2) - 131) & (a54 + 208)) + 577093289 - 2 * ((a54 + 208) & 0xAB ^ a54 & 2)) ^ 0x2265BEA9;
  v68 = *(&a65 + (((914 * v67) & 0x5DFFFEFA) + ((457 * v67) ^ 0x6EFFFF7Du) - 1862007613) % 0x708);
  v69 = dword_10027D9D0[(1361 * (((2 * (v68 ^ 0x1D)) & 0xBE) + (v68 ^ 0xECFBE542)) + 421172845) % 0x12E0];
  v70 = 2 * ((v69 ^ 0x21D87047) * (v69 ^ 0x21D87047) - ((2 * (v69 ^ 0x21D87047) * (v69 ^ 0x21D87047)) & 0x4DC75CF0)) + 1304911088;
  v71 = ((v70 ^ 0x4DC75CF0) - 2 * ((v70 ^ 0x4DC75CF0) & 0x5B3BA6FC ^ v70 & 4) - 616847623) ^ v69;
  v72 = ((914 * (HIBYTE(v71) ^ 0x29)) & 0x3371E) + ((457 * (HIBYTE(v71) ^ 0x29)) ^ 0x3F3D9B8F) - 1060857687;
  v73 = ((914 * (BYTE2(v71) ^ 0x9C)) & 0x1FFFC) + ((457 * (BYTE2(v71) ^ 0x9C)) ^ 0x7FCCFFFE) - 2143995070;
  v74 = (v72 - 1800 * ((2386093 * v72) >> 32));
  v75 = (((914 * (v71 ^ 0x1D)) & 0x37344) + ((457 * (v71 ^ 0x1D)) ^ 0x3CE7B9A2u) - 1021673058) % 0x708;
  v76 = *(&a65 + v74) ^ 0xC7;
  v77 = *(&a65 + (v73 - 1800 * ((2386093 * v73) >> 32))) ^ 0xC7;
  v78 = (((v76 - ((2 * v76) & 0x10A)) << 16) + 528809984) ^ 0x1F850000;
  v79 = (((v77 - ((2 * v77) & 0x126)) << 8) - 1582787840) ^ 0xA1A89300;
  v80 = (v79 - 1078556849 - ((2 * v79) & 0x7F6D0E00)) ^ 0xBFB6874F | (v78 + 371967258 + (~(2 * v78) | 0xD3A9FFFF) + 1) ^ 0x162BC51A;
  v81 = *(&a65 + (((914 * (BYTE1(v71) ^ 0x97)) & 0x3FF7A) + ((457 * (BYTE1(v71) ^ 0x97)) ^ 0x57D7FFBDu) - 1473627261) % 0x708) ^ 0xC7;
  v82 = (v80 + 843689227 - ((2 * v80) & 0x64935A16)) ^ 0x3249AD0B | (v81 + 2002198896 - ((2 * v81) & 0xE0)) ^ 0x77572170;
  v83 = (((v82 - ((2 * v82) & 0xC2DEFC)) << 8) - 512786944) ^ 0xE16F7E00;
  v84 = (v83 - 1112827062 - ((2 * v83) & 0x7B573600)) ^ 0xBDAB9B4A | ((*(&a65 + v75) ^ 0xC7) - 853109874 - ((2 * (*(&a65 + v75) ^ 0xC7)) & 0x11C)) ^ 0xCD26938E;
  v85 = a56 ^ 0x81EAF2D9 ^ (v84 - 2115308839 - ((2 * v84) & 0x3D5E5B2));
  *(&STACK[0x8C0] + (97 * a54 + 268969680) % 0x55Cu) = v85 + 2035698401 - ((2 * v85) & 0xF2AC95C2);
  return (*(v65 + 8 * ((1338 * (a54 == 1015621679)) ^ v66)))(3182140234, 843689227, v75, 371967258, v74, 226116, (a54 + 1), a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_10006C924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, unsigned int a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  v65 = ((a54 - 20) + 1085721671 - ((2 * (a54 + 236)) & 0x8E)) ^ 0x40B6CC47;
  v66 = *(&a63 + (((914 * v65) & 0x1FB6CE) + ((v65 * ((v63 - 49) ^ 0x98)) ^ 0xB4FFDB67) + 1258563801) % 0x708);
  v67 = ((v66 ^ 0xC7) - ((2 * (v66 ^ 0xC7)) & 0x1E8) + 937649908) ^ dword_10027D9D0[(1361 * (((2 * (v66 ^ 0x33333333)) & 0x1D6) + (v66 ^ 0x5DE4FED8u)) - 773557821) % 0x12E0];
  v68 = *(&a63 + (((914 * (HIBYTE(v67) ^ 0x58)) & 0x2FFFA) + ((457 * (HIBYTE(v67) ^ 0x58)) ^ 0x3F777FFD) - 1064649917) % 0x708u) ^ 0xC7;
  v69 = *(&a63 + (((914 * (BYTE2(v67) ^ 0x9A)) & 0x3D5F6) + ((457 * (BYTE2(v67) ^ 0x9A)) ^ 0x27B3EAFBu) - 665956283) % 0x708) ^ 0xC7;
  v70 = *(&a63 + (((914 * (v67 ^ 0x4F)) & 0x1F6D4) + ((457 * (v67 ^ 0x4F)) ^ 0x73FEFB6Au) - 1945944106) % 0x708);
  v71 = (((v68 - ((2 * v68) & 0xDC)) << 16) + 1835925504) ^ 0x6D6E0000;
  v72 = (((v69 - ((2 * v69) & 0x68)) << 8) - 230607872) ^ 0xF2413400;
  v73 = (v72 - 902569623 - ((2 * v72) & 0x1467C200)) ^ 0xCA33E169 | (v71 - 508215064 - ((2 * v71) & 0x436A0000)) ^ 0xE1B540E8;
  v74 = *(&a63 + (((914 * (BYTE1(v67) ^ 0xFB)) & 0x23E5E) + ((457 * (BYTE1(v67) ^ 0xFB)) ^ 0x9EFF1F2F) + 1627593745) % 0x708) ^ 0xC7;
  v75 = (v73 + 1382147198 - ((2 * v73) & 0x24C3C8FC)) ^ 0x5261E47E | (v74 - 2020370958 + (~(2 * v74) | 0xFFFFFE1B) + 1) ^ 0x879395F2;
  v76 = (((v75 - ((2 * v75) & 0x39B7D6)) << 8) + 484174592) ^ 0x1CDBEB00;
  v77 = (v76 - 640336506 - ((2 * v76) & 0xB3AA7A00)) ^ 0xD9D53D86 | ((v70 ^ 0xC7) + 1705372095 - ((2 * (v70 ^ 0xC7)) & 0xFFFFFF7F)) ^ 0x65A5E9BF;
  *(&STACK[0x8C0] + (97 * a54 + 1328906348) % 0x55C) = a58 ^ (v77 - ((2 * v77) & 0xA4C4EA00) - 765299456) ^ 0x73A746D7;
  return (*(v64 + 8 * ((1138 * (a54 == 163412243)) ^ v63)))(3654630790, 2274596338, 1382147198, 3392397673, 666102523, a54, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_10006CD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  v64 = *(&a63 + (((914 * ((-1334934235 - (((v63 ^ 0xE50) - 1542) & 0xBC260800)) ^ 0xB06E8525)) & 0x136DEC) + ((457 * ((-1334934235 - (((v63 ^ 0xE50) - 1542) & 0xBC260800)) ^ 0xB06E8525)) ^ 0xDCB9B6F6) + 592072010) % 0x708);
  v65 = dword_10027D9D0[(1361 * (((2 * (v64 ^ 0xB0)) & 0xFFFFFFF7) + (v64 ^ 0xEED7BE4B)) + 925529345) % 0x12E0];
  v66 = (((914 * (BYTE2(v65) ^ 0xFE)) & 0x3F3FC) + ((457 * (BYTE2(v65) ^ 0xFE)) ^ 0xDEEFF9FE) + 554844482) % 0x708;
  v67 = (((914 * (v65 ^ 0x22)) & 0x3FEE2) + ((457 * (v65 ^ 0x22)) ^ 0xFFEFFF71) + 1194959) % 0x708;
  v68 = BYTE1(v65) ^ 0xF5;
  v69 = *(&a63 + (((914 * (HIBYTE(v65) ^ 0xEA)) & 0x15BE6) + ((457 * (HIBYTE(v65) ^ 0xEA)) ^ 0x7CEEADF3) - 2095870643) % 0x708u) ^ 0xC7;
  v70 = *(&a63 + v66) ^ 0xC7;
  v71 = (((v69 - ((2 * v69) & 0x34)) << 16) - 1273364480) ^ 0xB41A0000;
  v72 = (((v70 - ((2 * v70) & 0x10C)) << 8) + 223118848) ^ 0xD4C8600;
  v73 = (v72 + 1204691273 - ((2 * v72) & 0xF9C4200)) ^ 0x47CE2149 | (v71 + 1261888851 - ((2 * v71) & 0x166C0000)) ^ 0x4B36E553;
  v74 = *(&a63 + (((914 * v68) & 0x3F6FC) + ((457 * v68) ^ 0x7FEBFB7Eu) - 2146025534) % 0x708) ^ 0xC7;
  v75 = (v73 - 1000814992 - ((2 * v73) & 0x8B18CE0)) ^ 0xC458C670 | (v74 - 1584067729 - (a8 & (2 * v74))) ^ 0xA1950B6F;
  v76 = (((v75 - ((2 * v75) & 0x8A43CA)) << 8) + 1159849216) ^ 0x4521E500;
  v77 = *(&a63 + v67) ^ 0xC7;
  v78 = (v76 - 241738547 - ((2 * v76) & 0xE32EB800)) ^ 0xF1975CCD | (v77 + 22514410 - ((2 * v77) & 0x1D4)) ^ 0x1578AEA;
  v79 = (a39 - 1333001451) ^ 0x532A1A36 ^ (v78 + 1395268150 + (~(2 * v78) | 0x59ABCB93) + 1);
  LODWORD(STACK[0x8C0]) = v79 + 2035698401 - ((2 * v79) & 0xF2AC95C2);
  v80 = *(&off_1002D7880 + ((v63 - 432) ^ 0x33));
  return v80(v80, 1159849216, 502628206, 51, 199, 2443359173, 4053228749, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_10006D254(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, int a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = (v64 + 53) ^ 0x8BEC6F12 ^ ((a3 - 110) - 1947440202 - ((2 * (a3 + 146)) & 0x16C));
  v70 = (((914 * v69) & 0x2CBF7E) + ((457 * v69) ^ 0x7CD65FBF) - 2094160767) % 0x708;
  v71 = dword_10027D9D0[(1361 * (((2 * (*(&a64 + v70) ^ 0xB7)) & 0xFFFFFFEF) + (*(&a64 + v70) ^ 0xF10F5940)) + 1839617041) % 0x12E0];
  HIDWORD(v72) = v71 ^ 0x47AC;
  LODWORD(v72) = v71 ^ 0x1B900000;
  v73 = (v72 >> 16) - ((2 * (v72 >> 16)) & 0xB52F2008) - 627601404;
  v74 = (((8 * v73) ^ 0xD4BC8020) + 746463574 - ((2 * ((8 * v73) ^ 0xD4BC8020)) & 0x58FC42A0)) ^ 0x2C7E2156;
  v75 = (v74 - ((2 * v74 + 3659920) & 0x6BF6EA) - 1022236739) ^ v73;
  v76 = ((HIBYTE(v75) ^ 0xBB) + 1854896746 - ((2 * (HIBYTE(v75) ^ 0xBB) + 640) & 0x4D4) + 320) ^ 0x6E8F7A6A;
  v77 = (((914 * (v75 ^ 0x37)) & 0xBBDE) + ((457 * (v75 ^ 0x37)) ^ 0xFF7E5DEF) + 8641873) % 0x708;
  v78 = (((914 * BYTE1(v75)) & 0x36ECE) + ((457 * BYTE1(v75)) ^ 0x7F67B767u) - 2137357351) % 0x708;
  v79 = *(&a64 + (((914 * (BYTE2(v75) ^ 0xA3)) & 0x37E4A) + ((457 * (BYTE2(v75) ^ 0xA3)) ^ 0xFFE3BF25) + 1997851) % 0x708) ^ 0xC7;
  v80 = *(&a64 + (((914 * v76) & 0xDE5FB33E) + ((457 * v76) ^ 0xEF2FD99F) + 282076769) % 0x708) ^ 0xC7;
  v81 = (((v80 - ((2 * v80) & 0xFA)) << 16) + 1467809792) ^ 0x577D0000;
  v82 = (((v79 - ((2 * v79) & 0x13C)) << 8) - 1385325056) ^ 0xAD6D9E00;
  v83 = (v81 + 601014458 - ((2 * v81) & 0x47A40000)) ^ 0x23D2C0BA | (v82 + 260802195 - ((2 * v82) & 0x1F170C00)) ^ 0xF8B8693;
  v84 = *(&a64 + v78) ^ 0xC7;
  v85 = (v83 - 1477359195 - ((2 * v83) & 0x4FE2934A)) ^ 0xA7F149A5 | (v84 - 1419712620 - ((2 * v84) & 0x128)) ^ 0xAB60E794;
  v86 = (((v85 - ((2 * v85) & 0x647D8)) << 8) + 52685824) ^ 0x323EC00;
  v87 = *(&a64 + v77) ^ 0xC7;
  v88 = (v86 + 599148119 - ((2 * v86) & 0x476C8C00)) ^ 0x23B64657 | (v87 + 1529594637 - ((2 * v87) & 0x1A)) ^ 0x5B2BC30D;
  *(v68 + 4 * (a3 * a8 - 1510295726 - ((((a3 * a8 - 1510295726) * v66) >> 32) >> 10) * v67)) = a57 ^ 0xF7B5CDF7 ^ (v88 - ((2 * v88) & 0x466EC7AA) + 590832597);
  return (*(v65 + 8 * ((203 * (a3 == 502628461)) ^ v64)))();
}

uint64_t sub_10006D738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  v69 = (((149 * (v63 ^ 0x58D)) ^ 0x807D857B) + (v68 + 32) - 2 * ((v68 + 32) & 0x57 ^ v68 & 0x11)) ^ 0x807D8046;
  v70 = (((914 * v69) & 0x7FFEDD4E) + ((457 * v69) ^ 0x3FFF6EA7) - 1073441383) % 0x708;
  v71 = dword_10027D9D0[(1361 * (((2 * (*(&a63 + v70) ^ 0x90)) & 0xFFFFFFF3) + (*(&a63 + v70) ^ 0x5FF7DF6F)) - 884979254) % 0x12E0] ^ 0x1B9047AC;
  v72 = v71 - ((2 * v71 + 1468112052) & 0xB7C76980) + 128221978;
  v73 = ((914 * (HIBYTE(v72) ^ 0x51)) & 0x3FBF6) + ((457 * (HIBYTE(v72) ^ 0x51)) ^ 0xFC3FFDFB) + 63061317;
  v74 = ((914 * (BYTE2(v72) ^ 0x84)) & 0x3FAB6) + ((457 * (BYTE2(v72) ^ 0x84)) ^ 0x4DFDFD5B) - 1308344859;
  v75 = ((914 * (v72 ^ 0x6A)) & 0x16876) + ((457 * (v72 ^ 0x6A)) ^ 0x7DEEB43B);
  v76 = *(&a63 + (((914 * (BYTE1(v72) ^ 0xD8)) & 0x3D75C) + ((457 * (BYTE1(v72) ^ 0xD8)) ^ 0xFDFFEBAE) + 33705874) % 0x708);
  v77 = *(&a63 + v73 % 0x708) ^ 0xC7;
  v78 = *(&a63 + v74 % 0x708) ^ 0xC7;
  v79 = (((v77 - ((2 * v77) & 0x82)) << 16) - 1539244032) ^ 0xA4410000;
  v80 = (((v78 - ((2 * v78) & 0x44444444)) << 8) + 1218388480) ^ 0x489F2200;
  v81 = (v80 - 371246096 - ((2 * v80) & 0x53BE7600)) ^ 0xE9DF3BF0 | (v79 - 543524292 - ((2 * v79) & 0x3F340000)) ^ 0xDF9A7A3C;
  v82 = (v81 + 691306174 - ((2 * v81) & 0x5268FD7C)) ^ 0x29347EBE | ((v76 ^ 0xC7) + 50668537 - ((2 * (v76 ^ 0xC7)) & 0xFFFFFFF3)) ^ 0x30523F9;
  v83 = (((v82 - ((2 * v82) & 0x81A87A)) << 8) + 1087651072) ^ 0x40D43D00;
  v84 = *(&a63 + (v75 - 2112649467) % 0x708u) ^ 0xC7;
  v85 = (v83 + 144440557 - ((2 * v83) & 0x1137F800)) ^ 0x89BFCED | (v84 - 2055046481 - ((2 * v84) & 0x15E)) ^ 0x85827AAF;
  *(a1 + 4 * (v68 * v64 + 1035411488 - ((((v68 * v64 + 1035411488) * v65) >> 32) >> 10) * v66)) = a56 ^ (v85 - ((2 * v85) & 0x3B386CB4) + 496776794) ^ 0x39D4BC4F;
  return (*(v67 + 8 * (((v68 != 1981836511) | (8 * (v68 != 1981836511))) ^ v63)))();
}

uint64_t sub_10006DBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  v70 = ((v66 - 71) - 1846452012 - ((2 * (v66 + 185)) & 0x1A8)) ^ 0x91F160D4;
  v71 = *(&a63 + (((914 * v70) & 0xEED7FE) + ((457 * v70) ^ 0x4FF76BFF) - 1341351871) % 0x708);
  v72 = ((v71 ^ 0xE9) - ((2 * v71) & 4) + 1191698434) ^ dword_10027D9D0[(1361 * ((v71 ^ 0xE27FFE3A) + 2 * (v71 ^ 0xC5)) - 711062313) % 0x12E0];
  v73 = ((914 * (v72 ^ 0x3F)) & 0x17F94) + ((457 * (v72 ^ 0x3F)) ^ 0x7CF4BFCA) - 2096268426;
  v74 = (((914 * (BYTE1(v72) ^ 0x81)) & 0x2FFB2) + ((457 * (BYTE1(v72) ^ 0x81)) ^ 0x6BE77FD9u) - 1810187417) % 0x708;
  v75 = *(&a63 + (((914 * (BYTE2(v72) ^ 0xE)) & 0x27DFE) + ((457 * (BYTE2(v72) ^ 0xE)) ^ 0xE6B73EFF) + 424344641) % 0x708) ^ 0xC7;
  v76 = *(&a63 + (((914 * (HIBYTE(v72) ^ 0xD2)) & 0x2FF66) + ((457 * (HIBYTE(v72) ^ 0xD2)) ^ 0x7EFB7FB3) - 2130265203) % 0x708u) ^ 0xC7;
  v77 = (((v76 - 2 * (v76 & 7)) << 16) - 1509490688) ^ 0xA6070000;
  v78 = (((v75 - ((2 * v75) & 0x140)) << 8) - 1515413504) ^ 0xA5ACA000;
  v79 = (v77 + 1009081864 - ((2 * v77) & 0x784A0000)) ^ 0x3C255E08 | (v78 - 1496547531 - ((2 * v78) & 0x4D98FE00)) ^ 0xA6CC7F35;
  v80 = *(&a63 + v74) ^ 0xC7;
  v81 = (v79 - 1083595034 - ((2 * v79) & 0x7ED34DCC)) ^ 0xBF69A6E6 | (v80 + 728112641 + (~(2 * v80) | 0xFFFFFFFD) + 1) ^ 0x2B661E01;
  v82 = (((v81 - ((2 * v81) & 0x61936)) << 8) - 2096325888) ^ 0x830C9B00;
  v83 = *(&a63 + v73 % 0x708) ^ 0xC7;
  v84 = (v82 - 505949288 - ((2 * v82) & 0xC3AFA600)) ^ 0xE1D7D398 | (v83 - 1538500433 - ((2 * v83) & 0x15E)) ^ 0xA44C58AF;
  *(v68 + 4 * (v66 * v64 + 1757700377 - ((((v66 * v64 + 1757700377) * v65) >> 32) >> 10) * v67)) = a57 ^ (v84 - ((2 * v84) & 0xA1B3458C) + 1356440262) ^ 0x3BF4E598;
  return (*(v69 + 8 * (((2 * (v66 != 158991686)) | (16 * (v66 != 158991686))) ^ v63)))();
}

uint64_t sub_10006E030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, int a55, uint64_t a56, int a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, uint64_t a63)
{
  v71 = ((((v65 + 28) ^ 0x7C) + v64) + 486875883 - ((2 * (((v65 + 28) ^ 0x67C) + v64)) & 0x1D6)) ^ 0x1D0522EB;
  v72 = (((914 * v71) & 0xFEE52) + ((457 * v71) ^ 0x7F7FF729u) - 2138829545) % 0x708;
  v73 = dword_10027D9D0[(1361 * (((2 * (*(&a64 + v72) ^ 0xFFFFFFE1)) & 0x174) + (*(&a64 + v72) ^ 0xFFFFFF5F)) + 3120773) % 0x12E0];
  v74 = *(&a64 + (((914 * (HIBYTE(v73) ^ 0xE8)) & 0xD74E) + ((457 * (HIBYTE(v73) ^ 0xE8)) ^ 0x7CF86BA7) - 2096509031 - 1800 * ((2386093 * (((914 * (HIBYTE(v73) ^ 0xE8)) & 0xD74E) + ((457 * (HIBYTE(v73) ^ 0xE8)) ^ 0x7CF86BA7) - 2096509031)) >> 32))) ^ 0xC7;
  v75 = *(&a64 + (((914 * (BYTE2(v73) ^ 0x9D)) & 0x10FFA) + ((457 * (BYTE2(v73) ^ 0x9D)) ^ 0x6EF487FDu) - 1861373117) % 0x708) ^ 0xC7;
  v76 = *(&a64 + (((914 * (BYTE1(v73) ^ 0x49)) & 0x37A9A) + ((457 * (BYTE1(v73) ^ 0x49)) ^ 0x4EBFBD4Du) - 1321042445) % 0x708);
  v77 = (((v74 - ((2 * v74) & 0x74)) << 16) + 909770752) ^ 0x363A0000;
  v78 = (((v75 - ((2 * v75) & 0x5E)) << 8) - 36360448) ^ 0xFDD52F00;
  v79 = (v78 - 1466908692 - ((2 * v78) & 0x51217E00)) ^ 0xA890BFEC | (v77 - 885930731 - ((2 * v77) & 0x16620000)) ^ 0xCB31C515;
  v80 = (v79 - 1562106167 - ((2 * v79) & 0x45C84D92)) ^ 0xA2E426C9 | ((v76 ^ 0xC7) - 1306432669 - ((2 * (v76 ^ 0xC7)) & 0xC6)) ^ 0xB2216B63;
  v81 = (((v80 - ((2 * v80) & 0x4D4A0E)) << 8) + 648349440) ^ 0x26A50700;
  v82 = *(&a64 + (((914 * (v73 ^ 0x80)) & 0x1F97E) + ((457 * (v73 ^ 0x80)) ^ 0x2BFAFCBFu) - 737722751) % 0x708) ^ 0xC7;
  v83 = (v81 - 2060324896 - ((2 * v81) & 0xA63DE00)) ^ 0x8531EFE0 | (v82 + 1029483897 - ((2 * v82) & 0xF2)) ^ 0x3D5CAD79;
  v84 = (v83 - 244960088 - ((2 * v83) & 0xE2CC6950)) ^ a55;
  v85 = a57 ^ a62 ^ 0xFA1BDEC ^ ((v84 ^ 0xF16634A8) + 1388281112 - 2 * ((v84 ^ 0xF16634A8) & 0x52BF7D1C ^ v84 & 4));
  *(v69 + 4 * (v64 * v66 - 2056437451 - ((((v64 * v66 - 2056437451) * v67) >> 32) >> 10) * v68)) = v85 + 2035698401 - ((2 * v85) & 0xF2AC95C2);
  return (*(v70 + 8 * (((4 * (v64 == 1482375082)) | (32 * (v64 == 1482375082))) ^ v65)))();
}

uint64_t sub_10006E4C0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, int a50, int a51, int a52, int a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  v63 = ((v61 + 19) - 369437556 - ((2 * (v61 + 19)) & 0x118)) ^ 0xE9FAD48C;
  v64 = *(&a58 + (((914 * v63) & 0x1FDDBE) + ((457 * v63) ^ 0x788FEEDF) - 2022435487) % 0x708);
  v65 = dword_10027D9D0[(1361 * (((2 * (v64 ^ 0x10)) & 0xBE) + (v64 ^ 0xF7F23D4F)) - 785925647) % 0x12E0];
  v66 = *(&a58 + (((914 * (HIBYTE(v65) ^ 0x46)) & 0x1FEDA) + ((457 * (HIBYTE(v65) ^ 0x46)) ^ 0x7F7CFF6D) - 2138752045) % 0x708u) ^ 0xC7;
  v67 = *(&a58 + (((914 * (BYTE2(v65) ^ 0xE6)) & 0xF5DE) + ((457 * (BYTE2(v65) ^ 0xE6)) ^ 0x9767AEFu) - 158613423) % 0x708) ^ 0xC7;
  v68 = (((v66 - ((2 * v66) & 0x2E)) << 16) + 1830223872) ^ 0x6D170000;
  v69 = (((v67 - 2 * (v67 & 3)) << 8) - 1392573696) ^ 0xACFF0300;
  v70 = (v68 - 219949756 - ((2 * v68) & 0x65C60000)) ^ 0xF2E3D544 | (v69 - 2006144124 - ((2 * v69) & 0x10D95600)) ^ 0x886CAB84;
  v71 = *(&a58 + (((914 * (BYTE1(v65) ^ 0x36)) & 0x3BF5E) + ((457 * (BYTE1(v65) ^ 0x36)) ^ 0x7F7DDFAFu) - 2138809455) % 0x708) ^ 0xC7;
  v72 = (v70 - 1328334930 - ((2 * v70) & 0x61A66F5C)) ^ 0xB0D337AE | (v71 + 1884266762 - ((2 * v71) & 0x14)) ^ 0x704FA10A;
  v73 = *(&a58 + (((914 * (v65 ^ 0x18)) & 0x3AA9E) + ((457 * (v65 ^ 0x18)) ^ 0x2B35D54Fu) - 724802063) % 0x708);
  v74 = (((v72 - ((2 * v72) & 0x72A51E)) << 8) + 961711872) ^ 0x39528F00;
  v75 = (v74 - 1101133558 - ((2 * v74) & 0x7CBC1200)) ^ 0xBE5E090A | ((v73 ^ 0xC7) + 939030535 - 2 * ((v73 ^ 0xC7) & 7)) ^ 0x37F87807;
  *(v60 + 4 * ((37 * (a1 ^ 0x7DB) - 976) * v61 - 918959309 - (((((37 * (a1 ^ 0x7DBu) - 976) * v61 - 918959309) * v58) >> 32) >> 10) * v59)) = a50 ^ a53 ^ a51 ^ 0x93F4FD3D ^ (v75 - ((2 * v75) & 0x1B3C4F2C) - 1919015018);
  return (*(v62 + 8 * ((59 * (v61 == 585088236)) ^ a1)))();
}

uint64_t sub_10006E92C@<X0>(int a1@<W3>, unsigned int a2@<W4>, int a3@<W5>, uint64_t a4@<X6>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  v61 = a5 - 1554;
  v62 = (-1864419168 - ((1967664640 << (((a5 + 31) & 0xFB) - 26)) & 0x140)) ^ 0x90DF38A0;
  v63 = *(&a61 + (((914 * v62) & 0x3B77FA) + ((457 * v62) ^ 0xCCBDBBFD) + 860244035) % 0x708);
  v64 = dword_10027D9D0[(1361 * (((2 * (v63 ^ 0xFFFFFFF1)) & 0x136) + (v63 ^ 0xA5FACE2E)) - 1781586617) % 0x12E0] ^ 0x1B9047AC;
  v65 = v64 - ((2 * v64 + 670994672) & 0x375CD15A) + 1873654053;
  v66 = BYTE1(v65) ^ 0xCF;
  v67 = ((914 * (v65 ^ 0xFE)) & 0x3EDDC) + ((457 * (v65 ^ 0xFE)) ^ 0xF7CFF6EE) + 137512018;
  v68 = ((914 * (BYTE2(v65) ^ 0x36)) & 0x7FBC) + ((457 * (BYTE2(v65) ^ 0x36)) ^ 0xE64E3FDE) + 431225698;
  v69 = *(&a61 + (((914 * (HIBYTE(v65) ^ 0x62)) & 0x1B47E) + ((457 * (HIBYTE(v65) ^ 0x62)) ^ 0x634EDA3F) - 1665965823) % 0x708u) ^ 0xC7;
  v70 = *(&a61 + v68 % 0x708) ^ 0xC7;
  v71 = (((v69 - ((2 * v69) & 0x15E)) << 16) + 1722744832) ^ 0x66AF0000;
  v72 = (((v70 - ((2 * v70) & 0x160)) << 8) - 1198608384) ^ 0xB88EB000;
  v73 = (v72 + 210600222 - ((2 * v72) & 0x191B0200)) ^ 0xC8D811E | (v71 - 636471800 - ((2 * v71) & 0x34200000)) ^ 0xDA103608;
  v74 = *(&a61 + (((914 * v66) & 0x3B5FA) + ((457 * v66) ^ 0xE7BFDAFD) + 407003203) % 0x708) ^ 0xC7;
  v75 = (v73 + 74096655 - ((2 * v73) & 0x8D5401E)) ^ 0x46AA00F | (v74 + 251360803 - ((2 * v74) & 0x46)) ^ 0xEFB7623;
  v76 = (((v75 - ((2 * v75) & 0x4D822)) << 8) - 2106846976) ^ 0x826C1100;
  v77 = *(&a61 + v67 % 0x708) ^ 0xC7;
  v78 = (v76 - 1127305676 - ((2 * v76) & 0x799D5C00)) ^ 0xBCCEAE34 | (v77 - 1930838165 - ((2 * v77) & 0xD6)) ^ 0x8CE9BF6B;
  v79 = (v78 + 895759398 - ((2 * v78) & 0x6AC8684C)) ^ (a37 - 2012251275);
  *(a4 + 4 * (1967664516 * a1 - 1884897028 - ((((1967664516 * a1 - 1884897028) * a2) >> 32) >> 10) * a3)) = (v79 ^ 0x35643426) + 2035698401 - 2 * ((v79 ^ 0x35643426) & 0x79564AF9 ^ v79 & 0x18);
  return (*(&off_1002D7880 + v61))(199, 2188120320);
}

uint64_t sub_10006EDF8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, uint64_t a61, uint64_t a62, char a63)
{
  v66 = ((v63 + 123) + 262710174 - (((v63 + 123) << (a4 - 53)) & 0x13C)) ^ 0xFA8A39E;
  v67 = (((914 * v66) & 0x378B7E) + ((457 * v66) ^ 0xFD9BC5BF) + 40386177) % 0x708;
  v68 = dword_10027D9D0[(1361 * (((2 * ~*(&a63 + v67)) & 0x3A) + (*(&a63 + v67) ^ 0xAEF77FE0)) - 833405351) % 0x12E0];
  v69 = ((914 * (BYTE1(v68) ^ 0xC2)) & 0x13FD8) + ((457 * (BYTE1(v68) ^ 0xC2)) ^ 0x7FFC9FEC) - 2147116204;
  v70 = *(&a63 + (((914 * (HIBYTE(v68) ^ 0x64)) & 0x17CEE) + ((457 * (HIBYTE(v68) ^ 0x64)) ^ 0x7B9EBE77) - 2073854775) % 0x708u) ^ 0xC7;
  v71 = *(&a63 + (((914 * (BYTE2(v68) ^ 0xBF)) & 0x2B7E6) + ((457 * (BYTE2(v68) ^ 0xBF)) ^ 0x3B6F5BF3u) - 997007539) % 0x708) ^ 0xC7;
  v72 = (((v70 - ((2 * v70) & 0x152)) << 16) - 945225728) ^ 0xC7A90000;
  v73 = (((v71 - ((2 * v71) & 0x1A6)) << 8) - 447556864) ^ 0xE552D300;
  v74 = (v73 - 2097880377 - ((2 * v73) & 0x5E9C400)) ^ 0x82F4E2C7 | (v72 - 1286264290 - ((2 * v72) & 0x66AA0000)) ^ 0xB3552A1E;
  v75 = *(&a63 + (v69 - 1800 * ((2386093 * v69) >> 32))) ^ 0xC7;
  v76 = (v74 - 1301269609 - ((2 * v74) & 0x64E0672E)) ^ 0xB2703397 | (v75 + 680047886 - ((2 * v75) & 0x1C)) ^ 0x2888B50E;
  v77 = (((v76 - ((2 * v76) & 0x8589C2)) << 8) + 1120198912) ^ 0x42C4E100;
  v78 = *(&a63 + (((914 * (v68 ^ 0x48)) & 0x3FFDE) + ((457 * (v68 ^ 0x48)) ^ 0xFBFDFFEF) + 67386193) % 0x708) ^ 0xC7;
  v79 = (v77 - 901931022 - ((2 * v77) & 0x947B3E00)) ^ 0xCA3D9FF2 | (v78 + 1859163666 - ((2 * v78) & 0x24)) ^ 0x6ED09612;
  *(v64 + 4 * (v63 * a5 - 215913317 - ((((v63 * a5 - 215913317) * a6) >> 32) >> 10) * a7)) = a60 ^ (v79 - ((2 * v79) & 0x950A154) - 2069344086) ^ 0xDDAE6171;
  return (*(v65 + 8 * ((1020 * (v63 == 1906180740)) ^ a4)))();
}

uint64_t sub_10006F244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  v64 = ((((v63 - 9) & 0xFB ^ 0xA7) - 84) + 279137752 - ((2 * (((v63 + 1403572215) & 0xAC572EFB ^ 0x6A7) + 1203264428)) & 0x1B0)) ^ 0x10A34DD8;
  v65 = *(&a63 + (((914 * v64) & 0x1AE674) + ((457 * v64) ^ 0x7F7D733A) - 2138664698) % 0x708);
  v66 = dword_10027D9D0[(1361 * (((2 * (v65 ^ 0x82)) & 0xFFFFFFDF) + (v65 ^ 0xEA66FF7D)) - 759711105) % 0x12E0];
  v67 = *(&a63 + (((914 * (HIBYTE(v66) ^ 0x7F)) & 0x37D9E) + ((457 * (HIBYTE(v66) ^ 0x7F)) ^ 0xBFDDBECF) + 1076132977) % 0x708) ^ 0xC7;
  v68 = *(&a63 + (((914 * (BYTE2(v66) ^ 0xF0)) & 0x3EFF6) + ((457 * (BYTE2(v66) ^ 0xF0)) ^ 0xBE7DF7FB) + 1099187013) % 0x708) ^ 0xC7;
  v69 = (((v67 - ((2 * v67) & 0xFA)) << 16) + 880607232) ^ 0x347D0000;
  v70 = (((v68 - ((2 * v68) & 0x18A)) << 8) - 707279616) ^ 0xD5D7C500;
  v71 = (2 * v70) & 0xCB60E00;
  v72 = (v70 + 1180370929 - v71) ^ 0x465B07F1 | (v69 + 888096312 - ((2 * v69) & 0x69DE0000)) ^ 0x34EF4638;
  v73 = *(&a63 + (((914 * (BYTE1(v66) ^ 0x2A)) & 0x3DFAE) + ((457 * (BYTE1(v66) ^ 0x2A)) ^ 0x7AEFEFD7u) - 2062398615) % 0x708) ^ 0xC7;
  v74 = (v72 + 800752543 - ((2 * v72) & 0x5F75073E)) ^ 0x2FBA839F | (v73 + 68356215 - ((2 * v73) & 0xEEEEEEEE)) ^ 0x4130877;
  v75 = (((v74 - ((2 * v74) & 0x4CE114)) << 8) - 1502574080) ^ 0xA6708A00;
  v76 = *(&a63 + (((914 * (v66 ^ 0xB6)) & 0x3E156) + ((457 * (v66 ^ 0xB6)) ^ 0x7DDFF0ABu) - 2111681899) % 0x708) ^ 0xC7;
  v77 = (v75 - 487905109 - ((2 * v75) & 0xC5D65000)) ^ 0xE2EB28AB | (v76 + 423361456 - ((2 * v76) & 0x160)) ^ 0x193BFBB0;
  v78 = (a40 - 2104043946) ^ 0xFA8BBC39 ^ (v77 - 91505607 - ((2 * v77) & 0xF5177872));
  *(a6 + 4 * ((1203264428 * a5 - 752532524) % 0x55Cu)) = v78 + 2035698401 - ((2 * v78) & 0xF2AC95C2);
  return (*(&off_1002D7880 + v63 - 1629))(1203264429, 3807062187, 1917725363, 199, a5, a6, v71, 1180370929, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49);
}

uint64_t sub_10006F6F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, int a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = ((a3 + 77) + 1683733352 - ((2 * (a3 + 77)) & 0xD0)) ^ 0x645BBB68;
  v68 = (((914 * v67) & 0x31FB9E) + ((457 * v67) ^ 0xBFF8FDCF) + 1074464369) % 0x708;
  v69 = dword_10027D9D0[(1361 * (((2 * (*(&a64 + v68) ^ 0x18)) & 0xF6) + (*(&a64 + v68) ^ 0xDDFFFFE3)) - 1038736566) % 0x12E0];
  HIDWORD(v70) = v69 ^ 0x39047AC;
  LODWORD(v70) = v69 ^ 0x18000000;
  v71 = (v70 >> 27) - ((2 * (v70 >> 27)) & 0x44EFDC32) - 1569198567;
  v72 = (~(((2 * v71) ^ 0x44EFDC32) - 2 * (((2 * v71) ^ 0x44EFDC32) & 0x6C ^ (2 * v71) & 4) + 232) & 0x80) + (((v70 >> 27) - ((2 * (v70 >> 27)) & 0x32) + 25) ^ 0x1E7);
  v73 = *(&a64 + (((914 * (HIBYTE(v71) ^ 0xC5)) & 0x2BD7E) + ((457 * (HIBYTE(v71) ^ 0xC5)) ^ 0xFDDF5EBF) + 35839105) % 0x708) ^ 0xC7;
  v74 = *(&a64 + (((914 * (BYTE2(v71) ^ 0x88)) & 0x1FB7E) + ((457 * (BYTE2(v71) ^ 0x88)) ^ 0x7174FDBFu) - 1903346303) % 0x708) ^ 0xC7;
  v75 = (((v73 - ((2 * v73) & 0xDA)) << 16) + 1584201728) ^ 0x5E6D0000;
  v76 = (((v74 - ((2 * v74) & 0x18)) << 8) + 477694976) ^ 0x1C790C00;
  v77 = (v76 + 1572196498 - ((2 * v76) & 0x3B6BA000)) ^ 0x5DB5D092 | (v75 - 1953349611 + (~(2 * v75) | 0xE8DBFFFF) + 1) ^ 0x8B924015;
  v78 = *(&a64 + (((914 * (BYTE1(v71) ^ 0x18)) & 0x3F2DA) + ((457 * (BYTE1(v71) ^ 0x18)) ^ 0x33FBF96Du) - 872005165) % 0x708) ^ 0xC7;
  v79 = (v77 - 986915013 - ((2 * v77) & 0xA59BE76)) ^ 0xC52CDF3B | (v78 - 245285611 - ((2 * v78) & 0x2A)) ^ 0xF1613D15;
  v80 = (((v79 + (~(2 * v79) | 0xBE4543)) << 8) + 551378688) ^ 0x20DD5E00;
  v81 = *(&a64 + (457 * (((2 * v72) & 0x3EE) + (v72 ^ 0xFFF7EDF7)) + 241709585) % 0x708) ^ 0xC7;
  v82 = (v80 + 1831347573 - ((2 * v80) & 0xDA504A00)) ^ 0x6D282575 | (v81 + 129426067 - ((2 * v81) & 0x126)) ^ 0x7B6E293;
  *(v65 + 4 * (a3 * a6 - 1335766483 - ((((a3 * a6 - 1335766483) * v64) >> 32) >> 10) * a8)) = a60 ^ 0x7314DF3F ^ (v82 - ((2 * v82) & 0x7859FDCA) + 1009581797);
  return (*(v66 + 8 * (((4 * (a3 != 1917725618)) | (8 * (a3 != 1917725618))) ^ a5)))();
}

uint64_t sub_10006FB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, int a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = *(&a64 + (((914 * ((((v64 ^ 0x8FF) & 0x48DBFC00) + 1210498490) ^ 0x4826BDBA)) & 0x1F749E) + ((457 * ((((v64 ^ 0x8FF) & 0x48DBFC00) + 1210498490) ^ 0x4826BDBA)) ^ 0x5FDFBA4Fu) - 1608234511) % 0x708);
  v70 = (dword_10027D9D0[(1361 * ((v69 ^ 0x6F7B9DA8) + 2 * (v69 ^ 0x57u)) + 1344672785) % 0x12E0] ^ 0x1B9047AC) - (((v69 ^ 0xC7) - ((2 * (v69 ^ 0xC7)) & 0x1D4) - 1644502038) ^ 0x87630DB6);
  v71 = v70 - ((2 * v70) & 0xF3727FD0) + 2042183656;
  v72 = v71 ^ 9;
  v73 = *(&a64 + (((914 * (BYTE2(v71) ^ 0xB8)) & 0x175F2) + ((457 * (BYTE2(v71) ^ 0xB8)) ^ 0xF57EBAF9) + 176390215) % 0x708) ^ 0xC7;
  v74 = ((914 * (BYTE1(v71) ^ 0x37)) & 0x3B5BE) + ((457 * (BYTE1(v71) ^ 0x37)) ^ 0x3B9FDADF) - 1000185759;
  v75 = *(&a64 + (((914 * (HIBYTE(v71) ^ 0x39)) & 0x3F7FA) + ((457 * (HIBYTE(v71) ^ 0x39)) ^ 0x7FF7FBFD) - 2146812093) % 0x708u) ^ 0xC7;
  v76 = (((v75 - ((2 * v75) & 0x22222222)) << 16) - 2062483456) ^ 0x85110000;
  v77 = (((v73 - ((2 * v73) & 0xD4)) << 8) - 1887802880) ^ 0x8F7A6A00;
  v78 = (v76 - 827212365 - ((2 * v76) & 0x1D620000)) ^ 0xCEB1BDB3 | (v77 - 986890963 - ((2 * v77) & 0xA5A7A00)) ^ 0xC52D3D2D;
  v79 = *(&a64 + v74 % 0x708) ^ 0xC7;
  v80 = (v78 + 1527791766 - ((2 * v78) & 0x3620812C)) ^ 0x5B104096 | (v79 - 1425965655 - ((2 * v79) & 0x152)) ^ 0xAB017DA9;
  v81 = (((v80 - ((2 * v80) & 0x574B40)) << 8) - 1415208960) ^ 0xABA5A000;
  v82 = *(&a64 + (((914 * v72) & 0x1FF7E) + ((457 * v72) ^ 0x63FEFFBFu) - 1677509759) % 0x708) ^ 0xC7;
  v83 = (v81 - 593410609 - ((2 * v81) & 0xB9428A00)) ^ 0xDCA145CF | (v82 - 1491076416 - ((2 * v82) & 0x180)) ^ 0xA71FFAC0;
  v84 = (a41 - 652075609) ^ 0x46FB8F12 ^ (v83 + 1190891282 - ((2 * v83) & 0x8DF71E24));
  *(v68 + 4 * (1222376353 * v65 + 1688578047 - ((((1222376353 * v65 + 1688578047) * v66) >> 32) >> 10) * v67)) = v84 + 2035698401 - ((2 * v84) & 0xF2AC95C2);
  return (*(&off_1002D7880 + v64 - 698))(914, 2407164416);
}

uint64_t sub_100070084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  v70 = (((a5 + 252) & (v64 - 216)) - 330049676 - ((2 * (a5 + 252)) & 0xE8)) ^ 0xEC53D774;
  v71 = *(&a63 + (((914 * v70) & 0x7F2FD6) + ((457 * v70) ^ 0xEEFF97EB) + 285502549) % 0x708) ^ 0x56;
  v72 = dword_10027D9D0[(1361 * (((2 * v71) & 0x1B6) + (v71 ^ 0xF7EFF7DB)) - 577127832) % 0x12E0];
  v73 = HIBYTE(v72) ^ 0xB1;
  v74 = BYTE1(v72) ^ 0xFA;
  v75 = a5 * v65 - 774541536;
  v76 = (457 * v74) ^ 0x79CF57ED;
  v77 = v72 ^ 0x67;
  v78 = 914 * v77;
  v79 = (457 * v77) ^ 0x7FFBEFDF;
  v80 = v75 - (((v75 * v63) >> 32) >> 10) * v66;
  v81 = (v80 ^ 0x6DBFDECF) - 547033226 + ((2 * v80) & 0xD9E);
  v82 = BYTE2(v72) ^ 0x40;
  v83 = 914 * v74;
  if (v75 >= 0xFFFFFAA4)
  {
    v84 = a5 * v65 + 519717569;
  }

  else
  {
    v84 = v81;
  }

  v85 = ((v78 & 0x3DFBEu) + v79 - 2147071135) % 0x708;
  v86 = *(&a63 + (((914 * v73) & 0x29FBE) + 452068 + ((457 * v73) ^ 0xFFFB4FDF) + 1405) % 0x708) ^ 0xC7;
  v87 = *(&a63 + (((914 * v82) & 0x377FC) + ((457 * v82) ^ 0x7CE7BBFEu) - 2095415486) % 0x708) ^ 0xC7;
  v88 = (((v86 - ((2 * v86) & 0x62)) << 16) - 1238302720) ^ 0xB6310000;
  v89 = (((v87 - ((2 * v87) & 0x1E8)) << 8) + 1367536640) ^ 0x5182F400;
  v90 = (v89 + 836024797 + (~(2 * v89) | 0x9C568DFF) + 1) ^ 0x31D4B9DD | (v88 + 1287491661 - ((2 * v88) & 0x197A0000)) ^ 0x4CBD904D;
  v91 = *(&a63 + ((v83 & 0x2AFDAu) + v76 - 2043485357) % 0x708) ^ 0xC7;
  v92 = (v90 + 1879758998 - ((2 * v90) & 0x6015B12C)) ^ 0x700AD896 | (v91 + 1757029683 - ((2 * v91) & 0x66666666)) ^ 0x68BA2533;
  v93 = (((v92 - ((2 * v92) & 0xDF76F8)) << 8) + 1874557952) ^ 0x6FBB7C00;
  v94 = (v93 - 461369883 - ((2 * v93) & 0xC9001A00)) ^ 0xE4800DE5 | ((*(&a63 + v85) ^ 0xC7) - 2105621602 - ((2 * (*(&a63 + v85) ^ 0xC7)) & 0x13C)) ^ 0x827EC39E;
  *(v67 + 4 * (v84 - 1294257733)) = v69 ^ 0xC2CD007F ^ (v94 - ((2 * v94) & 0x55309C76) + 714624571);
  return (*(v68 + 8 * ((1544 * (a5 == 849267459)) | v64)))();
}

uint64_t sub_100070528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, int a58, int a59, uint64_t a60, uint64_t a61, int a62, uint64_t a63)
{
  v70 = ((v65 ^ 0xAB0CAF79) + (v64 - 82) - 2 * ((v64 + 174) & 0xCD ^ v64 & 1)) ^ 0xAB0CACCC;
  v71 = *(&a64 + (((914 * v70) & 0x2AE67FFE) + ((457 * v70) ^ 0x15733FFF) - 359611327) % 0x708);
  v72 = 1361 * (((2 * (v71 ^ 0xD2)) & 0xFFFFFFEF) + (v71 ^ 0x7FEF772D)) - 669248469;
  v73 = ((2 * (v71 ^ 0xFFFFFF9F)) & 0x1DA) + (v71 ^ 0xF4FF1C62);
  v74 = (v73 - ((2 * v73 + 2024943916) & 0x42A05E3E) - 1607530571) ^ dword_10027D9D0[v72 % 0x12E0];
  v75 = BYTE1(v74) ^ 0xA1;
  v76 = BYTE2(v74) ^ 0xBC;
  v77 = HIBYTE(v74) ^ 0x67;
  v78 = v74 ^ 0xAB;
  v79 = (457 * v78) ^ 0xFDDD7DE7;
  v80 = 914 * v78;
  v81 = *(&a64 + (((914 * v77) & 0x3FEF6) + ((457 * v77) ^ 0xFF7FFF7B) + 8534981) % 0x708) ^ 0xC7;
  v82 = *(&a64 + (((914 * v76) & 0x1FCFE) + ((457 * v76) ^ 0xFBFEFE7F) + 67321025) % 0x708) ^ 0xC7;
  v83 = (((v81 - ((2 * v81) & 0x100)) << 16) + 1769996288) ^ 0x69800000;
  v84 = (((v82 - 2 * (v82 & 1)) << 8) - 1447821056) ^ 0xA9B40100;
  v85 = (v84 + 480818578 - ((2 * v84) & 0x39516A00)) ^ 0x1CA8B592 | (v83 + 1158443771 - ((2 * v83) & 0xA180000)) ^ 0x450C72FB;
  v86 = *(&a64 + (((914 * v75) & 0x36ED6) + ((457 * v75) ^ 0x7FFFB76Bu) - 2147318827) % 0x708) ^ 0xC7;
  v87 = (v85 - 435618023 - ((2 * v85) & 0x4C11FE32)) ^ 0xE608FF19 | (v86 - 916797042 - ((2 * v86) & 0x11C)) ^ 0xC95AC98E;
  v88 = (((v87 - ((2 * v87) & 0xC03AFE)) << 8) + 1612545792) ^ 0x601D7F00;
  v89 = *(&a64 + ((v80 & 0x2FBCE) + v79 + 35962201) % 0x708) ^ 0xC7;
  v90 = (v88 - 65373863 - ((2 * v88) & 0xF834F200)) ^ 0xFC1A7959 | (v89 + 250761288 - ((2 * v89) & 0x90)) ^ 0xEF25048;
  v91 = a62 ^ 0x8E5955A5 ^ (v90 - 1906747995 - ((2 * v90) & 0x1CB2AB4A));
  v92 = a59 ^ 0xF17D5531 ^ (v91 - 243444431 - ((2 * v91) & 0xE2FAAA62));
  v93 = a57 ^ 0xFFC6BE59 ^ (v92 - 3752359 - ((2 * v92) & 0xFF8D7CB2));
  *(a1 + 4 * (v64 * v66 + 689700078 - ((((v64 * v66 + 689700078) * v67) >> 32) >> 10) * v68)) = v93 + 2035698401 - ((2 * v93) & 0xF2AC95C2);
  return (*(v69 + 8 * ((1922 * (v64 == 125723985)) ^ v65)))();
}

uint64_t sub_100070A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, int a60, int a61, uint64_t a62, uint64_t a63)
{
  v71 = (((v64 - 1102) ^ 0xD4AAC819) + (a8 + 34) - ((2 * (a8 + 34)) & 0x182)) ^ 0xD4AAC9C1;
  v72 = *(&a64 + (((914 * v71) & 0x377EFE) + ((457 * v71) ^ 0x7FFBBF7F) - 2146941759) % 0x708);
  v73 = (((v72 ^ 0xC7) - ((2 * (v72 ^ 0xC7)) & 0x22222222) + 509180689) ^ 0xF14FCAA2) + (dword_10027D9D0[(1361 * (((2 * (v72 ^ 0x34)) & 0xEEEEEEEE) + (v72 ^ 0x7EE6DFC3)) + 1456747934) % 0x12E0] ^ 0x1B9047AC);
  v74 = v73 - ((2 * v73) & 0x1677705C) + 188463150;
  v75 = BYTE1(v74) ^ 0xE2;
  v76 = (((914 * (v74 ^ 0x76)) & 0x3FEEE) + ((457 * (v74 ^ 0x76)) ^ 0x2FF3FF77u) - 804373559) % 0x708;
  v77 = *(&a64 + (((914 * (HIBYTE(v74) ^ 0x70)) & 0x2D2E8) + 315852 + ((457 * (HIBYTE(v74) ^ 0x70)) ^ 0xFFFD6974)) % 0x708) ^ 0xC7;
  v78 = *(&a64 + (((914 * (BYTE2(v74) ^ 0x2A)) & 0x39D42) + ((457 * (BYTE2(v74) ^ 0x2A)) ^ 0xFD7FCEA1) + 42101919) % 0x708) ^ 0xC7;
  v79 = (((v77 - ((2 * v77) & 0x74)) << 16) - 197525504) ^ 0xF43A0000;
  v80 = (((v78 - ((2 * v78) & 0x1C8)) << 8) - 267000832) ^ 0xF015E400;
  v81 = (v80 + 1858570059 - ((2 * v80) & 0x5D8F0E00)) ^ 0x6EC7874B | (v79 + 574979189 - ((2 * v79) & 0x448A0000)) ^ 0x22457C75;
  v82 = *(&a64 + (((914 * v75) & 0x3FBDE) + ((457 * v75) ^ 0xFB25FDEF) + 81542481) % 0x708) ^ 0xC7;
  v83 = (v81 - 666424919 - ((2 * v81) & 0x308E5352)) ^ 0xD84729A9 | (v82 + 552650649 - ((2 * v82) & 0x33333333)) ^ 0x20F0C799;
  v84 = (((v83 + 12922152 - ((2 * v83) & 0x8A5A18)) << 8) - 7168) ^ 0xC52D0C00;
  v85 = *(&a64 + v76) ^ 0xC7;
  v86 = (v84 - 1880573803 - ((2 * v84) & 0x1FD17000)) ^ 0x8FE8B895 | (v85 - 344656534 - ((2 * v85) & 0xD4)) ^ 0xEB74F56A;
  *(v68 + 4 * (a8 * v65 + 1159128546 - ((((a8 * v65 + 1159128546) * v66) >> 32) >> 10) * v67)) = a60 ^ a61 ^ v70 ^ 0x3655B53F ^ (v86 - ((2 * v86) & 0x907DD6F4) - 935400582);
  return (*(v69 + 8 * ((3694 * (a8 == 1316390877)) ^ v64)))();
}

uint64_t sub_100070E64@<X0>(int a1@<W8>)
{
  v4 = v1 - ((((173 * (a1 ^ 0x1D1)) ^ 0x6C802127) + 2 * v1) & 0x52E93F4A) - 541805762;
  *(*v3 + 4 * ((v4 ^ 0x3F7AA5DF9691647BLL) + ((2 * (v4 ^ 0x29749FA5)) & 0x17FCBF7BCLL)) - 0x5E541D332479A0D6) = *(&STACK[0x8C0] + (97 * v1 + 239358277) % 0x55Cu);
  v5 = ((((2 * v4) ^ 0x52E93F4A) + 569727692 - 2 * (((2 * v4) ^ 0x52E93F4A) & 0x21F55ADC ^ (2 * v4) & 0x10)) & 0xFFFFEF9A ^ 0x21F54A88) + (v4 ^ 0xD68B6868);
  return (*(v2 + 8 * ((61 * (((2 * v5) & 0xDFFFFFF6) + (v5 ^ 0xEFFFFFFB) + 268435461 < 0x100)) ^ a1)))();
}

uint64_t sub_100070FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41)
{
  v46 = ((LOBYTE(STACK[0x368]) ^ 0xC7) + 348642728 - ((2 * (LOBYTE(STACK[0x368]) ^ 0xC7)) & 0x150)) ^ 0x14C7DDA8 | ((((v43 ^ 0x3EC) - 1785) & (a41 + 486789105)) - ((2 * (a41 + 486789105)) & 0xCB68F600) - 441156754) ^ 0xE5B47B6E;
  *(v45 + 4 * (1964498624 * v41 - 1577805504 - ((((1964498624 * v41 - 1577805504) * v42) >> 32) >> 10) * v44)) = v46 + 2035698401 - ((2 * v46) & 0xF2AC95C2);
  return (*(&off_1002D7880 + v43))(1020536667);
}

uint64_t sub_100071268@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  v60 = *(&a58 + (((914 * (((((11 * (a3 ^ 0x816)) ^ 0xD) & 0x6E05DC00) + 1733954552) ^ 0x675A0BF8)) & 0x27B934) + ((457 * (((((11 * (a3 ^ 0x816)) ^ 0xD) & 0x6E05DC00) + 1733954552) ^ 0x675A0BF8)) ^ 0x7FD3DC9Au) - 2144327770) % 0x708);
  v61 = byte_100269F20[(2212 * (((2 * (v60 ^ 0x30)) & 0x6A) + (v60 ^ 0x35577F8Fu)) + 402184716) % 0x97F];
  HIDWORD(v62) = v61 ^ 0xA;
  LODWORD(v62) = v61 << 24;
  v63 = ((v62 >> 31) - ((2 * (v62 >> 31)) & 0x1A) + 13);
  v64 = ((v62 >> 31) - ((2 * (v62 >> 31)) & 0x1A) + 13) ^ (v63 >> 6) ^ (v63 >> 4) ^ 0xD;
  v65 = v64 + 1774187529 - ((2 * v64) & 0x12);
  *(a2 + 4 * (1845877601 * v58 + 1338499135 - ((((1845877601 * v58 + 1338499135) * v59) >> 32) >> 10) * a1)) = ((v65 ^ 0x69BFF409 | a37 & 0xFFFFFF00 ^ 0xBD468100) - 2 * ((v65 ^ 0x69BFF409 | a37 & 0xFFFFFF00 ^ 0xBD468100) & 0x11DA42EF ^ v65 & 4) - 1847966997) ^ 0xE88C08BF;
  return (*(&off_1002D7880 + a3 - 1051))();
}

uint64_t sub_1000714E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  *(&a63 + (457 * v63 - 420213922) % 0x708u) = *(&a63 + (457 * ((((*(&a63 + (457 * v63 - 420213922) % 0x708u) ^ 0xC7) << ((v64 - 12) & 0xDF ^ 0xC7)) & 0x1EE) + (*(&a63 + (457 * v63 - 420213922) % 0x708u) ^ 0x7FFFEA30u)) - 2144317095) % 0x708);
  v66 = *(v65 + 8 * ((1636 * (v63 == 799765457)) ^ v64));
  *(&a63 + (457 * v63 - 420093274) % 0x708u) = *(&a63 + (457 * (((2 * (*(&a63 + (457 * v63 - 420093274) % 0x708u) ^ 0xFFFFFFC7)) & 0xD4) + (*(&a63 + (457 * v63 - 420093274) % 0x708u) ^ 0x76FBF7AD)) - 1741320442) % 0x708);
  return v66();
}

uint64_t sub_100071604(uint64_t a1)
{
  v7 = v1 * v2;
  *(a1 + v7 + 451201752 - ((((v7 + 451201752) * v3) >> 32) >> 10) * v4) = *(a1 + 107 * (v5 ^ 0x1C5) + v7 + 451439071 - ((((107 * (v5 ^ 0x1C5u) + v7 + 451439071) * v3) >> 32) >> 10) * v4);
  return (*(v6 + 8 * ((21 * (v1 != 2029019687)) ^ v5)))();
}

uint64_t sub_100071684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = ((LOBYTE(STACK[0x368]) ^ 0xC7) + 9509727 - ((((v64 + 328) | 0x550) - 1819) & (2 * (LOBYTE(STACK[0x368]) ^ 0xC7)))) ^ 0x911B5F | (((-1453286790 - a42) & 0xFFFFFF00) - ((2 * (-1453286790 - a42)) & 0xB4BF1200) + 1516210580) ^ 0x5A5F8994;
  LODWORD(STACK[0x8C0]) = v66 + 2035698401 - ((2 * v66) & 0xF2AC95C2);
  return (*(v65 + 8 * v64))(155722606, 2443359173, 1800, &a64, 199, 3764098302, 3205573259, 1372);
}

uint64_t sub_1000717C0()
{
  HIDWORD(v5) = v2 + 76737837;
  LODWORD(v5) = v2 - 57479891;
  v6 = v0 + (v5 >> 27) - ((v1 + 1032726845) & (2 * (v5 >> 27))) + 11;
  HIDWORD(v5) = v6 ^ 0xB;
  LODWORD(v5) = v6 ^ v0;
  v7 = ((2 * (v5 >> 5)) & 0xF7DD6FA2) + ((v5 >> 5) ^ 0xFBEEB7D1);
  *(((4 * (v7 + 1426029568)) | (((v7 + 1426029568) < 0x50EE33D1) << 34)) + *v4 - 0x606985B5689A80A2) = *(&STACK[0x8C0] + (97 * v2 - 1280612007) % 0x55Cu);
  return (*(v3 + 8 * ((60 * ((v7 + 68241148) < 0x100)) ^ v1)))();
}

uint64_t sub_1000718CC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36)
{
  v41 = ((LOBYTE(STACK[0x360]) ^ 0xC7) + 2019400535 - ((2 * (LOBYTE(STACK[0x360]) ^ 0xC7)) & 0xAE)) ^ 0x785D9B57;
  *(v38 + 4 * (155 * ((v39 + 1297531111) ^ 0x4D56C8C3) + 1297532864 * a1 - 1306636689 - ((((155 * ((v39 + 1297531111) ^ 0x4D56C8C3u) + 1297532864 * a1 - 1306636689) * v36) >> 32) >> 10) * v37)) = (v41 | (v39 + 787445031) ^ a36 & 0xFFFFFF00) + 2035698401 - 2 * ((v41 | (v39 + 787445031) ^ a36 & 0xFFFFFF00) & 0x79564AFD ^ v41 & 0x1C);
  return (*(v40 + 8 * ((v39 + 1297531111) ^ 0x4D56CE91 ^ (7 * (((1754 - v39) | (v39 - 1754)) >> 31)))))();
}

uint64_t sub_100071A7C@<X0>(unsigned int a1@<W8>, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55)
{
  *a3 = 604931837;
  v58 = (v57 + 775907119);
  v59 = *a55 - 0x606985B424E1B15ELL;
  v60 = (((2 * (v57 - 204)) ^ 0x668) + 80264946 + v57 - ((2 * (v57 + 26619) + 10) & 0x1E4)) ^ 0x4C8C618;
  v61 = byte_100269F20[(((4424 * v60) & 0x7F2620) + ((2212 * v60) ^ 0xFEFF9312) + 20216006) % 0x97F];
  v62 = 97 * (((2 * (v61 ^ 4)) & 0x118) + (v61 ^ 0xFFFFDE8A)) + 859808;
  *(v56 + 4 * (v62 - (((v62 * a1) >> 32) >> 10) * v55)) = *(v59 + 4 * (v58 - 775909167 + ((v58 < 0x2E3F6F2F) << 32)));
  v64 = (v57 - 444014465) < 0xE588E87E || (v57 - 444014465) >= 0xE588E97E;
  return (*(&off_1002D7880 + (v64 | (8 * v64) | (v57 - 204))))((2 * (v57 + 775907323) + 10), 3664182271, 736829019, 915454, 630814125, v58, v59, 3850955134, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_100071C54@<X0>(int a1@<W1>, unsigned int a2@<W2>, int a3@<W3>, int a4@<W4>, unsigned int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, void *a59)
{
  v67 = (v64 + (a58 + 109 + ((v61 - 97) & 0x7F)) - (v66 & (2 * (a58 - 1134106771 + ((v61 + 975249311) & 0xC5DEDE7F))))) ^ v64;
  v68 = ((v67 * v63) & a3) + ((v67 * v65) ^ a1) + a4;
  *(*a59 + 4 * ((a58 - 1134105369) - 736829019 + ((a58 - 1134105369 < a2) << 32)) - 0x606985B424E1B15ELL) = *(v60 + 4 * (v68 - (((v68 * a5) >> 32) >> 10) * v59));
  v69 = a58 - 1134106771 + v62;
  v71 = v69 > 0x9F500E5E && a58 + 801889771 > v69;
  return (*(&off_1002D7880 + ((56 * v71) ^ (v61 - 1890))))();
}

void sub_100071DB8()
{
  v0 = __chkstk_darwin();
  v1 = v0[6];
  v2 = v0[1];
  v3 = v0[2];
  v5 = *v0;
  v4 = v0[7];
  v6 = v0[9];
  __asm { BRAA            X13, X17 }
}

uint64_t sub_100072054@<X0>(uint64_t a1@<X2>, unint64_t a2@<X4>, unint64_t a3@<X5>, unint64_t a4@<X6>, unint64_t a5@<X7>, int a6@<W8>)
{
  STACK[0x530] = v8;
  STACK[0x538] = v7;
  STACK[0x540] = a5;
  STACK[0x550] = a4;
  STACK[0x558] = a3;
  STACK[0x548] = a2;
  return (*(a1 + 8 * ((((a6 ^ 0x6CE) + 111 + 375 * (a6 ^ 0x6CE) - 831) * (v6 < -442462546)) | a6)))();
}

uint64_t sub_1000720F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 - 240;
  v5 = ((((v3 - 1575297777) & 0x5DE527F6) + 1040136073) ^ *STACK[0x548]) + ((((v3 + 197053446) & 0xF441391F) + 2080274150) & (2 * *STACK[0x548])) - 292560905;
  LODWORD(STACK[0x974]) = v5;
  if (STACK[0x570])
  {
    v6 = v5 == 747577204;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  return (*(a3 + 8 * ((1020 * v7) ^ v4)))(4294925273);
}

uint64_t sub_1000721FC@<X0>(int a1@<W8>)
{
  v2 = (a1 - 1026);
  v3 = (((2 * &STACK[0x918]) & 0xDF3DB7FFFDF5DFF0) - 0x6F9EDBFFFEFAEFF8 + (&STACK[0x918] ^ 0x6F9EDBFFFEFAEE8ALL ^ v2)) % 0x25;
  STACK[0x598] = (2 * v3) & 0x66;
  STACK[0x590] = (v3 ^ 0xBFBFFEF7F8247EB3) + 0x4040010807DB815DLL;
  v4 = *(v1 + 8 * ((((v2 ^ 0x41C) != 1390) * ((v2 + 1698) ^ 0x8E5)) ^ v2));
  v5 = STACK[0x6D8];
  STACK[0x5B8] = STACK[0x708];
  return v4();
}

uint64_t sub_100072334(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x5A8]) = a4;
  STACK[0x15B0] = 0x603EF318F93643C7;
  LODWORD(STACK[0x918]) = dword_100313AB4 - 761298293;
  v7 = dword_100313AB0;
  v8 = 218380439 * (((~(v6 - 192) | 0x6EC531D30D2F593CLL) + ((v6 - 192) | 0x913ACE2CF2D0A6C3)) ^ 0x8F44F4BFCAF523A3);
  v9 = v4 - 1028863077 - v8;
  *(v6 - 172) = v9;
  *(v6 - 168) = v9 + 59;
  STACK[0x5A0] = v7;
  *(v6 - 192) = v7 + v8;
  *(v6 - 160) = 706191307 - v8;
  *(v6 - 184) = v8;
  *(v6 - 180) = ((v4 - 1028863077) ^ 0xC) + v8;
  *(v6 - 176) = (v4 - 1723653669) ^ v8;
  v10 = (*(v5 + 8 * (v4 ^ 0x60)))(v6 - 192);
  return (*(&off_1002D7880 + *(v6 - 152)))(v10);
}

uint64_t sub_10007243C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  STACK[0x5B8] = (*(a5 + 8 * (v6 ^ 0x6D)))(STACK[0x590] + STACK[0x598], 0x100004077774924);
  v8 = (*(&off_1002D7880 + v6 + 63))();
  v9 = v8 + 415340507 - (((v6 - 87) ^ 0x3183280B) & (2 * v8));
  LODWORD(xmmword_100313AB8) = v9;
  *(v5 + 4) = 1032555855 - ((2 * (((1812433253 * (v9 ^ 0x18C197DB ^ (v9 >> 30))) ^ (((v6 + 1471422395) & 0xA84BDF75) - 617217208)) + (((v9 ^ 0x18C197DB ^ (v9 >> 30)) * v7) & 0xB66C151A) + 1773295264) + 909065640) & 0x31832FB6) + ((1812433253 * (v9 ^ 0x18C197DB ^ (v9 >> 30))) ^ (((v6 + 1471422395) & 0xA84BDF75) - 617217208)) + (((v9 ^ 0x18C197DB ^ (v9 >> 30)) * v7) & 0xB66C151A);
  return (*(&off_1002D7880 + ((v6 - 87) ^ 0xFBF)))();
}

uint64_t sub_1000725DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  STACK[0x530] = v10;
  STACK[0x538] = v9;
  STACK[0x540] = a8;
  STACK[0x550] = a7;
  STACK[0x558] = a6;
  STACK[0x548] = a5;
  return (*(a3 + 8 * (((v8 >= ((a4 - 1180) ^ 0x433) + 1965753038) * (((a4 - 652774244) & 0x26E887EF) - 444)) ^ (a4 - 1180))))();
}

uint64_t sub_10007267C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *STACK[0x570];
  LODWORD(STACK[0x724]) = (*STACK[0x558] ^ 0x6EF5F1EF) + ((2 * *STACK[0x558]) & 0xDDEBE3DE) + (v3 ^ 0xB92FAA47);
  LODWORD(STACK[0x98C]) = *STACK[0x550] - ((2 * *STACK[0x550]) & 0xB1F5DD50) - 654643544;
  STACK[0xA10] = v4;
  STACK[0x5D8] = &STACK[0xB70];
  STACK[0x660] = &STACK[0xB70];
  STACK[0x640] = &STACK[0xBB0];
  STACK[0x808] = &STACK[0xBE0];
  STACK[0x9E8] = 368;
  LODWORD(STACK[0x75C]) = -57530249;
  LODWORD(STACK[0x8DC]) = 913386534;
  LODWORD(STACK[0x89C]) = 402993540;
  return (*(a3 + 8 * ((840 * (*v4 == 517 * (v3 ^ 0x5BC) + 1714767632)) ^ v3)))(4294924395);
}

uint64_t sub_1000727C8@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0x9B0] = a2;
  STACK[0x5F8] = &STACK[0x75C];
  STACK[0x998] = &STACK[0xB70];
  STACK[0xA90] = &STACK[0x8DC];
  STACK[0x880] = v2;
  LODWORD(STACK[0x9D4]) = 1056833031;
  STACK[0x850] = &STACK[0x89C];
  return sub_1000E991C(a1, a2);
}

uint64_t sub_100072880@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, int *a5@<X7>, int a6@<W8>)
{
  v7 = a6 - 288;
  v8 = *a5;
  v9 = *v13 - (((v7 + 1605) ^ 0xE5CCF7D6) & (2 * *v13)) - 219775007;
  v10 = 275407499 * ((v6 - 192) ^ 0xF820B6B23B34AFEELL);
  *(v6 - 152) = v10 + v7 - 295;
  *(v6 - 136) = v9 ^ v10;
  *(v6 - 168) = v10 + v8 - ((2 * v8) & 0x2F6B74FA) + 397785725;
  *(v6 - 160) = a4;
  *(v6 - 192) = a3;
  *(v6 - 176) = v14;
  *(v6 - 144) = (0x11F3F2CC7A52B43DLL * (((2 * a2) & 0xBF7FFDFFFFEFEDDCLL) + (a2 ^ 0xDFBFFEFFFFF7F6EELL)) - 0x3A58BB2C3D7919C3) ^ v10;
  (*(a1 + 8 * (v7 + 1740)))(v6 - 192);
  result = 0;
  *(v15 + 64) = 0;
  v12 = *(v6 - 104);
  return result;
}

uint64_t sub_10007A3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x518]) = v8;
  STACK[0x15A0] = 0xB465AFE62D6D1F39;
  LODWORD(STACK[0x7E4]) = dword_100313AB4 - 761298293;
  v11 = dword_100313AB0;
  v12 = STACK[0x508];
  *(v10 - 192) = STACK[0x508] + v9;
  *(v10 - 160) = v11 - v12;
  *(v10 - 172) = v7 - 2096791685 - v12;
  *(v10 - 168) = ((v7 - 2096791685) ^ 0x57) - v12;
  *(v10 - 184) = v12;
  *(v10 - 180) = v12 + v7 - 2096791685 + 83;
  *(v10 - 176) = (v7 - 1723653669) ^ v12;
  v13 = (*(a7 + 8 * (v7 | 0x60)))(v10 - 192);
  return (*(&off_1002D7880 + *(v10 - 152)))(v13);
}

uint64_t sub_10007A494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x468] = v6;
  STACK[0x5A0] = (*(a6 + 8 * SLODWORD(STACK[0x454])))(STACK[0x458] + STACK[0x460], 0x100004077774924);
  v10 = (*(&off_1002D7880 + v9 + 63))();
  v11 = v10 + v8 - (((v9 - 1425) ^ 0x31832D35) & (2 * v10));
  *v7 = v11;
  v7[1] = -910059043 - ((2 * (((1812433253 * (v11 ^ v8 ^ (v11 >> 30))) ^ (((v9 - 1414) | 1) + 1325398896)) + ((-670100790 * (v11 ^ v8 ^ (v11 >> 30))) & 0x9DFFFBFE) + 316372662) + 1011422872) & 0x31832FB6) + ((1812433253 * (v11 ^ v8 ^ (v11 >> 30))) ^ (((v9 - 1414) | 1) + 1325398896)) + ((-670100790 * (v11 ^ v8 ^ (v11 >> 30))) & 0x9DFFFBFE);
  return (*(&off_1002D7880 + ((v9 - 1425) ^ 0x25)))(1812433253);
}

uint64_t sub_10007A5DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char a6, uint64_t a7, unsigned int a8)
{
  v13 = (v9 ^ v12) >> (a6 + v8 + ((v10 + 29) & 0xAF) + 13);
  LOBYTE(v13) = (v13 - ((2 * v13) & 0x88) + (((a4 + v10 - 47) | 0xE) ^ 0x32) + 88) ^ 0x16;
  v14 = (a3 + (v11 + a4));
  *v14 = v13;
  LODWORD(v14) = ((*(qword_100314AA8 + (dword_100314CB0 & a8)) ^ v14) & 0x7FFFFFFF) * a5;
  v15 = (v14 ^ (v14 >> 16)) * a5;
  v16 = (byte_100282990[(v15 >> 24) + 3] ^ byte_100284480[v15 >> 24] ^ byte_10027B330[(v15 >> 24) + 1] ^ v15 ^ (-35 * BYTE3(v15))) != v13;
  return (*(a7 + 8 * ((50 * (((v11 - v16 - v10) | (v10 - (v11 - v16))) >> 31)) ^ (a4 + v10 + 986))))();
}

uint64_t sub_10007B538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x9E8] = STACK[0x440];
  STACK[0x870] = v7;
  STACK[0xA60] = STACK[0x5A0];
  v9 = (*(a7 + 8 * (v8 + 394)))(a3);
  v10 = STACK[0x448];
  v11 = LODWORD(STACK[0x450]);
  STACK[0xA48] = 0;
  return sub_1000BE134(v9, v12, v13, v14, v15, v16, &off_1002D7880);
}

uint64_t sub_10007B58C()
{
  LODWORD(STACK[0x5B8]) = v0 - 446;
  v1 = (*(&off_1002D7880 + v0 + 454))(1028);
  STACK[0xAC8] = v1;
  return (*(&off_1002D7880 + (((v1 == 0) * (((v0 - 1653) | 0x106) ^ 0x11F)) ^ v0)))();
}

uint64_t sub_10007B5E8(uint64_t a1)
{
  v2 = (((LODWORD(STACK[0x4B0]) ^ LODWORD(STACK[0x520]) ^ 0x2042E63) - ((2 * (LODWORD(STACK[0x4B0]) ^ LODWORD(STACK[0x520]) ^ 0x2042E63) + 8108036) & 0x19D8D8E4) - 47560588) ^ 0x8CEC6C72) + LODWORD(STACK[0x530]);
  LOBYTE(v2) = (v2 - ((2 * v2) & 0x44) - 94) & 0xFE ^ 0x65;
  v3 = ((v1 ^ 0xD2) + 15) * v2 - ((2 * ((v1 ^ 0xD2) + 15) * v2) & 0x34) - 102;
  v4 = LODWORD(STACK[0x438]) ^ LODWORD(STACK[0x400]) ^ (((v3 ^ LODWORD(STACK[0x5C0])) ^ 0xD6DEC4BC) - ((2 * ((v3 ^ LODWORD(STACK[0x5C0])) ^ 0xD6DEC4BC)) & 0x841888D0) + 1644971624) ^ dword_10026ADB0[(v3 ^ LODWORD(STACK[0x5C0])) ^ 0xDD];
  v5 = LODWORD(STACK[0x40C]) ^ 0x5426FC3C ^ ((v4 ^ 0x504FBEC8) + 1411841084 - 2 * ((v4 ^ 0x504FBEC8) & 0x5426FC3F ^ v4 & 3));
  *(a1 + 4 * (v3 ^ 0x9Au)) = (v5 - ((2 * v5) & 0x7B348466) + 1033519667) ^ 0x8504E71D;
  return (*(&off_1002D7880 + v1))();
}

uint64_t sub_10007B7A8()
{
  v1 = STACK[0xAC0];
  STACK[0x5C0] = STACK[0xAC0];
  v2 = v1[11];
  LODWORD(STACK[0x5B8]) = v0 - 1897100797;
  HIDWORD(v3) = byte_100283650[(v0 + 3 + v2 + ~(2 * ((v2 + 8) & 0x13 ^ v2 & 2)) - 77) ^ 0x1BLL];
  LODWORD(v3) = (HIDWORD(v3) ^ 0x88888888) << 24;
  v4 = v1[14] - ((2 * v1[14] + 114) & 0x66);
  v5 = ((((byte_1002646F0[(v1[9] - ((2 * v1[9] + 36) & 0x32) + 75) ^ 0x4CLL] ^ (v1[9] - ((2 * v1[9] + 36) & 0x32) + 75) ^ 0xD) - ((2 * (byte_1002646F0[(v1[9] - ((2 * v1[9] + 36) & 0x32) + 75) ^ 0x4CLL] ^ (v1[9] - ((2 * v1[9] + 36) & 0x32) + 75) ^ 0xD)) & 0xC2)) << 16) + 2036400128) ^ 0x79610000;
  v6 = (v5 - ((2 * v5) & 0x73E20000) + 972101778) ^ 0x39F11892 | ((((v3 >> 25) ^ 0x75) + ((2 * (v3 >> 25)) & 0xEA) - 117) - ((2 * (((v3 >> 25) ^ 0x75) + ((2 * (v3 >> 25)) & 0xEA) - 117)) & 0x7A) - 747267011) ^ 0xD3759C3D;
  v7 = v6 - ((2 * v6) & 0x751D27DC);
  v8 = byte_1002647F0[(v4 - 20) ^ 0xC7] - 19;
  v9 = ((19 - v4) & v8) - ((2 * ((19 - v4) & v8)) & 0x26);
  v10 = ((((2 * v9 + 38) ^ 0x26) - ((2 * ((2 * v9 + 38) ^ 0x26)) & 0xFFFFFFA4) - 45) ^ 0xFFFFFFD3) + ((((19 - v4) ^ v8) - ((2 * ((19 - v4) ^ v8)) & 0xFFFFFF98) - 52) ^ 0xFFFFFFCC);
  v11 = ((((v10 - ((2 * v10) & 0x28) - 108) + 864306 - ((2 * (v10 - ((2 * v10) & 0x28) - 108)) & 0x78)) << 8) + 657920) ^ 0xD3A3C00;
  LOBYTE(v8) = v1[13] + ((66 - 2 * v1[13]) | 0xB5) - 60;
  LOBYTE(v9) = ((2 * v8) & 0x5C ^ 0xC) + (v8 ^ 0xA9);
  LOBYTE(v8) = v9 + (v8 ^ 0xD8) - ((2 * (v9 + (v8 ^ 0xD8)) - 90) & 0xF4) - 51;
  v12 = byte_1002646F0[(v9 - 46)] ^ 0xF9 ^ ((v8 ^ 0x3A) + v9 - 46 - ((2 * ((v8 ^ 0x3A) + v9 - 46)) & 4) - 126);
  v13 = (((v12 - ((2 * v12) & 0x56)) << 16) + 2116747264) ^ 0x7E2B0000;
  v14 = (v13 - ((2 * v13) & 0x63C00000) - 236942940) ^ 0xF1E089A4 | (v11 - ((2 * v11) & 0x60A71C00) + 1884524233) ^ 0x70538EC9;
  v15 = v14 - ((2 * v14) & 0x6B3E7F6);
  v16 = byte_1002646F0[((((v1[5] + 90) & 4 ^ 0x4F) + 2 * ((v1[5] + 90) & 4) + 27) ^ (v1[5] + 90 - ((2 * v1[5] + 12) & 0x28)) & 0xFB) ^ 0xB5] ^ (((v1[5] + 90) & 4 ^ 0x4F) + 2 * ((v1[5] + 90) & 4) + 27) ^ (v1[5] + 90 - ((2 * v1[5] + 12) & 0x28)) & 0xFFFFFFFB ^ 0x50;
  v17 = (((v16 - ((2 * v16) & 0x130)) << 16) + 2123890688) ^ 0x7E980000;
  v18 = byte_10027D1C0[(((v1[4] - ((2 * v1[4] + 86) & 0xE4) + 37) ^ 5) - 8)];
  v19 = (((v18 >> 3) ^ (v18 >> 2) | v18 & 0x40) ^ 0x5A) - 2 * ((((v18 >> 3) ^ (v18 >> 2) | v18 & 0x40) ^ 0x5A) & 0x2F ^ ((v18 >> 3) ^ (v18 >> 2)) & 5) + 42;
  v20 = ((((v18 & 0xFFFFFFBF ^ 0x39 ^ v19) - ((2 * (v18 & 0xFFFFFFBF ^ 0x39 ^ v19)) & 0xF0)) << 24) + 2013265920) ^ 0x78000000;
  v21 = (v20 - ((2 * v20) & 0xEC000000) + 1982219686) ^ 0x762645A6 | (v17 - ((2 * v17) & 0x276E0000) - 1816721609) ^ 0x93B70737;
  v22 = v21 - ((2 * v21) & 0xC15FAE7A) - 525347011;
  HIDWORD(v3) = byte_100283650[(v1[7] + ((6 - 2 * v1[7]) | 0x65) + 74) ^ 0xAALL];
  LODWORD(v3) = (HIDWORD(v3) ^ 0x88888888) << 24;
  v23 = (((v3 >> 25) ^ 0x73) + ((2 * (v3 >> 25)) & 0xE6) - 115) - ((2 * (((v3 >> 25) ^ 0x73) + ((2 * (v3 >> 25)) & 0xE6) - 115)) & 0x14E) + 1406476967;
  v24 = ((v22 & 0x4B9F0000 | v23 & 0xD) ^ 0x408F0005) - ((2 * ((v22 & 0x4B9F0000 | v23 & 0xD) ^ 0x408F0005)) & 0x85280018);
  v25 = (v22 & 0xB4600000 | (((v3 >> 25) ^ 0x73) + ((2 * (v3 >> 25)) & 0xE6) - 115 - ((2 * (((v3 >> 25) ^ 0x73) + ((2 * (v3 >> 25)) & 0xE6) - 115)) & 0x4E) - 89) & 0xF2) ^ 0xA02000A2;
  v26 = byte_1002647F0[(v1[10] - ((2 * v1[10] - 102) & 0x90) + 21) ^ 0x6CLL] + ((v1[10] - ((2 * v1[10] - 102) & 0xFFFFFF90) + 21) ^ 0x54) - 19;
  v27 = (v26 - ((2 * v26) & 0x18) + 12) ^ 0x55;
  v28 = (((v27 - ((2 * v27) & 0xFA)) << 8) - 560300800) ^ 0xDE9A7D00;
  v29 = (v28 - ((2 * v28) & 0x3275AE00) - 650455211) ^ 0xD93AD755 | (v7 - 91319314) ^ 0xFA8E93EE;
  v30 = (v24 - 422273956) ^ 0xE6D49C5C | (v25 - ((2 * v25) & 0x608001A4) + 852980446) ^ 0x32D772DE;
  v31 = v30 - ((2 * v30) & 0x83302F9C);
  v32 = byte_1002646F0[(v1[1] + ~(2 * ((v1[1] + 90) & 0x51 ^ v1[1] & 1)) + 43) ^ 0x3FLL];
  v33 = (((v32 ^ 0xFFFFFFFB) + 75) ^ 0xFFFFFFCD) + ((2 * ((v32 ^ 0xFFFFFFFB) + 75)) & 0xFFFFFF9A) + ((((2 * v32) ^ 0xFFFFFFF6) - ((2 * ((2 * v32) ^ 0xFFFFFFF6)) & 0x1C) - 113) & 0xFFFFFF96 ^ 0x79) + 52;
  v34 = (v1[1] + ~(2 * ((v1[1] + 90) & 0x51 ^ v1[1] & 1)) + 43) ^ 0x90 ^ (v33 - ((2 * v33) & 0x5E) - 81);
  v35 = ((((~(2 * v34) | 0xFE4F) + v34) << 16) + 869859328) ^ 0x33D80000;
  v36 = v1;
  v37 = byte_10027D1C0[(*v36 - ((2 * *v36 + 126) & 0xB6) - 102) ^ 0xF9];
  v38 = ((((v37 ^ (v37 >> 3) ^ (v37 >> 2) ^ 0xFB) - ((2 * (v37 ^ (v37 >> 3) ^ (v37 >> 2) ^ 0xFB)) & 0x33333333)) << 24) - 1728053248) ^ 0x99000000;
  HIDWORD(v3) = byte_100283650[(v36[3] - ((2 * v36[3] + 32) & 0x74) + 74) ^ 0xBFLL];
  LODWORD(v3) = (HIDWORD(v3) ^ 0x88888888) << 24;
  v39 = (v35 - ((2 * v35) & 0x9960000) + 617302380) ^ 0x24CB496C | ((((v3 >> 25) ^ 0xFE) + ((2 * (v3 >> 25)) & 0xFC) + 2) - ((2 * (((v3 >> 25) ^ 0xFE) + ((2 * (v3 >> 25)) & 0xFC) + 2)) & 0x8A) + 364111429) ^ 0x15B3E645;
  v40 = (v39 - ((2 * v39) & 0x2CCC6D42) - 1771686239) ^ 0x966636A1 | (v38 - ((2 * v38) & 0xCA000000) - 443428732) ^ 0xE591D084;
  v41 = v40 - ((2 * v40) & 0xC4B4531A);
  v42 = byte_1002647F0[(v36[2] + ((20 - 2 * v36[2]) | 0x31) - 35) ^ 0x62] + ((v36[2] + ((20 - 2 * v36[2]) | 0x31) - 35) ^ 0x5A) - 19;
  v43 = (((((v42 - ((2 * v42) & 0x12) + 9) ^ 0xCF) - ((2 * ((v42 - ((2 * v42) & 0x12) + 9) ^ 0xCF)) & 0x42) + 3884075) << 8) - 2560) ^ 0x3B442100;
  v44 = v43 - ((2 * v43) & 0x5EEDCA00);
  v45 = byte_10027D1C0[(v1[12] - ((2 * v1[12] + 6) & 0x92) + 76) ^ 0xF8];
  if (v19 == 42)
  {
    v46 = 33;
  }

  else
  {
    v46 = v45 ^ 0xFFFFFF91;
  }

  if (v1[12])
  {
    v48 = (v46 & (v45 ^ 0x4F)) - ((2 * (v46 & (v45 ^ 0x4F))) & 8) - 124;
  }

  else
  {
    v48 = -124;
  }

  v47 = (v46 & (v45 ^ 0x4F)) - ((2 * (v46 & (v45 ^ 0x4F))) & 8) - 124;
  v49 = (v45 & 0xFFFFFFDE ^ 0xFFFFFFCA ^ v48 | v47 ^ 0xFFFFFF84) + (~(2 * (v45 & 0xFFFFFFDE ^ 0xFFFFFFCA ^ v48 | v47 ^ 0xFFFFFF84)) | 0xFFFFFFC9) + 28;
  HIDWORD(v50) = v49 ^ 0x1B;
  LODWORD(v50) = v49 << 24;
  v51 = (v50 >> 29) - 2 * ((v50 >> 29) & 0x3F);
  v52 = (v41 - 497407603) ^ 0xE25A298D | (v44 + 796321171) ^ 0x2F76E593;
  v53 = (v49 >> 3) ^ (v49 >> 2) ^ (-99 - 32 * v51) ^ (((v51 - 65) & 0xF8) >> 3) ^ 0xF7;
  v54 = (((v53 - ((2 * v53) & 0xFFFFFFBF)) << 24) - 553648128) ^ 0xDF000000;
  v55 = v1[6] - ((2 * v1[6] - 62) & 0xFFFFFFF8) + 93;
  v56 = (v1[6] - ((2 * v1[6] - 62) & 0xF8) + 93) ^ 0x54;
  v57 = v1[8];
  STACK[0x590] = v1;
  v58 = (v54 - ((2 * v54) & 0x32000000) + 429188349) ^ 0x1994E4FD | (v15 + 56226811) ^ 0x359F3FB;
  v59 = byte_1002647F0[v56] + (v55 ^ 0x6C) - 19;
  v60 = (v59 - ((2 * v59) & 0x82) + 65) ^ 0xC2;
  v61 = (((v60 - ((2 * v60) & 0x5C)) << 8) + 1963732480) ^ 0x750C2E00;
  v62 = (v31 - 1046997042) ^ 0xC19817CE | (v61 - ((2 * v61) & 0x2E9E4200) + 1464803633) ^ 0x574F2131;
  v63 = byte_10027D1C0[(v57 - ((2 * v57 + 46) & 0xE8) + 11) ^ 0x5CLL];
  v64 = (((v63 ^ (v63 >> 3) ^ (v63 >> 2) ^ 0x93) - ((2 * (v63 ^ (v63 >> 3) ^ (v63 >> 2))) & 0x58)) << 24) - 1409286144;
  v65 = ((v64 ^ 0xAC000000) - ((2 * v64) & 0x87FFFFFF) - 1009392207) ^ 0xC3D5E5B1 | (v29 - ((2 * v29) & 0x889DEAE4) - 1001458318) ^ 0xC44EF572;
  HIDWORD(v50) = byte_100283650[(v1[15] - ((2 * v1[15] - 88) & 0xBC) - 78) ^ 0xE6];
  LODWORD(v50) = (HIDWORD(v50) ^ 0x88888888) << 24;
  v66 = (v58 - ((2 * v58) & 0x245EA630) - 1842392296) ^ 0x922F5318 | ((((v50 >> 25) ^ 0x3E) + ((2 * (v50 >> 25)) & 0x7C) - 62) - ((2 * (((v50 >> 25) ^ 0x3E) + ((2 * (v50 >> 25)) & 0x7C) - 62)) & 0x122) - 108077167) ^ 0xF98EDF91;
  v67 = (v66 - ((2 * v66) & 0x2B6A03A6) - 1783299629) ^ LODWORD(STACK[0x4B0]);
  v68 = LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x598]) ^ LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x5B0]) ^ (v62 - ((2 * v62) & 0x834A3B18) - 1046143604);
  v69 = LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x508]) ^ LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x5B0]) ^ (v52 - ((2 * v52) & 0x68AC01A6) - 1269432109);
  v70 = LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x4E0]) ^ LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x5B0]) ^ (v65 - ((2 * v65) & 0xA00A40E0) - 804970384);
  v71 = LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x588]) ^ STACK[0x5B0] & 0x7FFFFFFF ^ ((STACK[0x5B0] & 0x80000000) + (v67 ^ 0x760ACE55) - 2 * ((v67 ^ 0x760ACE55) & 0x7827C849 ^ v67 & 8) - 131610559);
  v72 = STACK[0xAF0];
  v73 = STACK[0xAB0];
  v74 = STACK[0xB00];
  v75 = STACK[0xAE8];
  v76 = *(STACK[0xAB0] + 4 * (((v68 ^ 0x9D72D091) >> 16) ^ 0x73u)) ^ *(STACK[0xAF0] + 4 * (BYTE1(v70) ^ 0xBu)) ^ *(STACK[0xB00] + 4 * (HIBYTE(v69) ^ 0xBF)) ^ *(STACK[0xAE8] + 4 * (v71 ^ 0x8Cu));
  v77 = *(STACK[0xAE8] + 4 * (v68 ^ 0x1Bu)) ^ *(STACK[0xB00] + 4 * (HIBYTE(v70) ^ 0xBB)) ^ *(STACK[0xAF0] + 4 * (((v69 ^ 0xBD3F) >> 8) ^ 0x6Cu)) ^ *(STACK[0xAB0] + 4 * (BYTE2(v71) ^ 0x4Eu));
  v78 = *(STACK[0xAF0] + 4 * (BYTE1(v71) ^ 0xCCu)) ^ *(STACK[0xB00] + 4 * (HIBYTE(v68) ^ 0x88)) ^ *(STACK[0xAB0] + 4 * (BYTE2(v70) ^ 0x4Cu)) ^ *(STACK[0xAE8] + 4 * (v69 ^ 0x6Eu));
  v79 = *(STACK[0xAB0] + 4 * (((v69 ^ 0x50F2BD3F) >> 16) ^ 0xA9u)) ^ *(STACK[0xAF0] + 4 * (((v68 ^ 0xD091) >> 8) ^ 0xF1u)) ^ *(STACK[0xAE8] + 4 * (v70 ^ 0x19u)) ^ *(STACK[0xB00] + 4 * (HIBYTE(v71) ^ 0xC1));
  v80 = *(STACK[0xAF0] + 4 * (BYTE1(v79) ^ 0x7Du)) ^ *(STACK[0xB00] + 4 * (HIBYTE(v78) ^ 0x27)) ^ *(STACK[0xAB0] + 4 * (BYTE2(v77) ^ 0xCAu)) ^ *(STACK[0xAE8] + 4 * (v76 ^ 0x65u));
  v81 = *(STACK[0xB00] + 4 * (HIBYTE(v76) ^ 0xF4)) ^ *(STACK[0xAB0] + 4 * (BYTE2(v78) ^ 0xFEu)) ^ *(STACK[0xAE8] + 4 * (v79 ^ 0x16u)) ^ *(STACK[0xAF0] + 4 * (BYTE1(v77) ^ 0xC8u));
  v82 = *(STACK[0xAB0] + 4 * (BYTE2(v76) ^ 0xF9u)) ^ *(STACK[0xB00] + 4 * (HIBYTE(v79) ^ 0xFB)) ^ 0x6874FA60;
  v83 = *(STACK[0xAF0] + 4 * (BYTE1(v78) ^ 0x47u)) ^ 0x4DA4EA9A;
  v84 = 2 * ((v82 & v83) - ((2 * (v82 & v83)) & 0x4AF6D762)) + 1257690978;
  v85 = v77 ^ 0x7A;
  v86 = *(STACK[0xAE8] + 4 * (v78 ^ 0x70u)) ^ *(STACK[0xB00] + 4 * (HIBYTE(v77) ^ 0x3B)) ^ *(STACK[0xAB0] + 4 * (BYTE2(v79) ^ 0xC6u)) ^ *(STACK[0xAF0] + 4 * (BYTE1(v76) ^ 0xBAu));
  v87 = ((v82 + v83) ^ 0x2FFF09FC) + ((2 * (v82 + v83)) & 0x5FFE13F8) - 805243387 + (((v84 ^ 0x4AF6D762) - 2 * ((v84 ^ 0x4AF6D762) & 0x6B0D339A ^ v84 & 0x10) + 1796027274) ^ 0x94F2CC75);
  v88 = (v87 - ((2 * v87) & 0x14D636CC) - 1972692122) ^ *(STACK[0xAE8] + 4 * v85);
  v89 = *(STACK[0xB00] + 4 * (HIBYTE(v81) ^ 0x5D)) ^ *(STACK[0xAB0] + 4 * (BYTE2(v80) ^ 0xB0u)) ^ *(STACK[0xAF0] + 4 * (BYTE1(v86) ^ 0xDu)) ^ *(STACK[0xAE8] + 4 * (v88 ^ 0xA0u));
  v90 = *(STACK[0xAF0] + 4 * (BYTE1(v88) ^ 0xE2u)) ^ *(STACK[0xB00] + 4 * (HIBYTE(v80) ^ 0x35)) ^ *(STACK[0xAB0] + 4 * (BYTE2(v86) ^ 0x35u)) ^ *(STACK[0xAE8] + 4 * (v81 ^ 0x50u));
  v91 = *(STACK[0xAF0] + 4 * (BYTE1(v81) ^ 0x82u)) ^ *(STACK[0xB00] + 4 * (HIBYTE(v86) ^ 0x41)) ^ *(STACK[0xAE8] + 4 * (v80 ^ 0x50u)) ^ *(STACK[0xAB0] + 4 * (BYTE2(v88) ^ 7u));
  v92 = *(STACK[0xAB0] + 4 * (BYTE2(v81) ^ 1u)) ^ *(STACK[0xAF0] + 4 * (BYTE1(v80) ^ 0x5Cu)) ^ *(STACK[0xAE8] + 4 * (v86 ^ 0x5Au)) ^ *(STACK[0xB00] + 4 * (HIBYTE(v88) ^ 0x5A));
  v93 = BYTE1(v89) ^ 0x99;
  v94 = (((v92 & 0x92265A3 ^ 0x8202001) + (v92 ^ 0xB70ADDB6) - ((2 * ((v92 & 0x92265A3 ^ 0x8202001) + (v92 ^ 0xB70ADDB6))) & 0x96705E7E) + 1261973311) ^ 0x4B382F3F) & (((v92 & 0x92265A3 ^ 0xFEFDBA5D) - ((2 * (v92 & 0x92265A3 ^ 0xFEFDBA5D)) & 0x34166F50) + 436942760) ^ 0x1A0B37A8);
  v95 = v94 - ((2 * v94) & 0xC3FBC1DE) + 1644028143;
  v96 = v89 ^ 0x53;
  v97 = *(STACK[0xAF0] + 4 * (BYTE1(v91) ^ 0xC8u)) ^ *(STACK[0xB00] + 4 * (HIBYTE(v89) ^ 0x70)) ^ *(STACK[0xAB0] + 4 * (BYTE2(v90) ^ 0xA1u)) ^ *(STACK[0xAE8] + 4 * ((v94 - ((2 * v94) & 0xDE) - 17) ^ 0xEFu));
  v98 = *(STACK[0xB00] + 4 * (HIBYTE(v91) ^ 4)) ^ *(STACK[0xAB0] + 4 * (BYTE2(v95) ^ 0xFDu));
  LODWORD(STACK[0x5B0]) = v98;
  v99 = *(v74 + 4 * (HIBYTE(v95) ^ 0x61)) ^ *(v73 + 4 * (BYTE2(v89) ^ 0x5Eu)) ^ 0x6874FA60;
  v100 = *(v72 + 4 * (BYTE1(v90) ^ 0x5Cu)) ^ 0x4DA4EA9A;
  v101 = *(v75 + 4 * v96) ^ *(v73 + 4 * (BYTE2(v91) ^ 0xDBu)) ^ *(v74 + 4 * (HIBYTE(v90) ^ 0xA)) ^ *(v72 + 4 * (BYTE1(v95) ^ 0xE0u));
  v102 = (2 * ((v99 & v100) - ((2 * (v99 & v100)) & 0x6942348)) - 2037111992) ^ 0x86942348;
  v103 = ((v99 + v100) ^ 0xF747BFCD) + ((2 * (v99 + v100)) & 0xEE8F7F9A) + 146292788 + ((v102 - ((2 * v102) & 0x16D8FB68) - 1955824204) ^ 0x7493824B);
  v104 = (v103 + 2081716839 - ((2 * v103) & 0xF828F51C) + 39) ^ *(v75 + 4 * (v91 ^ 0x59u));
  v105 = *(v75 + 4 * (v90 ^ 0x73u)) ^ *(v72 + 4 * v93);
  v106 = *(v74 + 4 * (HIBYTE(v97) ^ 0xCF)) ^ 0x9F22B1F0;
  v107 = *(v73 + 4 * (BYTE2(v101) ^ 0xAAu)) ^ 0xF7564B90;
  v108 = (2 * ((v107 & v106) - ((2 * (v107 & v106)) & 0x31426BE)) - 2095831362) ^ 0x831426BE;
  v109 = ((v107 + v106) ^ 0x3DBBEDE6) + ((2 * (v107 + v106)) & 0x7B77DBCC) - 1035726309 + ((v108 - ((2 * v108) & 0xA122A624) + 1351701266) ^ 0xAF6EACED);
  v110 = v105 ^ v98;
  v111 = *(v75 + 4 * (v104 ^ 0x4Du)) ^ *(v72 + 4 * (((v105 ^ v98) >> 8) ^ 0xD9u)) ^ (v109 - ((2 * v109) & 0x8A289B6C) - 988525130);
  v112 = *(v73 + 4 * (((v105 ^ v98) >> 16) ^ 0x3Eu)) ^ *(v74 + 4 * (HIBYTE(v101) ^ 0x8A)) ^ *(v75 + 4 * (v97 ^ 0x76u)) ^ *(v72 + 4 * (BYTE1(v104) ^ 0x92u));
  LODWORD(v56) = *(v72 + 4 * (BYTE1(v97) ^ 0x4Du)) ^ *(v75 + 4 * (v101 ^ 0x75u)) ^ *(v74 + 4 * (HIBYTE(v110) ^ 0xC1)) ^ *(v73 + 4 * (BYTE2(v104) ^ 0x9Du));
  v113 = *(v73 + 4 * (BYTE2(v97) ^ 0x44u)) ^ *(v72 + 4 * (BYTE1(v101) ^ 0x88u)) ^ 0xBAF2A10A;
  v114 = *(v75 + 4 * (v110 ^ 0x5Cu)) ^ (v113 - ((2 * v113) & 0x63737428) + 834255380) ^ *(v74 + 4 * (HIBYTE(v104) ^ 0x69));
  v115 = *(v72 + 4 * (BYTE1(v56) ^ 0xBCu)) ^ *(v73 + 4 * (BYTE2(v112) ^ 0xC2u)) ^ *(v74 + 4 * (HIBYTE(v111) ^ 0x2C)) ^ *(v75 + 4 * (v114 ^ 0x12u));
  v116 = *(v75 + 4 * (v111 ^ 0xBAu)) ^ *(v73 + 4 * (BYTE2(v56) ^ 0xB3u)) ^ *(v74 + 4 * (HIBYTE(v112) ^ 0x44)) ^ *(v72 + 4 * (BYTE1(v114) ^ 0xC6u));
  v117 = *(v74 + 4 * (BYTE3(v56) ^ 0xCA)) ^ *(v73 + 4 * (BYTE2(v114) ^ 0xEEu)) ^ *(v72 + 4 * (BYTE1(v111) ^ 0x5Au)) ^ *(v75 + 4 * (v112 ^ 0x69u));
  v118 = *(v74 + 4 * (HIBYTE(v114) ^ 0x3E)) ^ *(v72 + 4 * (BYTE1(v112) ^ 0xFCu)) ^ *(v73 + 4 * (BYTE2(v111) ^ 0x47u)) ^ *(v75 + 4 * (v56 ^ 0x45u));
  v119 = *(v74 + 4 * (HIBYTE(v115) ^ 0xA7)) ^ *(v73 + 4 * (BYTE2(v116) ^ 0xF8u));
  v120 = *(v73 + 4 * (BYTE2(v117) ^ 4u)) ^ *(v74 + 4 * (HIBYTE(v116) ^ 0xAC)) ^ *(v72 + 4 * (BYTE1(v118) ^ 0xB8u));
  v121 = *(v73 + 4 * (BYTE2(v118) ^ 0xEEu)) ^ *(v74 + 4 * (HIBYTE(v117) ^ 0x29));
  v122 = *(v73 + 4 * (BYTE2(v115) ^ 0x75u)) ^ *(v74 + 4 * (HIBYTE(v118) ^ 0xD3)) ^ *(v72 + 4 * (BYTE1(v116) ^ 0xD9u)) ^ *(v75 + 4 * (v117 ^ 0xB7u));
  v123 = *(v75 + 4 * (v115 ^ 0x9Bu));
  v124 = *(v72 + 4 * (BYTE1(v115) ^ 0xBCu));
  v125 = *(v75 + 4 * (v116 ^ 0x82u));
  v126 = v121 ^ v124 ^ v125;
  v127 = *(v75 + 4 * (v118 ^ 0xCBu));
  v128 = *(v72 + 4 * (BYTE1(v117) ^ 0xFCu));
  v129 = v127 ^ v128 ^ v119;
  v130 = *(v72 + 4 * (BYTE1(v122) ^ 0x23u));
  v131 = *(v74 + 4 * (((v120 ^ v123) >> 24) ^ 0x15)) ^ *(v73 + 4 * (BYTE2(v126) ^ 0x93u)) ^ v130 ^ *(v75 + 4 * ((v127 ^ v128 ^ v119) ^ 0x71u));
  v132 = *(v75 + 4 * ~v122);
  v133 = *(v72 + 4 * (BYTE1(v126) ^ 2u)) ^ *(v73 + 4 * (((v120 ^ v123) >> 16) ^ 0xD8u)) ^ v132 ^ *(v74 + 4 * (HIBYTE(v129) ^ 0xF6));
  v134 = HIBYTE(v126) ^ 0x73;
  v135 = *(v74 + 4 * (HIBYTE(v122) ^ 0xEF));
  v136 = *(v72 + 4 * (((v120 ^ v123) >> 8) ^ 0x67u)) ^ *(v73 + 4 * (BYTE2(v129) ^ 0x6Fu)) ^ v135;
  v137 = *(v75 + 4 * ((v121 ^ v124 ^ v125) ^ 0x44u));
  v138 = (((2 * v131) ^ 0x9E9F32E0) - ((2 * ((2 * v131) ^ 0x9E9F32E0)) & 0xB43A58) + 5905708) & 0x1905AD0A;
  v139 = (v131 ^ 0x4F4F9970) + 209901189;
  v140 = v139 ^ 0xFBFFFE7B;
  v141 = (2 * v139) & 0xF7FFFCF6;
  v142 = *(v73 + 4 * (BYTE2(v122) ^ 0x32u));
  v143 = *(v74 + 4 * v134) ^ v142 ^ *(v75 + 4 * ((v120 ^ v123) ^ 0x83u)) ^ *(v72 + 4 * (BYTE1(v129) ^ 0x27u));
  v144 = v140 + v141 + 67113178 + (v138 ^ 0xFFFFF2F7) - 3924;
  v145 = v144 - ((2 * v144) & 0xF774E966) - 71666509;
  LODWORD(STACK[0x588]) = v145;
  v146 = (v136 ^ ((v136 ^ 0xDA2FEF05) - ((2 * (v136 ^ 0xDA2FEF05) + 2) & 0x9E6E94F2) + 1329023610) ^ ((v137 ^ 0x6A9F898A) - (v136 ^ v137 ^ 0x4F4F9970) - ((2 * ((v137 ^ 0x6A9F898A) - (v136 ^ v137 ^ 0x4F4F9970))) & 0xAF14597C) - 678810434) ^ 0xBD6D763D) + (v137 ^ 0x6A9F898A);
  v147 = v146 - ((2 * v146) & 0x6A584CEE) - 1255397769;
  v148 = v145 ^ 0xA8900D0E;
  LODWORD(STACK[0x5A8]) = v145 ^ 0x9B;
  LODWORD(STACK[0x598]) = (v146 - ((2 * v146) & 0xEE) + 119) ^ 0x61;
  v119 ^= 0x6874FA60u;
  v128 ^= 0x4DA4EA9Au;
  v149 = (v128 & v119) - ((2 * (v128 & v119)) & 0x416AE2);
  HIDWORD(v50) = v120 ^ 0x10FA;
  LODWORD(v50) = v120 ^ 0x25D00000;
  v150 = (v50 >> 16) - ((2 * (v50 >> 16)) & 0xCF9FE09A) + 1741680717;
  HIDWORD(v50) = v150 ^ 0x4C82;
  LODWORD(v50) = v150 ^ 0x9DAD0000;
  v151 = ((v128 + v119) ^ 0xDF757FD3) + ((2 * (v128 + v119)) & 0xBEEAFFA6) + 545947694 + ((((2 * v149 + 4287202) ^ 0x416AE2) - ((2 * ((2 * v149 + 4287202) ^ 0x416AE2)) & 0x8AB67870) - 983876552) ^ 0x3AA4C3C7);
  v152 = (v151 - ((2 * v151) & 0x1ADC11EC) - 1922168586) ^ v127;
  v153 = ((v50 >> 16) - ((2 * (v50 >> 16)) & 0x4FF7CD2C) + 670819990) ^ v123;
  v154 = v124 ^ 0x4DA4EA9A;
  LODWORD(v56) = (v124 ^ 0x4DA4EA9A) - (v121 ^ v124 ^ 0x25D010FA) - ((2 * ((v124 ^ 0x4DA4EA9A) - (v121 ^ v124 ^ 0x25D010FA))) & 0xFCD9680C) + 2121053190;
  v155 = (v121 ^ 0x978B059F) - ((2 * (v121 ^ 0x978B059F) + 2) & 0xB660B04) + 95618435;
  v156 = ((v121 ^ v155 ^ v56 ^ 0x13AB4BE4) + v154 - ((2 * ((v121 ^ v155 ^ v56 ^ 0x13AB4BE4) + v154)) & 0xA869C5D6) - 734731541) ^ v125;
  if ((v152 & 4) != 0)
  {
    v157 = 4;
  }

  else
  {
    v157 = -4;
  }

  v158 = *(v73 + 4 * (BYTE2(v153) ^ 0x3Cu)) ^ *(v72 + 4 * (BYTE1(v156) ^ 0xF0u)) ^ v132 ^ *(v74 + 4 * (HIBYTE(v152) ^ 0x5E));
  v159 = *(v74 + 4 * (HIBYTE(v153) ^ 0xAB)) ^ v130 ^ *(v73 + 4 * (BYTE2(v156) ^ 0x77u)) ^ *(v75 + 4 * ((v157 + (v152 ^ 0x7D) - ((2 * (v157 + (v152 ^ 0x7D))) & 0x6C) - 74) ^ 0xB2u));
  v160 = v142 ^ *(v75 + 4 * (v153 ^ 0x8Du)) ^ *(v74 + 4 * (HIBYTE(v156) ^ 0x82)) ^ *(v72 + 4 * (BYTE1(v152) ^ 0x3Fu));
  v161 = *(v72 + 4 * (BYTE1(v153) ^ 0x6Bu)) ^ v135 ^ *(v75 + 4 * (v156 ^ 0x55u)) ^ *(v73 + 4 * (BYTE2(v152) ^ 0xD1u));
  HIDWORD(v163) = v161 ^ 0xF4F9970;
  LODWORD(v163) = v161 ^ 0x40000000;
  v162 = v163 >> 30;
  v164 = v162 - ((2 * v162) & 0xAD338EC8) - 694565020;
  v165 = ((((v158 ^ 0x4279682Eu) >> (STACK[0x5B0] & 0x18)) - ((2 * ((v158 ^ 0x4279682Eu) >> (STACK[0x5B0] & 0x18))) & 0xBB9EC0CE) - 573611929) ^ 0xDDCF6067) >> (STACK[0x5B0] & 0x18 ^ 0x18);
  v166 = v165 - ((2 * v165) & 0x3A);
  v167 = ((((32 * v164) ^ 0x7A73B3A0) + 93492616 - ((2 * ((32 * v164) ^ 0x7A73B3A0)) & 0xB252BC0) + 92) & 0xFFFFFF80 | (v164 >> 27)) ^ 0x5929588;
  v168 = v167 + 1246532639 - 2 * (v167 & 0x4A4C941F ^ (v164 >> 27) & 6) + 26;
  HIDWORD(v163) = v168 ^ 0x32;
  LODWORD(v163) = v168 ^ 0x58E1CB00;
  v169 = ((v163 >> 7) - ((2 * (v163 >> 7)) & 0x13E9B2B0) - 1980442280) ^ 0x89F4D958 | (((v162 << 30) ^ 0x40000000) + (~v162 << 31) - 172146681) ^ 0xF5BD4007;
  v170 = v169 - ((2 * v169) & 0x448F89CC) - 1572354842;
  v171 = (v166 - 99) ^ 0x9D;
  v172 = *(v72 + 4 * (BYTE1(v143) ^ 0xDu));
  v173 = *(v72 + 4 * (BYTE1(v147) ^ 8u));
  v174 = *(v72 + 4 * (BYTE1(v148) ^ 0xA0u));
  v175 = *(v72 + 4 * (BYTE1(v133) ^ 0x68u));
  v176 = *(v72 + 4 * (BYTE1(v160) ^ 0xDu));
  v177 = *(v72 + 4 * (BYTE1(v158) ^ 0x68u));
  v178 = *(v72 + 4 * (BYTE1(v170) ^ 0x26u));
  v179 = *(v72 + 4 * (BYTE1(v159) ^ 0x96u));
  v180 = *(v73 + 4 * (BYTE2(v143) ^ 0x32u));
  v181 = *(v73 + 4 * (BYTE2(v147) ^ 0x2Cu));
  v182 = *(v73 + 4 * (BYTE2(v148) ^ 9u));
  v183 = *(v73 + 4 * (BYTE2(v133) ^ 0x79u));
  v184 = *(v73 + 4 * (BYTE2(v170) ^ 0x30u));
  v185 = *(v73 + 4 * (BYTE2(v159) ^ 0xEEu));
  v186 = *(v73 + 4 * (BYTE2(v158) ^ 0x79u));
  v187 = *(v74 + 4 * (HIBYTE(v159) ^ 0x18)) ^ *(v73 + 4 * (BYTE2(v160) ^ 0x32u)) ^ *(v75 + 4 * (v158 ^ 0x2Eu)) ^ v178;
  v188 = *(v74 + 4 * v171) ^ v176;
  v189 = *(v74 + 4 * (HIBYTE(LODWORD(STACK[0x588])) ^ 0xA0u));
  v190 = *(v74 + 4 * (HIBYTE(v143) ^ 0x24));
  v191 = *(v74 + 4 * (HIBYTE(v147) ^ 0x7E));
  v192 = *(v75 + 4 * (v170 ^ 0xF0u)) ^ v188 ^ v185;
  v193 = *(v74 + 4 * (HIBYTE(v170) ^ 0x1A));
  v194 = (*(v74 + 4 * (HIBYTE(v133) ^ 0x42)) ^ v172 ^ *(v75 + 4 * LODWORD(STACK[0x598])) ^ 0x2E974FDE ^ v182) + 1518721644;
  v195 = ((2 * v194) & 0xEFFBBEE2) + (v194 ^ 0xF7FDDF71);
  v196 = v177 ^ *(v74 + 4 * (HIBYTE(v160) ^ 0x24)) ^ *(v75 + 4 * (v159 ^ 0xDDu)) ^ v184;
  v197 = ((2 * v187) & 0xB26FCEFC ^ 0xB26C80E4) + (v187 ^ 0xA001A70D);
  v198 = (v189 ^ v180 ^ *(v75 + 4 * (v133 ^ 0x2Eu)) ^ v173 ^ 0x79364073) - 1481444518;
  v199 = ((2 * v198) & 0xF7F1BFDE) + (v198 ^ 0x7BF8DFEF);
  v200 = ((2 * v192) & 0xFF7F797C ^ 0x5D2E193C) + (v192 ^ 0xD128F360);
  v201 = v186 ^ v179 ^ *(v75 + 4 * (v160 ^ 0xE9u)) ^ v193;
  v202 = (v199 - v197 - ((2 * (v199 - v197) - 1166143714) & 0x8EC92180) + 614701135) ^ 0x67A62B4D;
  v203 = ((-591949627 * v202) ^ 0xE7BEFE7F) + ((-1183899254 * v202) & 0xCF7DFCFE);
  v204 = (v183 ^ *(v75 + 4 * (v143 ^ 0xE9u)) ^ v191 ^ 0xD94BFAFC ^ v174) + 172216652;
  v205 = (v181 ^ v190 ^ v175 ^ 0x124BD4EA ^ *(v75 + 4 * LODWORD(STACK[0x5A8]))) + 1772573034;
  v206 = ((2 * v196) & 0xF3FEEAB4 ^ 0x2096A894) + (v196 ^ 0xEBB4A1B0);
  v207 = ((2 * v201) & 0x2EEDFFC4 ^ 0x2285F5C0) + (v201 ^ 0xCE3D051E);
  v208 = ((2 * v204) & 0x93A7ABEC) + (v204 ^ 0x49D3D5F6) - v207;
  v209 = ((2 * v205) & 0xEFEEFD72) + (v205 ^ 0xF7F77EB9) - v206;
  v210 = (v209 - ((2 * v209 + 68152642) & 0xA635A394) + 1428342891) ^ 0x2D374FD4;
  v211 = ((1187926365 * v210) ^ 0x7E5B87FE) + ((-1919114566 * v210) & 0xFCB70FFC);
  v212 = (v208 - ((2 * v208 + 457593816) & 0x608201C8) + 2112105168) ^ 0xF8D93683;
  v213 = ((1752055319 * v212) ^ 0x3CF9E71E) + ((1356626990 * v212) & 0x79F3CE3C);
  v214 = v213 + v211 - ((2 * (v213 + v211) - 1990909496) & 0x95F396DE) - 1885053869;
  v215 = (v195 - v200 - ((2 * (v195 - v200) + 260291226) & 0x5AE70718) - 1254792999) ^ 0xBCDE33F0;
  v216 = 829471159 * v215 - ((1658942318 * v215) & 0xCE388640);
  v217 = v203 - v211;
  v218 = ((v203 + 406913409) ^ (v216 + 1729905440) ^ 0x671C4320) - 2 * (((v203 + 406913409) ^ (v216 + 1729905440) ^ 0x671C4320) & 0x7D4B0A5C ^ ((v203 + 406913409) ^ (v216 + 1729905440)) & 0x10) - 45413812;
  v219 = (2 * (((v214 ^ 0x4AF9CB6F) & (v218 ^ 0xFD4B0A4C)) - ((2 * ((v214 ^ 0x4AF9CB6F) & (v218 ^ 0xFD4B0A4C))) & 0xCCB674E)) - 1932826802) ^ 0x8CCB674E;
  v220 = v213 - 1023010590 + (v218 ^ 0xFD4B0A4C);
  v221 = ((v219 - ((2 * v219) & 0x2BF9C5CC) + 368894695) ^ 0x15FCE2E7) + (v218 ^ v214 ^ 0xB7B2C123);
  v222 = ((((2 * v214) ^ 0x95F396DE) - ((2 * ((2 * v214) ^ 0x95F396DE)) & 0x4F71700) - 2105832576) ^ 0x7D84747F) + (v221 ^ 0xF677FBA5) + ((2 * v221) & 0xECEFF74A) + 159908956;
  v223 = ((2 * v222) & 0xB57F8FFC) + (v222 ^ 0xDABFC7FE);
  v224 = (v214 ^ 0x4AF9CB6F ^ (v223 + 624965634)) - ((2 * (v214 ^ 0x4AF9CB6F ^ (v223 + 624965634))) & 0x97E33DEE) + 1274126071;
  v225 = v217 + 1073265858 + v223 - 503;
  v226 = v217 + (v220 ^ 0x85204000) - ((2 * v220) & 0xF5BF7FFE) + v225;
  v227 = ((2 * (v224 ^ (v226 - 1923067851))) & 0xFF7F6636 ^ 0x97632426) + (v224 ^ (v226 - 1923067851) ^ 0x344E2DEC);
  v228 = v206 - v227 - 2 * ((v206 - v227 + 2012132228) & 0x535FDACD ^ (v206 - v227) & 1) - 884044208;
  v229 = ~v226 + v197 - ((2 * (~v226 + v197) + 264266780) & 0xB8AD5BB2) - 466165785;
  v230 = v207 - v217 - v227 + 906445483 - ((2 * (v207 - v217 - v227 + 906445483) + 1257804354) & 0x465D52B6) - 928320900;
  v231 = v200 - v225 - ((2 * (v200 - v225) - 1845950022) & 0x88C50286) - 1923152352;
  v232 = *(STACK[0xAD0] + 4 * (BYTE2(v229) ^ 0x56u));
  v233 = *(STACK[0xAD0] + 4 * (BYTE2(v231) ^ 0x62u));
  v234 = *(STACK[0xAD0] + 4 * (BYTE2(v230) ^ 0x2Eu));
  v235 = *(STACK[0xAE0] + 4 * (BYTE1(v228) ^ 0xDAu));
  v236 = *(STACK[0xAE0] + 4 * (BYTE1(v231) ^ 0x81u));
  v237 = *(STACK[0xAE0] + 4 * (BYTE1(v229) ^ 0xADu));
  v238 = *(STACK[0xAF8] + 4 * (HIBYTE(v231) ^ 0xC4));
  v239 = *(STACK[0xAF8] + 4 * (HIBYTE(v228) ^ 0xD3));
  v240 = *(STACK[0xAF8] + 4 * (HIBYTE(v230) ^ 0x23));
  v241 = *(STACK[0xAC8] + 4 * (v230 ^ 0x5Bu));
  v242 = *(STACK[0xAC8] + 4 * (v229 ^ 0xD9u));
  v243 = *(STACK[0xAC8] + 4 * (v228 ^ 0xCCu));
  v244 = STACK[0x5A0];
  v245 = STACK[0x478];
  v246 = STACK[0x520];
  v247 = LODWORD(STACK[0x478]) ^ LODWORD(STACK[0x5A0]) ^ LODWORD(STACK[0x520]);
  v248 = v247 ^ *(STACK[0xAC8] + 4 * (v231 ^ 0x43u)) ^ *(STACK[0xAF8] + 4 * (HIBYTE(v229) ^ 0x5C)) ^ *(STACK[0xAD0] + 4 * (BYTE2(v228) ^ 0x5Fu)) ^ *(STACK[0xAE0] + 4 * (BYTE1(v230) ^ 0xA9u));
  v249 = ((((2 * HIWORD(v248)) ^ 0x18) - ((v248 >> 14) & 0x8C) + 198) & 0xE4 ^ 0xC4) + (HIWORD(v248) ^ 0x9FFE);
  LOBYTE(v249) = (BYTE2(v248) ^ 0x8C) + (v249 ^ 0x3E) + ((2 * v249) & 0x7C) - 62;
  LOBYTE(v216) = ((v249 - ((2 * v249) & 0xA0) - 48) ^ 0x2F) + byte_1002629D0[BYTE2(v248) ^ 9];
  *(STACK[0x590] + 5) = (v216 - ((2 * v216) & 8) + 52) ^ 0x40;
  v250 = (v238 ^ ((v238 ^ 0x1C5DD888) - ((2 * (v238 ^ 0x1C5DD888) + 2) & 0xC9721232) - 457635558) ^ 0xAD96020D ^ ((v235 ^ 0x52F57F06) - (v235 ^ v238 ^ 0xB1575871) - ((2 * ((v235 ^ 0x52F57F06) - (v235 ^ v238 ^ 0xB1575871))) & 0x551A58C6) - 1433588637)) + (v235 ^ 0x52F57F06);
  v241 ^= 0x4FA69832u;
  v251 = v232 ^ 0x7D59D511 ^ (v250 - ((2 * v250) & 0x809129DE) - 1068985105);
  v252 = (v251 & v241) - ((2 * (v251 & v241)) & 0x1DCE048);
  v253 = v233 & 8 ^ 0xEFEFFD1F;
  v254 = v240 ^ 0xE3A22777;
  v255 = ((2 * (v254 - (v233 ^ 0x5EB36689 ^ v240))) & 0x33D3FFAE) + ((v254 - (v233 ^ 0x5EB36689 ^ v240)) ^ 0x99E9FFD7);
  v256 = ((v251 + v241) ^ 0xF47BFFF5) + ((2 * (v251 + v241)) & 0xE8F7FFEA) + 193200140 + ((((2 * v252 + 31252552) ^ 0x1DCE048) - 2 * (((2 * v252 + 31252552) ^ 0x1DCE048) & 0x58EEBABE ^ (2 * v252 + 31252552) & 0x10) + 1492040366) ^ 0xA7114551);
  v257 = v256 - ((2 * v256) & 0x53B4F87C) - 1445299138;
  v258 = (v255 + 9) & (v253 + 269484777);
  v259 = v253 + 2109291519;
  v260 = 1570321965 - v253;
  if (v258)
  {
    v261 = v260;
  }

  else
  {
    v261 = v259;
  }

  v262 = (v233 & 0xFFFFFFF7 ^ ((v233 ^ 0x42EEBE01) - ((2 * (v233 ^ 0x42EEBE01) + 2) & 0x57D76FAA) + 736868310) ^ 0x266B1E6D ^ (v261 + v255 - ((2 * (v261 + v255) + 1893305894) & 0x6123D09C) - 1459703967)) + v254;
  v263 = v237 ^ v246 ^ v243 ^ (v262 - ((2 * v262) & 0x6BAF73BE) + 903330271);
  v264 = (v263 & 0x6AD6B513 ^ 0xB7297AEC) + 909750529 + ((2 * ((v263 & 0x6AD6B513 ^ 0xB7297AEC) & 0x2210B102 ^ (v263 | 0x7FFFFFFD))) ^ 0x28520005);
  v265 = (v264 & 0x39171325 ^ v263 & 0x11010224 | v264 & 0xC6E8ECDA ^ v263 & 0x842848C8) ^ 0x2319F94C;
  v266 = v265 - 2 * (v265 & 0x2F256E9E ^ v263 & 2) - 1356501348;
  v267 = v246 ^ v245 ^ v236 ^ v239 ^ v234 ^ v242;
  v268 = v247 ^ v257;
  v269 = -363731984 - (v244 & 0x10000 | 0x7528F1F8);
  if ((v244 & 0x10000 & ~v267) == 0)
  {
    v269 = v244 & 0x10000 | 0x7528F1F8;
  }

  v270 = ((v267 ^ 0xB8E99A90) - 1965617656 + v269 - ((2 * ((v267 ^ 0xB8E99A90) - 1965617656 + v269)) & 0x47AFB65E) - 1546134737) ^ v244 & 0xFFFEFFFF;
  HIDWORD(v271) = v268 ^ 0x1F052;
  LODWORD(v271) = v268 ^ 0xACB00000;
  v272 = (v271 >> 18) - ((2 * (v271 >> 18)) & 0x8746E6C6) + 1134785379;
  v273 = (v245 ^ v244 ^ 0x20C38EBB ^ v266) - ((2 * (v245 ^ v244 ^ 0x20C38EBB ^ v266)) & 0x9AE8C48E) + 1299472967;
  HIDWORD(v271) = v272 ^ 0x2E17;
  LODWORD(v271) = v272 ^ 0xFB010000;
  v274 = (v271 >> 14) - ((2 * (v271 >> 14)) & 0x2A87F2BE);
  v275 = v274 + 356776287;
  v276 = -356776288 - v274;
  v277 = (((~(2 * v248) | 0xFFFFFFE7) + (v248 ^ 0xFFFFFFF3)) << 26) - 1275068416;
  v278 = ((v248 >> 6) + 194454532 + (v277 ^ 0xB0000000) - ((2 * v277) & 0x10000000)) ^ 0xB972404;
  v279 = v278 - 2 * (v278 & 0x185FBD7D ^ (v248 >> 6) & 1) + 408927612;
  v280 = STACK[0x5C0];
  v280[15] = (byte_100284B80[v273 ^ 0x39] - ((2 * byte_100284B80[v273 ^ 0x39] + 118) & 0xE4) + 45) ^ 0xB0;
  HIDWORD(v271) = v279 ^ 0xAB900D;
  LODWORD(v271) = v279 ^ 0xAC000000;
  v280[10] = (9 * byte_100285900[BYTE1(v270) ^ 0xC7] + ((18 * byte_100285900[BYTE1(v270) ^ 0xC7]) & 0x6C ^ 0xBF) + 87) ^ 0x4E;
  LOBYTE(v274) = byte_100284B80[((v271 >> 26) - ((2 * (v271 >> 26)) & 0xAFD03AFE) + 1474829695) ^ 0x6AE3410BLL];
  LOBYTE(v279) = (2 * v274 - 2 * ((2 * v274 + 16) & 0x3E ^ (2 * v274) & 4) - 53) ^ 0x3B;
  LOBYTE(v274) = v274 + ((v279 - ((2 * v279 + 12) & 0x28) + 26) & 0x26 ^ 0xDB) - 49;
  v280[7] = (v274 ^ 0xFE) + ((2 * v274) & 0xFC) + 2;
  v280[8] = byte_1002630E0[HIBYTE(v270) ^ 0x4DLL] ^ 0xCE;
  LOBYTE(v274) = 9 * byte_100285900[BYTE1(v275) ^ 0x58];
  v280[2] = (v274 - 2 * ((v274 + 32) & 0x57 ^ v274 & 1) - 10) ^ 0x5E;
  v280[12] = byte_1002630E0[HIBYTE(v273) ^ 0x90] ^ 0x2F;
  v280[3] = byte_100284B80[v275 ^ 0x96] + 59;
  v281 = (((2 * HIWORD(v275)) ^ 0xBEA4) - ((2 * ((2 * HIWORD(v275)) ^ 0xBEA4)) & 0xCC) - 26) ^ 0x38;
  LOBYTE(v281) = byte_1002629D0[BYTE2(v275) ^ 0x38] - 2 * v281 + v281;
  v280[1] = (v281 + ((2 * ((v281 + 61) & 0x4B ^ v281 & 1)) ^ 0xFC) + 9) ^ 0x46;
  v282 = HIBYTE(v276) ^ 0xA0;
  v283 = v282 - (HIBYTE(v276) ^ 0x431DA4BF) - ((2 * (v282 - (HIBYTE(v276) ^ 0x431DA4BF))) & 0x1C42B3E) + 1139742111;
  v280[11] = (((2 * byte_100284B80[v270 ^ 0xBFLL] + 118) & 0xB2) - byte_100284B80[v270 ^ 0xBFLL] + 107) ^ 0x25;
  *v280 = byte_1002630E0[((v283 ^ 0xBC10EA61) + v282 - ((2 * ((v283 ^ 0xBC10EA61) + v282)) & 0x88334050) - 1004953560) ^ 0x87040419] ^ 0xC0;
  v284 = ((((2 * HIWORD(v270)) ^ 0xBB6A) - ((2 * ((2 * HIWORD(v270)) ^ 0xBB6A)) & 0x7C) - 65) ^ 0x32) + byte_1002629D0[BYTE2(v270) ^ 0x89] + 37;
  v280[9] = (((2 * v284) & 0xAE) + (v284 ^ 0xD7) - 2 * ((((2 * v284) & 0xAE) + (v284 ^ 0xD7) + 66) & 0xCF ^ ((((((2 * BYTE2(v270)) ^ 0x6A) - ((2 * ((2 * BYTE2(v270)) ^ 0x6A)) & 0x7C) - 65) ^ 0x32) + byte_1002629D0[BYTE2(v270) ^ 0x89] + 37) ^ 0xD7) & 1) + 16) ^ 0xA1;
  v280[6] = (9 * byte_100285900[BYTE1(v248) ^ 0x3ELL] + 32) ^ 0xA2;
  LOBYTE(v284) = 9 * byte_100285900[BYTE1(v273) ^ 0xB7];
  v280[14] = (v284 - 2 * (((v284 & 0x7C) + 32) ^ v284 & 8) - 108) ^ 0xE8;
  v285 = byte_1002629D0[BYTE2(v273) ^ 0x8CLL];
  v286 = ((((2 * HIWORD(v273)) ^ 0x9AE8) - 2 * (((2 * HIWORD(v273)) ^ 0x9AE8) & 0x1E ^ (2 * HIWORD(v273)) & 0x12) - 116) ^ 0x76) + 114;
  v287 = v285 + (v286 ^ 0x8B) - ((2 * v286) & 0xE8) + 1;
  v280[13] = (v287 - ((2 * v287 + 70) & 0xCF) - 118) ^ 0xD3;
  v280[4] = byte_1002630E0[HIBYTE(v248) ^ 0x85] ^ 0xDA;
  LODWORD(STACK[0xADC]) = 0;
  return sub_100087EE4();
}

uint64_t sub_10007E7C4(uint64_t a1)
{
  v5 = v2 + v3 + 4;
  v6 = (LODWORD(STACK[0x4B0]) ^ 0xE3BFCCE7 ^ v5) + (((v1 ^ 0xBAFC50BC) - ((2 * (v1 ^ 0xBAFC50BC) + 467653544) & v4) + 1248015136) ^ 0x8C73494C);
  v7 = -1426016813 * ((((v6 - ((2 * v6) & 0x660B09BA) - 1291483917) & 0xFFFFFFFE) - 22) ^ 0x9C2F0FE9);
  v8 = v7 - ((v7 << (((v2 + v3 + 35) | 5) + 124)) & 0x2EFC2312) - 1753345655;
  v9 = ((LODWORD(STACK[0x538]) ^ LODWORD(STACK[0x540]) ^ v8 ^ LODWORD(STACK[0x568])) & 0xD2 | (LODWORD(STACK[0x538]) ^ LODWORD(STACK[0x540]) ^ v8 ^ LODWORD(STACK[0x528])) & 0x2D) ^ 0xCB;
  v10 = dword_10025C8D0[(v9 + 287696728 - ((2 * v9) & 0xB0)) ^ 0x1125E760];
  v11 = LODWORD(STACK[0x580]) ^ LODWORD(STACK[0x480]) ^ LODWORD(STACK[0x428]) ^ 0xE834E546 ^ (v10 - ((2 * v10 + 513285418) & 0x3CFCC0E8) + 1305112329);
  *(a1 + 4 * ((v7 - ((v7 << (((v5 + 31) | 5) + 124)) & 0x12) - 119) ^ 0x89u)) = (v11 + 760130044 - ((2 * v11) & 0x5A9D5CF0) + 1148) ^ 0xE77DA8C1;
  return (*(&off_1002D7880 + v5))();
}

uint64_t sub_10007EA40@<X0>(int a1@<W8>)
{
  v5 = v3;
  v6 = v3 + 1;
  v7 = *(&xmmword_100313AB8 + (v5 - 1778559433));
  v8 = (*(&xmmword_100313AB8 + (v6 - 1778559433)) ^ 0xCC50EA91 ^ (1566083941 * (v7 ^ v1 ^ (v7 >> 30)) - ((-1162799414 * (v7 ^ v1 ^ (v7 >> 30))) & 0xA922FA94) - 728662710)) - v5;
  *(&xmmword_100313AB8 + (v6 - 1778559433)) = v8 - ((2 * v8 + 335893392) & 0x31832FB6) - 2101067357;
  v9 = 1614251083 * ((v4 - 192) ^ 0xB42ADBDF68196DE0);
  v10 = (a1 + 1108035586) ^ v9;
  *(v4 - 152) = 228644971 - v9;
  *(v4 - 192) = v10;
  *(v4 - 184) = -1614251083 * ((v4 - 192) ^ 0x68196DE0);
  *(v4 - 176) = (v5 - 1549914460) ^ v9;
  *(v4 - 160) = ((a1 + 1108035586) ^ 0x74) + v9;
  *(v4 - 168) = v10 ^ 0x49;
  *(v4 - 164) = -1345307945 - v9 + a1;
  v11 = (*(v2 + 8 * (a1 + 71)))(v4 - 192);
  return (*(&off_1002D7880 + *(v4 - 188)))(v11);
}

uint64_t sub_10007EC38()
{
  v2 = v0 ^ 0x2A1797DF;
  LODWORD(xmmword_100313AB8) = (v0 ^ 0xB2D60810) + (((STACK[0x590] - v0) | (v0 - STACK[0x590])) >> 31);
  (*(v1 + 8 * (v0 ^ 0x2A1797A3)))(STACK[0x5B0]);
  v3 = STACK[0x5C0];
  v4 = STACK[0x580];
  v5 = LODWORD(STACK[0x598]);
  v6 = vld1q_dup_f32(&xmmword_100313AB8);
  v7.i64[0] = 0x8000000080000000;
  v7.i64[1] = 0x8000000080000000;
  v8.i64[0] = 0x100000001;
  v8.i64[1] = 0x100000001;
  v9.i32[0] = DWORD1(xmmword_100313AB8);
  v9.i32[1] = *(&xmmword_100313AB8 + (((v2 ^ 0xCEBu) + 35) ^ 0x520));
  v9.i32[2] = HIDWORD(xmmword_100313AB8);
  v10 = vextq_s8(v6, v9, 0xCuLL);
  v11 = v9;
  v11.i32[3] = dword_100313AC8[0];
  v12 = veorq_s8(vorrq_s8(vandq_s8(v11, vnegq_f32(v8)), vandq_s8(v10, v7)), vdupq_n_s32(0x18C197DAu));
  v13.i32[0] = *(&STACK[0x15A8] + ((BYTE4(xmmword_100313AB8) & 1) == 0));
  v13.i32[1] = *(&STACK[0x15A8] + ((*(&xmmword_100313AB8 + (((v2 ^ 0xCEBu) + 35) ^ 0x520)) & 1) == 0));
  v13.i32[2] = *(&STACK[0x15A8] + (~HIDWORD(xmmword_100313AB8) & 1));
  v13.i32[3] = *(&STACK[0x15A8] + ((dword_100313AC8[0] & 1) == 0));
  xmmword_100313AB8 = veorq_s8(veorq_s8(veorq_s8(xmmword_1003140EC, v13), vdupq_n_s32(0x7058AA24u)), vshrq_n_u32(vaddq_s32(vsubq_s32(v12, vandq_s8(vaddq_s32(v12, v12), vdupq_n_s32(0x7F320C5Cu))), vdupq_n_s32(0xBF99062E)), 1uLL));
  return (*(&off_1002D7880 + (v2 ^ 0xCEB)))();
}

uint64_t sub_10007ED38()
{
  v4 = v2;
  v5 = v2 + 1;
  v6 = *(&xmmword_100313AB8 + (v4 - 654788648));
  v7 = (*(&xmmword_100313AB8 + (v5 - 654788648)) ^ 0x1E8FBC93 ^ (1566083941 * (v6 ^ 0x60DD60EF ^ ((v6 >> 30) | 0x781CF734)) - ((179377866 * (v6 ^ 0x60DD60EF ^ ((v6 >> 30) | 0x781CF734))) & 0xC9C5690) + 105786184)) - v4;
  *(&xmmword_100313AB8 + (v5 - 654788648)) = v7 - ((2 * v7 + 235835470) & 0x31832FB6) + 1070129154;
  v8 = (v4 - 452965916);
  v9 = 734352403 * ((0x117307F3C66D9752 - ((v3 - 192) | 0x117307F3C66D9752) + ((v3 - 192) | 0xEE8CF80C399268ADLL)) ^ 0xF6764E18E4E6B4A3);
  *(v3 - 192) = (v1 - 685528319) ^ v9;
  *(v3 - 152) = v9 + 201822730;
  v10 = v9 + v1 - 685528319;
  *(v3 - 176) = -1174362589 - v9 + v1;
  *(v3 - 172) = v10 - 9;
  *(v3 - 168) = v10 + 30;
  *(v3 - 164) = 1 - v9;
  *(v3 - 184) = v8 + v9;
  v11 = (*(v0 + 8 * (v1 + 83)))(v3 - 192);
  return (*(&off_1002D7880 + *(v3 - 160)))(v11);
}

uint64_t sub_10007EF40@<X0>(int a1@<W8>)
{
  v3 = (a1 - 1712841837) & 0x3C004CB5;
  LODWORD(xmmword_100313AB8) = (((STACK[0x528] - a1) | (a1 - STACK[0x528])) >> (((a1 - 109) & 0xB5) + 11)) ^ 0x98C197DB;
  (*(v1 + 8 * (a1 ^ 0x2A1797A3)))(STACK[0x590]);
  v4 = vld1q_dup_f32(v2);
  v5.i64[0] = 0x8000000080000000;
  v5.i64[1] = 0x8000000080000000;
  v6.i64[0] = 0x100000001;
  v6.i64[1] = 0x100000001;
  v7.i64[0] = *(v2 + 4);
  v7.i32[2] = *(v2 + 12);
  v8 = vextq_s8(v4, v7, 0xCuLL);
  v9 = v7;
  v9.i32[3] = *(v2 + 16);
  v10 = veorq_s8(vorrq_s8(vandq_s8(v9, vnegq_f32(v6)), vandq_s8(v8, v5)), vdupq_n_s32(0x18C197DAu));
  v11.i32[0] = *(&STACK[0x15D8] + ((*(v2 + 4) & 1) == 0));
  v11.i32[1] = *(&STACK[0x15D8] + (~*(v2 + 8) & 1));
  v11.i32[2] = *(&STACK[0x15D8] + (~*(v2 + 12) & 1));
  v11.i32[3] = *(&STACK[0x15D8] + (~v9.i32[3] & 1));
  *v2 = veorq_s8(veorq_s8(veorq_s8(*(v2 + 4 * ((v3 - 959) ^ 0x5D8)), v11), vdupq_n_s32(0xB5241EFu)), vshrq_n_u32(vaddq_s32(vsubq_s32(v10, vandq_s8(vaddq_s32(v10, v10), vdupq_n_s32(0x343E99D4u))), vdupq_n_s32(0x9A1F4CEB)), 1uLL));
  return (*(&off_1002D7880 + v3 - 959))();
}

uint64_t sub_10007EFE4()
{
  *v2 = 1714769699;
  *(v2 + 48) = 0;
  *(v2 + 56) = -654643544;
  *(v2 + 64) = 0x99187B47AA1D2C2;
  *(v2 + 72) = 1073011353;
  *(v2 + 8) = HIBYTE(v3) ^ 0x35;
  *(v2 + 9) = BYTE2(v3) ^ 0x4F;
  *(v2 + 10) = (v1 - 65) ^ BYTE1(v3) ^ 0x5C;
  *(v2 + 11) = v3 ^ 9;
  *(v2 + 92) = v4;
  *(v2 + 96) = v0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 997379242;
  *(v2 + 120) = 0x5D683D8EF4EDE1E1;
  *(v2 + 136) = 0;
  *(v2 + 144) = -1793963492;
  *(v2 + 128) = 0;
  return (*(v5 + 8 * (v1 ^ (249 * ((v0 - 2036467816) < 8)))))();
}

uint64_t sub_10007F10C@<X0>(int a1@<W8>)
{
  STACK[0x5B0] = v3;
  STACK[0x5B8] = v2;
  *(v5 + 4) = dword_100265214[a1];
  v6 = (v1 + 551) | 0x320;
  return (*(v4 + 8 * ((((v6 ^ 0x727) - 2055058883 - 2 * (v6 ^ 0x727) + 480 >= (((v6 - 1061) | 0x69) ^ 0x85824F76)) * ((v6 ^ 0x44C) - 772)) ^ v6)))(1829, 105, 1100, 840, 2497197693, 2629, 216, -287588614);
}

uint64_t sub_10007F22C()
{
  v8 = (v0 - 57649472) & 0x36FAB6F;
  v9 = (*(v1 + 8 * (v0 ^ 0x968)))();
  v10 = (v8 - 459) | 0x40u;
  *(v3 + v5 + v10 - 287588614) = (v9 - ((v8 - 45) & (2 * v9)) + 31) ^ 0xD8;
  return (*(&off_1002D7880 + (((((17 * (v10 ^ v2)) ^ v6) + v3 == 287588150) * ((v10 - v4) ^ v7)) ^ v10)))(1829, 105, 1100, 840, 2497197693, 2629, 216, -287588614);
}

uint64_t sub_10007F3C0()
{
  v2 = 10 * (v0 ^ 0x99);
  STACK[0x990] = 0xD5FE64C440EAF89;
  v3 = (*(v1 + 8 * (v2 + 1829)))(21, 0x100004077774924);
  STACK[0x798] = v3;
  return (*(&off_1002D7880 + (((v3 == 0) * (((v2 - 858781051) & 0x332FF777) - 814)) ^ v2)))();
}

uint64_t sub_100080100(_BYTE *a1)
{
  v5 = STACK[0x750] + 16;
  v6 = (*(v1 + 8 * (v2 ^ 0xB21)))(&unk_1002597F0, v5, 16);
  *a1 = ((v3[4] & 0x7F ^ 0xF4) + (((v2 - 90) & 0xCF | (16 * ((v3[4] & 8) != 0))) ^ 0x38) - 119) ^ 0x88;
  a1[1] = v3[12] ^ (v2 + 118);
  a1[2] = v3[13] ^ 0xC7;
  a1[3] = v3[14] ^ 0xC7;
  a1[4] = v3[15] ^ 0xC7;
  a1[5] = v3[16] ^ 0xC7;
  a1[6] = v3[17] ^ 0xC7;
  a1[7] = v3[18] ^ 0xC7;
  a1[8] = v3[19] ^ 0xC7;
  a1[9] = v3[20] ^ 0xC7;
  a1[10] = v3[21] ^ 0xC7;
  a1[11] = v3[22] ^ 0xC7;
  a1[12] = v3[23] ^ 0xC7;
  a1[13] = v3[24] ^ 0xC7;
  a1[14] = v3[25] ^ 0xC7;
  a1[15] = v3[26] ^ 0xC7;
  a1[16] = v3[27] ^ 0xC7;
  a1[17] = v3[8] ^ 0x70;
  a1[18] = v3[9] ^ 0x70;
  a1[19] = v3[10] ^ 0x70;
  a1[20] = v3[11] ^ 0x70;
  v7 = STACK[0x798] + 1;
  v8 = STACK[0x948];
  STACK[0xAA8] += 32;
  LODWORD(STACK[0xADC]) = 0;
  STACK[0xAB8] = v7;
  STACK[0xAC0] = v8;
  return (*(&off_1002D7880 + ((2 * (v5 != v8)) | (8 * (v5 != v8)) | v2)))(v6);
}

uint64_t sub_1000802B8()
{
  if (v1)
  {
    v5 = v0 == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = !v5 && v4 != 0;
  return (*(v2 + 8 * ((v7 * (((4 * v3) ^ 0x1154) - 546)) ^ v3)))();
}

void sub_100080358(uint64_t a1@<X8>)
{
  (*(v1 + 8 * (v2 ^ 0x7C)))(a1);
  v3 = STACK[0x710];
  v4 = *(&off_1002D7880 + v2 + 84);
  JUMPOUT(0x100080380);
}

uint64_t sub_100080390()
{
  v7 = &STACK[0x15E0] + v0;
  *v7 = *v6;
  v7[1] = v4[17];
  v7[2] = v4[18];
  v7[3] = v4[19];
  v7[4] = v4[20];
  v7[5] = v4[21];
  v7[6] = v4[22];
  v7[7] = v4[23];
  v7[8] = v4[24];
  v7[9] = v4[25];
  v7[10] = v4[26];
  v7[11] = v4[27];
  v7[12] = v4[28];
  v7[13] = v4[29];
  v7[14] = v4[30];
  v7[15] = v4[31];
  *(v7 + 2) = *v6;
  *(v7 + 3) = *(v4 + 3);
  if (v2)
  {
    v8 = v1 == 0;
  }

  else
  {
    v8 = 1;
  }

  v10 = !v8 && v7 != 0;
  return (*(v3 + 8 * ((v10 * (((4 * ((v5 + 367) | 7)) ^ 0x1154) - 546)) ^ ((v5 + 367) | 7))))();
}

uint64_t sub_100080474()
{
  v2 = v0[2];
  v3 = v0[4] ^ 0x4BLL;
  LODWORD(STACK[0xADC]) = 289547597;
  LODWORD(v2) = (v2 ^ 0xFFFFFFD0) + byte_1002647F0[v2 ^ 0xE8] - 19;
  LODWORD(v2) = (v2 - ((2 * v2) & 0xD0) - 24) ^ 0x71;
  LODWORD(v2) = ((((~(2 * v2) | 0xFFFFA9) + v2) << 8) + 1629694976) ^ 0x61232B00;
  LODWORD(v3) = byte_10027D1C0[v3] ^ (byte_10027D1C0[v3] >> 3) ^ (byte_10027D1C0[v3] >> 2) ^ 0x3E;
  LODWORD(v3) = (((v3 - ((2 * v3) & 0x9C)) << 24) + 1308622848) ^ 0x4E000000;
  v4 = v0[1] ^ 0x29 ^ byte_1002646F0[v0[1] ^ 0x6ELL];
  v5 = (((v4 - ((2 * v4) & 0x1C)) << 16) + 2081292288) ^ 0x7C0E0000;
  v6 = byte_10027D1C0[*v0 ^ 0x68];
  HIDWORD(v8) = byte_100283650[v0[3] ^ 0x97];
  LODWORD(v8) = (HIDWORD(v8) ^ 0x88888888) << 24;
  v7 = v8 >> 25;
  v9 = v7 ^ 0xF5;
  v10 = (2 * v7) & 0xEA;
  v11 = v0[5];
  v12 = (v2 - ((2 * v2) & 0xEE800) + 1581741128) ^ 0x5E477448 | ((v9 + v10 + 11) - ((2 * (v9 + v10 + 11)) & 0x24) + 350130706) ^ 0x14DE9212;
  v13 = v12 - ((2 * v12) & 0x66C543A0) + 1935843792;
  v14 = v6 ^ (v6 >> 3) ^ (v6 >> 2) ^ 0x3B;
  v15 = ((v14 - ((2 * v14) & 0x7A)) << 24) + 1275068416;
  v16 = v13 ^ 0x7362A1D0 | (v5 - ((2 * v5) & 0x20260000) + 269727197) ^ 0x1013B5DD;
  v17 = byte_10027D1C0[v0[12] ^ 0xB3];
  v18 = byte_1002646F0[v11 ^ 0x3E];
  v19 = ((v11 ^ 0x61) - ((2 * (v11 ^ 0x61) + 2) & 0xFFFFFFC7) - 28) ^ v11 ^ ((v18 ^ 0x56) - (v11 ^ 0xFFFFFFC8 ^ v18) + (~(2 * ((v18 ^ 0x56) - (v11 ^ 0xFFFFFFC8 ^ v18))) | 0xFFFFFFBB) - 93);
  v20 = (v16 - ((2 * v16) & 0x35ABAAF4) + 1523963258) ^ 0x5AD5D57A | (((v15 - 251658240) ^ 0x3D000000) - (((v15 - 251658240) ^ 0x3D000000u) >> 26 << 27) - 55215501) ^ 0xFCB57A73;
  LODWORD(v11) = (2 * ((~(2 * ((v19 ^ 0xFFFFFFDF) & (v18 ^ 0x56))) | 0x11) + ((v19 ^ 0xFFFFFFDF) & (v18 ^ 0x56))) - 16) ^ 0xFFFFFFEE;
  v21 = ((((v11 - ((2 * v11) & 0x70) + 56) ^ 0x38) + (v18 ^ 0xFFFFFF89 ^ v19)) ^ 0x7B) + ((2 * (((v11 - ((2 * v11) & 0x70) + 56) ^ 0x38) + (v18 ^ 0xFFFFFF89 ^ v19))) & 0xF6) - 123;
  v22 = (((v21 - ((2 * v21) & 0x10)) << 16) + 0x80000) ^ 0x80000;
  v23 = v17 ^ (v17 >> 3) ^ (v17 >> 2) ^ 0xD2;
  v24 = (((v23 - ((2 * v23) & 0xFFFFFFDF)) << 24) + 1862270976) ^ 0x6F000000;
  v25 = v24 - ((2 * v24) & 0x44444444) + 577792597;
  LODWORD(v3) = (v22 - ((2 * v22) & 0x229A0000) + 290290859) ^ 0x114D7CAB | (v3 - ((2 * v3) & 0x74000000) + 985357320) ^ 0x3ABB5C08;
  HIDWORD(v8) = byte_100283650[v0[11] ^ 0xA6];
  LODWORD(v8) = (HIDWORD(v8) ^ 0x88888888) << 24;
  v26 = v8 >> 25;
  v27 = v3 - ((2 * v3) & 0x3878BDF8);
  LODWORD(v3) = (v0[14] ^ 0x7E) + byte_1002647F0[v0[14] ^ 0x46] - 19;
  LODWORD(v3) = (v3 - ((2 * v3) & 8) + 4) ^ 0xA3;
  LODWORD(v3) = (((v3 + 15179040 - ((2 * v3) & 0x1A0)) << 8) - 86016) ^ 0xE79BD000;
  LODWORD(v3) = (v3 - ((2 * v3) & 0x6DA0D000) - 1227855784) ^ 0xB6D06858 | v25 ^ 0x22706A55;
  HIDWORD(v8) = byte_100283650[v0[7] ^ 0x4CLL];
  LODWORD(v8) = (HIDWORD(v8) ^ 0x88888888) << 24;
  v28 = (v8 >> 25) - ((2 * (v8 >> 25)) & 0x90);
  v29 = v0[6];
  HIDWORD(v8) = byte_100283650[v0[15] ^ 0x98];
  LODWORD(v8) = (HIDWORD(v8) ^ 0x88888888) << 24;
  v30 = v3 + 1811044044 + (~(2 * v3) | 0x281B5267) + 1;
  v31 = (v27 - 1673765124) ^ 0x9C3C5EFC | (((v28 - 56) ^ 4) - ((2 * ((v28 - 56) ^ 4)) & 0x15C) + 1431227310) ^ 0x554ECBAE;
  LODWORD(v11) = v31 - ((2 * v31) & 0x9036B464);
  v32 = ((v8 >> 25) - 2 * ((v8 >> 25) & 7) - 121) ^ 0x4B;
  v33 = (~(2 * v32) | 0xFFFFFF5F) + v32 - 1559365551;
  v34 = (v30 ^ 0x6BF256CC | v33 ^ 0xA30DF850) - ((2 * (v30 ^ 0x6BF256CC | v33 ^ 0xA30DF850)) & 0xCE045E9E);
  v35 = byte_10027D1C0[v0[8] ^ 0xAELL];
  v36 = byte_1002647F0[v29 ^ 0xA8] + (((v29 ^ 0xFFFFFFFC) + 108) ^ 0xFFFFFFDA) + ((2 * ((v29 ^ 0xFFFFFFFC) + 108)) & 0xFFFFFFB4) + 19;
  v37 = (v36 - ((2 * v36) & 0xC) + ((((2 * v29) ^ 0xFFFFFFF8) + ~(2 * (((2 * v29) ^ 0xFFFFFFF8) & 0xE ^ (2 * v29) & 2)) + 14) & 0xD8 ^ 0xF7) - 121) ^ 5;
  v38 = (((v37 - ((2 * v37) & 0x128)) << 8) - 1763273728) ^ 0x96E69400;
  v39 = v35 ^ (v35 >> 3) ^ (v35 >> 2) ^ 0xDF;
  v40 = (((v39 - 2 * (v39 & 3)) << 24) + 50331648) ^ 0x3000000;
  LODWORD(v2) = (v40 - ((2 * v40) & 0xFBFFFFFF) + 2101466836) ^ 0x7D41D6D4 | (((v26 ^ 0x5A) + ((2 * v26) & 0xB4) - 90) - ((2 * ((v26 ^ 0x5A) + ((2 * v26) & 0xB4) - 90)) & 0xD4) + 555707498) ^ 0x211F6C6A;
  v41 = v2 - ((2 * v2) & 0x52629ACA);
  LODWORD(v2) = byte_1002647F0[v0[10] ^ 0xD8] + (v0[10] ^ 0xFFFFFFE0) - 19;
  LODWORD(v2) = (v2 - ((2 * v2) & 0x4E) - 89) ^ 0xBF;
  LODWORD(v2) = (((v2 - ((2 * v2) & 0x26)) << 8) - 791342336) ^ 0xD0D51300;
  STACK[0xAD0] = 0;
  STACK[0xAF0] = 0;
  STACK[0xAE0] = 0;
  STACK[0xAB0] = 0;
  STACK[0xAF8] = 0;
  STACK[0xAC8] = 0;
  STACK[0xB00] = 0;
  v42 = (v11 + 1209752114) ^ 0x481B5A32 | (v38 - ((2 * v38) & 0x1A6B4400) - 852122977) ^ 0xCD35A29F;
  LODWORD(v3) = v0[9] ^ 0x90 ^ byte_1002646F0[v0[9] ^ 0xF8];
  LODWORD(v3) = (((v3 - ((2 * v3) & 0x170)) << 16) + 968359936) ^ 0x39B80000;
  LODWORD(v3) = (v41 + 691096933) ^ 0x29314D65 | (v3 - ((2 * v3) & 0x3CA60000) - 1638693897) ^ 0x9E5383F7;
  STACK[0x5C0] = v0;
  LODWORD(v3) = (v3 - ((2 * v3) & 0x9E82CB58) + 1329685932) ^ 0x4F4165AC | (v2 - ((2 * v2) & 0x7EB35E00) + 1062842171) ^ 0x3F59AF3B;
  v43 = v0[13] ^ byte_1002646F0[v0[13] ^ 0x5CLL];
  v44 = ((((v43 ^ 0x61) - ((2 * v43) & 0x12C)) << 16) - 1466564608) ^ 0xA8960000;
  v45 = v44 - ((2 * v44) & 0xDFC0000);
  LODWORD(STACK[0x5B8]) = (2 * v20) & 0xBBA83AF0;
  LODWORD(STACK[0x5B0]) = v20 - 573301384;
  LODWORD(STACK[0x598]) = v42 - 2035732708 - ((2 * v42) & 0xD525F4A) + 137;
  LODWORD(STACK[0x5A8]) = (2 * v3) & 0x1DA9860C;
  LODWORD(STACK[0x5A0]) = v3 + 248824582;
  LODWORD(v3) = ((((2 * v33) ^ 0x461BF0A0) - 2 * (((2 * v33) ^ 0x461BF0A0) & 0xBE ^ (2 * v33) & 2) + 189) & 0x18C ^ 0xFFFFFF73) + ((((v34 - 419287217) ^ 0xE7022F4F) + 198) ^ 0x35F6FEEB) + ((2 * (((v34 - 419287217) ^ 0xE7022F4F) + 198)) & 0x6BEDFDD6) - 905379562;
  LODWORD(STACK[0x590]) = v45 + 117318919;
  LODWORD(STACK[0x4B0]) = (v3 - ((2 * v3) & 0xCA83D502) - 448664959) ^ (v45 + 117318919);
  *STACK[0xAC0] = *STACK[0xAB8] + 65;
  return (*(&off_1002D7880 + v1))();
}

uint64_t sub_100081190(uint64_t a1, uint64_t a2, char a3)
{
  v4 = LODWORD(STACK[0x5A0]) - LODWORD(STACK[0x5A8]);
  LODWORD(STACK[0x518]) = v4;
  LODWORD(STACK[0x4E0]) = (v3 - 1204667363) ^ v4;
  v5 = (410093074 - (((410093181 << (v3 - 50)) + 6) & 0x24)) ^ 0x12;
  v6 = *STACK[0xAC0] + ((54 * v5) & 0xDE) + ((-101 * v5) ^ 0x6F) + 80;
  return (*(&off_1002D7880 + ((962 * ((((a3 & 1) - (v3 - 1331)) | (v3 - 1331 - (a3 & 1))) >= 0)) ^ v3)))();
}

uint64_t sub_1000812E0@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W7>, int a4@<W8>)
{
  v6 = a4 + 2068;
  LODWORD(STACK[0x508]) = LODWORD(STACK[0x5B0]) - LODWORD(STACK[0x5B8]);
  v7 = (*STACK[0x5C0] ^ 0xFFFF7FBD) - 1694202964 + ((2 * *STACK[0x5C0]) & 0x17A);
  v8 = (((v7 * ((v6 - 263) ^ 0x3BCC13F) + 661193299) | 0xDC390EAF) - 1105093401 * v7 + 506394495) ^ a3;
  v9 = ((2 * ((v8 ^ 0xC5AFB988) % 0x202)) & 0x73E) + (((v8 ^ 0xC5AFB988) % 0x202) ^ 0x797F7F9F);
  if (v9 - 2038398879 >= 0x101)
  {
    v10 = -1629028745;
  }

  else
  {
    v10 = -1629028488;
  }

  v11 = (((v9 - 409370391 + v10) ^ v8 ^ 0xC5AFB988) + 886659324 - 2 * (((v9 - 409370391 + v10) ^ v8 ^ 0xC5AFB988) & 0x34D958FD ^ ((v9 - 409370391 + v10) ^ v8) & 1)) ^ a2;
  v12 = 2 * (((v11 ^ 0xF771F537) & (a1 ^ v4)) - ((2 * ((v11 ^ 0xF771F537) & (a1 ^ v4))) & 0x12FAF6C8)) - 1829046584;
  v13 = (((v12 ^ 0x92FAF6C8) - 1161431985 - 2 * ((v12 ^ 0x92FAF6C8) & 0x3AC5F45E ^ v12 & 0x10)) ^ 0xBAC5F44F) + (a1 ^ 0xD87460CC ^ v11);
  v14 = v5 + ((2 * v5 - ((4 * v5 - 678923456) & 0x8C8C73F4) + 839545754) ^ 0xB9B9C605) + (v13 ^ 0x7EE7D63D) + ((2 * v13) & 0xFDCFAC7A) + 1996113556;
  v15 = v14 - ((2 * v14) & 0x6FC8369E) - 1209787569;
  v16 = v15 ^ a1;
  v17 = (v15 ^ 0x2ED50B13) + (a2 ^ 0xC3A8ADCB);
  HIDWORD(v18) = v15 ^ 0x2ED50B13;
  LODWORD(v18) = v15;
  v19 = (((v5 - 169730864 + (v15 ^ 0x2ED50B13)) ^ 0x77CFF36D) - 2010116973 + ((2 * (v5 - 169730864 + (v15 ^ 0x2ED50B13))) & 0xEF9FE6DA)) ^ ((v18 >> 30) + 1229546372 - ((2 * (v18 >> 30)) & 0x9292C708));
  v20 = (v17 ^ 0x7FE3EFFA) - 2145644538 + ((2 * v17) & 0xFFC7DFF4);
  v21 = v20 ^ 0xE030EED ^ ((v19 ^ 0x49496384) + 235081453 - 2 * ((v19 ^ 0x49496384) & 0xE030EFF ^ v19 & 0x12));
  v22 = ((v21 + 709196942 - ((2 * v21) & 0x548AF91C)) ^ 0x2A457C8E) + (v16 ^ 0x1D09EE8);
  v23 = v22 - ((2 * v22) & 0x477623EE) - 1548021257;
  v24 = v16 ^ 0x7A99CA33 ^ v23 ^ 0x6CA49ACAu;
  v25 = (((v23 ^ 0x38E85BEA) + v20) ^ 0xE7FF1FFF) + ((2 * ((v23 ^ 0x38E85BEA) + v20)) & 0xCFFE3FFE) + 402710530 + ((((2 * v23) ^ 0x71D0B7D4) - 2114019542 - ((2 * ((2 * v23) ^ 0x71D0B7D4)) & 0x3FD3E54)) ^ 0x7E0160D5);
  return (*(&off_1002D7880 + v6 - 337))(103594875, v24, v25 - 1012355637 - ((2 * v25) & 0x87515B96));
}

uint64_t sub_100081744(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = v7 + (a2 ^ v7) - ((((a2 ^ v7) << ((a4 ^ 0x5F) - 81)) + 2) & 0x5E0B2BF6);
  v10 = *(v8 + (a7 - 210396585));
  if (((v9 + 1) ^ v7) < 3)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = -5 - ((((a2 ^ v7) - 2) ^ 0x7DDFDFBB) - 2111823803 + ((2 * ((a2 ^ v7) - 2)) & 0xFBBFBF76)) % 3;
  }

  return (*(&off_1002D7880 + ((188 * (v11 == 251)) ^ a4)))();
}

uint64_t sub_100081874@<X0>(int a1@<W2>, int a2@<W8>)
{
  LODWORD(STACK[0x5B8]) = v6 ^ 0x395;
  v7 = (v6 ^ 0x395) - 1796619693;
  LODWORD(STACK[0x5C0]) = v7;
  v8 = -2127930437 * (a1 ^ v4) - (((v7 ^ 0x96BD706C) * (a1 ^ v4)) & 0xA66C189C) - 751432626;
  v9 = 312851376 * (a1 ^ v4) - ((625702752 * (a1 ^ v4)) & 0x4390F7E0) + 566787057;
  v10 = (v8 >> 28) ^ 0xD;
  v11 = v10 - (((((v9 ^ 0x21C87BF1) & 0xFFFFFFF0 | (v8 >> 28)) ^ 0xD) - 2 * ((((v9 ^ 0x21C87BF1) & 0xFFFFFFF0 | (v8 >> 28)) ^ 0xD) & 0x1709F6 ^ ((v9 ^ 0x21C87BF1) & 0x10 | (v8 >> 28) & 0x12)) - 2145973788) ^ 0x801709E4);
  v12 = v11 - ((2 * v11) & 0xD59149A6) + 1791534291;
  HIDWORD(v13) = v2;
  LODWORD(v13) = -629302695 * v3 - 1300159408;
  v14 = ((2 * (v13 >> 1)) & 0xEFFFFFF6) + ((v13 >> 1) ^ 0x77FFFFFB);
  v15 = (v9 ^ ((v9 ^ 0xDE37840E) - ((2 * (v9 ^ 0xDE37840E) + 2) & 0x7C4A9F00) + 1042632580) ^ 0x752590A1 ^ v12) + v10;
  v16 = ((2 * v15) & 0x72EE7B9C) + (v15 ^ 0xB9773DCE);
  v17 = (((-1162960896 * v5 - ((1969045504 * v5) & 0x88E84000) - 999020414) ^ 0xC4742882) & 0xFFFFE000 | ((-149039755 * v5 - ((-298079510 * v5) & 0xBE4B96D4) - 551171222) >> 19)) ^ 0x1BE4;
  v18 = 680871833 * a2 - ((1361743666 * a2) & 0xBBB4110C) - 572913530;
  v19 = -1790469888 * a2 - ((177156608 * a2) & 0x19068400) + 209928954;
  v20 = v19 & 0xEA06C500;
  v21 = (v17 - ((2 * v17) & 0x5BB72136) + 769364123) ^ 0x2DDB909B ^ (v16 + 1183367730);
  v22 = (v19 & 0x15F93A00 | HIBYTE(v18) & 7) ^ 0x4810205;
  v23 = (v22 - 2 * (v22 & 0x5580007 ^ HIBYTE(v18) & 2) - 983940627) ^ 0xC55A41ED | (((HIBYTE(v18) & 0xF8 | v20) ^ 0x80240D8) - ((2 * ((HIBYTE(v18) & 0xF8 | v20) ^ 0x80240D8)) & 0x44080180) + 595927745) ^ 0x238522C1;
  v24 = ((2 * v23) & 0xBBBEEFE6) + (v23 ^ 0x5DDF77F3);
  v25 = (v21 - ((2 * v21) & 0xFABBA3CA) + 2103300581) ^ 0x7D5DD1E5;
  v26 = v24 + ((v14 - 2013265920 + v25 + 5) ^ 0x6B7CCDCB) + ((2 * (v14 - 2013265920 + v25 + 5)) & 0xD6F99B96) - 1079015746;
  v27 = -1758564167 * v26 - 2 * ((-1758564167 * v26 + 716896868) & 0x3E65298F ^ (-1758564167 * v26) & 1) + 689972210;
  v28 = ((-1551892480 * v26 - 838860801) | 0x5AFFFFFF) + 775946240 * v26 - 343042524;
  v29 = ((1087186846 * v24 + 926348037) | 0xB5255743) - 543593423 * v24 + 164747996;
  v30 = ((2 * ((v28 ^ 0x528D9623) & 0xFFC00000 | (v27 >> 10))) & 0xBEFFBCBE ^ 0x1F3094) + (((v28 ^ 0x528D9623) & 0xFFC00000 | (v27 >> 10)) ^ 0x5F704715);
  HIDWORD(v13) = v15;
  LODWORD(v13) = 388417947 * v16 + 1722996294;
  v31 = ((-882800640 * v24 - ((-1765601280 * v24 + 1214763008) & 0xE0D5F000) + 345956915) ^ 0xF06AFA33) & 0xFFFFF800 | (v29 >> 21);
  v32 = ((2 * v31) & 0xAFFBD97E ^ 0x856) + (v31 ^ 0xD7FDE994);
  LOBYTE(v31) = (117 * v5 - ((-22 * v5) & 0xD4) + 106) & 0xD;
  v33 = ((1364249360 * v14 - ((-1566468576 * v14 + 757591712) & 0xD8E5E000) - 2096699565) ^ 0x6C72F003) & 0xFFFFFFF0 | ((353701041 * v14 - ((707402082 * v14 - 489521430) & 0xBE3AB1E0) - 796485531) >> 28);
  v34 = ((2 * v33) & 0xF3EE7E7E ^ 0xA) + (v33 ^ 0xF9F73F3A);
  v35 = -1778651385 * v32 - ((737664526 * v32 + 2072406926) & 0x6B1C475A) + 1934711156;
  v36 = 805203409 * v34 - ((1610406818 * v34 - 1419045598) & 0xDA68DE1E) + 1122630048;
  v37 = v32 - v34 + ((v13 >> 1) ^ 0xAEF75FE9) + ((2 * (v13 >> 1)) & 0x5DEEBFD2) - v30;
  v38 = 1229785171 * v30 - ((312086694 * v30 + 571072102) & 0x5ECF1130) - 1066633269;
  v39 = ((v36 ^ 0xED346F0F) >> (v31 ^ 8)) - ((2 * ((v36 ^ 0xED346F0F) >> (v31 ^ 8))) & 0x944C393C) + 1244011678;
  v40 = ((v39 ^ 0x4A261C9E) >> (v31 ^ 5)) - ((2 * ((v39 ^ 0x4A261C9E) >> (v31 ^ 5))) & 0x8D419E0A) + 1184943877;
  v41 = ((1292391168 * v30 - ((437298688 * v30 + 165570048) & 0x1DD02000) - 1814608987) ^ 0x8EE810A5) & 0xFFFFFF00 | HIBYTE(v38);
  v42 = ((2 * v41) & 0xFEFFCBFC ^ 0x15C) + (v41 ^ 0x7F7FE551);
  LODWORD(STACK[0x568]) = v35;
  v43 = (((469762048 * v32 - ((939524096 - (v32 << 27)) & 0x28000000) - 1318313653) ^ 0x956C214B) & 0xFC000000 | (v35 >> 6)) ^ 0x2D6388E;
  v44 = v43 - ((2 * v43) & 0x6B5AFEA) + 56285173;
  v45 = -838860800 * v42 - ((939524096 - 1677721600 * v42) & 0xE0000000) - 1937957345;
  LOBYTE(v43) = (v29 >> 21) & 7;
  v46 = (((1639972864 * v37 - ((-1015021568 * v37 - 587202560) & 0xBB000000) + 1276937785) ^ 0x5D9C8639) & 0xFFC00000 | ((1397205383 * (v37 - 540278254) - ((-1500556530 * (v37 - 540278254) - 1587463048) & 0xB42EAFB2) - 1429735915) >> 10)) ^ 0x1685D5;
  v47 = v46 - 2 * (v46 & 0x27AD19DE ^ ((1397205383 * (v37 - 540278254) - ((-1500556530 * (v37 - 540278254) - 1587463048) & 0xB42EAFB2) - 1429735915) >> 10) & 8) - 1481827882;
  v48 = ((1854406656 * v34 - ((-586153984 * v34 - 1458569216) & 0xE6500000) + 1203214825) ^ 0xB58F56EC ^ v40) - 2139088382 + v42;
  v49 = ((2 * (v47 ^ v44 ^ (v48 - ((2 * v48) & 0x7B9379CA) + 1036631269))) & 0x3CFAFF6C ^ 0x3078E50C) + (v47 ^ v44 ^ (v48 - ((2 * v48) & 0x7B9379CA) + 1036631269) ^ 0x87430D70);
  v50 = ((-831121945 * v42 - ((216804302 * v42 + 223036316) & 0xE0BBF56) - 1783922311) ^ 0x8705DFAB) >> (v43 ^ 3);
  v51 = v47 ^ 0xA7AD19D6;
  v52 = (((v50 - ((2 * v50) & 0xA64454E2) + 1394748017) ^ 0x53222A71) >> (v43 ^ 4)) - ((2 * (((v50 - ((2 * v50) & 0xA64454E2) + 1394748017) ^ 0x53222A71) >> (v43 ^ 4))) & 0xDC40DC0A) - 299864571;
  v53 = (((v52 & 0xAB54256E ^ v45 & 0xAA000000 | v45 & 0x54000000) ^ 0x5A002404) - ((2 * ((v52 & 0xAB54256E ^ v45 & 0xAA000000 | v45 & 0x54000000) ^ 0x5A002404)) & 0x5A004ADC) + 757121006) ^ v52 & 0x54ABDA91;
  v54 = (-1693048404 * v51 - ((908870488 * v51) & 0xBA747F50) + 1564098475) ^ 0x5D3A3FAB;
  v55 = (v54 & 0xFFFFFFFC | ((((-846524202 * v51) & 0xF371ED5C) + 423262101 * v51 + 105318737) >> 30)) - 1250105144 - ((2 * v54) & 0x6AF9D190);
  v56 = ((-1327845852 * v49 - ((1639275592 * v49 + 287354064) & 0x71C0DBA0) - 1049574342) ^ 0x38E06DD2) & 0xFFFFFFFC | ((((-663922926 * v49 + 1145580340) & 0x8B48D8E4) + 331961463 * v49 + 406289907) >> 30);
  v57 = v56 - ((2 * v56) & 0xEBB9F9F6) - 170066693;
  v58 = ((100663296 * (v44 ^ 0x35AD7F5) - ((201326592 * (v44 ^ 0x35AD7F5)) & 0xBBBBBBBB) + 1544456489) ^ 0x5C0E8929 | ((1275607683 * (v44 ^ 0x35AD7F5) - ((-1743751930 * (v44 ^ 0x35AD7F5)) & 0xF31BCF46) - 108140637) >> 7)) ^ 0x1F31BCF;
  v59 = (v53 ^ 0x6900F5EF) + ((v58 - ((2 * v58) & 0x25A5BF60) - 1831673936) ^ 0x92D2DFB0);
  v60 = 2 * (((v53 ^ 0x6900F5EF) & (v55 ^ 0xB57CE8C8)) - ((2 * ((v53 ^ 0x6900F5EF) & (v55 ^ 0xB57CE8C8))) & 0x61D70540)) - 506002112;
  v61 = (((v60 ^ 0xE1D70540) - 2 * ((v60 ^ 0xE1D70540) & 0x40EC5AF8 ^ v60 & 0x10) - 1058252056) ^ 0xC0EC5AE8) + (v55 ^ 0xDC7C1D27 ^ v53);
  v62 = v57 ^ 0x267AE4D3 ^ (205319557 * (((2 * v61) & 0xCEFBFBDA) + (v61 ^ 0xE77DFDED)) - ((410639114 * (((2 * v61) & 0xCEFBFBDA) + (v61 ^ 0xE77DFDED)) - 271231554) & 0xA74C3050) + 1267778311);
  v63 = v57 ^ v55 ^ (v59 - ((2 * v59) & 0xB026503E) + 1477650463);
  v64 = (v62 - ((2 * v62) & 0xC6CB1FC2) + 1667600353) ^ 0x63658FE1;
  v65 = (v63 ^ 0xE74CC3D3) + ((117379014 * v64) & 0xDBEFFFDE) + ((58689507 * v64) ^ 0x6DF7FFEF) - 1844969454;
  v66 = ((2 * v65) & 0xFE6AF4F6) + (v65 ^ 0x7F357A7B);
  v67 = 233400181 * v66 - ((198364906 * v66 + 245961106) & 0xC382D8E) + 628137872;
  LODWORD(STACK[0x4D0]) = v63;
  v68 = (((v67 ^ 0x861C16C7) + (v57 ^ 0xF5DCFCFB)) ^ 0xFD2FEF6B) - 466800362 * v66 + ((2 * ((v67 ^ 0x861C16C7) + (v57 ^ 0xF5DCFCFB))) & 0xFA5FDED6) - 2043028160;
  LODWORD(STACK[0x4F0]) = v67 ^ v63;
  v69 = v67 ^ v63 ^ 0x9EAF2AEB;
  v70 = 1232512275 * v69 - ((-1829942746 * v69) & 0xCBBB91EE) + 1709033719;
  v71 = (2 * (((v67 ^ 0x861C16C7) & (v55 ^ 0xB57CE8C8)) - ((2 * ((v67 ^ 0x861C16C7) & (v55 ^ 0xB57CE8C8))) & 0x75EC613A)) - 169057990) ^ 0xF5EC613A;
  LODWORD(STACK[0x588]) = v67;
  v72 = ((v71 - ((2 * v71) & 0x4B1A77D8) - 1517470739) ^ 0xA58D3BED) + (v55 ^ 0x3360FE0F ^ v67);
  v73 = ((2 * v72) & 0xBEBEF7BA) + (v72 ^ 0x5F5F7BDD);
  v74 = -1050500111 * v68 - ((-2101000222 * v68 + 1891885862) & 0xF8DCA4FA) + 886064144;
  v75 = 1559310061 * v73 - ((-1176347174 * v73 + 177683662) & 0xE620D5A0) + 2019297591;
  v76 = ((785246209 * v66 - ((1570492418 * v66 - 1231545590) & 0xA1F78262) + 742903478) ^ 0x50FBC131) >> (HIBYTE(v38) & 7 ^ 7);
  v77 = v76 - ((2 * v76) & 0x44D46ABA) - 1570097827;
  LODWORD(STACK[0x580]) = v73;
  v78 = (((787283968 * v73 - ((98172928 * v73 + 80609280) & 0x4320000) - 1602159815) ^ 0x219FB39) & 0xFFFF0000 | HIWORD(v75)) ^ 0xF310;
  v79 = v78 - 2 * (v78 & 0x7A98BB57 ^ HIWORD(v75) & 1);
  LODWORD(STACK[0x4C0]) = v68;
  v80 = (529006592 * v68 - ((1058013184 * v68 + 422576128) & 0x21900000) - 1654475063) ^ 0x10CAB6C9;
  v81 = 318767104 * v69 - ((637534208 * v69) & 0xC7FFFFFF) - 478493144;
  v82 = ((v80 & 0xFFF80000 | (v74 >> 13)) ^ 0x7E372) - ((2 * ((v80 & 0xFFF80000 | (v74 >> 13)) ^ 0x7E372)) & 0xB14983C8) - 660291100;
  v83 = ((v77 ^ 0xA26A355D) >> (HIBYTE(v38) & 7)) - ((2 * ((v77 ^ 0xA26A355D) >> (HIBYTE(v38) & 7))) & 0x4649A7F6) + 589616123;
  v84 = v82 ^ 0xD8A4C1E4;
  v85 = -409859447 * v84 - ((-819718894 * v84) & 0x99799F9E) - 860041265;
  v86 = ((v81 ^ 0xE37AC628 | (v70 >> 8)) ^ 0x65DDC8) - ((2 * ((v81 ^ 0xE37AC628 | (v70 >> 8)) ^ 0x65DDC8)) & 0xB7C4B88E) + 1541561415;
  v87 = 683370997 * (v86 ^ 0x5BE25C47) - ((293000170 * (v86 ^ 0x5BE25C47)) & 0x14ECE6F0) - 1971948680;
  v88 = v83 ^ ((v66 << 25) - (((v66 << 26) + 335544320) & 0x58000000) + 922469511);
  v89 = -1561483308 * (v86 ^ 0x5BE25C47) - ((1172000680 * (v86 ^ 0x5BE25C47)) & 0x46465950) - 1557975895;
  v90 = ((2 * (v88 ^ v86 ^ v82 ^ (v79 - 90653866))) & 0xDD7FFA3E ^ 0xCC026212) + (v88 ^ v86 ^ v82 ^ (v79 - 90653866) ^ 0x18BECC96);
  v91 = -1192582213 * v90 - ((1909802870 * v90 + 1786952374) & 0x45EED72E) - 667367182;
  v92 = 1428019200 * v90 - ((-1438928896 * v90 + 366325760) & 0xBE1FF000) - 369436991;
  v93 = ((2 * ((v89 ^ 0xA3232CA9) & 0xFFFFFFFC | (v87 >> 30))) & 0xFCEE0B7E ^ 4) + (((v89 ^ 0xA3232CA9) & 0xFFFFFFFC | (v87 >> 30)) ^ 0x7E7705BD);
  v94 = ((-859705344 * ((v79 - 90653866) ^ 0xFA98BB56) - ((428072960 * ((v79 - 90653866) ^ 0xFA98BB56)) & 0x2BE12000) - 1779395376) ^ 0x95F094D0) & 0xFFFFF000 | ((-1718825953 * ((v79 - 90653866) ^ 0xFA98BB56) - ((857315390 * ((v79 - 90653866) ^ 0xFA98BB56)) & 0x52FEB074) - 1451272134) >> 20);
  v95 = ((2 * ((v92 ^ 0xDF0FFEC1) & 0xFFFFF800 | (v91 >> 21))) & 0xBFFA7FBE ^ 0xA2E) + (((v92 ^ 0xDF0FFEC1) & 0xFFFFF800 | (v91 >> 21)) ^ 0x5FFD3AC8);
  v96 = (((v94 ^ 0xA97) - ((2 * v94) & 0x2EB34A10) - 1755732728) ^ 0x9759A508) - 1610432479 + v95;
  v97 = -1873524736 * v84 - ((547917824 * v84) & 0xCE78F000) + 1732016440;
  v98 = ((2 * ((v97 ^ 0x673C7938) & 0xFFFFF800 | (v85 >> 21))) & 0x7DBBDEEE ^ 0xCCA) + (((v97 ^ 0x673C7938) & 0xFFFFF800 | (v85 >> 21)) ^ 0x3EDDE912);
  v99 = (((((1610612736 * v95 + 1610612736) & 0x80000000) + 805306368 * v95 - 79108730) ^ 0xCB48E586) & 0xF0000000 | ((1517904675 * v95 - ((-1259157946 * v95 - 1265889530) & 0xFCE0D6EC) - 659131655) >> 4)) ^ 0x7E706B7;
  v100 = v99 - ((2 * v99) & 0xDA2A1C2) + 114381025;
  v101 = (v96 ^ 0x5FFB6FDF) - (v98 + v93) + ((2 * v96) & 0xBFF6DFBE) + 236806919;
  v102 = (((-1668284416 * v98 - ((421527552 * v98 + 304087040) & 0x10A00000) + 1365982467) ^ 0x885B3D03) & 0xFFF00000 | ((-71870007 * v98 - ((-143740014 * v98 + 1088108834) & 0xBFFFB1DC) - 2140310145) >> 12)) ^ 0xDFFFD;
  v103 = (((-695046144 * v101 - ((757391360 * v101 + 21364736) & 0x5DD88000) + 1871660280) ^ 0xAEEC44F8) & 0xFFFFF000 | ((-382899929 * v101 - ((307941966 * v101 + 681055328) & 0x39304E8E) - 1327222409) >> 20)) ^ 0x1C9;
  v104 = ((-1333788672 * v93 - ((1627389952 * v93 - 1593835520) & 0xD6000000) - 1143452812) ^ 0xEB584B74) & 0xFF800000 | ((1166243169 * v93 - ((-1962480958 * v93 - 2028794046) & 0xD0AA0C9C) - 1411478033) >> 9);
  v105 = ((2 * v104) & 0x6DF6FFFC ^ 0x605504) + (v104 ^ 0xB6CF557D);
  v106 = (((-727063648 * (v100 ^ 0x6D150E1) - ((693356352 * (v100 ^ 0x6D150E1)) & 0x5A16F180) - 1391757111) ^ 0xAD0B78C9) & 0xFFFFFFE0 | ((-1230680291 * (v100 ^ 0x6D150E1) - ((759864890 * (v100 ^ 0x6D150E1)) & 0x2670BFFEu) - 1825021953) >> 27)) ^ 0x12;
  v107 = -1968218093 * v105 - ((358531110 * v105 + 1634238540) & 0x954D59F0) - 77927138;
  v108 = v103 + 1148934635 + (~(2 * v103) | 0x77094C29) + 1;
  v109 = ((v102 - ((2 * v102) & 0xE594BBDC) - 221618706) ^ v100 ^ 0xB06054E4 ^ v108) - v105 - 1225031682;
  v110 = ((2 * v109) & 0xF6FBFFBC) + (v109 ^ 0x7B7DFFDE);
  v111 = (-356562753 * (v108 ^ 0x447B59EB) - ((1434358142 * (v108 ^ 0x447B59EB)) & 0x4DE9259Cu) + 653562574) >> 2;
  v112 = ((v111 - (v103 << 30)) ^ 0x9BD24B3) - ((2 * ((v111 - (v103 << 30)) ^ 0x9BD24B3)) & 0xFA81B9A8);
  v113 = (1611857920 * v105 - ((-1071251456 * v105 - 2142502912) & 0xB8300000) - 1673628415) ^ 0x5C187501;
  v114 = v106 - ((2 * v106) & 0x572C55F0) - 1416221960;
  v115 = ((v113 & 0xFFFF0000 | HIWORD(v107)) ^ 0x4AA6) - ((2 * ((v113 & 0xFFFF0000 | HIWORD(v107)) ^ 0x4AA6)) & 0xEC9598D0) + 1984613480;
  v116 = v112 - 46080812;
  v117 = (v112 - 46080812) ^ 0xFD40DCD4;
  v118 = ((2 * (v117 + (v114 ^ 0xAB962AF8))) & 0x9FDCE8FE) + ((v117 + (v114 ^ 0xAB962AF8)) ^ 0x4FEE747F);
  v119 = ((-1954304000 * v110 - ((386359296 * v110 - 822427648) & 0xA08A2000) - 1211993860) ^ 0xD04510FC) & 0xFFFFF000 | ((1495840827 * v110 - ((-1303285642 * v110 - 1564676180) & 0xE81E21FE) - 982677291) >> 20);
  v120 = ((2 * v119) & 0x239FECF6 ^ 0xC80) + (v119 ^ 0x91CFF93B);
  v121 = ((2 * (v117 + (v115 ^ 0xDDDCE690 ^ v114))) & 0x8B6FFABC) + ((v117 + (v115 ^ 0xDDDCE690 ^ v114)) ^ 0x45B7FD5E) + v120;
  v122 = v121 - ((2 * v121 + 1357912142) & 0x59026B68) - 721862181;
  v123 = (v120 - 447423737 * v118 - ((2 * (v120 - 447423737 * v118) + 322330380) & 0x1DB3C808) - 394980470) ^ v122;
  LODWORD(STACK[0x560]) = v123;
  v124 = (v123 ^ 0xA258D1B0) - ((2 * (v123 ^ 0xA258D1B0) + 1451261960) & 0xFCC52E82) + 698537797;
  HIDWORD(v13) = v111 ^ 0x3DFB3F2 ^ v124;
  LODWORD(v13) = v124 ^ v116;
  v125 = ((2 * (v120 + 1848641925 + (v124 ^ 0xFE629741))) & 0xF2BB1EF2) + ((v120 + 1848641925 + (v124 ^ 0xFE629741)) ^ 0xF95D8F79);
  v126 = (v13 >> 26) + 1337468096 - ((2 * (v13 >> 26)) & 0x9F7049FE);
  HIDWORD(v13) = -64 - v126;
  LODWORD(v13) = (v126 + 63) ^ 0x4FB824C0;
  v127 = (2 * (((v124 ^ 0xFE629741) & v117) - ((2 * ((v124 ^ 0xFE629741) & v117)) & 0x6C6C8142)) + 1819050306) ^ 0x6C6C8142;
  v128 = ((v13 >> 6) ^ 0xDD77D5FF) + ((2 * (v13 >> 6)) & 0xBAEFABFE) + ((v127 - ((2 * v127) & 0xC08E9974) + 1615285435) ^ 0x60474CBB) + 579348993;
  v129 = ((2 * v128) & 0xA39EA6FC) + (v128 ^ 0x51CF537E);
  LODWORD(STACK[0x5A0]) = v124;
  LODWORD(STACK[0x4A0]) = v124 ^ v122;
  v130 = v124 ^ v122 ^ 0x52E3A2F5;
  v131 = -2075146559 * v130 - ((144674178 * v130) & 0x8A1678CE) + 1158364263;
  LODWORD(STACK[0x550]) = v129;
  v132 = ((618913792 * v129 - ((1237827584 * v129 - 1401978880) & 0xC92B4000) + 986544267) ^ 0x6495B88B) & 0xFFFFE000 | ((2050041631 * v129 - ((-194884034 * v129 - 165846148) & 0x8C2EC736) + 1093014873) >> 19);
  v133 = ((2 * v132) & 0xEEDFDFFE ^ 0x1184) + (v132 ^ 0xF76FF73D);
  v134 = (((-1902190592 * (v124 ^ 0xFE629741) - ((490586112 * (v124 ^ 0xFE629741)) & 0x347C0000) - 1707208162) ^ 0x9A3E121E) & 0xFFFFE000 | ((1114404087 * (v124 ^ 0xFE629741) - ((81324526 * (v124 ^ 0xFE629741)) & 0x735F34CE) + 967809639) >> 19)) ^ 0x735;
  v135 = (((357179392 * v125 - ((177487872 * v125 + 2998272) & 0x8F08000) - 326157671) ^ 0x4785A99) & 0xFFFFE000 | ((-1790924207 * v125 - ((713118882 * v125 + 1505657198) & 0xF3AAC574) - 1498111119) >> 19)) ^ 0x1F3A;
  v136 = (((453246976 * v130 - ((906493952 * v130) & 0xB9380000) - 593649368) ^ 0xDC9DA128) & 0xFFFC0000 | (v131 >> 14)) ^ 0x1142C;
  v137 = ((v134 - ((2 * v134) & 0xEA22075E) - 183434321) ^ 0xF51103AF) - v133 - 143659009 - ((2 * (((v134 - ((2 * v134) & 0xEA22075E) - 183434321) ^ 0xF51103AF) - v133 - 143659009)) & 0x6E545F94) + 925511626;
  v138 = v135 - ((2 * v135) & 0x40B7B11E) + 542890127;
  v139 = v136 - 2 * (v136 & 0x1C8F752 ^ (v131 >> 14) & 0x12) + 29947712;
  v140 = ((2 * (v138 ^ v139 ^ v137)) & 0xE7BFF7FA ^ 0x2532000A) + (v138 ^ v139 ^ v137 ^ 0xE566FBF8);
  v141 = (((100663296 * v133 - ((201326592 - (v133 << 26)) & 0xC000000) - 1945405157) ^ 0x860B791B) & 0xFE000000 | ((616575875 * v133 - ((1233151750 * v133 + 1934673670) & 0xCFBCC9D8) + 562481263) >> 7)) ^ 0x1CFBCC9;
  v142 = (((-1048346048 * v140 - ((-2096692096 * v140 + 891751808) & 0xE84F8580) + 247155084) ^ 0x7427C2CC) & 0xFFFFFFC0 | ((788925961 * v140 - ((1577851922 * v140 - 1529570250) & 0xBE3612E0) + 830822283) >> 26)) ^ 0x17;
  v143 = ((-2013265920 * (v138 ^ 0x205BD88F) - (((v138 ^ 0x205BD88F) << 28) & 0x60000000) - 1243123836) ^ 0xB5E76F84) & 0xF8000000 | ((-1962970639 * (v138 ^ 0x205BD88F) - ((369026018 * (v138 ^ 0x205BD88F)) & 0x5584E74Cu) - 1430096986) >> 5);
  v144 = ((2 * v143) & 0xFFF7ED3A ^ 0xAA4253A) + (v143 ^ 0x7AADE500);
  v145 = v142 - ((2 * v142) & 0xE373930C) - 239482490;
  v146 = ((v141 - ((2 * v141) & 0xFD1BFB6) - 2014781477) ^ 0x7651165D ^ v145) - v144;
  v147 = (((1304427372 * (v139 ^ 0x1C8F740) - ((-1686112552 * (v139 ^ 0x1C8F740)) & 0xF28738B0)) & 0xFFFFFFFC | ((326106843 * (v139 ^ 0x1C8F740) - ((652213686 * (v139 ^ 0x1C8F740)) & 0x55AEC0B0u) + 718757976) >> 30)) + 2034474072) ^ 0x79439C58;
  v148 = v147 - 113963374 + (~(2 * v147) | 0xD95E2DB) + 1;
  v149 = (v146 - ((2 * v146 + 536341818) & 0x10B7C052) + 139974342) ^ v148;
  v150 = ((2 * v149) & 0xABE3BACA ^ 0xA2C19842) + (v149 ^ 0xA49F33DE);
  v151 = ((1267400704 * v150 - ((118882304 * v150 + 106037248) & 0xB320000) - 1195208823) ^ 0x85998F89) & 0xFFFF0000 | ((-1537586293 * v150 - ((146052886 * v150 + 547120722) & 0x259449E8) - 2095556579) >> 16);
  v152 = ((2 * v151) & 0xCDD7FFBA ^ 0x2590) + (v151 ^ 0x66EBED17);
  v153 = ((998244352 * (v145 ^ 0xF1B9C986) - ((1996488704 * (v145 ^ 0xF1B9C986)) & 0xB7000000) + 1540669618) ^ 0x5BD4C0B2) & 0xFF800000 | ((1738181239 * (v145 ^ 0xF1B9C986) - ((-818604818 * (v145 ^ 0xF1B9C986)) & 0xA5724570) + 1387864760) >> 9);
  v154 = ((2 * v153) & 0xF37FBDBE ^ 0x52B922) + (v153 ^ 0x7996824E);
  v155 = (((-843055104 * v144 - ((-1686110208 * v144 - 1568669696) & 0xCF000000) - 1192000439) ^ 0x67B38449) & 0xFFC00000 | ((-415821001 * v144 - ((242099822 * v144 + 229292682) & 0x15042B1A) + 827814610) >> 10)) ^ 0x2A085;
  v156 = v148 ^ 0xF9350E92;
  v157 = -1397596157 * (v148 ^ 0xF9350E92) - ((1499774982 * (v148 ^ 0xF9350E92)) & 0xB831C958) - 602348372;
  v158 = ((((v155 - ((2 * v155) & 0xA176456) - 2062831061) ^ 0x850BB22B ^ (v154 - 2042617567)) - ((2 * ((v155 - ((2 * v155) & 0xA176456) - 2062831061) ^ 0x850BB22B ^ (v154 - 2042617567))) & 0x8221026E) + 1091600695) ^ 0x41108137) - v152 + 1726742493;
  v159 = ((3145728 * v156 - ((6291456 * v156) & 0x7A600000) + 1026658669) ^ 0x3D31916D) & 0xFFF00000 | (v157 >> 12);
  v160 = ((2 * v159) & 0x9B4757BE ^ 0x3031C) + (v159 ^ 0xCDAE6A51);
  v161 = ((-((1342177280 - (v152 << 28)) & 0x40000000) - 1207959552 * v152 + 1318041689) ^ 0x268FB859) & 0xF8000000 | ((-934291465 * v152 - ((278900718 * v152 + 1114443146) & 0x629869C0) + 310557605) >> 5);
  v162 = ((2 * v161) & 0xF597D77C ^ 0x114C34C) + (v161 ^ 0xFB418A19);
  v163 = (((-444596224 * v154 - ((184549376 * v154 + 184549376) & 0x13000000) + 520689160) ^ 0x9891608) & 0xFFFFC000 | ((1027053056 * v154 - ((2054106112 * v154 + 486583296) & 0x7566CC00) - 919356165) >> 18)) ^ 0xEAC;
  v164 = v163 + 1134781185 - ((2 * v163) & 0x8746C602);
  v165 = (v158 ^ 0x5FFFB9F9) + v160 + ((2 * v158) & 0xBFFF73F2);
  v166 = v164 ^ 0x43A36301 | ((-551642165 * v154 - ((1044199318 * v154 + 328106070) & 0x27158354) - 44957227) >> 23 << 14) ^ 0x9C000;
  v167 = v166 - 2 * (v166 & 0x6FF26B5F ^ (v164 + 16) & 0xE) - 269325487;
  HIDWORD(v13) = v167 ^ 0x3D91;
  LODWORD(v13) = v167 ^ 0xA8C30000;
  v168 = (v13 >> 14) - ((2 * (v13 >> 14)) & 0x21C163A4) - 1864322606;
  v169 = (((201326592 * v165 - ((402653184 * v165) & 0x30000000) + 2017788323) ^ 0x984501A3) & 0xFC000000 | ((-424197949 * (v165 + 1867117368) - ((1299087750 * (v165 + 1867117368) + 755126688) & 0x46768516) + 968649563) >> 6)) ^ 0x8CED0A;
  v170 = ((2 * v168) & 0xFB9BB7E0 ^ 0x93831220) + (v168 ^ 0x362C76E7);
  v171 = (((-1761769728 * v160 - ((771427840 * v160 + 1442106880) & 0xC6958600) + 239414008) ^ 0xE34AC3F8) & 0xFFFFFF00 | ((-979960441 * v160 - ((-1959920882 * v160 - 61475634) & 0xE540E7F2) + 1892380256) >> 24)) ^ 0xF2;
  v172 = ((v171 - ((2 * v171) & 0x29BE66EA) + 350172021) ^ 0x14DF3375) + 36840464 + v170;
  v173 = (v172 ^ 0xF3EFFFFD) - v162 + ((2 * v172) & 0xE7DFFFFA);
  v174 = v169 - ((2 * v169) & 0x60FF003A) + 813662237;
  v175 = (v174 ^ 0x4B7B7958 ^ (v170 + v162 - ((2 * (v170 + v162) + 1919769862) & 0xF609F28A) - 1271158840)) + 409550794;
  v176 = (v173 - ((2 * v173 + 230152066) & 0x2591D05C) - 1717251089) ^ v174;
  v177 = ((2 * v176) & 0xBFB3D1D6 ^ 0x522D046) + (v176 ^ 0x7D6E80D8);
  v178 = ((2 * v175) & 0xFDFA4F7E) + (v175 ^ 0xFEFD27BF) + v177;
  v179 = v178 - ((2 * v178 - 810944132) & 0xFF6C73AC) - 410306924;
  v180 = ((2 * (v162 + 87299139 + (v179 ^ 0x8049C629))) & 0x67DDF1EE) + ((v162 + 87299139 + (v179 ^ 0x8049C629)) ^ 0x33EEF8F7);
  v181 = ((2 * (v177 + 539367189 + (v179 ^ 0x7FB639D6))) & 0xAA9FDDF6) + ((v177 + 539367189 + (v179 ^ 0x7FB639D6)) ^ 0x554FEEFB);
  v182 = -99323883 * v180 - ((-198647766 * v180 + 240846714) & 0xE3EAD672) + 2032332534;
  LODWORD(STACK[0x530]) = v180;
  v183 = -2061761216 * v180 - ((171444864 * v180 - 1765679488) & 0xA4329A00) + 494550117;
  LODWORD(STACK[0x5A8]) = v179;
  LODWORD(STACK[0x540]) = v174;
  LODWORD(STACK[0x480]) = v179 ^ v174;
  v184 = v179 ^ v174 ^ 0x4FC9B9CB;
  LODWORD(STACK[0x538]) = v181;
  v185 = (((565182464 * (v179 ^ 0x7FB639D6) - ((56623104 * (v179 ^ 0x7FB639D6)) & 0x10000000) - 2012317088) ^ 0x880E7A60) & 0xFFF00000 | ((-2107497957 * (v179 ^ 0x7FB639D6) - ((79971382 * (v179 ^ 0x7FB639D6)) & 0x6591C304) - 1295457918) >> 12)) ^ 0xB2C8E;
  v186 = v185 - ((2 * v185) & 0x3976F116);
  v187 = ((-654515328 * v181 - ((-1309030656 * v181 - 535305472) & 0xB109CA00) - 930031891) ^ 0x5884E56D) & 0xFFFFFF80 | ((967965127 * v181 - ((325317518 * v181 + 29372358) & 0x1B0846C6) - 563856570) >> 25);
  v188 = ((2 * v187) & 0xF3FB777E ^ 0xC) + (v187 ^ 0x79FDBBB9);
  v189 = ((20545838 * v188 - 1404697427) | 0x2EA0E059) - 10272919 * v188 - 1836282499;
  v190 = ((2 * ((v183 ^ 0x52194D25) & 0xFFFFFFC0 | (v182 >> 26))) & 0xD9D67F8E ^ 8) + (((v183 ^ 0x52194D25) & 0xFFFFFFC0 | (v182 >> 26)) ^ 0xECEB3FFB);
  v191 = ((2036666464 * v184 - ((-221634368 * v184) & 0xA96AD7C0) - 726307867) ^ 0xD4B56BE5) & 0xFFFFFFE0 | ((1942694019 * v184 - ((-409579258 * v184) & 0xBA971658) - 582251732) >> 27);
  v192 = ((2 * v191) & 0xF8929BFC ^ 0x34) + (v191 ^ 0x7C494DE5);
  v193 = ((v186 + 482048139) ^ 0x1CBB788B) - v192 - v190 + 1765051845;
  v194 = v188 + (v193 ^ 0x767F97FB) + ((2 * v193) & 0xECFF2FF6) - 290010699;
  v195 = -158334976 * v188 - ((-316669952 * v188 - 1256194048) & 0xFEA00000) + 1507893642;
  v196 = (((-676040624 * v194 - ((-1352081248 * v194 + 261388960) & 0xDAC111C0) - 181746118) ^ 0x6D6088EA) & 0xFFFFFFF0 | ((1568360197 * v194 - ((-1158246902 * v194 + 1895385002) & 0xA66F7664) - 1951113465) >> 28)) ^ 0xD;
  v197 = (((641279136 * v190 - ((1282558272 * v190 + 895635264) & 0xC6297A40) + 2110121157) ^ 0x6314BD25) & 0xFFFFFFE0 | ((288475429 * v190 - ((576950858 * v190 + 1101730426) & 0xD4343D4E) + 183478244) >> 27)) ^ 0xD;
  v198 = v197 - ((2 * v197) & 0x17A7B31C) + 198433166;
  v199 = v196 - ((2 * v196) & 0xDC424636) - 299818213;
  v200 = v199 ^ 0xEE21231B;
  v201 = -217041907 * (v199 ^ 0xEE21231B) - ((639658010 * (v199 ^ 0xEE21231B)) & 0x2E6CAAB0) + 389436760;
  v202 = ((v195 ^ 0x7F50A18A) & 0xFFF00000 | (v189 >> 12)) ^ 0xE8AF8;
  v203 = v202 - ((2 * v202) & 0x51D62AF6);
  v204 = ((-1151074304 * v192 - ((382205952 * v192 + 495976448) & 0x1BA80000) - 1935733288) ^ 0x8DD70DD8) & 0xFFFC0000 | ((-1193529639 * v192 + 1860860155 - ((297295282 * v192 + 119701348) & 0x16B28D18) + 3395) >> 14);
  v205 = ((2 * v204) & 0xA3FF78F8 ^ 0x458C8) + (v204 ^ 0x51FD9119);
  v206 = v205 - 1375714428 + (v198 ^ 0xE5F2FA95 ^ v199) - ((2 * (v205 - 1375714428 + (v198 ^ 0xE5F2FA95 ^ v199))) & 0x3A11BE00) - 1660363008;
  v207 = ((2 * (v206 ^ (v203 - 1460988549))) & 0xDCFDB5FE ^ 0x48C594F6) + (v206 ^ (v203 - 1460988549) ^ 0xDB9D1084);
  v208 = 727571035 * v207 - ((1455142070 * v207 + 495977142) & 0x41926F00) - 275695397;
  v209 = -1342177280 * v207 - ((1610612736 * v207 + 1610612736) & 0xC0000000) + 353907467;
  v210 = (((-488315008 * v205 - ((97111808 * v205 + 222018560) & 0x1D0A0800) + 1965220468) ^ 0x8E850474) & 0xFFFFFF80 | ((-842675761 * v205 - ((-1685351522 * v205 + 530216824) & 0xAF99C712) - 409329851) >> 25)) ^ 0x2B;
  v211 = v210 - ((2 * v210) & 0xF93FD12A);
  v212 = ((1610612736 * v200 - 162723680) ^ 0xF64D08A0) & 0xE0000000 | (v201 >> 3);
  v213 = ((2 * v212) & 0xFBDDFFE2 ^ 0x1CD9542) + (v212 ^ 0xFF08355A);
  HIDWORD(v13) = v189 >> 12;
  LODWORD(v13) = ((-952523302 * ((v203 - 1460988549) ^ 0xA8EB157B)) & 0xF9FEFFBA) + ((-476261651 * ((v203 - 1460988549) ^ 0xA8EB157B)) ^ 0x7CFF7FDD) - 2097119197;
  v214 = ((2 * (v13 >> 1)) & 0xF37EBF7E) + ((v13 >> 1) ^ 0xF9BF5FBF);
  v215 = ((2 * ((v209 ^ 0x6518330B) & 0xF0000000 | (v208 >> 4))) & 0xDDBFFEFA ^ 0x41926F0) + (((v209 ^ 0x6518330B) & 0xF0000000 | (v208 >> 4)) ^ 0x6CD36C05);
  v216 = ((2 * (((v211 + 2090854549) ^ 0x7C9FE895) + 34668559 + v213)) & 0xDFFF2FBC) + ((((v211 + 2090854549) ^ 0x7C9FE895) + 34668559 + v213) ^ 0x6FFF97DE) - v215;
  v217 = v216 - ((2 * v216 + 2109787966) & 0x7D3CBC00) + 1031718303;
  v218 = ((2 * (v217 ^ (v214 + 104898625))) & 0xEB788FBC ^ 0x69388C00) + (v217 ^ (v214 + 104898625) ^ 0xCB2219DE);
  v219 = (((-1452498944 * v213 - ((1389969408 * v213 + 448446464) & 0xED7E4000) - 2078504950) ^ 0xF6BF280A) & 0xFFFFE000 | ((723864421 * v213 + 1101270731 - ((1447728842 * v213 - 1513564714) & 0xDD7F61B8) + 3324) >> 19)) ^ 0x1DD7;
  v220 = (((-2063597568 * v215 - ((167772160 * v215 + 503316480) & 0x90000000) - 673741824) ^ 0xC8D78400) & 0xFF000000 | ((241809285 * v215 - ((483618570 * v215 + 1265750558) & 0x57CBEE42) - 778117072) >> 8)) ^ 0x2BE5F7;
  v221 = ((730818256 * v218 - ((387894688 * v218 + 113397568) & 0x2C64EE40) + 2039717582) ^ 0x9632772E) & 0xFFFFFFF0 | ((1387853421 * v218 - ((628223194 * v218 + 1550591220) & 0x6B81FAF6) - 470347787) >> 28);
  v222 = ((2 * v221) & 0x9CE7EFEE ^ 6) + (v221 ^ 0x4E73F7F4);
  v223 = ((-150994944 * v214 - ((-301989888 * v214 + 1845493760) & 0x88888888) - 81880443) ^ 0x441E9A85 | ((-1108431113 * v214 - ((467492334 * v214 + 493459822) & 0x1C16635Au) + 2092957284) >> 8)) ^ 0x8E0B31;
  v224 = v223 - ((2 * v223) & 0x2886DFE0) - 1807519760;
  v225 = v219 + 1790049842 + (~(2 * v219) | 0x2A9C039B) + 1;
  v226 = v220 - ((2 * v220) & 0x41D5C81C) - 1595218930;
  v227 = v226 ^ 0xA0EAE40E;
  v228 = -1422499607 * (((2 * ((v225 ^ 0x6AB1FE32) - (v226 ^ 0xA0EAE40E))) & 0xE9FCC7FC) + (((v225 ^ 0x6AB1FE32) - (v226 ^ 0xA0EAE40E)) ^ 0xF4FE63FE)) - v222;
  v229 = v228 - ((2 * v228 + 1471114130) & 0xC01E9BB4) - 1947794525;
  v230 = (((2 * v229) ^ 0xC01E9BB4) - ((2 * ((2 * v229) ^ 0xC01E9BB4)) & 0x3BCEE9C8) + 1038578917) & 0x2E414F16;
  v231 = v224 ^ v225 ^ 0x5E1875CC ^ v226;
  v232 = v222 - 1316222967;
  v233 = v222 - 1316222967 + v231 - ((2 * (v222 - 1316222967 + v231)) & 0x209D1CC2) + 273583713;
  v234 = (2 * (((v230 ^ 0x2C414404) & (v229 ^ 0x26014A10)) - ((2 * ((v230 ^ 0x2C414404) & (v229 ^ 0x26014A10))) & 0x8000E08)) - 1436529062) ^ 0xAA604E5A;
  v235 = ((v234 - ((2 * v234) & 0xD562730) - 2035608679) ^ 0x86AB1399) + (v229 ^ 0xDB6EAE55 ^ v230);
  v236 = v233 ^ 0xF7B0F436 ^ (v235 - ((2 * v235) & 0xCFFCF4AE) - 402752937);
  v237 = v236 - ((2 * v236 - 1844707462) & 0xE308EECC) + 982152995;
  v238 = v237 ^ 0x71847766;
  v239 = ((2 * (v238 + v227)) & 0xDBFBFEBE) + ((v238 + v227) ^ 0x6DFDFF5F);
  v240 = ((2 * (v238 + v232)) & 0xD9FF9DE4) + ((v238 + v232) ^ 0x6CFFCEF2);
  LODWORD(STACK[0x478]) = v237;
  v241 = v237 ^ v233;
  LODWORD(STACK[0x490]) = v241;
  v242 = 552826059 * v239 - ((1105652118 * v239 - 781916330) & 0x82A4C5E8) - 1442523489;
  v243 = 1105652118 * v239 - ((63820588 * v239 + 583650988) & 0x67914244) + 86870136;
  v244 = ((v243 & 0xFFFFFFFE | (v242 >> 31)) ^ 0x4D31409C) + ((2 * v243) & 0xFDF3C37C ^ 0x65914244);
  v245 = (((-318767104 * v238 - ((1509949440 * v238) & 0x42000000) + 555791595) ^ 0x2120B4EB) & 0xFF000000 | ((-815786003 * v238 - ((-1631572006 * v238) & 0xEFE5875A) + 2012398509) >> 8)) ^ 0x77F2C3;
  LODWORD(STACK[0x510]) = v240;
  v246 = ((v245 - ((2 * v245) & 0x98F953B4) - 864245286) ^ 0xCC7CA9DA) + v244 - 2130305470;
  v247 = ((1588170962 * (v241 ^ 0x61CAF907) - ((-1118625372 * (v241 ^ 0x61CAF907)) & 0xC11DF054) - 527501269) ^ 0xE08EF82B) & 0xFFFFFFFE | ((-1353398167 * (v241 ^ 0x61CAF907) - ((1588170962 * (v241 ^ 0x61CAF907)) & 0x55EF57F4u) + 720874490) >> 31);
  v248 = ((2 * v247) & 0xF46727DE) + (v247 ^ 0xFA3393EF);
  v249 = (((1388096512 * v240 - ((91838464 * v240 + 108711936) & 0x11A54000) + 739248524) ^ 0x88D2A18C) & 0xFFFFFC00 | ((-1420513493 * v240 + 1248722937 + ~(2 * ((-1420513493 * v240 + 86560602) & 0x545309F ^ (-1420513493 * v240) & 1))) >> 22)) ^ 0x15;
  v250 = v249 - ((2 * v249) & 0xF62913F0) + 2064943608;
  v251 = ((v246 - ((2 * v246) & 0x9F363CF2) - 811917703) ^ v250 ^ 0xB48F9781) - v248 - 97283089;
  v252 = (v242 & 0x80000000 | ((-843722527 * v244 - ((-1687445054 * v244 + 994078724) & 0xF7A6CDFC) + 427007744) >> 1)) ^ 0x3DE9B37F;
  v253 = v252 - ((2 * v252) & 0x628C922A);
  v254 = ((-2106500896 * (((2 * v251) & 0xBFDFBFDE) + (v251 ^ 0x5FEFDFEF)) - ((81965504 * (((2 * v251) & 0xBFDFBFDE) + (v251 ^ 0x5FEFDFEF)) - 985281088) & 0xACF585C0) - 1189238330) ^ 0x567AC2E6) & 0xFFFFFFE0 | ((739478215 * (((2 * v251) & 0xBFDFBFDE) + (v251 ^ 0x5FEFDFEF)) - ((1478956430 * (((2 * v251) & 0xBFDFBFDE) + (v251 ^ 0x5FEFDFEF)) - 701878674) & 0xCDC317D0) - 772365537) >> 27);
  v255 = ((2 * v254) & 0x35DF776E ^ 8) + (v254 ^ 0x9AEFBBBB);
  v256 = ((v253 + 826689813) ^ 0x31464915) + 1695564873 + v255 - ((2 * (((v253 + 826689813) ^ 0x31464915) + 1695564873 + v255)) & 0x412FD8EA) - 1600656267;
  v257 = (((-1424252928 * (v250 ^ 0x7B1489F8) - ((1446461440 * (v250 ^ 0x7B1489F8)) & 0xBD3EC000) + 1587504151) ^ 0x5E9F6417) & 0xFFFFE000 | ((781539549 * (v250 ^ 0x7B1489F8) - ((86684090 * (v250 ^ 0x7B1489F8)) & 0x6F550F2) - 2089113479) >> 19)) ^ 0x106F;
  v258 = ((-475177088 * v248 - ((-950354176 * v248 - 1181044992) & 0x9410B200) - 1495945081) ^ 0xCA085907) & 0xFFFFFF80 | ((231168703 * v248 - ((462337406 * v248 + 527643998) & 0xD88A9398) - 67181445) >> 25);
  v259 = ((2 * v258) & 0xBFF6FE9E ^ 0x8C) + (v258 ^ 0x5FFB7F39);
  v260 = v257 - ((2 * v257) & 0x3F28D524) - 1617663342;
  HIDWORD(v13) = ~v255;
  LODWORD(v13) = 811191855 * v255 - ((1622383710 * v255 + 614502094) & 0x532E9A3A) - 1142451068;
  v261 = ((2 * v259 - ((4 * v259 - 2146303292) & 0xB2FF6420) + 428389234) ^ 0x26804DEF) + ((v259 - 1610317647 + (v260 ^ 0x3F0386E7 ^ v256)) ^ 0xFD7DEF3E) + ((2 * (v259 - 1610317647 + (v260 ^ 0x3F0386E7 ^ v256))) & 0xFAFBDE7C) + 42078403;
  v262 = ((-535105536 * (((2 * v261) & 0x3FC67B3A) + (v261 ^ 0x9FE33D9D)) - ((-1070211072 * (((2 * v261) & 0x3FC67B3A) + (v261 ^ 0x9FE33D9D)) - 1466589184) & 0x87E46000) + 406651667) ^ 0xC3F23313) & 0xFFFFF000 | ((-844234321 * (((2 * v261) & 0x3FC67B3A) + (v261 ^ 0x9FE33D9D)) - ((-1688468642 * (((2 * v261) & 0x3FC67B3A) + (v261 ^ 0x9FE33D9D)) + 1835698522) & 0xB7D31234) + 312397255) >> 20);
  v263 = ((2 * v262) & 0xA8D759BC ^ 0x193C) + (v262 ^ 0xD46BA160);
  v264 = (((1350565888 * (v260 ^ 0x9F946A92) - ((((v260 ^ 0x9F946A92) + 32 * v260) << 24) & 0x21000000) + 277819965) ^ 0x108F323D) & 0xFF800000 | ((479160993 * (v260 ^ 0x9F946A92) - ((958321986 * (v260 ^ 0x9F946A92)) & 0xC3D42102) + 1642729601) >> 9)) ^ 0x30F508;
  v265 = v264 - ((2 * v264) & 0x32ECBEB8) + 427188060;
  v266 = ((-796917760 * v259 - ((-1593835520 * v259 + 1358954496) & 0xE5000000) - 1687368728) ^ 0x72ECCBE8) & 0xFF800000 | ((1201985441 * v259 - ((256487234 * v259 + 647703714) & 0x2C186D90) - 1990603495) >> 9);
  v267 = ((2 * v266) & 0xAFF77B4A ^ 0x960802) + (v266 ^ 0x57B0BBBE);
  v268 = ((v13 >> 2) ^ 0x2A65D347) - 2 * (((v13 >> 2) ^ 0x2A65D347) & 0x7AB3635E ^ (v13 >> 2) & 8) - 88906922;
  v269 = (((v265 ^ 0xE3C53C0A ^ v268) + 731140898 + v263) ^ 0xE5F7FDBE) + v267 + ((2 * ((v265 ^ 0xE3C53C0A ^ v268) + 731140898 + v263)) & 0xCBEFFB7C);
  v270 = -(((v267 << 25) + 905969664) & 0x30000000) - 520093696 * v267;
  v271 = -1902620191 * v267 - ((489726914 * v267 - 913688074) & 0x861C404E) - 1479328478;
  v272 = -1424531451 * (v269 + 1474835060) - ((1445904394 * (v269 + 1474835060) + 1013282202) & 0x7E885D10) + 1568074069;
  v273 = ((-872415232 * v263 - ((805306368 - 1744830464 * v263) & 0xBFFFFFFF) + 1970736908) ^ 0x5D770F0C | ((424930931 * v263 - ((849861862 * v263 + 1038215308) & 0x3FCC4DB6) - 556328159) >> 6)) ^ 0x7F989B;
  v274 = ((-2004877312 * (v268 ^ 0xFAB36356) - ((285212672 * (v268 ^ 0xFAB36356)) & 0x27000000) + 328747140) ^ 0x13984884) & 0xFF800000 | (((~(1359530530 * (v268 ^ 0xFAB36356)) | 0x868396E5) - 393976559 * (v268 ^ 0xFAB36356) - 1128385394) >> 9);
  v275 = ((2 * v274) & 0xB5FE5BEA ^ 0xBC1A20) + (v274 ^ 0x5AA172EF);
  v276 = (((v270 + 329688411) ^ 0x18A6A55B) & 0xFF000000 | (v271 >> 8)) ^ 0xC30E20;
  v277 = v276 - 2 * (v276 & 0x3F1EB075 ^ (v271 >> 8) & 1);
  LODWORD(STACK[0x528]) = v272;
  v278 = (((((2146172928 * v269 + 599523327) | 0xA32BFFFF) - 1073086464 * v269 + 479019621) ^ 0xAE6B4264) & 0xFFFE0000 | (v272 >> 15)) ^ 0x17E88;
  v279 = v278 - ((2 * v278) & 0xBFCEB25E) - 538486481;
  v280 = v273 - ((2 * v273) & 0xCEFB6B9C) - 411191858;
  v281 = ((2 * (v275 - 1526672885 + (v280 ^ 0x18824A31) + 1)) & 0xFDF7FDFA) + ((v275 - 1526672885 + (v280 ^ 0x18824A31) + 1) ^ 0x7EFBFEFD);
  v282 = v280 ^ (((v277 - 1088507788) ^ 0xBF1EB074) - 1526672885 + v275 - ((2 * (((v277 - 1088507788) ^ 0xBF1EB074) - 1526672885 + v275)) & 0x6AA292E0) - 1252963984) ^ v279;
  v283 = ((2 * v282) & 0xFFDF557E ^ 0x1B974122) + (v282 ^ 0x72240F2E);
  v284 = v279 ^ 0xC1644096 ^ (v281 - ((2 * v281 + 792174610) & 0x3D063372) - 1239488062);
  v285 = ((-120440410 * v284) & 0xFDFEFFB6) + v283 + ((2087263443 * v284) ^ 0xFEFF7FDB);
  v286 = v285 - ((2 * v285 + 805652110) & 0x535CE46E) + 28382590;
  LODWORD(STACK[0x5B0]) = v286;
  if (((((2 * (v283 + 1070402 + (v286 ^ 0xD6518DC8))) & 0xFFBAFFF4) + ((v283 + 1070402 + (v286 ^ 0xD6518DC8)) ^ 0x7FDD7FFA) + 163846) & 0x100000) != 0)
  {
    v287 = -1048576;
  }

  else
  {
    v287 = 0x100000;
  }

  LODWORD(STACK[0x520]) = v287;
  v288 = (*(&off_1002D7880 + v6 + 249))(1032);
  STACK[0xAE8] = v288;
  return (*(&off_1002D7880 + (((16 * (v288 != 0)) | (32 * (v288 != 0))) ^ v6)))();
}

uint64_t sub_100085A9C(uint64_t a1)
{
  LODWORD(STACK[0x470]) = v3 + 111308935;
  v9 = LODWORD(STACK[0x550]) - 1372541822;
  LODWORD(STACK[0x40C]) = v9;
  v10 = v9 ^ ((v5 ^ (v3 + 111308935)) - 424997558 + (~(2 * (v5 ^ (v3 + 111308935))) | 0x32A9E56B) + 1);
  v11 = (v10 ^ 0xE6AB0D4A) - 2 * ((v10 ^ 0xE6AB0D4A) & 0x4F127517 ^ v10 & 4) + 1326609683;
  HIDWORD(v12) = LODWORD(STACK[0x560]) ^ ~v11;
  LODWORD(v12) = LODWORD(STACK[0x5A0]) ^ 0xB170E250 ^ v11;
  v13 = (v12 >> 2) - ((2 * (v12 >> 2)) & 0x551C30FC);
  HIDWORD(v12) = (v13 - 359786370) ^ 0x7C2E057;
  LODWORD(v12) = 1433528193 - v13;
  LODWORD(STACK[0x434]) = (v12 >> 30) - ((2 * (v12 >> 30)) & 0xC11FF3B0) - 527435304;
  v14 = LODWORD(STACK[0x530]) - 871299319;
  v15 = LODWORD(STACK[0x540]) ^ 0x307F801D;
  v16 = (v14 + v15) ^ 0x6FDFFE7F;
  v17 = (2 * (v14 + v15)) & 0xDFBFFCFE;
  v18 = (((v14 & v15) - ((2 * (v14 & v15)) & 0x54E2DCEE) + 712076919) ^ 0x2A716E77) << ((STACK[0x568] & 0x40) != 0);
  v19 = ((v18 - ((2 * v18) & 0x1B6FE68E) + 230159175) ^ 0xDB7F347) << ((STACK[0x568] & 0x40) == 0);
  v20 = v16 + v17 - 1876950654 + ((v19 - ((2 * v19) & 0x171B2CA6) + 193828435) ^ 0xF47269AC);
  v21 = LODWORD(STACK[0x538]) - 1431301883;
  LODWORD(STACK[0x454]) = v21;
  v22 = v21 ^ 0xE1BB2E9C ^ (v20 - ((2 * v20) & 0xC3765D38) - 507826532);
  LODWORD(STACK[0x424]) = v22 - ((2 * v22) & 0x8EC99A20) - 949695216;
  LODWORD(STACK[0x400]) = v1 - 1845362527;
  v23 = ((v7 ^ (v1 - 1845362527)) - ((2 * (v7 ^ (v1 - 1845362527))) & 0x668FF24C) + 860354854) ^ 0x3347F926;
  v24 = (v23 & v8) - ((2 * (v23 & v8)) & 0x10F7188E);
  v25 = ((v23 + v8) ^ 0x7C4FEFF9) + ((2 * (v23 + v8)) & 0xF89FDFF2) - 2085613560 + ((((2 * v24 - 1862854514) ^ 0x90F7188E) - 2 * (((2 * v24 - 1862854514) ^ 0x90F7188E) & 0x7F3D54B6 ^ (2 * v24 - 1862854514) & 0x10) - 12757850) ^ 0xC2AB59);
  LODWORD(STACK[0x430]) = v25 - ((2 * v25) & 0xC97C0B60) + 1690174896;
  v26 = STACK[0x5B0];
  v27 = LODWORD(STACK[0x5B0]) ^ 0x29AE7237;
  v28 = v27 + (v2 ^ 0xE77DB5CE);
  v29 = v28 ^ 0xC5E47CFC;
  v30 = ((2 * v28) & 0x8BC8F9F8) + (v28 ^ 0xC5E47CFC);
  HIDWORD(v12) = (LODWORD(STACK[0x528]) >> 15) ^ 0xBF ^ LODWORD(STACK[0x5B0]);
  LODWORD(v12) = v6 ^ 0xF6492800 ^ LODWORD(STACK[0x5B0]);
  v31 = (v12 >> 10) - ((2 * (v12 >> 10)) & 0xBABA50E6) + 1566386291;
  HIDWORD(v12) = v31 ^ 0x3C4071;
  LODWORD(v12) = v31 ^ 0x76000000;
  v32 = (v12 >> 22) - ((2 * (v12 >> 22)) & 0x784668A8) + 1008940116;
  v33 = LODWORD(STACK[0x520]) + v4 - 2145222650;
  LODWORD(STACK[0x420]) = v4 - 2145222650;
  LODWORD(STACK[0x450]) = v33 - 2 * (v33 & 0x18A08CCF ^ (v4 - 2145222650) & 0xA) + 413174981;
  LODWORD(STACK[0x428]) = v32;
  v34 = -773667901 * v27 - ((-1547335802 * v27) & 0x8AF2CC62) - 981899727;
  v35 = 1484283904 * v27 - ((821084160 * v27) & 0x47E44000);
  v36 = (524872794 - (((0x80000000 - (v29 << 29)) & 0xBFFFFFFF) + (v30 << 28))) ^ 0x5F48EC5A;
  v37 = (1579850863 * v30 - ((-1135265570 * v30 - 656900744) & 0xF54EF848) + 1729346272) >> 4;
  v38 = ((v37 | v36) ^ 0x7AA77C2) - 2 * (((v37 | v36) ^ 0x7AA77C2) & 0x10176FDA ^ v37 & 0x10) + 269971402;
  v39 = v38 ^ 0x10176FCA;
  v40 = -1129388577 * (v38 ^ 0x10176FCA) - ((2036190142 * (v38 ^ 0x10176FCA)) & 0x4D8570FC) + 650295422;
  v41 = (((v35 + 603072265) ^ 0x23F22709) & 0xFFFFE000 | (v34 >> 19)) ^ 0x18AF;
  v42 = (((~(369098752 * (v32 ^ 0xB9833CF9)) | 0x9BFFFFFF) - 889192448 * (v32 ^ 0xB9833CF9) - 1306467385) ^ 0xB220E3C6) & 0xFF000000 | ((-789507381 * (v32 ^ 0xB9833CF9) - ((568468886 * (v32 ^ 0xB9833CF9)) & 0x22A087BC) + 290472926) >> 8);
  v43 = ((2 * v42) & 0x7F3E1BF0 ^ 0x220080) + (v42 ^ 0xBF8E5DBB);
  v44 = ((-926261248 * v4 - ((-1852522496 * v4 + 1232896000) & 0xBA104000) + 29782927) ^ 0x5D08338F) & 0xFFFFE000 | ((-489798061 * v4 - ((-979596122 * v4 - 1777710108) & 0xC46F5D4E) + 758961305) >> 19);
  v45 = ((2 * v44) & 0x7FEDDDEE ^ 0x188C) + (v44 ^ 0x3FF6F2B1);
  v46 = ((v41 - ((2 * v41) & 0xA1FC99C) + 84927694) ^ 0x15188B04 ^ v38) + 1080095240 + v43;
  v47 = v46 ^ 0xFFDF57AA;
  v48 = (2 * v46) & 0xFFBEAF54;
  v49 = 718315235 * v43 - 2 * ((718315235 * v43 + 30903576) & 0xD8B494D ^ (718315235 * v43) & 4) + 1868748385;
  v50 = 338615413 * v45 - ((6142186 * v45 + 13437498) & 0x233F65E) - 746553268;
  v51 = ((-1610612736 * v45 - 1610612736) & 0x80000000) + 1342177280 * v45 + 301396074;
  v52 = ((-1147700224 * v39 - ((1999566848 * v39) & 0xB0D2F000) - 664176555) ^ 0xD8697855) & 0xFFFFFC00 | (v40 >> 22);
  v53 = -149422080 * v43 - ((1848639488 * v43 + 1367343104) & 0x7F200000) + 676732774;
  v54 = ((946255872 * (v47 + v45 + v48) - ((1892511744 * (v47 + v45 + v48) + 1110216704) & 0xD316B000) + 178366204) ^ 0x698B5EFC) & 0xFFFFF800 | ((-578351913 * (v47 + v45 + v48) - ((-1156703826 * (v47 + v45 + v48) + 933774738) & 0x84DA3260) + 1581333497) >> 21);
  v55 = ((2 * v54) & 0x6A8B5F7E ^ 0x426) + (v54 ^ 0xB545ADAC);
  v56 = 41399626 * v55;
  v57 = 82799252 * v55 + 1235242900;
  v58 = ((41399626 * v55 + 617621450) & 0xB9CB42F6) + 2126783835 * v55;
  v59 = (((v52 ^ 0x9B) - ((2 * v52) & 0x86CCBC48) + 1130782244) ^ 0x43665E24) + 1253724225 + v55;
  v60 = ((v53 ^ 0xBF961F66) & 0xFFF80000 | (v49 >> 13)) ^ 0x46C5A;
  v61 = v60 - ((2 * v60) & 0x577A7464);
  v62 = ((2 * ((v51 ^ 0x41F6F06A) & 0xF0000000 | (v50 >> 4))) & 0x5FFF75F2 ^ 0x10233560) + (((v51 ^ 0x41F6F06A) & 0xF0000000 | (v50 >> 4)) ^ 0x27EE254B);
  v61 += 733821490;
  v63 = (v59 - ((2 * v59) & 0x140A9E68) - 1979363532) ^ v61;
  v64 = v63 & 0x677A53DE;
  v65 = (v63 & 0x9885AC21 ^ 0x80802400) - v62 + 805288697;
  v66 = ((2 * ((v64 ^ 0x21385106) + (v65 ^ 0xB7FECBFE) + ((2 * v65) & 0x6FFD97FC) + 1208038402)) & 0xF5FE76FE) + (((v64 ^ 0x21385106) + (v65 ^ 0xB7FECBFE) + ((2 * v65) & 0x6FFD97FC) + 1208038402) ^ 0xFAFF3B7F);
  v67 = ((((v56 - (v57 & 0x5BF37EAC) - 758520031) ^ 0xADF9BF57) & 0xFFFFFFFE | ((v58 + 280119967) >> 31)) ^ 0xFEF7FFFA) + ((2 * ((v56 - (v57 & 0x5BF37EAC) - 758520031) ^ 0xADF9BF57)) & 0xFDEFFFF4);
  v68 = ((910163968 * v66 - ((1820327936 * v66 - 1400897536) & 0xA0000000) - 1503118932) ^ 0x502839AC) & 0xFFC00000 | ((-1657391911 * v66 - ((980183474 * v66 - 343045454) & 0xB898FD32) - 770489358) >> 10);
  v69 = ((2 * v68) & 0xFFED9DFE ^ 0x6C043E) + (v68 ^ 0x7FC1DDE0);
  v70 = (248823808 * v62 - ((497647616 * v62 + 2132967424) & 0xE3CD8000) - 1317522464) ^ 0xF1E6F3E0 | ((-193184941 * v62 - ((1761113766 * v62 + 918944906) & 0x44807EB0) + 1034108317) >> 18);
  v71 = ((2 * v70) & 0xA1DFFDEE ^ 0x5120) + (v70 ^ 0xD0EFD667);
  v72 = -2123077523 * v71 - ((48812250 * v71 + 379597226) & 0xACA46660) + 1638026245;
  v73 = ((-1406256640 * (v61 ^ 0x2BBD3A32)) & 0xFFF7BE00) + ((-703128320 * (v61 ^ 0x2BBD3A32)) ^ 0xFFFBDFFB) + (((-1546250467 * (v61 ^ 0x2BBD3A32) - ((128724538 * (v61 ^ 0x2BBD3A32)) & 0x347EA5D8) + 440357612) >> 24) ^ 0x1A) + 17571851 + v67;
  v74 = (v73 ^ 0xDFFFFFD3) - v71 + ((2 * v73) & 0xBFFFFFA6) - v69;
  v75 = (((-503316480 * v67 - ((-1006632960 * v67 - 1744830464) & 0xB4000000) + 657187001) ^ 0xDB2BE0B9) & 0xFE000000 | ((1415813105 * v67 - ((-1463341086 * v67 + 1438326604) & 0xA3903452) + 2091231695) >> 7)) ^ 0x1A39034;
  v76 = v75 - ((2 * v75) & 0xCCE4C60) - 2040060368;
  v77 = (((1019477198 * v69 - ((2038954396 * v69 + 1187698076) & 0xFF02C898)) & 0xFFFFFFFE | ((((1019477198 * v69 - 1553634610) & 0x9FBFC82C) - 509738599 * v69 - 563255678) >> 31)) - 1561932006) ^ 0xFF81644C;
  v78 = v77 - ((2 * v77) & 0xA0600B92) - 802159159;
  v79 = ((((743440384 * v74 + 1861222399) | 0x459FFFFF) - 371720192 * v74 - 1514454737) ^ 0xDD33412E) & 0xFFF80000 | ((-1071448773 * (v74 + 419235997) - ((4586102 * (v74 + 419235997) + 230942660) & 0x3FF0C62C) + 651843320) >> 13);
  v80 = ((2 * v79) & 0x9EEFFD7E ^ 0x1FD06) + (v79 ^ 0x4F77017C);
  v81 = (v78 ^ 0xD03005C9) + (v76 ^ 0x86672630);
  v82 = (((-1928486912 * v71 - ((437993472 * v71 + 104153088) & 0xBE4D8000) - 499024748) ^ 0xDF26DC94) & 0xFFFFE000 | (v72 >> 19)) ^ 0x1ACA;
  v83 = STACK[0x588];
  LODWORD(STACK[0x468]) = HIWORD(LODWORD(STACK[0x588])) ^ 0xEE8841F0;
  v84 = (v82 - 2 * (v82 & 0x77C62ACD ^ (v72 >> 19) & 5) - 138007864) ^ v76 ^ 0xA1910931 ^ v78;
  v85 = v80 - 1333264063 + v84 - ((2 * (v80 - 1333264063 + v84)) & 0xB25E07C6) - 651230237;
  LODWORD(STACK[0x528]) = v83 >> 8;
  LODWORD(STACK[0x568]) = (v83 >> 8) ^ 0xE2F98852;
  v86 = (v81 ^ 0x7DFFBFFA) - v80 + ((2 * v81) & 0xFBFF7FF4);
  v87 = v85 ^ 0x92E8E7A3 ^ (v86 - ((2 * v86 + 178027306) & 0xF4DA442) - 1930096714);
  v88 = v87 - ((2 * v87 + 287768066) & 0x151AD896) - 484381876;
  v89 = (v88 ^ 0x8A8D6C4B) + v80 - 1333264063 - ((2 * ((v88 ^ 0x8A8D6C4B) + v80 - 1333264063)) & 0x6DFA87D0) - 1224915992;
  LODWORD(STACK[0x438]) = (v88 ^ 0x8A8D6C4B) + (v78 ^ 0xD03005C9) - ((2 * ((v88 ^ 0x8A8D6C4B) + (v78 ^ 0xD03005C9))) & 0x8031820C) - 1072119546;
  v90 = 5 * (LODWORD(STACK[0x5C0]) ^ 0x94E9C7FF);
  v91 = STACK[0x598];
  LODWORD(STACK[0x560]) = v89;
  v92 = (v91 ^ v89 ^ 0x201AF7E4) - (((v90 ^ 0x1E95C147) + 2 * (v91 ^ v89 ^ 0x201AF7E4)) & 0x5A4D78CA) + 1014079236;
  v93 = LODWORD(STACK[0x590]) ^ 0x6FE2507;
  LODWORD(STACK[0x530]) = v93;
  v94 = ((((v92 ^ 0xAD26BC65) + v93 - ((2 * ((v92 ^ 0xAD26BC65) + v93)) & 0xC81F0202) - 468745955) & 0xFFFFFFFE) - 28) ^ 0xB097ACD9;
  v95 = LODWORD(STACK[0x580]) - 1600093149;
  v96 = LODWORD(STACK[0x580]) + 265734055;
  LODWORD(STACK[0x448]) = HIBYTE(v83) ^ 0x872325A;
  v97 = vdupq_n_s32(v96);
  v98 = vdupq_n_s32(0xE7C2A65C);
  v99 = vdupq_n_s32(0x9D07DAA4);
  v100 = vdupq_n_s32(0xFB605CE0);
  v101 = STACK[0x5A8];
  LODWORD(STACK[0x440]) = HIBYTE(LODWORD(STACK[0x5A8])) ^ 0xE4808586;
  LODWORD(STACK[0x540]) = (v101 >> 8) ^ 0x83EDD184;
  LODWORD(STACK[0x538]) = (v26 >> 8) ^ 0xC13803C9;
  LODWORD(STACK[0x43C]) = HIBYTE(v26) ^ 0x10F6ABFC;
  LODWORD(STACK[0x5C0]) = v101 ^ v83 ^ v26;
  LODWORD(STACK[0x41C]) = v95;
  LODWORD(STACK[0x410]) = v30 + 974881540;
  v102 = vdupq_n_s32(v30 + 974881540);
  LOBYTE(v30) = 73 * v94 + 42;
  LOBYTE(v96) = 71 * v94 + 42;
  v103 = 1329065546 * v94 + 1533066026;
  LODWORD(STACK[0x580]) = (v90 - 128632250) & 0x7AAC5DD;
  v104 = (v90 + 70) & 0xDD ^ 0x9C;
  v105.i64[0] = 0x800000008;
  v105.i64[1] = 0x800000008;
  LODWORD(STACK[0x458]) = HIWORD(v101);
  LODWORD(STACK[0x460]) = HIWORD(v26);
  LODWORD(STACK[0x520]) = v88;
  LODWORD(STACK[0x42C]) = v85;
  LODWORD(STACK[0x550]) = v88 ^ v85;
  LOBYTE(v85) = v96 + v94 - ((-112 * v94) & 0x50);
  v106 = STACK[0x5C0];
  v107.i32[0] = dword_10025F060[((v96 - ((-114 * v94) & 0x54)) ^ v106) ^ 0xD1];
  v107.i32[1] = dword_10025F060[(v85 ^ v106) ^ 0xD1];
  v107.i32[2] = dword_10025F060[((v30 - ((-110 * v94) & 0x54)) ^ v106) ^ 0xD1];
  v107.i32[3] = dword_10025F060[((v103 - (((74 * v94) << v104) & 0x54)) ^ v106) ^ 0xD1];
  v108 = vandq_s8(vaddq_s32(v107, vdupq_n_s32(0x6F364384u)), vdupq_n_s32(v95));
  v109 = vsubq_s32(v108, vandq_s8(vaddq_s32(v108, v108), vdupq_n_s32(0x67C2A65Cu)));
  v110 = veorq_s8(vaddq_s32(vaddq_s32(v109, v109), v98), v98);
  v111 = vaddq_s32(vsubq_s32(v107, vmvnq_s8(v97)), veorq_s8(vaddq_s32(vsubq_s32(v110, vandq_s8(vaddq_s32(v110, v110), vdupq_n_s32(0x9CA1F4FC))), vdupq_n_s32(0xCE50FA7F)), vdupq_n_s32(0x31AF0580u)));
  v112 = veorq_s8(veorq_s8(vdupq_n_s32(v14), v99), vaddq_s32(vsubq_s32(v111, vandq_s8(vaddq_s32(v111, v111), vdupq_n_s32(0x3A0FB548u))), v99));
  v113 = veorq_s8(vaddq_s32(vsubq_s32(v112, vandq_s8(vaddq_s32(v112, v112), vdupq_n_s32(0xF6C0B9C0))), v100), v102);
  v114 = veorq_s8(v113, v100);
  v115 = veorq_s8(vandq_s8(v114, vdupq_n_s32(0x7CF66CFu)), vandq_s8(v113, v105));
  v116 = veorq_s8(vaddq_s32(vsubq_s32(v114, vaddq_s32(v115, v115)), vdupq_n_s32(0x7CF66C7u)), vdupq_n_s32(0x43DFDB63u));
  *(a1 + 4 * ((v96 - ((-114 * v94) & 0x54)) ^ 0x2Au)) = v116.i32[0];
  *(a1 + 4 * (v85 & 0xFE ^ 0x2A)) = v116.i32[1];
  *(a1 + 4 * ((v30 - ((-110 * v94) & 0x54)) ^ 0x2Au)) = v116.i32[2];
  *(a1 + 4 * ((v103 - (((1329065546 * v94) << v104) & 0xB6C17654)) & 0xFE ^ 0x2A)) = v116.i32[3];
  return (*(&off_1002D7880 + v90))();
}

uint64_t sub_100086F24()
{
  v0 = STACK[0x580];
  LODWORD(STACK[0x5B8]) = LODWORD(STACK[0x580]) ^ 0x5A;
  v1 = (*(&off_1002D7880 + (v0 + 942)))(1032);
  STACK[0xAE0] = v1;
  return (*(&off_1002D7880 + (((v1 == 0) * ((v0 ^ 0xFFFFFADE) + v0 - 702)) | v0)))();
}

uint64_t sub_100086F84(uint64_t a1)
{
  v2 = (((LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x550]) ^ 0xF6518AA3) - ((2 * (LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x550]) ^ 0xF6518AA3) + 899876644) & 0x6E37DCE4) + 1374515716) ^ 0xB71BEE72) + LODWORD(STACK[0x530]);
  LOBYTE(v2) = (v2 - ((2 * v2) & 0x9E) - 49) & 0xFE ^ 3;
  v3 = LODWORD(STACK[0x560]) ^ 0xB6FD43E8;
  v4 = LODWORD(STACK[0x510]) - 1828703986;
  v5 = (v3 & v4) - ((2 * (v3 & v4)) & 0x37E7C946);
  v6 = ((v3 + v4) ^ 0xFFB936ED) + ((2 * (v3 + v4)) & 0xFF726DDA) + 4638996 + ((((2 * v5 - 1209546426) ^ 0xB7E7C946) - 2 * (((2 * v5 - 1209546426) ^ 0xB7E7C946) & 0x5D92EC1C ^ (2 * v5 - 1209546426) & 0x18) - 577573883) ^ 0x226D13FA);
  v7 = -13 - 83 * v2 - ((90 * v2) & (((v1 + 33) | 0x30) - 74));
  v8 = (LODWORD(STACK[0x540]) ^ LODWORD(STACK[0x568]) ^ ((v7 ^ LODWORD(STACK[0x538]) ^ 0x48) - 2 * ((v7 ^ LODWORD(STACK[0x538]) ^ 0x48) & 0xAA ^ (v7 ^ LODWORD(STACK[0x538])) & 0x20) - 118));
  v9 = LODWORD(STACK[0x470]) ^ 0x3FB63E0F ^ (v6 - ((2 * v6) & 0x7C63433C) - 1104043618) ^ v8 ^ dword_10025A770[v8 ^ 0x72];
  *(a1 + 4 * (v7 ^ 0xF3u)) = (v9 - ((2 * v9) & 0xE2BB97C0) - 245511200) ^ 0x6F15D65E;
  return (*(&off_1002D7880 + v1))();
}

uint64_t sub_1000871DC()
{
  LODWORD(STACK[0x5B8]) = (v0 - 200014649) & 0xBEBFFCF;
  v1 = (*(&off_1002D7880 + (v0 ^ 0x87B)))(1028);
  STACK[0xAB0] = v1;
  return (*(&off_1002D7880 + (((((v1 == 0) ^ (v0 - 57)) & 1) * (((v0 - 44) | 0x42) + 7)) | v0)))();
}

uint64_t sub_100087254(uint64_t a1)
{
  LODWORD(STACK[0x580]) = v2;
  v3 = ((LODWORD(STACK[0x508]) ^ LODWORD(STACK[0x520]) ^ 0x838022FB) - ((2 * (LODWORD(STACK[0x508]) ^ LODWORD(STACK[0x520]) ^ 0x838022FB) + 90619994) & 0xF57993E) - 1168167732) ^ 0x7ABCC9F;
  v4 = LODWORD(STACK[0x518]) ^ 0xED4C35A;
  LODWORD(STACK[0x510]) = v4;
  LOBYTE(v3) = (v3 + v4 + 89 + (~(2 * (v3 + v4)) | 0x4F)) & 0xFE ^ 0x8F;
  v5 = 109 * v3 + 91;
  v6 = dword_10027B440[(LOBYTE(STACK[0x458]) ^ LOBYTE(STACK[0x468]) ^ LOBYTE(STACK[0x460]) ^ (v5 - ((-38 * v3) & 0xB6))) ^ (((v1 + 1094) | 0x200) - 1570)];
  HIDWORD(v7) = v6 ^ 0x29E9;
  LODWORD(v7) = v6 ^ 0xC9300000;
  v8 = (v7 >> 18) - ((2 * (v7 >> 18)) & 0x6FFAC9C) + 58709582;
  v9 = LODWORD(STACK[0x454]) ^ LODWORD(STACK[0x450]) ^ v8 ^ 0x2AAEA5A6 ^ (((8 * v8) ^ 0x1BFEB270) - ((2 * ((8 * v8) ^ 0x1BFEB270)) & 0x62E3FE50) + 829554477);
  *(a1 + 4 * ((v5 - ((-38 * v3) & 0xB6)) ^ 0x5Bu)) = LODWORD(STACK[0x4F0]) ^ (v9 - 1935733288 - ((2 * v9) & 0x193E3122) + 2745) ^ 0xB26FE9DA;
  return (*(&off_1002D7880 + v1))();
}

uint64_t sub_100087450()
{
  LODWORD(STACK[0x5B8]) = v0 ^ 0x24B;
  v1 = (*(&off_1002D7880 + (v0 ^ 0xEC7)))(1028);
  STACK[0xAF8] = v1;
  v2 = LODWORD(STACK[0x580]);
  return (*(&off_1002D7880 + (((v1 != 0) * (((v0 ^ 0x24B) - 980) ^ 0xE8)) ^ v0)))();
}

uint64_t sub_1000874B0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = (((LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x438]) ^ 0xDB67872) - ((2 * (LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x438]) ^ 0xDB67872) - 2076910704) & 0xEDFC8618) + 957919444) ^ 0x76FE430C) + (LODWORD(STACK[0x598]) ^ 0x86A92F1C);
  LOBYTE(v5) = (v5 - ((2 * v5) & 0x8A) + 69) & 0xFE ^ 0x21;
  v6 = (-2 - 45 * v5 - ((-90 * v5) & 0xFC));
  v7 = LODWORD(STACK[0x434]) ^ a4 ^ LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x42C]) ^ LODWORD(STACK[0x438]) ^ LODWORD(STACK[0x560]) ^ dword_100266B40[LODWORD(STACK[0x440]) ^ LODWORD(STACK[0x448]) ^ LODWORD(STACK[0x43C]) ^ v6 ^ 0xFC041C09] ^ ((LODWORD(STACK[0x440]) ^ LODWORD(STACK[0x448]) ^ LODWORD(STACK[0x43C]) ^ v6 ^ (((2 * v4) ^ 0x60C) - 66841499)) - ((2 * (LODWORD(STACK[0x440]) ^ LODWORD(STACK[0x448]) ^ LODWORD(STACK[0x43C]) ^ v6 ^ (((2 * v4) ^ 0x60C) - 66841499)) + 925998306) & 0x75C3E6DC) - 696598049) ^ 0x6EDA1223;
  *(a1 + 4 * (v6 ^ 0xFEu)) = (v7 - ((2 * v7) & 0xA722412C) + 1402019990) ^ 0x61E29B00;
  return (*(&off_1002D7880 + v4))();
}

uint64_t sub_10008767C()
{
  LODWORD(STACK[0x5B8]) = (v0 + 946273773) & 0xC798FEEF;
  v1 = (*(&off_1002D7880 + v0 + 97))(1032);
  STACK[0xB00] = v1;
  return (*(&off_1002D7880 + (((2 * (((v1 == 0) ^ (((v0 - 19) & 0xEF) + 78)) & 1)) & 0xFB | (4 * (((v1 == 0) ^ (((v0 - 19) & 0xEF) + 78)) & 1))) ^ v0)))();
}

uint64_t sub_1000876E8(uint64_t a1)
{
  v3 = ((LODWORD(STACK[0x4E0]) ^ LODWORD(STACK[0x520]) ^ 0x74FB1D91) - ((2 * (LODWORD(STACK[0x4E0]) ^ LODWORD(STACK[0x520]) ^ 0x74FB1D91) + 664235306) & 0x78D7DC82) - 1875401514) ^ 0x74FB1D91;
  v4 = (v3 - ((2 * v3 + 664235306) & 0x78D7DC82) - 1875401514) ^ 0x74FB1D91;
  v5 = ((v4 - ((2 * v4 + 664235306) & 0x78D7DC82) - 1875401514) ^ 0x3C6BEE41) + (LODWORD(STACK[0x508]) ^ 0xDDD41DEB);
  LOBYTE(v5) = (((v5 - ((2 * v5) & 0x54) - 82) & 0xFE) - 4) ^ 0xBB;
  v6 = LODWORD(STACK[0x4C0]) + 1038950851;
  v7 = vdupq_n_s32(STACK[0x424]);
  v8 = vdupq_n_s32(STACK[0x420]);
  v9 = vdupq_n_s32(LODWORD(STACK[0x428]) ^ LODWORD(STACK[0x410]));
  v10 = vdupq_n_s32(LODWORD(STACK[0x5B0]) ^ LODWORD(STACK[0x41C]));
  v11 = STACK[0x4D0];
  LODWORD(STACK[0x580]) = v6;
  v12 = -53 * v5 - 72;
  v13 = vdupq_n_s32(0x41545D78u);
  v14 = veorq_s8(v7, v9);
  v9.i64[0] = 0x200000002;
  v9.i64[1] = 0x200000002;
  v15.i64[0] = 0x1400000014;
  v15.i64[1] = 0x1400000014;
  v16 = (v12 - ((-106 * v5) & 0x70));
  v17 = (v12 + v5 - ((-104 * v5) & 0x70)) & 0xFC;
  v18 = (-51 * v5 - 72 - ((-102 * v5) & 0x70));
  v19 = (((v2 + 16) ^ 0xEB) * v5 - ((2 * ((v2 + 16) ^ 0xEB) * v5) & 0x70) - 72) & 0xFE;
  v20 = LODWORD(STACK[0x440]) ^ LODWORD(STACK[0x448]) ^ LODWORD(STACK[0x43C]);
  v21.i32[0] = v20 ^ v16;
  v21.i32[1] = v20 ^ v17;
  v21.i32[2] = v20 ^ v18;
  v21.i32[3] = v20 ^ v19;
  v22.i32[0] = dword_10025AB70[v20 ^ v16 ^ v1];
  v22.i32[1] = dword_10025AB70[v20 ^ v17 ^ v1];
  v22.i32[2] = dword_10025AB70[v20 ^ v18 ^ v1];
  v22.i32[3] = dword_10025AB70[v20 ^ v19 ^ v1];
  v23 = vsubq_s32(veorq_s8(v21, vdupq_n_s32(0xFC041CFA)), veorq_s8(v21, vdupq_n_s32(0xF683966E)));
  v24 = veorq_s8(veorq_s8(veorq_s8(v14, v22), vdupq_n_s32(0x6556F8E5u)), vaddq_s32(vsubq_s32(v23, vandq_s8(vaddq_s32(v23, v23), vdupq_n_s32(0x5FC8D2F0u))), vdupq_n_s32(0x2FE46978u)));
  v25 = veorq_s8(vaddq_s32(vsubq_s32(v24, vandq_s8(vaddq_s32(v24, v24), vdupq_n_s32(0x82A8BAF0))), v13), v8);
  v26 = veorq_s8(v25, v13);
  v27 = veorq_s8(vandq_s8(v26, vdupq_n_s32(0x281CDEBBu)), vandq_s8(v25, v9));
  v28 = veorq_s8(veorq_s8(v10, vdupq_n_s32(0x1B2AC8Eu)), vaddq_s32(vsubq_s32(v26, vaddq_s32(v27, v27)), vdupq_n_s32(0x281CDEB9u)));
  v29 = veorq_s8(vaddq_s32(vsubq_s32(v28, vandq_s8(vaddq_s32(v28, v28), vdupq_n_s32(0x93C4C58E))), vdupq_n_s32(0xC9E262C7)), vdupq_n_s32(v6 ^ v11));
  v30 = veorq_s8(v29, vdupq_n_s32(0xD1515EEB));
  v31 = veorq_s8(vandq_s8(v30, vdupq_n_s32(0x1D9B893Du)), vandq_s8(v29, v15));
  v32 = veorq_s8(vaddq_s32(vsubq_s32(v30, vaddq_s32(v31, v31)), vdupq_n_s32(0x1D9B8929u)), vdupq_n_s32(0x73A50C8Du));
  *(a1 + 4 * (v16 ^ 0xB8u)) = v32.i32[0];
  *(a1 + 4 * (v17 ^ 0xB8u)) = v32.i32[1];
  *(a1 + 4 * (v18 ^ 0xB8u)) = v32.i32[2];
  *(a1 + 4 * (v19 ^ 0xB8u)) = v32.i32[3];
  return (*(&off_1002D7880 + v2))();
}

uint64_t sub_100087AC4()
{
  v1 = (v0 + 856437154) & 0xCCF3CEFF;
  v2 = (*(&off_1002D7880 + (v0 ^ 0xC6E)))(1028);
  STACK[0xAD0] = v2;
  LODWORD(STACK[0x5B8]) = v1;
  return (*(&off_1002D7880 + (((v2 == 0) * (v1 ^ 0x4A0)) ^ v0)))();
}

uint64_t sub_100087B2C()
{
  v1 = v0 - 868;
  v2 = (((LODWORD(STACK[0x520]) ^ LODWORD(STACK[0x590]) ^ 0x287FF72F) - ((2 * (LODWORD(STACK[0x520]) ^ LODWORD(STACK[0x590]) ^ 0x287FF72F) + 385948330) & 0x18E69298) + 1744033441) ^ 0x8C73494C) + LODWORD(STACK[0x510]);
  LOBYTE(v2) = (v2 - ((2 * v2) & 0x1E) + 15) & 0xFE ^ 0xA9;
  v3 = ((4 * LODWORD(STACK[0x458])) ^ 0x1FED8) - 2 * (((4 * LODWORD(STACK[0x458])) ^ 0x1FED8) & 0x6C ^ (4 * LODWORD(STACK[0x458])) & 4) + 363;
  v4 = ((v3 & 0xFC | (LODWORD(STACK[0x5A8]) >> 22) & 2) ^ 0x6A) - ((2 * v3) & 0x28) - 1002994923;
  v5 = (v2 - ((2 * v2) & 0xBA) + 93) ^ 0x5D;
  v6 = ((4 * LODWORD(STACK[0x460])) ^ 0xA6B8) - ((2 * ((4 * LODWORD(STACK[0x460])) ^ 0xA6B8)) & 0x75EB8) + 165916508;
  v7 = ((v4 >> 1) ^ 0x8A | ((LODWORD(STACK[0x5A8]) >> 22 << 7) + 193) ^ 0xC1) - (v4 & 0x6A);
  v8 = v6 ^ 0x9E3AF5C;
  v9 = (v6 & 0xFFFFFFFC | (LODWORD(STACK[0x5B0]) >> 22) & 3) ^ 0x9E3AF5E;
  v10 = v9 - ((2 * v9) & 0x7624A8C) - 1011800762;
  if ((STACK[0x5A8] & 0xFF0000) == 0xB60000)
  {
    v10 = ((LODWORD(STACK[0x5B0]) >> 22) & 3) - 1011800764;
  }

  HIDWORD(v11) = (v7 - 75) ^ 0x5A;
  LODWORD(v11) = (-54 - v7) << 24;
  HIDWORD(v11) = ((v10 ^ 0xC3B12546 | v8) - ((2 * (v10 ^ 0xC3B12546 | v8)) & 0x5E) + 47) ^ ((v11 >> 31) - ((2 * (v11 >> 31)) & 0xFFFFFF9F) - 49);
  LODWORD(v11) = (HIDWORD(v11) ^ 0xE0) << 24;
  v12 = dword_100269300[(((((v11 >> 26) - ((2 * (v11 >> 26)) & 0x44) + 34) ^ 0x27) - ((2 * (((v11 >> 26) - ((2 * (v11 >> 26)) & 0x44) + 34) ^ 0x27)) & 0x96) + 75) ^ LOBYTE(STACK[0x468]) ^ (-11 * v5 + ((2 * v1) ^ 0x2C) - ((-22 * v5) & 0x5C))) ^ 0x73] ^ 0x97A4C76D;
  *(STACK[0xAD0] + 4 * ((-11 * v5 + ((2 * v1) ^ 0x2C) - ((-22 * v5) & 0x5C)) ^ 0xAEu)) = LODWORD(STACK[0x4A0]) ^ LODWORD(STACK[0x490]) ^ LODWORD(STACK[0x550]) ^ v12 ^ 0x9BB979B7 ^ (((2 * v12) ^ 0x47EADAA8) - ((2 * ((2 * v12) ^ 0x47EADAA8)) & 0x82ABEF28) - 1051330668) & 0xC2A725C4;
  return (*(&off_1002D7880 + v1))(511806764, 115, dword_100269300, 2544158573, 1206573736, 2192305960, 3243636628, 3265734084);
}

uint64_t sub_100087E6C()
{
  v1 = (*(&off_1002D7880 + (v0 ^ 8) + 1729))(1028);
  STACK[0xAF0] = v1;
  LODWORD(STACK[0x5B8]) = ((v0 ^ 8) + 72108674) ^ 0x44C48CB;
  return (*(&off_1002D7880 + (((v1 != 0) * ((((v0 ^ 8) + 72108674) ^ 0xEF5CCEFA) + (((v0 ^ 8) + 72108674) | 0x10A33120))) ^ v0 ^ 8)))();
}

uint64_t sub_100087EE4()
{
  v1 = STACK[0x5B8];
  v2 = (LODWORD(STACK[0x5B8]) + 673302913) & 0xD7DE33FF;
  v3 = *(v0 + 8 * (LODWORD(STACK[0x5B8]) ^ 0xCAF));
  v3(STACK[0xAD0]);
  v3(STACK[0xAE0]);
  v4 = *(&off_1002D7880 + v1 + 929);
  v4(STACK[0xAC8]);
  v4(STACK[0xAF8]);
  v4(STACK[0xAF0]);
  v3(STACK[0xAE8]);
  v3(STACK[0xAB0]);
  v5 = (v3)(STACK[0xB00]);
  if (LODWORD(STACK[0xADC]))
  {
    v6 = -42885;
  }

  else
  {
    v6 = 0;
  }

  v7 = STACK[0x798];
  STACK[0xAA8] += v2 ^ 0xFFFFFFFFFFFFFDA8;
  return (*(&off_1002D7880 + (((v6 == ((v2 - 305) ^ 0x117)) * (v2 ^ 0x63A)) ^ v2)))(v5);
}

void sub_100087FE4(_BYTE *a1@<X8>)
{
  v2 = STACK[0x948];
  a1[17] ^= *STACK[0x948] ^ 0xDC;
  a1[18] ^= v2[1] ^ 0x4B;
  a1[19] ^= v2[2] ^ 0xE3;
  a1[20] ^= v2[3] ^ 0x69;
  v3 = STACK[0x710];
  *v3 = 1714769700;
  *STACK[0x548] = a1;
  *STACK[0x558] = (v1 + 1789) ^ LODWORD(STACK[0x990]) ^ 0x440EA788;
  *STACK[0x570] = v3;
  JUMPOUT(0x10007586CLL);
}

void sub_100088090()
{
  *(v1 + 112) = (LODWORD(STACK[0x8D0]) ^ 0xFB7FDFBA) + 1072884976 + ((LODWORD(STACK[0x8D0]) << (3 * (v0 ^ 0x39) + 122)) & 0xF6FFBF74);
  STACK[0x5B0] = STACK[0x8E0];
  v3 = LOWORD(STACK[0x8DA]);
  v4 = STACK[0x608];
  LODWORD(STACK[0x5A0]) = STACK[0x98C];
  LODWORD(STACK[0x5B8]) = v3;
  *(v1 + 64) = STACK[0x5B0];
  *(v1 + 72) = (LODWORD(STACK[0x5B8]) | ((v3 < ((3 * (v0 ^ 0x839) + 1933) ^ 0x231u)) << 16)) + 1073008756;
  *(v1 + 48) = v4;
  *(v1 + 56) = STACK[0x5A0];
  v2 = STACK[0x5C0];
  *v1 = 1714769701;
  *(v1 + 4) = v2;
  JUMPOUT(0x10007586CLL);
}

uint64_t sub_100088098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = *(v12 + (v10 + v8 + 142) % 0x13Fu);
  v14 = (v10 + 3091 - 319 * ((((39651 * (v10 + 3091)) >> 16) + (((v10 + 3091 - ((39651 * (v10 + 3091)) >> 16)) & 0xFFFE) >> 1)) >> 8));
  HIDWORD(v16) = v13 ^ 0x1B;
  LODWORD(v16) = (v13 ^ ((v11 ^ (a8 + 422)) + 121)) << 24;
  v15 = v16 >> 29;
  v17 = *(v12 + (v10 + v8 + 98) % 0x13Fu);
  HIDWORD(v16) = v17 ^ 3;
  LODWORD(v16) = (v17 ^ 0x38) << 24;
  v18 = ((v16 >> 27) ^ 0x2E) + ((2 * (v16 >> 27)) & 0x5C) + (*(v12 + v14) ^ 0x6B ^ (v15 - ((2 * v15) & 0xFFFFFFA0) + 80)) - 46;
  v19 = *(v12 + (v10 + v8) % 0x13Fu);
  HIDWORD(v16) = ~v19;
  LODWORD(v16) = (v19 ^ 0x3A) << 24;
  v20 = (v18 ^ 0x1B) - (v16 >> 25) + ((2 * v18) & 0x36) - 27;
  v21 = *(a7 + 8 * ((454 * (v10 + 1 == v9 + 1276)) ^ v11));
  *(v12 + v14) = v20 - ((2 * v20) & 0x77) + 59;
  return v21();
}

uint64_t sub_1000881E0@<X0>(char a1@<W1>, int a2@<W8>)
{
  LODWORD(STACK[0x5B8]) = 0;
  v6 = (a2 + 310072922) | 0x402;
  v7 = (a2 - 1415087796) & 0x66D3DFBE;
  v8 = v4[109] ^ 0x3B;
  LODWORD(STACK[0x5A0]) = v7;
  v9 = v7 + 578070843 + v8 - ((2 * v8) & 0x1DA);
  v10 = v4[21] ^ 0x3B;
  LODWORD(STACK[0x4D0]) = v6;
  v11 = v10 - ((v6 - 869) & (2 * v10)) - 24505137;
  v12 = ((v11 ^ 0xFE8A14CF | v9 ^ 0x2274ACED) - ((2 * (v11 ^ 0xFE8A14CF | v9 ^ 0x2274ACED)) & 0x1C) + 78) & 0x73 ^ 0x42 | (((v11 ^ 0x220004CF) & (v9 ^ 0xCED)) - ((2 * ((v11 ^ 0x220004CF) & (v9 ^ 0xCED))) & 0xB23F94C) + 1167195302) ^ 0x4591FCA6;
  v13 = (v12 ^ 0x6F5FFFDD) - 1868562397 + ((2 * v12) & 0x5EBFFFBA);
  v14 = (((v13 * v13) ^ 0x7BA96F7D) - 2074701693 + ((2 * v13 * v13) & 0xF752DEFA)) * v13;
  v15 = ((2 * v14) & 0xFF1336F6) + (v14 ^ 0x7F899B7B);
  LODWORD(STACK[0x590]) = v15;
  v16 = STACK[0x5B0];
  v17 = (*(STACK[0x5B0] + (v4[40] & 0x3F ^ 0x3BLL)) & 0x75 | v4[352] & 0x8A) ^ 8;
  v18 = v4[355];
  v19 = STACK[0x5A8];
  v20 = (*(STACK[0x5A8] + (v4[52] & 0x3F ^ 0x3BLL)) ^ 8) & (v18 ^ 8);
  v21 = (v20 - ((2 * v20) & 0xFFFFFF98) + 76) ^ 0x4C | v18 & 0xFFFFFFB8 ^ 0xFFFFFFB0;
  v22 = (v17 - ((2 * v17) & 0xFFFFFFBF) + 95) ^ 0x5F;
  v23 = (v21 - ((2 * v21) & 0x58) + 44) ^ 0x2C;
  LOBYTE(v20) = ((v23 | v22) - ((2 * (v23 | v22)) & 0x30) + 56) & 0x2B;
  v24 = (v23 & v22) - ((v23 & v22) >> 5 << 6) + 96;
  LOBYTE(v24) = (v4[94] ^ 0x3B) - (((v20 ^ 0x28 | v24 ^ 0x60) - ((2 * (v24 ^ 0x60)) & 0x88) + 68) ^ 0x44);
  v4[94] = v24 - ((2 * v24) & 0x77) + 59;
  LOBYTE(v24) = (byte_10025CCD0[v4[85] & 0x3F ^ 0x3BLL] & 0x40 | v4[139] & v2) ^ 0x72;
  LOBYTE(v24) = v24 + (~(2 * v24) | 0xDF) - 110;
  v4[64] ^= 0x43 ^ ((v24 & 0xF7 ^ 0x99) - 2 * ((v24 & 0xF7 ^ 0x99) & 0x47 ^ v24 & 4) + 67);
  v25 = *(v16 + (v4[157] & 0x3F ^ 0x3BLL)) ^ 8;
  v26 = (v4[366] ^ 8) * (v4[366] ^ 8);
  LODWORD(STACK[0x588]) = (v4[343] ^ 8) - 45 * (((2 * v26) & 0x76) + (v26 ^ 0x3B));
  LODWORD(STACK[0x560]) = 98 - v25 - ((-6 - 2 * v25) & 0xFFFFFFCA);
  v27 = v4[125] & 0xC9 ^ 0xB;
  LODWORD(STACK[0x528]) = v27 + ((2 * v27) & 0xFFFFFFF1 ^ 0xFFFFFFFB);
  v28 = *(v16 + (v4[104] & 0x3F ^ 0x3BLL)) ^ 8;
  v29 = (((v4[387] & 0x3E ^ v2 | v4[387] & 0xA1) - 2 * ((v4[387] & 0x3E ^ v2) & 7 | v4[387] & 1) + 71) ^ 0x47) & ((v28 * v28 - ((2 * v28 * v28) & 0x68) - 76) ^ 0xFFFFFFB4);
  v4[327] = -12;
  LOBYTE(v29) = (v4[175] ^ 0x3B) - (v4[52] ^ 0x3B);
  v4[175] = v29 - ((2 * v29) & 0x77) + 59;
  v30 = 205 * (*(v19 + (v4[44] & 0x3F ^ 0x3BLL)) ^ 8);
  LODWORD(STACK[0x520]) = (v30 >> 10) - ((v30 >> 9) & 0x2C);
  v4[100] = (v4[100] ^ 0x3B) + ((4 - 2 * (v4[100] ^ 0x3B)) | 0x89) + 57;
  LOBYTE(v30) = (v4[386] ^ 8) + (*(v16 + (v4[17] & 0x3F ^ 0x3BLL)) ^ 8);
  v4[386] = v30 - ((2 * v30) & 0x10) + 8;
  LOBYTE(v30) = (v4[415] & 0x8C | byte_10025CCD0[v4[57] & 0x3F ^ 0x3BLL] & 0x73) ^ 0x78;
  v31 = (v30 - ((2 * v30) & 0x2C) + 22) ^ 0x16;
  v32 = (v4[101] ^ 0x3B) + ((v31 / 3u) ^ 0xFFFFFF90) - (((171 * v31) >> 8) & 0xDE) + 112;
  v4[101] = v32 - ((2 * v32) & 0x77) + 59;
  v33 = byte_10025CCD0[v4[217] & 0x3F ^ 0x3BLL];
  v34 = (((v33 & 0x75 ^ 0xFFFFFFFA) + ((2 * v33) & 8 ^ 0xFFFFFFEF) + 13) ^ 0xC) & (v4[398] ^ 8);
  v35 = (v34 - ((2 * v34) & 0x7A) + 61) ^ 0x3D;
  v36 = ((v35 | v33 & 0x8A) - ((2 * v35) & 0x48) + 36) ^ 0x24 | (v4[7] >> 1) ^ 0x1D;
  LOBYTE(v36) = (v4[249] ^ 0x3B) - ((v36 - ((2 * v36) & 0xAE) + 87) ^ 0x57);
  v4[249] = v36 - ((2 * v36) & 0x77) + 59;
  v37 = *(v16 + (v4[241] & 0x3F ^ 0x3BLL));
  v4[30] ^= 0x58u;
  v38 = v37 & 0xFFFFFFFC | *v19 & 3;
  v39 = (v38 ^ 0x37) + ((2 * (v38 & 0x3F)) ^ 0x10) - 63;
  v40 = (((v39 * v39) ^ 0xFFFFFFC0) + ((v39 * v39) >> 6 << 7) + 64) * v39;
  v4[215] = v40 - ((2 * v40) & 0x77) + 59;
  v4[446] = *(v16 + ((23 - v15 - ((v2 - 2 * v15) & 0x38)) & 0x3F ^ 0x1CLL));
  LOBYTE(v14) = *(v16 + (v4[13] & 0x3F ^ 0x3BLL)) & 0x2C ^ 0x8B;
  LOBYTE(v14) = (v14 - ((2 * v14) & 0x18) - 100) ^ 0x9C;
  LOBYTE(v40) = (v4[146] ^ 0x8C) + 73 + ((2 * (v4[146] ^ 0x33)) & 0x6E);
  LOBYTE(v40) = (((v40 * v40) ^ 0xD6) + 42 + ((2 * v40 * v40) & 0xAC)) * v40;
  v41 = (v14 - 2 * (v14 & 0x7F) + 867917439) ^ 0x33BB5E7F;
  v4[381] = (v41 >> ((5 - v40 - 2 * (v40 & 1)) & 7 ^ 5)) ^ ((v41 << (v40 & 7)) - ((2 * (v41 << (v40 & 7))) & 0x22) - 111) ^ 0x99;
  v42 = (v4[131] ^ 0x3B) - ((2 * (v4[131] ^ 0x3B)) & 0x1AC) - 754404138;
  v43 = (v4[393] ^ 8) - ((2 * (v4[393] ^ 8)) & 0x150) + 1795062696;
  v44 = (((v43 ^ 0x6AFE7BA8 | v42 ^ 0xD308B4D6) - ((2 * (v43 ^ 0x6AFE7BA8 | v42 ^ 0xD308B4D6)) & 0x6C62) + 13873) ^ 0x3631) & (((v4[400] ^ 8) - ((2 * (v4[400] ^ 8)) & 0x11A) - 17383283) ^ 0xFEF6C08D);
  v45 = (v44 - ((2 * v44) & 0x63CF286) + 1058961731) ^ 0x3F1E7943 | (((v43 ^ 0x420823A8) & (v42 ^ 0x14D6)) - ((2 * ((v43 ^ 0x420823A8) & (v42 ^ 0x14D6))) & 0x35C88C92) + 1524909641) ^ 0x5AE44649;
  LOBYTE(v42) = ((2 * ((43 - (*(v19 + (v4[220] & 0x3F ^ 0x3BLL)) & 3)) ^ 0x2F)) & 0xFC) + ((43 - (*(v19 + (v4[220] & 0x3F ^ 0x3BLL)) & 3)) ^ 0xD1);
  v46 = (v45 - ((2 * v45) & 0x1936CD42) - 1935972703) ^ 0x8C9B66A1;
  v47 = (((v46 >> (v42 + 2)) - ((2 * (v46 >> (v42 + 2))) & 0x3C) + 158) ^ ((v46 << (6 - v42)) - ((2 * (v46 << (6 - v42))) & 0xA8) + 84) ^ 0xFFFFFFCA) + (v4[330] ^ 8);
  v4[330] = v47 - ((2 * v47) & 0x10) + 8;
  v48 = (v4[10] >> 1) ^ 0x1D;
  LOBYTE(v42) = *(v19 + (v4[27] & 0x3F ^ 0x3BLL));
  LOBYTE(v42) = (v42 ^ 0xD7) + 33 + ((2 * (v42 ^ 8)) & 0xBF);
  LOBYTE(v42) = ((2 * v42 * v42) & 0xBE) + ((v42 * v42) ^ 0xDF);
  v49 = (v48 - ((2 * v48) & 0xB8) + 809639132) ^ 0x30421CDC;
  v50 = (v4[67] ^ 0x3B) - (((v49 >> ((v42 + 1) & 7)) - 2 * ((v49 >> ((v42 + 1) & 7)) & 0x3F) + 191) ^ ((v49 << (~v42 & 7)) - ((2 * (v49 << (~v42 & 7))) & 0x20) + 16) ^ 0xFFFFFFAF);
  v4[67] = v50 - ((2 * v50) & 0x77) + 59;
  LOBYTE(v50) = (v4[195] ^ 0x3B) - (byte_10025CCD0[v4[136] & 0x3F ^ 0x3BLL] & 0xAC ^ 0xCE);
  v4[195] = v50 - ((2 * v50) & 0x77) + 59;
  v51 = 171 * (byte_10025CCD0[v4[56] & 0x3F ^ 0x3BLL] ^ 0x96);
  v52 = (v51 >> 9) - ((v51 >> 8) & 0xA);
  LOBYTE(v51) = *(v16 + (v4[196] & 0x3F ^ 0x3BLL)) ^ 8;
  LOBYTE(v42) = *(v19 + (v4[21] & 0x3F ^ 0x3BLL)) ^ 8;
  LOBYTE(v51) = ((((v42 | v51) - ((2 * (v42 | v51)) & 0x24) + 24) ^ 1) + 122) & 0x49 ^ 1 | ((v42 & v51) - 2 * (v42 & v51 & 0xF) - 113) ^ 0x8F;
  LOBYTE(v51) = (*(v19 + (v4[127] & 0x3F ^ 0x3BLL)) ^ 8) - ((v51 - ((2 * v51) & 0x70) + 56) ^ 0x38);
  LOBYTE(v51) = (v4[423] ^ 8) + 2 * v51 + (v51 ^ 0x7F) - 127;
  v4[423] = v51 + (~(2 * v51) | 0xEF) + 9;
  v53 = *(v16 + (v4[182] & 0x3F ^ 0x3BLL));
  v4[369] = ((2 * v4[140]) | 0xEF) + ((*(v19 + (v4[65] & 0x3F ^ 0x3BLL)) & 2 | 8) & ~v4[140]) + 9;
  v54 = ((v4[134] & 0x89 ^ 0x7D) - 2 * ((a1 & 0xFE | (v4[134] & 0x89 ^ 0x7D) & 1) ^ (v4[134] & 0x89 ^ 0x7D | 0x7E)) + 70) ^ 0x46;
  v4[321] = v54 / 5u - (((205 * v54) >> 9) & 0x10) + 8;
  v55 = 171 * (v4[339] ^ 8);
  v56 = *(v16 + (v4[39] & 0x3F ^ 0x3BLL)) ^ 8;
  v57 = (v55 >> 9) - ((v55 >> 8) & 2) - 63;
  v58 = ((v56 - ((2 * v56 + 4) & 0x12) + 59) & 0x32 | v57 & 0x4D) ^ 0x41;
  v59 = ((v58 - 2 * (v58 & 0xEF ^ v57 & 8) + 103) ^ 0x67) + (v4[330] ^ 8);
  v4[330] = v59 - ((2 * v59) & 0x10) + 8;
  v60 = ((2 * v4[322]) & 0xA) + (v4[322] & 7 ^ 0x5D);
  v61 = (55 << (v60 - 93)) - 1822323957 + (~(110 << (v60 - 93)) | 0xD93CE9EB);
  v62 = (~v60 - ((2 - 2 * v60) & 4)) & 7 ^ 2;
  v63 = ((0x37u >> v62) - ((0x6Eu >> v62) & 0x72) + 464351353) ^ v61;
  v64 = (((v63 & 0xFFFFFFD2 ^ 0x88CCFB7F) - ((2 * (v63 & 0xFFFFFFD2 ^ 0x88CCFB7F)) & 0x2AC) + 854) ^ 0x356) & (((v4[401] ^ 8) - ((2 * (v4[401] ^ 8)) & 0x5E) - 1335515601) ^ 0xB065A62F);
  LOBYTE(v20) = (v4[237] ^ 0x3B) + (byte_10025CCD0[v4[201] & 0x3F ^ 0x3BLL] ^ 0x8F);
  v4[237] = v20 - ((2 * v20) & 0x77) + 59;
  v65 = *(v19 + (v4[120] & 0x3F ^ 0x3BLL)) ^ 8;
  v66 = (v4[400] ^ 8) - ((2 * (v4[400] ^ 8)) & 0x52) + 552431145;
  v67 = v65 - 2 * (v65 & 0x3F) - 587351233;
  v68 = (((v67 ^ 0xDCFDBB3F | v66 ^ 0x20ED6E29) + (~(2 * (v67 ^ 0xDCFDBB3F | v66 ^ 0x20ED6E29)) | 0xFFFFFFF5) + 518) ^ 0x205) & (((v4[392] ^ 8) - ((2 * (v4[392] ^ 8)) & 0xD8) - 1699924372) ^ 0x9AAD366C);
  v69 = (v68 - ((2 * v68) & 0x136A2D58) + 1236604588) ^ 0x49B516AC | (((v67 ^ 0xED233F) & (v66 ^ 0xE29)) - ((2 * ((v67 ^ 0xED233F) & (v66 ^ 0xE29))) & 0x58EAB8C8) - 327852956) ^ 0xEC755C64;
  v70 = ((v4[436] ^ 8) - ((2 * (v4[436] ^ 8)) & 0xB6) + 1999487067) ^ 0x772DC05B;
  v71 = v69 - ((2 * v69) & 0x1D18748C) - 829670842;
  v72 = ((v71 ^ 0xCE8C3A46 | v70) - ((2 * (v71 ^ 0xCE8C3A46 | v70)) & 0xFFFFFFF3) + 121) & 0x4F ^ 0x49 | (((v71 ^ 0x3A46) & v70) - ((2 * ((v71 ^ 0x3A46) & v70)) & 0x25306C5A) + 1922577965) ^ 0x7298362D;
  STACK[0x598] = (v53 ^ 8u) + 13;
  v73 = *(v16 + (((v53 ^ 8) + 13) & 0x3F));
  LODWORD(STACK[0x510]) = v72 - ((2 * v72) & 0x32);
  v74 = v4[327];
  v75 = (((v73 >> 1) ^ 4) & (v74 ^ 8)) - ((2 * (((v73 >> 1) ^ 4) & (v74 ^ 8))) & 0xFFFFFF9F);
  LOBYTE(v74) = (((v4[208] ^ 0x3B) - ((2 * (v4[208] ^ 0x3B) + 86) & 0x7A) - 24) ^ 0xBD) & (v74 ^ 0xF7);
  LOBYTE(v75) = (v74 - ((2 * v74) & 0xBF) + 95) ^ 0x5F | (v75 - 49) ^ 0xCF;
  LOBYTE(v28) = ((v75 - ((2 * v75) & 0x68) - 76) ^ 0xB4) + (v4[335] ^ 8);
  v4[335] = v28 - ((2 * v28) & 0x10) + 8;
  LOBYTE(v28) = *(v19 + (v4[162] & 0x3F ^ 0x3BLL));
  LOBYTE(v74) = (((v28 | 0x7E) - ((2 * (v28 | 0x7E)) & 0xCA) + 101) ^ 0x65) & (v4[323] ^ 8);
  LOBYTE(v74) = v74 + (~(2 * v74) | 0x2B) + 107;
  LOBYTE(v66) = *(v16 + (v4[65] & 0x3F ^ 0x3BLL));
  v4[394] ^= ((((v74 ^ 0x6A | v28 & 0x7E ^ 8) + ~(2 * ((v74 ^ 0x6A | v28 & 0x7E ^ 8) & 7 ^ v74 & 1)) + 7) & 0xFE) >> 1) ^ 3;
  v4[356] ^= ((v66 ^ 8) - ((2 * (v66 ^ 8) + 98) & 0xBB) + 14) ^ 0xF3;
  LOBYTE(v74) = (v4[436] ^ 8) - (v4[103] ^ 0x3B);
  v4[436] = v74 - ((2 * v74) & 0x10) + 8;
  v76 = *(v19 + (v4[173] & 0x3F ^ 0x3BLL));
  v77 = (v4[227] ^ 0x3B) - ((((2 * v76) ^ 0x10) - (v76 >> 4 << 6) + 97) ^ 0x61);
  v4[227] = v77 - ((2 * v77) & 0x77) + 59;
  LODWORD(STACK[0x580]) = v52 - 123;
  *v19 ^= *(v19 + ((v52 - 123) & 0x3F ^ 5)) ^ 8;
  LOBYTE(v77) = (v4[26] ^ 0x3B) * (v4[26] ^ 0x3B);
  v78 = (v4[350] ^ 8) + (v77 ^ 0x1A) - ((2 * v77) & 0xCA) - 26;
  v4[350] = v78 - ((2 * v78) & 0x10) + 8;
  LOBYTE(v66) = *(v16 + (v4[136] & 0x3F ^ 0x3BLL));
  LOBYTE(v77) = (v4[385] ^ 8) - ((2 * (v4[385] ^ 8)) & 0x16) - 117;
  LOBYTE(v66) = (v66 ^ 8) - ((2 * v66) & 0x6A) - 75;
  v79 = (((v66 ^ 0xB5 | v77 ^ 0x8B) - ((2 * (v66 ^ 0xB5 | v77 ^ 0x8B)) & 0xBC) + 94) ^ 0x5E) & (((v4[378] ^ 8) - ((2 * v4[378]) & 0xC3) - 31) ^ 0xE1);
  v80 = (v79 - ((2 * v79) & 0x2A) - 107) ^ 0x95 | (((v66 ^ 0xB5) & (v77 ^ 0x8B)) - ((2 * ((v66 ^ 0xB5) & (v77 ^ 0x8B))) & 0x8E) - 57) ^ 0xC7;
  v81 = v80 - ((2 * v80) & 0x24) + 18;
  v82 = (v4[374] >> 1) ^ 4;
  LOBYTE(v75) = (((v81 & 0xC2 ^ 0x3F) - ((2 * (v81 & 0xC2 ^ 0x3F)) & 0x94) - 54) ^ 0xCA) & ((v82 - ((2 * v82) & 0x4E) - 89) ^ 0xA7);
  LOBYTE(v82) = (v75 - ((2 * v75) & 0x66) - 77) ^ 0xB3;
  v4[358] = ((v82 | v81 & 0xBD ^ 0x10) - ((2 * (v82 | v81 & 0xBD ^ 0x10)) & 0xDF) - 17) ^ 0xE7;
  v83 = (((v4[92] ^ 0x3B) + 1720185260 + (~(2 * (v4[92] ^ 0x3B)) | 0xFFFFFEA9)) ^ 0x608751AB) & (((v4[422] ^ 8) - ((2 * v4[422]) & 0xFFC7) + 1892635875) ^ 0xB1C);
  v84 = (v83 - ((2 * v83) & 0x704) + 183968642) ^ 0xAF72382 | ((v4[422] ^ 8) - ((2 * v4[422]) & 0xC7) - 29) & 0x8A ^ 0x82;
  v85 = ((205 * (v4[155] ^ 0x3Bu)) >> 10) & 7;
  v86 = (v84 - ((2 * v84) & 0x33BE539A) + 1507797453) ^ 0x59DF29CD;
  v87 = (v4[395] ^ 8) - (((v86 << ((v85 ^ 0xAF) + 2 * v85 + 81)) + (~(2 * (v86 << ((v85 ^ 0xAF) + 2 * v85 + 81))) | 0xFFFFFFDB) + 147) ^ ((v86 >> (~((v85 ^ 0xAF) + 2 * v85) & 7)) - ((2 * (v86 >> (~((v85 ^ 0xAF) + 2 * v85) & 7))) & 0xF2) + 249) ^ v3);
  v4[395] = v87 - ((2 * v87) & 0x10) + 8;
  v4[345] ^= 0xFDu;
  v4[343] = LOBYTE(STACK[0x588]) + 95 - ((2 * (LOBYTE(STACK[0x588]) + 95)) & 0x10) + 8;
  v88 = v4[69] & 0xAC ^ 0x6A;
  v89 = ((v88 - ((2 * v88) & 0x10) + 8) ^ 8) * (*(v16 + (v4[116] & 0x3F ^ 0x3BLL)) ^ 0xFFFFFFF7);
  LODWORD(STACK[0x508]) = v89 ^ 0x32;
  LODWORD(STACK[0x4F0]) = (2 * v89) & 0x64;
  LOBYTE(v55) = 2 * *(v19 + (v4[85] & 0x3F ^ 0x3BLL));
  v4[96] = ((v55 ^ 0x10) - 2 * ((v55 ^ 0x10) & 0x56 ^ v55 & 4) - 46) ^ 0x16;
  v90 = ((v4[39] >> 1) & 0x6C ^ 0xC) + 102;
  v91 = (v90 ^ 0xFFFFFFFD) + ((2 * v90) & 0x1F8) + 3;
  v92 = (v91 & 0xFE) - ((2 * v91) & 0x198) - 501404212;
  LOBYTE(v43) = (*(v16 + (v92 & 0x3E ^ 0xCLL)) ^ 8) & (byte_10025CCD0[v4[33] & 0x3F ^ 0x3BLL] ^ 0x70);
  v4[373] ^= (v43 - ((2 * v43) & 0xC7) - 29) ^ 0xE3;
  v93 = v4[239] & 0x3F ^ 0x3BLL;
  v94 = *(v19 + v93) ^ 8 | v4[148] ^ 0x3B;
  v95 = ((v94 - ((2 * v94) & 0xFFFFFFDF) + 111) & 0xFFFFFFC6 | *(v19 + (v4[105] & 0x3F ^ 0x3BLL)) & 0x18) ^ 0x4E;
  LOBYTE(v57) = v4[354];
  LOBYTE(v67) = (v4[221] ^ 0x3B) & (v57 ^ 8);
  v96 = (v4[339] ^ 8) & (v57 ^ 0xF7);
  LOBYTE(v67) = (v96 - ((2 * v96) & 0xDA) + 109) ^ 0x6D | (v67 - ((2 * v67) & 0xD6) - 21) ^ 0xEB;
  v4[441] = (v67 - ((2 * v67) & 0xA) + 5) & 0x7F ^ 0xD;
  v97 = 205 * (*(v16 + (v4[171] & 0x3F ^ 0x3BLL)) ^ 8);
  v98 = (v4[24] ^ 0x3B) + ((v97 >> 10) ^ 0x5F) + ((v97 >> 9) & 0x3E) - 95;
  v4[44] ^= 0x72 ^ (v98 - ((2 * v98) & 0xE4) + 114);
  v4[423] ^= 0x19 ^ ((((v4[137] >> 1) & 0x24 | v4[329] & 0x53) ^ 4) - ((2 * v4[329]) & 0x22) + 25);
  v4[344] ^= (3 * (((v4[67] & 0xD0 ^ 0x3F) + (v4[67] >> 6 << 7) + 30) ^ 0x62) + (~(6 * (((v4[67] & 0xD0 ^ 0x3F) + (v4[67] >> 6 << 7) + 30) ^ 0x62)) | 0xF) - 7) ^ 0xF8;
  v4[370] = -67;
  v4[419] ^= 0xBDu;
  LOBYTE(v75) = *(v16 + (v4[37] & 0x3F ^ 0x3BLL));
  LOBYTE(v75) = ((((v75 & 0x5E | v4[400] & 0xA1) ^ 8) - 2 * ((v75 & 0x52 | v4[400] & 1) ^ v75 & 2) - 47) ^ 0xDF) + (v4[188] ^ 0x3B);
  LODWORD(STACK[0x518]) = byte_10025CCD0[v93];
  LOBYTE(v93) = v4[61] ^ 0x3B;
  LOBYTE(v98) = byte_10025CCD0[v4[193] & 0x3F ^ 0x3BLL] ^ 0x70;
  v99 = (((v98 | v93) - ((2 * (v98 | v93)) & 0x2A) + 21) ^ 0x15) & (v4[403] ^ 8);
  v100 = (v99 - ((2 * v99) & 0xDA) - 19) ^ 0xED | ((v98 & v93) - ((2 * (v98 & v93)) & 0x6C) + 54) ^ v2;
  v101 = (v4[357] ^ 8) - ((v100 + (~(2 * v100) | 7) + 125) ^ 0x7C);
  v4[357] = v101 - ((2 * v101) & 0x10) + 8;
  v102 = v95 - ((2 * v95) & 0xFFFFFF87) + 98;
  v103 = *(v16 + (v4[159] & 0x3F ^ 0x3BLL)) ^ 8;
  LODWORD(STACK[0x588]) = v102;
  v104 = ((v103 & (v102 ^ 0x9D)) - ((2 * (v103 & (v102 ^ 0x9D))) & 0x16) - 117) & 0x9D ^ 0xAB;
  v4[371] ^= 0xFA ^ (v104 - ((2 * v104) & 0x74) - 6);
  LOBYTE(v85) = (v4[116] ^ 0x3B) - ((2 * (v4[116] ^ 0x3B)) & 0xEC) - 10;
  LOBYTE(v95) = (v4[416] ^ 8) - ((2 * (v4[416] ^ 8)) & 0x76) + 59;
  LOBYTE(v16) = (((v95 ^ 0x3B | v85 ^ 0xF6) - ((2 * (v95 ^ 0x3B | v85 ^ 0xF6)) & 0x2A) - 107) ^ 0x95) & (((v4[349] ^ 8) - ((2 * (v4[349] ^ 8)) & 0x7C) - 66) ^ 0xBE);
  LOBYTE(v16) = (v16 - ((2 * v16) & 0x4A) + 37) ^ 0x25 | (((v95 ^ 0x3B) & (v85 ^ 0xF6)) - ((2 * ((v95 ^ 0x3B) & (v85 ^ 0xF6))) & 0x2C) + 22) ^ 0x16;
  v105 = (v92 >> 1) ^ 0x710E96E6;
  LOBYTE(v16) = v16 - ((2 * v16) & 0x92) - 55;
  v106 = (((v16 ^ 0xC9 | v105) - ((2 * (v16 ^ 0xC9 | v105)) & 0x5E) - 81) ^ 0xAF) & (((v4[321] ^ 8) - ((2 * v4[321]) & 0xAE) - 41) ^ 0xD7);
  LOBYTE(v105) = (v106 - ((2 * v106) & 0x1A) - 115) ^ 0x8D | (((v16 ^ 0xC9) & v105) - ((2 * ((v16 ^ 0xC9) & v105)) & 0x4A) - 91) ^ 0xA5;
  v4[347] = (v105 - ((2 * v105) & 0x9A) - 51) ^ 0xC5;
  LOBYTE(v105) = v75 - ((2 * v75) & 0x76) + 59;
  v4[188] = v105;
  v107 = *(v19 + (v105 & 0x3F ^ 0x3BLL));
  LOBYTE(v105) = (v4[381] ^ 8) - ((2 * v4[381]) & 0x8A);
  v108 = ((2 * (v4[4] ^ 1)) & 0xA) + (v4[4] & 7 ^ 0xF6);
  LODWORD(v16) = ((v4[430] ^ 8) - (v5 & (2 * (v4[430] ^ 8))) - 1116370898) ^ 0xBD75882E;
  v109 = (v16 << (v108 + 11)) - ((2 * (v16 << (v108 + 11))) & 0x412288A8) - 1601092524;
  v110 = v16 >> ((~v108 - ((2 - 2 * v108) & 4)) & 7 ^ 2);
  LOBYTE(v16) = (v4[415] ^ 8) - ((2 * v4[415]) & 0x44);
  LOBYTE(v85) = (v4[247] ^ 0x3B) - ((2 * (v4[247] ^ 0x3B)) & 0x6A);
  v4[151] = 59;
  LOBYTE(v19) = *(v19 + (v4[41] & 0x3F ^ 0x3BLL)) ^ 8;
  LOBYTE(v85) = v85 + 53;
  LOBYTE(v19) = v19 - 2 * (v19 & 0xF) + 15;
  LOBYTE(v16) = (((v19 ^ 0xF | v85 ^ 0x35) - ((2 * (v19 ^ 0xF | v85 ^ 0x35)) & 0x50) + 40) ^ 0x28) & ((v16 + 34) ^ 0x22);
  LOBYTE(v16) = (v16 - ((2 * v16) & 0x12) - 119) ^ 0x89 | (((v19 ^ 0xF) & (v85 ^ 0x35)) - ((2 * ((v19 ^ 0xF) & (v85 ^ 0x35))) & 0x7C) + 62) ^ 0x3E;
  LOBYTE(v109) = v109 ^ 0xDE ^ (v110 - ((2 * v110) & 0x14) - 118);
  LOBYTE(v110) = (v16 - ((2 * v16) & 0xA6) - 45) ^ 0xD3;
  LOBYTE(v105) = (((v110 | v109) - ((2 * (v110 | v109)) & 0x72) + 57) ^ 0x39) & ((v105 + 69) ^ 0x45);
  LOBYTE(v109) = (v105 - ((2 * v105) & 0xE8) - 12) ^ 0xF4 | ((v110 & v109) - ((2 * (v110 & v109)) & 0x36) - 101) ^ 0x9B;
  LOBYTE(v109) = ((v109 - ((2 * v109) & 0x6A) + 53) ^ 0x35) + (v4[354] ^ 8);
  v4[354] = v109 - ((2 * v109) & 0x10) + 8;
  LOBYTE(v109) = (v4[442] ^ 8) - ((2 * v4[442]) & 8) - 124;
  LOBYTE(v110) = v109 & 0x23;
  LOBYTE(v109) = (((v4[372] ^ 8) - ((2 * (v4[372] ^ 8)) & 0xDE) + 111) ^ 0x6F) & (v109 ^ 0x7B);
  LOBYTE(v109) = (v109 - ((2 * v109) & 0xAA) - 43) ^ 0xD5 | v110;
  LOBYTE(v109) = (v109 ^ 0xF6) + 10 + ((2 * v109) & 0xEC);
  v4[339] = (v109 * v109 + (~(2 * v109 * v109) | 0x3D) - 30) ^ 0xE9;
  LOBYTE(v109) = (v4[322] ^ 8) - (((v4[444] & 0x25) - 2 * ((v4[444] & 1 | 0x76) ^ (v4[444] | 0x7E)) - 94) ^ 0x98);
  LOBYTE(v109) = (v4[361] ^ 8) + (v109 ^ 0x9F) + 2 * (v109 & 0x1F) + 97;
  v4[361] = v109 - ((2 * v109) & 0x10) + 8;
  LODWORD(v19) = a2 ^ 0xED84AFC2 ^ (31 * (((LODWORD(STACK[0x624]) - a2) | (a2 - LODWORD(STACK[0x624]))) >> 31));
  v111 = (LODWORD(STACK[0x528]) - 5);
  LODWORD(STACK[0x4E0]) = LODWORD(STACK[0x520]) + 86;
  LODWORD(STACK[0x528]) = LODWORD(STACK[0x510]) + 184;
  return (*(&off_1002D7880 + v19))();
}

uint64_t sub_10008A12C()
{
  v2 = STACK[0x4D0];
  v3 = 179 * (LODWORD(STACK[0x4D0]) ^ 0x504);
  v4 = v0 ^ v1;
  if ((v0 ^ v1) <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v0 ^ v1;
  }

  LODWORD(STACK[0x5B8]) = v4;
  v7 = v4 < 8 || (v5 - 17) < 0xFFFFFFF0;
  return (*(&off_1002D7880 + (((v3 ^ 0x4F6) * v7) ^ v2)))();
}

uint64_t sub_10008A1E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v12.val[0].i64[0] = a7 & 8;
  v12.val[0].i64[1] = a7 & 8 | 1;
  v12.val[1].i64[0] = (((v9 ^ 0x38) - 454) | 0x120) ^ 0x126u | v12.val[0].i64[0];
  v12.val[1].i64[1] = v12.val[0].i64[0] | 3;
  v12.val[2].i64[0] = v12.val[0].i64[0] | 4;
  v12.val[2].i64[1] = v12.val[0].i64[0] | 5;
  v12.val[3].i64[0] = v12.val[0].i64[0] | 6;
  v12.val[3].i64[1] = v12.val[0].i64[0] | 7;
  *(v7 + a7) = veor_s8(veor_s8(veor_s8(veor_s8(*(v10 + v12.val[0].i64[0]), *(v8 + v12.val[0].i64[0] + 3)), *(a4 + v12.val[0].i64[0] + 1)), 0x1818181818181818), vmul_s8(*&vqtbl4q_s8(v12, xmmword_100259770), 0x2B2B2B2B2B2B2B2BLL));
  return (*(&off_1002D7880 + ((56 * (((v9 ^ 0x1EA) & a3) - 8 != a7)) ^ v9 ^ 0x38)))(xmmword_100259770);
}

uint64_t sub_10008A2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = (a7 + 178447058) & 0xF55D1FBB;
  v9 = LODWORD(STACK[0x5B8]) == v7;
  LODWORD(STACK[0x5A0]) = v8;
  return (*(&off_1002D7880 + ((((a7 ^ 0x5AA) + v8 - 2091) * v9) ^ a7)))();
}

uint64_t sub_10008A39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v8 = LODWORD(STACK[0x5B8]) != a7;
  LODWORD(STACK[0x5A0]) = a5 ^ 0x72E;
  return (*(v7 + 8 * ((((9 * (a5 ^ 0x411)) ^ ((a5 ^ 0x72E) + 285)) * v8) ^ a5)))();
}

uint64_t sub_10008A438(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x5A0]) = v7 - 220;
  v9 = *(((a5 - 100) & 0xF) + v6 + 3);
  v10 = *(v8 + ((a5 - 100) & 0xF)) ^ v9 ^ *(((a5 - 100) & 0xF) + a4 + 1) ^ (43 * ((a5 - 100) & 0xF)) ^ 0x18u;
  *(v5 + (a5 - 895843940)) = *(v8 + ((a5 - 895843940) & 0xFLL)) ^ v9 ^ *(((a5 - 895843940) & 0xFLL) + a4 + 1) ^ (43 * ((a5 - 100) & 0xF)) ^ 0x18;
  return (*(&off_1002D7880 + ((1897 * (((a5 == a3 + 895843940 + v7 - 167 - 1000) ^ (v7 + 37)) & 1)) ^ (v7 - 167))))();
}

uint64_t sub_10008A4D4@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v10 = LODWORD(STACK[0x508]) + LODWORD(STACK[0x4F0]);
  LODWORD(STACK[0x510]) = v3 + v4;
  LODWORD(STACK[0x520]) = v5 ^ 0x47;
  LODWORD(STACK[0x560]) ^= a2;
  v11 = ((2 * ((*v7 ^ 0xC) + 127)) & 0xE7) + (((*v7 ^ 0xC) + 127) ^ 0x73);
  v12 = LODWORD(STACK[0x5A0]) ^ 0x8C;
  *v7 = (((LOBYTE(STACK[0x5A0]) ^ 0x8C) + v11 + (v11 | 0xFD) + ((3 - v11) | 0xFD) + 99) ^ 0xC) - 16;
  if (v2 == -310072666)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 + 1;
  }

  v14 = *v13;
  if (v2 == -310072666)
  {
    v15 = 0;
  }

  else
  {
    v15 = 43;
  }

  v16 = v14 ^ v15;
  if (v2 == -310072666)
  {
    v17 = 3;
  }

  else
  {
    v17 = 4;
  }

  v18 = v16 ^ *(v8 + v17) ^ *(v17 + a1 - 2);
  if (v2 == -310072666)
  {
    v19 = v7;
  }

  else
  {
    v19 = v7 + 1;
  }

  *v19 = v18 ^ (-44 - ((((2 * ((v18 ^ *v19) - 20)) & 0x56) + (((v18 ^ *v19) - 20) ^ 0xAB)) ^ 0x7F));
  v20 = STACK[0x5B8];
  v21 = 2u % LODWORD(STACK[0x5B8]);
  v22 = (43 * v21) ^ v9[v21] ^ *(v21 + v8 + 3) ^ *(v21 + a1 + 1);
  v7[v21] = v22 ^ ((((v22 ^ v7[v21]) + 111) ^ 0x9C) + ((2 * ((v22 ^ v7[v21]) + 111)) & 0x38) + 100);
  v23 = 3 % v20;
  v24 = (byte_100259910[v23] ^ v7[v23] ^ (39 * v23) ^ byte_100264070[v23 + 1] ^ byte_100282EA0[v23]) + v6;
  v7[v23] = v9[v23] ^ (43 * v23) ^ *(v23 + v8 + 3) ^ *(a1 + v23 + 1) ^ ((v24 ^ 0x77) + ((2 * v24) & 0xEF) - 119);
  v25 = STACK[0x624];
  v26 = LODWORD(STACK[0x624]) ^ 0xED84AAA7;
  v27 = 4 % v26;
  v28 = (43 * v27) ^ v9[v27] ^ *(v27 + v8 + 3) ^ *(v27 + a1 + 1);
  v29 = (v28 ^ v7[v27]) - 3;
  v7[v27] = v28 ^ (((2 * (((2 * v29) & 0xEA) + (v29 ^ 0x75))) & 0xEC) + ((((2 * v29) & 0xEA) + (v29 ^ 0x75) - 16) ^ 0xF6) - 123);
  v30 = 5 % v26;
  v31 = (43 * v30) ^ v9[v30] ^ *(v30 + v8 + 3) ^ *(v30 + a1 + 1);
  v32 = (v31 ^ v7[v30]) + 17;
  LOBYTE(v32) = (v32 ^ 0x7C) + 8 * (v32 >> 2);
  v7[v30] = v31 ^ ((v32 & 0x62) + (v32 | 0x62) + 34);
  v33 = 6 % v26;
  v34 = (byte_100259910[v33] ^ v7[v33] ^ (39 * v33) ^ byte_100264070[v33 + 1] ^ byte_100282EA0[v33]) + (LODWORD(STACK[0x4E0]) ^ 0x26);
  v7[v33] = v9[v33] ^ (43 * v33) ^ *(v33 + v8 + 3) ^ *(a1 + v33 + 1) ^ ((((v34 ^ 0x7F) + 2 * v34 - 26) ^ 4) + ((2 * ((v34 ^ 0x7F) + 2 * v34) + 12) & 8) - 105);
  v35 = 7 % v26;
  LOBYTE(v31) = (43 * v35) ^ v9[v35] ^ *(v35 + v8 + 3) ^ *(v35 + a1 + 1);
  LOBYTE(v34) = (v31 ^ v7[v35]) + 47;
  v7[v35] = v31 ^ (((2 * v34) & 0xF7) + (v34 ^ 0xFB) + ((-127 - (((2 * v34) & 0xF7) + (v34 ^ 0xFB))) | 0x15) + ((((2 * v34) & 0xF7) + (v34 ^ 0xFB) + 126) | 0x15) - 15);
  v36 = 8 % v26;
  v37 = v10 + (byte_100259910[v36] ^ v7[v36] ^ (39 * v36) ^ byte_100264070[v36 + 1] ^ byte_100282EA0[v36]) + 47;
  v7[v36] = v9[v36] ^ (43 * v36) ^ *(v36 + v8 + 3) ^ *(a1 + v36 + 1) ^ ((v37 ^ 0xD5) + ((2 * v37) & 0xAA) + 43);
  v38 = 9 % v26;
  v39 = (v9[v38] ^ v7[v38] ^ (43 * v38) ^ *(v38 + v8 + 3) ^ *(a1 + v38 + 1)) - 118;
  v7[v38] = byte_1002598F0[v38] ^ (29 * v38) ^ byte_100261960[v38] ^ byte_10027D1A0[v38 + 1] ^ (((((2 * v39) & 0xEF) + (v39 ^ 0x77) - 16) ^ 0x4D) + ((2 * (((2 * v39) & 0xEF) + (v39 ^ 0x77)) - 32) & 0x9A) + 76);
  v40 = v25 ^ 0xED84AAA7;
  v41 = 0xA % (v25 ^ 0xED84AAA7);
  v42 = (29 * v41) ^ byte_1002598F0[v41] ^ byte_100261960[v41] ^ byte_10027D1A0[v41 + 1];
  LODWORD(v38) = (v42 ^ v7[v41]) - ((LODWORD(STACK[0x590]) - ((2 * LODWORD(STACK[0x590]) + 10) & 0x26) - 104) ^ 0x13);
  v43 = (v38 ^ 0xD8) + ((2 * v38) & 0xB0) + 112;
  v7[v41] = v42 ^ ((v43 ^ 0xE2) + ((2 * v43) & 0xC4) - 42);
  v44 = 0xB % v40;
  v45 = (29 * v44) ^ byte_1002598F0[v44] ^ byte_100261960[v44] ^ byte_10027D1A0[v44 + 1];
  v7[v44] = v45 ^ ((((v45 ^ v7[v44]) - 44) ^ 0x71) + ((2 * ((v45 ^ v7[v44]) - 44)) & 0xE3) - 113);
  v46 = 0xC % v40;
  v47 = (29 * v46) ^ byte_1002598F0[v46] ^ byte_100261960[v46] ^ byte_10027D1A0[v46 + 1];
  LODWORD(v44) = (v47 ^ v7[v46]) - ((LODWORD(STACK[0x528]) - 31) ^ 0xFFFFFF99);
  v7[v46] = v47 ^ ((v44 ^ 0xE7) + ((2 * v44) & 0xCF) + 121);
  v48 = STACK[0x624];
  LODWORD(v46) = LODWORD(STACK[0x624]) ^ 0xED84AAA7;
  v49 = 0xD % v46;
  v50 = (byte_100259910[v49] ^ v7[v49] ^ (39 * v49) ^ byte_100264070[v49 + 1] ^ byte_100282EA0[v49]) + (LODWORD(STACK[0x518]) ^ 0x70);
  v7[v49] = byte_1002598F0[v49] ^ (29 * v49) ^ byte_100261960[v49] ^ byte_10027D1A0[v49 + 1] ^ (((((2 * v50) & 0xEA) + (v50 ^ 0x75)) | 0x17) + ((((2 * v50) & 0xEA) + (v50 ^ 0x75)) & 0x17) + 116);
  v51 = 0xE % v46;
  LOBYTE(v49) = (29 * v51) ^ byte_1002598F0[v51] ^ byte_100261960[v51] ^ byte_10027D1A0[v51 + 1];
  v7[v51] = v49 ^ (-97 - ((((2 * ((v49 ^ v7[v51]) + 42)) & 0xC0) + (((v49 ^ v7[v51]) + 42) ^ 0xE0)) ^ 0x7F));
  v52 = 0xF % v46;
  LOBYTE(v46) = (29 * v52) ^ byte_1002598F0[v52] ^ byte_100261960[v52] ^ byte_10027D1A0[v52 + 1];
  LOBYTE(v49) = (((v46 ^ v7[v52]) - 75) ^ 0x27) + ((2 * ((v46 ^ v7[v52]) - 75)) & 0x4E) - 2;
  v7[v52] = v46 ^ ((v49 ^ 0x4C) + ((2 * v49) & 0x99) - 113);
  v53 = 0x10 % (v48 ^ 0xED84AAA7);
  v54 = (v53 & 0xF) + 1;
  v55 = LODWORD(STACK[0x510]) + (byte_100259910[v53 & 0xF] ^ v7[v53] ^ byte_100264070[v54] ^ byte_100282EA0[v53 & 0xF] ^ (39 * (v53 & 0xF))) - 95;
  v7[v53] = byte_1002598F0[v53 & 0xF] ^ (29 * (v53 & 0xF)) ^ byte_100261960[v53 & 0xF] ^ byte_10027D1A0[v54] ^ ((v55 ^ 0x3E) + ((2 * v55) & 0x7C) - 62);
  v56 = 0x11 % (v48 ^ 0xED84AAA7);
  LOBYTE(v49) = byte_100261960[v56 & 0xF] ^ byte_1002598F0[v56 & 0xF];
  v57 = byte_10027D1A0[(v56 & 0xF) + 1];
  LOBYTE(v55) = 29 * (v56 & 0xF);
  LOBYTE(v54) = (v49 ^ v7[v56] ^ v57 ^ v55) + 35;
  v7[v56] = v49 ^ v55 ^ v57 ^ (((((2 * v54) & 0xF7) + (v54 ^ 0x7B) - 17) | 0x71) - ((16 - (((2 * v54) & 0xF7) + (v54 ^ 0x7B))) & 0x71) - 106);
  v58 = 0x12 % (v48 ^ 0xED84AAA7);
  v59 = (v58 & 0xF) + 1;
  LODWORD(v46) = (v9[v58 & 0xF] ^ v7[v58] ^ *((v58 & 0xF) + v8 + 3) ^ *(a1 + v59) ^ (43 * (v58 & 0xF))) + LODWORD(STACK[0x520]);
  LOBYTE(v46) = (v46 ^ 0x54) + ((2 * v46) & 0xA8) - 4;
  v7[v58] = byte_1002598F0[v58 & 0xF] ^ (29 * (v58 & 0xF)) ^ byte_100261960[v58 & 0xF] ^ byte_10027D1A0[v59] ^ ((v46 ^ 0xE9) + ((2 * v46) & 0xD2) - 57);
  v60 = STACK[0x624];
  LODWORD(v59) = LODWORD(STACK[0x624]) ^ 0xED84AAA7;
  v61 = 0x13 % v59;
  v62 = (byte_100259910[v61 & 0xF] ^ v7[v61] ^ byte_100264070[(v61 & 0xF) + 1] ^ (39 * (v61 & 0xF)) ^ byte_100282EA0[v61 & 0xF]) + (LODWORD(STACK[0x580]) ^ 0xFFFFFF85);
  v7[v61] = byte_1002598D0[v61 & 0xF] ^ (29 * (v61 & 0xF)) ^ byte_1002598B0[v61 & 0xF] ^ byte_100266F40[v61 & 0xF] ^ (((((2 * v62) & 0x7A) + (v62 ^ 0xBD) + 115) ^ 0x78) + ((2 * (((2 * v62) & 0x7A) + (v62 ^ 0xBD)) - 26) & 0xF0) + 88);
  v63 = 0x14 % v59;
  v64 = byte_1002598B0[v63 & 0xF] ^ byte_1002598D0[v63 & 0xF] ^ (29 * (v63 & 0xF)) ^ byte_100266F40[v63 & 0xF];
  v7[v63] = v64 ^ ((((((v64 ^ v7[v63]) - 64) ^ 0x7F) + 2 * ((v64 ^ v7[v63]) - 64) - 17) | 0x18) - ((16 - ((((v64 ^ v7[v63]) - 64) ^ 0x7F) + 2 * ((v64 ^ v7[v63]) - 64))) & 0x18) - 110);
  v65 = 0x15 % v59;
  v66 = byte_1002598B0[v65 & 0xF] ^ byte_1002598D0[v65 & 0xF];
  LOBYTE(v36) = byte_100266F40[v65 & 0xF];
  LOBYTE(v59) = 29 * (v65 & 0xF);
  LOBYTE(v32) = (v66 ^ v7[v65] ^ v36 ^ v59) - 26;
  v7[v65] = v66 ^ v59 ^ v36 ^ (((((2 * v32) & 0x8F) + (v32 ^ 0xC7) + 6) | 0xFB) - ((-127 - (((2 * v32) & 0x8F) + (v32 ^ 0xC7))) & 0xFB) - 69);
  v67 = v60 ^ 0xED84AAA7;
  v68 = 0x16 % (v60 ^ 0xED84AAA7);
  LOBYTE(v59) = byte_1002598B0[v68 & 0xF] ^ byte_1002598D0[v68 & 0xF];
  v69 = byte_100266F40[v68 & 0xF];
  LOBYTE(v60) = 29 * (v68 & 0xF);
  LOBYTE(v36) = (v59 ^ v7[v68] ^ v69 ^ v60) - 95;
  v7[v68] = v59 ^ v60 ^ v69 ^ ((v36 ^ 0xE3) + ((2 * v36) & 0xC7) + 29);
  v70 = 0x17 % v67;
  v71 = (byte_100259910[v70 & 0xF] ^ v7[v70] ^ byte_100264070[(v70 & 0xF) + 1] ^ byte_100282EA0[v70 & 0xF] ^ (39 * (v70 & 0xF))) + (LODWORD(STACK[0x560]) ^ 0x45);
  v7[v70] = byte_1002598D0[v70 & 0xF] ^ (29 * (v70 & 0xF)) ^ byte_1002598B0[v70 & 0xF] ^ byte_100266F40[v70 & 0xF] ^ ((((v71 ^ 0x7C) + 8 * (v71 >> 2)) ^ 0x29) + ((2 * ((v71 ^ 0x7C) + 8 * (v71 >> 2))) & 0x52) + 91);
  v72 = 0x18 % v67;
  LOBYTE(v36) = byte_100266F40[v72 & 0xF];
  LOBYTE(v71) = 29 * (v72 & 0xF);
  LOBYTE(v59) = byte_1002598B0[v72 & 0xF] ^ byte_1002598D0[v72 & 0xF];
  LOBYTE(v70) = (v59 ^ v7[v72] ^ v36 ^ v71) - 118;
  v7[v72] = v59 ^ v71 ^ v36 ^ (49 * (((34 * (((2 * v70) & 0xBC) + (v70 ^ 0x5E)) + 28) & 0x24) + ((-47 * (((2 * v70) & 0xBC) + (v70 ^ 0x5E)) + 78) ^ 0x92)) - 62);
  LODWORD(v36) = STACK[0x624];
  LODWORD(v72) = LODWORD(STACK[0x624]) ^ 0xED84AAA7;
  v73 = 0x19 % v72;
  v74 = byte_100266F40[v73 & 0xF];
  LOBYTE(v59) = 29 * (v73 & 0xF);
  v75 = byte_1002598B0[v73 & 0xF] ^ byte_1002598D0[v73 & 0xF];
  LOBYTE(v71) = (v75 ^ v7[v73] ^ v74 ^ v59) - 125;
  v7[v73] = v75 ^ v59 ^ v74 ^ ((v71 ^ 0x37) + ((2 * v71) & 0x6E) - 55);
  v76 = 0x1A % v72;
  v77 = byte_1002598B0[v76 & 0xF] ^ byte_1002598D0[v76 & 0xF] ^ (29 * (v76 & 0xF)) ^ byte_100266F40[v76 & 0xF];
  v7[v76] = v77 ^ ((((v77 ^ v7[v76]) + 118) ^ 0x62) + ((2 * ((v77 ^ v7[v76]) + 118)) & 0xC4) - 98);
  v78 = 0x1B % v72;
  v79 = byte_100266F40[v78 & 0xF];
  LOBYTE(v32) = 29 * (v78 & 0xF);
  LOBYTE(v62) = byte_1002598B0[v78 & 0xF] ^ byte_1002598D0[v78 & 0xF];
  LOBYTE(v38) = (v62 ^ v7[v78] ^ v79 ^ v32) + 55;
  v7[v78] = v62 ^ v32 ^ v79 ^ (((((2 * v38) & 0xDF) + (v38 ^ 0x6F) + 96) | 0xB0) - ((31 - (((2 * v38) & 0xDF) + (v38 ^ 0x6F))) & 0xB0) - 79);
  v80 = 0x1C % v72;
  v81 = byte_1002603D0[v80 & 0xF];
  v82 = -7 * (v80 & 0xF);
  LOBYTE(v32) = byte_100259810[v80 & 0xF] ^ byte_100259840[v80 & 0xF];
  LOBYTE(v46) = (v32 ^ v7[v80] ^ v81 ^ v82) + 115;
  v7[v80] = v32 ^ v82 ^ v81 ^ (((((2 * v46) & 0xAE) + (v46 ^ 0xD7) + 127) | 0x59) - (-(((2 * v46) & 0xAE) + (v46 ^ 0xD7)) & 0x59) - 86);
  LODWORD(v36) = v36 ^ 0xED84AAA7;
  v83 = 0x1D % v36;
  v84 = (byte_100259910[v83 & 0xF] ^ v7[v83] ^ byte_100264070[(v83 & 0xF) + 1] ^ byte_100282EA0[v83 & 0xF] ^ (39 * (v83 & 0xF))) + STACK[0x598];
  v7[v83] = byte_100259840[v83 & 0xF] ^ (-7 * (v83 & 0xF)) ^ byte_100259810[v83 & 0xF] ^ byte_1002603D0[v83 & 0xF] ^ (((2 * v84) & 0xFB) + (v84 ^ 0xFD) + ((8 - (((2 * v84) & 0xFB) + (v84 ^ 0xFD))) | 0xE5) + ((((2 * v84) & 0xFB) + (v84 ^ 0xFD) + 23) | 0xE5) + 31);
  v85 = 0x1E % v36;
  LOBYTE(v48) = byte_1002603D0[v85 & 0xF];
  LOBYTE(v32) = -7 * (v85 & 0xF);
  v86 = byte_100259810[v85 & 0xF] ^ byte_100259840[v85 & 0xF];
  LOBYTE(v35) = (v86 ^ v7[v85] ^ v48 ^ v32) + 81;
  v7[v85] = v86 ^ v32 ^ v48 ^ (((2 * v35) & 0x36) + (v35 ^ 0x1B) + (-(((2 * v35) & 0x36) + (v35 ^ 0x1B)) | 0x65) + ((((2 * v35) & 0x36) + (v35 ^ 0x1B) - 1) | 0x65) - 127);
  v87 = 0x1F % v36;
  v88 = (byte_100259910[v87 & 0xF] ^ v7[v87] ^ byte_100264070[(v87 & 0xF) + 1] ^ (39 * (v87 & 0xF)) ^ byte_100282EA0[v87 & 0xF]) + (LODWORD(STACK[0x588]) ^ 0x62);
  v7[v87] = byte_100259840[v87 & 0xF] ^ (-7 * (v87 & 0xF)) ^ byte_100259810[v87 & 0xF] ^ byte_1002603D0[v87 & 0xF] ^ ((v88 ^ 0x7F) + 2 * v88 + ((105 - ((v88 ^ 0x7F) + 2 * v88)) | 0x12) + (((v88 ^ 0x7F) + 2 * v88 - 106) | 0x12) + 112);
  v89 = STACK[0x5A8];
  v7[0 % (LODWORD(STACK[0x624]) ^ 0xED84AAA7)] ^= *STACK[0x5B0] ^ 8;
  return (*(&off_1002D7880 + (v12 ^ 0x8C)))();
}

uint64_t sub_10008B670@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = (v2 - 172610591) % v4;
  v8 = (v2 - 172610598) % v4;
  v9 = *(v6 + v8);
  v10 = v8 & 0xF;
  v11 = *(a1 + v10);
  v12 = (v2 - 172610628) % v4;
  v13 = *(v6 + v12);
  v14 = v12 & 0xF;
  v15 = v13 ^ v12 ^ byte_100259840[v14];
  LODWORD(v12) = byte_100259840[v10] ^ v9 ^ *(v5 + v10);
  HIDWORD(v17) = v15 ^ *(v5 + v14) ^ *(a1 + v14);
  LODWORD(v17) = ((93 * v14) ^ v13 ^ byte_100259920[v14] ^ *(&unk_100264090 + v14 + 1) ^ byte_1002858E0[v14]) << 24;
  v16 = v17 >> 26;
  v18 = (v2 - 172610768) % v4;
  HIDWORD(v17) = v12 ^ (121 * v10) ^ v11;
  LODWORD(v17) = (v12 ^ (-7 * v10) ^ v11) << 24;
  v19 = v17 >> 31;
  v20 = byte_100259920[v18 & 0xF] ^ *(v6 + v18) ^ *(&unk_100264090 + (v18 & 0xF) + 1);
  v21 = byte_1002858E0[v18 & 0xF];
  HIDWORD(v17) = v20 ^ (5 * v18) ^ v21;
  LODWORD(v17) = (v20 ^ (93 * (((v2 - 172610768) % v4) & 0xF)) ^ v21) << 24;
  v22 = *(v3 + 8 * (((4 * (v2 == 172610846)) | (16 * (v2 == 172610846))) ^ a2));
  *(v6 + v7) ^= (93 * (v7 & 0xF)) ^ (-7 * (v7 & 0xF)) ^ byte_100259840[v7 & 0xF] ^ *(v5 + (v7 & 0xF)) ^ *(a1 + (v7 & 0xF)) ^ (v16 - ((2 * v16) & 0xB4) + 90) ^ (v19 - ((v19 << (((a2 - 12) ^ 1) & 0xB9)) & 0xDA) - 19) ^ byte_100259920[v7 & 0xF] ^ *(&unk_100264090 + (v7 & 0xF) + 1) ^ byte_1002858E0[v7 & 0xF] ^ ((v17 >> 27) - ((2 * (v17 >> 27)) & 0x94) + 74) ^ 0xFD;
  return v22();
}

uint64_t sub_10008B870()
{
  v2 = ((v0 | 0x446) - 1860) | 0x18;
  v3 = STACK[0x9E8];
  v4 = STACK[0xAA0];
  LODWORD(STACK[0x598]) = STACK[0x624];
  v5 = (v2 + 236);
  STACK[0x9E8] = v5 + v3 - 710;
  *(v4 + 64) = 0x4B67BDFCC6533912;
  *(v4 + 72) = 0xF669932C7EE11BA4;
  *(v4 + 80) = 0x9966CD3811EE45BLL;
  *(v4 + 92) = 0x1DCC6C5F76280D6FLL;
  STACK[0xA68] = *(&off_1002D7880 + v2);
  v6 = STACK[0x5C0];
  v7 = STACK[0x598];
  STACK[0x9A0] = v4;
  LODWORD(STACK[0xA28]) = v7;
  STACK[0x658] = v1;
  v8 = ((v5 + 582) ^ 0x57F) + (v7 ^ 0xED84AAA7) - 2142231977 + ((2 * *(v4 + 68)) & 0x54 ^ 0x50) + (*(v4 + 68) & 0x3F ^ 0x7FAFDD96) - 1588;
  return (*(&off_1002D7880 + ((27 * ((v8 ^ 0xF77DDF97) + 142745641 + ((2 * v8) & 0xEEFBBF2E) < 0xFFFFFFC0)) ^ v5)))();
}

uint64_t sub_10008C21C@<X0>(unsigned int a1@<W6>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  v62 = a2 - 12;
  v63 = LODWORD(STACK[0x430]) + a43 + ((a2 - 12) ^ 0x962A582D);
  LODWORD(STACK[0x598]) = v63;
  LODWORD(STACK[0x308]) = v63 ^ LODWORD(STACK[0x43C]);
  LODWORD(STACK[0x434]) ^= a45 - a47;
  LODWORD(STACK[0x43C]) = a41 ^ LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x470]) ^ a44 ^ LODWORD(STACK[0x3B0]) ^ a62;
  v64 = LODWORD(STACK[0x440]) ^ LODWORD(STACK[0x358]);
  v65 = STACK[0x560];
  LODWORD(STACK[0x430]) = v64;
  v66 = v64 ^ v65;
  LODWORD(STACK[0x358]) = v66;
  LODWORD(STACK[0x470]) = v66 ^ 0xB19CD142;
  v71 = LODWORD(STACK[0x370]) ^ 0x375FD1C;
  v67 = STACK[0xB48];
  STACK[0x5A0] = v62 ^ 0x97u;
  v68 = (STACK[0x5A0] ^ 0xD5708FC328430D8ALL) + a1 + ((a1 < 0x4392CC36) << 32) + 0x2A8F703C942A2576;
  v69 = 0xDDD7B9E59B0BDB61 * (*(v67 + 8 * v68) ^ 0xBEBEBEBEBEBEBEBELL) - ((0xBBAF73CB3617B6C2 * (*(v67 + 8 * v68) ^ 0xBEBEBEBEBEBEBEBELL)) & 0xE8FE23889945E01ELL) + 0x747F11C44CA2F00FLL;
  return (*(&off_1002D7880 + ((28 * (STACK[0x5B0] > a1 - 1133694005)) ^ v62)))(1617208329);
}

uint64_t sub_10008CDA4@<X0>(int a1@<W6>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, int a45, int a46, int a47, int a48, uint64_t a49, uint64_t a50, int a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, uint64_t a60, int a61)
{
  v63 = STACK[0x5A0] ^ 0x6BF;
  LODWORD(STACK[0x304]) ^= LODWORD(STACK[0x598]);
  v122 = LODWORD(STACK[0x354]) | 0x16D249C;
  LODWORD(STACK[0x354]) = LODWORD(STACK[0x434]) ^ a44;
  LODWORD(STACK[0x518]) = a59 - a61;
  LODWORD(STACK[0x434]) = a51 - LODWORD(STACK[0x438]);
  LODWORD(STACK[0x438]) = a46 - a48;
  v64 = ((((a2 - 0x3E2C8C18F0F8F529) >> 31) - (((a2 - 0x3E2C8C18F0F8F529) >> 31 << (v63 ^ 0x60u)) & 0x39EE01E9ALL) - 0xB5A9072308FF0B3) ^ 0xF4A56F8DCF700F4DLL) + a2 - 0x3E2C8C18F0F8F529;
  v65 = (v64 ^ 0x76DF7CFFEF9BCD5FLL) - 0x76DF7CFFEF9BCD5FLL + ((2 * v64) & 0xEDBEF9FFDF379ABELL);
  v66 = (((v65 >> 9) - ((v65 >> 8) & 0x906F4BF94AD3AELL) + 0x3E4837A5FCA569D7) ^ 0x3E4837A5FCA569D7) + v65;
  v67 = ((((((2 * v66) & 0xABFFFBFFF7FFE7B8) + (v66 ^ 0x55FFFDFFFBFFF3DCLL) - 0x55FFFDFFFBFFF3DCLL) >> 3) - (((((2 * v66) & 0xABFFFBFFF7FFE7B8) + (v66 ^ 0x55FFFDFFFBFFF3DCLL) - 0x55FFFDFFFBFFF3DCLL) >> 2) & 0x2A5C66C585F698F6) + 0x352E3362C2FB4C7BLL) ^ 0xCAD1CC9D3D04B384) + ((2 * v66) & 0xABFFFBFFF7FFE7B8) + (v66 ^ 0x55FFFDFFFBFFF3DCLL);
  v68 = v67 - ((2 * v67 + 0x540004000800184ALL) & 0x69352AD79B903BBCLL) - 0x216568942E37D5FDLL;
  v69 = ((2 * ((v68 ^ 0x349A956BCDC81DDELL) - 0x8F5F9B28C5FDAFELL)) & 0x3DBED7BDECB5FCF4) + (((v68 ^ 0x349A956BCDC81DDELL) - 0x8F5F9B28C5FDAFELL) ^ 0x9EDF6BDEF65AFE7ALL) + 0x6120942109A50186;
  v70 = v69 + (((v69 >> 24) - ((v69 >> 23) & 0x2D818DE6DALL) + 0x47079116C0C6F36DLL) ^ 0xB8F86EE93F390C92) + 1;
  v71 = (v70 ^ 0xBDA9FBDF7DADFDECLL) + 0x4256042082520214 + ((2 * v70) & 0x7B53F7BEFB5BFBD8);
  v72 = (((v71 >> 13) - ((v71 >> 12) & 0x1083CCBE8DB0ELL) + 0x6AC8841E65F46D87) ^ 0x6AC8841E65F46D87) + v71;
  v73 = ((((((2 * v72) & 0xF7EB5EE7378DF6BALL) + (v72 ^ 0x7BF5AF739BC6FB5DLL) - 0x7BF5AF739BC6FB5DLL) >> 1) - ((((2 * v72) & 0xF7EB5EE7378DF6BALL) + (v72 ^ 0x7BF5AF739BC6FB5DLL) - 0x7BF5AF739BC6FB5DLL) & 0xDB9DDEF7283C99ACLL) - 0x123110846BE1B32ALL) ^ 0x123110846BE1B329) + ((2 * v72) & 0xF7EB5EE7378DF6BALL) + (v72 ^ 0x7BF5AF739BC6FB5DLL);
  v74 = ((v73 - ((2 * v73 + 0x814A118C8720948) & 0x9E2FCB60F3218E18) - 0x2CDDC9C322363450) ^ 0x4F17E5B07990C70CLL) - 0x2FD7C05D4CB95BEBLL;
  v75 = (((((v74 ^ 0xFD9797FDFD9DDAFFLL) + 0x268680202622501 + ((2 * v74) & 0xFB2F2FFBFB3BB5FELL)) >> 31) - ((((v74 ^ 0xFD9797FDFD9DDAFFLL) + 0x268680202622501 + ((2 * v74) & 0xFB2F2FFBFB3BB5FELL)) >> 30) & 0xCA7449A) + 0x54A2ABEE0653A24DLL) ^ 0x54A2ABEE0653A24DLL) + (v74 ^ 0xFD9797FDFD9DDAFFLL) + 0x268680202622501 + ((2 * v74) & 0xFB2F2FFBFB3BB5FELL);
  v76 = ((2 * v75) & 0xEFCD3FF77CDBFD76) + (v75 ^ 0x77E69FFBBE6DFEBBLL) - 0x77E69FFBBE6DFEBBLL;
  v77 = v76 + (((v76 >> 11) - ((v76 >> 10) & 0x3ECA442F0ADEC0) - 0x59A09ADDE87A90A0) ^ 0x59A09ADDE87A909FLL) + 1;
  v78 = ((((((2 * v77) & 0x7BBFEFFED3FBBFF6) + (v77 ^ 0x3DDFF7FF69FDDFFBuLL) - 0x3DDFF7FF69FDDFFBLL) >> 8) - (((((2 * v77) & 0x7BBFEFFED3FBBFF6) + (v77 ^ 0x3DDFF7FF69FDDFFBuLL) - 0x3DDFF7FF69FDDFFBLL) >> 7) & 0x4655AE1C2C9682) + 0x5F232AD70E164B41) ^ 0xA0DCD528F1E9B4BELL) + ((2 * v77) & 0x7BBFEFFED3FBBFF6) + (v77 ^ 0x3DDFF7FF69FDDFFBLL);
  v79 = v78 - ((2 * v78 - 0x7BBFEFFED3FBBFF4) & 0xE66D634058C3C4FALL) - 0x4AA9465F3D9BFD7DLL;
  v80 = ((2 * ((v79 ^ 0xF336B1A02C61E27DLL) - 0x68E6F220A3631C54)) & 0x5F2DEFCFF9EBFDFCLL) + (((v79 ^ 0xF336B1A02C61E27DLL) - 0x68E6F220A3631C54) ^ 0xAF96F7E7FCF5FEFELL) + 0x50690818030A0102;
  v81 = v80 + (((v80 >> 29) - ((v80 >> 28) & 0xE143A00C6) + 0x4DC324C70A1D0063) ^ 0xB23CDB38F5E2FF9CLL) + 1;
  v82 = ((2 * v81) & 0xFE9FEAFFFBE99EDALL) + (v81 ^ 0x7F4FF57FFDF4CF6DLL) - 0x7F4FF57FFDF4CF6DLL;
  v83 = v82 + (((v82 >> 9) - ((v82 >> 8) & 0xF53C8EF2D516BCLL) - 0x4F8561B8869574A2) ^ 0x4F8561B8869574A1) + 1;
  v84 = ((((((2 * v83) & 0x7F8F7DFCEF3BF772) + (v83 ^ 0x3FC7BEFE779DFBB9uLL) - 0x3FC7BEFE779DFBB9) >> 4) - (((((2 * v83) & 0x7F8F7DFCEF3BF772) + (v83 ^ 0x3FC7BEFE779DFBB9uLL) - 0x3FC7BEFE779DFBB9) >> 3) & 0xA1BC3213EE40FACLL) + 0x350DE1909F7207D6) ^ 0xCAF21E6F608DF829) + ((2 * v83) & 0x7F8F7DFCEF3BF772) + (v83 ^ 0x3FC7BEFE779DFBB9);
  v85 = v84 - ((2 * v84 - 0x7F8F7DFCEF3BF770) & 0xED61E0A3131F9BA6) - 0x4916CEACEE0E2DE5;
  v86 = (((4 * v85) ^ 0x263F374C) - ((2 * ((4 * v85) ^ 0x263F374C)) & 0xB3637E20) - 642662639) & v62 ^ v85;
  v87 = ((2 * ((v85 ^ 0xF6B0F051898FCDD3) - 0x6C52884DEF927161)) & 0xEFAFFFAFFBFF9FECLL) + (((v85 ^ 0xF6B0F051898FCDD3) - 0x6C52884DEF927161) ^ 0x77D7FFD7FDFFCFF6) - 0x77D7FFD7FDFFCFF6;
  v88 = v87 + (((v87 >> 30) - ((v87 >> 29) & 0x76BE421E4) - 0x4F4C13544A0DEF0ELL) ^ 0x4F4C13544A0DEF0DLL) + 1;
  v89 = ((2 * v88) & 0xFEFFE76595FDCFDALL) + (v88 ^ 0x7F7FF3B2CAFEE7EDLL) - 0x7F7FF3B2CAFEE7EDLL;
  v90 = v89 + (((v89 >> 9) - ((v89 >> 8) & 0xFD04E720B5C650) + 0x1FE8273905AE328) ^ 0xFE017D8C6FA51CD7) + 1;
  v91 = (v90 ^ 0x67F7EDD337F7FFCFLL) - 0x67F7EDD337F7FFCFLL + ((2 * v90) & 0xCFEFDBA66FEFFF9ELL);
  v92 = (((v91 >> 8) - ((v91 >> 7) & 0x10600F604027E5ELL) + 0x5F83007B02013F2FLL) ^ 0x5F83007B02013F2FLL) + v91;
  v93 = ((2 * (((v92 - ((2 * v92) & 0xC30A753A9E10F2FCLL) + 0x61853A9D4F08797ELL) ^ 0x61853A9D4F08797ELL) - 0x46036C5595357B59)) & 0xD7DE1FBF7B8FFFD6) + ((((v92 - ((2 * v92) & 0xC30A753A9E10F2FCLL) + 0x61853A9D4F08797ELL) ^ 0x61853A9D4F08797ELL) - 0x46036C5595357B59) ^ 0x6BEF0FDFBDC7FFEBLL) - 0x6BEF0FDFBDC7FFEBLL;
  v94 = v93 + (((v93 >> 31) - ((v93 >> 30) & 0x184348ABALL) - 0x341D8E993DE5BAA3) ^ 0x341D8E993DE5BAA2) + 1;
  v95 = (v94 ^ 0x6BFF67ADF7FFF9FELL) - 0x6BFF67ADF7FFF9FELL + ((2 * v94) & 0xD7FECF5BEFFFF3FCLL);
  v96 = (((v95 >> 15) - ((v95 >> 14) & 0x39998F0050E6ALL) + 0x4783CCCC78028735) ^ 0x4783CCCC78028735) + v95;
  v97 = ((((((2 * v96) & 0xFFFF57EFF66F9B9ELL) + (v96 ^ 0x7FFFABF7FB37CDCFLL) - 0x7FFFABF7FB37CDCFLL) >> 5) - (((((2 * v96) & 0xFFFF57EFF66F9B9ELL) + (v96 ^ 0x7FFFABF7FB37CDCFLL) - 0x7FFFABF7FB37CDCFLL) >> 4) & 0x273A6EC11215D2ELL) + 0x4939D3760890AE97) ^ 0xB6C62C89F76F5168) + ((2 * v96) & 0xFFFF57EFF66F9B9ELL) + (v96 ^ 0x7FFFABF7FB37CDCFLL);
  v98 = v97 - ((2 * v97 + 0xA81009906464) & 0x88A81D8B7487D520) - 0x3BAB9D3240F3E33ELL;
  LODWORD(v97) = v98 ^ v79;
  v99 = ((2 * (((v98 >> 30) ^ 0xB5DA91E1) + (v98 ^ 0x2D76A47876AAFCE5))) & 0x68EF7F67BEFFFE72) + ((((v98 >> 30) ^ 0xB5DA91E1) + (v98 ^ 0x2D76A47876AAFCE5)) ^ 0xB477BFB3DF7FFF39) + 0x4B88404C208000C7;
  v100 = v99 + (((v99 >> 15) - ((v99 >> 14) & 0x16973176B45E4) + 0x7D5EB4B98BB5A2F2) ^ 0x82A14B46744A5D0DLL) + 1;
  v101 = ((((((2 * v100) & 0x7DF25E513FFDDF9ALL) + (v100 ^ 0xBEF92F289FFEEFCDLL) + 0x4106D0D760011033) >> 3) - (((((2 * v100) & 0x7DF25E513FFDDF9ALL) + (v100 ^ 0xBEF92F289FFEEFCDLL) + 0x4106D0D760011033) >> 2) & 0x6CEEE55C2ADD35ELL) + 0x6367772AE156E9AFLL) ^ 0x9C9888D51EA91650) + ((2 * v100) & 0x7DF25E513FFDDF9ALL) + (v100 ^ 0xBEF92F289FFEEFCDLL);
  v102 = v101 - ((2 * v101 - 0x7DF25E513FFDDF98) & 0xCE5DAA10BC219AC6) - 0x57CA5A2041EE2269;
  LODWORD(STACK[0x5A0]) = v61 ^ v68 ^ (((4 * v68) ^ 0x37207778) - ((2 * ((4 * v68) ^ 0x37207778)) & 0xF4859548) + 2051197607) & 0x8F03B5D8 ^ v86 ^ 0xE91209ED ^ (((4 * v102) ^ 0x7843358C) - ((2 * ((4 * v102) ^ 0x7843358C)) & 0x88E431F0) - 999155462) & v62 ^ v102;
  v103 = (((v102 ^ 0x672ED5085E10CD63) - 0x2E07EFB5C38248BALL) ^ 0x7DDFE4FE1F5FFF7FLL) - 0x7DDFE4FE1F5FFF7FLL + ((2 * ((v102 ^ 0x672ED5085E10CD63) - 0x2E07EFB5C38248BALL)) & 0xFBBFC9FC3EBFFEFELL);
  v104 = (((v103 >> 27) - ((v103 >> 26) & 0x2F09097C14) + 0x253981978484BE0ALL) ^ 0x253981978484BE0ALL) + v103;
  v105 = (v104 ^ 0x7BFB6DA7DEEF9BD7) - 0x7BFB6DA7DEEF9BD7 + ((2 * v104) & 0xF7F6DB4FBDDF37AELL);
  v106 = (((v105 >> 14) - ((v105 >> 13) & 0x3B961E6D132F2) + 0x6E31DCB0F3689979) ^ 0x6E31DCB0F3689979) + v105;
  v107 = (v106 ^ 0xEF7FF777E6BF3FBFLL) + 0x108008881940C041 + ((2 * v106) & 0xDEFFEEEFCD7E7F7ELL);
  v108 = (((v107 >> 8) - ((v107 >> 7) & 0x1B752C163F3A6DELL) + 0x26DBA960B1F9D36FLL) ^ 0x26DBA960B1F9D36FLL) + v107;
  v109 = ((2 * (((v108 - ((2 * v108) & 0x5EB9C1A27DCF0E2ALL) - 0x50A31F2EC11878EBLL) ^ 0xAF5CE0D13EE78715) + 0x8D9B1A79A7C8BBELL)) & 0xF9DFFB3D7F7FBBF6) + ((((v108 - ((2 * v108) & 0x5EB9C1A27DCF0E2ALL) - 0x50A31F2EC11878EBLL) ^ 0xAF5CE0D13EE78715) + 0x8D9B1A79A7C8BBELL) ^ 0xFCEFFD9EBFBFDDFBLL) + 0x310026140402205;
  v110 = v109 + (((v109 >> 25) - ((v109 >> 24) & 0x5426084864) - 0x6CB68F55ECFBDBCELL) ^ 0x6CB68F55ECFBDBCDLL) + 1;
  v111 = (v110 ^ 0xDFE9FF1FFEFFCFFDLL) + 0x201600E001003003 + ((2 * v110) & 0xBFD3FE3FFDFF9FFALL);
  v112 = (((v111 >> 11) - ((v111 >> 10) & 0x1033C2FFEB98C2) - 0x62F7E61E800A339FLL) ^ 0x9D0819E17FF5CC61) + v111;
  LODWORD(v112) = ((((((2 * v112) & 0x5FDDFFFEDC3BFFE2) + (v112 ^ 0xAFEEFFFF6E1DFFF1) + 0x5011000091E2000FLL) >> 6) - (((((2 * v112) & 0x5FDDFFFEDC3BFFE2) + (v112 ^ 0xAFEEFFFF6E1DFFF1) + 0x5011000091E2000FLL) >> 5) & 0xA2A36BA6) - 783174189) ^ 0x2EAE4A2C) + ((2 * v112) & 0xDC3BFFE2) + (v112 ^ 0x6E1DFFF1);
  LODWORD(v112) = v97 ^ (v112 - ((2 * v112 + 600047648) & 0xBA3F4564) + 1862378178);
  v113 = STACK[0x5B8];
  LOBYTE(v74) = *(STACK[0x5B8] + 9);
  LODWORD(STACK[0x598]) = a1 ^ v112 ^ 0x8DD71F1C ^ (((4 * v112) ^ 0x2CF6A97C) - ((2 * ((4 * v112) ^ 0x2CF6A97C)) & 0x5410A548) - 1442295132) & v62;
  LOBYTE(v112) = *(v113 + ((v74 - ((2 * v74 + 6) & 6) + 14) & 0xF ^ 3));
  LOBYTE(v112) = *(v113 + ((v112 + ((2 * (v112 & 3)) ^ 0xFB) + 10) & 0xF ^ 3));
  LODWORD(v112) = *(v113 + ((v112 - ((2 * v112 + 4) & 8) + 6) & 0xF ^ 4));
  v114 = ((v112 + ((2 * v112) | 7) + 1) & 0xF ^ 0xDEB9F56F) + ((2 * (v112 + ((2 * v112) | 7) + 1)) & 0x16) - 483894611;
  v121 = LODWORD(STACK[0x3C4]) ^ 0x395D5A25;
  v115 = 1057201089 * (((2 * *STACK[0x5B8]) & 0x1DA) + (*STACK[0x5B8] ^ 0x3DFDB5ED)) - ((((v63 - 243) ^ 0x6398B6C8) + 2114402178 * (((2 * *STACK[0x5B8]) & 0x1DA) + (*STACK[0x5B8] ^ 0x3DFDB5ED))) & 0xE8B22E9A) - 1507495776;
  LODWORD(v112) = ((2 * (v115 ^ 0x35EC4A45)) & 0xFBBDF58A) + (v115 ^ 0xC832B080) + 35718459;
  LODWORD(v112) = v112 + ((WORD1(v112) + 103201933 - ((2 * WORD1(v112)) & 0x18D3E) + 2578) ^ 0xF9D93960) + 1;
  LODWORD(v112) = (v112 ^ 0x59F8EFB7) - 1509486519 + ((2 * v112) & 0xB3F1DF6E);
  LODWORD(v112) = (((v112 >> 8) - 387946846 - ((v112 >> 7) & 0x1C0CD44)) ^ 0xE8E066A2) + v112;
  LODWORD(v74) = ((2 * v112) & 0x6F8FFFFE) + (v112 ^ 0x37C7FFFF);
  v116 = v74 - ((2 * v74 + 1353540350) & 0x5ED65B50) - 1748902105;
  LODWORD(v112) = (v115 ^ 0x5B323AE5 ^ v116 ^ 0xFFFDFF7F) + 128998 + ((2 * (v115 ^ 0x5B323AE5 ^ v116)) & 0xFFFBFEFE);
  LODWORD(v112) = v112 + ((((v112 + 2203) >> 16) - ((2 * ((v112 + 2203) >> 16)) & 0x13E02) - 1828937983) ^ 0x6D0360FE) + 2204;
  LODWORD(v112) = (v112 ^ 0xAFFFFFCD) + 1342177278 + ((2 * v112) & 0x5FFFFF9A) + 53;
  LODWORD(v112) = (((v112 >> 8) - 915335918 - ((v112 >> 7) & 0xE22A24)) ^ 0xC9711512) + v112;
  LODWORD(v112) = ((2 * v112) & 0x396F5E36) + (v112 ^ 0x9CB7AF1B);
  LODWORD(v97) = (v112 + 1665683685) ^ 0xA023490 ^ (4 * v112 - ((8 * v112 + 440567592) & 0x3404F928) - 1490829269) & 0x8F03B5D8;
  LODWORD(v97) = v97 - 2 * (v97 & 0x6A425275 ^ (v112 + 1665683685) & 5);
  v117 = v112 - 1122604330 + ((2033318712 - 2 * v112) | 0x8CA12F1B);
  LODWORD(v112) = ((2 * (v115 ^ 0xCDF67F3F ^ v117)) & 0xFFFEDF5E) + (v115 ^ 0xCDF67F3F ^ v117 ^ 0xFFFF6FAF);
  LODWORD(v112) = v112 + 36946 + ((((v112 + 36945) >> 16) - ((2 * ((v112 + 36945) >> 16)) & 0x12E04) - 351627518) ^ 0x14F568FD);
  LODWORD(v112) = (v112 ^ 0xDDEDED6E) + 571609746 + ((2 * v112) & 0xBBDBDADC);
  LODWORD(v112) = (((v112 >> 8) + 234504553 - ((v112 >> 7) & 0x1F482D2)) ^ 0xDFA4169) + v112;
  LODWORD(v112) = ((2 * v112) & 0xD3B7FFFE) + (v112 ^ 0x69DBFFFF);
  LODWORD(v73) = LODWORD(STACK[0x5A0]) ^ (v74 - 935854079) ^ (4 * v74 - ((8 * v74 + 1103101960) & 0x55BC1D78) + 1270746818) & 0x8F03B5D8 ^ (v97 - 364752272) ^ 0x49471ED9 ^ (4 * v112 - ((8 * v112 - 1323302904) & 0xEAD56358) - 839208526) & 0x8F03B5D8;
  LODWORD(v73) = (v112 - 1776025599) ^ 0x6B66C77D ^ (v73 + 1801897853 - ((2 * v73) & 0xD6CD8EFA));
  LODWORD(STACK[0x5A0]) = v73 - 1408894535 - ((2 * v73) & 0x580BF372);
  v118 = v112 - ((2 * v112 + 1820680958) & 0xF32CCF32) + 802756888;
  LODWORD(STACK[0x598]) ^= v116 ^ (((4 * v116) ^ 0xBDACB6A0) - ((2 * ((4 * v116) ^ 0xBDACB6A0)) & 0x7BE64E68) - 1108138187) & 0x8F03B5D8 ^ v117 ^ (((4 * v117) ^ 0xE6BDA1C8) - ((2 * ((4 * v117) ^ 0xE6BDA1C8)) & 0xA6C84F70) - 748410949) & 0x8F03B5D8 ^ v118 ^ 0xE3502703 ^ (((4 * v118) ^ 0xE6599E64) - ((2 * ((4 * v118) ^ 0xE6599E64)) & 0x5D20BD0) - 2098657816) & 0x8F03B5D8;
  v119 = v114 < 0xC1E25018 || v114 > 0xC1E25019;
  return (*(&off_1002D7880 + ((206 * !v119) ^ v63)))(863263629);
}

uint64_t sub_10008E7E0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  v98 = LODWORD(STACK[0x3D8]) >> 1;
  LODWORD(STACK[0x428]) = LODWORD(STACK[0x2F8]) - LODWORD(STACK[0x428]);
  v97 = a64 - LODWORD(STACK[0x334]);
  LODWORD(STACK[0x2F8]) = a62 - LODWORD(STACK[0x350]);
  LODWORD(STACK[0x350]) = a58 - 2 * a60;
  v67 = a1 - 863263628;
  v68 = *(STACK[0x5B8] + (a1 - 863263628));
  v69 = 1057201089 * (((2 * v68) & 0xFFFFFFC7) + (v68 ^ 0x756DFFE3)) - (((((2 * v68) & 0xFFFFFFC7) + (v68 ^ 0x756DFFE3)) * ((v64 - 816) ^ 0x7E0736BC) + 49629626) & 0x75BFF6B4) + 1012572215;
  v70 = ((2 * (v67 + (v66 ^ 0xC3499CC3 ^ v69))) & 0xD77FBF6E) + ((v67 + (v66 ^ 0xC3499CC3 ^ v69)) ^ 0xEBBFDFB7) + 339746889;
  v71 = v70 + ((HIWORD(v70) + 116740338 - ((v70 >> 15) & 0xA31E) + 157) ^ 0xF90AAE70) + 1;
  v72 = (v71 ^ 0x75EA1FFE) - 1978277886 + ((2 * v71) & 0xEBD43FFC);
  v73 = (((v72 >> 8) + 971376557 - ((v72 >> 7) & 0x1CC0F5A)) ^ 0x39E607AD) + v72;
  v74 = ((2 * v73) & 0x6FED8FFE) + (v73 ^ 0xB7F6C7FF);
  v75 = v74 - ((2 * v74 + 808526208) & 0x3E13C0EA) + 925004085;
  v76 = v74 - ((2 * v74 + 273666814) & 0x33FC6780) - 2111431361;
  v77 = ((4 * v76) ^ 0x67F8CF00) - ((2 * ((4 * v76) ^ 0x67F8CF00)) & 0x70BE61C0u);
  v78 = ((2 * (v67 + (v69 ^ 0xA321C89A ^ v76))) & 0x8FE29FFC) + ((v67 + (v69 ^ 0xA321C89A ^ v76)) ^ 0xC7F14FFE) + 940486658;
  v79 = v78 + ((HIWORD(v78) - ((v78 >> 15) & 0x68B6) + 1618555995) ^ 0x9F86CBA4) + 1;
  v80 = (v79 ^ 0xDB760EAB) + 613019989 + ((2 * v79) & 0xB6EC1D56);
  v81 = (((v80 >> 8) - 1546991584 - ((v80 >> 7) & 0x1959040)) ^ 0xA3CAC820) + v80;
  v82 = ((2 * v81) & 0x7FBFFFD4) + (v81 ^ 0xBFDFFFEA);
  v83 = (v82 + 1075838998) ^ 0x8D002510 ^ (4 * v82 - ((8 * v82 + 16777392) & 0xDB104E68) - 301455476) & 0x8F03B5D8;
  v84 = v83 - ((2 * v83) & 0x485D4116);
  v85 = v82 - ((2 * v82 + 543076778) & 0xE3446C10) - 2116972835;
  v86 = v82 - ((2 * v82 + 8217384) & 0x192D56BC) - 321561358;
  v87 = ((2 * (v67 + (v69 ^ 0x36495004 ^ v86))) & 0xFEBFFE3E) + ((v67 + (v69 ^ 0x36495004 ^ v86)) ^ 0x7F5FFF1F) - 2136997663;
  v88 = v87 + ((HIWORD(v87) - ((v87 >> 15) & 0xC65E) - 366517457) ^ 0x15D89CD0) + 1;
  v89 = (v88 ^ 0x3797FFFF) - 932708351 + ((2 * v88) & 0x6F2FFFFE);
  v90 = (((v89 >> 8) - 1011839250 - ((v89 >> 7) & 0x1611DDC)) ^ 0xC3B08EEE) + v89;
  v91 = ((2 * v90) & 0xFFDFDFAE) + (v90 ^ 0xFFEFEFD7);
  v92 = (v91 + 1052713) ^ 0x8903A400 ^ (4 * v91 - ((8 * v91 + 8421704) & 0xF20FCC40) - 112711996) & 0x8F03B5D8;
  v93 = LODWORD(STACK[0x5A0]) ^ (v74 + 1208563713) ^ (((1068908528 - 8 * v74) | 0xBB3FF52F) + 4 * v74 + 1116005743) & 0x8F03B5D8 ^ (v84 + 607035531) ^ 0xB70DE607 ^ (v92 + 1025948285 - 2 * (v92 & 0x3D26BA7F ^ (v91 + 1052713) & 2));
  LODWORD(STACK[0x5A0]) = v93 - 1408894535 - ((2 * v93) & 0x580BF372);
  v94 = v91 - ((2 * v91 + 1079870286) & 0xF32CCF32) - 1715132096;
  v95 = (((4 * v85) ^ 0xC688D820) + 758681028 - 2 * (((4 * v85) ^ 0xC688D820) & 0x2D388DCC ^ (4 * v85) & 8)) & 0x8F03B5D8;
  LODWORD(STACK[0x598]) ^= v76 ^ (v77 - 1201721117) & 0x8F03B5D8 ^ v86 ^ (((4 * v86) ^ 0x325AAD78) - ((2 * ((4 * v86) ^ 0x325AAD78)) & 0x60B070D8) - 1336395668) & 0x8F03B5D8 ^ v94 ^ 0xEBFECE07 ^ (((4 * v94) ^ 0xE6599E64) - ((2 * ((4 * v94) ^ 0xE6599E64)) & 0x7E067750) - 1090307158) & 0x8F03B5D8;
  return (*(&off_1002D7880 + ((27 * ((v67 + 1) > 0xF)) ^ v64)))(v77, 714157244, 1025948285, 758681028, 3159116560, 3959344647, v65 ^ v75 ^ (((4 * v75) ^ 0x7C2781D4) - ((2 * ((4 * v75) ^ 0x7C2781D4)) & 0xBA3C9A78) - 585216706) & 0x8F03B5D8 ^ v85 ^ v95 ^ (v91 - 2 * ((v91 + 1344235752) & 0x58E4392F ^ v91 & 2) - 1459379691) ^ 0xBC4C4B10, v95, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53);
}

uint64_t sub_10008EF10()
{
  v2 = STACK[0x37C];
  v3 = LODWORD(STACK[0x37C]) ^ 0xEA771259;
  v49 = LODWORD(STACK[0x300]) ^ LODWORD(STACK[0x518]);
  v4 = v0 + 1829656798 + ((((v0 + 1829656798) >> 14) - (((v0 + 1829656798) >> 13) & 0x2F14E) + 1780054183) ^ 0x95E68758) + 1;
  v5 = (v4 ^ 0x7BFC3FF7) - 2080129015 + ((2 * v4) & 0xF7F87FEE);
  v6 = (((v5 >> 2) - ((v5 >> 1) & 0x4D5DD116) - 1498486645) ^ 0xA6AEE88B) + v5;
  v7 = v6 - ((2 * v6) & 0xEAC6A49E) + 1969443407;
  HIDWORD(v8) = v7 ^ 0x3524F;
  LODWORD(v8) = v7 ^ 0x75600000;
  LODWORD(STACK[0x300]) = LODWORD(STACK[0x348]) - LODWORD(STACK[0x34C]);
  v9 = (v8 >> 18) - ((2 * (v8 >> 18)) & 0x1680F376) + 188774843;
  HIDWORD(v8) = v9 ^ 0x23C8;
  LODWORD(v8) = v9 ^ 0xF0F34000;
  v10 = (v8 >> 14) - ((2 * (v8 >> 14)) & 0xBEBC8044) - 547471326;
  v11 = ((2 * ((v10 ^ 0xA7F2E9A) - ((v10 >> 14) ^ 0x29FC))) & 0xDFC48CF6) + (((v10 ^ 0xA7F2E9A) - ((v10 >> 14) ^ 0x29FC)) ^ 0x6FE2467B);
  v12 = ((((v11 - 1877100155) >> 4) - (((v11 - 1877100155) >> 3) & 0x108FAB64) + 1212667314) ^ 0xB7B82A4D) + v11;
  v13 = v12 - ((2 * v12 + 540766988) & 0x9FFCDB74) + 1612457792;
  v14 = ((((v13 >> 13) ^ 0x2D986) + (v13 ^ 0x5B30D636)) ^ 0xBF59FFCE) + 1084620850 + ((2 * (((v13 >> 13) ^ 0x2D986) + (v13 ^ 0x5B30D636))) & 0x7EB3FF9C);
  v15 = (((~(v14 >> 4) | 0xF9610E2D) + (v14 >> 5) + 726628586) ^ 0x2B4F78E9) + v14;
  v16 = ((2 * (((v15 - ((2 * v15) & 0xD5667AC0) + 1790131552) ^ 0x6AB33D60) - 799120368)) & 0xF1FFFE7A) + ((((v15 - ((2 * v15) & 0xD5667AC0) + 1790131552) ^ 0x6AB33D60) - 799120368) ^ 0xF8FFFF3D) + 117440707;
  v17 = v16 + (((v16 >> 8) - ((v16 >> 7) & 0x90A4E0) - 1085779344) ^ 0x40B7AD8F) + 1;
  v18 = ((((((2 * v17) & 0xEC72B6CE) + (v17 ^ 0x76395B67) - 1983470439) >> 5) - (((((2 * v17) & 0xEC72B6CE) + (v17 ^ 0x76395B67) - 1983470439) >> 4) & 0x95DB04) - 1605702270) ^ 0x5FB5127D) + ((2 * v17) & 0xEC72B6CE) + (v17 ^ 0x76395B67);
  v19 = v18 + 998861798 + ((1819457226 - 2 * v18) | 0x9C7A7169);
  v20 = v19 ^ v7;
  v21 = ((2 * ((v19 ^ 0xB1C2C74B) + 815573086)) & 0xFFA5DFFA) + (((v19 ^ 0xB1C2C74B) + 815573086) ^ 0x7FD2EFFD) - 2144530429;
  v22 = v21 + (((v21 >> 12) - ((v21 >> 11) & 0x62C52) + 1376982569) ^ 0xADECE9D6) + 1;
  v23 = (v22 ^ 0xFBFBFF7F) + 67372036 + ((2 * v22) & 0xF7F7FEFE) - 899;
  v24 = (((v23 >> 5) - ((v23 >> 4) & 0xE55C60C) + 1730863878) ^ 0x672AE306) + v23;
  v25 = ((((v24 - ((2 * v24) & 0x5EF44A28) + 796534036) ^ 0x2F7A2514) - 794593149) ^ 0xF7EFFFFE) + 135266306 + ((2 * (((v24 - ((2 * v24) & 0x5EF44A28) + 796534036) ^ 0x2F7A2514) - 794593149)) & 0xEFDFFFFC);
  v26 = (((v25 >> 12) - ((v25 >> 11) & 0x17BE24) - 1301553390) ^ 0xB26BDF12) + v25;
  v27 = (v26 ^ 0xDD96DFBF) + 577314881 + ((2 * v26) & 0xBB2DBF7E);
  v28 = (((v27 >> 1) - (v27 & 0x1CA7183A) + 240356381) ^ 0xE538C1D) + v27;
  v29 = ((2 * (((v28 - ((2 * v28) & 0xE271298) + 118720844) ^ 0x713894C) - 224220493)) & 0xF5DFDDF6) + ((((v28 - ((2 * v28) & 0xE271298) + 118720844) ^ 0x713894C) - 224220493) ^ 0x7AEFEEFB) - 2062544635;
  v30 = v29 + (((v29 >> 13) - ((v29 >> 12) & 0xBF6D0) + 131464040) ^ 0xF82A0497) + 1;
  v31 = ((((((2 * v30) & 0x7FB179DE) + (v30 ^ 0x3FD8BCEF) - 1071168751) >> 7) - (((((2 * v30) & 0x7FB179DE) + (v30 ^ 0x3FD8BCEF) - 1071168751) >> 6) & 0x3214D6E) + 1435543223) ^ 0xAA6F5948) + ((2 * v30) & 0x7FB179DE) + (v30 ^ 0x3FD8BCEF);
  v32 = v31 - ((2 * v31 + 5146148) & 0x45F320C6) + 1663095669;
  LODWORD(STACK[0x334]) = ((4 * (v20 ^ v32)) ^ 0x9960159C) - ((2 * ((4 * (v20 ^ v32)) ^ 0x9960159C)) & 0xAC9FFE78) - 699400386;
  v33 = STACK[0xB48];
  v34 = (*(STACK[0xB48] + 8 * (0xD93B78D % STACK[0x5B0])) ^ 0xBEBEBEBEBEBEBEBELL) + 3077297321u;
  v35 = STACK[0x4D0];
  v36 = (*(STACK[0xB48] + 8 * (((v34 ^ 0x77A5FFFE8B4FFBFBLL) - 0x77A5FFFE8B4FFBFBLL + ((2 * v34) & 0xEF4BFFFD169FF7F6)) % STACK[0x4D0])) ^ 0xBEBEBEBEBEBEBEBELL) + 865412657;
  v37 = (*(STACK[0xB48] + 8 * (((v36 ^ 0x7E7FF24F7D7A9FE7) - 0x7E7FF24F7D7A9FE7 + ((2 * v36) & 0xFCFFE49EFAF53FCELL)) % STACK[0x4D0])) ^ 0xBEBEBEBEBEBEBEBELL) + 1617842356;
  v38 = ((v37 ^ 0xFF1E9F47E9A3F73ALL) + 0xE160B8165C08C6 + ((2 * v37) & 0xFE3D3E8FD347EE74)) % STACK[0x4D0];
  STACK[0x518] = STACK[0xB48];
  v39 = (*(v33 + 8 * v38) ^ 0xBEBEBEBEBEBEBEBELL) + 1132575022;
  v40 = ((v39 ^ 0x7FFEFFB611DFDE9FLL) - 0x7FFEFFB611DFDE9FLL + ((2 * v39) & 0xFFFDFF6C23BFBD3ELL)) % v35;
  LODWORD(STACK[0x34C]) = LODWORD(STACK[0x580]) ^ LODWORD(STACK[0x410]);
  LODWORD(STACK[0x348]) = v3;
  LODWORD(STACK[0x4D0]) = ((4 * v2) ^ 0x4A3DFE48) + 445132763 + ~(2 * (((4 * v2) ^ 0x4A3DFE48) & 0x1A882FDC ^ (4 * v2) & 4));
  v41 = 4 * (LODWORD(STACK[0x448]) ^ LODWORD(STACK[0x4C0]) ^ LODWORD(STACK[0x560]));
  v42 = (v41 ^ 0xD4068024) - 2 * ((v41 ^ 0xD4068024) & 0x13104CD8 ^ v41 & 0x10) + 319835339;
  v43 = (4 * (LODWORD(STACK[0x510]) ^ LODWORD(STACK[0x41C]) ^ LODWORD(STACK[0x3E0]))) ^ 0xBDC776C;
  v48 = (((4 * LODWORD(STACK[0x4C0])) ^ 0xC541F06C) - ((2 * ((4 * LODWORD(STACK[0x4C0])) ^ 0xC541F06C)) & 0xCC35B860) + 1713036339) & 0x8F03B5D8 ^ LODWORD(STACK[0x340]);
  v44 = LODWORD(STACK[0x508]) ^ 0xCCB6B4B7;
  v45 = (v40 - ((2 * v40) & 0xE6246124) + 1930571922) ^ 0x73123092;
  LODWORD(STACK[0x508]) = v42 & 0x8F03B5D8;
  if (v45 <= 1)
  {
    v45 = 1;
  }

  v46 = (*STACK[0x518] ^ 0xBEBEBEBEBEBEBEBELL) * (v1 ^ 0xDDD7B9E59B0BDA5FLL) - ((0x1AF73CB3617B6C2 * (*STACK[0x518] ^ 0xBEBEBEBEBEBEBEBELL)) & 0x1E5C4E405969F08) - 0x7F0D1D8DFD34B07CLL;
  return (*(&off_1002D7880 + ((84 * (v45 == 1)) ^ v1)))(0x364516CCC69687AALL);
}

uint64_t sub_100090590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  LODWORD(STACK[0x340]) = LODWORD(STACK[0x360]) ^ 0x97F6454B;
  v46 = v44 - 1278641826 + ((v44 < 0x4C3686A2) << 32);
  v47 = 0xDDD7B9E59B0BDB61 * (*(STACK[0xB48] + 8 * v46) ^ 0xBEBEBEBEBEBEBEBELL) - ((0xBBAF73CB3617B6C2 * (*(STACK[0xB48] + 8 * v46) ^ 0xBEBEBEBEBEBEBEBELL)) & ((v45 ^ 0xC37FCC98) - 0xDCB72147CB8DD6BLL)) - 0x6E5B90A17A97780;
  v48 = (((a4 ^ 0x9A85DB699D40FA99 ^ v47) + v46) ^ 0x6ECF7FDF9EE7F7CLL) - 0x6ECF7FDF9EE7F7CLL + ((2 * ((a4 ^ 0x9A85DB699D40FA99 ^ v47) + v46)) & 0xDD9EFFBF3DCFEF8);
  v49 = ((HIDWORD(v48) + 0x1B71CD55DF8F8A73 - ((v48 >> 31) & 0x1BF1F14E6)) ^ 0x1B71CD55DF8F8A73) + v48;
  v50 = ((2 * v49) & 0xFFECFAB5F59BF39ELL) + (v49 ^ 0xFFF67D5AFACDF9CFLL) + 0x982A505320631;
  v51 = v50 + (((v50 >> 16) - ((v50 >> 15) & 0x1290C0504550ALL) + 0x52E4948602822A85) ^ 0xAD1B6B79FD7DD57ALL) + 1;
  v52 = (v51 ^ 0x37FBEB758DDECDFFLL) - 0x37FBEB758DDECDFFLL + ((2 * v51) & 0x6FF7D6EB1BBD9BFELL);
  v53 = (((v52 >> 8) + 0x3DBA452051D0D473 - ((v52 >> 7) & 0x1748A40A3A1A8E6)) ^ 0x3DBA452051D0D473) + v52;
  v54 = ((2 * v53) & 0xFDEF737FF9FEF6BALL) + (v53 ^ 0x7EF7B9BFFCFF7B5DLL) - ((2 * (((2 * v53) & 0xFDEF737FF9FEF6BALL) + (v53 ^ 0x7EF7B9BFFCFF7B5DLL)) - 0x68E0E572685AF2A2) & 0xA5070466F69CF460) - 0x61ECF085B8DEFF21;
  v55 = (((v47 ^ 0xAB99C4C69318F2B0 ^ v54) + v46) ^ 0x79BBEFE4FFEFB0D9) - 0x79BBEFE4FFEFB0D9 + ((2 * ((v47 ^ 0xAB99C4C69318F2B0 ^ v54) + v46)) & 0xF377DFC9FFDF61B2);
  v56 = ((HIDWORD(v55) + 0x66F84B0C5FBDBAFCLL - ((v55 >> 31) & 0xBF7B75F8)) ^ 0x66F84B0C5FBDBAFCLL) + v55;
  v57 = ((2 * v56) & 0xFEB577CE7BBFDF7ALL) + (v56 ^ 0xFF5ABBE73DDFEFBDLL) + 0xA54418C2201043;
  v58 = v57 + (((v57 >> 16) - ((v57 >> 15) & 0x141C8A55AE8D8) + 0x53F0A0E452AD746CLL) ^ 0xAC0F5F1BAD528B93) + 1;
  v59 = (v58 ^ 0x77BFFCDCF63DBFFCLL) - 0x77BFFCDCF63DBFFCLL + ((2 * v58) & 0xEF7FF9B9EC7B7FF8);
  v60 = (((v59 >> 8) - 0x61836BAC6211479FLL - ((v59 >> 7) & 0xF928A73BDD70C2)) ^ 0x9E7C94539DEEB861) + v59;
  v61 = ((2 * v60) & 0xFEDE37FDFE7BFB3CLL) + (v60 ^ 0x7F6F1BFEFF3DFD9ELL) - ((2 * (((2 * v60) & 0xFEDE37FDFE7BFB3CLL) + (v60 ^ 0x7F6F1BFEFF3DFD9ELL)) + 0x1630560F932808DCLL) & 0x1D7E10A653F7F37CLL) - 0x2628CCA50C7001D4;
  v62 = (((v47 ^ 0x77A54EA6C1AD713ELL ^ v61) + v46) ^ 0x9FA7F577DFF577AFLL) + 0x60580A88200A8851 + ((2 * ((v47 ^ 0x77A54EA6C1AD713ELL ^ v61) + v46)) & 0x3F4FEAEFBFEAEF5ELL);
  v63 = ((HIDWORD(v62) + 0x733FE9B34E462889 - ((v62 >> 31) & 0x9C8C5112)) ^ 0x733FE9B34E462889) + v62;
  v64 = ((2 * v63) & 0xD7C7AD79B3EF9F6ELL) + (v63 ^ 0xEBE3D6BCD9F7CFB7) + 0x141C294326083049;
  v65 = v64 + (((v64 >> 16) - ((v64 >> 15) & 0x176162657EA90) + 0x22FEBB0B132BF548) ^ 0xDD0144F4ECD40AB7) + 1;
  v66 = (v65 ^ 0xF97FFFCFBF6FBFDFLL) + 0x680003040904021 + ((2 * v65) & 0xF2FFFF9F7EDF7FBELL);
  v67 = (((v66 >> 8) - 0x7E1D39A3BE1C298BLL - ((v66 >> 7) & 0x1C58CB883C7ACEALL)) ^ 0x81E2C65C41E3D675) + v66;
  return (*(&off_1002D7880 + ((469 * (STACK[0x5B0] > v44 - 1278641825)) ^ v45 ^ 0x8E1A242E)))(v45 ^ 0x8E1A242E, 2 * (((2 * v67) & 0xD7FD27D9D97B3FDELL) + (v67 ^ 0xEBFE93ECECBD9FEFLL)), 1278641826, ((2 * v67) & 0xD7FD27D9D97B3FDELL) + (v67 ^ 0xEBFE93ECECBD9FEFLL) - ((2 * (((2 * v67) & 0xD7FD27D9D97B3FDELL) + (v67 ^ 0xEBFE93ECECBD9FEFLL)) - 0x42EE99CC47D73BC6) & 0xC73F3B38EA2CE432) + 0x422850B6512AD436, 0x733FE9B34E462889, 0x66F84B0C5FBDBAFCLL, 759434116, 0x3DBA452051D0D473, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_10009100C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, int a47, int a48, int a49, int a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60)
{
  LODWORD(STACK[0x518]) = LODWORD(STACK[0x390]) - LODWORD(STACK[0x39C]);
  LODWORD(STACK[0x5B0]) = 13 * (v60 ^ 0x4D65EE00);
  LODWORD(STACK[0x338]) ^= a48 ^ LODWORD(STACK[0x560]) ^ LODWORD(STACK[0x508]) ^ LODWORD(STACK[0x2F8]) ^ v61 ^ a60 ^ a50 ^ a49 ^ a47;
  v62 = *(STACK[0x5B8] + (*(STACK[0x5B8] + 12) & 0xF ^ 8));
  v63 = *(STACK[0x5B8] + ((((v62 + ((2 * v62) | 0xD) + 3) ^ 1) + 14) & 0xF));
  v64 = *(STACK[0x5B8] + ((v63 + ((2 - 2 * v63) | 7) + 11) & 0xF ^ 0xCLL));
  v65 = (v64 - ((2 * v64 + 10) & 8) + 1) & 0xF ^ 0xC;
  v66 = ((2 * v65) & 8) + (v65 ^ 0xC577B994);
  v67 = (v66 + 389390495);
  v68 = LODWORD(STACK[0x5B0]);
  v69 = (((2 * *STACK[0x5B8]) & 0xBBBB) + (*STACK[0x5B8] ^ 0xDFFEABDD)) * (((v68 - 1319) | 0x24) + 1057200981) - ((2114402178 * (((2 * *STACK[0x5B8]) & 0xBBBB) + (*STACK[0x5B8] ^ 0xDFFEABDD)) + 280313542) & 0xEC41BD8E) - 25461206;
  v70 = ((2 * (v69 ^ 0x379583CF)) & 0x6FA79BBC) + (v69 ^ 0x464E11) - 936627678;
  v71 = v70 + ((HIWORD(v70) - ((2 * HIWORD(v70)) & 0x11004) - 930838526) ^ 0x377B77FD) + 1;
  v72 = (v71 ^ 0x9EFB9BDD) + 1627677731 + ((2 * v71) & 0x3DF737BA);
  v73 = (((v72 >> 8) + 1192099995 - ((2 * (v72 >> 8)) & 0x1C0136)) ^ 0x470E009B) + v72;
  v74 = ((2 * v73) & 0x7CDDFDF4) + (v73 ^ 0xBE6EFEFA) - ((2 * (((2 * v73) & 0x7CDDFDF4) + (v73 ^ 0xBE6EFEFA)) + 56583432) & 0x1B941E06) - 277233273;
  v75 = ((2 * (v69 ^ 0x7BEAD1C4 ^ v74)) & 0xFFDD5FFE) + (v69 ^ 0x7BEAD1C4 ^ v74 ^ 0xFFEEAFFF) + 1134593;
  v76 = v75 + ((HIWORD(v75) - ((v75 >> 15) & 0x59A6) - 1265881901) ^ 0x4B73D32C) + 1;
  v77 = (v76 ^ 0xFE7FB38F) + 25185393 + ((2 * v76) & 0xFCFF671E);
  v78 = (((v77 >> 8) + 1400448204 - ((v77 >> 7) & 0xF24998)) ^ 0x537924CC) + v77;
  v79 = ((2 * v78) & 0xFE7AB7E8) + (v78 ^ 0x7F3D5BF4) - ((2 * (((2 * v78) & 0xFE7AB7E8) + (v78 ^ 0x7F3D5BF4)) + 1103276820) & 0x4B9BA82A) + 1185884575;
  v80 = ((2 * (v69 ^ 0x53ED0AD2 ^ v79)) & 0x7C5BFF0E) + (v69 ^ 0x53ED0AD2 ^ v79 ^ 0xBE2DFF87) + 1104281721;
  v81 = v80 + ((HIWORD(v80) - ((2 * HIWORD(v80)) & 0x13892) - 919626679) ^ 0x36D063B6) + 1;
  v82 = (v81 ^ 0xDD3DB53E) + 583158466 + ((2 * v81) & 0xBA7B6A7C);
  v83 = (((v82 >> 8) - 1965156780 - ((v82 >> 7) & 0x1BC2CA8)) ^ 0x8ADE1654) + v82;
  v84 = ((2 * v83) & 0xDC4D7FBE) + (v83 ^ 0x6E26BFDF);
  v85 = v66 < 0xC577B994 || v67 > 0xDCAD5A34;
  return (*(&off_1002D7880 + ((239 * v85) ^ v68)))(v66, 818373520, v67, 3702348340, (2 * ((4 * (v84 - ((2 * v84 + 1676665662) & 0xAE08C834) - 1996728903)) ^ 0x5C119068)) & 0xAE8F4528, ((4 * v79) ^ 0x97375054) - ((2 * ((4 * v79) ^ 0x97375054)) & 0x13665E18), 2134727668, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

uint64_t sub_100092B54(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v41 = (v40 + 1656);
  v62 = (v41 ^ 0x8F03B33C) & LODWORD(STACK[0x4D0]);
  v42 = a2 + 3476593777;
  v43 = (2 * v41) ^ 0xC84u;
  v44 = *(STACK[0x5B8] + v42);
  v45 = ((v43 + 144) & (2 * v44)) + (v44 ^ 0x7DFB55EE);
  v46 = 1057201089 * v45 - ((2114402178 * v45 - 1989788892) & 0xBBB3165E) + 579643585;
  v47 = ((2 * (v42 + (v39 ^ 0x8ADDEF35 ^ v46))) & 0xFFFDFF58) + ((v42 + (v39 ^ 0x8ADDEF35 ^ v46)) ^ 0xFFFEFFAC) + 65620;
  v48 = v47 + ((HIWORD(v47) - ((v47 >> 15) & 0xABF6) - 827501061) ^ 0x3152AA04) + 1;
  v49 = (v48 ^ 0x8AE7EF2E) + 1964511442 + ((2 * v48) & 0x15CFDE5C);
  v50 = (((v49 >> 8) + 1734257288 - ((v49 >> 7) & 0xBD5510)) ^ 0x675EAA88) + v49;
  v51 = ((2 * v50) & 0xB46FFF52) + (v50 ^ 0xDA37FFA9) - ((2 * (((2 * v50) & 0xB46FFF52) + (v50 ^ 0xDA37FFA9)) + 198009770) & 0x50740CEA) - 299845558;
  v52 = ((2 * (v42 + (v46 ^ 0xF5E38D5A ^ v51))) & 0x3AEF753C) + ((v42 + (v46 ^ 0xF5E38D5A ^ v51)) ^ 0x9D77BA9E) + 1653097826;
  v53 = v52 + ((HIWORD(v52) - ((v52 >> 15) & 0xABDC) + 1792234990) ^ 0x952CAA11) + 1;
  v54 = (v53 ^ 0xFFFFBAF3) + 17677 + ((2 * v53) & 0xFFFF75E6);
  v55 = (((v54 >> 8) - 1594122632 - ((v54 >> 7) & 0x1F73CF0)) ^ 0xA0FB9E78) + v54;
  v56 = ((2 * v55) & 0xEFA17EF0) + (v55 ^ 0xF7D0BF78) - ((2 * (((2 * v55) & 0xEFA17EF0) + (v55 ^ 0xF7D0BF78)) + 278651916) & 0x2BB065CC) - 1104796436;
  v57 = ((2 * (v42 + (v46 ^ 0xC801B9C9 ^ v56))) & 0xDFECEABA) + ((v42 + (v46 ^ 0xC801B9C9 ^ v56)) ^ 0x6FF6755D) - 1878422877;
  v58 = v57 + ((HIWORD(v57) - ((v57 >> 15) & 0x9C6) + 1945568483) ^ 0x8C08FB1C) + 1;
  v59 = (v58 ^ 0x7A77396D) - 2054633837 + ((2 * v58) & 0xF4EE72DA);
  v60 = (((v59 >> 8) + 778898073 - ((v59 >> 7) & 0xDA1532)) ^ 0x2E6D0A99) + v59;
  return (*(&off_1002D7880 + (((v42 + 1) > 0xF) | (2 * ((v42 + 1) > 0xF)) | v41)))(((2 * v60) & 0xDF8EDF72) + (v60 ^ 0x6FC76FB9) - ((2 * (((2 * v60) & 0xDF8EDF72) + (v60 ^ 0x6FC76FB9)) + 9425420) & 0x36718692) + 2072030287, v43, 931832526, 895355001, 778898073, 336118015, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_10009321C(uint64_t a1, int a2)
{
  v5 = (a2 + 896) | 0x31;
  v58 = STACK[0x334] & 0x8F03B5D8;
  v6 = v3 - 46737156 + ((v5 - (((v3 - 46737156) >> 13) & 0x3AC34) + ((v3 - 46737156) >> 14) - 1800548067) ^ 0x6B5229E5) + 1;
  v7 = (v6 ^ 0x7F8ACF6B) - 2139803499 + ((2 * v6) & 0xFF159ED6);
  v8 = (((v7 >> 2) - ((v7 >> 1) & 0x2C9B4158) - 1773297492) ^ 0x964DA0AC) + v7;
  v9 = v8 - ((2 * v8) & 0xE82BBB8) - 2025759268;
  v10 = ((2 * ((v9 ^ 0x3BAFDDA8) - ((v9 >> 14) ^ 0xEEBF))) & 0x75FFA376) + (((v9 ^ 0x3BAFDDA8) - ((v9 >> 14) ^ 0xEEBF)) ^ 0x3AFFD1BB);
  v11 = ((((v10 - 989843899) >> 4) - (((v10 - 989843899) >> 3) & 0xD19D0BE) - 2037585825) ^ 0x797317A0) + v10;
  v12 = v11 - ((2 * v11 + 167795852) & 0x26EF1F12) - 663241265;
  v13 = ((((v12 >> 13) ^ 0x43DC9) + (v12 ^ 0x87B93405)) ^ 0xDE5BE9BF) + 564401729 + ((2 * (((v12 >> 13) ^ 0x43DC9) + (v12 ^ 0x87B93405))) & 0xBCB7D37E);
  v14 = (((v13 >> 5) - ((v13 >> 4) & 0x3D04726) - 370662509) ^ 0xE9E82393) + v13;
  v15 = v14 - ((2 * v14) & 0xEECA69C8) - 144362268;
  v16 = (((v15 ^ 0xF76534E4) - 799120368) ^ 0x7FFFFF2F) + 2147483627 + ((2 * ((v15 ^ 0xF76534E4) - 799120368)) & 0xFFFFFE5E);
  v17 = v16 + ((((v16 + 230) >> 8) - (((v16 + 230) >> 7) & 0x1255A28) + 143830292) ^ 0xF76D52EB) + 231;
  v18 = ((((((2 * v17) & 0x7177845A) + (v17 ^ 0x38BBC22D) - 951829037) >> 5) - (((((2 * v17) & 0x7177845A) + (v17 ^ 0x38BBC22D) - 951829037) >> 4) & 0x1B3252E) - 1059482985) ^ 0x3F266D68) + ((2 * v17) & 0x7177845A) + (v17 ^ 0x38BBC22D);
  v19 = v18 - ((2 * v18 + 243825576) & 0x2A714068) - 595796472;
  v20 = ((2 * ((v19 ^ 0x1538A034) + 815573086)) & 0xFFEFE6FC) + (((v19 ^ 0x1538A034) + 815573086) ^ 0xFFF7F37E) + 527490;
  v21 = v20 + (((v20 >> 12) - ((v20 >> 11) & 0x158AD4) - 1904556694) ^ 0x71853A95) + 1;
  v22 = (v21 ^ 0xFCD7F77A) + 52955270 + ((2 * v21) & 0xF9AFEEF4);
  v23 = (((v22 >> 5) - ((v22 >> 4) & 0xE08DB36) - 687575653) ^ 0xD7046D9B) + v22;
  v24 = ((((v23 - ((2 * v23) & 0x92E9F352) - 915080791) ^ 0xC974F9A9) - 794593149) ^ 0xFAEBFF77) + 85196937 + ((2 * (((v23 - ((2 * v23) & 0x92E9F352) - 915080791) ^ 0xC974F9A9) - 794593149)) & 0xF5D7FEEE);
  v25 = (((v24 >> 12) - ((v24 >> 11) & 0xA77B2) - 1646969895) ^ 0x9DD53BD9) + v24;
  v26 = (v25 ^ 0xDE9D5B4F) + 560112817 + ((2 * v25) & 0xBD3AB69E);
  v27 = (((v26 >> 1) - (v26 & 0x100954A6) + 134523475) ^ 0x804AA53) + v26;
  v28 = v27 - ((2 * v27) & 0x97D3A060) + 1273614384;
  v29 = (v28 ^ 0x4BE9D030) - 224220493;
  v30 = ((2 * v29) & 0xC87755AE) + (v29 ^ 0x643BAAD7) - 1681631959 + ((((((2 * v29) & 0xC87755AE) + (v29 ^ 0x643BAAD7) - 1681631959) >> 13) - (((((2 * v29) & 0xC87755AE) + (v29 ^ 0x643BAAD7) - 1681631959) >> 12) & 0x8670E) - 1059835001) ^ 0x3F2BCC78) + 1;
  LODWORD(STACK[0x4D0]) = v12;
  v31 = ((((((2 * v30) & 0xEB53FDE6) + (v30 ^ 0xF5A9FEF3) + 173408525) >> 7) - (((((2 * v30) & 0xEB53FDE6) + (v30 ^ 0xF5A9FEF3) + 173408525) >> 6) & 0x39406CA) - 1312160923) ^ 0x4E35FC9A) + ((2 * v30) & 0xEB53FDE6) + (v30 ^ 0xF5A9FEF3);
  v32 = v31 - ((2 * v31 + 346817052) & 0xB437DE58) - 462294982;
  v33 = ((2 * ((v32 ^ 0xDA1BEF2C) + 1148000827)) & 0xCFBECE76) + (((v32 ^ 0xDA1BEF2C) + 1148000827) ^ 0xE7DF673B) + 404789445;
  v34 = v33 + (((v33 >> 15) - ((2 * (v33 >> 15)) & 0x19792) - 430650423) ^ 0x19AB3436) + 1;
  v35 = ((((((2 * v34) & 0xFEDAF772) + (v34 ^ 0x7F6D7BB9) - 2137881529) >> 2) - (((((2 * v34) & 0xFEDAF772) + (v34 ^ 0x7F6D7BB9) - 2137881529) >> 1) & 0x3D9DED14) + 1590621834) ^ 0xA1310975) + ((2 * v34) & 0xFEDAF772) + (v34 ^ 0x7F6D7BB9);
  v36 = v35 - ((2 * v35 + 19204240) & 0xD2216848) - 375179156;
  v37 = ((2 * ((v36 ^ 0x6910B424) - 396739892)) & 0x9EE7EFDE) + (((v36 ^ 0x6910B424) - 396739892) ^ 0x4F73F7EF) - 1333000175;
  v38 = v37 + (((v37 >> 10) - ((v37 >> 9) & 0x591B12) + 812420489) ^ 0xCF937276) + 1;
  LODWORD(STACK[0x2F8]) = v36;
  v39 = (v38 ^ 0x76ED673F) - 1995269951 + ((2 * v38) & 0xEDDACE7E);
  v40 = (((v39 >> 2) - ((v39 >> 1) & 0x74C1919C) - 94320434) ^ 0xFA60C8CE) + v39;
  v41 = v40 - ((2 * v40) & 0xEBD95C0A) + 1978445317;
  v42 = STACK[0x34C];
  LODWORD(STACK[0x508]) = v9;
  v43 = (4 * (LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x448]))) ^ 0xB9DDF9A8;
  v44 = LODWORD(STACK[0x470]) ^ LODWORD(STACK[0x3E0]);
  v45 = v44 ^ LODWORD(STACK[0x510]);
  v46 = LODWORD(STACK[0x358]) ^ 0x945453C8 ^ (((4 * LODWORD(STACK[0x358])) ^ 0xA89A89E0) - 2 * (((4 * LODWORD(STACK[0x358])) ^ 0xA89A89E0) & 0x2345589C ^ (4 * LODWORD(STACK[0x358])) & 8) + 591747222) & v4;
  v47 = v44 ^ LODWORD(STACK[0x3A8]);
  LODWORD(STACK[0x510]) = v46;
  LODWORD(STACK[0x448]) = (v43 - ((2 * v43) & 0x27C3C5A8) - 1813912875) & v4;
  LODWORD(STACK[0x334]) = v47 ^ v46 ^ (((4 * v45) ^ 0xCB95B574) - ((2 * ((4 * v45) ^ 0xCB95B574)) & 0x39ED3DB8) + 485924574) & v4 ^ v2 ^ v15 ^ v28 ^ v41 ^ (((4 * (v28 ^ v15 ^ v41)) ^ 0x25812B44) - 2 * (((4 * (v28 ^ v15 ^ v41)) ^ 0x25812B44) & 0x6D6BF17C ^ (4 * (v28 ^ v15 ^ v41)) & 0x18) - 311692953) & v4 ^ 0x209C7898;
  v48 = LODWORD(STACK[0x4E0]) ^ 4u;
  LODWORD(STACK[0x5B0]) = LODWORD(STACK[0x314]) ^ 0xB5EB8B96;
  LODWORD(STACK[0x39C]) = LODWORD(STACK[0x30C]) ^ 0x50F5A39C;
  LODWORD(STACK[0x390]) = LODWORD(STACK[0x308]) ^ 0xD9330E39;
  v49 = STACK[0xB58];
  v50 = LODWORD(STACK[0x38C]) ^ LODWORD(STACK[0x440]) ^ 0xD996F735;
  LODWORD(STACK[0x3A0]);
  LOBYTE(STACK[0x5B0]);
  LODWORD(STACK[0x528]);
  v51 = (2 * ((STACK[0x588] & 0x4F88CBF2) - ((2 * (STACK[0x588] & 0x4F88CBF2)) & 0x2C090CEC)) - 1408693012) ^ 0xAC090CEC;
  v52 = (v51 - ((2 * v51) & 0x254660A4) + 312684627) ^ 0x5D2BFBA1;
  v53 = (((v52 & STACK[0x39C]) + 1216976213 - ((2 * (v52 & STACK[0x39C])) & 0x91132AAA)) ^ 0x48899555) << LODWORD(STACK[0x380]);
  v54 = (((v52 & STACK[0x390]) - 255555801 - ((2 * (v52 & STACK[0x390])) & 0xE1890E4E)) ^ 0xF0C48727) >> LODWORD(STACK[0x5A8]);
  v55 = ((v54 - 803482823 - ((2 * v54) & 0xA037A672)) ^ 0xD01BD339) + ((v53 + 1826242850 - ((2 * v53) & 0xD9B48244)) ^ 0x6CDA4122);
  v56 = LODWORD(STACK[0x520]) ^ 0x17u;
  *(STACK[0xB50] + 4 * v56) = LODWORD(STACK[0x580]) ^ LODWORD(STACK[0x560]) ^ 0x92129FF2 ^ (v55 - ((2 * v55) & 0x478D1BAC) - 1547268650);
  *(v49 + 4 * v56) = v50 ^ ((word_100260B5A[0] - 17139) - ((2 * (word_100260B5A[0] - 17139)) & 0xB646) + 1570724643);
  return (*(&off_1002D7880 + v5))(2886274284);
}

void sub_1000A4AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x328]) = LODWORD(STACK[0x5B8]) - 1176525010;
  LODWORD(STACK[0x320]) = a72 ^ 0x8D22D9BA;
  LODWORD(STACK[0x324]) = a73 ^ 0x66AF8DD8;
  LODWORD(STACK[0x318]) = a70 ^ (557 * (a74 ^ 0x98)) ^ 0xE5C4869;
  LODWORD(STACK[0x31C]) = a71 ^ 0x941B6443;
  v74 = LODWORD(STACK[0x3A4]);
  JUMPOUT(0x10009BD08);
}

uint64_t sub_1000A4B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  v11 = (a11 - 988);
  v12 = STACK[0xB58];
  v13 = STACK[0xAA8];
  v14 = STACK[0x9E8];
  v15 = STACK[0x940];
  v16 = STACK[0xA98] + (v11 ^ 0xE98507E402D6D723);
  (*(&off_1002D7880 + a11 + 1003))(STACK[0xB50]);
  v17 = (*(&off_1002D7880 + (v11 ^ 0x8C9)))(v12);
  v18 = STACK[0x5C0];
  return sub_1000B8020(v17);
}

void sub_1000A4C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x8B8];
  STACK[0x630] = STACK[0x8B8] + 40;
  v8[13] = 0x4B67BDFCC6533912;
  v8[14] = 0xF669932C7EE11BA4;
  v8[15] = 0x9966CD3811EE45BLL;
  *(v8 + 132) = 0x1DCC6C5F76280D6FLL;
  v9 = STACK[0x940];
  v10 = (LODWORD(STACK[0x85C]) - 216123394);
  LODWORD(STACK[0x68C]) = v10;
  STACK[0xA98] = (v10 | ((v10 < 0x4FEC637B) << 32)) + 0x167AF81BAD3CC503;
  v11 = LODWORD(STACK[0xA74]);
  STACK[0x7C8] = *(a7 + 8 * v7);
  JUMPOUT(0x1000A4CECLL);
}

uint64_t sub_1000A4D90(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a1 + v7 - 1031569259) <= 0x40)
  {
    v9 = 64;
  }

  else
  {
    v9 = a1 + v7 - 1031569259;
  }

  return (*(a7 + 8 * (((((a2 ^ 0x618) - 487) ^ 0x58E) * ((v8 - v7 - a1 + v9) < 0x1F)) ^ a2)))();
}

uint64_t sub_1000A4E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8)
{
  if (a7 <= 0x40)
  {
    v10 = a8;
  }

  else
  {
    v10 = a7;
  }

  return (*(&off_1002D7880 + ((((a5 ^ 0x2FB) - 1179) * (v8 - a6 >= v9 + v10)) ^ a5)))();
}

uint64_t sub_1000A4EA8@<X0>(int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6.i64[0] = 0xBEBEBEBEBEBEBEBELL;
  v6.i64[1] = 0xBEBEBEBEBEBEBEBELL;
  v7.i64[0] = 0xDFDFDFDFDFDFDFDFLL;
  v7.i64[1] = 0xDFDFDFDFDFDFDFDFLL;
  v8 = (a3 + (((a1 - 1541) ^ 0xFFFFFE92) & (v4 + v5)));
  v9 = vaddq_s8(vsubq_s8(v3[1], vandq_s8(vaddq_s8(v3[1], v3[1]), v6)), v7);
  *v8 = vaddq_s8(vsubq_s8(*v3, vandq_s8(vaddq_s8(*v3, *v3), v6)), v7);
  v8[1] = v9;
  return (*(&off_1002D7880 + ((47 * (((a2 + 1) & 0x1FFFFFFE0) == 32)) ^ (a1 - 1828))))();
}

uint64_t sub_1000A4F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v8 = v7 + 1600 + a5 + ((v7 - 468) | 0x271) - 392286800;
  v9 = v8 > 0xEC6E8602;
  if (v8 < 0xEC6E8602)
  {
    v9 = 1;
  }

  return (*(a7 + 8 * ((43 * v9) ^ v7)))();
}

uint64_t sub_1000A4FC4@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = a1 - 1600;
  v8 = v6 < v4;
  v9 = a2 + 1;
  v10 = *(STACK[0x840] + (a2 - 1215618658));
  *(a3 + (v3 - 963672172)) = v10 - ((2 * v10) & 0xBF) - 33;
  if (v8 == v9 + v5 < v4)
  {
    v8 = v9 + v5 < v6;
  }

  return (*(&off_1002D7880 + ((1302 * v8) ^ v7)))();
}

uint64_t sub_1000A5060@<X0>(int a1@<W4>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  v4 = (*(a3 + 68) ^ 0x4B67BDFC) + a1 - 63983053;
  v5 = v4 + ((v3 + 1606542916) & 0xA03E1F5E ^ 0x4B67B5E8) - ((2 * v4) & 0x96CF7BF8);
  *(a3 + 68) = v5;
  return (*(a2 + 8 * ((157 * ((v5 ^ 0x4B67BDFC) < a1 - 63983053)) ^ v3)))();
}

uint64_t sub_1000A5128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x668];
  v9 = STACK[0x630];
  STACK[0x9C8] = *(a7 + 8 * (v7 - 2053));
  v10 = v7 ^ 0xFFFFF7DC;
  STACK[0x6E0] = v9;
  v11 = STACK[0x9E8];
  v12 = &STACK[0xB70] + STACK[0x9E8];
  STACK[0x890] = v12;
  STACK[0x9E8] = v10 + v11 - 4294967208u;
  STACK[0x678] = v8;
  STACK[0x908] = v9;
  STACK[0x800] = v12;
  LODWORD(STACK[0x9D0]) = 488875819;
  STACK[0x770] = v9;
  STACK[0x5E8] = v12;
  LODWORD(v12) = *(v9 + 68);
  LODWORD(v11) = v12 & (((v10 + 684) | 0x88) ^ 0x2C3) ^ 0xEDFD81B1;
  v13 = (2 * v12) & 0x1A ^ (((v10 + 346) | 0x11) - 283);
  *(v9 + (v13 + v11 + 302153331)) = 95;
  v14 = STACK[0x770];
  return (*(a7 + 8 * (v10 ^ 0xFFFFF8B6 ^ (208 * ((-((~(v13 + v11 + 302153275) + v10) ^ (~(v13 + v11 + 302153275) + v10)) | (~(v13 + v11 + 302153275) + v10)) >> 63)))))();
}

uint64_t sub_1000A524C@<X0>(uint64_t a1@<X8>)
{
  v6 = v5 - 1354;
  *(a1 + (v2 + v3)) = *(v4 + v1 - 1215618658) - (((v6 ^ 0xD0) + 46) & (2 * *(v4 + v1 - 1215618658))) - 33;
  return (*(&off_1002D7880 + (v6 ^ 0x50C ^ (198 * (((v6 | ~(v3 + v2 + 1)) & (v3 + v2 + 1 - v6) | v6 & ~(v3 + v2 + 1)) >> 31)))))();
}

uint64_t sub_1000A52D4(int a1, int a2)
{
  v5 = v4 + v2 + 170930980;
  v6 = ((a1 + LODWORD(STACK[0x5B8]) + 574804294) | (((a1 + LODWORD(STACK[0x5B8]) + 574804294) < 0x2242DB28) << 32)) + 269679086;
  v7 = (v5 < 0x3255D512) ^ (v6 < 0x3255D512);
  v8 = v6 <= v5;
  if (v7)
  {
    v8 = v5 < 0x3255D512;
  }

  return (*(v3 + 8 * (a2 ^ (39 * v8))))(v4 - 481527337 + ((a2 + 1012) | 0x22u));
}

uint64_t sub_1000A53BC()
{
  v2 = STACK[0x98C];
  LODWORD(STACK[0x5A0]) = STACK[0x98C];
  v3 = (*(v0 + 8 * (v1 + 211)))((v1 - 654643532 + 230 * (v1 ^ 0x7AE) - 3810) ^ v2, 0x100004077774924);
  STACK[0x608] = v3;
  return (*(v0 + 8 * ((75 * (v3 == 0)) ^ v1)))();
}

uint64_t sub_1000A54E8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v9 = v2 < a2;
  *(v4 + v7 - 0x5D58DDA6958C2EFELL) = (~*(v3 + a1 - 0x47F1E2196E88255) + 2 * *(v3 + a1 - 0x47F1E2196E88255)) ^ 0x80;
  if (v9 == v5 - 0x55D70CD101A533B6 < a2)
  {
    v9 = v5 - 0x55D70CD101A533B6 < v2;
  }

  return (*(v6 + 8 * ((114 * v9) ^ v8)))();
}

uint64_t sub_1000A559C()
{
  LODWORD(STACK[0x590]) = STACK[0x75C];
  LODWORD(STACK[0x598]) = *(v2 + 92);
  v3 = STACK[0x660];
  STACK[0x5A8] = LODWORD(STACK[0x8DC]);
  return (*(v1 + 8 * ((216 * (dword_100313AA0 == ((v0 + 572747661) & 0xDDDC8FED) + 321649805)) ^ v0)))();
}

uint64_t sub_1000A576C()
{
  v2 = (*(v0 + 8 * (v1 + 576)))(LODWORD(STACK[0xA1C]));
  LODWORD(STACK[0x588]) = v2;
  return (*(v0 + 8 * (((v2 == 0) * ((1034 * (v1 ^ 0x623)) ^ (13 * (v1 ^ 0x62E)) ^ 0x8B9)) ^ v1)))();
}

uint64_t sub_1000A5DF0()
{
  v3 = &STACK[0xB70] + v1;
  v4 = (v0 + 1861765643) & 0x22C9AFFF;
  *v3 = LODWORD(STACK[0x590]) ^ 0xFC922876;
  *(v3 + 2) = (v4 + 4684) ^ LODWORD(STACK[0x598]);
  *(&STACK[0xB70] + v1 + 6) = *(v2 + 17);
  return (*(&off_1002D7880 + ((501 * ((((v4 - 1225) | 0x710u) ^ 0x722) == 48)) ^ v4)))();
}

uint64_t sub_1000A5F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = v10 < v11;
  *(v14 + v9 - 0x795F78B698AFA51BLL) = ((v7 + 72) | 0x40) + *(v13 + v15 - 0x7CE2336BF8820CE4) + 48;
  v17 = a1 - 0x299D583DB06AC7D1;
  v18 = a1 + 1;
  v19 = v16 ^ (v17 < v8);
  v20 = v17 < v10;
  if (!v19)
  {
    v16 = v20;
  }

  return (*(a7 + 8 * ((!v16 * v12) ^ v7)))(v18);
}

uint64_t sub_1000A5FE8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X6>, int a3@<W8>)
{
  *(a1 + 120) = ((((v3 - 1096528843) & 0x415BB593) + 899) ^ 0xC98EDC0E) + STACK[0x5A8];
  STACK[0x7C0] = 16;
  v6 = (*(a2 + 8 * (v3 + 1449)))((a3 - 321650294), 32);
  v7 = STACK[0x7C0];
  STACK[0x9E8] = v4;
  v8 = v7 == 16 && v6 == 0;
  return (*(a2 + 8 * ((1978 * v8) ^ v3)))();
}

uint64_t sub_1000A6098()
{
  v2 = (*(v0 + 96) >> 1) & 1;
  if (LODWORD(STACK[0x89C]) != 402993540)
  {
    v2 = 1;
  }

  return (*(&off_1002D7880 + ((v2 * (((v1 + 432) | 0x30) - 1612)) ^ v1)))();
}

void sub_1000A6148()
{
  (*(&off_1002D7880 + v1 + 84))(v0);
  STACK[0x608] = 0;
  (*(&off_1002D7880 + v1 + 84))(STACK[0x5B0] - 0x99187B47AA1D2C2);
  JUMPOUT(0x10007586CLL);
}

uint64_t sub_1000A6558@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v10 = v3 > v5;
  *(v7 + a1 - 0x7B2210F02542EB3ELL) = 89 * *(((v2 + 1795946283) & 0x94F409DC) + v6 + v9 - 0x6A142AA32280172ELL) + 122;
  if (v10 == v8 - 0xCD069EDE91F6962 < a2)
  {
    v10 = v8 - 0xCD069EDE91F6962 < v4;
  }

  return (*(&off_1002D7880 + (((4 * !v10) | (32 * !v10)) ^ v2)))();
}

uint64_t sub_1000A6618@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  (*(a1 + 8 * (a2 ^ 0xBE)))();
  v3 = STACK[0x660];
  v4 = STACK[0x640];
  v5 = STACK[0xA10];
  STACK[0x9B0] = STACK[0xA10];
  STACK[0x5F8] = &STACK[0x75C];
  STACK[0x998] = v3;
  STACK[0xA90] = &STACK[0x8DC];
  STACK[0x880] = v4;
  STACK[0x850] = &STACK[0x89C];
  LODWORD(STACK[0x9D4]) = v2;
  return sub_1000E991C(&off_1002D7880, v5);
}

uint64_t sub_1000A6678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  v14 = ((*(qword_100314AA8 + (dword_100314CB0 & (v5 + ((v12 + 986) | 0x41u) - 1361))) ^ (a3 + a1 + 2078605729)) & 0x7FFFFFFF) * a5;
  v15 = (v14 ^ HIWORD(v14)) * a5;
  *(a3 + a1 - 0x337C41D2841AFE5FLL) = *(v7 + (v15 >> 24)) ^ *(a2 + v13 - 0x600602A875D4D0EFLL) ^ *((v15 >> 24) + v8 + 3) ^ *(v6 + (v15 >> 24)) ^ v15 ^ (-101 * BYTE3(v15));
  if (v10 < v9 != a4 - 0x77E8A8D8FCE19767 < v9)
  {
    v16 = v10 < v9;
  }

  else
  {
    v16 = a4 - 0x77E8A8D8FCE19767 < v10;
  }

  return (*(&off_1002D7880 + ((v16 * v11) ^ v12)))();
}

uint64_t sub_1000A677C@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v2 = (a2 - 763) | 0x80;
  v3 = LODWORD(STACK[0x590]) - 527094574 + v2 + 609;
  v4 = (((v2 ^ 0x297) + 258) ^ 0xE0952CD2) + LODWORD(STACK[0x590]);
  v5 = v4 < 4 * (v2 ^ 0x297u) - 463112818;
  v6 = v4 >= v3;
  if (v3 < 0xE4657DA2 != v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return (*(a1 + 8 * ((1940 * v7) ^ v2)))();
}

uint64_t sub_1000A68A4@<X0>(uint64_t a1@<X6>, unint64_t a2@<X8>)
{
  v4 = *(a2 + 64);
  v3 = *(a2 + 68);
  *(a2 + 56) = ((8 * v3) ^ 0xE0) - ((2 * ((8 * v3) ^ 0xE0)) & 0xBF) - 33;
  *(a2 + 57) = (v3 >> 5) ^ 0x30;
  *(a2 + 58) = (v3 >> (v2 + 125)) ^ 0xE2;
  *(a2 + 59) = (v3 >> 21) ^ 0x84;
  HIDWORD(v5) = v4 ^ 0x6533912;
  LODWORD(v5) = v3 ^ 0x40000000;
  *(a2 + 60) = ((v5 >> 29) - ((2 * (v5 >> 29)) & 0xC0) - 32) ^ 0x3F;
  *(a2 + 61) = (v4 >> 5) ^ 0x17;
  *(a2 + 62) = (v4 >> 13) ^ 0x46;
  return sub_1000E5268(a1, a2);
}

void sub_1000A6A3C(int a1@<W8>)
{
  v3 = LODWORD(STACK[0x974]) + 462001702 + ((a1 + 1343) | 0x10);
  v4 = 1407122579 * (((v2 - 192) & 0xD1ED804E | ~((v2 - 192) | 0xD1ED804E)) ^ 0x43279DBF);
  *(v2 - 192) = STACK[0x570];
  *(v2 - 184) = v4 + a1 + 529;
  *(v2 - 176) = v3 ^ v4;
  (*(v1 + 8 * (a1 + 1469)))(v2 - 192);
  v5 = *(v2 - 180);
  JUMPOUT(0x10007586CLL);
}

uint64_t sub_1000A6B14@<X0>(int a1@<W8>)
{
  if (*(STACK[0x570] + 2) == ((a1 - 115) ^ 0x15))
  {
    v3 = v1;
  }

  else
  {
    v3 = -42018;
  }

  return (*(v2 + 8 * ((721 * (v3 == 0)) ^ a1)))();
}

uint64_t sub_1000A6B5C@<X0>(int a1@<W8>)
{
  v3 = (((*(STACK[0x570] + 3) - ((2 * *(STACK[0x570] + 3)) & 0x34)) << 8) + 6656) ^ 0x1A00;
  v4 = (v3 - ((v3 << (v1 ^ 0x15)) & (((a1 + 9) | 0x404) ^ 0x2A94)) - 26641) ^ 0xFFFF97EF | (*(STACK[0x570] + 4) - 2 * (*(STACK[0x570] + 4) & 7) + 29703) ^ 0x7407;
  v5 = (v4 - ((2 * v4) & 0x398C) + 7366) ^ 0x1CC6;
  v6 = ((2 * v5) & 0x1F7FE) + (v5 ^ 0xFEC5FBFF) - 275314883;
  v7 = LODWORD(STACK[0x974]) - 1043471416;
  v8 = (v7 < 0xEE5D033C) ^ (v6 < 0xEE5D033C);
  v9 = v6 < v7;
  if (v8)
  {
    v9 = v7 < 0xEE5D033C;
  }

  return (*(v2 + 8 * ((720 * v9) ^ a1)))(4294925278);
}

uint64_t sub_1000A6C6C()
{
  v4 = STACK[0x570] + 5;
  v5 = 1407122579 * ((2 * ((v3 - 192) & 0x358466C0) - (v3 - 192) + 1249614137) ^ 0x274E7B37);
  *(v3 - 176) = (v1 + 1230160303) ^ v5;
  *(v3 - 184) = v5 + v0 + 66;
  *(v3 - 192) = v4;
  (*(v2 + 8 * (v0 + 1006)))(v3 - 192);
  return (*(v2 + 8 * (((*(v3 - 180) == 0) * ((v0 + 896) ^ 0xBE7)) ^ v0)))();
}

uint64_t sub_1000A6D78()
{
  v5 = (((v2 + 151059305) < 0x7C6F762) << 32) + v2 + STACK[0x570] + 20579335;
  v6 = (((v0 + 2066) ^ 0xF914) + ((*v5 - ((2 * *v5) & 0xC0)) << 8) - 4352) ^ 0xE000;
  LOWORD(v5) = (v6 - ((2 * v6) & 0x4400) - 23820) ^ 0xA2F4 | (*(v5 + 1) - ((2 * *(v5 + 1)) & 0xC) + 12550) ^ 0x3106;
  LODWORD(v5) = (v5 - ((2 * v5) & 0xEF94) + 30666) ^ 0x77CA;
  LODWORD(STACK[0x5B8]) = v5 ^ 0x7BBAFEEE;
  v7 = ((v1 + 1526) & (2 * v5)) + (v5 ^ 0x7BBAFEEE);
  v8 = v7 + 1669843090 < v3 - 1296848884;
  if ((v3 - 1296848884) < 0xDF42C780 != v7 < 0x7BBAFEEE)
  {
    v8 = (v3 - 1296848884) < 0xDF42C780;
  }

  return (*(v4 + 8 * ((828 * v8) ^ (v0 + 133))))();
}

uint64_t sub_1000A6EC8@<X0>(int a1@<W8>)
{
  v5 = v1 ^ 0xAC8;
  if (STACK[0x570] + (a1 + v3 + 3))
  {
    v6 = v2 - 177345632 == ((v5 + 2042713464) & 0x863EAFBF) + 1898504826;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  return (*(v4 + 8 * ((v7 * (((v5 + 888720637) & 0xCB0737BF) - 1454)) ^ v5)))(4294925273);
}

uint64_t sub_1000A6F60()
{
  v3 = (((3 * (v2 ^ 0x786)) ^ 0xF9D4FEBC) & (2 * (v0 - 2075852526))) + ((v0 - 2075852526) & 0xFFFFFFF0 ^ 0x7CEA7F7F);
  LODWORD(STACK[0x684]) = v3 - 1500918259;
  v4 = (*(v1 + 8 * (v2 ^ 0xFE0)))(v3 - 2095742808, 0x100004077774924);
  STACK[0x9B8] = v4;
  return (*(v1 + 8 * ((43 * (v4 == 0)) ^ v2)))(4294925268);
}

uint64_t sub_1000A7004@<X0>(uint64_t a1@<X8>)
{
  *a1 = 513;
  *(a1 + 2) = ~((v4 - ((((v3 - 118544478) & 0x710DFFE) + 2 * v4 - 1756) & 0xFFFFFE20) + 32685) >> 8);
  *(a1 + 3) = (v4 - ((((v3 - 94) & 0xFE) + 2 * v4 + 36) & 0x20) - 83) ^ 0x1C;
  *(a1 + 4) = ((v4 - v1 - ((((v7 - 11268) & 0x2C7E ^ 0xF6EA) + 2 * (v4 - v1)) & 0x9EB6) - 12582) >> 8) ^ 0x4F;
  *(a1 + 5) = (v4 - v1 - ((((v7 - 4) & 0x7E ^ 0xEA) + 2 * (v4 - v1)) & 0xB6) - 38) ^ 0x5B;
  return (*(v6 + 8 * (v3 ^ (53 * (((v1 + 1416315573) | ((v5 < v2 + 2068) << 32)) == 3492168099)))))(0x5CF4F6689F0862ELL);
}

uint64_t sub_1000A7134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  v10 = v4 < v3;
  *(v7 + a3 - 0x1D1F89BCE3A22F3BLL) = *(33 * (v9 ^ 0x63u) + v6 + v8 - 0x35AC183537683981);
  v11 = a1 - 0x5CF4F65B9CA448ALL;
  v12 = a1 + 1;
  v13 = v10 ^ (v11 < v3);
  v14 = v11 < v4;
  if (!v13)
  {
    v10 = v14;
  }

  return (*(a2 + 8 * ((!v10 * v5) ^ v9)))(v12);
}

uint64_t sub_1000A73F0@<X0>(int a1@<W1>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  v7 = (a3 + v4 + v5 + LODWORD(STACK[0x5B8]) + v6);
  *v7 = 0u;
  v7[1] = 0u;
  return (*(a2 + 8 * ((((v3 & 0xFFFFFFFFFFFFFFE0) == 32) * (a1 ^ 0xDD5)) ^ (a1 - 1134))))((a1 - 1134), a1 ^ 0xDD5u, v7 + 2, (v3 & 0xFFFFFFFFFFFFFFE0) - 64);
}

uint64_t sub_1000A744C(int a1, int a2, __n128 *a3, uint64_t a4, __n128 a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a3 = a5;
  a3[1] = a5;
  return (*(a8 + 8 * (((a4 == 0) * a2) ^ a1)))();
}

uint64_t sub_1000A7578(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x598]) = 0;
  LODWORD(STACK[0xA2C]) = ((v8 - 2075852526 + v7 + 6) ^ 0xEF13EFFB) + 1073591782 + (((v8 - 2075852526 + v7 + 6) << (a1 + 18)) & 0xDE27DFF6);
  LODWORD(STACK[0x590]) = a5;
  LODWORD(STACK[0x5A8]) = a5 - 63983053;
  STACK[0x588] = v9;
  LODWORD(STACK[0x5A0]) = -321648226;
  STACK[0x5B8] = &STACK[0xB70] + v9;
  LODWORD(STACK[0x5B0]) = 1261565753;
  return (*(a7 + 8 * ((198 * (dword_100313AA0 == ((((a1 + 545) | 9) - 433) ^ 0x17B) + 321649507)) ^ ((a1 + 545) | 9))))();
}

uint64_t sub_1000AB124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (*(a7 + 8 * (v7 ^ 0xA16)))(0, &STACK[0x8A0]);
  v9 = ((2 * v8) & 0xF6F6FBEC) + (((v7 ^ 0x671) - 75793955) ^ v8) == -75792906;
  return (*(&off_1002D7880 + (((8 * v9) | (16 * v9)) ^ v7)))();
}

uint64_t sub_1000AB2F4()
{
  (*(v0 + 8 * (v1 + 73)))(LODWORD(STACK[0x978]));
  v2 = STACK[0x5B8];
  return (*(&off_1002D7880 + (((dword_100313AA0 == 321650294) * ((((v1 - 1019) ^ 0xC0D) - 1281) ^ 0x33A)) ^ (v1 - 1019))))(4294924396);
}

uint64_t sub_1000AB4C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v13 = v10 < v11;
  *(a4 + v12 + a2) = *(v5 + v7 + a1);
  if (v13 == v6 + v8 < v11)
  {
    v13 = v6 + v8 < v10;
  }

  return (*(a3 + 8 * ((!v13 * v9) ^ v4)))();
}

uint64_t sub_1000AB528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a3 + 2004) = STACK[0x5A8];
  STACK[0x7E8] = 2008;
  v9 = STACK[0x5B8];
  v10 = (*(a7 + 8 * (v8 ^ 0xAEF)))((v8 ^ 0xA8Au ^ LODWORD(STACK[0x5A0])) + v7, 34);
  v11 = STACK[0x5B8];
  return (*(&off_1002D7880 + ((42 * (v10 != ((v8 + 269060353) & 0xEFF677F3 ^ 0x393))) ^ v8)))();
}

uint64_t sub_1000AB5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = 11 * (v10 ^ 0x32F);
  v12 = *(a3 + 2004) - LODWORD(STACK[0x590]);
  v13 = v12 == (v11 ^ 0xFC2FBA27);
  v14 = v12 != (v11 ^ 0xFC2FBA27);
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = 4294925247;
  }

  if (v9 == v7)
  {
    v14 = 1;
  }

  return (*(a7 + 8 * ((v14 * v8) ^ v10)))(v15);
}

uint64_t sub_1000AB680@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v13 = v11 < v7;
  *(a5 + v10 + a1) = *(v5 + a2 + v9);
  v14 = (((v12 + 1149) | 4u) ^ a3) + v6;
  v15 = v13 ^ (v14 < v7);
  v16 = v14 < v11;
  if (!v15)
  {
    v13 = v16;
  }

  return (*(a4 + 8 * ((!v13 * v8) ^ v12)))(0);
}

uint64_t sub_1000AB8A0@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v2 = a2 ^ 0x815 ^ (((*(STACK[0x940] + 2) - a2) | (a2 - *(STACK[0x940] + 2))) >> 7);
  LODWORD(STACK[0x590]) = STACK[0x78C];
  v3 = STACK[0x5C0];
  return (*(a1 + 8 * (a2 ^ 0x93 ^ (457 * ((v2 & 1) == 0)))))();
}

uint64_t sub_1000AB9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (*(a7 + 8 * (v7 + 742)))(16, 0x100004077774924);
  STACK[0xA48] = v8;
  v9 = (*(&off_1002D7880 + (v7 ^ 0xDEA)))(16, 0x100004077774924);
  STACK[0x9A8] = v9;
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  return (*(&off_1002D7880 + ((v11 * ((v7 ^ 0x345) + ((v7 + 1565413467) & 0xA2B1AB7F) - 2105)) ^ v7)))();
}

uint64_t sub_1000ABAFC@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 8 * v5);
  v8 = 1686848693 * ((((v6 - 192) | 0xD82DA7D6) - ((v6 - 192) & 0xD82DA7D6)) ^ 0x464021CA);
  *(v6 - 176) = v4;
  *(v6 - 192) = a2;
  *(v6 - 168) = v3 - v8 - 1242;
  *(v6 - 164) = v2 - v8 - ((2 * v2 - 873342870) & 0xE22835F4) - 687012049;
  (*(a1 + 8 * (v3 + 60)))(v6 - 192);
  v9 = STACK[0x5C0];
  return v7(*(v6 - 184));
}

void sub_1000ABBEC()
{
  v0 = STACK[0xA38];
  v1 = STACK[0x8C0];
  JUMPOUT(0x1000AAF28);
}

uint64_t sub_1000ABC98()
{
  v1 = LODWORD(STACK[0x87C]) - LODWORD(STACK[0x6AC]) - 2 * ((LODWORD(STACK[0x87C]) - LODWORD(STACK[0x6AC]) + 137166994) & 0x15124A1D ^ (LODWORD(STACK[0x87C]) - LODWORD(STACK[0x6AC])) & 1) - 1656796498;
  LODWORD(STACK[0x614]) = v1;
  v2 = (*(&off_1002D7880 + (v0 + 1127)))(v1 ^ 0x95124A1C, 0x100004077774924);
  STACK[0x698] = v2;
  return (*(&off_1002D7880 + ((15 * (v2 != 0)) ^ v0)))();
}

uint64_t sub_1000ABDDC(_BYTE *a1)
{
  v5 = v3 < (v4 ^ (v1 + 614));
  *a1 = 3 * *STACK[0x618] + 33;
  if (v5 == v1 > 0x71435B23)
  {
    v5 = v3 > 0x71435B23;
  }

  return (*(&off_1002D7880 + ((515 * v5) ^ (v2 - 1026))))();
}

uint64_t sub_1000ABF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x860] = 1;
  v8 = (*(a7 + 8 * (v7 ^ 0xDCE)))(0, "systemgroup.com.apple.pisco.suinfo", &STACK[0x860]) != 0;
  return (*(&off_1002D7880 + ((v8 * ((v7 + 947813913) & 0xC7817F3E ^ 0x307)) | v7)))(4294924388);
}

uint64_t sub_1000ABFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (*(a7 + 8 * (v8 + 997)))(v7);
  v10 = (*(&off_1002D7880 + v8 + 1050))(((2 * v9) & 0xFBDBDFFD7ED7BF76) + (v9 ^ 0xFDEDEFFEBF6BDFBBLL) + 0x212100140942062, 0x100004077774924) == 0;
  return (*(&off_1002D7880 + ((v10 * ((v8 ^ 0xDE) + v8 - 518 - 1715)) ^ v8)))();
}

uint64_t sub_1000AC0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x5B8] = v7;
  LODWORD(STACK[0x5C0]) = (*(a7 + 8 * (v9 ^ 0xA0E)))(0);
  return (*(&off_1002D7880 + ((212 * (v8 + 0x21210016475694FLL != ((2 * v9) ^ 0x23E14DB8))) ^ v9)))();
}

uint64_t sub_1000AC14C@<X0>(uint64_t a1@<X1>, unint64_t a2@<X8>)
{
  *(v4 + v7 - 0x4EFEE7B4AA05C992) = *(v3 + v6 - 0x18B85973ECEEB500);
  v10 = v5 - 0x1C564575CF59A21ELL;
  v11 = (a2 < v9) ^ (v10 < v9);
  v12 = v10 < a2;
  if (v11)
  {
    v12 = a2 < v9;
  }

  return (*(a1 + 8 * ((v12 * v2) ^ v8)))();
}

uint64_t sub_1000AC1F4(uint64_t a1, uint64_t a2)
{
  *(v3 + v5 + v2) = 0x7972617262694C2FLL;
  *(v4 + v5 + v2 + 8) = 0;
  v7 = (*(a2 + 8 * (v6 + 2043)))(v3, 493);
  return (*(&off_1002D7880 + ((782 * (((2 * v7) & 0x6B55FFB0) + (v7 ^ 0xB5AAFFD8) == ((v6 + 235) | 0x18) - 1247084994)) ^ v6)))();
}

uint64_t sub_1000AC2D8()
{
  qmemcpy(v3, "/ProvenanceV2", 13);
  *(v1 + v5 + v4 + 21) = 0;
  v7 = (*(v0 + 8 * (v6 + 1784)))(v2, 493);
  return (*(&off_1002D7880 + ((1035 * (((((v6 - 145) | 0x4E4) ^ 0xFFDDD376) & (2 * v7)) + (v7 ^ 0xFFEEEB4D) == -1119412)) ^ v6)))();
}

uint64_t sub_1000AC3E8()
{
  *v1 = 1668509743;
  *(v1 + 4) = 26926;
  *(v1 + 6) = 100;
  *(v4 + 28) = 0;
  *(v2 + STACK[0x5B8]) = 0;
  v6 = *(v0 + 8 * (v5 + 619));
  v7 = v0;
  v6(LODWORD(STACK[0x5C0]));
  (*(v7 + 8 * (v5 + 636)))(v3);
  v6(18);
  v8 = (*(v7 + 8 * (v5 ^ 0xD82)))(v2, 289);
  return (*(v7 + 8 * (v5 | (2 * ((((2 * v8) & 0xFB1BFDFE) + (v8 ^ 0xFD8DFEFF) - 2106457855) <= ((((v5 - 2052339225) & 0x7A5430BF) + 28) ^ 0xFFFFFF50))))))();
}

uint64_t sub_1000AC564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = ((2 * *(v7 + 3)) & 0xFF03) + (*(v7 + 3) ^ 0x7EEEAB81);
  v11 = v10 - 572555264;
  v12 = v8 - v10;
  LODWORD(STACK[0xA74]) = ((v9 + 58) | 0x205) + v12 + 2129569729;
  LODWORD(STACK[0x85C]) = v11;
  return (*(a7 + 8 * ((255 * (((v12 + 1) & (v9 - 351)) != ((2 * (v12 + 1)) & 0x16))) ^ v9)))();
}

uint64_t sub_1000AC5F0(unint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(STACK[0x8F8] + 8);
  v10 = *STACK[0x8B0];
  STACK[0x790] = a3;
  STACK[0xA30] = a1;
  v11 = STACK[0x5B8];
  STACK[0x930] = STACK[0x5B8] + 510;
  STACK[0xAA0] = v11 + 528;
  LODWORD(STACK[0x624]) = -310072744;
  STACK[0x5B0] = v8 + 4;
  v13 = v8 != -4 || a2 == ((v7 - 575589306) & 0x224EC99D) + 1557015024;
  return (*(a7 + 8 * ((108 * v13) ^ v7)))();
}

uint64_t sub_1000AC688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v9 = v8 + 1384;
  v10 = ((v8 + 1384) ^ 0x665) + 245;
  v12 = a6 == 864389837 || v7 != 0;
  return (*(a7 + 8 * (((v10 ^ 0x6B) * v12) ^ v9)))();
}

uint64_t sub_1000AC6C8(int a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x598]) = a1;
  v7 = (v6 - 2112432797) & 0x7DE92EBD;
  v8 = (a6 + 555452657);
  LODWORD(STACK[0x590]) = a2;
  v9 = (a6 + a2 - 809846284);
  v10 = (a6 + a2 - 703456886);
  LODWORD(STACK[0x5A8]) = v7 ^ 0x6665CB6D;
  v11 = qword_100314AA8;
  v12 = dword_100314CB0 & 0x701E2430;
  LODWORD(STACK[0x580]) = a6;
  STACK[0x5A0] = (a3 - a6);
  v14 = v8 > 0x54A113BD && ((v7 ^ 0x378u) - 1482) + 1419841987 >= v8;
  return (*(&off_1002D7880 + ((v14 | (2 * v14)) ^ v7)))(v9, v10, 44, v11, v12);
}

uint64_t sub_1000AC80C(uint64_t a1, uint64_t a2, int a3)
{
  v10 = *(STACK[0x5B0] + STACK[0x5A0] + v4);
  *(STACK[0x5B8] + v4) = (v10 - ((v10 << (((v7 - 103) ^ 0x95) & 0xF7)) & 0x3E) - 97) ^ *(v3 + v4) ^ v8;
  return (*(&off_1002D7880 + (((v5 + v4 + 2819 == ((((v7 - 359) | 8) + 1124) | v6) + v5 + ((((v7 - 359) | 8) - 11) | v9)) * a3) ^ ((v7 - 359) | 8))))();
}

uint64_t sub_1000ACA00()
{
  v2 = LODWORD(STACK[0x590]) + LODWORD(STACK[0x580]) - 253468204;
  v3 = &STACK[0xB70] + v0 + 383;
  STACK[0x9E8] = ((v1 - 1834) ^ 0x45ALL) + STACK[0x588];
  v4 = *(&off_1002D7880 + v1 + 300);
  STACK[0x5B0] = &STACK[0xB70] + v0 + 319;
  v4(&unk_10025C490);
  v5 = *(&off_1002D7880 + (v1 ^ 0xF34));
  STACK[0x5A8] = v3;
  v6 = v5(&unk_1002832C0, v3, 64);
  return (*(&off_1002D7880 + (((v1 - 1858) * ((v2 + 2127030238) > 0xF7)) | v1)))(v6);
}

uint64_t sub_1000ACB34()
{
  v4 = (v3 + 8) | 1;
  (*(v0 + 8 * (v3 ^ 0xC2F)))(LODWORD(STACK[0x5C0]));
  (*(&off_1002D7880 + (v3 ^ 0xC10)))(v2);
  (*(&off_1002D7880 + (v4 ^ 0xCE9)))(v1);
  return (*(&off_1002D7880 + ((67 * ((((v4 + 815) ^ (STACK[0x9B8] == 0)) & 1) == 0)) ^ (v4 + 815))))(4294924388);
}

uint64_t sub_1000AD1B4@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v3 = STACK[0xA48];
  v4 = v2 - 1545 + STACK[0xA98] - 0x167AF81BFD292A0FLL;
  STACK[0x9E8] += 16;
  return (*(a1 + 8 * ((4058 * (((a2 + 1390537142 + ((v2 - 302108987) & 0xBF1FDFED)) & 0xF) == ((2 * (a2 + 1390537142 + ((v2 - 302108987) & 0xBF1FDFED))) & 0x10))) ^ v2)))();
}

uint64_t sub_1000AD244()
{
  v3 = v2 ^ 0xAD1E16E8;
  *(&STACK[0xB70] + v0) = xmmword_1002597A0;
  v4 = -1063179407 * ((v1 ^ *(qword_100314AA8 + (dword_100314CB0 & (v3 + 848515859)))) & 0x7FFFFFFF);
  *(&STACK[0x15E0] + STACK[0xAA8]) = byte_10025D340[16 * (((v4 ^ HIWORD(v4)) * (((v3 + 366) | 0x4A8) ^ 0xC0A12DCA)) >> 24)] ^ *v1 ^ (113 * (v4 ^ BYTE2(v4)));
  return (*(&off_1002D7880 + v3))();
}

uint64_t sub_1000AD368(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  STACK[0xAA8] = a1 + 32;
  STACK[0xB40] = v5;
  STACK[0xB68] = v6;
  STACK[0xB60] = v5;
  STACK[0xB48] = v5;
  return (*(&off_1002D7880 + (a4 ^ (311 * (v4 == v5)))))();
}

uint64_t sub_1000AD3B8@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  v5 = &STACK[0x15E0] + a2;
  *v5 = *v2;
  *(v5 + 1) = *(v2 + 1);
  *(v5 + 9) = *(v2 + 9);
  *(v5 + 13) = *(v2 + 13);
  v5[15] = v2[15];
  STACK[0x5B8] = &STACK[0x15E0] + a2;
  if (v3)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  return (*(a1 + 8 * ((v7 * ((((v4 + 189) | 0x618) - 861) ^ (v4 + 1336))) ^ v4)))();
}

uint64_t sub_1000AD428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (v8)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  v12 = *(a7 + 8 * ((v11 * ((((v9 + 189) | 0x618) - 861) ^ (v9 + 1336))) ^ v9));
  STACK[0x5B8] = v7;
  return v12();
}

uint64_t sub_1000AD494@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  LODWORD(STACK[0x5B0]) = v3;
  LODWORD(STACK[0x4B0]) = v2;
  v4 = (a2 - 485) | 0x65;
  v5 = (v4 + 1611659870) & 0x9FF0076D;
  STACK[0xB50] = 0;
  v6 = *(a1 + 8 * (v4 + 974));
  v7 = v6(1032);
  STACK[0xB50] = v7;
  v8 = v6(1028);
  STACK[0xB58] = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  LODWORD(STACK[0x5A8]) = v5;
  return (*(&off_1002D7880 + ((v11 * ((v5 - 1161) ^ (v4 - 988))) ^ v4)))(v8, v9);
}

uint64_t sub_1000B8020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0xAA8] = v9 - 32;
  STACK[0x9E8] = (v8 - 514) + v7 - 1448;
  return sub_1000BE0A4(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1000B8050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v77 = v76 ^ 0x12;
  v78 = STACK[0x5A0];
  if (STACK[0x5A0])
  {
    v79 = STACK[0x308];
  }

  else
  {
    v79 = STACK[0x310];
  }

  if (v78)
  {
    v80 = STACK[0x328];
  }

  else
  {
    v80 = STACK[0x334];
  }

  if (v78)
  {
    v81 = STACK[0x304];
  }

  else
  {
    v81 = STACK[0x30C];
  }

  v82 = STACK[0x454];
  if ((v78 & 1) == 0)
  {
    v82 = STACK[0x358];
  }

  LODWORD(STACK[0x440]) = v82;
  v83 = STACK[0x490];
  if ((v78 & 1) == 0)
  {
    v83 = STACK[0x338];
  }

  LODWORD(STACK[0x5A8]) = v83;
  v84 = (v78 & 2) == 0;
  v85 = STACK[0x424];
  if (!v84)
  {
    v85 = STACK[0x420];
  }

  LODWORD(STACK[0x220]) = v85;
  v86 = STACK[0x3FC];
  if (!v84)
  {
    v86 = STACK[0x3F8];
  }

  LODWORD(STACK[0x338]) = v86;
  v87 = STACK[0x3F4];
  if (v84)
  {
    v87 = a74;
  }

  LODWORD(STACK[0x334]) = v87;
  v88 = STACK[0x3A8];
  if (!v84)
  {
    v88 = STACK[0x3A4];
  }

  LODWORD(STACK[0x490]) = v88;
  v89 = STACK[0x3E8];
  if (v84)
  {
    v89 = STACK[0x3E0];
  }

  LODWORD(STACK[0x358]) = v89;
  v90 = STACK[0x3D8];
  if (!v84)
  {
    v90 = STACK[0x3C8];
  }

  LODWORD(STACK[0x454]) = v90;
  v91 = STACK[0x3A0];
  if (v84)
  {
    v91 = STACK[0x39C];
  }

  LODWORD(STACK[0x3A8]) = v91;
  v92 = STACK[0x3C4];
  if (!v84)
  {
    v92 = STACK[0x3B0];
  }

  LODWORD(STACK[0x3E0]) = v92;
  v93 = LODWORD(STACK[0x20C]) ^ 0x70254132;
  LODWORD(STACK[0x3C4]) = LODWORD(STACK[0x37C]) ^ 0x3FFDB7F7;
  v94 = STACK[0x280] & 0xE71B7B9A;
  LODWORD(STACK[0x3F4]) = v79;
  LODWORD(STACK[0x3E8]) = v80;
  if (v84)
  {
    v95 = v79;
  }

  else
  {
    v95 = v80;
  }

  LODWORD(STACK[0x280]) = v95;
  LODWORD(STACK[0x328]) = a75 + v94;
  v96 = STACK[0x428];
  LODWORD(STACK[0x3F8]) = v81;
  if (!v84)
  {
    v96 = v81;
  }

  LODWORD(STACK[0x3B0]) = v96;
  v97 = STACK[0x450];
  if (v84)
  {
    v97 = STACK[0x448];
  }

  LODWORD(STACK[0x3FC]) = v97;
  v98 = (STACK[0x390] & 1) == 0;
  if (STACK[0x390])
  {
    v99 = a71;
  }

  else
  {
    v99 = a70;
  }

  if (STACK[0x390])
  {
    v100 = a70;
  }

  else
  {
    v100 = a69;
  }

  if (STACK[0x390])
  {
    a72 = a69;
  }

  v102 = v93 ^ v77;
  v103 = STACK[0x200];
  if ((STACK[0x390] & 1) == 0)
  {
    v103 = a73;
  }

  LODWORD(STACK[0x424]) = v103;
  LODWORD(STACK[0x310]) = v102;
  if (v98)
  {
    v104 = v102;
  }

  else
  {
    v104 = a73;
  }

  v105 = (STACK[0x590] & 2) == 0;
  v106 = STACK[0x284];
  if ((STACK[0x590] & 2) != 0)
  {
    v106 = STACK[0x270];
  }

  LODWORD(STACK[0x284]) = v106;
  v107 = STACK[0x258];
  if (!v105)
  {
    v107 = STACK[0x248];
  }

  LODWORD(STACK[0x420]) = v107;
  v108 = STACK[0x240];
  if (!v105)
  {
    v108 = STACK[0x210];
  }

  LODWORD(STACK[0x270]) = v108;
  v109 = STACK[0x38C];
  LODWORD(STACK[0x3A4]) = v104;
  if (v105)
  {
    v109 = v104;
  }

  LODWORD(STACK[0x240]) = v109;
  v110 = STACK[0x380];
  LODWORD(STACK[0x39C]) = v100;
  if (v105)
  {
    v110 = v100;
  }

  LODWORD(STACK[0x248]) = v110;
  LODWORD(STACK[0x3D8]) = v99;
  LODWORD(STACK[0x3C8]) = a72;
  if (v105)
  {
    v111 = a72;
  }

  else
  {
    v111 = v99;
  }

  LODWORD(STACK[0x258]) = v111;
  v112 = v75 - 773731197 + ((v75 < (((v77 - 752) | 0x29) ^ 0x2E1E3204u)) << 32);
  *(STACK[0xB48] + 8 * v112) = *(STACK[0xB60] + 8 * v112) ^ 0xBEBEBEBEBEBEBEBELL;
  v113 = v75 - 773731196 < STACK[0x5B0];
  return (*(&off_1002D7880 + ((2 * v113) | (16 * v113) | v77)))();
}

uint64_t sub_1000B8AD8(int a1)
{
  v1 = STACK[0x314];
  if ((STACK[0x5A0] & 1) == 0)
  {
    v1 = STACK[0x370];
  }

  v2 = (STACK[0x5A0] & 2) == 0;
  v3 = STACK[0x3F4];
  if ((STACK[0x5A0] & 2) == 0)
  {
    v3 = STACK[0x3E8];
  }

  LODWORD(STACK[0x3A0]) = v3;
  v4 = STACK[0x478];
  if (!v2)
  {
    v4 = STACK[0x43C];
  }

  LODWORD(STACK[0x210]) = v4;
  v5 = STACK[0x438];
  if (!v2)
  {
    v5 = STACK[0x434];
  }

  LODWORD(STACK[0x438]) = v5;
  v6 = STACK[0x428];
  if (v2)
  {
    v6 = STACK[0x3F8];
  }

  LODWORD(STACK[0x478]) = v6;
  v7 = STACK[0x430];
  if (!v2)
  {
    v7 = STACK[0x42C];
  }

  LODWORD(STACK[0x3E8]) = v7;
  v8 = STACK[0x440];
  LODWORD(STACK[0x37C]) = v1;
  if (v2)
  {
    v8 = v1;
  }

  LODWORD(STACK[0x3F4]) = v8;
  v9 = STACK[0x528];
  if (v2)
  {
    v9 = STACK[0x5A8];
  }

  LODWORD(STACK[0x3F8]) = v9;
  LODWORD(STACK[0x430]) = STACK[0x218] & 0x7FFB6FEE;
  v10 = STACK[0x228];
  if (STACK[0x390])
  {
    v10 = STACK[0x310];
  }

  LODWORD(STACK[0x43C]) = v10;
  v11 = (STACK[0x590] & 2) == 0;
  v12 = STACK[0x288];
  if ((STACK[0x590] & 2) != 0)
  {
    v12 = STACK[0x27C];
  }

  LODWORD(STACK[0x27C]) = v12;
  v13 = STACK[0x38C];
  if (!v11)
  {
    v13 = STACK[0x3A4];
  }

  LODWORD(STACK[0x3A4]) = v13;
  v14 = STACK[0x380];
  if (!v11)
  {
    v14 = STACK[0x39C];
  }

  LODWORD(STACK[0x228]) = v14;
  v15 = STACK[0x23C];
  if (v11)
  {
    v15 = STACK[0x224];
  }

  LODWORD(STACK[0x23C]) = v15;
  v16 = *(STACK[0x5B8] + (*(STACK[0x5B8] + 7) & 0xF));
  v17 = *(STACK[0x5B8] + (*(STACK[0x5B8] + ((v16 - ((2 * v16 + 14) & 0xAA) + 12) & 0xF ^ 0xDLL)) & 0xF ^ 8)) & 0xF;
  v18 = (v17 ^ 0x7E69DABF) + 2 * v17;
  v19 = v18 < 0x7E69DABF;
  v20 = 1057201089 * (((2 * *STACK[0x5B8]) & 0xEE) + (*STACK[0x5B8] ^ 0xF799D977)) - (((((2 * *STACK[0x5B8]) & 0xEE) + (*STACK[0x5B8] ^ 0xF799D977)) * ((a1 + 147) ^ 0x7E07358E) + 837157010) & 0x5CACDF5A) + 122253302;
  if (v18 >= 0x7E69DABF)
  {
    v19 = v18 + 335719624 > 0x926C8788;
  }

  return (*(&off_1002D7880 + ((235 * !v19) ^ a1)))();
}

uint64_t sub_1000BA0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = (STACK[0x5A0] & 2) == 0;
  v9 = STACK[0x520];
  if ((STACK[0x5A0] & 2) != 0)
  {
    v9 = STACK[0x518];
  }

  LODWORD(STACK[0x428]) = v9;
  v10 = STACK[0x4E0];
  if (v8)
  {
    v10 = STACK[0x470];
  }

  LODWORD(STACK[0x39C]) = v10;
  v11 = STACK[0x450];
  if (!v8)
  {
    v11 = STACK[0x448];
  }

  LODWORD(STACK[0x434]) = v11;
  LODWORD(STACK[0x450]) = LODWORD(STACK[0x300]) - LODWORD(STACK[0x2F8]);
  v12 = (STACK[0x590] & 2) == 0;
  v13 = STACK[0x424];
  if ((STACK[0x590] & 2) != 0)
  {
    v13 = STACK[0x43C];
  }

  LODWORD(STACK[0x20C]) = v13;
  v14 = STACK[0x3D8];
  if (!v12)
  {
    v14 = STACK[0x3C8];
  }

  LODWORD(STACK[0x218]) = v14;
  v15 = *(STACK[0x5B8] + (v7 - 1217374854));
  return (*(&off_1002D7880 + ((13 * ((v7 - 1217374853) < 0x10)) ^ (a7 + 361))))(2890975559);
}

uint64_t sub_1000BA614@<X0>(int a1@<W5>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v59 = a1 - 318873929 + ((((a1 - 318873929) >> 14) - (((a1 - 318873929) >> 13) & 0x296C4) + 192760674) ^ 0xF482B49D) + 1;
  v60 = (v59 ^ 0xFEF7C7FF) + 17315841 + ((2 * v59) & 0xFDEF8FFE);
  v61 = (((v60 >> 2) - ((v60 >> 1) & 0x4B3462FE) + 630862207) ^ 0x259A317F) + v60;
  v62 = v61 - ((2 * v61) & 0xFEB71230) + 2136705304;
  v63 = ((2 * ((v62 ^ 0xC3B5096C) - ((v62 >> 14) ^ 0x30ED4))) & 0xF7F7BFFA) + (((v62 ^ 0xC3B5096C) - ((v62 >> 14) ^ 0x30ED4)) ^ 0xFBFBDFFD);
  v64 = ((((v63 + 67379203) >> 4) + 1336318002 - (((v63 + 67379203) >> 3) & 0x1F4D3E46) + 1777) ^ 0xB05960DC) + v63;
  v65 = v64 - ((2 * v64 + 134758408) & 0xC3D8A684) + 1710256966;
  v66 = ((((v65 >> 13) ^ 0x7A917) + (v65 ^ 0xF522E8CE)) ^ 0x5DEFF77B) - 1576007547 + ((2 * (((v65 >> 13) ^ 0x7A917) + (v65 ^ 0xF522E8CE))) & 0xBBDFEEF6);
  v67 = (((v66 >> 5) - ((v66 >> 4) & 0x909786A) - 1669022667) ^ 0x9C84BC35) + v66;
  v68 = ((2 * v67) & 0xAB1EFEBE) + (v67 ^ 0xD58F7F5F);
  v69 = v68 - 87104335 + ((((v68 - 87104335) >> 8) - 103204512 - (((v68 - 87104335) >> 7) & 0x1B286E4) + 2578) ^ 0x626BC8D) + 1;
  v70 = ((2 * v69) & 0xF7F9DFFE) + (v69 ^ 0x7BFCEFFF) - 2080174079;
  v71 = v70 + (((v70 >> 5) - ((v70 >> 4) & 0xDB7A774) + 1188811706) ^ 0xB9242C45) + 1;
  v72 = ((2 * v71) & 0xFFE59F9C) + (v71 ^ 0xFFF2CFCE);
  v73 = v72 + 816437392 + ((((v72 + 816437392) >> 12) - (((v72 + 816437392) >> 11) & 0xA3412) + 1976900105) ^ 0x8A2AE5F6) + 1;
  v74 = (v73 ^ 0x3F797FFF) - 1064927231 + ((2 * v73) & 0x7EF2FFFE);
  v75 = (((v74 >> 5) - ((v74 >> 4) & 0xA2C0B0) + 1213292632) ^ 0x48516058) + v74;
  v76 = ((2 * v75) & 0xFDFFFFCE) + (v75 ^ 0xFEFFFFE7);
  v77 = ((((v76 - 777815908) >> 12) - (((v76 - 777815908) >> 11) & 0xA15F4) - 1718285574) ^ 0x99950AFA) + v76 - 777815908;
  v78 = (v77 ^ 0x7DF7ED55) - 2113400149 + ((2 * v77) & 0xFBEFDAAA);
  v79 = (((v78 >> 1) - (v78 & 0x90C13A0E) - 933192441) ^ 0xC8609D07) + v78;
  v80 = ((2 * v79) & 0xFD7FFA6) + (v79 ^ 0x87EBFFD3);
  v81 = v80 + 1790356192 + ((((v80 + 1790356192) >> 13) - ((2 * ((v80 + 1790356192) >> 13)) & 0x803A4) + 1363935698) ^ 0xAEB3FE2D) + 1;
  v82 = ((2 * v81) & 0x62FDFAFC) + (v81 ^ 0x317EFD7E) - 830406014;
  v83 = v82 + (((v82 >> 7) - ((v82 >> 6) & 0x3117CAA) + 1904787029) ^ 0x8E7741AA) + 1;
  v84 = ((2 * v83) & 0xF7DFBEFE) + (v83 ^ 0x7BEFDF7F);
  v85 = v84 - 931317060 + ((((v84 - 931317060) >> 15) - (((v84 - 931317060) >> 14) & 0x16492) - 404049335) ^ 0x18154DB6) + 1;
  v86 = ((2 * v85) & 0xDEAB7FDE) + (v85 ^ 0xEF55BFEF) + 279592977;
  v87 = v86 + (((v86 >> 2) - ((v86 >> 1) & 0x7AAC12B4) + 1029048666) ^ 0xC2A9F6A5) + 1;
  v88 = ((2 * v87) & 0xE01FBE7A) + (v87 ^ 0x700FDF3D);
  v89 = v88 + 2018139023 + ((((v88 + 2018139023) >> 10) - (((v88 + 2018139023) >> 9) & 0x4E8DA8) + 36128468) ^ 0xFDD8B92B) + 1;
  v90 = (v89 ^ 0xFFDFFDC7) + 2097721 + ((2 * v89) & 0xFFBFFB8E);
  v91 = (((v90 >> 2) - ((v90 >> 1) & 0x40A564E) - 2113590489) ^ 0x82052B27) + v90;
  v92 = (v68 + 712016033) ^ v56 ^ (v91 - ((2 * v91) & 0x3A8EBA14) - 1656267510);
  v93 = ((v92 ^ 0xE826EFA2) - 2 * ((v92 ^ 0xE826EFA2) & 0x2ECFA599 ^ v92 & 0x10) + 785360265) ^ (v80 + 2014576685);
  v94 = v93 ^ 0x2ECFA589;
  v95 = (v93 ^ 0x2ECFA589) & 7;
  v96 = ((v93 ^ 2) + 5) & 7;
  if (v95 == 4)
  {
    v97 = 0;
  }

  else
  {
    v97 = 255;
  }

  LODWORD(STACK[0x3D8]) = v96;
  LODWORD(STACK[0x4E0]) = v95;
  v98 = (v97 << (v96 ^ 4)) - ((2 * (v97 << (v96 ^ 4))) & 0xF912) - 1846248311;
  v99 = v98 ^ 0x76;
  if (v95 == 4)
  {
    v99 = 0;
  }

  v100 = (STACK[0x5A0] & 2) == 0;
  v101 = STACK[0x580];
  if ((STACK[0x5A0] & 2) == 0)
  {
    v101 = STACK[0x560];
  }

  LODWORD(STACK[0x42C]) = v101;
  v102 = STACK[0x528];
  if (!v100)
  {
    v102 = STACK[0x5A8];
  }

  LODWORD(STACK[0x308]) = v102;
  v103 = STACK[0x424];
  if ((STACK[0x590] & 2) == 0)
  {
    v104 = STACK[0x43C];
  }

  v105 = ((v62 ^ a2 ^ (v72 + 864306) ^ 0xFCDAA541) - 2 * ((v62 ^ a2 ^ (v72 + 864306) ^ 0xFCDAA541) & 0xFFB5D7B ^ (v62 ^ a2 ^ (v72 + 864306)) & 0x12) - 1879351959) ^ 0x8FFB5D69 ^ (v84 - 2079317887);
  v106 = v105 - ((2 * v105) & 0xF2C25D78) - 111071556;
  v107 = ((v57 ^ v65 ^ 0x2AF5D11A ^ (v76 + 16777241)) - ((2 * (v57 ^ v65 ^ 0x2AF5D11A ^ (v76 + 16777241))) & 0xA9725508) - 726062460) ^ 0xD4B92A84 ^ (v88 - 1880088381);
  v108 = ((2 * v106) & 0xF4 ^ 0x90) + (v106 & 0x7F ^ 0x7F9AECB2);
  LODWORD(STACK[0x310]) = v108;
  LODWORD(STACK[0x288]) = 33686018 * v108;
  LODWORD(STACK[0x518]) = 16843009 * v108 - ((33686018 * v108 - 50580980) & 0x9CE81CAE) - 856545443;
  v109 = ((2 * v98) & 0x17E ^ 0x112) + (v98 ^ 0x7BFBF536);
  v110 = 16843009 * v109 - ((33686018 * v109 + 647927426) & 0x6BD7160E) - 1992632760;
  v111 = v107 - ((2 * v107) & 0xD947DCC0) + 1822682720;
  v112 = ((2063597568 * v109 - ((-167772160 * v109 + 1979711488) & 0xA4000000) - 1916471004) ^ 0x52C4F924) & (v111 ^ 0x6CA3EE60);
  LODWORD(STACK[0x380]) = v112 - ((2 * v112) & 0x34000000) + 451008356;
  v113 = (2 * (((v110 ^ 0xB5EB8B07) & (LODWORD(STACK[0x3E0]) ^ 0x1064D934)) - ((2 * ((v110 ^ 0xB5EB8B07) & (LODWORD(STACK[0x3E0]) ^ 0x1064D934))) & 0x12F2F47A)) - 1829571462) ^ 0x92F2F47A;
  v114 = ((v113 - ((2 * v113) & 0x678A1E38) + 868552477) ^ 0x33C50F1D) + (LODWORD(STACK[0x3E0]) ^ 0xA58F5233 ^ v110);
  v115 = (v110 ^ 0x4A1474F8) + (v114 ^ 0x53F7EEF9) + ((2 * v114) & 0xA7EFDDF2) - 1408757496;
  v116 = (v106 ^ BYTE1(v106) ^ BYTE2(v106)) ^ HIBYTE(v106) ^ 0x7E;
  v117 = 16843009 * v116 - ((33686018 * v116) & 0x54AEC19A) - 1437114163;
  v118 = 0x35D990A2 % STACK[0x5B0];
  LODWORD(STACK[0x560]) = v111;
  v119 = (v111 ^ BYTE1(v111) ^ BYTE2(v111)) ^ HIBYTE(v111) ^ 0xE7;
  v120 = 16843009 * v119 - ((33686018 * v119) & 0xDB74F878) + 1840938044;
  LODWORD(STACK[0x3C8]) = v120;
  LODWORD(STACK[0x448]) = v117;
  LODWORD(STACK[0x370]) = v120 ^ v117;
  LODWORD(STACK[0x30C]) = (2 * (v120 ^ v117)) & 0xDD7E6FEC ^ 0x194E2D64;
  v121 = STACK[0xB48];
  v122 = (*(STACK[0xB48] + 8 * v118) ^ 0xBEBEBEBEBEBEBEBELL) + 3299440206u;
  v123 = STACK[0x4D0];
  v124 = (*(STACK[0xB48] + 8 * (((v122 ^ 0x7DFFFA9FEFFFF667) - 0x7DFFFA9FEFFFF667 + ((2 * v122) & 0xFBFFF53FDFFFECCELL)) % STACK[0x4D0])) ^ 0xBEBEBEBEBEBEBEBELL) + 673216767;
  v125 = (*(STACK[0xB48] + 8 * (((v124 ^ 0xBCCFCDDCF6E7FBD3) + 0x433032230918042DLL + ((2 * v124) & 0x799F9BB9EDCFF7A6)) % STACK[0x4D0])) ^ 0xBEBEBEBEBEBEBEBELL) + 1154386016;
  v126 = ((v125 ^ 0xCF6FD7FA5FEE75D8) + 0x30902805A0118A28 + ((2 * v125) & 0x9EDFAFF4BFDCEBB0)) % STACK[0x4D0];
  STACK[0x5A8] = STACK[0xB48];
  v127 = (*(v121 + 8 * v126) ^ 0xBEBEBEBEBEBEBEBELL) + 1422845239;
  LODWORD(v127) = ((v127 ^ 0xFFAFFE7E8FD66FE5) + 0x5001817029901BLL + ((2 * v127) & 0xFF5FFCFD1FACDFCALL)) % v123;
  LODWORD(STACK[0x580]) = v106;
  LODWORD(STACK[0x43C]) = ((2 * v106) & 0xAF3FFB7A ^ 0x29118010) + (v106 ^ 0x63773DF5);
  v128 = (v127 - ((2 * v127) & 0x3A2C6F76) + 487995323) ^ 0x1D1637BB;
  LODWORD(STACK[0x3E0]) = v94 - ((2 * v94) & 0x9BF85950) + 1308372136;
  LODWORD(STACK[0x38C]) = v110;
  LODWORD(STACK[0x314]) = v110 ^ ((v99 & (v106 ^ 0xBC)) - ((2 * (v99 & (v106 ^ 0xBC))) & 0x22) - 111);
  LODWORD(STACK[0x520]) = (2 * v115) & 0xDF910A2E;
  LODWORD(STACK[0x470]) = v115 - 272071401;
  v129 = LODWORD(STACK[0x410]) ^ 0xA9FCCF2E;
  v130 = LODWORD(STACK[0x508]) ^ 0x7E815A84;
  v131 = LODWORD(STACK[0x510]) ^ 0xD3570EEE;
  if (v128 <= 1)
  {
    v132 = 1;
  }

  else
  {
    v132 = v128;
  }

  v133 = v58 ^ 0x233u;
  v134 = ((2 * *STACK[0x5A8]) & 0xF76DDF7F7FBFFFDCLL ^ 0x756D5D7D7D3D7D5CLL) + (*STACK[0x5A8] ^ 0xC508510101614150);
  v135 = v134 * ((6 * v133) ^ 0xDDD7B9E59B0BDBBFLL);
  v136 = 0x3BAF73CB3617B6C2 * v134 + 0x1FEEA57125EAD9A4;
  v137 = v135 - (v136 & 0x788E0C33651B4604) + 0xC3E58D245830FD4;
  v138 = (v137 ^ 0xF73D0EC0C2CA224) + 0x152380C0492C6485 + ((2 * (v137 ^ 0xE5AFAFD3BAFF395FLL)) & 0xD5B8FE7F6DA736F6);
  v139 = ((HIDWORD(v138) + 0x6DABFA6CD20BBC92 - ((v138 >> 31) & 0x1A4177924)) ^ 0x6DABFA6CD20BBC92) + v138;
  v140 = ((2 * v139) & 0xFA8CFE0DFFEFBFDELL) + (v139 ^ 0x7D467F06FFF7DFEFLL) - 0x7D467F06FFF7DFEFLL;
  v141 = v140 + (((v140 >> 16) - ((v140 >> 15) & 0x16EA108D8580ELL) - 0x7C3448AF7B93D3F9) ^ 0x7C3448AF7B93D3F8) + 1;
  v142 = (v141 ^ 0x7776FBBF93F7D59BLL) - 0x7776FBBF93F7D59BLL + ((2 * v141) & 0xEEEDF77F27EFAB36);
  v143 = (((v142 >> 8) + 0x5A982A8F1FA4FF01 - ((v142 >> 7) & 0x130551E3F49FE02)) ^ 0x5A982A8F1FA4FF01) + v142;
  v144 = ((v143 + 0x78E4021F480EBAB2 - ((2 * v143) & 0xF1C8043E901D7564)) ^ 0x78E4021F480EBAB2) - ((2 * ((v143 + 0x78E4021F480EBAB2 - ((2 * v143) & 0xF1C8043E901D7564)) ^ 0x78E4021F480EBAB2) - 0x6AF171F26E5BFBE8) & 0xD729E7262A2B96E2) + 0x361C3A99DDE7CD7DLL;
  v145 = (v137 ^ 0xD7D3F58AA7986873 ^ v144 ^ 0x6BEFF9B7BFD7F33DLL) - 0x6BEFF9B7BFD7F33DLL + ((2 * (v137 ^ 0xD7D3F58AA7986873 ^ v144)) & 0xD7DFF36F7FAFE67ALL);
  v146 = ((HIDWORD(v145) + 0x1F775E8D7CDDA624 - ((v145 >> 31) & 0xF9BB4C48)) ^ 0x1F775E8D7CDDA624) + v145;
  v147 = ((2 * v146) & 0x7FBFFFDCDFA76F7CLL) + (v146 ^ 0xBFDFFFEE6FD3B7BELL) + 0x40200011902C4842;
  v148 = v147 + (((v147 >> 16) - ((v147 >> 15) & 0x11820F1EADCB8) - 0x6EC373EF870A91A4) ^ 0x6EC373EF870A91A3) + 1;
  v149 = (v148 ^ 0xEF1DDF3FE9B997BBLL) + 0x10E220C016466845 + ((2 * v148) & 0xDE3BBE7FD3732F76);
  v150 = (((v149 >> 8) + 0xCCD192CE8E098E0 - ((v149 >> 7) & 0x19A3259D1C131C0)) ^ 0xCCD192CE8E098E0) + v149;
  v151 = v135 - (v136 & 0x7AE8C1C0C29EB6B8) + 0xD6BB398F444C82ELL;
  v152 = ((v150 - 0x756D742D3FDC1153 - ((2 * v150) & 0x152517A58047DD5ALL)) ^ 0x8A928BD2C023EEADLL) - ((2 * ((v150 - 0x756D742D3FDC1153 - ((2 * v150) & 0x152517A58047DD5ALL)) ^ 0x8A928BD2C023EEADLL) + 0x150E8E0D91A40418) & 0x7A4F7018133E5BCCLL) + 0x7AEFF12D2712FF2;
  v153 = (v151 ^ 0x8053D8EC68D076BALL ^ v152 ^ 0xEDFDF6DD67D8FFDALL) + 0x1202092298270026 + ((2 * (v151 ^ 0x8053D8EC68D076BALL ^ v152)) & 0xDBFBEDBACFB1FFB4);
  v154 = ((HIDWORD(v153) + 0x94ECC0A59DF9883 - ((v153 >> 31) & 0xB3BF3106)) ^ 0x94ECC0A59DF9883) + v153;
  v155 = ((2 * v154) & 0xE3FC4BCBDFEB9E36) + (v154 ^ 0xF1FE25E5EFF5CF1BLL) + 0xE01DA1A100A30E5;
  v156 = v155 + (((v155 >> 16) - ((v155 >> 15) & 0x477BC8DB300CLL) - 0x3200DC421B9267FALL) ^ 0x3200DC421B9267F9) + 1;
  v157 = (v156 ^ 0xFE97FFFE5F7EF0EALL) + 0x1680001A0810F16 + ((2 * v156) & 0xFD2FFFFCBEFDE1D4);
  v158 = (((v157 >> 8) + 0x34C3B914F0F0C75CLL - ((v157 >> 7) & 0x1877229E1E18EB8)) ^ 0x34C3B914F0F0C75CLL) + v157;
  v159 = (v158 + 0x7E0AE4D1A990B9EALL - ((2 * v158) & 0xFC15C9A3532173D4)) ^ 0x7E0AE4D1A990B9EALL;
  v160 = *(&off_1002D7880 + ((1847 * (v132 == 1)) ^ v58));
  return v160(v160, 1985417143, v133, 0x8A928BD2C023EEADLL, v159, 0x7E0AE4D1A990B9EALL, v152, 0x78E4021F480EBAB2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_1000BBB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v66 = STACK[0x598];
  if ((STACK[0x5A0] & 2) != 0)
  {
    v66 = STACK[0x588];
  }

  LODWORD(STACK[0x424]) = v66;
  v67 = STACK[0x3D0];
  if ((STACK[0x590] & 2) != 0)
  {
    v68 = STACK[0x3CC];
  }

  LODWORD(STACK[0x390]) = STACK[0x580] & 0xFFFFFF80;
  LODWORD(STACK[0x528]) = LODWORD(STACK[0x3D8]) ^ 4;
  LODWORD(STACK[0x598]) = LODWORD(STACK[0x30C]) + (LODWORD(STACK[0x370]) ^ 0xE318614D);
  LODWORD(STACK[0x224]) = LODWORD(STACK[0x448]) ^ 0xF3DC74D5;
  v69 = STACK[0xB48];
  STACK[0x5A8] = (v63 + 282964093) & 0xEF224FE6;
  v70 = (v64 | ((v64 < 0x76570FB7) << 32)) + 0x5E2F2F9CA857D0ADLL + (STACK[0x5A8] ^ 0xA1D0D062E1511EDELL);
  v71 = 0xDDD7B9E59B0BDB61 * (*(v69 + 8 * v70) ^ 0xBEBEBEBEBEBEBEBELL) - ((0xBBAF73CB3617B6C2 * (*(v69 + 8 * v70) ^ 0xBEBEBEBEBEBEBEBELL)) & 0xE8DEE47D3753DC30) - 0xB908DC1645611E8;
  v72 = (((v65 ^ 0x740EA06E083658CCLL ^ v71) + v70) ^ 0x2F6DEDBFC671FFBDLL) - 0x2F6DEDBFC671FFBDLL + ((2 * ((v65 ^ 0x740EA06E083658CCLL ^ v71) + v70)) & 0x5EDBDB7F8CE3FF7ALL);
  v73 = ((HIDWORD(v72) - 0x6E39ADD03E4DA366 - ((v72 >> 31) & 0x18364B934)) ^ 0x91C6522FC1B25C9ALL) + v72;
  v74 = ((2 * v73) & 0xBDBBF7FFEABFFEEALL) + (v73 ^ 0xDEDDFBFFF55FFF75) + 0x212204000AA0008BLL;
  v75 = v74 + (((v74 >> 16) - ((v74 >> 15) & 0x53203BA5A658) + 0x42E429901DD2D32CLL) ^ 0xBD1BD66FE22D2CD3) + 1;
  v76 = (v75 ^ 0x5FBABEF78F5EFBDFLL) - 0x5FBABEF78F5EFBDFLL + ((2 * v75) & 0xBF757DEF1EBDF7BELL);
  v77 = (((v76 >> 8) + 0x2C83CD342A89FDDFLL - ((v76 >> 7) & 0x1079A685513FBBELL)) ^ 0x2C83CD342A89FDDFLL) + v76;
  v78 = v77 + 0x1878D44370E99927 - ((2 * v77) & 0x30F1A886E1D3324ELL);
  v79 = (v78 ^ 0x1878D44370E99927) - ((2 * (v78 ^ 0x1878D44370E99927) - 0x6AF171F26E5BFBE8) & 0xC7358A472F513D7CLL) - 0x51DDF3D59F855F36;
  v80 = (((v71 ^ 0x17F5B71D0C0170A6 ^ v79) + v70) ^ 0xFFAFBC5FFDF9F6FELL) + 0x5043A002060902 + ((2 * ((v71 ^ 0x17F5B71D0C0170A6 ^ v79) + v70)) & 0xFF5F78BFFBF3EDFCLL);
  v81 = ((HIDWORD(v80) + 0x44225D0E320422FBLL - ((v80 >> 31) & 0x640845F6)) ^ 0x44225D0E320422FBLL) + v80;
  v82 = ((2 * v81) & 0xA7E1FF4FFFFF3FFELL) + (v81 ^ 0x53F0FFA7FFFF9FFFLL) - 0x53F0FFA7FFFF9FFFLL;
  v83 = v82 + (((v82 >> 16) - ((v82 >> 15) & 0x14AFEDBCBD3CLL) + 0x37EB0A57F6DE5E9ELL) ^ 0xC814F5A80921A161) + 1;
  v84 = (v83 ^ 0xE52D756EFC9EBF6ELL) + 0x1AD28A9103614092 + ((2 * v83) & 0xCA5AEADDF93D7EDCLL);
  v85 = (((v84 >> 8) - 0xE0C4AA2AE9A81CELL - ((v84 >> 7) & 0x1E76ABAA2CAFC64)) ^ 0xF1F3B55D51657E32) + v84;
  v86 = v85 + 0x4EE33F67FA49721 - ((2 * v85) & 0x9DC67ECFF492E42);
  v87 = (v86 ^ 0x4EE33F67FA49721) - ((2 * (v86 ^ 0x4EE33F67FA49721) + 0x150E8E0D91A40418) & 0x7177730840228EF8) + 0x343008AE8E34988;
  v88 = (((v71 ^ 0xCCD4CBBABBB8A964 ^ v87) + v70) ^ 0x2FF3F5DB7FAFFFF3) - 0x2FF3F5DB7FAFFFF3 + ((2 * ((v71 ^ 0xCCD4CBBABBB8A964 ^ v87) + v70)) & 0x5FE7EBB6FF5FFFE6);
  v89 = ((HIDWORD(v88) + 0x5C4891D3A618E067 - ((v88 >> 31) & 0x14C31C0CELL)) ^ 0x5C4891D3A618E067) + v88;
  v90 = ((2 * v89) & 0xF33356D5FFFEE7DALL) + (v89 ^ 0xF999AB6AFFFF73EDLL) + 0x666549500008C13;
  v91 = v90 + (((v90 >> 16) - ((v90 >> 15) & 0xAE0E2235D4FELL) - 0x6788A8F8EEE51581) ^ 0x6788A8F8EEE51580) + 1;
  v92 = (v91 ^ 0xDBDFF0F2BD73E77FLL) + 0x24200F0D428C1881 + ((2 * v91) & 0xB7BFE1E57AE7CEFELL);
  v93 = (((v92 >> 8) - 0x7D06AA66CDB78DEFLL - ((v92 >> 7) & 0x1F2AB326490E422)) ^ 0x82F9559932487211) + v92;
  return (*(&off_1002D7880 + ((484 * (STACK[0x5B0] <= v64 - 1985417142)) ^ v63)))(v69, 0xC3A4A1273F6DA8, ((v78 ^ 0x70E99927) - ((2 * (v78 ^ 0x70E99927) - 1851522024) & 0x2F513D7C) + 1618649290) ^ v62 ^ ((v86 ^ 0x7FA49721) - ((2 * (v86 ^ 0x7FA49721) - 1851522024) & 0x40228EF8) - 387757688) ^ (((2 * v93) & 0xDF737FFA) + (v93 ^ 0xEFB9BFFD) - ((2 * (((2 * v93) & 0xDF737FFA) + (v93 ^ 0xEFB9BFFD)) - 1305443298) & 0x273F6DA8) + 1823996131), 0x82F9559932487211, 0x5C4891D3A618E067, 0x44225D0E320422FBLL, 0x10A711B230841ELL, 0x2C83CD342A89FDDFLL, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_1000BDB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = LODWORD(STACK[0x5A8]) ^ 0x74BA755;
  v7 = STACK[0x440];
  if ((STACK[0x5A0] & 2) != 0)
  {
    v7 = STACK[0x37C];
  }

  LODWORD(STACK[0x3CC]) = v7;
  LODWORD(STACK[0x3D0]) = LODWORD(STACK[0x470]) - LODWORD(STACK[0x520]);
  v8 = *(STACK[0x5B8] + (a6 - 1527359684));
  return (*(&off_1002D7880 + ((43 * ((a6 - 1527359683) > 0xF)) ^ v6)))(921877427, 336658010, 798711152);
}

uint64_t sub_1000BE0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x590]) = STACK[0xA74];
  v10 = STACK[0xA48];
  v11 = *(a7 + 8 * ((((17 * (((v8 - 392) | 0x2C6) ^ 0x6ED)) ^ (((v8 - 392) | 0x2C6) - 555919529) & 0x2122A9FE ^ 0xBCF) * (STACK[0xA48] == 0)) ^ ((v8 - 392) | 0x2C6)));
  LODWORD(STACK[0x450]) = v7;
  STACK[0x448] = v9;
  STACK[0x510] = v10;
  return v11(734352403);
}

uint64_t sub_1000BE184@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v3 = a2 ^ 0x3B2;
  v4 = ((&STACK[0x788] ^ 0x7F372F79AE7FDFD9) - 0x7F372F79AE7FDFD9 + ((&STACK[0x788] << ((a2 ^ 0xB2u) - 69)) & 0xFE6E5EF35CFFBFB0)) % 0x25;
  STACK[0x528] = (2 * v4) & 0x7A;
  STACK[0x520] = (v4 ^ 0xEFFF9CF9FF6DF7FDLL) + 0x1000630600920813;
  v5 = *(a1 + 8 * ((((((v3 - 374) | 0x124) ^ 0x4AA4E34C) != 1252319928) * ((v3 + 1486) ^ 0x829)) ^ v3));
  v6 = STACK[0x9E8];
  v7 = STACK[0x728];
  STACK[0x5B8] = STACK[0x6A0];
  STACK[0x560] = v2;
  return v5(4181205892, 734084045, v6, 734084061);
}

uint64_t sub_1000BE2B8(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x588]) = a4;
  STACK[0x598] = a3;
  STACK[0x15D0] = 0x8B613E4712698E98;
  LODWORD(STACK[0x788]) = dword_100313AB4 - 761298293;
  v11 = dword_100313AB0;
  v12 = ((((v10 - 192) | 0x6C1728C9B0E4E928) - ((v10 - 192) & 0x6C1728C9B0E4E928)) ^ 0x7269125A88C16C49) * v8;
  *(v10 - 184) = v12;
  *(v10 - 180) = v12 + v7 + 1365921462 + 22;
  *(v10 - 192) = v12 + v9;
  *(v10 - 160) = v11 - v12;
  *(v10 - 176) = (v7 - 1723653669) ^ v12;
  *(v10 - 172) = v7 + 1365921462 - v12;
  *(v10 - 168) = ((v7 + 1365921462) ^ 0x1F) - v12;
  v13 = (*(a7 + 8 * (v7 ^ 0x60)))(v10 - 192);
  return (*(&off_1002D7880 + *(v10 - 152)))(v13);
}

uint64_t sub_1000BE3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x580] = v4;
  v6 = STACK[0x5C0];
  v7 = STACK[0x5C0] - 1445;
  STACK[0x5B8] = (*(a4 + 8 * (STACK[0x5C0] + 101)))(STACK[0x520] + STACK[0x528], 0x100004077774924);
  v9 = (*(a4 + 8 * (v6 + 63)))();
  v10 = v9 + (v7 ^ (v5 - 551)) - ((2 * v9) & 0x31832FB6);
  LODWORD(xmmword_100313AB8) = v10;
  v11 = (v7 - 19) ^ 0x42;
  DWORD1(xmmword_100313AB8) = -255713826 - ((2 * (((1812433253 * (v10 ^ v5 ^ (v10 >> v11))) ^ 0x27FF79FE) + ((1477382858 * (v10 ^ v5 ^ (v10 >> v11))) & 0x4FFEF3FC) + 1889564307) + 247471840) & 0x31832FB6) + ((1812433253 * (v10 ^ v5 ^ (v10 >> v11))) ^ 0x27FF79FE) + ((1477382858 * (v10 ^ v5 ^ (v10 >> v11))) & 0x4FFEF3FC);
  return (*(&off_1002D7880 + (v7 ^ 0x160 ^ (175 * ((v7 + 4294967294u) >> 32)))))(2149689163);
}

uint64_t sub_1000BE66C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, int a3@<W5>, int a4@<W8>)
{
  v9 = v5 + v8;
  v10 = v4 & 0x80000000;
  v11 = v5 + 1;
  v12 = *(v6 + 4 * (v11 + v8));
  v13 = (v12 & (a3 + a4 - 198 - 554) | v10) ^ (v7 - 1);
  *(v6 + 4 * v9) = *(v6 + 4 * v9 + 1588) ^ *(&STACK[0x15D0] + ((v12 & 1) == 0)) ^ ((v13 - ((2 * v13) & 0x2F121994u) + 394857674) >> 1) ^ 0x19AD08FD;
  return (*(a1 + 8 * (((v11 == a2 + 3) | (8 * (v11 == a2 + 3))) ^ a4)))();
}

uint64_t sub_1000BE70C(double a1, double a2, double a3, double a4, double a5, double a6, double a7, int8x16_t a8)
{
  v11 = &unk_100313E44;
  v12 = vld1q_dup_f32(v11);
  v13.i64[0] = 0x8000000080000000;
  v13.i64[1] = 0x8000000080000000;
  v14.i64[0] = 0x100000001;
  v14.i64[1] = 0x100000001;
  v15 = (v8 + 387) | 0x401u;
  a8.i32[0] = *(v10 + 4 * (v15 ^ 0x725));
  a8.i32[1] = dword_100313E4C;
  a8.i32[2] = dword_100313E50;
  v16 = vextq_s8(v12, a8, 0xCuLL);
  v17 = a8;
  v17.i32[3] = dword_100313E54;
  v18 = veorq_s8(vorrq_s8(vandq_s8(v17, vnegq_f32(v14)), vandq_s8(v16, v13)), vdupq_n_s32(0x18C197DAu));
  v19.i32[0] = *(v9 + 4 * ((*(v10 + 4 * (v15 ^ 0x725)) & 1) == 0));
  v19.i32[1] = *(v9 + 4 * (~dword_100313E4C & 1));
  v19.i32[2] = *(v9 + 4 * (~dword_100313E50 & 1));
  v19.i32[3] = *(v9 + 4 * (~dword_100313E54 & 1));
  unk_100313E44 = veorq_s8(veorq_s8(veorq_s8(xmmword_100313AB8, v19), vdupq_n_s32(0x49A8DD40u)), vshrq_n_u32(vaddq_s32(vsubq_s32(v18, vandq_s8(vaddq_s32(v18, v18), vdupq_n_s32(0x6F054F60u))), vdupq_n_s32(0xB782A7B1)), 1uLL));
  return (*(&off_1002D7880 + v8))(&dword_100313E54);
}

uint64_t sub_1000BE844(uint64_t a1, uint64_t a2)
{
  v5 = ((((v3 - 1969) | 0x804) + 2147481578) & *v4 | v4[623] & 0x80000000) ^ v2;
  v4[623] = v4[396] ^ *(&STACK[0x15D0] + ((*v4 & 1) == 0)) ^ ((v5 - ((2 * v5) & 0xF68FE6B4) - 79170725) >> 1) ^ 0x6FCA7735;
  return (*(a2 + 8 * (((LODWORD(STACK[0x788]) > 0x26F) | (16 * (LODWORD(STACK[0x788]) > 0x26F))) ^ v3)))();
}

uint64_t sub_1000BE8E0@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  LODWORD(STACK[0x788]) = 0;
  v6 = LODWORD(STACK[0x788]);
  LODWORD(STACK[0x788]) = v6 + 1;
  v7 = *(v2 + 4 * v6);
  *(v3 + 2740) = v6 + 761298294;
  v8 = ((~((v5 - 192) ^ 0x46EE2AB305145DBCLL | 0x5DD4FAA7FE1971C4) + (((v5 - 192) ^ 0x46EE2AB305145DBCLL) & 0x5DD4FAA7FE1971C4)) ^ 0xFC3F99FFD9860F89) * v4;
  *(v5 - 184) = (dword_100313AB0 - 781418898) + v8;
  *(v5 - 192) = (a2 + 121870553) ^ v8;
  *(v5 - 152) = v8 + 4219739705u;
  *(v5 - 176) = -1174362589 - v8 + a2;
  *(v5 - 172) = ((a2 + 121870553) ^ 0x51) + v8;
  *(v5 - 168) = v8 + a2 + 121870553 - 107;
  *(v5 - 164) = 1 - v8;
  v9 = (*(a1 + 8 * (a2 + 83)))(v5 - 192);
  return (*(&off_1002D7880 + *(v5 - 160)))(v9);
}

uint64_t sub_1000BEBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x598];
  v9 = STACK[0x588];
  v10 = ((STACK[0x5C0] - 1877739531) | 0x284848C4) + 1201912103;
  if (v7 >= 0xFB841E39)
  {
    v11 = dword_100313AB0 + 1;
  }

  else
  {
    v11 = 706191307;
  }

  dword_100313AB0 = v11;
  return sub_1000EBAD4(0xF9382384, 734084045, v9, a7, v10);
}

uint64_t sub_1000BEDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X6>, int a3@<W8>)
{
  v6 = (a3 - 604040172) & 0x6F7EEFAF;
  v7 = ((&STACK[0x7E4] ^ 0x7FFF776FFFBFEF57) - 0x7FFF776FFFBFEF57 + ((2 * &STACK[0x7E4]) & 0xFFFEEEDFFF7FDEA8)) % (v6 - 1266550666);
  STACK[0x460] = (2 * v7) & 0x7C;
  STACK[0x458] = (v7 ^ 0xFBEDEFFFFF56F9BELL) + 0x412100000A90652;
  STACK[0x440] = STACK[0x9E8];
  STACK[0x508] = ((((2 * (v5 - 192)) | 0x458ED1F65F210B3ELL) - (v5 - 192) + 0x5D389704D06F7A61) ^ 0xBCB9526817B500FELL) * v3;
  LODWORD(STACK[0x454]) = v4 ^ 0x6D;
  STACK[0x5B8] = (v5 - 192) | 0x6DEFFAA95095BA8FLL;
  LODWORD(STACK[0x588]) = v4 - 925486693;
  STACK[0x5B0] = ((2 * ((v5 - 192) & 0x45579C3836B0B458) - (v5 - 192) + 0x3AA863C7C94F4BA3) ^ 0x2252D5D3143B97ADLL) * a1 + 3896958398;
  LODWORD(STACK[0x580]) = v4 - 402006041;
  STACK[0x5A8] = ((-2 - ((~(v5 - 192) | 0xEB131AF4D575A3A3) + ((v5 - 192) | 0x14ECE50B2A8A5C5CLL))) ^ 0xF3E9ACE008017FADLL) * a1 + 1845379286;
  LODWORD(STACK[0x560]) = -139398019;
  LODWORD(STACK[0x528]) = v4 ^ 0x817;
  LODWORD(STACK[0x520]) = v4 - 1527641625;
  v8.i64[0] = 0x100000001;
  v8.i64[1] = 0x100000001;
  STACK[0x478] = (v5 - 192) | 0xCC3B7E114B203A61;
  LODWORD(STACK[0x470]) = -1478125056;
  v9 = STACK[0x870];
  STACK[0x5A0] = STACK[0xA60];
  *&STACK[0x4F0] = vnegq_f32(v8);
  *&STACK[0x4E0] = vdupq_n_s32(0x18C197DAu);
  *&STACK[0x4D0] = vdupq_n_s32(0x82DAA2A8);
  *&STACK[0x4C0] = vdupq_n_s32(0xC16D5154);
  *&STACK[0x4B0] = vdupq_n_s32(0x4DDBB793u);
  *&STACK[0x4A0] = vdupq_n_s32(0x4E212298u);
  *&STACK[0x490] = vdupq_n_s32(0xA710914C);
  *&STACK[0x480] = vdupq_n_s32(0x7EE5579Fu);
  return sub_10007A368(a2, v6);
}

uint64_t sub_1000BF0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x9A8];
  v10 = STACK[0x668] + v7;
  STACK[0xB28] = v10;
  STACK[0xB38] = v9;
  STACK[0xB20] = v10;
  STACK[0xB10] = v10;
  if (v10)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  return (*(a7 + 8 * ((v12 * (v8 ^ 0xAC6 ^ v8 ^ 0x985 ^ 0x34D)) ^ (v8 - 862))))();
}

uint64_t sub_1000BF154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0xB18] = 0;
  v8 = (*(a7 + 8 * (v7 ^ 0xA99)))(1032);
  STACK[0xB30] = v8;
  v9 = (*(&off_1002D7880 + v7 + 1401))(1032);
  STACK[0xB18] = v9;
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  return (*(&off_1002D7880 + (((((v7 + 47) ^ v11) & 1) * ((v7 - 1875) & 0xFFA9ADFF ^ 0xFFA9A885)) ^ v7)))();
}

void sub_1000BF1FC()
{
  (*(v0 + 8 * (v4 ^ v3)))(v1);
  (*(&off_1002D7880 + v2 + v4 + 2151))(STACK[0xB18]);
  JUMPOUT(0x1000DDEE8);
}

uint64_t sub_1000DE050@<X0>(uint64_t a1@<X6>, _BYTE *a2@<X8>)
{
  v3 = STACK[0x7A8];
  *a2 = *STACK[0x7A8];
  a2[1] = v3[1];
  a2[2] = v3[2];
  a2[3] = v3[3];
  a2[4] = v3[4];
  a2[5] = v3[5];
  a2[6] = v3[6];
  a2[7] = v3[7];
  a2[8] = v3[8];
  a2[9] = v3[9];
  a2[10] = v3[10];
  a2[11] = v3[11];
  a2[12] = v3[12];
  a2[13] = v3[13];
  a2[14] = v3[14];
  a2[15] = v3[15];
  return (*(a1 + 8 * ((4081 * (&a2[-STACK[0x9F8] + 0x1B66A7A4305C90FELL] < (47 * (v2 ^ 0x7D9u)) - 1770)) ^ v2)))();
}

void sub_1000DE1E8()
{
  v2.i64[0] = 0xB2B2B2B2B2B2B2B2;
  v2.i64[1] = 0xB2B2B2B2B2B2B2B2;
  v3.i64[0] = 0x5959595959595959;
  v3.i64[1] = 0x5959595959595959;
  *v0 = vaddq_s8(vsubq_s8(*v1, vandq_s8(vaddq_s8(*v1, *v1), v2)), v3);
  JUMPOUT(0x1000A8C1CLL);
}

uint64_t sub_1000DE218(uint64_t a1, char a2, char a3, char a4, char a5, int a6, char a7, char a8)
{
  v14 = (v13 + (v9 + a6));
  v15 = ((a2 ^ *v14 ^ 0x70) - (a7 & (2 * (a2 ^ *v14 ^ 0x70))) - 21) ^ a8 | a3 ^ (v8 + 59) ^ v10 ^ v14[1];
  v16 = (v15 - (a7 & (2 * v15)) - 21) ^ a8 | a4 ^ v14[2] ^ 0x70;
  v17 = (v16 - (a7 & (2 * v16)) - 21) ^ a8 | a5 ^ v14[3] ^ 0x70;
  return (*(&off_1002D7880 + ((((v17 - (v11 & (2 * v17))) == 0) * v12) ^ v8)))();
}

uint64_t sub_1000DE2C4(unsigned __int8 a1)
{
  v6 = v1 - 1335;
  v7 = v2 > 0x89;
  v8 = (v3 + 38);
  v9 = v7 ^ (v8 < 0x76);
  v10 = v8 < a1;
  if (!v9)
  {
    v7 = v10;
  }

  return (*(v5 + 8 * (v6 ^ (v7 * v4))))();
}

uint64_t sub_1000DE3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *STACK[0xA00] = v8;
  v10 = LODWORD(STACK[0x590]);
  return (*(a7 + 8 * ((7 * (((v9 - 124) ^ (*v7 == 1)) & 1)) ^ v9)))();
}

uint64_t sub_1000DE3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = 116 * (v9 ^ 0x262);
  v13 = STACK[0x958];
  v14 = v10 + (v8 - 63983053);
  v15 = ((((16 * v11) ^ 0xEEBD1DF0) - ((2 * ((16 * v11) ^ 0xEEBD1DF0)) & 0x79445EE0) - 1130221701) ^ 0xBCA22F7B) + v12 - 448;
  v16 = ((2 * v15) & 0x7F59FFFE) + (v15 ^ 0xFFACFFFF);
  v17 = 0xFFFFFFFF00000000;
  if ((v16 + 1962909162) >= 0x74AC9DE9)
  {
    v17 = 0;
  }

  v18 = (v17 - v16 + v14 - 5439489);
  *v13 = *v18;
  v13[1] = v18[1];
  v13[2] = v18[2];
  v13[3] = v18[3];
  v13[4] = v18[4];
  v13[5] = v18[5];
  v13[6] = v18[6];
  v13[7] = v18[7];
  v13[8] = v18[8];
  v13[9] = v18[9];
  v13[10] = v18[10];
  v13[11] = v18[11];
  v13[12] = v18[12];
  v13[13] = v18[13];
  v13[14] = v18[14];
  v13[15] = v18[15];
  v19 = LODWORD(STACK[0x5B8]);
  *STACK[0xA80] = v7 + 16;
  return (*(a7 + 8 * (((STACK[0xA58] == 0) * ((331 * (v12 ^ 0x1D3)) ^ 0x3F8)) ^ ((v12 ^ 0x9C4) - 1837))))();
}

uint64_t sub_1000DEB6C@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v5 = v2 ^ (v3 + 2036) ^ (a2 + 1922) | (((v2 >> 4) ^ 0x74A957F) - ((2 * ((v2 >> 4) ^ 0x74A957F)) & 0x7A04D25C) + 1023568174) ^ 0x3D02692E;
  v6 = (v5 - ((2 * v5) & 0x2BEC5E26) + 368455443) ^ 0x15F62F13 | ((v5 - ((2 * v5) & 0x2BEC5E26u) + 368455443) >> 2);
  STACK[0x9E8] = v4;
  return (*(a1 + 8 * ((1636 * (((~(2 * v6) + (v6 ^ 2)) & 3) == 1)) ^ a2)))();
}

uint64_t sub_1000DEC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x528] = v7;
  v10 = (v9 + 1826875177) & 0x931C11F7;
  STACK[0x590] = (*(a7 + 8 * (v9 + 101)))(STACK[0x518] + STACK[0x520], 0x100004077774924);
  v11 = (*(&off_1002D7880 + v9 + 63))();
  v12 = v11 + 415340507 - ((v11 << (((v9 + 41) & 0xF7) - 52)) & 0x31832FB6);
  LODWORD(xmmword_100313AB8) = v12;
  v13 = (v10 + 1298) ^ v12 ^ ((v12 >> 30) | 0xEFEAD934) ^ 0xF72B48A8;
  *(v8 + 4) = 551738973 - ((2 * (((1812433253 * v13) ^ 0xF7DEB97F) + ((-670100790 * v13) & 0xEFBD72FE) + 427560453) + 491417850) & 0x31832FB6) + ((1812433253 * v13) ^ 0xF7DEB97F) + ((-670100790 * v13) & 0xEFBD72FE);
  return (*(&off_1002D7880 + (v10 ^ 0x6D)))();
}

uint64_t sub_1000DED84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(STACK[0x88C]) = v5;
  v10 = (*(a5 + 8 * (v6 ^ 0xE24)))(v7 + 48, 0);
  v11 = LODWORD(STACK[0xBA8]) - 388868943 - ((2 * LODWORD(STACK[0xBA8])) & 0xD1A4A962);
  LODWORD(STACK[0xB98]) = *(v7 + 48) - 388868943 - ((v6 - 777739493) & (2 * *(v7 + 48)));
  LODWORD(STACK[0xB94]) = v11;
  v12 = (*(&off_1002D7880 + (v6 ^ 0xE14)))(v10);
  LODWORD(STACK[0xB9C]) = v12 - 388868943 - ((2 * v12) & 0xD1A4A962);
  v13 = (*(&off_1002D7880 + v6 + 524))();
  *STACK[0x5B8] = v13 - 388868943 - ((2 * v13) & 0xD1A4A962);
  LODWORD(STACK[0x588]) = STACK[0x590] - ((2 * STACK[0x590]) & 0x7A0A278) + 63983932;
  v14 = 1614251083 * ((v9 - 192) ^ 0xB42ADBDF68196DE0);
  LODWORD(STACK[0x5B0]) = -1614251083 * ((v9 - 192) ^ 0x68196DE0);
  LODWORD(STACK[0x5A8]) = -1345307945 - v14;
  STACK[0x5A0] = 772805789 - v14;
  STACK[0x598] = 734352403 * ((v9 - 192) ^ 0x18FAB614DD74DC0ELL) + 1584935732;
  LODWORD(STACK[0x580]) = v8 + 1894888875;
  v15 = (DWORD1(xmmword_100313AB8) ^ 0xEE0840E8 ^ (1664525 * (xmmword_100313AB8 ^ 0x18C197DB ^ (xmmword_100313AB8 >> 30)) - ((3329050 * (xmmword_100313AB8 ^ 0x18C197DB ^ (xmmword_100313AB8 >> 30))) & 0xED93AE66) - 154544333)) + (*STACK[0x5B8] ^ 0xE8D254B1);
  v16 = (v15 ^ 0xFFBFEAEF) + 1231715585 + ((2 * v15) & 0xFF7FD5DE);
  DWORD1(xmmword_100313AB8) = v16 - ((2 * v16 + 766193696) & 0x31832FB6) - 812175381;
  v17 = (v6 - 1453613074) ^ v14;
  *(v9 - 160) = v14 + v6 - 1453613074 + 23;
  v18 = LODWORD(STACK[0x5A8]) + v6 + 461;
  *(v9 - 168) = v17 ^ 0x1C;
  *(v9 - 164) = v18;
  *(v9 - 176) = v14 ^ 0x2E10149F;
  *(v9 - 192) = v17;
  *(v9 - 184) = STACK[0x5B0];
  *(v9 - 152) = STACK[0x5A0];
  v19 = (*(&off_1002D7880 + ((v6 + 461) ^ 0x4F)))(v9 - 192);
  return (*(&off_1002D7880 + *(v9 - 188)))(v19);
}

uint64_t sub_1000DF0F4()
{
  LODWORD(xmmword_100313AB8) = dword_100314474;
  *(v6 - 192) = v1 ^ v5;
  *(v6 - 152) = STACK[0x598];
  *(v6 - 168) = v5 + v1 + 13;
  *(v6 - 164) = v3;
  *(v6 - 184) = (v2 + 353220148) + v5;
  *(v6 - 176) = -1174362589 - v5 + STACK[0x5C0];
  *(v6 - 172) = v5 + v1 - 81;
  v7 = (*(v0 + 8 * v4))(v6 - 192);
  return (*(&off_1002D7880 + *(v6 - 160)))(v7);
}

uint64_t sub_1000DF2D4()
{
  v2 = (*(v1 + 8 * (v0 ^ 0xAAE)))(152, 0x10300401EA5018FLL);
  STACK[0x710] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (v0 + ((v0 - 642) ^ 0xFFFFF7AD) + 1341)) ^ v0)))(4294925268);
}

uint64_t sub_1000DF34C@<X0>(int a1@<W5>, uint64_t a2@<X6>, unint64_t a3@<X8>)
{
  LODWORD(STACK[0x5A8]) = a1;
  STACK[0x5B8] = a3;
  v4 = *(a3 + 72);
  v5 = *(a3 + 76);
  v6 = *(a3 + 80);
  v7 = *(a3 + 84);
  return (*(a2 + 8 * (((((v3 - 192) | 0x210) ^ 0x236) * ((*(a3 + 96) ^ (v3 - 19)) < -14)) ^ (v3 + 67))))();
}

uint64_t sub_1000DF438(uint64_t a1, int a2)
{
  v5 = 6 * (a2 ^ 0x597DDA3E);
  v6 = *(STACK[0x5B8] + 88);
  v7 = (STACK[0x5B8] + v3 + 806853282);
  v8 = ((((*v7 ^ 0xDF) + ((v5 + 806851736) ^ 0x30179A1E) - ((2 * (*v7 ^ 0xDF)) & 0xB8)) << 24) - 0x10000000) ^ 0xDC000000;
  v9 = ((((v7[1] ^ 0xDF) + (~(2 * (v7[1] ^ 0xDF)) | 0xFE4D)) << 16) - 1227227136) ^ 0xB6D90000;
  v10 = (v8 + 1770819705 - ((2 * v8) & 0xD2000000)) ^ 0x698C9079 | (v9 + 1803222483 - ((2 * v9) & 0x6F40000)) ^ 0x6B7AFDD3;
  v11 = ((((v7[2] ^ 0xDF) - ((2 * (v7[2] ^ 0xDF)) & 0xF8)) << 8) + 292912128) ^ 0x11757C00;
  v12 = (v10 + 2099431988 - ((2 * v10) & 0xFA459468)) ^ 0x7D22CA34 | (v11 + 651886378 - ((2 * v11) & 0x4DB5FE00)) ^ 0x26DAFF2A;
  LODWORD(v7) = (v12 + 311771144 - ((2 * v12) & 0x252A8010)) ^ 0x12954008 | ((v7[3] ^ 0xDF) + 108763064 - ((2 * (v7[3] ^ 0xDF)) & 0x170)) ^ 0x67B97B8;
  *(v2 + ((v3 + 806853282) & 0xFFFFFFFFFFFFFFFCLL)) = v7 + v4 - ((2 * v7) & 0xA8DF608C);
  return (*(&off_1002D7880 + ((471 * ((v3 + 806853286) < 0x40)) ^ v5)))();
}

uint64_t sub_1000DF620()
{
  v6 = (v2 + 4 * (v1 + v3));
  HIDWORD(v7) = *(v6 - 8) ^ *(v6 - 3) ^ *(v6 - 14) ^ *(v2 + 4 * (v1 + v3 + ((v0 - 2047090998) & 0x49EC86FF)) - 816);
  LODWORD(v7) = HIDWORD(v7);
  *v6 = (v7 >> 31) + v5 - ((2 * (v7 >> 31)) & 0xA8DF608C);
  return (*(v4 + 8 * ((63 * (((v1 + 1 - v0) | (v0 - (v1 + 1))) >= 0)) ^ (v0 - 806851736))))();
}

uint64_t sub_1000DF6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, int a8)
{
  HIDWORD(v18) = a6 ^ 0x1A438A5;
  LODWORD(v18) = a6 ^ 0x18000000;
  v19 = (v13 ^ v15) & ((a7 - 1294424783) & 0x4D275AF7 ^ (v15 - 101) ^ a8);
  v20 = (((v13 ^ 0xE65BC75A) & (v14 ^ v15)) + 1825849946 - ((2 * ((v13 ^ 0xE65BC75A) & (v14 ^ v15))) & 0xD9A884B4)) ^ 0x6CD4425A | (v19 - 346238995 - ((2 * v19) & 0xD6B99FDA)) ^ 0xEB5CCFED;
  v21 = ((v18 >> 27) ^ 0xEEFFE7F7) + ((2 * (v18 >> 27)) & 0xDDFFCFEE) + 285218825 + ((v20 - 128217554 - ((2 * v20) & 0xF0B71C5C)) ^ 0xF85B8E2E);
  v22 = (v8 ^ v15) + (v21 ^ 0xBCBF5806) + ((2 * v21) & 0x797EB00C) + 1128310778;
  v23 = (*(v9 + 4 * (v12 + v10)) ^ v17) - 2145320311 + (v22 ^ 0x7FDEEF9F) + ((2 * v22) & 0xFFBDDF3E) + 3544;
  return (*(v16 + 8 * ((89 * (v12 + 1 == v11 + 20)) ^ a7)))(a1, v14);
}

uint64_t sub_1000DF8C0(uint64_t a1, int a2, unsigned int a3, int a4, int a5)
{
  v14 = v6;
  HIDWORD(v15) = a4 ^ 0x1A438A5;
  LODWORD(v15) = a4 ^ 0x18000000;
  v16 = (v6 ^ v10 ^ a5 ^ v5) + ((v15 >> 27) ^ 0xBFAFFBF9) + (((v15 >> 27) << (a3 + 28)) & 0x7F5FF7F2) + 1078985735;
  v17 = (a2 ^ v10) + (v16 ^ 0x3E5FCFFD) + ((2 * v16) & 0x7CBF9FFA) - 1046466557;
  v18 = (*(v7 + 4 * (v12 + v8)) ^ v13) + (v17 ^ 0xF7F7FDEF) + ((2 * v17) & 0xEFEFFBDE) + 134742545;
  return (*(v11 + 8 * ((866 * (v12 + 1 == v9 + 40)) ^ a3)))(a1, v14);
}

uint64_t sub_1000DFA14(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  HIDWORD(v16) = a4 ^ 0x1A438A5;
  LODWORD(v16) = a4 ^ 0x18000000;
  v17 = (((a5 ^ v12 | v14 ^ v12) + 560967576 - ((2 * (a5 ^ v12 | v14 ^ v12)) & 0x42DF5F30)) ^ 0x216FAF98) & (v11 ^ v12);
  v18 = (v17 + 793691015 - ((2 * v17) & 0x5E9D870E)) ^ 0x2F4EC387 | (((a5 ^ v12) & (v14 ^ v12)) + 1231944310 - ((2 * ((a5 ^ v12) & (v14 ^ v12))) & 0x92DBF4EC)) ^ 0x496DFA76;
  v19 = ((a6 + 133) ^ 0xF7BFE853 ^ (v16 >> 27)) + ((2 * (v16 >> 27)) & 0xEF7FD8BE) + 138417057 + ((v18 - 1234319528 - ((2 * v18) & 0x6CDB8EB0)) ^ 0xB66DC758);
  v20 = (v6 ^ v12) + (v19 ^ 0x5FC6EBEB) + ((2 * v19) & 0xBF8DD7D6) - 1606872043;
  v21 = (*(v7 + 4 * (v10 + v8)) ^ v15) + (v20 ^ 0x7DFF4DFF) + ((2 * v20) & 0xFBFE9BFE) - 2113883647;
  return (*(v13 + 8 * ((1931 * (v10 + 1 == v9 + 60)) ^ a6)))();
}

uint64_t sub_1000DFBF4(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, int a7)
{
  HIDWORD(v16) = a4 ^ 0x1A438A5;
  LODWORD(v16) = a4 ^ 0x18000000;
  v17 = (v14 ^ v12 ^ a5 ^ a3) + ((v16 >> 27) ^ 0x6EBDFFF6) + ((2 * (v16 >> 27)) & 0xDD7BFFEC) - 1857945590;
  v18 = (a7 ^ v12) + (v17 ^ (v7 + 1342010078)) + ((2 * v17) & 0x9FFAEDD4) - 1342011114;
  v19 = (*(v8 + 4 * (v11 + v9)) ^ v15) + (v18 ^ 0x7B363E77) + ((2 * v18) & 0xF66C7CEE) - 2067152503;
  return (*(v13 + 8 * ((780 * (v11 + 1 == v10 + 80)) ^ v7)))();
}

uint64_t sub_1000DFD50@<X0>(int a1@<W3>, int a2@<W4>, uint64_t a3@<X8>)
{
  v9 = v5 + 1046;
  v10 = (v9 ^ (v8 - 2078) ^ *(a3 + 88)) + v3;
  *(a3 + 88) = v10 + v8 - (v4 & (2 * v10));
  v11 = STACK[0x5B8];
  v12 = (*(STACK[0x5B8] + 72) ^ v8) + (a1 ^ v8);
  v13 = v9 ^ 0xE70;
  v14 = (*(STACK[0x5B8] + 76) ^ v8) + (v6 ^ v8);
  v11[18] = v12 + v8 - ((v12 << (v9 ^ 0x23)) & v4);
  v11[19] = v14 + v8 - (v4 & (2 * v14));
  v15 = (v11[20] ^ v8) + (a2 ^ v8);
  v16 = (v11[21] ^ v8) + (v7 ^ v8);
  v11[20] = v15 + v8 - (v4 & (2 * v15));
  v11[21] = v16 + v8 - (v4 & (2 * v16));
  return (*(&off_1002D7880 + ((13 * (SLODWORD(STACK[0x5A8]) >= (((v13 ^ 0xB3) - 998) ^ 0xC1781C3E))) ^ v13)))();
}

uint64_t sub_1000E08DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7 + 1876;
  v9 = LODWORD(STACK[0x824]) + 865746010;
  v10 = (((v8 - 2004) | 0x49E) ^ 0x783EC871) + LODWORD(STACK[0xA0C]);
  v11 = v9 < 0x7C0F1A7C;
  v12 = v9 > v10;
  if (v11 != v10 < 0x7C0F1A7C)
  {
    v12 = v11;
  }

  return (*(a7 + 8 * ((59 * v12) ^ (v8 - 255))))();
}

uint64_t sub_1000E0960(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x840];
  v8 = STACK[0x5F0];
  return (*(a7 + 8 * ((474 * (((a3 - 1037000097) & 0x3DCF5FE6 ^ 0xB78B26F9) + a2 >= a2 - 1215618658)) ^ a3)))();
}

uint64_t sub_1000E0AA0@<X0>(int a1@<W1>, int a2@<W4>, int8x16_t *a3@<X8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>)
{
  v6 = (v5 + (a1 - 1215618658));
  v7 = vaddq_s8(vsubq_s8(v6[1], vandq_s8(vaddq_s8(v6[1], v6[1]), a4)), a5);
  *a3 = vaddq_s8(vsubq_s8(*v6, vandq_s8(vaddq_s8(*v6, *v6), a4)), a5);
  a3[1] = v7;
  return (*(&off_1002D7880 + ((a2 - 1519) ^ 0x51)))();
}

uint64_t sub_1000E0C6C@<X0>(int a1@<W1>, int a2@<W5>, unint64_t a3@<X8>)
{
  v5 = STACK[0x598];
  LODWORD(STACK[0x590]) = a1 - a2;
  STACK[0x598] = v5;
  return sub_1000DF34C(v4, &off_1002D7880, a3);
}

uint64_t sub_1000E0C84(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v8 ^ 0x52D;
  STACK[0x9E8] = STACK[0x598];
  LODWORD(STACK[0x604]) = v7;
  LODWORD(STACK[0x914]) = v9;
  LODWORD(STACK[0x954]) = STACK[0x5A0];
  LODWORD(STACK[0x9E4]) = STACK[0x590];
  LODWORD(STACK[0x8CC]) = a4;
  v11 = STACK[0x770];
  v12 = ((v10 + 625) ^ 0xFFFFFFFFE5C8EAF0 ^ (v10 - 614684081) & 0x24A3531F) + 439819787;
  if (v12 <= 0x38)
  {
    v12 = 56;
  }

  return (*(a7 + 8 * (v10 | ((v12 < 0x10) << 6))))();
}

uint64_t sub_1000E0CC0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x9E8] = STACK[0x598];
  LODWORD(STACK[0x604]) = v7;
  LODWORD(STACK[0x914]) = v9;
  LODWORD(STACK[0x954]) = STACK[0x5A0];
  LODWORD(STACK[0x9E4]) = STACK[0x590];
  LODWORD(STACK[0x8CC]) = a4;
  return (*(a7 + 8 * ((v8 + 1896) ^ 0x3BA | (32 * ((*(STACK[0x770] + 96) ^ (((v8 + 104) ^ 0xBA) - 35)) < (3 * ((v8 + 104) ^ 0x5D) + ((((v8 + 104) ^ 0xBA) + 82) | 0x40) - 21))))))();
}

uint64_t sub_1000E0EF8@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0x5E8];
  v3 = v1 - 1769;
  v4 = *(a1 + 72);
  *v2 = v4 ^ 0xE1 ^ unk_100264091 ^ 0x7E ^ 0xA5;
  v2[1] = unk_100259801 ^ BYTE1(v4) ^ unk_100265261 ^ 0x59 ^ unk_10027CA62 ^ 0x38;
  v2[2] = BYTE2(v4) ^ 0xB2 ^ unk_100259802 ^ unk_100265262 ^ unk_10027CA63 ^ 0xA4;
  v2[3] = HIBYTE(v4) ^ 0xB ^ unk_100259803 ^ unk_100265263 ^ unk_10027CA64 ^ 0x19;
  v5 = *(a1 + 92) + 573779370;
  v6 = v5 < 0x985B3B09;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5 > 0x985B3B0D;
  }

  return (*(&off_1002D7880 + ((27 * !v7) ^ v3)))(byte_100259920, &unk_100264090, 93, 165, 0x252057C5B6AAB65ALL, 89, 0x252057C5B6AAB65BLL, 164);
}

uint64_t sub_1000E11AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x930] + 16;
  v10 = STACK[0x930] < byte_100259840 && v8 > &unk_100259830;
  if (STACK[0x930] < &unk_100259930 && v8 > byte_100259920)
  {
    v10 = 1;
  }

  if (STACK[0x930] < &unk_1002640A1 && v8 > &unk_100264091)
  {
    v10 = 1;
  }

  v14 = STACK[0x930] < &byte_1002858E0[16] && v8 > byte_1002858E0 || v10;
  return (*(a7 + 8 * ((v14 * (((v7 - 390) ^ 0xFD9A7A7A) + v7 + 40206849)) ^ v7)))(byte_100259920, &unk_100264091, byte_1002858E0);
}

uint64_t sub_1000E12AC()
{
  STACK[0x5B0] = v3;
  LODWORD(STACK[0x5B8]) = v2;
  v4 = v0[11];
  v5 = v0[7];
  v6 = (((v4 ^ 0xFFFFFFC8) + (v4 ^ 0x3E)) ^ 0xFFFFFFA0) - ((2 * ((v4 ^ 0xFFFFFFC8) + (v4 ^ 0x3E))) & 0xFFFFFFBF) + ((((2 * v4) ^ 0x7C) - ((2 * ((2 * v4) ^ 0x7C)) & 0xBBBBBBBB) - 36) ^ 0xFFFFFFDC) + 96;
  v7 = (2 * v6) & 0x60;
  LODWORD(v4) = byte_100262AD0[v4 ^ 0x2C];
  LODWORD(v5) = ((2 * ((v5 ^ 0xFFFFFFE6) - (v5 ^ 0x10))) & 0xFFFFFF8F) + (((v5 ^ 0xFFFFFFE6) - (v5 ^ 0x10)) ^ 0xFFFFFFC7) + byte_100262AD0[v5 ^ 0xF4];
  v8 = v0[10];
  v9 = ((2 * v8) & 0x172) + (v8 ^ 0xFFEEFFB9);
  v10 = ((2 * (v8 ^ 0xA8)) & 0xFFFFFF7F) + (v8 ^ 0xFCEE9D17);
  v11 = (-302936245 - v9 - ((-2228366 - 2 * v9) & 0xDC051F24)) ^ (v9 + 1114183) ^ (-728100835 - v10 - ((-102941490 - 2 * v10) & 0xAF56E36C));
  v12 = (v11 ^ 0x39A9FE24) - 2 * ((v11 ^ 0x39A9FE24) & 0x733617EF ^ v11 & 8) + 1932924903;
  v13 = byte_100268180[((v12 ^ 0x733617E7) + 831307011 - 2 * (((v12 ^ 0x733617E7) + 168) & 0x318CBD03 ^ (v12 ^ 0x733617E7) & 2) + 166) ^ 0x318CBD39];
  LODWORD(STACK[0x598]) = v5 - 2 * ((v5 + 60) & 0x3A ^ v5 & 2);
  LODWORD(v5) = v13 ^ ((v12 ^ 0xE7) - ((2 * (v12 ^ 0xE7) + 58) & 0x9A) - 22) ^ 0xEA;
  LODWORD(v5) = (((v5 - ((2 * v5) & 0xB8)) << 8) - 545694720) ^ 0xDF795C00;
  v14 = v4 + (v6 ^ 0xFFFFFFB0) + v7 + 19;
  LODWORD(v4) = (v5 - ((2 * v5) & 0x158BBC00) - 1966743826) ^ 0x8AC5DEEE | ((v4 + (v6 ^ 0xB0) + v7 + 19) - ((2 * v14) & 0x6E) - 34673353) ^ 0xFDEEED37;
  v15 = v4 + 817917249 + (~(2 * v4) | 0x9E7F257D);
  v16 = v0[6];
  v17 = byte_10027D2C0[v0[12] ^ 0x64];
  LOBYTE(v5) = byte_100268180[v0[14] ^ 0x52] ^ ((v0[14] ^ 0x6A) - ((2 * (v0[14] ^ 0x6A) - 22) & 0xF8) - 15) ^ 0x18;
  v18 = v5 - ((2 * v5) & 0x2E);
  v19 = v17 ^ (v17 >> 2) ^ (v17 >> 3);
  v20 = v0[9];
  v21 = byte_100284A80[v20 ^ 0x90];
  v22 = ((2 * v20) & 0x1F4 ^ 0xFFFFFFE0) + (v20 ^ 0xFFFFFF8F);
  v23 = v22 + (v21 ^ ((v21 ^ 0x6E) - ((2 * (v21 ^ 0x6E) + 2) & 0x28) + 21) ^ (v22 + (v20 ^ 0xFFFFFF9B ^ v21) - ((2 * (v22 + (v20 ^ 0xFFFFFF9B ^ v21)) + 14) & 0xFFFFFFCC) + 109) ^ 0x63) - 122;
  LODWORD(v4) = v0[1];
  v24 = (v23 - ((2 * v23) & 0xD4) - 22) ^ 0x8D;
  v25 = (((v24 - ((2 * v24) & 0x16C)) << 16) + 2125856768) ^ 0x7EB60000;
  LODWORD(v20) = v4 + 634639468 - ((2 * v4) & 0x108) + 24;
  v26 = ((2 * (v4 ^ 0x3E)) & 0x196) + (v4 ^ 0xE8F9CFD5);
  v27 = (1908874078 - (v20 ^ 0x25D3D46C) - ((492 - 2 * (v20 ^ 0x25D3D46C)) & 0xE38E34D0)) ^ (816946906 - v26 - ((-772563050 - 2 * v26) & 0x8F6F9E1E));
  HIDWORD(v28) = v20 ^ 0x301E3 ^ v27;
  LODWORD(v28) = v27 ^ 0x36700000;
  LODWORD(v20) = (v28 >> 19) - ((2 * (v28 >> 19)) & 0xBE376B06) - 551832189;
  v29 = v20 ^ 0x44E;
  v30 = v20 ^ 0x455C0000;
  v31 = v0[15];
  STACK[0x5A0] = v31;
  LODWORD(v5) = ((__PAIR64__(v29, v30) >> 13) - ((2 * (__PAIR64__(v29, v30) >> 13)) & 0xC128A752) - 527150167) ^ 0x6EF8818A;
  LODWORD(STACK[0x5A8]) = byte_100262AD0[v31 ^ 0xF6];
  LOBYTE(v6) = byte_100262AD0[v0[3] ^ 0x2DLL] + 2 * ((v0[3] ^ 0x3F) - (v0[3] ^ 0xC9)) + (((v0[3] ^ 0x3F) - (v0[3] ^ 0xC9)) ^ 0x7F);
  v32 = byte_10027D2C0[*v0 ^ 0xFDLL];
  v33 = byte_10027D2C0[v0[4] ^ 0xF1];
  v34 = byte_10027D2C0[v0[8] ^ 0x75];
  v35 = (v25 - ((2 * v25) & 0x27E40000) + 1408375320) & 0xD7FF1A18 ^ 0x7BF21A18;
  v36 = (v35 - ((2 * v35) & 0x27761030) + 1404816538) ^ 0x53BBCC9A | (v15 + 1) ^ 0x30C06D41;
  v37 = v36 - ((2 * v36) & 0x99CFF896) + 1290271819;
  LOBYTE(v36) = byte_100268180[v0[2] ^ 0x71] ^ 9 ^ ((v0[2] ^ 0x49) - ((2 * (v0[2] ^ 0x49) + 10) & 0xC) + 123);
  v38 = HIWORD(v37) & 0x55;
  v39 = (((v18 + 23) ^ 0x17) + (~(2 * ((v18 + 23) ^ 0x17)) | 0x71) - 56);
  v40 = dword_100282AA0[v39 ^ 0xEC] + (((v39 ^ 0xB7) + (v39 ^ 0xCC547C99)) ^ 0xB41297AC) - ((2 * ((v39 ^ 0xB7) + (v39 ^ 0xCC547C99))) & 0x9088D0A6) + 1;
  v41 = dword_1002636F0[(v34 ^ (v34 >> 3) ^ (v34 >> 2)) ^ 0x66];
  v42 = dword_100267470[(v6 - ((2 * v6 + 8) & 0x4C) + 106) ^ 0x4F];
  HIDWORD(v28) = v42 ^ 0x210D2;
  LODWORD(v28) = v42 ^ 0x18EC0000;
  v43 = v41 ^ (1147085440 - (v41 ^ 0x7C059A70) - ((128025620 - 2 * (v41 ^ 0x7C059A70)) & 0x811CC0EC)) ^ ((v41 ^ 0x802AA785) - ((2 * (v41 ^ 0x802AA785) + 2) & 0x8C5EB9F2) - 969974534) ^ 0xF97464F5;
  v44 = *(&unk_100265BF0 + (BYTE2(v37) ^ 0xC1u)) ^ dword_1002636F0[v33 ^ (v33 >> 3) ^ (v33 >> 2) ^ 0xA2] ^ ((v28 >> 18) - ((2 * (v28 >> 18)) & 0x883F2AA4) - 1004563118) ^ v38 ^ (v40 - ((2 * v40 - 1760802966) & 0x8402422C) + 226968779) ^ ((v38 ^ 0x30324FAB) - 2 * (((v38 ^ 0x30324FAB) & 0xD | 0x7FCDB0D0) ^ (v38 ^ 0x30324FAB | 0x7FFFFFF2)) - 935592158);
  v45 = (((v36 - ((2 * v36) & 0xD0) - 24) ^ 0xE8) - 2 * ((v36 - ((2 * v36) & 0xD0) - 24) & 3) - 125);
  v46 = dword_100282AA0[v45 ^ 0x1D] + (((v45 ^ 0xCC547C68) + (v45 ^ 0x46)) ^ 0x2600004) - ((2 * ((v45 ^ 0xCC547C68) + (v45 ^ 0x46))) & 0x9828FBF6) + 1;
  v47 = byte_100268180[v16 ^ 0x6D] ^ ((v16 ^ 0x55) - ((2 * (v16 ^ 0x55) - 22) & 0xB6) + 80) ^ 0xE;
  LODWORD(v16) = dword_100267470[(LODWORD(STACK[0x598]) - 76) ^ 0x2C];
  HIDWORD(v28) = v16 ^ 0x210D2;
  LODWORD(v28) = v16 ^ 0x18EC0000;
  v48 = ((v28 >> 18) - ((2 * (v28 >> 18)) & 0x555B711A) + 716028045) ^ *(&unk_100265BF0 + ((byte_100284A80[v0[13] ^ 0xECLL] ^ v0[13]) ^ 0xB4u)) ^ (v46 - ((2 * v46 - 93227334) & 0xA80D91CA) + 1363117122) ^ (v43 - ((2 * v43 + 128025620) & 0x97A9BFBA) + 1336254951);
  v49 = v47 - ((2 * v47) & 0x18A) - 2038642491;
  v50 = (((v49 ^ 0x4A28B4EB) + (v49 ^ 0x867CC8C5)) ^ 0x6A10952) - ((2 * ((v49 ^ 0x4A28B4EB) + (v49 ^ 0x867CC8C5))) & 0xF2BDED5A) + dword_100282AA0[v49 ^ 0x867CC89E] + 1;
  v51 = dword_100267470[v14 ^ 0x82];
  HIDWORD(v28) = v51 ^ 0x210D2;
  LODWORD(v28) = v51 ^ 0x18EC0000;
  v52 = dword_1002636F0[v19 ^ 0xC6] ^ (v50 - ((2 * v50 - 235969506) & 0xCA44AE22) - 568719072) ^ ((v28 >> 18) - ((2 * (v28 >> 18)) & 0x5B7AEE6E) + 767391543) ^ *(&unk_100265BF0 + (v4 ^ 0x94u ^ byte_100284A80[(v5 + 246)]));
  v53 = dword_1002636F0[HIBYTE(v48) ^ 0x81] ^ *(&unk_100265BF0 + (BYTE2(v52) ^ 0x5Fu));
  if ((v53 & 0x20000) != 0)
  {
    v54 = 0x20000;
  }

  else
  {
    v54 = -131072;
  }

  v55 = BYTE1(v44) ^ 9;
  if (v55 >= 0xE9)
  {
    v56 = v55 - 233;
  }

  else
  {
    v56 = BYTE1(v44) ^ 9;
  }

  v57 = (STACK[0x5A0] ^ 0xFFFFFFE4) - (STACK[0x5A0] ^ 0x12);
  v58 = ((2 * v57) & 0xFFFFFFFB) + (v57 ^ 0xFFFFFFFD) + LODWORD(STACK[0x5A8]);
  v59 = v0[5];
  v60 = byte_100284A80[v59 ^ 0x39];
  v61 = v60 ^ 0x91;
  v62 = v59 ^ 0xD9 ^ ((v60 ^ 0x91) - (v59 ^ 0xCD ^ v60) + (~(2 * ((v60 ^ 0x91) - (v59 ^ 0xCD ^ v60))) | 0xF5) - 122);
  v63 = (-2 * (v62 & (((v59 ^ 0xA3) - ((2 * (v59 ^ 0xA3) + 2) & 0x34) - 101) ^ 0x9A)) + 126) ^ 0x7E;
  LOBYTE(v59) = ((v63 - ((2 * v63) & 0xCF) + 103) ^ 0x67) + (v59 ^ 0x5C);
  LOBYTE(v59) = v62 + (v59 ^ 0x42) - ((2 * v59) & 0x7A) - 66;
  LOBYTE(v59) = v61 + (v59 ^ 0x4B) + ((2 * v59) & 0x96) - 75;
  v64 = v32 ^ (v32 >> 3) ^ (v32 >> 2);
  v65 = (BYTE1(v37) ^ 0xCC547C59) + (BYTE1(v37) ^ 0x77);
  v66 = dword_100282AA0[BYTE1(v37) ^ 0x2C] + (v65 ^ 0x99D2280D) - ((2 * v65) & 0x8808ABE4) + 1;
  v67 = dword_100267470[(v58 - ((2 * v58 + 12) & 0x2C) + 92) ^ 0x28];
  HIDWORD(v68) = v67 ^ 0x210D2;
  LODWORD(v68) = v67 ^ 0x18EC0000;
  v69 = *(&unk_100265BF0 + ((v59 - ((2 * v59) & 0x64) - 78) ^ 0xA3u)) ^ dword_1002636F0[v64 ^ 0x38] ^ ((v68 >> 18) - ((2 * (v68 >> 18)) & 0xDF4C7218) - 274319092) ^ (v66 - 1015355654 + ((879941974 - 2 * v66) | 0x449758B5));
  v70 = (BYTE1(v48) ^ 0x88) + (BYTE1(v48) ^ 0xCC547CA6);
  LODWORD(v59) = dword_100282AA0[BYTE1(v48) ^ 0xD3] + (v70 ^ 0x6C820204) - ((2 * v70) & 0xA8FBF6) + 1;
  v71 = dword_100267470[v52 ^ 0x90];
  HIDWORD(v68) = v71 ^ 0x210D2;
  LODWORD(v68) = v71 ^ 0x18EC0000;
  v72 = *(&unk_100265BF0 + (BYTE2(v44) ^ 0xE8u)) ^ ((v68 >> 18) - ((2 * (v68 >> 18)) & 0xECC01356) - 161478229) ^ (v59 - ((2 * v59 + 640512698) & 0xE8ECB42E) - 2020797580);
  LODWORD(v59) = *(&unk_100265BF0 + (BYTE2(v48) ^ 0x6Fu));
  v73 = v72 ^ dword_1002636F0[HIBYTE(v69) ^ 0xC1];
  LODWORD(STACK[0x5A8]) = HIBYTE(v44);
  v74 = (BYTE1(v52) ^ 0x85) + (BYTE1(v52) ^ 0xCC547CAB);
  v75 = dword_100282AA0[BYTE1(v52) ^ 0xDE] + (v74 ^ 0x30089078) - ((2 * v74) & 0x98A8DB0E) + 1;
  v76 = dword_100267470[v69 ^ 0x59];
  HIDWORD(v68) = v76 ^ 0x210D2;
  LODWORD(v68) = v76 ^ 0x18EC0000;
  v77 = dword_1002636F0[HIBYTE(v44) ^ 0x70] ^ v59 ^ (v75 - ((2 * v75 - 1625270830) & 0x8A3EF10C) - 1800428689) ^ ((v68 >> 18) - ((2 * (v68 >> 18)) & 0xE42FC514) - 233315702);
  v78 = (BYTE1(v69) ^ 0xCC547CE0) + (BYTE1(v69) ^ 0xCE);
  v79 = dword_100282AA0[BYTE1(v69) ^ 0x95] + (v78 ^ 0xA1008483) - ((2 * v78) & 0x98A8F2F8) + 1;
  v80 = dword_100267470[v44 ^ 0x57];
  HIDWORD(v68) = v80 ^ 0x210D2;
  LODWORD(v68) = v80 ^ 0x18EC0000;
  v81 = ((v68 >> 18) - ((2 * (v68 >> 18)) & 0x172606B0) - 1953299624) ^ 0x8B930358;
  v82 = (v54 + (v53 ^ 0x2D4EA5DD) - 2 * ((v54 + (v53 ^ 0x2D4EA5DD)) & 0x23B3090F ^ (v53 ^ 0x2D4EA5DD) & 8) + 598935815) ^ 0x233199C4 ^ (v79 - ((2 * v79 + 87059900) & 0x6A0A592) + 1642629543);
  v83 = (v82 & v81) - ((2 * (v82 & v81)) & 0x459B1DF4);
  v84 = ((v82 + v81) ^ 0xFAE99B9F) + ((2 * (v82 + v81)) & 0xF5D3373E) + 85353570 + ((((2 * v83 - 979689996) ^ 0xC59B1DF4) - ((2 * ((2 * v83 - 979689996) ^ 0xC59B1DF4)) & 0x8EAAE4D4) + 1196782186) ^ 0xB8AA8D95);
  v85 = v84 - ((2 * v84) & 0x3BBB46FC) + 501064574;
  v86 = (v56 ^ 0xE9) + 23 + ((2 * v56) & 0xD2);
  if (((2 * v56) & 0x1FC) + (v56 ^ 0x5BEF62FE) != 1542415102)
  {
    v86 = 0;
  }

  v87 = ((BYTE1(v44) ^ 9) - v86 + (~(2 * ((BYTE1(v44) ^ 9) - v86)) | 0x97) - 75);
  v88 = dword_100282AA0[v87 ^ 0xEF] + (((v87 ^ 0xB4) + (v87 ^ 0xCC547C9A)) ^ 0x40B11D00) - ((2 * ((v87 ^ 0xB4) + (v87 ^ 0xCC547C9A))) & 0x1888C1FE) + 1;
  v89 = dword_100267470[v48 ^ 0xBE];
  HIDWORD(v90) = v89 ^ 0x210D2;
  LODWORD(v90) = v89 ^ 0x18EC0000;
  v91 = *(&unk_100265BF0 + (BYTE2(v69) ^ 0x4Bu)) ^ dword_1002636F0[HIBYTE(v52) ^ 0x35] ^ ((v90 >> 18) - ((2 * (v90 >> 18)) & 0xAA74AD9E) + 1429886671) ^ (v88 - ((2 * v88 + 2110733506) & 0x9D03B654) - 1922467445);
  v92 = (BYTE1(v85) ^ 0xCC547CDE) + (BYTE1(v85) ^ 0xF0);
  v93 = dword_100282AA0[BYTE1(v85) ^ 0xAB] + (v92 ^ 0x80502211) - ((2 * v92) & 0x9808BBDC);
  v94 = dword_100267470[v91 ^ 0xD9];
  HIDWORD(v90) = v94 ^ 0x210D2;
  LODWORD(v90) = v94 ^ 0x18EC0000;
  v95 = *(&unk_100265BF0 + (BYTE2(v77) ^ 0x21u)) ^ dword_1002636F0[HIBYTE(v73) ^ 0x9B] ^ ((v90 >> 18) - ((2 * (v90 >> 18)) & 0x8EC893BC) - 949728802) ^ (v93 + 1 - 2 * ((v93 + 2135464273) & 0x7A4893FD ^ (v93 + 1) & 4) + 2039557449);
  v96 = (BYTE1(v91) ^ 0x66) + (BYTE1(v91) ^ 0xCC547C48);
  v97 = dword_100282AA0[(v91 >> 8) & 0x5B ^ 0x56D02F6B ^ (((v91 >> 8) & 0xA4 ^ 0x7F) - ((2 * ((v91 >> 8) & 0xA4 ^ 0x7F)) & 0x52) + 1456484137)] + (v96 ^ 0x18C1821) + 1;
  v98 = v97 - ((2 * v96) & 0x98A0CBBC) - 2 * ((v97 - ((2 * v96) & 0x98A0CBBC) + 34382656) & 0x2B115FB ^ v97 & 3);
  v99 = dword_100267470[v73 ^ 0xB9];
  HIDWORD(v90) = v99 ^ 0x210D2;
  LODWORD(v90) = v99 ^ 0x18EC0000;
  v100 = *(&unk_100265BF0 + (BYTE2(v85) ^ 0xB4u)) ^ dword_1002636F0[HIBYTE(v77) ^ 0x32] ^ ((v90 >> 18) + 7076166 + (~(2 * (v90 >> 18)) | 0xFF280D75)) ^ (v98 + 12433720);
  v101 = (BYTE1(v73) ^ 0xD7) + (BYTE1(v73) ^ 0xCC547CF9);
  v102 = (v101 ^ 0x8C044004) - ((2 * v101) & 0x80A07BF6) + dword_100282AA0[BYTE1(v73) ^ 0x8C] + 1;
  v103 = dword_100267470[v77 ^ 0xFD];
  HIDWORD(v90) = v103 ^ 0x210D2;
  LODWORD(v90) = v103 ^ 0x18EC0000;
  v104 = HIBYTE(v91) ^ 0xAB;
  v105 = *(&unk_100265BF0 + (BYTE2(v91) ^ 0x47u)) ^ (v102 - ((2 * v102 + 1730737850) & 0x698D732A) + 677065970) ^ ((v90 >> 18) - ((2 * (v90 >> 18)) & 0xB470ACC2) + 1513641569) ^ dword_1002636F0[HIBYTE(v85) ^ 0xEC];
  v106 = dword_100267470[v85 ^ 0x4D];
  HIDWORD(v90) = v106 ^ 0x210D2;
  LODWORD(v90) = v106 ^ 0x18EC0000;
  v107 = ((2 * (v90 >> 18)) & 0x425FDF06) + ((v90 >> 18) ^ 0xA12FEF83);
  v108 = (((BYTE1(v77) ^ 0xCC547C47) + (BYTE1(v77) ^ 0x69)) ^ 0x44003848) - ((2 * ((BYTE1(v77) ^ 0xCC547C47) + (BYTE1(v77) ^ 0x69))) & 0x10A88B6E) + dword_100282AA0[BYTE1(v77) ^ 0x32] + 1;
  v109 = *(&unk_100265BF0 + (BYTE2(v73) ^ 0xBu)) ^ (v108 - ((2 * v108 + 1999701554) & 0xADDA876C) + 310757071) ^ dword_1002636F0[v104];
  v110 = v107 + 1590694013;
  v111 = (((v109 ^ (v107 + 1590694013) ^ 0x4B91A9C1) - 2 * ((v109 ^ (v107 + 1590694013) ^ 0x4B91A9C1) & 0x1BAA7D6F ^ (v109 ^ (v107 + 1590694013)) & 4) - 1683325589) ^ 0x57B70F34) + v107;
  v112 = (v109 ^ ((v109 ^ 0x878CDB9E) - ((2 * (v109 ^ 0x878CDB9E) + 2) & 0x8ED846FE) - 949214336) ^ 0x6C306F34 ^ (v111 - ((2 * v111 - 1113579268) & 0xA65ED054) + 838826152)) + v110;
  v113 = v112 - ((2 * v112) & 0x2E7010C8) + 389548132;
  v114 = (((2 * v105) ^ 0x80C11046) - 2 * (((2 * v105) ^ 0x80C11046) & 0x18CA97BA ^ (2 * v105) & 0x18) + 952801186) & 0x3DB9F874;
  v115 = ((2 * v113) & 0xE79F1F62 ^ 0x47860A00) + (v113 ^ 0x581CEABD) - 1942982577;
  v116 = (v115 >> 8) - ((v115 >> 7) & 0x30);
  v117 = (v105 ^ 0xC0608823) + 517798970;
  v118 = v117 ^ 0x7E39E8FE;
  v119 = (2 * v117) & 0xFC73D1FC;
  if ((v100 & 0x20) != 0)
  {
    v120 = -32;
  }

  else
  {
    v120 = 32;
  }

  v121 = v120 + (v100 ^ 0xDA) - 2 * ((v120 + (v100 ^ 0xDA)) & 0xF3 ^ (v100 ^ 0xDA) & 3);
  v122 = v118 + v119 - 2117724413 + (v114 ^ 0xC7776FDF) - ((2 * (v118 + v119 - 2117724413 + (v114 ^ 0xC7776FDF))) & 0xAEED2B30);
  v123 = v115 >= 0xC4967F02;
  if (v115 >= 0xC4967F02)
  {
    v124 = -50;
  }

  else
  {
    v124 = -48;
  }

  v125 = v122 - 680094312;
  if (v123)
  {
    v127 = 2;
  }

  else
  {
    v127 = 0;
  }

  v128 = (BYTE1(v125) ^ 0xCC547CBB) + (BYTE1(v125) ^ 0x95);
  v129 = dword_100282AA0[BYTE1(v125) ^ 0xCE] + (v128 ^ 0x50060C00) - ((2 * v128) & 0x18A0E3FE) + 1;
  v126 = ((2 * v113) & 0x62) + (v113 ^ 0xBD) + v124;
  v130 = dword_100267470[(v126 + v127 + 127 - ((2 * (v126 + v127 + 127)) & 0x66) - 77) ^ 0xFA];
  HIDWORD(v131) = v130 ^ 0x210D2;
  LODWORD(v131) = v130 ^ 0x18EC0000;
  v132 = dword_1002636F0[HIBYTE(v95) ^ 0xD0] ^ *(&unk_100265BF0 + (BYTE2(v100) ^ 0x64u)) ^ (v129 - ((2 * v129 + 1596284610) & 0x77CCF306) + 1803102436) ^ ((v131 >> 18) - ((2 * (v131 >> 18)) & 0xFE41B404) + 2132859394);
  v133 = (v116 - 104);
  v134 = dword_100282AA0[v133 ^ 0xC3] + (((v133 ^ 0x98) + (v133 ^ 0xCC547CB6)) ^ 0x565A0102) - ((2 * ((v133 ^ 0x98) + (v133 ^ 0xCC547CB6))) & 0x1008F9FA) + 1;
  v135 = dword_100267470[v95 ^ 0x96];
  v136 = v134 - ((2 * v134 + 1383953598) & 0x529886D2) - 762643000;
  HIDWORD(v131) = v135 ^ 0x210D2;
  LODWORD(v131) = v135 ^ 0x18EC0000;
  v137 = *(&unk_100265BF0 + (BYTE2(v125) ^ 0xB6u)) ^ dword_1002636F0[HIBYTE(v100) ^ 0xF8] ^ ((v131 >> 18) - ((2 * (v131 >> 18)) & 0xA973ADA6) - 726018349);
  v138 = (BYTE1(v95) ^ 0x86) + (BYTE1(v95) ^ 0xCC547CA8);
  v139 = dword_100282AA0[BYTE1(v95) ^ 0xDD] + (v138 ^ 0xC0211D06) - ((2 * v138) & 0x18A8C1F2) + 1;
  v140 = dword_100267470[(v121 - 16) ^ 0x99];
  HIDWORD(v131) = v140 ^ 0x210D2;
  LODWORD(v131) = v140 ^ 0x18EC0000;
  v141 = *(&unk_100265BF0 + (BYTE2(v113) ^ 0x13u)) ^ dword_1002636F0[HIBYTE(v125) ^ 0xD0] ^ ((v131 >> 18) - ((2 * (v131 >> 18)) & 0x31059ECE) + 411225959) ^ (v139 - ((2 * v139 + 2129607862) & 0xED8BB168) - 1237485809);
  v142 = dword_1002636F0[HIBYTE(v113) ^ 0x2C];
  v143 = (((v142 ^ 0x7FD5587A) - (v142 ^ 0x7C059A70) - ((2 * ((v142 ^ 0x7FD5587A) - (v142 ^ 0x7C059A70))) & 0xC9619442) - 458175967) ^ 0x1B4F35DD) + (v142 ^ 0x7FD5587A);
  v144 = dword_100282AA0[BYTE1(v100) ^ 0x62] + (((BYTE1(v100) ^ 0x39) + (BYTE1(v100) ^ 0xCC547C17)) ^ 0x41104C32) - ((2 * ((BYTE1(v100) ^ 0x39) + (BYTE1(v100) ^ 0xCC547C17))) & 0x1888639A) + 1;
  v145 = v144 - ((2 * v144 + 2098257502) & 0x8F71E1AE) + 104947718;
  HIDWORD(v131) = v137 ^ 0x20897FCD ^ v136;
  LODWORD(v131) = v137 ^ ~v136;
  v146 = v131 >> 30;
  HIDWORD(v131) = 1 - v146;
  LODWORD(v131) = (v146 - ((2 * v146) & 0x95B2B1C) + 78484878) ^ 0x1F0A34CC;
  v147 = (v131 >> 2) - ((2 * (v131 >> 2)) & 0xC39D82E0) - 506543760;
  v148 = dword_100267470[v125 ^ 0xD1];
  HIDWORD(v131) = v148 ^ 0x210D2;
  LODWORD(v131) = v148 ^ 0x18EC0000;
  v149 = ((v131 >> 18) - ((2 * (v131 >> 18)) & 0xD017786E) + 1745599543) ^ *(&unk_100265BF0 + (BYTE2(v95) ^ 0x70u)) ^ v145 ^ (v143 - ((2 * v143) & 0x2CD2E306) + 376009091);
  v150 = ((2 * v149) & 0xFF77AF7E ^ 0x48658702) + (v149 ^ 0xDB891C7E);
  v151 = ((v150 + 4466753) >> 8) - (((v150 + 4466753) >> 7) & 0xE4);
  v152 = v150 + 4466753 >= 0x95933CFA;
  if (v150 + 4466753 >= 0x95933CFA)
  {
    v153 = -48;
  }

  else
  {
    v153 = -54;
  }

  v154 = v150 + v153;
  if (v152)
  {
    v155 = -6;
  }

  else
  {
    v155 = 0;
  }

  v156 = v154 + v155 + 119 - ((2 * (v154 + v155 + 119)) & 0x56);
  v157 = (BYTE1(v141) ^ 0xB) + (BYTE1(v141) ^ 0xCC547C25);
  v158 = dword_100282AA0[BYTE1(v141) ^ 0x50] + (v157 ^ 0x9A144844) - ((2 * v157) & 0x88806B76) + 1;
  v159 = dword_100267470[(v156 + 43) ^ 0x62];
  HIDWORD(v160) = v159 ^ 0x210D2;
  LODWORD(v160) = v159 ^ 0x18EC0000;
  v161 = *(&unk_100265BF0 + (BYTE2(v147) ^ 0x41u)) ^ dword_1002636F0[HIBYTE(v132) ^ 0x68] ^ (v158 - ((2 * v158 + 1258874426) & 0x68F0E88C) - 1711478941) ^ ((v160 >> 18) - ((2 * (v160 >> 18)) & 0xD79301DC) - 339115794);
  v162 = (v151 - 14);
  v163 = dword_1002636F0[HIBYTE(v147) ^ 0xFE] ^ *(&unk_100265BF0 + (BYTE2(v141) ^ 0x14u)) ^ 0x2E9E67D7;
  v164 = dword_100282AA0[v162 ^ 0xA9] + (((v162 ^ 0xF2) + (v162 ^ 0xCC547CDC)) ^ 0x26C5A04) - ((2 * ((v162 ^ 0xF2) + (v162 ^ 0xCC547CDC))) & 0x98204BF6) - 47423138;
  v165 = ((v164 + v163) ^ 0xF7FE5B9E) + ((2 * (v164 + v163)) & 0xEFFCB73C) + 134325347 + ((((2 * ((v164 & v163) - ((2 * (v164 & v163)) & 0x3F3BE1EC)) + 1060889068) ^ 0x3F3BE1EC) - ((2 * ((2 * ((v164 & v163) - ((2 * (v164 & v163)) & 0x3F3BE1EC)) + 1060889068) ^ 0x3F3BE1EC)) & 0xB044FF40) + 1478655904) ^ 0xA7DD805F);
  v166 = dword_100267470[v132 ^ 8];
  HIDWORD(v160) = v166 ^ 0x210D2;
  LODWORD(v160) = v166 ^ 0x18EC0000;
  v167 = (v165 - ((2 * v165) & 0x6820732) - 2092891239) ^ ((v160 >> 18) - ((2 * (v160 >> 18)) & 0x69806EE8) + 885012340);
  v168 = (BYTE1(v132) ^ 0xCC547CDF) + (BYTE1(v132) ^ 0xF1);
  v169 = dword_100282AA0[BYTE1(v132) ^ 0xAA] + (v168 ^ 0x80800342) - ((2 * v168) & 0x98A8F97A) + 1;
  v170 = dword_100267470[v147 ^ 0x9E];
  HIDWORD(v160) = v170 ^ 0x210D2;
  LODWORD(v160) = v170 ^ 0x18EC0000;
  v171 = dword_1002636F0[HIBYTE(v141) ^ 0xF] ^ *(&unk_100265BF0 + (BYTE2(v149) ^ 0xF2u)) ^ (v169 - ((2 * v169 + 1043427390) & 0x390581B0) - 1684309769) ^ ((v160 >> 18) - ((2 * (v160 >> 18)) & 0x37299226) - 1684748013);
  v172 = BYTE1(v147);
  v173 = (BYTE1(v147) ^ 0xCC547C10) + (BYTE1(v147) ^ 0x3E);
  v174 = dword_100282AA0[v172 ^ 0x65] + (v173 ^ 0x8B541004) - ((2 * v173) & 0x8800DBF6) + 1;
  v175 = dword_100267470[v141 ^ 0xD0];
  HIDWORD(v160) = v175 ^ 0x210D2;
  LODWORD(v160) = v175 ^ 0x18EC0000;
  v176 = *(&unk_100265BF0 + (BYTE2(v132) ^ 0xA9u)) ^ dword_1002636F0[HIBYTE(v149) ^ 0x23] ^ ((v160 >> 18) - ((2 * (v160 >> 18)) & 0x7AF4F1FA) - 1116047107) ^ (v174 - ((2 * v174 - 393652550) & 0x96AAFD8A) - 1080415710);
  v177 = (BYTE1(v171) ^ 0x64) + (BYTE1(v171) ^ 0xCC547C4A);
  v178 = dword_100282AA0[BYTE1(v171) ^ 0x3F] + (v177 ^ 0xC810809) - ((2 * v177) & 0x80A8EBEC) + 1;
  v179 = dword_100267470[v176 ^ 0x6B];
  HIDWORD(v160) = v179 ^ 0x210D2;
  LODWORD(v160) = v179 ^ 0x18EC0000;
  v180 = *(&unk_100265BF0 + (BYTE2(v167) ^ 0xFu)) ^ dword_1002636F0[HIBYTE(v161) ^ 0xCB] ^ ((v160 >> 18) + 5839634 - ((2 * (v160 >> 18)) & 0xB24930) + 2438) ^ (v178 - ((2 * v178 + 1714382512) & 0x66EAB506) + 646778331);
  v181 = (BYTE1(v176) ^ 0x7D) + (BYTE1(v176) ^ 0xCC547C53);
  v182 = dword_100282AA0[BYTE1(v176) ^ 0x26] + (v181 ^ 0x90602080) - ((2 * v181) & 0x9828BAFE) + 1;
  v183 = v182 - ((2 * v182 + 1584477634) & 0x62D132BE) + 547435584;
  v184 = dword_100267470[v161 ^ 0xC4];
  v185 = ((v184 << 14) ^ 0x84348000) - ((2 * ((v184 << 14) ^ 0x84348000)) & 0x82CE8000) + 1097294041;
  v186 = dword_1002636F0[HIBYTE(v167) ^ 0xDB] ^ *(&unk_100265BF0 + (BYTE2(v171) ^ 0x9Eu)) ^ (v184 >> 18) ^ v183;
  v187 = (BYTE1(v161) ^ 0x78) + (BYTE1(v161) ^ 0xCC547C56);
  v188 = dword_100282AA0[BYTE1(v161) ^ 0x23] + (v187 ^ 0x503C1605) - ((2 * v187) & 0x1880D3F4) + 1;
  v189 = dword_1002636F0[HIBYTE(v171) ^ 0xB6] ^ *(&unk_100265BF0 + (BYTE2(v176) ^ 0x41u)) ^ 0x8235101E ^ (v188 + 1544031540 - ((2 * v188 + 1589201592) & 0x5956EF92) + 4081);
  v190 = v189 - ((2 * v189) & 0x2096723A) - 1874118371;
  v191 = v171 ^ 0x24;
  if (v191 >= 0xB3)
  {
    v191 -= 179;
  }

  v192 = (v171 ^ 0x24) + (v191 ^ 0x80) - 2 * v191 + 0x80;
  v193 = dword_100267470[v167 ^ 0xF1];
  HIDWORD(v194) = v193 ^ 0x210D2;
  LODWORD(v194) = v193 ^ 0x18EC0000;
  v195 = (v191 ^ 0x7F76ABFE) + ((2 * v191) & 0x1FC) - 2138483710 + ((v192 - ((2 * v192) & 0x80) + 64) ^ 0x40);
  v196 = v195 + 1582438282 - ((2 * v195) & 0xBCA42F86);
  v197 = v190 ^ ((v194 >> 18) - ((2 * (v194 >> 18)) & 0xA3A84670) - 774626504);
  v198 = (BYTE1(v167) ^ 0x58) + (BYTE1(v167) ^ 0xCC547C76);
  v199 = dword_100282AA0[BYTE1(v167) ^ 3] + (v198 ^ 0x92A7018) - ((2 * v198) & 0x88A81BCE) + 1;
  v200 = dword_100267470[(v196 + 57) ^ 0x5E52178A];
  HIDWORD(v194) = v200 ^ 0x210D2;
  LODWORD(v194) = v200 ^ 0x18EC0000;
  v201 = dword_1002636F0[HIBYTE(v176) ^ 0xB3] ^ *(&unk_100265BF0 + (BYTE2(v161) ^ 0x70u)) ^ (v199 - ((2 * v199 + 14456466) & 0x32C693E) - 133922840) ^ ((v194 >> 18) - ((2 * (v194 >> 18)) & 0x4DBED6C8) - 1495307420);
  v202 = v186 ^ v185 ^ 0x559D563E;
  v203 = (BYTE1(v197) ^ 0xAE) + (BYTE1(v197) ^ 0xCC547C80);
  v204 = dword_100282AA0[BYTE1(v197) ^ 0xF5] + (v203 ^ 0x4C4C1802) - ((2 * v203) & 0x20CBFA) + 1;
  v205 = dword_100267470[v201 ^ 0x13];
  HIDWORD(v194) = v205 ^ 0x210D2;
  LODWORD(v194) = v205 ^ 0x18EC0000;
  v206 = *(&unk_100265BF0 + (((BYTE2(v202) ^ 0x5C) + 192) ^ 0x7EF9FD7F) + ((2 * ((BYTE2(v202) ^ 0x5C) + 192)) & 0xFFFFFEFF) + ((((2 * HIWORD(v202)) ^ 0xC0B8) - 2 * (((2 * HIWORD(v202)) ^ 0xC0B8) & 0xA6 ^ (2 * HIWORD(v202)) & 2) + 421) | 0xFFFFFE7F) - 2130312574) ^ dword_1002636F0[HIBYTE(v180) ^ 0x21] ^ (v204 - ((2 * v204 + 1721321150) & 0x534EB342) + 1559493888) ^ ((v194 >> 18) - ((2 * (v194 >> 18)) & 0x46832B06) + 591500675);
  v207 = (BYTE1(v201) ^ 0x8D) + (BYTE1(v201) ^ 0xCC547CA3);
  v208 = dword_100282AA0[BYTE1(v201) ^ 0xD6] + (v207 ^ 0x41804941) - ((2 * v207) & 0x18A8697C);
  v209 = dword_100267470[v180 ^ 0xA3];
  HIDWORD(v194) = v209 ^ 0x210D2;
  LODWORD(v194) = v209 ^ 0x18EC0000;
  v210 = *(&unk_100265BF0 + (BYTE2(v197) ^ 0x4Cu)) ^ dword_1002636F0[((v186 ^ v185) >> 24) ^ 0xB2] ^ ((v194 >> 18) - ((2 * (v194 >> 18)) & 0x9D95AD66) - 825567565) ^ (v208 + 1 - 2 * ((v208 + 1041789473) & 0x7FE3AB9B ^ (v208 + 1) & 0x10) - 1107550805);
  v211 = (BYTE1(v180) ^ 0xCC547CE5) + (BYTE1(v180) ^ 0xCB);
  v212 = dword_100267470[v186 ^ 0x79];
  HIDWORD(v194) = v212 ^ 0x210D2;
  LODWORD(v194) = v212 ^ 0x18EC0000;
  v213 = *(&unk_100265BF0 + (BYTE2(v201) ^ 0xA1u)) ^ dword_1002636F0[HIBYTE(v197) ^ 0xE] ^ ((v194 >> 18) - ((2 * (v194 >> 18)) & 0x226B6646) + 288731939) ^ ((v211 ^ 0x8A002000) - ((2 * v211) & 0x88A8BBFE) + dword_100282AA0[BYTE1(v180) ^ 0x90] + 1590694014 - ((2 * ((v211 ^ 0x8A002000) - ((2 * v211) & 0x88A8BBFE) + dword_100282AA0[BYTE1(v180) ^ 0x90] + 1) - 349096254) & 0xD26EEAFE) + 99);
  v214 = *(&unk_100265BF0 + (BYTE2(v180) ^ 0xF9u)) ^ dword_1002636F0[HIBYTE(v201) ^ 0x91];
  v215 = dword_100282AA0[BYTE1(v202) ^ 0x36] + (((BYTE1(v202) ^ 0xCC547C43) + (BYTE1(v202) ^ 0x6D)) ^ 0x5020480) - ((2 * ((BYTE1(v202) ^ 0xCC547C43) + (BYTE1(v202) ^ 0x6D))) & 0x90A8F2FE);
  v216 = (2 * v215 - 181572156) & 0xF15EDD6C;
  v215 += 1933976984;
  HIDWORD(v194) = v214 ^ v215 ^ 1;
  LODWORD(v194) = v214 ^ (v215 - v216) ^ 0x56310960;
  v217 = (v194 >> 2) - ((2 * (v194 >> 2)) & 0xA5927DB0) - 758563112;
  v218 = dword_100267470[v197 ^ 0x27];
  HIDWORD(v194) = v218 ^ 0x210D2;
  LODWORD(v194) = v218 ^ 0x18EC0000;
  v219 = (v194 >> 18) - ((2 * (v194 >> 18)) & 0xCFFDAA);
  HIDWORD(v194) = v217 ^ 0x3805BEA9;
  LODWORD(v194) = v217 ^ 0x40000000;
  v220 = ((v194 >> 30) - ((2 * (v194 >> 30)) & 0xA6CEB738) - 748201060) ^ (v219 + 6815445);
  v221 = (BYTE1(v213) ^ 0xA0) + (BYTE1(v213) ^ 0xCC547C8E);
  v222 = dword_100282AA0[BYTE1(v213) ^ 0xFB] + (v221 ^ 0x4C400464) - ((2 * v221) & 0x28F336) + 1;
  v223 = dword_100267470[v220 ^ 0x9A];
  HIDWORD(v194) = v223 ^ 0x210D2;
  LODWORD(v194) = v223 ^ 0x18EC0000;
  v224 = *(&unk_100265BF0 + (BYTE2(v210) ^ 0x76u)) ^ dword_1002636F0[HIBYTE(v206) ^ 0x7E] ^ (v222 - ((2 * v222 + 1722904058) & 0x7EE36192) + 1925867462) ^ ((v194 >> 18) - ((2 * (v194 >> 18)) & 0x8287BF9E) - 1052516401);
  v225 = (BYTE1(v220) ^ 0xCC547C23) + (BYTE1(v220) ^ 0xD);
  v226 = dword_100282AA0[BYTE1(v220) ^ 0x56] + (v225 ^ 0xC200010) - ((2 * v225) & 0x80A8FBDE) + 1;
  v227 = dword_100267470[v206 ^ 0xAE];
  HIDWORD(v194) = v227 ^ 0x210D2;
  LODWORD(v194) = v227 ^ 0x18EC0000;
  v228 = *(&unk_100265BF0 + (BYTE2(v213) ^ 0xDBu)) ^ dword_1002636F0[HIBYTE(v210) ^ 0x95] ^ ((v194 >> 18) - ((2 * (v194 >> 18)) & 0x48AA53D0) - 1537922584) ^ (v226 - ((2 * v226 - 420383070) & 0xBF4F1452) + 1394623866);
  v229 = (BYTE1(v206) ^ 0xCC547C93) + (BYTE1(v206) ^ 0xBD);
  v230 = dword_100282AA0[BYTE1(v206) ^ 0xE6] + (v229 ^ 0x211802D4) - ((2 * v229) & 0x9888FA56) + 1;
  v231 = dword_100267470[v210 ^ 0xC7];
  v232 = ((((v231 ^ 0x18EE10D2) << (STACK[0x5A8] & 0xE)) - ((2 * ((v231 ^ 0x18EE10D2) << (STACK[0x5A8] & 0xE))) & 0xE8A6E352) - 195858007) ^ 0xF45371A9) << (STACK[0x5A8] & 0xE ^ 0xE);
  v233 = ((v232 - ((2 * v232) & 0x762A6B0A) - 1156237947) ^ 0xBB153585) + ((v231 >> 18) ^ 0x63B);
  v234 = dword_1002636F0[HIBYTE(v213) ^ 0x2F] ^ *(&unk_100265BF0 + (BYTE2(v220) ^ 0x56u)) ^ (v230 - ((2 * v230 + 1023504666) & 0x6EDE2F96) - 1779445672) ^ (v233 - ((2 * v233) & 0x57D58F66) - 1410676813);
  v235 = (BYTE1(v210) ^ 0xB2) + (BYTE1(v210) ^ 0xCC547C9C);
  v236 = dword_1002636F0[HIBYTE(v220) ^ 0xA5] ^ *(&unk_100265BF0 + (BYTE2(v206) ^ 0x7Cu));
  v237 = dword_100282AA0[BYTE1(v210) ^ 0xE9] + (v235 ^ 0x9808408) - ((2 * v235) & 0x88A8F3EE) + 1;
  v238 = v237 - ((2 * v237 - 332370254) & 0xB68C479E) + 1365138216;
  v239 = ((2 * v236) & 0x6BF4F7E6 ^ 0x4934C7A6) + (v236 ^ 0x1B641C24);
  HIDWORD(v194) = v224 ^ 0x8D1;
  LODWORD(v194) = v224 ^ 0x50AC0000;
  v240 = (v194 >> 13) - ((2 * (v194 >> 13)) & 0x62C5AD7C) + 828561086;
  HIDWORD(v194) = v240 ^ 0xC36F;
  LODWORD(v194) = v240 ^ 0xE0100000;
  v241 = (v194 >> 19) - ((2 * (v194 >> 19)) & 0x3B4C2C82) - 1650059711;
  v242 = v239 - 905608179 + (v238 ^ ((v238 ^ 0xA4B9DC30) - ((2 * (v238 ^ 0xA4B9DC30) + 2) & 0xA9608420) + 1420837393) ^ 0xBB3656B6 ^ ((v236 ^ v238 ^ 0x8A27BBE7) + v239 - ((2 * ((v236 ^ v238 ^ 0x8A27BBE7) + v239) + 336267292) & 0x69806ED2) + 2126887799));
  v243 = dword_100267470[v213 ^ 0x18];
  HIDWORD(v194) = v243 ^ 0x210D2;
  LODWORD(v194) = v243 ^ 0x18EC0000;
  v244 = (v242 - ((2 * v242) & 0xB19BB8EA) - 657597323) ^ ((v194 >> 18) - ((2 * (v194 >> 18)) & 0x7F086722) - 1081855087);
  v245 = (BYTE1(v241) ^ 0xD3) + (BYTE1(v241) ^ 0xCC547CFD);
  v246 = dword_100282AA0[BYTE1(v241) ^ 0x88] + (v245 ^ 0x25A00102) - ((2 * v245) & 0x90A8F9FA) + 1;
  v247 = dword_100267470[v228 ^ 0x3B];
  v248 = ((v247 << 14) ^ 0x84348000) - ((2 * ((v247 << 14) ^ 0x84348000)) & 0xAE798000) - 683883952;
  v249 = v247 >> 18;
  v250 = ((v247 >> 17) & 0x7986 ^ 0x806) + ((v247 >> 18) & 0x3CE7 ^ 0xFEFEFBF0);
  v251 = v249 & 0x318 ^ ((v249 & 0x318 ^ 0xFFFFFDE7) - ((2 * (v249 & 0x318 ^ 0xFFFFFDE7) + 2) & 0xCB17C0) + 6654952) ^ 0xB22E4D86 ^ (v250 + (v249 ^ 0xFFFFF9C4) - ((2 * (v250 + (v249 ^ 0xFFFFF9C4)) + 33685596) & 0x649788F2) - 1286814553);
  v252 = dword_1002636F0[HIBYTE(v234) ^ 0xF6] ^ v248 ^ *(&unk_100265BF0 + (BYTE2(v244) ^ 2u)) ^ (v250 + 16843009 + v251 - 212 - ((2 * (v250 + 16843009 + v251 - 212)) & 0x91822444) - 926871006) ^ (v246 - ((2 * v246 + 871462078) & 0x6D77E6F2) - 1867207208);
  v253 = ((2 * v252) & 0xC373733A ^ 0x3300138) + (v252 ^ 0x6661FD41);
  v254 = v253 + 507922019 + ((v253 + (v252 ^ 0x78DA7943) - ((2 * (v253 + (v252 ^ 0x78DA7943)) + 1015844040) & 0xA80A1568) + 1917538584) ^ 0xABFAF574);
  v255 = v254 - ((2 * v254) & 0x7E124736) + 1057563547;
  v256 = BYTE2(v255) ^ 9;
  if (v256 >= 0xEB)
  {
    v257 = v256 - 235;
  }

  else
  {
    v257 = BYTE2(v255) ^ 9;
  }

  v258 = (BYTE1(v234) ^ 0xCC547CCF) + (BYTE1(v234) ^ 0xE1);
  v259 = dword_100282AA0[BYTE1(v234) ^ 0xBA] + (v258 ^ 0x8B204110) - ((2 * v258) & 0x88A879DE) + 1;
  v260 = dword_100267470[v244 ^ 0x4F];
  HIDWORD(v261) = v260 ^ 0x210D2;
  LODWORD(v261) = v260 ^ 0x18EC0000;
  v262 = dword_1002636F0[HIBYTE(v241) ^ 0x68] ^ *(&unk_100265BF0 + (BYTE2(v228) ^ 4u)) ^ (v259 - ((2 * v259 - 386861918) & 0xEA73ABA0) + 1773293601) ^ ((v261 >> 18) - ((2 * (v261 >> 18)) & 0xE58E327A) - 221832899);
  v263 = (BYTE1(v244) ^ 0xD) + (BYTE1(v244) ^ 0xCC547C23);
  v264 = dword_100282AA0[BYTE1(v244) ^ 0x56] + (v263 ^ 0x8441408E) - ((2 * v263) & 0x90287AE2) + 1;
  v265 = dword_100267470[v241 ^ 0xD3];
  HIDWORD(v261) = v265 ^ 0x210D2;
  LODWORD(v261) = v265 ^ 0x18EC0000;
  v266 = *(&unk_100265BF0 + (BYTE2(v234) ^ 0x61u)) ^ dword_1002636F0[HIBYTE(v228) ^ 0xD4] ^ (v264 - ((2 * v264 - 156306010) & 0xC9717FA4) + 1611676325) ^ ((v261 >> 18) - ((2 * (v261 >> 18)) & 0x19720DD2) + 213452521);
  v267 = (BYTE1(v228) ^ 0x8E) + (BYTE1(v228) ^ 0xCC547CA0);
  v268 = dword_100282AA0[BYTE1(v228) ^ 0xD5] + (v267 ^ 0x9E35CC09) - ((2 * v267) & 0x808063EC) + 1;
  v269 = dword_100267470[v234 ^ 0xA8];
  HIDWORD(v261) = v269 ^ 0x210D2;
  LODWORD(v261) = v269 ^ 0x18EC0000;
  v270 = dword_1002636F0[HIBYTE(v244) ^ 0x42] ^ ((v261 >> 18) - ((2 * (v261 >> 18)) & 0x9D2A8FB0) - 829077544) ^ (v268 - ((2 * v268 - 1027219792) & 0xD082E65C) - 911973754) ^ *(&unk_100265BF0 + (BYTE2(v241) ^ 0xE0u));
  v271 = dword_1002603F0[HIBYTE(v262) ^ 0xB6];
  v272 = BYTE1(v255);
  v273 = dword_10025B090[BYTE1(v255) ^ 0x9B] ^ dword_10025C4D0[BYTE2(v266) ^ 0x71] ^ *(&unk_100262BD0 + ((LOBYTE(dword_1002636F0[HIBYTE(v244) ^ 0x42]) ^ ((v261 >> 18) - ((2 * (v261 >> 18)) & 0xB0) - 40) ^ (v268 - ((2 * v268 - 80) & 0x5C) - 122) ^ *(&unk_100265BF0 + 4 * (BYTE2(v241) ^ 0xE0u))) ^ 0x48u)) ^ (-1899677083 * v271 - ((227177674 * v271 + 209475006) & 0x985ABB2) + 1392574648) ^ ((BYTE2(v266) ^ 0x4D) - ((2 * (BYTE2(v266) ^ 0x4D) + 386) & 0xFFFFFFF7) + 558746300);
  v274 = (v257 ^ 0x6B) - 107 + ((2 * v257) & 0xD6);
  if (((2 * v257) & 0x1E6) + (v257 ^ 0x1E97FEF3) != 513277683)
  {
    v274 = 0;
  }

  v275 = ((BYTE2(v255) ^ 9) - v274 - ((2 * ((BYTE2(v255) ^ 9) - v274)) & 0xC3) - 31);
  v276 = dword_1002603F0[HIBYTE(v266) ^ 0x64];
  v277 = ((v275 ^ 0xE1) - ((2 * (v275 ^ 0xE1) + 386) & 0x3D2) - 47411030) ^ dword_10025C4D0[v275 ^ 0xDD];
  HIDWORD(v278) = v277 ^ 5;
  LODWORD(v278) = v277 ^ 0xFD14AB60;
  v279 = (v278 >> 5) - ((2 * (v278 >> 5)) & 0xA8B1E48A) + 1415115333;
  HIDWORD(v278) = v279 ^ 0x10ED7F3;
  LODWORD(v278) = v279 ^ 0x10000000;
  v280 = BYTE1(v270);
  v281 = *(&unk_100262BD0 + (v262 ^ 0x6Bu)) ^ dword_10025B090[BYTE1(v270) ^ 0xD6] ^ (-1899677083 * v276 - ((495613130 * v276 + 477910462) & 0x2B657D42) + 1676732800) ^ ((v278 >> 27) - ((2 * (v278 >> 27)) & 0x3D0DDBA8) - 1635324460);
  v282 = dword_1002603F0[HIBYTE(v255) ^ 0x65];
  v283 = ((2 * v266) & 0x17E ^ 0x64) + (v266 ^ 0x6B377E8D);
  v284 = BYTE2(v262);
  v285 = dword_10025C4D0[BYTE2(v262) ^ 0xB3];
  v286 = STACK[0x5C0];
  v287 = dword_1002603F0[HIBYTE(v270) ^ 0xCB];
  LOBYTE(v270) = BYTE1(v262);
  v288 = STACK[0x5B0];
  v289 = dword_10025B090[BYTE1(v262) ^ 0xCD] ^ dword_10025C4D0[BYTE2(v270) ^ 0x95] ^ *(&unk_100262BD0 + v283 + ((v283 + (v266 ^ 0xFFFFFFD6) - ((2 * (v283 + (v266 ^ 0xFFFFFFD6)) + 697369220) & 0xD7143DB4) + 5414940) ^ 0x9475E124) - 1798799039) ^ ((BYTE2(v270) ^ 0xA9) + 434003256 + ((2 * (BYTE2(v270) ^ 0xA9) + 130) & 0xEC ^ 0xCBBAFFFF)) ^ (-1899677083 * v282 - ((495613130 * v282 + 477910462) & 0x73DCCC8C) - 2010345179);
  v290 = BYTE1(v266);
  v291 = v290 ^ LOBYTE(dword_10025B090[v290 ^ 0xEF]) ^ v285 ^ (101 * v287 - ((-54 * v287 - 66) & 0xFE) + 94) ^ ((v284 ^ 0x8F) - ((2 * (v284 ^ 0x8F) - 126) & 0x34) - 37) ^ *(&unk_100262BD0 + 4 * (v255 ^ 0x80u));
  v292 = v290 ^ dword_10025B090[v290 ^ 0xEF] ^ v285 ^ (-1899677083 * v287 - ((495613130 * v287 - 1669573186) & 0xCB231CFE) - 1278232226) ^ ((v284 ^ 0x8F) - ((2 * (v284 ^ 0x8F) + 386) & 0x234) + 1932398555) ^ *(&unk_100262BD0 + (v255 ^ 0x80u)) ^ 0x4A0B3D2A;
  if ((((LOWORD(dword_10025B090[v290 ^ 0xEF]) ^ v285 ^ (14949 * v287 - ((29898 * v287 + 21950) & 0x1CFE) - 18082) ^ ((v284 ^ 0x8F) - ((2 * (v284 ^ 0x8F) + 386) & 0x234) + 4059)) ^ *(&unk_100262BD0 + 2 * (v255 ^ 0x80u))) & 0x100) != 0)
  {
    v293 = 256;
  }

  else
  {
    v293 = -256;
  }

  v294 = v292 + v293 + 697689744 + ~(2 * ((v292 + v293) & 0x2995E69F ^ v291 & 0x10));
  *(v288 + 4) = byte_10025FFA0[HIBYTE(v281) ^ 0xAFLL] ^ 0x42 ^ ((byte_10025FFA0[HIBYTE(v281) ^ 0xAFLL] >> 4) | 0x85);
  v295 = 17 * byte_100268CD0[BYTE1(v281) ^ 0x82];
  v296 = v295 - 2 * ((v295 + 92) & 0x4B ^ v295 & 2) - 91;
  *(v288 + 6) = v296 ^ 0x21 ^ (v296 >> 4) & 0xD;
  *(v288 + 3) = byte_1002622D0[(v273 ^ v272) ^ 0x77] & 0x2A ^ v273 ^ v272 ^ ((byte_1002622D0[(v273 ^ v272) ^ 0x77] & 0xD5 ^ 0x6F) - ((2 * (byte_1002622D0[(v273 ^ v272) ^ 0x77] & 0xD5 ^ 0x6F)) & 0xC3) - 31) ^ 0xFB;
  v297 = v289 ^ v270;
  v298 = (v289 ^ v270);
  v299 = byte_1002622D0[(v298 ^ (-642668236 - (v298 ^ 0x99) - ((448 - 2 * (v298 ^ 0x99)) & 0xB36350A8)) ^ ((v298 ^ 0xFFFFFF86) - ((2 * (v298 ^ 0xFFFFFF86) + 2) & 0x77AAA0C2) + 1003835490) ^ 0xE264F84C) + 224];
  v300 = (v297 & 0x40 ^ 0x7B) - 16;
  if (((v297 | v299) & 0x40) == 0)
  {
    v300 = (v297 | 0xBF) + 44;
  }

  *(v288 + 11) = v297 & 0xBF ^ 0x9D ^ ((v299 ^ 0x67) + v300 - 43 - ((2 * ((v299 ^ 0x67) + v300 - 43)) & 0x52) + 41);
  *(v288 + 15) = byte_1002622D0[v291 ^ 0x78] ^ v291 ^ 0x41;
  *(v288 + 5) = byte_100266530[BYTE2(v281) ^ 0xD7] ^ 0x1A;
  *(v288 + 13) = byte_100266530[BYTE2(v294) ^ 0x3CLL] ^ 0x1C;
  *v288 = byte_10025FFA0[HIBYTE(v273) ^ 0x13] ^ 0x5B ^ (byte_10025FFA0[HIBYTE(v273) ^ 0x13] >> 4) & 0xA;
  *(v288 + 8) = byte_10025FFA0[HIBYTE(v289) ^ 0xE1] ^ (byte_10025FFA0[HIBYTE(v289) ^ 0xE1] >> 4) & 0xA ^ 0x70;
  v301 = byte_100268CD0[BYTE1(v273) ^ 0xBDLL];
  v302 = 17 * v301 - ((34 * v301 - 72) & 0xFFFFFFEF) + 83;
  *(v288 + 2) = v302 ^ (v302 >> 4) & 0xD ^ 0xE3;
  v303 = byte_100268CD0[BYTE1(v289) ^ 0xC0];
  v304 = 17 * v303 - ((34 * v303 - 72) & 0xFFFFFF9F) + 43;
  *(v288 + 10) = ((v304 ^ 0x42 ^ (v304 >> 4) & 0xD) - ((2 * (v304 ^ 0x42 ^ (v304 >> 4) & 0xD)) & 0x9F) + 79) ^ 0x4F;
  *(v288 + 7) = byte_1002622D0[(v281 ^ v280) ^ 0x8BLL] ^ v281 ^ v280 ^ 0x14;
  *(v288 + 9) = byte_100266530[BYTE2(v289) ^ 0x7ALL] ^ 0x64;
  *(v288 + 12) = byte_10025FFA0[HIBYTE(v294) ^ 0x70] ^ 0x5C ^ (byte_10025FFA0[HIBYTE(v294) ^ 0x70] >> 4) & 0xA;
  v305 = 17 * byte_100268CD0[BYTE1(v294) ^ 0x19];
  v306 = v305 - 2 * ((v305 + 28) & 0x33 ^ v305 & 3) + 12;
  *(v288 + 14) = v306 ^ 0x7D ^ (((v306 & 0xF0) >> 4) | 0x62);
  STACK[0xB08] = v288;
  *(v288 + 1) = byte_100266530[BYTE2(v273) ^ 0x28] ^ 0xDB;
  v307 = -1063179407 * ((*(qword_100314AA8 + (dword_100314CB0 & 0x329353B8)) ^ v288) & 0x7FFFFFFF);
  *v288 ^= byte_10025D340[16 * ((-1063179407 * (v307 ^ HIWORD(v307))) >> 24)] ^ (113 * (v307 ^ BYTE2(v307)));
  return (*(&off_1002D7880 + v1))();
}