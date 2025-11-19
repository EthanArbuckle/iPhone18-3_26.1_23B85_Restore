void sub_1000135A8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_100004E38();
}

uint64_t sub_100013600(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 8) = *(v6 + 2);
      *a4 = v7;
      v8 = *(v6 + 1);
      *(a4 + 32) = v6[4];
      *(a4 + 16) = v8;
      v6[3] = 0;
      v6[4] = 0;
      v6[2] = 0;
      v6 += 5;
      a4 += 40;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    do
    {
      if (*(v5 + 39) < 0)
      {
        operator delete(v5[2]);
      }

      v5 += 5;
    }

    while (v5 != a3);
  }

  return sub_1000136C4(v10);
}

uint64_t sub_1000136C4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100010D20(a1);
  }

  return a1;
}

void sub_100013704(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v3 = *v3;
    }

    v4 = (a1 + 168);
    if (*(a1 + 191) < 0)
    {
      v4 = *v4;
    }

    *buf = 68289539;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2081;
    v19 = v3;
    v20 = 2081;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,save, filePath:%{private, location:escape_only}s, debugName:%{private, location:escape_only}s}", buf, 0x26u);
  }

  if (*(a1 + 192))
  {
    v5 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v5 = *v5;
    }

    sub_1000060C4(&__p, "0003");
    sub_1000ACC04(buf, v5, &__p);
    if (SBYTE3(v13) < 0)
    {
      operator delete(__p);
    }

    if (v22)
    {
      v6 = *(a1 + 152);
      operator new[]();
    }

    v9 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v10 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v10 = *v10;
      }

      __p = 68289283;
      v12[0] = 2082;
      *&v12[1] = "";
      v12[5] = 2081;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,#warning,cannotOpenFileToSave, history:%{private, location:escape_only}s}", &__p, 0x1Cu);
    }

    sub_1000ACF88(buf);
  }

  else
  {
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v8 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v8 = *v8;
      }

      *buf = 68289283;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2081;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,#warning,deferSavingTillFirstUnlock, history:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    *(a1 + 193) = 1;
  }
}

uint64_t sub_100013B08(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_100013BCC;
  block[3] = &unk_1001390F0;
  sub_10000F1DC(v4, a1 + 40);
  dispatch_async(v1, block);
  return sub_10000F274(v4);
}

void sub_100013BCC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_100013CB8;
  v3[3] = &unk_1001390F0;
  sub_10000F1DC(v4, a1 + 32);
  sub_100013CB8(v3);
  sub_10000F274(v4);
  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100013CB8(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_1000053C4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_100013D00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_100013E00;
  v7[3] = &unk_100139448;
  sub_100013FA4(v9, a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v7);

  return sub_100014174(v9);
}

void sub_100013E00(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_100013F08;
  v3[3] = &unk_100139448;
  sub_100013FA4(v5, a1 + 40);
  v4 = *(a1 + 32);
  sub_100013F08(v3);

  sub_100014174(v5);
  objc_autoreleasePoolPop(v2);
}

void sub_100013F08(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 64);
  if (!v2)
  {
    sub_1000053C4();
  }

  (*(*v2 + 48))(v2, &v3);
}

uint64_t sub_100013FA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_100014068(uint64_t a1)
{

  operator delete();
}

id sub_1000140BC(uint64_t a1, void *a2)
{
  *a2 = off_1001394B8;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t sub_100014104(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return _objc_release_x1();
}

uint64_t sub_100014128(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_100139528))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100014174(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1000141F4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1000142B8;
  block[3] = &unk_1001390F0;
  sub_10000F1DC(v4, a1 + 40);
  dispatch_async(v1, block);
  return sub_10000F274(v4);
}

void sub_1000142B8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_1000143A4;
  v3[3] = &unk_1001390F0;
  sub_10000F1DC(v4, a1 + 32);
  sub_1000143A4(v3);
  sub_10000F274(v4);
  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1000143A4(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_1000053C4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_1000143EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_1000144EC;
  v7[3] = &unk_100139540;
  sub_100014690(v9, a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v7);

  return sub_100014860(v9);
}

void sub_1000144EC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_1000145F4;
  v3[3] = &unk_100139540;
  sub_100014690(v5, a1 + 40);
  v4 = *(a1 + 32);
  sub_1000145F4(v3);

  sub_100014860(v5);
  objc_autoreleasePoolPop(v2);
}

void sub_1000145F4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 64);
  if (!v2)
  {
    sub_1000053C4();
  }

  (*(*v2 + 48))(v2, &v3);
}

uint64_t sub_100014690(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_100014754(uint64_t a1)
{

  operator delete();
}

id sub_1000147A8(uint64_t a1, void *a2)
{
  *a2 = off_1001395B0;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t sub_1000147F0(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return _objc_release_x1();
}

uint64_t sub_100014814(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_100139620))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100014860(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1000148E0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1000149A4;
  block[3] = &unk_1001390F0;
  sub_10000F1DC(v4, a1 + 40);
  dispatch_async(v1, block);
  return sub_10000F274(v4);
}

void sub_1000149A4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_100014A90;
  v3[3] = &unk_1001390F0;
  sub_10000F1DC(v4, a1 + 32);
  sub_100014A90(v3);
  sub_10000F274(v4);
  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100014A90(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_1000053C4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_100014AD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_100014BD8;
  v7[3] = &unk_100139638;
  sub_100014D7C(v9, a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v7);

  return sub_100014F4C(v9);
}

void sub_100014BD8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_100014CE0;
  v3[3] = &unk_100139638;
  sub_100014D7C(v5, a1 + 40);
  v4 = *(a1 + 32);
  sub_100014CE0(v3);

  sub_100014F4C(v5);
  objc_autoreleasePoolPop(v2);
}

void sub_100014CE0(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 64);
  if (!v2)
  {
    sub_1000053C4();
  }

  (*(*v2 + 48))(v2, &v3);
}

uint64_t sub_100014D7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_100014E40(uint64_t a1)
{

  operator delete();
}

id sub_100014E94(uint64_t a1, void *a2)
{
  *a2 = off_1001396A8;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t sub_100014EDC(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return _objc_release_x1();
}

uint64_t sub_100014F00(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_100139718))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100014F4C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100014FCC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_100015090;
  block[3] = &unk_1001390F0;
  sub_10000F1DC(v4, a1 + 40);
  dispatch_async(v1, block);
  return sub_10000F274(v4);
}

void sub_100015090(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_10001517C;
  v3[3] = &unk_1001390F0;
  sub_10000F1DC(v4, a1 + 32);
  sub_10001517C(v3);
  sub_10000F274(v4);
  objc_autoreleasePoolPop(v2);
}

uint64_t sub_10001517C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_1000053C4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_1000151C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_1000152C4;
  v7[3] = &unk_100139730;
  sub_100015468(v9, a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v7);

  return sub_100015638(v9);
}

void sub_1000152C4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_1000153CC;
  v3[3] = &unk_100139730;
  sub_100015468(v5, a1 + 40);
  v4 = *(a1 + 32);
  sub_1000153CC(v3);

  sub_100015638(v5);
  objc_autoreleasePoolPop(v2);
}

void sub_1000153CC(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 64);
  if (!v2)
  {
    sub_1000053C4();
  }

  (*(*v2 + 48))(v2, &v3);
}

uint64_t sub_100015468(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_10001552C(uint64_t a1)
{

  operator delete();
}

id sub_100015580(uint64_t a1, void *a2)
{
  *a2 = off_1001397A0;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t sub_1000155C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return _objc_release_x1();
}

uint64_t sub_1000155EC(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_100139810))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100015638(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100015728(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100139830;
  a2[1] = v2;
  return result;
}

void sub_100015754(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,init,load}", v3, 0x12u);
    }

    sub_10000FBBC(v1);
    *(v1 + 8) = 1;
  }
}

uint64_t sub_100015824(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000158E0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1001398B0;
  a2[1] = v2;
  return result;
}

__n128 sub_10001590C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0 && (*(v1 + 193) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 68289026;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,destroy,clear}", v9, 0x12u);
    }

    *(v1 + 8) = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v1 + 16) = _Q0;
    *(v1 + 160) = 0;
    sub_10000DBD8((v1 + 32));
  }

  return result;
}

uint64_t sub_1000159EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100015A38(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100015A38(a1, *a2);
    sub_100015A38(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_100015AFC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100139930;
  a2[1] = v2;
  return result;
}

void sub_100015B28(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,init,load}", v3, 0x12u);
    }

    sub_10000FBBC(v1);
    *(v1 + 8) = 1;
  }
}

uint64_t sub_100015BF8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100015CB4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1001399B0;
  a2[1] = v2;
  return result;
}

__n128 sub_100015CE0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0 && (*(v1 + 193) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 68289026;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,destroy,clear}", v9, 0x12u);
    }

    *(v1 + 8) = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v1 + 16) = _Q0;
    *(v1 + 160) = 0;
    sub_10000DBD8((v1 + 32));
  }

  return result;
}

uint64_t sub_100015DC0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_100015E0C(uint64_t a1, unsigned __int8 *a2)
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
      v5 = *(v2 + 25);
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

uint64_t *sub_100015ED8(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = sub_100015F30(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_100015F30(uint64_t *result, uint64_t *a2)
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

void sub_1000160CC(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      sub_10000509C();
    }

    v8 = v3 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1000168A0(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t sub_100016210(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100139A30;
  a2[1] = v2;
  return result;
}

void sub_10001623C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,init,load}", v3, 0x12u);
    }

    sub_1000126B0(v1);
    *(v1 + 8) = 1;
  }
}

uint64_t sub_10001630C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000163C8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100139AB0;
  a2[1] = v2;
  return result;
}

__n128 sub_1000163F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0 && (*(v1 + 193) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 68289026;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,destroy,clear}", v9, 0x12u);
    }

    *(v1 + 8) = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v1 + 16) = _Q0;
    *(v1 + 160) = 0;
    sub_10000DBD8((v1 + 32));
  }

  return result;
}

uint64_t sub_1000164D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100016590(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100139B30;
  a2[1] = v2;
  return result;
}

void sub_1000165BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,init,load}", v3, 0x12u);
    }

    sub_1000126B0(v1);
    *(v1 + 8) = 1;
  }
}

uint64_t sub_10001668C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100016748(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100139BB0;
  a2[1] = v2;
  return result;
}

__n128 sub_100016774(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0 && (*(v1 + 193) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 68289026;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,destroy,clear}", v9, 0x12u);
    }

    *(v1 + 8) = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v1 + 16) = _Q0;
    *(v1 + 160) = 0;
    sub_10000DBD8((v1 + 32));
  }

  return result;
}

uint64_t sub_100016854(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000168A0(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_100004E38();
}

uint64_t sub_100016958(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100139C30;
  a2[1] = v2;
  return result;
}

void sub_100016984(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,init,load}", v3, 0x12u);
    }

    sub_1000126B0(v1);
    *(v1 + 8) = 1;
  }
}

uint64_t sub_100016A54(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100016B10(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100139CB0;
  a2[1] = v2;
  return result;
}

__n128 sub_100016B3C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0 && (*(v1 + 193) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 68289026;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,destroy,clear}", v9, 0x12u);
    }

    *(v1 + 8) = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v1 + 16) = _Q0;
    *(v1 + 160) = 0;
    sub_10000DBD8((v1 + 32));
  }

  return result;
}

uint64_t sub_100016C1C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100016CD8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100139D30;
  a2[1] = v2;
  return result;
}

void sub_100016D04(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,init,load}", v3, 0x12u);
    }

    sub_1000126B0(v1);
    *(v1 + 8) = 1;
  }
}

uint64_t sub_100016DD4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100016E90(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100139DB0;
  a2[1] = v2;
  return result;
}

__n128 sub_100016EBC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0 && (*(v1 + 193) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 68289026;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,destroy,clear}", v9, 0x12u);
    }

    *(v1 + 8) = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v1 + 16) = _Q0;
    *(v1 + 160) = 0;
    sub_10000DBD8((v1 + 32));
  }

  return result;
}

uint64_t sub_100016F9C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100016FE8()
{
  sub_100017378(v5);
  v0 = sub_10008E020();
  sub_10008FEA0(v0, v5);
  v1 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289283;
    v10 = 2082;
    v11 = "";
    v12 = 1025;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleUtility,getCBAdvertiseRate, bleCBAdvertiseRate:%{private}d}", &buf, 0x18u);
  }

  if (((1 << v6) & 0x1004250040108401) != 0)
  {
    v2 = v6;
  }

  else
  {
    v2 = 60;
  }

  if (v6 <= 0x3C)
  {
    v3 = v2;
  }

  else
  {
    v3 = 60;
  }

  sub_100017590(&v8);
  sub_100017590(&v7);
  return v3;
}

BOOL sub_100017130()
{
  sub_100017378(v4);
  v0 = sub_10008E020();
  sub_10008FEA0(v0, v4);
  v1 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289283;
    v9 = 2082;
    v10 = "";
    v11 = 1025;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleUtility,getBleAlertVersion, bleDataVersion:%{private}d}", &buf, 0x18u);
  }

  v2 = v5 == 1;
  sub_100017590(&v7);
  sub_100017590(&v6);
  return v2;
}

uint64_t sub_100017254()
{
  sub_100017378(v4);
  v0 = sub_10008E020();
  sub_10008FEA0(v0, v4);
  v1 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289283;
    v9 = 2082;
    v10 = "";
    v11 = 1025;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleUtility,getBleAdvertisementTimePrecision, bleAdvertisementTimePrecisionInMSec:%{private}d}", &buf, 0x18u);
  }

  if (v5 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v5;
  }

  sub_100017590(&v7);
  sub_100017590(&v6);
  return v2;
}

uint64_t sub_100017378(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 4) = xmmword_1000DE980;
  *(a1 + 20) = xmmword_1000DE990;
  *(a1 + 36) = 1;
  *(a1 + 64) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 1065353216;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 128) = _Q0;
  *(a1 + 144) = 0;
  sub_1000173F4(a1 + 48);
  return a1;
}

uint64_t sub_1000173F4(uint64_t a1)
{
  memset(v8, 0, sizeof(v8));
  memset(&v9[8], 0, 32);
  __asm { FMOV            V1.2D, #-1.0 }

  v11 = _Q1;
  v12 = 0;
  *v9 = 1065353216;
  v10 = 1065353216;
  sub_100017480(a1, v8);
  sub_100017480(a1 + 40, &v9[8]);
  *(a1 + 80) = v11;
  *(a1 + 96) = v12;
  sub_100017590(&v9[8]);
  return sub_100017590(v8);
}

void sub_100017480(uint64_t a1, uint64_t *a2)
{
  sub_100017524(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void *sub_100017524(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t sub_100017590(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

__int128 *sub_1000175DC()
{
  if ((atomic_load_explicit(&qword_10014A8C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10014A8C0))
  {
    unk_10014A8D8 = 0u;
    xmmword_10014A8C8 = 0u;
    dword_10014A8E8 = 1065353216;
    __cxa_atexit(sub_100017668, &xmmword_10014A8C8, &_mh_execute_header);
    __cxa_guard_release(&qword_10014A8C0);
  }

  return &xmmword_10014A8C8;
}

uint64_t sub_100017668(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_100017F8C((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_1000176C8(void *a1, void *a2)
{
  v3 = a2;
  int64 = xpc_dictionary_get_int64(v3, "TestMessageType");
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 1026;
    v15 = int64;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saTestRouter,processInputs, message:%{public}d}", buf, 0x18u);
  }

  v6 = sub_100017E40(a1, int64);
  if (v6)
  {
    v7 = v6;
    v8 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 1026;
      v15 = int64;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saTestRouter,processInputs, message:%{public}d}", buf, 0x18u);
    }

    sub_100017EF4(buf, (v7 + 3));
    v9 = v3;
    if (!v16)
    {
      sub_1000053C4();
    }

    (*(*v16 + 48))(v16, &v9);

    sub_100017F8C(buf);
  }
}

uint64_t *sub_1000178C4(void *a1, int a2, uint64_t a3)
{
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 1026;
    v19 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saTestRouter,registerForInput, message:%{public}d}", buf, 0x18u);
  }

  result = sub_100017E40(a1, a2);
  if (!result)
  {
    *buf = a2;
    sub_100017EF4(&v16, a3);
    v8 = a1[1];
    if (!v8)
    {
      goto LABEL_21;
    }

    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = *buf;
      if (v8 <= *buf)
      {
        v10 = *buf % v8;
      }
    }

    else
    {
      v10 = (v8 - 1) & *buf;
    }

    v11 = *(*a1 + 8 * v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_21:
      operator new();
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == *buf)
      {
        if (*(v12 + 4) == *buf)
        {
          return sub_100017F8C(&v16);
        }
      }

      else
      {
        if (v9.u32[0] > 1uLL)
        {
          if (v13 >= v8)
          {
            v13 %= v8;
          }
        }

        else
        {
          v13 &= v8 - 1;
        }

        if (v13 != v10)
        {
          goto LABEL_21;
        }
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_21;
      }
    }
  }

  return result;
}

void sub_100017E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_10000DB70(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100017E40(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100017EF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_100017F8C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10001800C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100017F8C(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_100018058(void *a1)
{
  a1;
  if (*(sub_100042820() + 277) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_100018178(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = off_100139ED8;
  v4 = v3;
  *(a1 + 16) = 0;
  *(a1 + 8) = v4;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  *(a1 + 120) = 5;
  *(a1 + 128) = 0xBFF0000000000000;
  *(a1 + 136) = 257;
  *(a1 + 140) = 0;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v5 = SALogObjectGeneral;
  v6 = v4;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,prod,init}", buf, 0x12u);
    v6 = *(a1 + 8);
  }

  v13 = 0;
  sub_1000060C4(&__p, "safetyalertsmaps");
  sub_10001CA20(v8, buf);
  SACoreRoutine::create(v6);
}

void sub_10001835C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10001CAB8(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10001CAB8(&a20);
  v24 = *(v20 + 176);
  *(v20 + 176) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  sub_10001CB38(v22);
  sub_10001CB7C(&a20);

  _Unwind_Resume(a1);
}

uint64_t sub_1000183F8(uint64_t a1)
{
  *a1 = off_100139ED8;
  v2 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_10001CB38(a1 + 48);
  v4 = (a1 + 16);
  sub_10001CB7C(&v4);

  return a1;
}

void sub_10001849C(uint64_t a1)
{
  sub_1000183F8(a1);

  operator delete();
}

void sub_1000184D4(uint64_t a1)
{
  v16 = 0;
  v17 = -1;
  v18 = 0x40C5180000000000;
  *v19 = 0u;
  memset(v20, 0, 28);
  v2 = sub_10008E020();
  sub_10009019C(v2, &v16);
  v3 = sub_10008E020();
  v4 = sub_10008F570(v3);
  if (v4 && (v16 & 1) != 0)
  {
    if ((*(a1 + 41) & 1) == 0)
    {
      v5 = sub_100018910();
      v6 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289283;
        LOWORD(v22) = 2082;
        *(&v22 + 2) = "";
        WORD5(v22) = 1025;
        HIDWORD(v22) = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,start, triggerInterval:%{private}d}", buf, 0x18u);
      }

      sub_10001D128((a1 + 48), [@"com.apple.safetyalerts.saPrecache" UTF8String]);
      objc_storeStrong((a1 + 72), *(a1 + 8));
      __p[1] = 0;
      v13 = 0;
      __p[0] = 0;
      sub_10001CEA8(__p, v19[0], v19[1], (v19[1] - v19[0]) >> 2);
      v14 = *&v20[1];
      v15 = v20[3];
      v20[7] = 0;
      operator new();
    }

    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      LOWORD(v22) = 2082;
      *(&v22 + 2) = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,updateCachedRegionsListOnStart,entry}", buf, 0x12u);
    }

    v8 = objc_alloc_init(GEOMapDataSubscriptionManager);
    v9 = sub_100019294();
    v10 = *(a1 + 8);
    *buf = _NSConcreteStackBlock;
    *&v22 = 3221225472;
    *(&v22 + 1) = sub_1000193A4;
    v23 = &unk_100139F48;
    v24 = a1;
    [v8 fetchSubscriptionsWithIdentifiers:v9 callbackQueue:v10 completionHandler:buf];
  }

  else
  {
    v11 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289539;
      LOWORD(v22) = 2082;
      *(&v22 + 2) = "";
      WORD5(v22) = 1025;
      HIDWORD(v22) = v4;
      LOWORD(v23) = 1025;
      *(&v23 + 2) = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,#warning,cantStart,disabled, mapEnabled:%{private}hhd, cacheEnabled:%{private}hhd}", buf, 0x1Eu);
    }
  }

  if (v19[0])
  {
    v19[1] = v19[0];
    operator delete(v19[0]);
  }
}

void sub_1000188A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100018910()
{
  v6[0] = 0;
  v7 = -1;
  v8 = 0x40C5180000000000;
  *__p = 0u;
  memset(v10, 0, sizeof(v10));
  v0 = sub_10008E020();
  sub_10009019C(v0, v6);
  v1 = *(sub_100042820() + 113);
  v2 = v7;
  if (v1 >= 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = v7;
  }

  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289539;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 1025;
    v16 = v3;
    v17 = 1025;
    v18 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,getTriggerPeriod, triggerDuration:%{private}d, MA triggerDuration:%{private}d}", buf, 0x1Eu);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v3;
}

void sub_100018A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100018A58(uint64_t a1, double *a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,inCachedRegion}", buf, 0x12u);
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = *a2 != 0.0;
  if (v6 != 0.0)
  {
    v7 = 1;
  }

  if (v6 > 180.0 || v6 < -180.0 || v5 > 90.0 || v5 < -90.0 || !v7)
  {
    v18 = SALogObjectGeneral;
    result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v20 = "{msg%{public}.0s:#mapcache,invalid locations}";
    goto LABEL_26;
  }

  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  if (v8 == v9)
  {
LABEL_22:
    v18 = SALogObjectGeneral;
    result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v20 = "{msg%{public}.0s:#mapcache,inCachedRegion,fail}";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v20, buf, 0x12u);
    return 0;
  }

  v10 = v8 + 1;
  while (1)
  {
    *buf = *(v10 - 1);
    if (*(v10 + 23) < 0)
    {
      sub_100004CEC(&buf[16], *v10, *(v10 + 1));
    }

    else
    {
      v11 = *v10;
      v29 = *(v10 + 2);
      *&buf[16] = v11;
    }

    v12 = v10 - 1;
    v30 = *(v10 + 3);
    v13 = *a2;
    v14 = *(a2 + 1);
    GEOCalculateDistance();
    v16 = v15;
    v17 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 68289282;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      v26 = 2050;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,inCachedRegion, dist:%{public}f}", v22, 0x1Cu);
    }

    if (v16 >= 0.0 && v16 < 500.0)
    {
      break;
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(*&buf[16]);
    }

    v10 += 3;
    if (v12 + 3 == v9)
    {
      goto LABEL_22;
    }
  }

  v21 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 68289026;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,inCachedRegion,success}", v22, 0x12u);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(*&buf[16]);
  }

  return 1;
}

double sub_100018DE8()
{
  v6[0] = 0;
  v7 = -1;
  v8 = 0x40C5180000000000;
  *__p = 0u;
  memset(v10, 0, 28);
  v0 = sub_10008E020();
  sub_10009019C(v0, v6);
  v1 = *(sub_100042820() + 111);
  v2 = v10[2];
  if (v1 >= 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = v10[2];
  }

  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289539;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 1025;
    v16 = v3;
    v17 = 1025;
    v18 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,getDwellingThreshold, dwellCriteria:%{private}d, MA dwellCriteria:%{private}d}", buf, 0x1Eu);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v3;
}

void sub_100018F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100018F30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2049;
    v16 = [v3 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,fetchLOIAndRefreshMapCache,receivedLocations, locationCount:%{private}llu}", buf, 0x1Cu);
  }

  v6 = *(v4 + 8);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000190A0;
  v8[3] = &unk_100139F08;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, v8);
}

uint64_t sub_1000190A0(uint64_t a1)
{
  v1 = *(a1 + 40);
  [*(v1 + 160) addObjectsFromArray:*(a1 + 32)];
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(v1 + 160) count];
    v6 = 68289283;
    *v7 = 2082;
    *&v7[2] = "";
    *&v7[10] = 2049;
    *&v7[12] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,fetchLOIAndRefreshMapCache,fLearnedLocationList, fLearnedLocationList:%{private}llu}", &v6, 0x1Cu);
  }

  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 68289026;
    *v7 = 2082;
    *&v7[2] = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,updateCachingRegions,entry}", &v6, 0x12u);
  }

  v6 = _NSConcreteStackBlock;
  *v7 = 3221225472;
  *&v7[8] = sub_100019E1C;
  *&v7[16] = &unk_1001390D0;
  v10 = 0;
  v8 = v1;
  v9[0] = off_100138F50;
  v9[1] = objc_retainBlock(&v6);
  v10 = v9;
  sub_100019C00(v1, v9);
  return sub_10000F274(v9);
}

id sub_100019294()
{
  v0 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 68289283;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    v6 = 2081;
    v7 = "com.apple.safetyalertsd.region_*";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,getIdentifierListForFetch, wildcard:%{private, location:escape_only}s}", v3, 0x1Cu);
  }

  v1 = objc_opt_new();
  [v1 addObject:@"com.apple.safetyalertsd.region_*"];

  return v1;
}

void sub_1000193A4(uint64_t a1, void *a2, void *a3)
{
  v40 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = SALogObjectGeneral;
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  v41 = v5;
  if (v5)
  {
    if (v8)
    {
      v9 = [v5 description];
      *&buf[0].latitude = 68289539;
      LOWORD(buf[0].longitude) = 2082;
      *(&buf[0].longitude + 2) = "";
      WORD1(buf[1].latitude) = 2113;
      *(&buf[1].latitude + 4) = v41;
      WORD2(buf[1].longitude) = 2081;
      *(&buf[1].longitude + 6) = [v9 UTF8String];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,fetchAndRemoveAllRegions,error, error:%{private, location:escape_only}@, errorDescription:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_28;
  }

  if (v8)
  {
    *&buf[0].latitude = 68289283;
    LOWORD(buf[0].longitude) = 2082;
    *(&buf[0].longitude + 2) = "";
    WORD1(buf[1].latitude) = 2049;
    *(&buf[1].latitude + 4) = [v40 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,fetchAndRemoveAllRegions,fetchedSubscriptions, subscriptionCount:%{private}llu}", buf, 0x1Cu);
  }

  v42 = v6;

  sub_1000199E0(v6 + 2);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = v40;
  v11 = [v10 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v11)
  {
    v12 = *v44;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v44 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v43 + 1) + 8 * i);
        memset(buf, 0, sizeof(buf));
        v15 = v14;
        v16 = [v15 region];
        if (![v16 hasEastLng])
        {
          goto LABEL_20;
        }

        v17 = [v15 region];
        if (![v17 hasWestLng])
        {
          goto LABEL_19;
        }

        v18 = [v15 region];
        if (([v18 hasNorthLat] & 1) == 0)
        {

LABEL_19:
LABEL_20:

          goto LABEL_21;
        }

        v19 = [v15 region];
        v20 = [v19 hasSouthLat];

        if (v20)
        {
          v21 = [v15 region];
          [v21 northLat];
          v23 = v22;

          v24 = [v15 region];
          [v24 southLat];
          v26 = v25;

          v27 = [v15 region];
          [v27 westLng];
          v29 = v28;

          v30 = [v15 region];
          [v30 eastLng];
          v32 = v31;

          buf[0].latitude = (v23 + v26) * 0.5;
          buf[0].longitude = (v29 + v32) * 0.5;

          v33 = [v15 identifier];
          v34 = v33;
          sub_1000060C4(v47, [v33 UTF8String]);
          buf[1] = *v47;
          buf[2].latitude = *&v47[16];
          v47[23] = 0;
          v47[0] = 0;

          sub_100019A30(v42 + 2, buf);
          if (SHIBYTE(buf[2].latitude) < 0)
          {
            operator delete(*&buf[1].latitude);
          }

          continue;
        }

LABEL_21:
        v35 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *v47 = 68289026;
          *&v47[4] = 0;
          *&v47[8] = 2082;
          *&v47[10] = "";
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,getCenterLocationFromRegion, invalid region}", v47, 0x12u);
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v11);
  }

  v36 = sub_100002DB0();
  buf[0] = CLLocationCoordinate2DMake(*v36, v36[1]);
  v37 = (*(*v42 + 24))(v42, buf);
  *(sub_100002DB0() + 74) = v37 | 0x100;
  v38 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v39 = 0xAAAAAAAAAAAAAAABLL * ((v42[3] - v42[2]) >> 4);
    *&buf[0].latitude = 68289539;
    LOWORD(buf[0].longitude) = 2082;
    *(&buf[0].longitude + 2) = "";
    WORD1(buf[1].latitude) = 2049;
    *(&buf[1].latitude + 4) = v39;
    WORD2(buf[1].longitude) = 1025;
    *(&buf[1].longitude + 6) = v37;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,fetchAndRemoveAllRegions,fetchedSubscriptions, fCacheRequests:%{private}llu, isNearCachedLocation:%{private}hhd}", buf, 0x22u);
  }

LABEL_28:
}

void sub_1000199E0(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 48)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }
  }

  a1[1] = v2;
}

uint64_t sub_100019A30(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (v7 + 1 > 0x555555555555555)
    {
      sub_10000509C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v10 = 0x555555555555555;
    }

    else
    {
      v10 = v9;
    }

    v22 = a1;
    if (v10)
    {
      if (v10 <= 0x555555555555555)
      {
        operator new();
      }

      sub_100004E38();
    }

    v18 = 0;
    v19 = 48 * v7;
    v21 = 0;
    sub_10001CFA8(48 * v7, a2);
    v6 = 48 * v7 + 48;
    v20 = v6;
    v11 = *a1;
    v12 = a1[1];
    v13 = v19 + *a1 - v12;
    if (*a1 != v12)
    {
      v14 = *a1;
      v15 = v19 + *a1 - v12;
      do
      {
        *v15 = *v14;
        v16 = *(v14 + 16);
        *(v15 + 32) = *(v14 + 32);
        *(v15 + 16) = v16;
        *(v14 + 24) = 0;
        *(v14 + 32) = 0;
        *(v14 + 16) = 0;
        *(v15 + 40) = *(v14 + 40);
        v14 += 48;
        v15 += 48;
      }

      while (v14 != v12);
      do
      {
        if (*(v11 + 39) < 0)
        {
          operator delete(*(v11 + 16));
        }

        v11 += 48;
      }

      while (v11 != v12);
      v11 = *a1;
    }

    *a1 = v13;
    a1[1] = v6;
    v17 = a1[2];
    a1[2] = v21;
    v20 = v11;
    v21 = v17;
    v18 = v11;
    v19 = v11;
    result = sub_10001D008(&v18);
  }

  else
  {
    result = sub_10001CFA8(a1[1], a2);
    v6 = v4 + 48;
    a1[1] = v4 + 48;
  }

  a1[1] = v6;
  return result;
}

void sub_100019BE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001D008(va);
  _Unwind_Resume(a1);
}

void sub_100019C00(uint64_t a1, uint64_t a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,fetchAndRemoveAllRegions,entry}", buf, 0x12u);
  }

  v5 = objc_alloc_init(GEOMapDataSubscriptionManager);
  v6 = sub_100019294();
  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 count];
    *buf = 68289283;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2049;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,fetchAndRemoveAllRegions,fetchingSubscriptions, identifierCount:%{private}llu}", buf, 0x1Cu);
  }

  v9 = *(a1 + 8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3321888768;
  v10[2] = sub_10001B39C;
  v10[3] = &unk_100139F68;
  v10[4] = a1;
  sub_10000F1DC(v11, a2);
  [v5 fetchSubscriptionsWithIdentifiers:v6 callbackQueue:v9 completionHandler:v10];
  sub_10000F274(v11);
}

uint64_t sub_100019E1C(uint64_t a1)
{
  v85 = *(a1 + 32);
  v1 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,updateCachingRegions,removal complete}", buf, 0x12u);
  }

  sub_1000199E0((v85 + 16));
  v87[0] = _NSConcreteStackBlock;
  v87[1] = 3221225472;
  v87[2] = sub_10001B0C8;
  v87[3] = &unk_1001390D0;
  v87[4] = v85;
  v104 = 0;
  v103[0] = off_100138F50;
  v103[1] = objc_retainBlock(v87);
  v104 = v103;
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(v85 + 160) count];
    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2049;
    *&buf[20] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,addRegionsWithGeo,entry, learnedLocationCount:%{private}llu}", buf, 0x1Cu);
  }

  buf[0] = 0;
  *&buf[4] = -1;
  *&buf[24] = 0x40C5180000000000;
  memset(&buf[32], 0, 44);
  v4 = sub_10008E020();
  sub_10009019C(v4, buf);
  v5 = *(sub_100042820() + 114);
  v6 = *&buf[60];
  if (v5 < 0)
  {
    v5 = *&buf[60];
  }

  v76 = v5;
  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *v113 = 68289539;
    *&v113[4] = 0;
    LOWORD(v114) = 2082;
    *(&v114 + 2) = "";
    WORD5(v114) = 1025;
    HIDWORD(v114) = v6;
    LOWORD(v115) = 1025;
    *(&v115 + 2) = v76;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,getMaxNumberOfAllowedRegionsCount, maxRegions MA:%{private}d, maxRegions:%{private}d}", v113, 0x1Eu);
  }

  if (*&buf[32])
  {
    *&buf[40] = *&buf[32];
    operator delete(*&buf[32]);
  }

  v81 = objc_alloc_init(GEOMapDataSubscriptionManager);
  v8 = sub_100002DB0();
  v9 = *v8;
  v10 = *(v8 + 1);
  v97 = 0u;
  v98 = 0u;
  v96 = 0u;
  sub_1000060C4(buf, "CurrentLocation");
  *&v98 = *&buf[16];
  v97 = *buf;
  *&v96 = v9;
  *(&v96 + 1) = v10;
  if (buf[23] < 0)
  {
    *(&v97 + 1) = 15;
    v11 = v97;
  }

  else
  {
    BYTE7(v98) = 15;
    v11 = &v97;
  }

  strcpy(v11, "CurrentLocation");
  v12 = sub_10001BC48(v9, v10);
  v77 = v12;
  if (v12)
  {
    sub_10001BAEC(buf, 0);
    if ((buf[23] & 0x80u) == 0)
    {
      v13 = buf;
    }

    else
    {
      v13 = *buf;
    }

    v14 = [NSString stringWithUTF8String:v13];
    v91[0] = _NSConcreteStackBlock;
    v91[1] = 3321888768;
    v91[2] = sub_10001C290;
    v91[3] = &unk_100139F98;
    v91[4] = v85;
    v92 = v96;
    if (SBYTE7(v98) < 0)
    {
      sub_100004CEC(&v93, v97, *(&v97 + 1));
    }

    else
    {
      v93 = v97;
      v94 = v98;
    }

    v95 = *(&v98 + 1);
    v106 = 0;
    v105[0] = off_10013A1E8;
    v105[1] = objc_retainBlock(v91);
    v106 = v105;
    sub_10001BE90(v85, v81, v77, v14, v105);
    sub_10001E0C0(v105);

    if (SHIBYTE(v94) < 0)
    {
      operator delete(v93);
    }

    v12 = v77;
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    __val = 1;
  }

  else
  {
    __val = 0;
  }

  v15 = *(v85 + 160);
  if (v15 && [v15 count])
  {
    if ([*(v85 + 160) count] >= v76)
    {
      v20 = SALogObjectGeneral;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [*(v85 + 160) count];
        *buf = 68289283;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2049;
        *&buf[20] = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,getLOIBasedOnDwellingTime,entry, learnedLocationCount:%{private}llu}", buf, 0x1Cu);
      }

      v88 = 0;
      v89 = 0;
      v90 = 0;
      v99 = 0u;
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      obj = *(v85 + 160);
      v22 = [obj countByEnumeratingWithState:&v99 objects:buf count:16];
      if (v22)
      {
        v23 = 0;
        v80 = *v100;
        do
        {
          v82 = v22;
          for (i = 0; i != v82; i = i + 1)
          {
            if (*v100 != v80)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v99 + 1) + 8 * i);
            v124 = 0u;
            v125 = 0u;
            v126 = 0u;
            v127 = 0u;
            v26 = [v25 visits];
            v27 = [v26 countByEnumeratingWithState:&v124 objects:v113 count:16];
            if (v27)
            {
              v28 = *v125;
              v29 = 0.0;
              do
              {
                for (j = 0; j != v27; j = j + 1)
                {
                  if (*v125 != v28)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v31 = *(*(&v124 + 1) + 8 * j);
                  v32 = [v31 exitDate];
                  v33 = [v31 entryDate];
                  [v32 timeIntervalSinceDate:v33];
                  v35 = v34;

                  v29 = v29 + v35;
                }

                v27 = [v26 countByEnumeratingWithState:&v124 objects:v113 count:16];
              }

              while (v27);
            }

            else
            {
              v29 = 0.0;
            }

            v36 = SALogObjectGeneral;
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v37 = sub_100018DE8();
              v38 = [v25 identifier];
              *v107 = 68289795;
              *&v107[4] = 0;
              *v108 = 2082;
              *&v108[2] = "";
              *&v108[10] = 2049;
              *&v108[12] = v29;
              v109 = 2049;
              v110 = v37;
              v111 = 2113;
              v112 = v38;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,getLOIBasedOnDwellingTime,evaluatingLocation, dwellTime:%{private}.1f, dwellThreshold:%{private}.1f, identifier:%{private, location:escape_only}@}", v107, 0x30u);
            }

            if (v29 >= sub_100018DE8())
            {
              v39 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                *v107 = 68289283;
                *&v107[4] = 0;
                *v108 = 2082;
                *&v108[2] = "";
                *&v108[10] = 2049;
                *&v108[12] = v29;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,getLOIBasedOnDwellingTime,addingMostDwelledLocation, dwellTime:%{private}.1f}", v107, 0x1Cu);
              }

              v40 = v25;
              if (((v23 >> 4) + 1) >> 60)
              {
                sub_10000509C();
              }

              if (v23 >> 4 != -1)
              {
                if (!(((v23 >> 4) + 1) >> 60))
                {
                  operator new();
                }

                sub_100004E38();
              }

              v41 = 16 * (v23 >> 4);
              *v41 = v40;
              *(v41 + 8) = v29;
              if (v23)
              {
                v42 = 0;
                v43 = 0;
                do
                {
                  v44 = *v42;
                  *v42 = 0;
                  *v43 = v44;
                  v43[1] = v42[1];
                  v42 += 2;
                  v43 += 2;
                }

                while (v42 != v23);
                for (k = 0; k != v23; k += 2)
                {
                }
              }

              v23 = v41 + 16;
              v88 = 0;
              v90 = 0;
              v89 = (v41 + 16);
            }
          }

          v22 = [obj countByEnumeratingWithState:&v99 objects:buf count:16];
        }

        while (v22);
      }

      else
      {
        v23 = 0;
      }

      v46 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *v107 = 68289283;
        *&v107[4] = 0;
        *v108 = 2082;
        *&v108[2] = "";
        *&v108[10] = 2049;
        *&v108[12] = v23 >> 4;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,getLOIBasedOnDwellingTime,exit, mostDwelledCount:%{private}llu}", v107, 0x1Cu);
      }

      v47 = 126 - 2 * __clz((v89 - v88) >> 4);
      if (v89 == v88)
      {
        v48 = 0;
      }

      else
      {
        v48 = v47;
      }

      sub_10001D170(v88, v89, v48, 1);
      v16 = objc_opt_new();
      if (v76 != 1)
      {
        v49 = 0;
        v50 = (v89 - v88) & 0xFFFFFFFF0;
        while (v50 != v49)
        {
          [v16 addObject:*&v88[v49 / 8]];
          v49 += 16;
          if (16 * (v76 - 1) == v49)
          {
            goto LABEL_84;
          }
        }

        v51 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,addRegionsWithGeo,index reached total dwell based LOI}", buf, 0x12u);
        }
      }

LABEL_84:
      v52 = SALogObjectGeneral;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = [v16 count];
        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2049;
        *&buf[20] = v53;
        *&buf[28] = 1025;
        *&buf[30] = v76;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,addRegionsWithGeo,adding top Dwelled Locations, locationCount:%{private}llu, allowedRegions:%{private}d}", buf, 0x22u);
      }

      *buf = &v88;
      sub_10001E040(buf);
    }

    else
    {
      v16 = *(v85 + 160);
      v17 = SALogObjectGeneral;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [*(v85 + 160) count];
        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2049;
        *&buf[20] = v18;
        *&buf[28] = 1025;
        *&buf[30] = v76;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,addRegionsWithGeo,addingAllLocations, locationCount:%{private}llu, allowedRegions:%{private}d}", buf, 0x22u);
      }
    }

    v54 = SALogObjectGeneral;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = [*(v85 + 160) count];
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2049;
      *&buf[20] = v55;
      *&buf[28] = 1025;
      *&buf[30] = v76;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,addRegionsWithGeo, locationCount:%{private}llu, allowedRegions:%{private}d}", buf, 0x22u);
    }

    *(v85 + 168) = [v16 count];
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v79 = v16;
    v56 = [v79 countByEnumeratingWithState:&v99 objects:buf count:16];
    if (v56)
    {
      v83 = *v100;
      do
      {
        v84 = v56;
        for (m = 0; m != v84; m = m + 1)
        {
          if (*v100 != v83)
          {
            objc_enumerationMutation(v79);
          }

          v58 = *(*(&v99 + 1) + 8 * m);
          [v58 latitude];
          v60 = v59;
          [v58 longitude];
          v62 = sub_10001BC48(v60, v61);
          if (v62)
          {
            v63 = [v58 identifier];
            v64 = [v63 UUIDString];
            v65 = v64;
            sub_1000060C4(v107, [v64 UTF8String]);
            v66 = *v107;
            v67 = *v108;
            LODWORD(v88) = *&v108[8];
            *(&v88 + 3) = *&v108[11];
            v68 = v108[15];
            v108[15] = 0;
            v107[0] = 0;

            [v58 latitude];
            v70 = v69;
            [v58 longitude];
            v72 = v71;
            sub_10001BAEC(v107, __val);
            if (v108[15] >= 0)
            {
              v73 = v107;
            }

            else
            {
              v73 = *v107;
            }

            v74 = [NSString stringWithUTF8String:v73];
            *v113 = _NSConcreteStackBlock;
            *&v114 = 3321888768;
            *(&v114 + 1) = sub_10001C3E0;
            v115 = &unk_100139FC8;
            v116 = v85;
            v117 = v70;
            v118 = v72;
            if (v68 < 0)
            {
              sub_100004CEC(v119, v66, v67);
            }

            else
            {
              v119[0] = v66;
              v119[1] = v67;
              *v120 = v88;
              *&v120[3] = *(&v88 + 3);
              v121 = v68;
            }

            v122 = 0;
            sub_10000F1DC(v123, v103);
            *(&v125 + 1) = 0;
            *&v124 = off_10013A1E8;
            *(&v124 + 1) = objc_retainBlock(v113);
            *(&v125 + 1) = &v124;
            sub_10001BE90(v85, v81, v62, v74, &v124);
            sub_10001E0C0(&v124);

            sub_10000F274(v123);
            if (v121 < 0)
            {
              operator delete(v119[0]);
            }

            if ((v108[15] & 0x80000000) != 0)
            {
              operator delete(*v107);
              if ((v68 & 0x80000000) == 0)
              {
                goto LABEL_105;
              }
            }

            else if ((v68 & 0x80000000) == 0)
            {
LABEL_105:
              ++__val;
              goto LABEL_106;
            }

            operator delete(v66);
            goto LABEL_105;
          }

LABEL_106:
        }

        v56 = [v79 countByEnumeratingWithState:&v99 objects:buf count:16];
      }

      while (v56);
    }

    v12 = v77;
  }

  else
  {
    v19 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,addRegionsWithGeo,no LOIs found}", buf, 0x12u);
    }

    if (v104)
    {
      (*(*v104 + 48))(v104);
    }
  }

  if (SBYTE7(v98) < 0)
  {
    operator delete(v97);
  }

  return sub_10000F274(v103);
}

void sub_10001AE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  STACK[0x2B0] = &a29;
  sub_10001E040(&STACK[0x2B0]);

  if (a50 < 0)
  {
    operator delete(__p);
  }

  sub_10000F274(&a60);
  _Unwind_Resume(a1);
}

void sub_10001B0C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 68289283;
    *v17 = 2082;
    *&v17[2] = "";
    v18 = 1025;
    LODWORD(v19) = 1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,cachingComplete, lastResult:%{private}hhd}", &v16, 0x18u);
    v2 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 152);
    v16 = 68289283;
    *v17 = 2082;
    *&v17[2] = "";
    v18 = 1025;
    LODWORD(v19) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,submitPrecacheStatusToMetrics, triggerType:%{private}d}", &v16, 0x18u);
  }

  v4 = *(v1 + 40);
  v22 = @"status";
  v5 = [NSNumber numberWithInt:v4];
  v16 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v22 count:1];

  v7 = sub_10004ECB4();
  sub_10004FD8C(v7, *(v1 + 152), v6);

  v8 = sub_100042820();
  v9 = [NSString stringWithUTF8String:"MPRECACHE_LAST_CACHE_TIME"];
  Current = CFAbsoluteTimeGetCurrent();
  sub_1000426C8(Current, v8, v9);

  *(v1 + 40) = 0;
  v11 = sub_100002DB0();
  v12 = CLLocationCoordinate2DMake(*v11, v11[1]);
  v16 = *&v12.latitude;
  *v17 = v12.longitude;
  v13 = (*(*v1 + 24))(v1, &v16);
  *(sub_100002DB0() + 74) = v13 | 0x100;
  v14 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((*(v1 + 24) - *(v1 + 16)) >> 4);
    v16 = 68289539;
    *v17 = 2082;
    *&v17[2] = "";
    v18 = 2049;
    v19 = v15;
    v20 = 1025;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,cachingComplete,, fCacheRequests:%{private}llu, isNearCachedLocation:%{private}hhd}", &v16, 0x22u);
  }
}

void sub_10001B39C(uint64_t a1, void *a2, void *a3)
{
  v25 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = SALogObjectGeneral;
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  v26 = v5;
  if (v5)
  {
    if (v8)
    {
      v9 = [v5 description];
      buf = 68289539;
      v47 = 2082;
      v48 = "";
      v49 = 2113;
      v50 = v5;
      v51 = 2081;
      v52 = [v9 UTF8String];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,fetchAndRemoveAllRegions,error, error:%{private, location:escape_only}@, errorDescription:%{private, location:escape_only}s}", &buf, 0x26u);
    }

    v10 = *(a1 + 64);
    if (v10)
    {
      (*(*v10 + 48))(v10);
    }
  }

  else
  {
    if (v8)
    {
      buf = 68289283;
      v47 = 2082;
      v48 = "";
      v49 = 2049;
      v50 = [v25 count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,fetchAndRemoveAllRegions,fetchedSubscriptions, subscriptionCount:%{private}llu}", &buf, 0x1Cu);
    }

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3321888768;
    v32[2] = sub_10001BA08;
    v32[3] = &unk_1001390F0;
    sub_10000F1DC(v33, a1 + 40);
    v35 = 0;
    v34[0] = off_100138F50;
    v34[1] = objc_retainBlock(v32);
    v35 = v34;
    v24 = v25;
    v11 = SALogObjectGeneral;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v24 count];
      buf = 68289283;
      v47 = 2082;
      v48 = "";
      v49 = 2049;
      v50 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,removeRegionsFromGeoCache,entry, subscriptionCount:%{private}llu}", &buf, 0x1Cu);
    }

    if (v24 && [v24 count])
    {
      v13 = objc_alloc_init(GEOMapDataSubscriptionManager);
      *(v6 + 168) = 0;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      obj = v24;
      v14 = [obj countByEnumeratingWithState:&v28 objects:&buf count:16];
      if (v14)
      {
        v15 = *v29;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v29 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v28 + 1) + 8 * i);
            ++*(v6 + 168);
            v18 = SALogObjectGeneral;
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [v17 identifier];
              v20 = *(v6 + 168);
              *v38 = 68289539;
              v39 = 0;
              v40 = 2082;
              v41 = "";
              v42 = 2113;
              v43 = v19;
              v44 = 1025;
              v45 = v20;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,removeRegionsFromGeoCache,removingSubscription, identifier:%{private, location:escape_only}@, fTotalRequestsToGeoInProgress:%{private}d}", v38, 0x22u);
            }

            v21 = [v17 identifier];
            v22 = *(v6 + 8);
            v36[0] = _NSConcreteStackBlock;
            v36[1] = 3321888768;
            v36[2] = sub_10001C540;
            v36[3] = &unk_100139FF8;
            v36[4] = v6;
            sub_10000F1DC(v37, v34);
            [v13 removeSubscriptionWithIdentifier:v21 callbackQueue:v22 completionHandler:v36];

            sub_10000F274(v37);
          }

          v14 = [obj countByEnumeratingWithState:&v28 objects:&buf count:16];
        }

        while (v14);
      }
    }

    else
    {
      v23 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf = 68289283;
        v47 = 2082;
        v48 = "";
        v49 = 2081;
        v50 = "No subscriptions to remove";
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,removeRegionsFromGeoCache,exit, reason:%{private, location:escape_only}s}", &buf, 0x1Cu);
      }

      if (v35)
      {
        (*(*v35 + 48))(v35);
      }
    }

    sub_10000F274(v34);
    sub_10000F274(v33);
  }
}

void sub_10001B950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  sub_10000F274(&a34);
  sub_10000F274(&a30);

  _Unwind_Resume(a1);
}

uint64_t sub_10001BA08(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,fetchAndRemoveAllRegions,removal complete}", v4, 0x12u);
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(*result + 48))(result);
  }

  return result;
}

void sub_10001BAEC(uint64_t *a1, unsigned int __val)
{
  std::to_string(&__p, __val);
  v4 = std::string::insert(&__p, 0, "com.apple.safetyalertsd.region_", 0x1FuLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  a1[2] = v4->__r_.__value_.__r.__words[2];
  *a1 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 23) >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    __p.__r_.__value_.__r.__words[0] = 68289539;
    LOWORD(__p.__r_.__value_.__r.__words[1]) = 2082;
    *(&__p.__r_.__value_.__r.__words[1] + 2) = "";
    WORD1(__p.__r_.__value_.__r.__words[2]) = 1025;
    HIDWORD(__p.__r_.__value_.__r.__words[2]) = __val;
    v9 = 2081;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,getNewIdentifier, index:%{private}d, identifier:%{private, location:escape_only}s}", &__p, 0x22u);
  }
}

void sub_10001BC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_10001BC48(double a1, double a2)
{
  v3 = a1 != 0.0;
  if (a2 != 0.0)
  {
    v3 = 1;
  }

  if (a2 <= 180.0 && a2 >= -180.0 && a1 <= 90.0 && a1 >= -90.0 && v3)
  {
    v5 = [GEOMapRegion alloc];
    buf[0] = 0;
    v22 = -1;
    v25 = 0x40C5180000000000;
    *__p = 0u;
    memset(v27, 0, 28);
    v6 = sub_10008E020();
    sub_10009019C(v6, buf);
    v7 = *(sub_100042820() + 112);
    v8 = v27[1];
    if (v7 >= 0)
    {
      v9 = v7;
    }

    else
    {
      v9 = v27[1];
    }

    v10 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 68289539;
      v14[1] = 0;
      v15 = 2082;
      v16 = "";
      v17 = 1025;
      v18 = v9;
      v19 = 1025;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,getRegionRadiusInMeters, regionRadius:%{private}d, radiusOfRegionForMapsPrecachingMeters:%{private}d}", v14, 0x1Eu);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v11 = [v5 initWithCenter:a1 radius:{a2, v9}];
  }

  else
  {
    v12 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#mapcache,getLOIBasedOnDwellingTime,exit}", buf, 0x12u);
    }

    v11 = 0;
  }

  return v11;
}

void sub_10001BE70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001BE90(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = SALogObjectGeneral;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    v36 = 0;
    v37 = 2082;
    v38 = "";
    v39 = 2081;
    *v40 = [v11 UTF8String];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,addNewRegion,start, identifier:%{private, location:escape_only}s}", buf, 0x1Cu);
  }

  v13 = SALogObjectGeneral;
  v14 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v14)
    {
      *buf = 68289026;
      v36 = 0;
      v37 = 2082;
      v38 = "";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,addNewRegionForCaching,regionCreated}", buf, 0x12u);
    }

    v15 = [NSDate alloc];
    buf[0] = 0;
    v36 = -1;
    *&v40[4] = 0x40C5180000000000;
    __p = 0u;
    memset(v42, 0, sizeof(v42));
    v16 = sub_10008E020();
    sub_10009019C(v16, buf);
    v17 = *(sub_100042820() + 115);
    v18 = v42[5];
    if (v17 >= 0)
    {
      v19 = v17;
    }

    else
    {
      v19 = v42[5];
    }

    v20 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 68289539;
      v28 = 0;
      v29 = 2082;
      v30 = "";
      v31 = 1025;
      v32 = v19;
      v33 = 1025;
      v34 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,getRegionExpirationAgeSeconds, expirationAge:%{private}d, MA expirationAge:%{private}d}", v27, 0x1Eu);
    }

    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    v21 = +[NSDate now];
    v22 = [v15 initWithTimeInterval:v21 sinceDate:v19];

    v23 = *(a1 + 8);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3321888768;
    v24[2] = sub_10001C694;
    v24[3] = &unk_10013A030;
    v25 = v11;
    sub_10001EF44(v26, a5);
    [v9 addSubscriptionWithIdentifier:v25 dataTypes:0x100000 policy:0 region:v10 expirationDate:v22 callbackQueue:v23 completionHandler:v24];
    sub_10001E0C0(v26);
  }

  else
  {
    if (v14)
    {
      *buf = 68289026;
      v36 = 0;
      v37 = 2082;
      v38 = "";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,invalid subscription manager}", buf, 0x12u);
    }

    if (*(a5 + 24))
    {
      sub_1000030E8(a5, 0);
    }
  }
}

void sub_10001C290(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 68289282;
    v7 = 2082;
    v8 = "";
    v9 = 1026;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,addRegionsWithGeo,current Location added, status:%{public}hhd}", &v6, 0x18u);
  }

  if (a2)
  {
    sub_100019A30((v4 + 16), a1 + 40);
  }
}

double sub_10001C370(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  if (*(a2 + 79) < 0)
  {
    sub_100004CEC((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v4 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v4;
  }

  result = *(a2 + 80);
  *(a1 + 80) = result;
  return result;
}

void sub_10001C3CC(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }
}

void *sub_10001C3E0(void *result, int a2)
{
  v2 = result;
  v3 = result[4];
  v4 = *(v3 + 168) - 1;
  *(v3 + 168) = v4;
  if (a2)
  {
    result = sub_100019A30((v3 + 16), (result + 5));
    v4 = *(v3 + 168);
  }

  if (!v4)
  {
    result = v2[14];
    if (result)
    {
      v5 = *(*result + 48);

      return v5();
    }
  }

  return result;
}

uint64_t sub_10001C46C(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  if (*(a2 + 79) < 0)
  {
    sub_100004CEC((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v4 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v4;
  }

  *(a1 + 80) = *(a2 + 80);
  return sub_10000F1DC(a1 + 88, a2 + 88);
}

void sub_10001C4D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_10001C4F0(uint64_t a1)
{
  sub_10000F274(a1 + 88);
  if (*(a1 + 79) < 0)
  {
    v2 = *(a1 + 56);

    operator delete(v2);
  }
}

void sub_10001C540(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v6 + 168);
    v11[0] = 68289795;
    v11[1] = 0;
    v12 = 2082;
    v13 = "";
    v14 = 1025;
    v15 = a2;
    v16 = 2113;
    v17 = v5;
    v18 = 1025;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,purgeRegionSubscription,complete, success:%{private}hhd, error:%{private, location:escape_only}@, fTotalRequestsToGeoInProgress:%{private}d}", v11, 0x28u);
  }

  v9 = *(v6 + 168) - 1;
  *(v6 + 168) = v9;
  if (!v9)
  {
    v10 = *(a1 + 64);
    if (v10)
    {
      (*(*v10 + 48))(v10);
    }
  }
}

void sub_10001C694(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) UTF8String];
    v8[0] = 68289795;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 1025;
    v12 = a2;
    v13 = 2113;
    v14 = v5;
    v15 = 2081;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,addNewRegionForCaching,complete, success:%{private}hhd, error:%{private, location:escape_only}@, identifier:%{private, location:escape_only}s}", v8, 0x2Cu);
  }

  if (*(a1 + 64))
  {
    sub_1000030E8(a1 + 40, 1);
  }
}

void sub_10001C7E8(uint64_t a1, int a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v8 = 2082;
    v9 = "";
    v10 = 1026;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,onLocationAuthorized,called, isAuthorized:%{public}hhd}", buf, 0x18u);
  }

  if (a2)
  {
    v5 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v8 = 2082;
      v9 = "";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,onLocationAuthorized,authorized}", buf, 0x12u);
    }
  }

  else
  {
    v6[0] = off_100138F50;
    v6[1] = &stru_10013A080;
    v6[3] = v6;
    sub_100019C00(a1, v6);
    sub_10000F274(v6);
  }
}

void sub_10001C96C(id a1)
{
  v1 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 68289026;
    v2[1] = 0;
    v3 = 2082;
    v4 = "";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,onLocationAuthorized,removalComplete}", v2, 0x12u);
  }
}

uint64_t sub_10001CA20(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10001CAB8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10001CB38(uint64_t a1)
{
  sub_10000F274(a1 + 32);

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10001CB7C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000199E0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_10001CBD0(void *a1, uint64_t a2)
{
  sub_10000F1DC(v4, a2);
  sub_10001CC44(v4, a1);
  sub_10000F274(v4);
  return a1;
}

void *sub_10001CC44(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_10001CE9C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10000DB70(a1);
}

uint64_t sub_10001CEA8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10001CF24(result, a4);
  }

  return result;
}

void sub_10001CF08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001CF24(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_10001CF60(a1, a2);
  }

  sub_10000509C();
}

void sub_10001CF60(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_100004E38();
}

uint64_t sub_10001CFA8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 39) < 0)
  {
    sub_100004CEC((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
  }

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t sub_10001D008(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 48;
      *(a1 + 16) = v2 - 48;
      if (*(v2 - 9) < 0)
      {
        operator delete(*(v2 - 32));
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

std::string *sub_10001D06C(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_10001D128(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_10001D06C(a1, __s, v4);
}

void sub_10001D170(double *a1, double *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = (a2 - v8) >> 4;
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3uLL:
          v68 = v8[3];
          v69 = *(a2 - 1);
          if (v68 <= v8[1])
          {
            if (v69 <= v68)
            {
              return;
            }

            v66 = (v8 + 2);
            v67 = a2 - 2;
            goto LABEL_173;
          }

          if (v69 > v68)
          {
            goto LABEL_113;
          }

          sub_10001DBF0(v8, v8 + 2);
          if (*(a2 - 1) <= v8[3])
          {
            return;
          }

          v70 = (v8 + 2);
LABEL_114:
          v71 = a2 - 2;
LABEL_115:

          sub_10001DBF0(v70, v71);
          return;
        case 4uLL:

          sub_10001DC54(v8, v8 + 2, v8 + 4, a2 - 2);
          return;
        case 5uLL:
          sub_10001DC54(v8, v8 + 2, v8 + 4, v8 + 6);
          if (*(a2 - 1) <= v8[7])
          {
            return;
          }

          sub_10001DBF0((v8 + 6), a2 - 2);
          if (v8[7] <= v8[5])
          {
            return;
          }

          sub_10001DBF0((v8 + 4), v8 + 6);
          if (v8[5] <= v8[3])
          {
            return;
          }

          v66 = (v8 + 2);
          v67 = v8 + 4;
LABEL_173:
          sub_10001DBF0(v66, v67);
          if (v8[3] <= v8[1])
          {
            return;
          }

          v71 = v8 + 2;
          v70 = v8;
          goto LABEL_115;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        if (*(a2 - 1) <= v8[1])
        {
          return;
        }

LABEL_113:
        v70 = v8;
        goto LABEL_114;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return;
      }

      v86 = v10 >> 1;
      v87 = v10 >> 1;
      do
      {
        v88 = v87;
        if (v86 >= v87)
        {
          v89 = (2 * v87) | 1;
          v90 = &a1[2 * v89];
          if (2 * v88 + 2 < v9 && v90[1] > v90[3])
          {
            v90 += 2;
            v89 = 2 * v88 + 2;
          }

          v91 = &a1[2 * v88];
          v92 = v91[1];
          if (v90[1] <= v92)
          {
            v93 = *v91;
            *v91 = 0.0;
            do
            {
              v94 = v91;
              v91 = v90;
              v95 = *v90;
              *v91 = 0.0;
              v96 = *v94;
              *v94 = v95;

              v94[1] = v91[1];
              if (v86 < v89)
              {
                break;
              }

              v97 = 2 * v89;
              v89 = (2 * v89) | 1;
              v90 = &a1[2 * v89];
              v98 = v97 + 2;
              if (v98 < v9 && v90[1] > v90[3])
              {
                v90 += 2;
                v89 = v98;
              }
            }

            while (v90[1] <= v92);
            v99 = *v91;
            *v91 = v93;

            v91[1] = v92;
          }
        }

        v87 = v88 - 1;
      }

      while (v88);
      while (2)
      {
        v100 = 0;
        v101 = *a1;
        *a1 = 0.0;
        v102 = a1[1];
        v103 = a1;
        do
        {
          v104 = &v103[2 * v100];
          v105 = v104 + 2;
          if (2 * v100 + 2 >= v9)
          {
            v100 = (2 * v100) | 1;
          }

          else
          {
            v106 = v104[3];
            v107 = v104[5];
            v108 = v104 + 4;
            if (v106 <= v107)
            {
              v100 = (2 * v100) | 1;
            }

            else
            {
              v105 = v108;
              v100 = 2 * v100 + 2;
            }
          }

          v109 = *v105;
          *v105 = 0.0;
          v110 = *v103;
          *v103 = v109;

          v103[1] = v105[1];
          v103 = v105;
        }

        while (v100 <= ((v9 - 2) >> 1));
        v111 = a2 - 2;
        if (v105 == a2 - 2)
        {
LABEL_167:
          v123 = *v105;
          *v105 = v101;

          v105[1] = v102;
        }

        else
        {
          v112 = *(a2 - 2);
          *(a2 - 2) = 0.0;
          v113 = *v105;
          *v105 = v112;

          v105[1] = *(a2 - 1);
          v114 = *(a2 - 2);
          *(a2 - 2) = v101;

          *(a2 - 1) = v102;
          v115 = (v105 - a1 + 16) >> 4;
          v116 = v115 < 2;
          v117 = v115 - 2;
          if (!v116)
          {
            v118 = v117 >> 1;
            v119 = &a1[2 * (v117 >> 1)];
            v102 = v105[1];
            if (v119[1] > v102)
            {
              v101 = *v105;
              *v105 = 0.0;
              do
              {
                v120 = v105;
                v105 = v119;
                v121 = *v119;
                *v105 = 0.0;
                v122 = *v120;
                *v120 = v121;

                v120[1] = v105[1];
                if (!v118)
                {
                  break;
                }

                v118 = (v118 - 1) >> 1;
                v119 = &a1[2 * v118];
              }

              while (v119[1] > v102);
              goto LABEL_167;
            }
          }
        }

        a2 = v111;
        v116 = v9-- <= 2;
        if (v116)
        {
          return;
        }

        continue;
      }
    }

    v11 = &v8[2 * (v9 >> 1)];
    v12 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v13 = v11[1];
      if (v13 <= a1[1])
      {
        if (v12 > v13)
        {
          sub_10001DBF0(&a1[2 * (v9 >> 1)], a2 - 2);
          if (v11[1] > a1[1])
          {
            v14 = a1;
            v15 = &a1[2 * (v9 >> 1)];
            goto LABEL_25;
          }
        }
      }

      else
      {
        v14 = a1;
        if (v12 > v13)
        {
          goto LABEL_16;
        }

        sub_10001DBF0(a1, &a1[2 * (v9 >> 1)]);
        if (*(a2 - 1) > v11[1])
        {
          v14 = &a1[2 * (v9 >> 1)];
LABEL_16:
          v15 = a2 - 2;
LABEL_25:
          sub_10001DBF0(v14, v15);
        }
      }

      v19 = *(v11 - 1);
      v20 = *(a2 - 3);
      if (v19 <= a1[3])
      {
        if (v20 > v19)
        {
          sub_10001DBF0((v11 - 2), a2 - 4);
          if (*(v11 - 1) > a1[3])
          {
            v21 = (a1 + 2);
            v22 = v11 - 2;
            goto LABEL_38;
          }
        }
      }

      else
      {
        v21 = (a1 + 2);
        if (v20 > v19)
        {
          goto LABEL_30;
        }

        sub_10001DBF0(v21, v11 - 2);
        if (*(a2 - 3) > *(v11 - 1))
        {
          v21 = (v11 - 2);
LABEL_30:
          v22 = a2 - 4;
LABEL_38:
          sub_10001DBF0(v21, v22);
        }
      }

      v23 = v11[3];
      v24 = *(a2 - 5);
      if (v23 <= a1[5])
      {
        if (v24 > v23)
        {
          sub_10001DBF0((v11 + 2), a2 - 6);
          if (v11[3] > a1[5])
          {
            v25 = (a1 + 4);
            v26 = v11 + 2;
            goto LABEL_47;
          }
        }
      }

      else
      {
        v25 = (a1 + 4);
        if (v24 > v23)
        {
          goto LABEL_43;
        }

        sub_10001DBF0(v25, v11 + 2);
        if (*(a2 - 5) > v11[3])
        {
          v25 = (v11 + 2);
LABEL_43:
          v26 = a2 - 6;
LABEL_47:
          sub_10001DBF0(v25, v26);
        }
      }

      v27 = v11[1];
      v28 = v11[3];
      if (v27 <= *(v11 - 1))
      {
        if (v28 > v27)
        {
          sub_10001DBF0(v11, v11 + 2);
          if (v11[1] > *(v11 - 1))
          {
            v30 = (v11 - 2);
            v29 = v11;
            goto LABEL_56;
          }
        }
      }

      else
      {
        if (v28 > v27)
        {
          v29 = v11 + 2;
          v30 = (v11 - 2);
          goto LABEL_56;
        }

        sub_10001DBF0((v11 - 2), v11);
        if (v11[3] > v11[1])
        {
          v29 = v11 + 2;
          v30 = v11;
LABEL_56:
          sub_10001DBF0(v30, v29);
        }
      }

      v31 = *a1;
      *a1 = 0.0;
      v32 = *v11;
      *v11 = 0.0;
      v33 = *a1;
      *a1 = v32;

      v34 = *v11;
      *v11 = v31;

      v35 = *(a1 + 1);
      a1[1] = v11[1];
      *(v11 + 1) = v35;
      goto LABEL_58;
    }

    v16 = a1[1];
    if (v16 <= v11[1])
    {
      if (v12 <= v16)
      {
        goto LABEL_58;
      }

      sub_10001DBF0(a1, a2 - 2);
      if (a1[1] <= v11[1])
      {
        goto LABEL_58;
      }

      v17 = &a1[2 * (v9 >> 1)];
      v18 = a1;
      goto LABEL_34;
    }

    v17 = &a1[2 * (v9 >> 1)];
    if (v12 > v16)
    {
      goto LABEL_21;
    }

    sub_10001DBF0(v17, a1);
    if (*(a2 - 1) > a1[1])
    {
      v17 = a1;
LABEL_21:
      v18 = a2 - 2;
LABEL_34:
      sub_10001DBF0(v17, v18);
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v36 = a1[1];
LABEL_61:
      v37 = 0;
      v38 = *a1;
      *a1 = 0.0;
      do
      {
        v39 = a1[v37 + 3];
        v37 += 2;
      }

      while (v39 > v36);
      v40 = &a1[v37];
      v41 = a2;
      if (v37 == 2)
      {
        v44 = a2;
        while (v40 < v44)
        {
          v42 = v44 - 2;
          v45 = *(v44 - 1);
          v44 -= 2;
          if (v45 > v36)
          {
            goto LABEL_71;
          }
        }

        v42 = v44;
      }

      else
      {
        do
        {
          v42 = v41 - 2;
          v43 = *(v41 - 1);
          v41 -= 2;
        }

        while (v43 <= v36);
      }

LABEL_71:
      if (v40 >= v42)
      {
        v8 = v40;
      }

      else
      {
        v46 = v42;
        v8 = v40;
        do
        {
          sub_10001DBF0(v8, v46);
          do
          {
            v47 = v8[3];
            v8 += 2;
          }

          while (v47 > v36);
          do
          {
            v48 = *(v46 - 1);
            v46 -= 2;
          }

          while (v48 <= v36);
        }

        while (v8 < v46);
      }

      if (v8 - 2 != a1)
      {
        v49 = *(v8 - 2);
        *(v8 - 2) = 0.0;
        v50 = *a1;
        *a1 = v49;

        a1[1] = *(v8 - 1);
      }

      v51 = *(v8 - 2);
      *(v8 - 2) = v38;

      *(v8 - 1) = v36;
      if (v40 < v42)
      {
        goto LABEL_84;
      }

      v52 = sub_10001DD6C(a1, v8 - 2);
      if (sub_10001DD6C(v8, a2))
      {
        a2 = v8 - 2;
        if (v52)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v52)
      {
LABEL_84:
        sub_10001D170(a1, v8 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v36 = a1[1];
      if (*(a1 - 1) > v36)
      {
        goto LABEL_61;
      }

      v53 = *a1;
      *a1 = 0.0;
      if (v36 <= *(a2 - 1))
      {
        v56 = a1 + 2;
        do
        {
          v8 = v56;
          if (v56 >= a2)
          {
            break;
          }

          v57 = v56[1];
          v56 += 2;
        }

        while (v36 <= v57);
      }

      else
      {
        v54 = a1;
        do
        {
          v8 = v54 + 2;
          v55 = v54[3];
          v54 += 2;
        }

        while (v36 <= v55);
      }

      v58 = a2;
      if (v8 < a2)
      {
        v59 = a2;
        do
        {
          v58 = v59 - 2;
          v60 = *(v59 - 1);
          v59 -= 2;
        }

        while (v36 > v60);
      }

      while (v8 < v58)
      {
        sub_10001DBF0(v8, v58);
        do
        {
          v61 = v8[3];
          v8 += 2;
        }

        while (v36 <= v61);
        do
        {
          v62 = *(v58 - 1);
          v58 -= 2;
        }

        while (v36 > v62);
      }

      if (v8 - 2 != a1)
      {
        v63 = *(v8 - 2);
        *(v8 - 2) = 0.0;
        v64 = *a1;
        *a1 = v63;

        a1[1] = *(v8 - 1);
      }

      v65 = *(v8 - 2);
      *(v8 - 2) = v53;

      a4 = 0;
      *(v8 - 1) = v36;
    }
  }

  v72 = v8 + 2;
  v74 = v8 == a2 || v72 == a2;
  if (a4)
  {
    if (!v74)
    {
      v75 = 0;
      v76 = v8;
      do
      {
        v77 = v76[3];
        v78 = v76[1];
        v76 = v72;
        if (v77 > v78)
        {
          v79 = *v72;
          *v72 = 0.0;
          v80 = v75;
          while (1)
          {
            v81 = (v8 + v80);
            v82 = *(v8 + v80);
            *v81 = 0.0;
            v83 = *(v8 + v80 + 16);
            *(v81 + 2) = v82;

            v81[3] = v81[1];
            if (!v80)
            {
              break;
            }

            v80 -= 16;
            if (v77 <= *(v81 - 1))
            {
              v84 = v8 + v80 + 16;
              goto LABEL_136;
            }
          }

          v84 = v8;
LABEL_136:
          v85 = *v84;
          *v84 = v79;

          *(v84 + 8) = v77;
        }

        v72 = v76 + 2;
        v75 += 16;
      }

      while (v76 + 2 != a2);
    }
  }

  else if (!v74)
  {
    v124 = v8 + 3;
    do
    {
      v125 = a1[3];
      v126 = a1[1];
      a1 = v72;
      if (v125 > v126)
      {
        v127 = *v72;
        *v72 = 0.0;
        v128 = v124;
        do
        {
          v129 = v128;
          v130 = *(v128 - 3);
          *(v128 - 3) = 0.0;
          v131 = *(v128 - 1);
          *(v128 - 1) = v130;

          v132 = *(v128 - 2);
          v128 -= 2;
          *v129 = v132;
        }

        while (v125 > *(v129 - 4));
        v133 = *(v128 - 1);
        *(v128 - 1) = v127;

        *v128 = v125;
      }

      v72 = a1 + 2;
      v124 += 2;
    }

    while (a1 + 2 != a2);
  }
}

double sub_10001DBF0(uint64_t a1, double *a2)
{
  v4 = *a1;
  *a1 = 0;
  v5 = *a2;
  *a2 = 0.0;
  v6 = *a1;
  *a1 = v5;

  v7 = *a2;
  *a2 = v4;

  result = *(a1 + 8);
  *(a1 + 8) = a2[1];
  a2[1] = result;
  return result;
}

double sub_10001DC54(uint64_t a1, double *a2, double *a3, double *a4)
{
  v7 = a1;
  v8 = a2[1];
  v9 = a3[1];
  if (v8 <= *(a1 + 8))
  {
    if (v9 > v8)
    {
      sub_10001DBF0(a2, a3);
      if (a2[1] > *(v7 + 8))
      {
        a1 = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 > v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      sub_10001DBF0(a1, v10);
      goto LABEL_10;
    }

    sub_10001DBF0(a1, a2);
    if (a3[1] > a2[1])
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  result = a4[1];
  if (result > a3[1])
  {
    sub_10001DBF0(a3, a4);
    result = a3[1];
    if (result > a2[1])
    {
      sub_10001DBF0(a2, a3);
      result = a2[1];
      if (result > *(v7 + 8))
      {

        return sub_10001DBF0(v7, a2);
      }
    }
  }

  return result;
}

BOOL sub_10001DD6C(double *a1, double *a2)
{
  v3 = a1;
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 > a1[1])
        {
          if (v9 <= v8)
          {
            sub_10001DBF0(a1, a1 + 2);
            if (*(a2 - 1) <= v3[3])
            {
              return 1;
            }

            a1 = v3 + 2;
          }

          v5 = a2 - 2;
          goto LABEL_31;
        }

        if (v9 <= v8)
        {
          return 1;
        }

        v6 = (a1 + 2);
        v7 = a2 - 2;
        break;
      case 4:
        sub_10001DC54(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      case 5:
        sub_10001DC54(a1, a1 + 2, a1 + 4, a1 + 6);
        if (*(a2 - 1) <= v3[7])
        {
          return 1;
        }

        sub_10001DBF0((v3 + 6), a2 - 2);
        if (v3[7] <= v3[5])
        {
          return 1;
        }

        sub_10001DBF0((v3 + 4), v3 + 6);
        if (v3[5] <= v3[3])
        {
          return 1;
        }

        v6 = (v3 + 2);
        v7 = v3 + 4;
        break;
      default:
        goto LABEL_16;
    }

    sub_10001DBF0(v6, v7);
    if (v3[3] > v3[1])
    {
      v5 = v3 + 2;
      goto LABEL_24;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 1) > a1[1])
    {
      v5 = a2 - 2;
LABEL_24:
      a1 = v3;
LABEL_31:
      sub_10001DBF0(a1, v5);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = a1 + 4;
  v11 = a1[3];
  v12 = a1[5];
  if (v11 > a1[1])
  {
    if (v12 <= v11)
    {
      sub_10001DBF0(a1, a1 + 2);
      if (v3[5] <= v3[3])
      {
        goto LABEL_36;
      }

      a1 = v3 + 2;
    }

    v13 = v3 + 4;
    goto LABEL_35;
  }

  if (v12 > v11)
  {
    sub_10001DBF0((a1 + 2), a1 + 4);
    if (v3[3] > v3[1])
    {
      v13 = v3 + 2;
      a1 = v3;
LABEL_35:
      sub_10001DBF0(a1, v13);
    }
  }

LABEL_36:
  v14 = v3 + 6;
  if (v3 + 6 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = v14[1];
    if (v17 > v10[1])
    {
      v18 = *v14;
      *v14 = 0.0;
      v19 = v15;
      while (1)
      {
        v20 = v3 + v19;
        v21 = *(v3 + v19 + 32);
        *(v20 + 4) = 0;
        v22 = *(v3 + v19 + 48);
        *(v20 + 6) = v21;

        *(v20 + 7) = *(v20 + 5);
        if (v19 == -32)
        {
          break;
        }

        v19 -= 16;
        if (v17 <= *(v20 + 3))
        {
          v23 = v3 + v19 + 48;
          goto LABEL_44;
        }
      }

      v23 = v3;
LABEL_44:
      v24 = *v23;
      *v23 = v18;

      *(v23 + 8) = v17;
      if (++v16 == 8)
      {
        return v14 + 2 == a2;
      }
    }

    v10 = v14;
    v15 += 16;
    v14 += 2;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

void sub_10001E040(void ***a1)
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
        v6 = *(v4 - 2);
        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_10001E0C0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_10001E140(void *a1)
{
  *a1 = off_10013A0D8;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10001E190(void *a1)
{
  *a1 = off_10013A0D8;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  operator delete();
}

__n128 sub_10001E2A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *a2 = off_10013A0D8;
  *(a2 + 8) = v3;
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  *(a2 + 48) = 0;
  v6 = a2 + 48;
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  sub_10001CEA8(a2 + 48, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
  result = *(a1 + 72);
  *(v6 + 40) = *(a1 + 88);
  *(v6 + 24) = result;
  return result;
}

void sub_10001E31C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_10001E334(void *__p)
{
  v2 = __p[6];
  if (v2)
  {
    __p[7] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void sub_10001E378(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *v54 = 2082;
    *&v54[2] = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,scheduledPrecacheRun}", buf, 0x12u);
  }

  if (*(v1 + 40))
  {
    v3 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *v54 = 2082;
      *&v54[2] = "";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,cacheCanceled,cachingInProgress}", buf, 0x12u);
    }

    return;
  }

  *(v1 + 152) = 4;
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *v54 = 2082;
    *&v54[2] = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,trigger}", buf, 0x12u);
  }

  LOBYTE(v40[0]) = 0;
  HIDWORD(v40[0]) = -1;
  v40[3] = 0x40C5180000000000;
  *__p = 0u;
  memset(v42, 0, sizeof(v42));
  v5 = sub_10008E020();
  sub_10009019C(v5, v40);
  v6 = sub_100002DB0();
  if (*(v6 + 109) != 1 || (*(v6 + 108) & 1) == 0)
  {
    v32 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      *v54 = 2082;
      *&v54[2] = "";
      *&v54[10] = 2081;
      *&v54[12] = "isLocationAuthorized is not enabled";
      v33 = "{msg%{public}.0s:#mapcache,shouldCache,error, error:%{private, location:escape_only}s}";
      v34 = v32;
      v35 = OS_LOG_TYPE_ERROR;
      v36 = 28;
LABEL_39:
      _os_log_impl(&_mh_execute_header, v34, v35, v33, buf, v36);
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  v7 = sub_100002DB0();
  if (*(v7 + 127) != 1 || (*(v7 + 126) & 1) == 0)
  {
    v8 = sub_100002DB0();
    if ((sub_10007A4E8(v8) & 1) == 0)
    {
      v37 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *v54 = 2082;
        *&v54[2] = "";
        v33 = "{msg%{public}.0s:#mapcache,shouldCache,not enabled exiting}";
        goto LABEL_38;
      }

LABEL_40:
      v38 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_43;
      }

      *buf = 68289026;
      *&buf[4] = 0;
      *v54 = 2082;
      *&v54[2] = "";
      v27 = "{msg%{public}.0s:#mapcache,trigger don't cache}";
      v28 = buf;
      v29 = v38;
      v30 = OS_LOG_TYPE_DEFAULT;
      v31 = 18;
      goto LABEL_42;
    }
  }

  v9 = sub_100002DB0();
  if (*(v9 + 105) != 1 || (*(v9 + 104) & 1) == 0)
  {
    v37 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *v54 = 2082;
      *&v54[2] = "";
      v33 = "{msg%{public}.0s:#mapcache,shouldCache,notInCoveredRegion,exiting}";
LABEL_38:
      v34 = v37;
      v35 = OS_LOG_TYPE_DEFAULT;
      v36 = 18;
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  *v48 = 0;
  v10 = sub_100042820();
  v11 = [NSString stringWithUTF8String:"MPRECACHE_LAST_CACHE_TIME", v40[0]];
  sub_1000425BC(v10, v11, v48);

  Current = CFAbsoluteTimeGetCurrent();
  v13 = *v48;
  v14 = sub_100018910();
  v15 = Current - v13;
  v16 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289795;
    *&buf[4] = 0;
    *v54 = 2082;
    *&v54[2] = "";
    *&v54[10] = 2049;
    *&v54[12] = *v48;
    *&v54[20] = 2049;
    *&v54[22] = v15;
    *&v54[30] = 1025;
    *&v54[32] = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,shouldCache, lastCacheTime:%{private}0.1f, timeSinceLastCache:%{private}.1f, cacheIntervalSeconds:%{private}d}", buf, 0x2Cu);
  }

  if (v15 <= v14 * 0.9)
  {
    v37 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_40;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *v54 = 2082;
    *&v54[2] = "";
    v33 = "{msg%{public}.0s:#mapcache,#warning,shouldCache condition failed}";
    goto LABEL_38;
  }

  *(v1 + 40) = 1;
  v17 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *v54 = 2082;
    *&v54[2] = "";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,fetchLOIAndRefreshMapCache,entry}", buf, 0x12u);
  }

  if (*(v1 + 176))
  {
    v18 = objc_opt_new();
    v19 = *(v1 + 160);
    *(v1 + 160) = v18;

    v20 = *(v1 + 176);
    buf[0] = 0;
    *&buf[4] = -1;
    *&v54[16] = 0x40C5180000000000;
    *&v54[24] = 0u;
    memset(v55, 0, 28);
    v21 = sub_10008E020();
    sub_10009019C(v21, buf);
    LODWORD(v22) = *(sub_100042820() + 116);
    v23 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *v48 = 68289539;
      *&v48[4] = 0;
      *v49 = 2082;
      *&v49[2] = "";
      v50 = 1025;
      v51 = DWORD2(v55[1]);
      LOWORD(v52) = 1025;
      *(&v52 + 2) = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,getMapsPrecachingLOILookBackTimeSeconds, look back window MA:%{private}d, look back window:%{private}d}", v48, 0x1Eu);
      v23 = SALogObjectGeneral;
    }

    v24 = DWORD2(v55[1]);
    if (v22 >= 0)
    {
      v22 = v22;
    }

    else
    {
      v22 = DWORD2(v55[1]);
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v48 = 68289539;
      *&v48[4] = 0;
      *v49 = 2082;
      *&v49[2] = "";
      v50 = 1025;
      v51 = v24;
      LOWORD(v52) = 1025;
      *(&v52 + 2) = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mapcache,getMapsPrecachingLOILookBackTimeSeconds, look back window MA:%{private}d, look back window:%{private}d}", v48, 0x1Eu);
    }

    if (*&v54[24])
    {
      *&v54[32] = *&v54[24];
      operator delete(*&v54[24]);
    }

    v52 = 0;
    *buf = _NSConcreteStackBlock;
    *v54 = 3221225472;
    *&v54[8] = sub_100018F30;
    *&v54[16] = &unk_100139F28;
    *&v54[24] = v1;
    *v48 = off_10013A158;
    *v49 = objc_retainBlock(buf);
    v52 = v48;
    v25 = (*(*v20 + 40))(v20, v22, v48);
    sub_10001ED8C(v48);
    v26 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_43;
    }

    v43[0] = 68289282;
    v43[1] = 0;
    v44 = 2082;
    v45 = "";
    v46 = 1026;
    v47 = v25;
    v27 = "{msg%{public}.0s:#mapcache,fetchLOIAndRefreshMapCache,, result:%{public}hhd}";
    v28 = v43;
    v29 = v26;
    v30 = OS_LOG_TYPE_DEFAULT;
    v31 = 24;
    goto LABEL_42;
  }

  v39 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289283;
    *&buf[4] = 0;
    *v54 = 2082;
    *&v54[2] = "";
    *&v54[10] = 2081;
    *&v54[12] = "Routine instance is invalid";
    v27 = "{msg%{public}.0s:#mapcache,fetchLOIAndRefreshMapCache,error, error:%{private, location:escape_only}s}";
    v28 = buf;
    v29 = v39;
    v30 = OS_LOG_TYPE_ERROR;
    v31 = 28;
LABEL_42:
    _os_log_impl(&_mh_execute_header, v29, v30, v27, v28, v31);
  }

LABEL_43:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_10001EBAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  sub_10001ED8C(&a23);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10001EC08(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10001EC80(uint64_t a1)
{

  operator delete();
}

id sub_10001ECD4(uint64_t a1, void *a2)
{
  *a2 = off_10013A158;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t sub_10001ED1C(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return _objc_release_x1();
}

uint64_t sub_10001ED40(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013A1C8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001ED8C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_10001EE38(uint64_t a1)
{

  operator delete();
}

id sub_10001EE8C(uint64_t a1, void *a2)
{
  *a2 = off_10013A1E8;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t sub_10001EED4(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return _objc_release_x1();
}

uint64_t sub_10001EEF8(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013A258))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001EF44(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10001EFDC(std::string *__str)
{
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::basic_string(&__p, __str, 0, 2uLL, &v5);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    strtol(p_p, 0, 16);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    operator new();
  }

  return 0;
}

void sub_10001F184(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001F1A8(void *a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[1];
    v3 = a1[2];
    v5 = a1[3];
    v6 = *a1;
    v7[0] = 68290563;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2113;
    v11 = v4;
    v12 = 2049;
    v13 = v3;
    v14 = 2049;
    v15 = v5;
    v16 = 1025;
    v17 = v6;
    v18 = 1025;
    v19 = sub_10001F4CC(a1);
    v20 = 1025;
    v21 = sub_10001F644(a1);
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pk,log, key:%{private, location:escape_only}@, effective:%{private}.1f, expires:%{private}.1f, parseSuccessful:%{private}hhd, isValid:%{private}hhd, isInternal:%{private}hhd}", v7, 0x42u);
  }
}

uint64_t sub_10001F2F4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 16) = _Q0;
  *(a1 + 32) = 0;
  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 68289026;
    v11[1] = 0;
    v12 = 2082;
    v13 = "";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pk,copy constructor}", v11, 0x12u);
  }

  *(a1 + 16) = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 8) = CFDataCreateCopy(kCFAllocatorDefault, *(a2 + 8));
  return a1;
}

uint64_t sub_10001F3F8(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pk,released}", v5, 0x12u);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void sub_10001F4C0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10000DB70(a1);
}

BOOL sub_10001F4CC(uint64_t a1)
{
  if ((*a1 & 1) == 0)
  {
    v10 = SALogObjectGeneral;
    result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v11 = 68289026;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v7 = "{msg%{public}.0s:#pk,isValid,parse not successfull}";
    v8 = v10;
    v9 = 18;
    goto LABEL_8;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 16);
  if (Current < v3 || Current > *(a1 + 24))
  {
    v4 = SALogObjectGeneral;
    result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 24);
    v11 = 68289795;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2049;
    v16 = v3;
    v17 = 2049;
    v18 = v6;
    v19 = 2049;
    v20 = Current;
    v7 = "{msg%{public}.0s:#pk,isValid,out of range, effective:%{private}0.1f, expires:%{private}0.1f, now:%{private}0.1f}";
    v8 = v4;
    v9 = 48;
LABEL_8:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v11, v9);
    return 0;
  }

  return 1;
}

uint64_t sub_10001F644(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5[0] = 68289283;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 1025;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pk,isInternal, fIsInternal:%{private}d}", v5, 0x18u);
  }

  return *(a1 + 32);
}

void sub_10001F710(unsigned __int8 *a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1 + 24;
    if (a1[47] < 0)
    {
      v3 = *v3;
    }

    v5 = *(a1 + 18);
    v4 = *(a1 + 19);
    v7 = *(a1 + 6);
    v6 = *(a1 + 7);
    v9 = *(a1 + 1);
    v8 = *(a1 + 2);
    v10 = *a1;
    v11[0] = 68291075;
    v11[1] = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2081;
    v15 = v3;
    v16 = 1025;
    v17 = v5;
    v18 = 1025;
    v19 = v4;
    v20 = 1025;
    v21 = -858993459 * ((v6 - v7) >> 3);
    v22 = 2049;
    v23 = v9;
    v24 = 2049;
    v25 = v8;
    v26 = 1025;
    v27 = v10;
    v28 = 1025;
    v29 = sub_10001F890(a1);
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cob,log, uid:%{private, location:escape_only}s, contentVersion:%{private}d, compatibilityVersion:%{private}d, numKeys:%{private}d, effective:%{private}.1f, expires:%{private}.1f, parseSuccessful:%{private}hhd, isValid:%{private}hhd}", v11, 0x4Eu);
  }
}

BOOL sub_10001F890(uint64_t a1)
{
  if ((*a1 & 1) == 0)
  {
    v10 = SALogObjectGeneral;
    result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v11 = 68289026;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v7 = "{msg%{public}.0s:#cob,isValid,parse failed}";
    goto LABEL_8;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 8);
  if (Current < v3 || Current > *(a1 + 16))
  {
    v4 = SALogObjectGeneral;
    result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
    v11 = 68289795;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2049;
    v16 = v3;
    v17 = 2049;
    v18 = v6;
    v19 = 2049;
    v20 = Current;
    v7 = "{msg%{public}.0s:#cob,isValid,out of range, effective:%{private}0.1f, expires:%{private}0.1f, now:%{private}0.1f}";
    v8 = v4;
    v9 = 48;
    goto LABEL_9;
  }

  if (*(a1 + 48) != *(a1 + 56))
  {
    return 1;
  }

  v10 = SALogObjectGeneral;
  result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v11 = 68289026;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v7 = "{msg%{public}.0s:#cob,isValid,empty public keys}";
LABEL_8:
    v8 = v10;
    v9 = 18;
LABEL_9:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v11, v9);
    return 0;
  }

  return result;
}

__int128 *sub_10001FA68()
{
  if ((atomic_load_explicit(&qword_10014A8F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10014A8F0))
  {
    sub_10001FBDC();
  }

  return &xmmword_10014A8F8;
}

uint64_t sub_10001FAF8(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#aa,released}", v4, 0x12u);
  }

  sub_10001CB38(a1 + 24);
  sub_100022C98((a1 + 16), 0);
  sub_100022C14((a1 + 8), 0);

  return a1;
}

void sub_10001FBDC()
{
  xmmword_10014A8F8 = 0u;
  unk_10014A908 = 0u;
  xmmword_10014A918 = 0u;
  qword_10014A928 = 0;
  qword_10014A948 = 0;
  unk_10014A950 = 1;
  dword_10014A958 = 5;
  qword_10014A960 = 0xBFF0000000000000;
  dword_10014A968 = 257;
  byte_10014A96C = 0;
  dword_10014A970 = 0;
  word_10014A978 = 0;
  v0 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v2 = 0;
    v3 = 2082;
    v4 = "";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#aa,initialized}", buf, 0x12u);
  }

  operator new();
}

void sub_10001FDA0(_Unwind_Exception *a1)
{
  sub_10001CB38(v1 + 24);
  sub_100022C98((v1 + 16), 0);
  sub_100022C14((v1 + 8), 0);

  _Unwind_Resume(a1);
}

void sub_10001FDE0()
{
  sub_1000212A8(&__p);
  v0 = v26;
  v1 = v26;
  if ((v26 & 0x80u) == 0)
  {
    v2 = v26;
  }

  else
  {
    v2 = v25;
  }

  v3 = SALogObjectGeneral;
  v4 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (!v2)
  {
    if (!v4)
    {
      goto LABEL_38;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v7 = "{msg%{public}.0s:#aa,loadCodebook,empty file path}";
    v8 = v3;
    v9 = 18;
LABEL_27:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    goto LABEL_38;
  }

  if (v4)
  {
    p_p = __p;
    if (v1 >= 0)
    {
      p_p = &__p;
    }

    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v28 = 2081;
    v29 = p_p;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#aa,loadCodebook, filePath:%{private, location:escape_only}s}", buf, 0x1Cu);
    v0 = v26;
  }

  if ((v0 & 0x80) == 0)
  {
    if (v0)
    {
      v6 = &__p;
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  if (!v25)
  {
LABEL_23:
    v15 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    v16 = &__p;
    if ((v0 & 0x80u) != 0)
    {
      v16 = __p;
    }

    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v28 = 2081;
    v29 = v16;
    v7 = "{msg%{public}.0s:#aa,loadCodebook,invalid path, filePath:%{private, location:escape_only}s}";
    v8 = v15;
    v9 = 28;
    goto LABEL_27;
  }

  v6 = __p;
LABEL_16:
  v10 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", v6, +[NSString defaultCStringEncoding]);
  if (!v10)
  {
    v17 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v18 = &__p;
      if ((v26 & 0x80u) != 0)
      {
        v18 = __p;
      }

      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v28 = 2081;
      v29 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#aa,loadCodebook,path not derived, filePath:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    goto LABEL_37;
  }

  v11 = [NSData dataWithContentsOfFile:v10];
  if (!v11)
  {
    v19 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v20 = &__p;
      if ((v26 & 0x80u) != 0)
      {
        v20 = __p;
      }

      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v28 = 2081;
      v29 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#aa,loadCodebook,read failed, filePath:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    goto LABEL_36;
  }

  v23 = 0;
  v12 = [NSJSONSerialization JSONObjectWithData:v11 options:0 error:&v23];
  v22 = v23;
  if (!v22)
  {
    if (v12)
    {
      operator new();
    }

    v13 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v21 = &__p;
    if ((v26 & 0x80u) != 0)
    {
      v21 = __p;
    }

    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v28 = 2081;
    v29 = v21;
    v14 = "{msg%{public}.0s:#aa,loadCodebook,codebook dict empty, filePath:%{private, location:escape_only}s}";
    goto LABEL_21;
  }

  v13 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v28 = 2113;
    v29 = v22;
    v14 = "{msg%{public}.0s:#aa,loadCodebook,error converting to dict, error:%{private, location:escape_only}@}";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0x1Cu);
  }

LABEL_22:

LABEL_36:
LABEL_37:

LABEL_38:
  if (v26 < 0)
  {
    operator delete(__p);
  }
}

void sub_100021030(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41)
{
  a41 = a18;
  sub_100022B90(&a41);
  if (*(a28 + 47) < 0)
  {
    operator delete(*a17);
  }

  operator delete();
}

void sub_1000212A8(uint64_t a1)
{
  v2 = sub_10008E020();
  sub_10008F4D4(v2, &__p);
  sub_1000060C4(a1, "");
  v3 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v3 = v12;
  }

  if (v3)
  {
    sub_1000060C4(&v14, "/var/mobile/Library/com.apple.safetyalerts/");
    if ((v13 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v13 & 0x80u) == 0)
    {
      v5 = v13;
    }

    else
    {
      v5 = v12;
    }

    v6 = std::string::append(&v14, p_p, v5);
    v7 = v6->__r_.__value_.__r.__words[0];
    v15[0] = v6->__r_.__value_.__l.__size_;
    *(v15 + 7) = *(&v6->__r_.__value_.__r.__words[1] + 7);
    v8 = HIBYTE(v6->__r_.__value_.__r.__words[2]);
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v9 = v15[0];
    *a1 = v7;
    *(a1 + 8) = v9;
    *(a1 + 15) = *(v15 + 7);
    *(a1 + 23) = v8;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v10 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v14.__r_.__value_.__r.__words[0] = 68289026;
      LOWORD(v14.__r_.__value_.__r.__words[1]) = 2082;
      *(&v14.__r_.__value_.__r.__words[1] + 2) = "";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#aa,downloadCodebook,empty codebook file name}", &v14, 0x12u);
    }
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }
}

void sub_100021430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100021484(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    buf = 68289539;
    v57 = 2082;
    v58 = "";
    v59 = 2081;
    v60 = v7;
    v61 = 2081;
    v62 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#aa,isSignatureValidUsingCodebook, data:%{private, location:escape_only}s, signature:%{private, location:escape_only}s}", &buf, 0x26u);
  }

  if (*(sub_100042820() + 410) != 1)
  {
    v11 = *(a2 + 23);
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a2 + 8);
    }

    if (v11)
    {
      if (*(a3 + 23) < 0)
      {
        v12 = a3[1];
        if (v12)
        {
          sub_100004CEC(bytes, *a3, v12);
LABEL_21:
          v13 = SHIBYTE(v49);
          if ((SHIBYTE(v49) & 0x8000000000000000) != 0)
          {
            v13 = bytes[1];
            if (bytes[1])
            {
              v14 = bytes[0];
LABEL_28:
              v16 = CFDataCreate(kCFAllocatorDefault, v14, v13);
              v17 = v16;
              if (v16)
              {
                v18 = v16;
                if (CC_SHA224([(__CFData *)v17 bytes], [(__CFData *)v17 length], &buf))
                {
                  v19 = CFDataCreate(kCFAllocatorDefault, &buf, 28);
                  if (v19)
                  {
LABEL_43:

LABEL_44:
                    if (SHIBYTE(v49) < 0)
                    {
                      operator delete(bytes[0]);
                    }

                    v24 = sub_10001EFDC(a2);
                    v25 = v24;
                    if (v19 && v24)
                    {
                      v26 = *(a1 + 8);
                      if (v26)
                      {
                        v27 = *(v26 + 48);
                        for (i = *(v26 + 56); v27 != i; v27 += 40)
                        {
                          sub_10001F2F4(v51, v27);
                          if (sub_10001F4CC(v51))
                          {
                            v29 = sub_10001F644(v51);
                            if (v29 && (*(SAPlatformInfo::instance(v29) + 9) & 1) == 0)
                            {
                              v40 = SALogObjectGeneral;
                              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                              {
                                buf = 68289026;
                                v57 = 2082;
                                v58 = "";
                                v38 = v40;
                                v39 = "{msg%{public}.0s:#aa,isSignatureValidUsingCodebook,internal key on prod}";
                                goto LABEL_69;
                              }
                            }

                            else
                            {
                              v30 = v53[0];
                              v31 = SALogObjectGeneral;
                              v32 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
                              if (v30)
                              {
                                if (v32)
                                {
                                  buf = 68289795;
                                  v57 = 2082;
                                  v58 = "";
                                  v59 = 2113;
                                  v60 = v25;
                                  v61 = 2113;
                                  v62 = v19;
                                  v63 = 2113;
                                  v64 = v30;
                                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#aa,isSignatureValidInternal, signature:%{private, location:escape_only}@, dataHash:%{private, location:escape_only}@, publicKeyData:%{private, location:escape_only}@}", &buf, 0x30u);
                                }

                                v54[0] = kSecAttrKeyType;
                                v54[1] = kSecAttrKeyClass;
                                v55[0] = kSecAttrKeyTypeEC;
                                v55[1] = kSecAttrKeyClassPublic;
                                v54[2] = kSecAttrKeySizeInBits;
                                v55[2] = &off_1001465E8;
                                v33 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:3];
                                if (v33)
                                {
                                  error = 0;
                                  v34 = SecKeyCreateWithData(v30, v33, &error);
                                  v35 = v34;
                                  v36 = error;
                                  if (error)
                                  {
                                    v37 = SALogObjectGeneral;
                                    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT) || (buf = 68289283, v57 = 2082, v58 = "", v59 = 2113, v60 = v36, _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#aa,isSignatureValidInternal,error in create publicKeyRef, error:%{private, location:escape_only}@}", &buf, 0x1Cu), (v36 = error) != 0))
                                    {
                                      CFRelease(v36);
                                    }

                                    if (!v35)
                                    {
                                      goto LABEL_70;
                                    }

LABEL_62:
                                    CFRelease(v35);
                                    goto LABEL_70;
                                  }

                                  if (!v34)
                                  {
                                    v45 = SALogObjectGeneral;
                                    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                                    {
                                      goto LABEL_70;
                                    }

                                    buf = 68289026;
                                    v57 = 2082;
                                    v58 = "";
                                    v38 = v45;
                                    v39 = "{msg%{public}.0s:#aa,isSignatureValidInternal,publicKeyRef nil}";
                                    goto LABEL_69;
                                  }

                                  v42 = SecKeyVerifySignature(v34, kSecKeyAlgorithmECDSASignatureDigestRFC4754, v19, v25, &error);
                                  CFRelease(v35);
                                  v35 = error;
                                  v43 = SALogObjectGeneral;
                                  v44 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
                                  if (v35)
                                  {
                                    if (v44)
                                    {
                                      buf = 68289283;
                                      v57 = 2082;
                                      v58 = "";
                                      v59 = 2113;
                                      v60 = v35;
                                      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#aa,isSignatureValidInternal,error in verify signature, error:%{private, location:escape_only}@}", &buf, 0x1Cu);
                                      v35 = error;
                                      if (!error)
                                      {
                                        goto LABEL_70;
                                      }
                                    }

                                    goto LABEL_62;
                                  }

                                  if (v44)
                                  {
                                    buf = 68289283;
                                    v57 = 2082;
                                    v58 = "";
                                    v59 = 1025;
                                    LODWORD(v60) = v42 != 0;
                                    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#aa,isSignatureValidInternal, isValid:%{private}hhd}", &buf, 0x18u);
                                  }

                                  if (v42)
                                  {
                                    CFRelease(v19);
                                    CFRelease(v25);
                                    sub_10001F3F8(v51);
                                    return 1;
                                  }
                                }

                                else
                                {
                                  v41 = SALogObjectGeneral;
                                  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                                  {
                                    buf = 68289026;
                                    v57 = 2082;
                                    v58 = "";
                                    v38 = v41;
                                    v39 = "{msg%{public}.0s:#aa,isSignatureValidInternal,attributes nil}";
                                    goto LABEL_69;
                                  }
                                }
                              }

                              else if (v32)
                              {
                                buf = 68289026;
                                v57 = 2082;
                                v58 = "";
                                v38 = v31;
                                v39 = "{msg%{public}.0s:#aa,isSignatureValidInternal,nil input}";
LABEL_69:
                                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v39, &buf, 0x12u);
                              }
                            }
                          }

LABEL_70:
                          sub_10001F3F8(v51);
                        }
                      }

                      else
                      {
                        v47 = SALogObjectGeneral;
                        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                        {
                          buf = 68289026;
                          v57 = 2082;
                          v58 = "";
                          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#aa,isSignatureValidUsingCodebook,codebook nil}", &buf, 0x12u);
                        }
                      }

                      CFRelease(v19);
                      CFRelease(v25);
                    }

                    else
                    {
                      v46 = SALogObjectGeneral;
                      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                      {
                        buf = 68289026;
                        v57 = 2082;
                        v58 = "";
                        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#aa,isSignatureValidUsingCodebook,cfData input nil}", &buf, 0x12u);
                      }

                      if (v19)
                      {
                        CFRelease(v19);
                      }

                      if (v25)
                      {
                        CFRelease(v25);
                      }
                    }

                    return 0;
                  }

                  v20 = SALogObjectGeneral;
                  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                  {
                    *v51 = 68289026;
                    v52 = 0;
                    LOWORD(v53[0]) = 2082;
                    *(v53 + 2) = "";
                    v21 = "{msg%{public}.0s:#aa,isSignatureValidInternal,dataHash nil}";
LABEL_41:
                    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, v51, 0x12u);
                  }
                }

                else
                {
                  v20 = SALogObjectGeneral;
                  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                  {
                    *v51 = 68289026;
                    v52 = 0;
                    LOWORD(v53[0]) = 2082;
                    *(v53 + 2) = "";
                    v21 = "{msg%{public}.0s:#aa,generateHashOfData,failed to generate SHA224}";
                    goto LABEL_41;
                  }
                }

                v19 = 0;
                goto LABEL_43;
              }

              v22 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                buf = 68289026;
                v57 = 2082;
                v58 = "";
                v23 = "{msg%{public}.0s:#aa,generateHashOfData,dataRef nil}";
                goto LABEL_37;
              }

              goto LABEL_38;
            }
          }

          else if (HIBYTE(v49))
          {
            v14 = bytes;
            goto LABEL_28;
          }

          v22 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            buf = 68289026;
            v57 = 2082;
            v58 = "";
            v23 = "{msg%{public}.0s:#aa,generateHashOfData,empty input}";
LABEL_37:
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, &buf, 0x12u);
          }

LABEL_38:
          v19 = 0;
          goto LABEL_44;
        }
      }

      else if (*(a3 + 23))
      {
        *bytes = *a3;
        v49 = a3[2];
        goto LABEL_21;
      }
    }

    v15 = SALogObjectGeneral;
    result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    buf = 68289026;
    v57 = 2082;
    v58 = "";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#aa,isSignatureValidUsingCodebook,input empty}", &buf, 0x12u);
    return 0;
  }

  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v57 = 2082;
    v58 = "";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#aa,isSignatureValidUsingCodebook,bypass signature check}", &buf, 0x12u);
  }

  return 1;
}

void sub_100021E9C(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong(a1, a2);
  v5 = *(a1 + 16);
  if (!v5)
  {
    operator new();
  }

  if ((*(v5 + 32) & 1) == 0)
  {
    v9 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 68289026;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v10 = "{msg%{public}.0s:#aa,setupBgSysTask,init failed}";
    v11 = v9;
    v12 = OS_LOG_TYPE_DEFAULT;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v11, v12, v10, buf, 0x12u);
    goto LABEL_15;
  }

  v6 = *(sub_100042820() + 44);
  if (v6 <= 0.0)
  {
    v7 = sub_10008E020();
    v6 = sub_10008F2C0(v7);
  }

  v8 = SALogObjectGeneral;
  if (v6 <= 0.0)
  {
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 68289026;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v10 = "{msg%{public}.0s:#aa,setupBgSysTask,invalid download period}";
    v11 = v8;
    v12 = OS_LOG_TYPE_ERROR;
    goto LABEL_14;
  }

  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2049;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#aa,setupBgSysTask, downloadPeriodSeconds:%{private}0.1f}", buf, 0x1Cu);
  }

  sub_10001D128((a1 + 24), [@"com.apple.safetyalerts.aa" UTF8String]);
  objc_storeStrong((a1 + 48), *a1);
  v13[0] = off_10013A298;
  v13[1] = a1;
  v13[3] = v13;
  sub_10001CBD0((a1 + 56), v13);
  *(a1 + 96) = 4;
  *(a1 + 104) = v6;
  *(a1 + 112) = 256;
  *(a1 + 88) = 1;
  sub_100060DE4(a1 + 24);
  sub_10000F274(v13);
LABEL_15:
}

void sub_100022180(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 && (*(v2 + 32) & 1) != 0)
  {
    v3 = sub_10008E020();
    sub_10008F4D4(v3, v37);
    v4 = v38;
    if ((v38 & 0x80u) != 0)
    {
      v4 = v37[1];
    }

    if (v4)
    {
      v5 = sub_10008E020();
      sub_10008F4D4(v5, buf);
      sub_1000060C4(&__p, "");
      v6 = BYTE3(v44);
      if (SBYTE3(v44) < 0)
      {
        v6 = *v42;
      }

      if (v6)
      {
        v7 = sub_100042820();
        if (*(v7 + 239) < 0)
        {
          sub_100004CEC(&__dst, v7[27], v7[28]);
        }

        else
        {
          __dst = *(v7 + 9);
        }

        v11 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        v12 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        size = __dst.__r_.__value_.__l.__size_;
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v14 = __dst.__r_.__value_.__l.__size_;
        }

        if (!v14)
        {
          v15 = sub_10008E020();
          sub_10008F300(v15, &v48);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          __dst = v48;
          v11 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
          size = v48.__r_.__value_.__l.__size_;
          v12 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
        }

        if (v12 < 0)
        {
          v11 = size;
        }

        if (v11)
        {
          SACommonUtils::getHashForString(buf, &v48);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v17 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v17 = __dst.__r_.__value_.__l.__size_;
          }

          v18 = std::string::insert(&v48, 0, p_dst, v17);
          v19 = v18->__r_.__value_.__r.__words[0];
          v47[0] = v18->__r_.__value_.__l.__size_;
          *(v47 + 7) = *(&v18->__r_.__value_.__r.__words[1] + 7);
          v20 = HIBYTE(v18->__r_.__value_.__r.__words[2]);
          v18->__r_.__value_.__l.__size_ = 0;
          v18->__r_.__value_.__r.__words[2] = 0;
          v18->__r_.__value_.__r.__words[0] = 0;
          if (v36 < 0)
          {
            operator delete(__p);
          }

          __p = v19;
          *v35 = v47[0];
          *&v35[7] = *(v47 + 7);
          v36 = v20;
          if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v48.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v21 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            v48.__r_.__value_.__r.__words[0] = 68289026;
            LOWORD(v48.__r_.__value_.__r.__words[1]) = 2082;
            *(&v48.__r_.__value_.__r.__words[1] + 2) = "";
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#aa,downloadCodebook,pull cname unavailable}", &v48, 0x12u);
          }
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v10 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          __dst.__r_.__value_.__r.__words[0] = 68289026;
          LOWORD(__dst.__r_.__value_.__r.__words[1]) = 2082;
          *(&__dst.__r_.__value_.__r.__words[1] + 2) = "";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#aa,downloadCodebook,empty codebook file name}", &__dst, 0x12u);
        }
      }

      if (SBYTE3(v44) < 0)
      {
        operator delete(*buf);
      }

      sub_1000212A8(&__dst);
      v22 = v36;
      v23 = v36;
      if ((v36 & 0x80u) != 0)
      {
        v22 = *v35;
      }

      if (!v22)
      {
        goto LABEL_59;
      }

      v24 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      v25 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v24 = __dst.__r_.__value_.__l.__size_;
      }

      if (v24)
      {
        v26 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          p_p = __p;
          if (v23 >= 0)
          {
            p_p = &__p;
          }

          v28 = __dst.__r_.__value_.__r.__words[0];
          if (v25 >= 0)
          {
            v28 = &__dst;
          }

          *buf = 68289539;
          *&buf[4] = 0;
          *v42 = 2082;
          *&v42[2] = "";
          v43 = 2081;
          v44 = p_p;
          v45 = 2081;
          v46 = v28;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#aa,downloadCodebook,downloading public keys codebook, srcUrl:%{private, location:escape_only}s, dstPath:%{private, location:escape_only}s}", buf, 0x26u);
        }

        v29 = *(a1 + 16);
        v30 = *(sub_100042820() + 43);
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_100022808;
        v33[3] = &unk_10013A268;
        v33[4] = a1;
        v40 = 0;
        v39[0] = off_10013A1E8;
        v39[1] = objc_retainBlock(v33);
        v40 = v39;
        sub_100082E9C(v29, &__p, &__dst, 4, v39, v30);
        sub_10001E0C0(v39);
        v31 = 257;
      }

      else
      {
LABEL_59:
        v32 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *v42 = 2082;
          *&v42[2] = "";
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#aa,downloadCodebook,empty codebook file or url path}", buf, 0x12u);
        }

        v31 = 256;
      }

      *(a1 + 128) = v31;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (v36 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v9 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *v42 = 2082;
        *&v42[2] = "";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#aa,downloadCodebook,empty codebook file name}", buf, 0x12u);
      }

      *(a1 + 128) = 256;
    }

    if (v38 < 0)
    {
      operator delete(v37[0]);
    }
  }

  else
  {
    v8 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *v42 = 2082;
      *&v42[2] = "";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#aa,downloadCodebook,downloader not ready}", buf, 0x12u);
    }

    *(a1 + 128) = 256;
  }
}

void sub_100022744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_10001E0C0(&a27);
  if (*(v36 - 89) < 0)
  {
    operator delete(*(v36 - 112));
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void sub_100022808(uint64_t a1, int a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  v13 = @"status";
  v4 = [NSNumber numberWithInt:a2 ^ 1u];
  v14 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];

  v6 = sub_10004ECB4();
  sub_10004FD8C(v6, 2, v5);
  v7 = SALogObjectGeneral;
  v8 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v8)
    {
      v9 = 68289026;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#aa,downloadCodebook,codebook downloaded}", &v9, 0x12u);
    }

    sub_10001FDE0();
  }

  else if (v8)
  {
    v9 = 68289026;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#aa,downloadCodebook,failed to download}", &v9, 0x12u);
  }
}

void sub_1000229AC(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 129);
    if (v3 == 1)
    {
      v4 = *(a1 + 128);
    }

    else
    {
      v4 = -1;
    }

    *buf = 68289538;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 1026;
    v12 = v3;
    v13 = 1026;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#aa,onAssetDonwloadCb, fCodebookDownloadAttemptSuccess has value:%{public}hhd, fCodebookDownloadAttemptSuccess:%{public}d}", buf, 0x1Eu);
  }

  v5 = *a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022AE4;
  block[3] = &unk_1001390D0;
  block[4] = a1;
  dispatch_async(v5, block);
}

void sub_100022AE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 129) == 1 && (*(v1 + 128) & 1) == 0)
  {
    sub_100022180(*(a1 + 32));
  }

  sub_10001FDE0();
  v2 = *v1;

  sub_100021E9C(v1, v2);
}

uint64_t sub_100022B40(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    sub_10001F3F8(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100022B90(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_10001F3F8(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *sub_100022C14(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (v2 + 48);
    sub_100022B90(&v3);
    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    operator delete();
  }

  return result;
}

id *sub_100022C98(id **a1, id *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100082E58(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100022D54(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013A298;
  a2[1] = v2;
  return result;
}

void sub_100022D80(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 68289026;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#aa,bgSysTaskCallback}", v3, 0x12u);
  }

  sub_100022180(v1);
}

uint64_t sub_100022E40(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100022E8C(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = 0x4024000000000000;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  v4 = v3;
  *(a1 + 48) = v4;
  v5 = SALogObjectGeneral;
  v6 = v4;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v9 = 2082;
    v10 = "";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#fum,initialized}", buf, 0x12u);
    v6 = *(a1 + 48);
  }

  sub_1000060C4(&__p, "com.apple.safetyalerts.pendingFollowUpMetrics");
  SATimer::create(v6);
}

void sub_100022FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v19 = *(v16 + 32);
  *(v16 + 32) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  sub_100024574(&a16);

  _Unwind_Resume(a1);
}

uint64_t sub_100023068(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 68289026;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#fum,destructor}", &v5, 0x12u);
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v5 = a1 + 8;
  sub_100024574(&v5);
  return a1;
}

void sub_100023170(uint64_t a1, uint64_t a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a2 + 8;
    if (*(a2 + 31) < 0)
    {
      v5 = *(a2 + 8);
    }

    *buf = 68289283;
    *&buf[4] = 0;
    LOWORD(v46.__r_.__value_.__l.__data_) = 2082;
    *(v46.__r_.__value_.__r.__words + 2) = "";
    WORD1(v46.__r_.__value_.__r.__words[1]) = 2081;
    *(&v46.__r_.__value_.__r.__words[1] + 4) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#fum,onFollowUpAlertReceived, alertID:%{private, location:escape_only}s}", buf, 0x1Cu);
  }

  v6 = time(0);
  memset(&v46, 0, sizeof(v46));
  BYTE8(v48) = 0;
  v49 = 0;
  std::string::operator=(&v46, (a2 + 8));
  v7 = (v6 + -978307200.0);
  v8 = v7 - *(a2 + 192);
  *buf = v7;
  *(&v47 + 1) = v8;
  *&v48 = 0xBFF0000000000000;
  if (*(a1 + 40))
  {
    v39 = -1.0;
    memset(&__p, 0, sizeof(__p));
    if (*(a2 + 31) < 0)
    {
      sub_100004CEC(v36, *(a2 + 8), *(a2 + 16));
    }

    else
    {
      *v36 = *(a2 + 8);
      v37 = *(a2 + 24);
    }

    v18 = sub_100023650(a1, v36, &v39, &__p);
    LOBYTE(v47) = v18;
    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36[0]);
      if ((v47 & 1) == 0)
      {
LABEL_24:
        v40 = _NSConcreteStackBlock;
        v41 = 3221225472;
        v42 = sub_100023A78;
        v43 = &unk_10013A308;
        v44 = buf;
        AnalyticsSendEventLazy();
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_42;
      }
    }

    else if (!v18)
    {
      goto LABEL_24;
    }

    *(&v48 + 1) = v7 - v39;
    v49 = 1;
    goto LABEL_24;
  }

  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  if (v10 >= v9)
  {
    v13 = *(a1 + 8);
    v14 = 0x8E38E38E38E38E39 * ((v10 - v13) >> 3);
    if (v14 + 1 > 0x38E38E38E38E38ELL)
    {
      sub_10000509C();
    }

    v15 = 0x8E38E38E38E38E39 * ((v9 - v13) >> 3);
    v16 = 2 * v15;
    if (2 * v15 <= v14 + 1)
    {
      v16 = v14 + 1;
    }

    if (v15 >= 0x1C71C71C71C71C7)
    {
      v17 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v17 = v16;
    }

    v44 = (a1 + 8);
    if (v17)
    {
      if (v17 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      sub_100004E38();
    }

    v22 = 72 * v14;
    v40 = 0;
    v41 = v22;
    v42 = v22;
    v43 = 0;
    *v22 = v7;
    v23 = (v22 + 8);
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100004CEC(v23, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
      v24 = v41;
      v25 = v42;
    }

    else
    {
      *v23 = *&v46.__r_.__value_.__l.__data_;
      *(v22 + 24) = *(&v46.__r_.__value_.__l + 2);
      v24 = v22;
      v25 = v22;
    }

    v26 = v48;
    *(v22 + 32) = v47;
    *(v22 + 48) = v26;
    *(v22 + 64) = v49;
    v21 = v25 + 72;
    v42 = (v25 + 72);
    v27 = *(a1 + 8);
    v28 = *(a1 + 16);
    v29 = v24 + v27 - v28;
    if (v27 != v28)
    {
      v30 = *(a1 + 8);
      v31 = v29;
      do
      {
        *v31 = *v30;
        v32 = *(v30 + 8);
        *(v31 + 24) = *(v30 + 24);
        *(v31 + 8) = v32;
        *(v30 + 16) = 0;
        *(v30 + 24) = 0;
        *(v30 + 8) = 0;
        v33 = *(v30 + 32);
        v34 = *(v30 + 48);
        *(v31 + 64) = *(v30 + 64);
        *(v31 + 32) = v33;
        *(v31 + 48) = v34;
        v30 += 72;
        v31 += 72;
      }

      while (v30 != v28);
      do
      {
        if (*(v27 + 31) < 0)
        {
          operator delete(*(v27 + 8));
        }

        v27 += 72;
      }

      while (v27 != v28);
      v27 = *(a1 + 8);
    }

    *(a1 + 8) = v29;
    *(a1 + 16) = v21;
    v35 = *(a1 + 24);
    *(a1 + 24) = v43;
    v42 = v27;
    v43 = v35;
    v40 = v27;
    v41 = v27;
    sub_1000245C8(&v40);
  }

  else
  {
    *v10 = v7;
    v11 = (v10 + 8);
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100004CEC(v11, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
    }

    else
    {
      v12 = *&v46.__r_.__value_.__l.__data_;
      *(v10 + 24) = *(&v46.__r_.__value_.__l + 2);
      *v11 = v12;
    }

    v19 = v47;
    v20 = v48;
    *(v10 + 64) = v49;
    *(v10 + 32) = v19;
    *(v10 + 48) = v20;
    v21 = v10 + 72;
    *(a1 + 16) = v21;
  }

  *(a1 + 16) = v21;
LABEL_42:
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }
}

void sub_1000235E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  sub_1000245C8(&a22);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100023650(uint64_t a1, char *a2, void *a3, std::string *a4)
{
  v8 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v28 = 2082;
    v29 = "";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#fum,isIgneousReceived}", buf, 0x12u);
  }

  if (*(a1 + 40))
  {
    sub_1000247C0(buf);
    sub_1000060C4(&__str, "igneous_received");
    std::string::operator=(&v35, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    HIBYTE(v28) = 0;
    v34[4] = 2000;
    sub_1000060C4(&__str, "/var/mobile/Library/com.apple.safetyalerts/");
    sub_1000060C4(__p, "igneous_received.elog");
    if ((v24 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    if ((v24 & 0x80u) == 0)
    {
      v10 = v24;
    }

    else
    {
      v10 = __p[1];
    }

    v11 = std::string::append(&__str, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v22 = v11->__r_.__value_.__r.__words[2];
    *v21 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v22 >= 0)
    {
      v13 = v21;
    }

    else
    {
      v13 = v21[0];
    }

    v26[0] = off_10013A338;
    v26[3] = v26;
    v25[0] = off_10013A338;
    v25[3] = v25;
    v14 = sub_100023C34(buf, v13, 0x1388uLL, v26, v25);
    sub_100024884(v25);
    sub_100024884(v26);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
      if (v14)
      {
LABEL_27:
        sub_100023D90(buf);
        SACommonUtils::getHashForString(a2, v19);
        v16 = sub_100023EF4(buf, v19, a3, a4);
        if (v20 < 0)
        {
          operator delete(v19[0]);
        }

        if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v35.__r_.__value_.__l.__data_);
        }

        sub_100024884(v34);
        sub_100024884(&v33);
        if (v32 < 0)
        {
          operator delete(v31);
        }

        __str.__r_.__value_.__r.__words[0] = &v30;
        sub_1000246A0(&__str);

        return v16;
      }
    }

    else if (v14)
    {
      goto LABEL_27;
    }

    v17 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      __str.__r_.__value_.__r.__words[0] = 68289026;
      LOWORD(__str.__r_.__value_.__r.__words[1]) = 2082;
      *(&__str.__r_.__value_.__r.__words[1] + 2) = "";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,#warning,persistentStorageConfigFailed}", &__str, 0x12u);
    }

    goto LABEL_27;
  }

  v15 = SALogObjectGeneral;
  v16 = 0;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v28 = 2082;
    v29 = "";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#fum,isIgneousReceived,not first unlocked}", buf, 0x12u);
    return 0;
  }

  return v16;
}

void sub_1000239E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10002462C(&a36);
  _Unwind_Resume(a1);
}

id sub_100023A78(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v4 = (v3 + 8);
  if (*(v3 + 31) < 0)
  {
    v4 = *v4;
  }

  v5 = [NSString stringWithUTF8String:v4];
  [v2 setObject:v5 forKeyedSubscript:@"alertID"];

  v6 = [NSNumber numberWithBool:*(*(a1 + 32) + 32)];
  [v2 setObject:v6 forKeyedSubscript:@"wasActualAlertReceived"];

  v7 = [NSNumber numberWithDouble:*(*(a1 + 32) + 40)];
  [v2 setObject:v7 forKeyedSubscript:@"latencyRelativeToOrigin"];

  v8 = [NSNumber numberWithDouble:*(*(a1 + 32) + 40)];
  [v2 setObject:v8 forKeyedSubscript:@"latencyRelativeToOriginator"];

  v9 = [NSNumber numberWithDouble:*(*(a1 + 32) + 48)];
  [v2 setObject:v9 forKeyedSubscript:@"latencyRelativeToServer"];

  v10 = *(a1 + 32);
  if (*(v10 + 64) == 1)
  {
    v11 = [NSNumber numberWithDouble:*(v10 + 56)];
    [v2 setObject:v11 forKeyedSubscript:@"latencyRelativeToActualAlertReceived"];
  }

  return v2;
}

uint64_t sub_100023C34(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 && *(a4 + 24) && a3 <= 0x10000 && *(a5 + 24))
  {
    sub_1000060C4(v13, a2);
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    *(a1 + 56) = *v13;
    *(a1 + 72) = *&v13[16];
    sub_100024904((a1 + 80), a4);
    sub_100024904((a1 + 112), a5);
    *(a1 + 152) = a3;
    return 1;
  }

  else
  {
    v10 = SALogObjectGeneral;
    v11 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v11)
    {
      v12 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v12 = *v12;
      }

      *v13 = 68289283;
      *&v13[8] = 2082;
      *&v13[10] = "";
      *&v13[18] = 2081;
      *&v13[20] = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,#warning,invalidArgs, history:%{private, location:escape_only}s}", v13, 0x1Cu);
      return 0;
    }
  }

  return result;
}

void sub_100023D90(_BYTE *a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1 + 168;
    if (a1[191] < 0)
    {
      v3 = *v3;
    }

    v5 = 68289283;
    v6 = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2081;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,onFirstUnlock, history:%{private, location:escape_only}s}", &v5, 0x1Cu);
  }

  if (a1[192] == 1)
  {
    v4 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 68289026;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,#warning,onFirstUnlock,skip}", &v5, 0x12u);
    }
  }

  else
  {
    a1[192] = 1;
    if (a1[9] == 1)
    {
      sub_100024DD8(a1);
    }
  }
}

uint64_t sub_100023EF4(uint64_t a1, uint64_t *a2, void *a3, std::string *a4)
{
  v8 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v9 = (a1 + 168);
    if (*(a1 + 191) < 0)
    {
      v9 = *v9;
    }

    *buf = 68289283;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v29 = 2081;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,isFoundInternal, debugName:%{private, location:escape_only}s}", buf, 0x1Cu);
  }

  v24[0] = off_10013A3C8;
  v24[1] = a1;
  v24[3] = v24;
  v23[0] = off_10013A448;
  v23[1] = a1;
  v23[3] = v23;
  sub_1000104CC(buf, v24, v23);
  sub_10000F274(v23);
  sub_10000F274(v24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (v10 == v11)
  {
LABEL_21:
    v21 = 0;
  }

  else
  {
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = *(a2 + 23);
    }

    else
    {
      v13 = a2[1];
    }

    v14 = (v10 + 32);
    while (1)
    {
      size = HIBYTE(v14[-1].__r_.__value_.__r.__words[2]);
      v16 = size;
      if ((size & 0x80u) != 0)
      {
        size = v14[-1].__r_.__value_.__l.__size_;
      }

      if (size == v13)
      {
        v17 = v16 >= 0 ? &v14[-1] : v14[-1].__r_.__value_.__r.__words[0];
        v18 = *a2;
        v19 = v12 >= 0 ? a2 : *a2;
        if (!memcmp(v17, v19, v13))
        {
          break;
        }
      }

      v20 = v14 + 1;
      v14 = (v14 + 56);
      if (v20 == v11)
      {
        goto LABEL_21;
      }
    }

    *a3 = *(&v14[-2].__r_.__value_.__l + 2);
    std::string::operator=(a4, v14);
    v21 = 1;
  }

  sub_100011208(buf);
  return v21;
}

void sub_1000240F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100011208(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100024124(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v10 = 2082;
    v11 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#fum,onFirstUnlock}", &buf, 0x12u);
  }

  *(a1 + 40) = 1;
  v3 = *(a1 + 32);
  v4 = *a1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000242C4;
  v6[3] = &unk_1001390D0;
  v6[4] = a1;
  v8 = 0;
  v7[0] = off_100138F50;
  v7[1] = objc_retainBlock(v6);
  v8 = v7;
  (*(*v3 + 16))(v3, v7, v4);
  return sub_10000F274(v7);
}

void sub_1000242A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10000F274(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000242C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    LOWORD(v14) = 2082;
    *(&v14 + 2) = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#fum,processPendingMetrics}", buf, 0x12u);
  }

  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (v3 != v4)
  {
    while (1)
    {
      v12 = -1.0;
      memset(&__p, 0, sizeof(__p));
      if (*(v3 + 31) < 0)
      {
        sub_100004CEC(v9, *(v3 + 8), *(v3 + 16));
      }

      else
      {
        v5 = *(v3 + 8);
        v10 = *(v3 + 24);
        *v9 = v5;
      }

      v6 = sub_100023650(v1, v9, &v12, &__p);
      *(v3 + 32) = v6;
      if (SHIBYTE(v10) < 0)
      {
        break;
      }

      if (v6)
      {
        goto LABEL_9;
      }

LABEL_10:
      *buf = _NSConcreteStackBlock;
      *&v14 = 3221225472;
      *(&v14 + 1) = sub_100023A78;
      v15 = &unk_10013A308;
      v16 = v3;
      AnalyticsSendEventLazy();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v3 += 72;
      if (v3 == v4)
      {
        goto LABEL_16;
      }
    }

    operator delete(v9[0]);
    if ((*(v3 + 32) & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    *(v3 + 56) = *v3 - v12;
    *(v3 + 64) = 1;
    goto LABEL_10;
  }

LABEL_16:
  sub_100024524((v1 + 8));
  v7 = *(**(v1 + 32) + 40);

  return v7();
}

void sub_1000244F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100024524(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 72)
  {
    if (*(i - 41) < 0)
    {
      operator delete(*(i - 64));
    }
  }

  a1[1] = v2;
}

void sub_100024574(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100024524(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1000245C8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 72;
      *(a1 + 16) = v2 - 72;
      if (*(v2 - 41) < 0)
      {
        operator delete(*(v2 - 64));
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10002462C(uint64_t a1)
{
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  sub_100024884(a1 + 112);
  sub_100024884(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v3 = (a1 + 32);
  sub_1000246A0(&v3);

  return a1;
}

void sub_1000246A0(void ***a1)
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
        v4 -= 56;
        sub_100024724(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_100024724(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

uint64_t sub_10002477C(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1000247C0(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 16) = _Q0;
  *(a1 + 32) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 136) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 144) = xmmword_1000DD6E0;
  *(a1 + 160) = 0;
  sub_1000060C4((a1 + 168), "Unknown");
  *(a1 + 192) = 0;
  return a1;
}

void sub_100024844(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100024884(v2 + 112);
  sub_100024884(v2 + 80);
  if (*(v2 + 79) < 0)
  {
    operator delete(*(v2 + 56));
  }

  sub_1000246A0(va);

  _Unwind_Resume(a1);
}

uint64_t sub_100024884(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_100024904(void *a1, uint64_t a2)
{
  sub_100024978(v4, a2);
  sub_100024A10(v4, a1);
  sub_100024884(v4);
  return a1;
}

uint64_t sub_100024978(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_100024A10(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_100024C68(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10000DB70(a1);
}

uint64_t sub_100024CFC(int a1, uint64_t a2, std::string *this)
{
  if (*(a2 + 23) < 0)
  {
    sub_100004CEC(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  std::string::operator=(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_100024D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100024D8C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100024DD8(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v3 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v3 = *v3;
    }

    v4 = (a1 + 168);
    if (*(a1 + 191) < 0)
    {
      v4 = *v4;
    }

    *buf = 68289539;
    *&buf[4] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2081;
    v17 = v3;
    v18 = 2081;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saEventHistory,load, filePath:%{private, location:escape_only}s, debugName:%{private, location:escape_only}s}", buf, 0x26u);
  }

  if ((*(a1 + 192) & 1) == 0)
  {
    v6 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v7 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v7 = *v7;
    }

    *buf = 68289283;
    *&buf[4] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2081;
    v17 = v7;
    v8 = "{msg%{public}.0s:#saEventHistory,load,#warning,deferLoadingTillFirstUnlock, filePath:%{private, location:escape_only}s}";
    goto LABEL_15;
  }

  v5 = (a1 + 56);
  if (*(a1 + 79) < 0)
  {
    if (!*(a1 + 64))
    {
      return;
    }

    v9 = *v5;
  }

  else if (!*(a1 + 79))
  {
    return;
  }

  sub_1000060C4(buf, "0003");
  v10 = sub_1000AC508();
  v11 = v10;
  if (SBYTE3(v17) < 0)
  {
    operator delete(*buf);
    if (v11)
    {
LABEL_20:
      operator new[]();
    }
  }

  else if (v10)
  {
    goto LABEL_20;
  }

  v12 = (a1 + 56);
  if (*(a1 + 79) < 0)
  {
    v12 = *v5;
  }

  if (sub_1000ABE8C(v12))
  {
    v6 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 79) < 0)
      {
        v5 = *v5;
      }

      *buf = 68289283;
      *&buf[4] = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2081;
      v17 = v5;
      v8 = "{msg%{public}.0s:#saEventHistory,load,#warning,unabletToRemoveFile, filePath:%{private, location:escape_only}s}";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0x1Cu);
    }
  }
}

void sub_1000253E0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  sub_1000AC484(&a44);
  operator delete[]();
}

uint64_t sub_10002552C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000053C4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_100025574(uint64_t a1, double *a2)
{
  if (*a2 >= 0.0)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    if ((0x6DB6DB6DB6DB6DB7 * ((v6 - v7) >> 3)) >= *(a1 + 144))
    {
      v8 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v9 = (a1 + 168);
        if (*(a1 + 191) < 0)
        {
          v9 = *v9;
        }

        v20 = 68289283;
        v21 = 0;
        v22 = 2082;
        v23 = "";
        v24 = 2081;
        v25 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,#warning,maxHistoryLenReached, history:%{private, location:escape_only}s}", &v20, 0x1Cu);
        v7 = *(a1 + 32);
        v6 = *(a1 + 40);
      }

      sub_100025B0C(&v20, v7 + 56, v6, v7);
      v6 = v10;
      for (i = *(a1 + 40); i != v6; sub_100024724(i))
      {
        i -= 56;
      }

      *(a1 + 40) = v6;
      *(a1 + 160) = 1;
      v7 = *(a1 + 32);
    }

    if (v6 != v7)
    {
      v12 = 0x6DB6DB6DB6DB6DB7 * ((v6 - v7) >> 3);
      do
      {
        v13 = v12 >> 1;
        v14 = v6 - 56 * (v12 >> 1);
        v16 = *(v14 - 56);
        v15 = v14 - 56;
        v12 += ~(v12 >> 1);
        if (*a2 >= v16)
        {
          v12 = v13;
        }

        else
        {
          v6 = v15;
        }
      }

      while (v12);
    }

    sub_100025974((a1 + 32), v6, a2);
    v17 = *(a1 + 16);
    v18 = *a2;
    if (v17 < 0.0 || v17 > v18)
    {
      *(a1 + 16) = v18;
    }

    if (*(a1 + 24) < v18)
    {
      *(a1 + 24) = v18;
    }
  }

  else
  {
    v3 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v4 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v4 = *v4;
      }

      v20 = 68289283;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2081;
      v25 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,#warning,updateWithInvalidArgs, history:%{private, location:escape_only}s}", &v20, 0x1Cu);
    }
  }
}

void sub_1000257EC(uint64_t a1)
{
  v2 = *a1;
  if (*a1 && *(a1 + 9) == 1)
  {
    v3 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v4 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v4 = *v4;
      }

      *buf = 68289283;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2081;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,save,dispatched, debugName:%{private, location:escape_only}s}", buf, 0x1Cu);
      v2 = *a1;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000262A8;
    block[3] = &unk_1001390D0;
    block[4] = a1;
    dispatch_async(v2, block);
  }

  else
  {

    sub_1000262B0(a1);
  }
}

unint64_t sub_100025974(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v12 = *a1;
    v13 = 0x6DB6DB6DB6DB6DB7 * ((v6 - *a1) >> 3) + 1;
    if (v13 > 0x492492492492492)
    {
      sub_10000509C();
    }

    v14 = a2 - v12;
    v15 = 0x6DB6DB6DB6DB6DB7 * ((v7 - v12) >> 3);
    v16 = 2 * v15;
    if (2 * v15 <= v13)
    {
      v16 = 0x6DB6DB6DB6DB6DB7 * ((v6 - *a1) >> 3) + 1;
    }

    if (v15 >= 0x249249249249249)
    {
      v17 = 0x492492492492492;
    }

    else
    {
      v17 = v16;
    }

    v23 = a1;
    if (v17)
    {
      sub_100026154(a1, v17);
    }

    v19 = 0;
    v20 = 8 * (v14 >> 3);
    v21 = v20;
    v22 = 0;
    sub_100025D0C(&v19, a3);
    v4 = sub_100025EFC(a1, &v19, v4);
    sub_1000261B0(&v19);
  }

  else if (a2 == v6)
  {
    sub_100025BB8(a1, a3);
  }

  else
  {
    sub_100025C74(a1, a2, v6, a2 + 56);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 56;
    if (v8)
    {
      v9 = 0;
    }

    v10 = a3 + v9;
    v11 = (v10 + 32);
    *v4 = *v10;
    std::string::operator=((v4 + 8), (v10 + 8));
    std::string::operator=((v4 + 32), v11);
  }

  return v4;
}

void sub_100025AF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000261B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100025B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      if (*(a4 + 31) < 0)
      {
        operator delete(*(a4 + 8));
      }

      v7 = *(v5 + 8);
      *(a4 + 24) = *(v5 + 24);
      *(a4 + 8) = v7;
      *(v5 + 31) = 0;
      *(v5 + 8) = 0;
      if (*(a4 + 55) < 0)
      {
        operator delete(*(a4 + 32));
      }

      v8 = *(v5 + 32);
      *(a4 + 48) = *(v5 + 48);
      *(a4 + 32) = v8;
      *(v5 + 55) = 0;
      *(v5 + 32) = 0;
      v5 += 56;
      a4 += 56;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *sub_100025BB8(void *result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  *v4 = *a2;
  v5 = (v4 + 8);
  if (*(a2 + 31) < 0)
  {
    result = sub_100004CEC(v5, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 8);
    *(v4 + 24) = *(a2 + 24);
    *v5 = v6;
  }

  if (*(a2 + 55) < 0)
  {
    result = sub_100004CEC((v4 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v7 = *(a2 + 32);
    *(v4 + 48) = *(a2 + 48);
    *(v4 + 32) = v7;
  }

  v3[1] = v4 + 56;
  return result;
}

void sub_100025C4C(_Unwind_Exception *exception_object)
{
  if (*(v3 + 31) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

uint64_t sub_100025C74(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = *v9;
      v10 = *(v9 + 8);
      *(v8 + 24) = *(v9 + 24);
      *(v8 + 8) = v10;
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      *(v9 + 8) = 0;
      v11 = *(v9 + 32);
      *(v8 + 48) = *(v9 + 48);
      *(v8 + 32) = v11;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 32) = 0;
      v9 += 56;
      v8 += 56;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_10002607C(&v13, a2, v7, v6);
}

void *sub_100025D0C(void *result, uint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = v5 - *result;
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0xDB6DB6DB6DB6DB6ELL * ((v4 - *result) >> 3);
      }

      v10 = result[4];
      v13[4] = v3[4];
      sub_100026154(v10, v9);
    }

    v7 = -56 * ((0x6DB6DB6DB6DB6DB7 * (v6 >> 3) + 1 + ((0x6DB6DB6DB6DB6DB7 * (v6 >> 3) + 1) >> 63)) >> 1);
    result = sub_100025B0C(v13, v5, v4, v5 - 56 * ((0x6DB6DB6DB6DB6DB7 * (v6 >> 3) + 1 + ((0x6DB6DB6DB6DB6DB7 * (v6 >> 3) + 1) >> 63)) >> 1));
    v4 = v8;
    v3[1] += v7;
    v3[2] = v8;
  }

  *v4 = *a2;
  if (*(a2 + 31) < 0)
  {
    result = sub_100004CEC((v4 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v11 = *(a2 + 8);
    *(v4 + 24) = *(a2 + 24);
    *(v4 + 8) = v11;
  }

  if (*(a2 + 55) < 0)
  {
    result = sub_100004CEC((v4 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v12 = *(a2 + 32);
    *(v4 + 48) = *(a2 + 48);
    *(v4 + 32) = v12;
  }

  v3[2] += 56;
  return result;
}

void sub_100025EE0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100025EFC(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a1[1];
  v8 = a2[1];
  v7 = a2[2];
  if (v6 == a3)
  {
    v14 = a2[1];
    v13 = a3;
  }

  else
  {
    v9 = a3;
    do
    {
      *v7 = *v9;
      v10 = *(v9 + 8);
      *(v7 + 24) = *(v9 + 24);
      *(v7 + 8) = v10;
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      *(v9 + 8) = 0;
      v11 = *(v9 + 32);
      *(v7 + 48) = *(v9 + 48);
      *(v7 + 32) = v11;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 32) = 0;
      v9 += 56;
      v7 += 56;
    }

    while (v9 != v6);
    v12 = a3;
    do
    {
      sub_100024724(v12);
      v12 += 56;
    }

    while (v12 != v6);
    v13 = a1[1];
    v14 = a2[1];
    v7 = a2[2];
  }

  a2[2] = v7 + v13 - a3;
  a1[1] = a3;
  v15 = *a1;
  v16 = v14 + *a1 - a3;
  if (*a1 != a3)
  {
    v17 = *a1;
    v18 = v14 + *a1 - a3;
    do
    {
      *v18 = *v17;
      v19 = *(v17 + 8);
      *(v18 + 24) = *(v17 + 24);
      *(v18 + 8) = v19;
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      *(v17 + 8) = 0;
      v20 = *(v17 + 32);
      *(v18 + 48) = *(v17 + 48);
      *(v18 + 32) = v20;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 32) = 0;
      v17 += 56;
      v18 += 56;
    }

    while (v17 != a3);
    do
    {
      sub_100024724(v15);
      v15 += 56;
    }

    while (v15 != a3);
    v15 = *a1;
  }

  a2[1] = v16;
  *a1 = v16;
  a1[1] = v15;
  a2[1] = v15;
  v21 = a1[1];
  a1[1] = a2[2];
  a2[2] = v21;
  v22 = a1[2];
  a1[2] = a2[3];
  a2[3] = v22;
  *a2 = a2[1];
  return v8;
}

uint64_t sub_10002607C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = a4 + v7;
      *(a4 + v7 - 56) = *(a3 + v7 - 56);
      v10 = (a4 + v7 - 48);
      if (*(a4 + v7 - 25) < 0)
      {
        operator delete(*v10);
      }

      v11 = *(v8 - 48);
      *(a4 + v7 - 32) = *(v8 - 32);
      *v10 = v11;
      *(v8 - 25) = 0;
      *(v8 - 48) = 0;
      v12 = (v9 - 24);
      if (*(v9 - 1) < 0)
      {
        operator delete(*v12);
      }

      v13 = a3 + v7;
      v14 = *(a3 + v7 - 24);
      *(v9 - 8) = *(a3 + v7 - 8);
      *v12 = v14;
      *(v13 - 1) = 0;
      *(v13 - 24) = 0;
      v7 -= 56;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

void sub_100026154(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_100004E38();
}

uint64_t sub_1000261B0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    sub_100024724(i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100026200(uint64_t a1, __int128 *a2, __int128 *a3, double a4)
{
  *a1 = a4;
  if (*(a2 + 23) < 0)
  {
    sub_100004CEC((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v6;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100004CEC((a1 + 32), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 48) = *(a3 + 2);
    *(a1 + 32) = v7;
  }

  return a1;
}

void sub_10002628C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000262B0(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v3 = *v3;
    }

    v4 = (a1 + 168);
    if (*(a1 + 191) < 0)
    {
      v4 = *v4;
    }

    *buf = 68289539;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2081;
    v19 = v3;
    v20 = 2081;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,save, filePath:%{private, location:escape_only}s, debugName:%{private, location:escape_only}s}", buf, 0x26u);
  }

  if (*(a1 + 192))
  {
    v5 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v5 = *v5;
    }

    sub_1000060C4(&__p, "0003");
    sub_1000ACC04(buf, v5, &__p);
    if (SBYTE3(v13) < 0)
    {
      operator delete(__p);
    }

    if (v22)
    {
      v6 = *(a1 + 152);
      operator new[]();
    }

    v9 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v10 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v10 = *v10;
      }

      __p = 68289283;
      v12[0] = 2082;
      *&v12[1] = "";
      v12[5] = 2081;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,#warning,cannotOpenFileToSave, history:%{private, location:escape_only}s}", &__p, 0x1Cu);
    }

    sub_1000ACF88(buf);
  }

  else
  {
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v8 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v8 = *v8;
      }

      *buf = 68289283;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2081;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,#warning,deferSavingTillFirstUnlock, history:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    *(a1 + 193) = 1;
  }
}

uint64_t sub_100026724(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013A3C8;
  a2[1] = v2;
  return result;
}