__CFString *sub_1000280E4(uint64_t a1)
{
  if (a1 > 3221229822)
  {
    if (a1 <= 3306925314)
    {
      switch(a1)
      {
        case 3221229823:
          v2 = @"thermal pressure";

          return v2;
        case 3306925313:
          v2 = @"cpu violation";

          return v2;
        case 3306925314:
          v2 = @"walltime violation";

          return v2;
      }
    }

    else if (a1 > 3735943696)
    {
      if (a1 == 3735943697)
      {
        v2 = @"user quit";

        return v2;
      }

      if (a1 == 4227595259)
      {
        v2 = @"force quit";

        return v2;
      }
    }

    else
    {
      if (a1 == 3306925315)
      {
        v2 = @"system busy";

        return v2;
      }

      if (a1 == 3735883980)
      {
        v2 = @"resource exclusion";

        return v2;
      }
    }

LABEL_62:
    v2 = [NSString stringWithFormat:@"%#llx", a1];

    return v2;
  }

  if (a1 <= 1539435072)
  {
    switch(a1)
    {
      case 95805101:
        v2 = @"application assertion";

        return v2;
      case 439025681:
        v2 = @"input ui scene";

        return v2;
      case 732775916:
        v2 = @"secure draw violation";

        return v2;
    }

    goto LABEL_62;
  }

  if (a1 > 1539435076)
  {
    if (a1 == 1539435077)
    {
      v2 = @"legacy clear the board";

      return v2;
    }

    if (a1 == 2343432205)
    {
      v2 = @"watchdog";

      return v2;
    }

    goto LABEL_62;
  }

  if (a1 != 1539435073)
  {
    if (a1 == 1539435076)
    {
      v2 = @"clear the board";

      return v2;
    }

    goto LABEL_62;
  }

  v2 = @"languages changed";

  return v2;
}

__CFString *sub_1000283AC(uint64_t a1)
{
  if (a1 > 1539435076)
  {
    if (a1 != 1539435077)
    {
      if (a1 == 3306925313)
      {
        v1 = @"CPU Violation";
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v1 = @"Legacy Clear the Board";
  }

  else
  {
    if (a1 != 439025681)
    {
      if (a1 == 1539435076)
      {
        v1 = @"Clear the Board";
        goto LABEL_11;
      }

LABEL_8:
      v2 = sub_1000280E4(a1);
      v1 = [v2 capitalizedString];

      goto LABEL_11;
    }

    v1 = @"InputUI Scene";
  }

LABEL_11:

  return v1;
}

id sub_100028478(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    v2 = [NSString stringWithFormat:@"%d", a1];
  }

  else
  {
    v2 = *(&off_1000563A0 + (a1 - 1));
  }

  return v2;
}

id sub_1000284EC(uint64_t a1)
{
  v1 = sub_100028478(a1);
  v2 = [v1 capitalizedString];

  return v2;
}

id sub_100028538(uint64_t a1)
{
  if ((a1 - 1) >= 0x13)
  {
    v2 = [NSString stringWithFormat:@"%d", a1];
  }

  else
  {
    v2 = *(&off_1000563C0 + (a1 - 1));
  }

  return v2;
}

id sub_1000285AC(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 - 1) < 0x13 && ((0x55F7Fu >> v1))
  {
    v2 = *(&off_100056458 + v1);
  }

  else
  {
    v3 = sub_100028538(a1);
    v2 = [v3 capitalizedString];
  }

  return v2;
}

id sub_100028624(uint64_t a1)
{
  if ((a1 - 1) >= 5)
  {
    v2 = [NSString stringWithFormat:@"%d", a1];
  }

  else
  {
    v2 = *(&off_1000564F0 + (a1 - 1));
  }

  return v2;
}

__CFString *sub_100028698(uint64_t a1)
{
  if (a1 == 5)
  {
    v1 = @"JIT";
  }

  else
  {
    v2 = sub_100028624(a1);
    v1 = [v2 capitalizedString];
  }

  return v1;
}

id sub_1000286F8(uint64_t a1)
{
  if ((a1 - 1) >= 9)
  {
    v2 = [NSString stringWithFormat:@"%u", a1];
  }

  else
  {
    v2 = *(&off_100056518 + (a1 - 1));
  }

  return v2;
}

__CFString *sub_10002876C(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      v1 = @"Unknown IPC";
      break;
    case 6:
      v1 = @"Sandbox Filtered IPC";
      break;
    case 4:
      v1 = @"SIGTERM Timeout";
      break;
    default:
      v2 = sub_1000286F8(a1);
      v1 = [v2 capitalizedString];

      break;
  }

  return v1;
}

id sub_1000287F4(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) < 9 && ((0x17Fu >> v2))
  {
    v3 = *(&off_100056560 + v2);
  }

  else
  {
    v3 = [NSString stringWithFormat:@"%llu", a1];
  }

  return v3;
}

id sub_100028874(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 - 1) < 7 && ((0x47u >> v1))
  {
    v2 = *(&off_1000565A8 + v1);
  }

  else
  {
    v3 = sub_1000287F4(a1);
    v2 = [v3 capitalizedString];
  }

  return v2;
}

__CFString *sub_1000288E8(uint64_t a1)
{
  if (a1 <= 2343432204)
  {
    if (a1 <= 562215633)
    {
      switch(a1)
      {
        case 0:
          v2 = @"none";

          return v2;
        case 97132013:
          v2 = @"conditions changed";

          return v2;
        case 562215597:
          v2 = @"assertion timeout";

          return v2;
      }
    }

    else
    {
      if (a1 <= 562215635)
      {
        if (a1 == 562215634)
        {
          v2 = @"background task assertion timeout";
        }

        else
        {
          v2 = @"background url session completion timeout";
        }

        return v2;
      }

      if (a1 == 562215636)
      {
        v2 = @"background fetch completion timeout";

        return v2;
      }

      if (a1 == 732775916)
      {
        v2 = @"security violation";

        return v2;
      }
    }

LABEL_63:
    v2 = [NSString stringWithFormat:@"%#llx", a1];

    return v2;
  }

  if (a1 > 3490524076)
  {
    if (a1 > 3735905537)
    {
      if (a1 == 3735905538)
      {
        v2 = @"termination assertion";

        return v2;
      }

      if (a1 == 3735943697)
      {
        v2 = @"user initiated quit";

        return v2;
      }
    }

    else
    {
      if (a1 == 3490524077)
      {
        v2 = @"max assertions violation";

        return v2;
      }

      if (a1 == 3735883980)
      {
        v2 = @"resource exclusion";

        return v2;
      }
    }

    goto LABEL_63;
  }

  if (a1 > 2970726672)
  {
    if (a1 == 2970726673)
    {
      v2 = @"process exited";

      return v2;
    }

    if (a1 == 3221229823)
    {
      v2 = @"thermal pressure";

      return v2;
    }

    goto LABEL_63;
  }

  if (a1 != 2343432205)
  {
    if (a1 == 2970405393)
    {
      v2 = @"max states violation";

      return v2;
    }

    goto LABEL_63;
  }

  v2 = @"watchdog violation";

  return v2;
}

__CFString *sub_100028BE0(uint64_t a1)
{
  if (a1 <= 2970405392)
  {
    if (!a1)
    {
      v1 = @"None Provided";
      goto LABEL_13;
    }

    if (a1 == 562215635)
    {
      v1 = @"Background URL Session Completion Timeout";
      goto LABEL_13;
    }
  }

  else
  {
    switch(a1)
    {
      case 2970405393:
        v1 = @"Maximum States Violation";
        goto LABEL_13;
      case 3490524077:
        v1 = @"Maximum Assertions Violation";
        goto LABEL_13;
      case 3735943697:
        v1 = @"User-Initiated Quit";
        goto LABEL_13;
    }
  }

  v2 = sub_1000288E8(a1);
  v1 = [v2 capitalizedString];

LABEL_13:

  return v1;
}

id sub_100028CBC(uint64_t a1)
{
  if ((a1 - 1) >= 5)
  {
    v2 = [NSString stringWithFormat:@"%llu", a1];
  }

  else
  {
    v2 = *(&off_1000565E0 + a1 - 1);
  }

  return v2;
}

id sub_100028D30(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 - 1) < 5 && ((0x1Du >> v1))
  {
    v2 = *(&off_100056608 + v1);
  }

  else
  {
    v3 = sub_100028CBC(a1);
    v2 = [v3 capitalizedString];
  }

  return v2;
}

id sub_100028DA4(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = [NSString stringWithFormat:@"%llu", a1];
  }

  else
  {
    v2 = *(&off_100056630 + a1 - 1);
  }

  return v2;
}

id sub_100028E18(uint64_t a1)
{
  v1 = sub_100028DA4(a1);
  v2 = [v1 capitalizedString];

  return v2;
}

__CFString *sub_100028E64(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v2 = @"service timeout";
    }

    else
    {
      if (a1 != 2)
      {
LABEL_22:
        v2 = [NSString stringWithFormat:@"%llu", a1];

        return v2;
      }

      v2 = @"timeout no diags";
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v2 = @"unblock deadlock";

        break;
      case 4:
        v2 = @"unblock thread limit";

        break;
      case 1001:
        v2 = @"chronokit";

        return v2;
      default:
        goto LABEL_22;
    }
  }

  return v2;
}

__CFString *sub_100028F58(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = @"Service Timeout Diagnostics Unavailable";
  }

  else if (a1 == 1001)
  {
    v1 = @"ChronoKit";
  }

  else
  {
    v2 = sub_100028E64(a1);
    v1 = [v2 capitalizedString];
  }

  return v1;
}

__CFString *sub_100028FCC(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"api violation";
  }

  else if (a1 == 2)
  {
    v2 = @"internal error";
  }

  else
  {
    v2 = [NSString stringWithFormat:@"%llu", a1];
  }

  return v2;
}

__CFString *sub_100029058(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = @"API Violation";
  }

  else
  {
    v2 = sub_100028FCC(a1);
    v1 = [v2 capitalizedString];
  }

  return v1;
}

id sub_1000290B8(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) < 0x15 && ((0x183FFFu >> v2))
  {
    v3 = *(&off_100056648 + v2);
  }

  else
  {
    v3 = [NSString stringWithFormat:@"%llu", a1];
  }

  return v3;
}

id sub_10002913C(uint64_t a1)
{
  v1 = a1 - 11;
  if (a1 - 11) < 0xB && ((0x60Fu >> v1))
  {
    v2 = *(&off_1000566F0 + v1);
  }

  else
  {
    v3 = sub_1000290B8(a1);
    v2 = [v3 capitalizedString];
  }

  return v2;
}

id sub_1000291B0(int a1, uint64_t a2)
{
  switch(a1)
  {
    case 1:
      v2 = sub_100027DA8(a2);
      break;
    case 2:
      v2 = sub_100027D34(a2);
      break;
    case 3:
      v2 = sub_100028478(a2);
      break;
    case 6:
      v2 = sub_1000287F4(a2);
      break;
    case 7:
      v2 = sub_1000286F8(a2);
      break;
    case 9:
      v2 = sub_100028538(a2);
      break;
    case 10:
      v2 = sub_1000280E4(a2);
      break;
    case 15:
      v2 = sub_1000288E8(a2);
      break;
    case 18:
      v2 = sub_100028D30(a2);
      break;
    case 20:
      v2 = sub_100028E64(a2);
      break;
    case 22:
      v2 = sub_100028FCC(a2);
      break;
    case 23:
      v2 = sub_100028624(a2);
      break;
    case 27:
      v2 = sub_100028DA4(a2);
      break;
    case 32:
      v2 = sub_1000290B8(a2);
      break;
    default:
      v2 = [NSString stringWithFormat:@"%llu", a2];
      break;
  }

  return v2;
}

id sub_100029304(int a1, uint64_t a2)
{
  switch(a1)
  {
    case 1:
      v2 = sub_100027FE0(a2);
      break;
    case 2:
      v2 = sub_100027D34(a2);
      break;
    case 3:
      v2 = sub_1000284EC(a2);
      break;
    case 6:
      v2 = sub_100028874(a2);
      break;
    case 7:
      v2 = sub_10002876C(a2);
      break;
    case 9:
      v2 = sub_1000285AC(a2);
      break;
    case 10:
      v2 = sub_1000283AC(a2);
      break;
    case 15:
      v2 = sub_100028BE0(a2);
      break;
    case 18:
      v2 = sub_100028D30(a2);
      break;
    case 20:
      v2 = sub_100028F58(a2);
      break;
    case 22:
      v2 = sub_100029058(a2);
      break;
    case 23:
      v2 = sub_100028698(a2);
      break;
    case 27:
      v2 = sub_100028E18(a2);
      break;
    case 32:
      v2 = sub_10002913C(a2);
      break;
    default:
      v2 = [NSString stringWithFormat:@"%#llx", a2];
      break;
  }

  return v2;
}

double sub_100029458()
{
  if (qword_100067BF8 != -1)
  {
    sub_100004390();
  }

  return *&qword_100067BF0;
}

void sub_100029490(id a1)
{
  info = 0;
  mach_timebase_info(&info);
  *&qword_100067BF0 = ((info.numer * 0.000001) / info.denom);
}

double sub_1000294E0(unint64_t a1)
{
  if (qword_100067BF8 != -1)
  {
    sub_100004390();
  }

  return *&qword_100067BF0 * a1 / 1000.0;
}

double sub_100029534(unint64_t a1)
{
  if (qword_100067BF8 != -1)
  {
    sub_100004390();
  }

  return a1 / *&qword_100067BF0;
}

double sub_10002957C(double a1)
{
  if (qword_100067BF8 != -1)
  {
    sub_100004390();
  }

  return (a1 * 1000.0) / *&qword_100067BF0;
}

double sub_1000296CC()
{
  if (qword_100067C30 != -1)
  {
    sub_100034404();
  }

  if (byte_100067C38 == 1)
  {
    v0 = +[CADisplay mainDisplay];
    [v0 bounds];
    if (v1 <= 1920.0)
    {
      v2 = 28.0;
    }

    else
    {
      v2 = 42.0;
    }
  }

  else
  {
    if (qword_100067C20 != -1)
    {
      sub_100034418();
    }

    if (byte_100067C28 == 1)
    {
      v3 = sub_1000297EC();
      if (v3 > 170.0 || v3 < 1.0)
      {
        return 24.0;
      }

      else
      {
        return 22.0;
      }
    }

    else
    {
      if (qword_100067C40 != -1)
      {
        sub_10003442C();
      }

      v2 = 22.0;
      if ((byte_100067C48 & 1) == 0)
      {
        if ([HUDLine contentScaleForTexts]_0() == 3.0)
        {
          return 40.0;
        }

        else
        {
          return 28.0;
        }
      }
    }
  }

  return v2;
}

double sub_1000297EC()
{
  result = *&qword_100067C70;
  if (*&qword_100067C70 <= 0.0)
  {
    if (qword_100067C30 != -1)
    {
      sub_100034404();
    }

    v1 = byte_100067C38;
    v2 = +[CADisplay mainDisplay];
    [v2 bounds];
    v4 = fmax(v3, 1920.0);
    if (!v1)
    {
      v4 = v3;
    }

    qword_100067C70 = *&v4;

    result = *&qword_100067C70 / [HUDLine contentScaleForTexts]_0();
    qword_100067C70 = *&result;
  }

  return result;
}

void sub_100029930()
{
  if (*&qword_100067C50 <= 0.0)
  {
    v0 = sub_1000296CC();
    qword_100067C50 = round(v0 / [HUDLine contentScaleForTexts]_0());
  }
}

double sub_10002997C()
{
  v0 = *&qword_100067C58;
  if (*&qword_100067C58 > 0.0)
  {
    return v0;
  }

  v1 = +[CADisplay mainDisplay];
  v2 = [v1 currentOrientation];

  if (qword_100067C20 != -1)
  {
    sub_100034418();
  }

  v3 = 20.0;
  if ((byte_100067C28 & 1) == 0)
  {
    if (qword_100067C10 != -1)
    {
      sub_100034440();
    }

    v3 = 50.0;
    if ((byte_100067C18 & 1) == 0 && v2 != kCADisplayOrientationRotation270 && v2 != kCADisplayOrientationRotation90)
    {
      if (qword_100067CD0 != -1)
      {
        sub_100034454();
      }

      if (byte_100067CD8)
      {
        *&v4 = 168.0;
LABEL_19:
        v3 = *&v4;
        goto LABEL_20;
      }

      if (qword_100067C00 != -1)
      {
        sub_100034468();
      }

      if (byte_100067C08 == 1)
      {
        if ([HUDLine contentScaleForTexts]_0() == 2.0)
        {
          *&v4 = 100.0;
          goto LABEL_19;
        }

        if (qword_100067C00 != -1)
        {
          sub_100034468();
        }
      }

      if (byte_100067C08 == 1 && [HUDLine contentScaleForTexts]_0() == 3.0)
      {
        v3 = 150.0;
      }

      else
      {
        if (qword_100067C30 != -1)
        {
          sub_100034404();
        }

        v7 = byte_100067C38;
        v8 = [HUDLine contentScaleForTexts]_0();
        if (v7 == 1)
        {
          v3 = dbl_10003DB70[v8 > 1.0];
        }

        else
        {
          v3 = v8 * 25.0;
        }
      }
    }
  }

LABEL_20:
  qword_100067C58 = *&v3;
  *&qword_100067C58 = v3 / [HUDLine contentScaleForTexts]_0();
  v5 = sub_100003824();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10003447C(v2, v5);
  }

  v0 = *&qword_100067C58;
  return v0;
}

void sub_100029BA0()
{
  if (*&qword_100067C60 <= 0.0)
  {
    if (qword_100067C00 != -1)
    {
      sub_100034468();
    }

    v0 = 25.0;
    if ((byte_100067C08 & 1) == 0)
    {
      v0 = sub_10002997C();
    }

    qword_100067C60 = *&v0;
  }
}

double sub_100029BFC()
{
  result = *&qword_100067C68;
  if (*&qword_100067C68 <= 0.0)
  {
    if (qword_100067C20 != -1)
    {
      sub_100034418();
    }

    v1 = 5.0;
    if ((byte_100067C28 & 1) == 0)
    {
      v2 = [HUDLine contentScaleForTexts]_0();
      if (qword_100067C10 != -1)
      {
        v4 = v2;
        sub_100034440();
        v2 = v4;
      }

      v3 = 8.0;
      if (byte_100067C18)
      {
        v3 = 10.0;
      }

      v1 = v2 * v3;
    }

    qword_100067C68 = *&v1;
    result = v1 / [HUDLine contentScaleForTexts]_0();
    qword_100067C68 = *&result;
  }

  return result;
}

double sub_100029CAC()
{
  result = *&qword_100067C78;
  if (*&qword_100067C78 <= 0.0)
  {
    if (qword_100067C30 != -1)
    {
      sub_100034404();
    }

    v1 = byte_100067C38;
    v2 = +[CADisplay mainDisplay];
    [v2 bounds];
    v4 = fmax(v3, 1080.0);
    if (!v1)
    {
      v4 = v3;
    }

    qword_100067C78 = *&v4;

    result = *&qword_100067C78 / [HUDLine contentScaleForTexts]_0();
    qword_100067C78 = *&result;
  }

  return result;
}

void sub_100029D44()
{
  if (*&qword_100067C88 <= 0.0)
  {
    v0 = sub_1000297EC();
    v1 = fmin(v0, sub_100029CAC());
    sub_100029BA0();
    *&qword_100067C88 = v1 + v2 * -2.0;
  }
}

double sub_100029D98()
{
  if (qword_100067C90 != -1)
  {
    sub_100034534();
  }

  return *&qword_100067C98;
}

void sub_100029DD0(id a1)
{
  if (qword_100067C20 != -1)
  {
    sub_100034418();
  }

  v1 = 20.0;
  if (byte_100067C28)
  {
    v1 = 2.0;
  }

  qword_100067C98 = *&v1;
  *&qword_100067C98 = v1 / [HUDLine contentScaleForTexts]_0();
}

double sub_100029E34()
{
  if (qword_100067CA0 != -1)
  {
    sub_100034548();
  }

  return *&qword_100067CA8;
}

void sub_100029E6C(id a1)
{
  if (qword_100067C20 != -1)
  {
    sub_100034418();
  }

  v1 = 20.0;
  if (byte_100067C28)
  {
    v1 = 2.0;
  }

  qword_100067CA8 = *&v1;
  *&qword_100067CA8 = v1 / [HUDLine contentScaleForTexts]_0();
}

void sub_100029ED0()
{
  qword_100067C58 = 0;
  qword_100067C60 = 0;
  qword_100067C88 = 0;
}

void sub_100029EEC()
{
  qword_100067C50 = 0;
  qword_100067C58 = 0;
  qword_100067C60 = 0;
  qword_100067C68 = 0;
  qword_100067C70 = 0;
  qword_100067C78 = 0;
  qword_100067C80 = 0;
  qword_100067C88 = 0;
}

uint64_t sub_100029F30(void *a1, uint64_t a2, double a3)
{
  v5 = a1;
  v6 = sub_1000024F8(a2 - [v5 receivedTimestamp]);
  v7 = sub_100003824();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10003455C(v7, v6);
  }

  if ([v5 hangEndTime] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v6 <= a3)
    {
      v8 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v9 = sub_1000024F8(a2 - [v5 hangEndTime]);
  v8 = 1;
  if (v9 >= 200.0 && v6 > a3)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v8;
}

id sub_10002A004(void *a1, unsigned int a2)
{
  v3 = [a1 keysSortedByValueWithOptions:0 usingComparator:&stru_100056868];
  v4 = 0;
  if ([v3 count] >= a2)
  {
    v4 = [v3 count] - a2;
  }

  v5 = [v3 count];
  if (v5 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v3 subarrayWithRange:{v4, v6}];

  return v7;
}

int64_t sub_10002A0A0(id a1, HTHangHUDInfo *a2, HTHangHUDInfo *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(HTHangHUDInfo *)v4 hangStartTime];
  if (v6 == [(HTHangHUDInfo *)v5 hangStartTime])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(HTHangHUDInfo *)v4 hangStartTime];
    if (v8 > [(HTHangHUDInfo *)v5 hangStartTime])
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }
  }

  return v7;
}

id sub_10002A128(void *a1, unsigned int a2)
{
  v3 = a1;
  if ([v3 count])
  {
    v4 = [v3 keysSortedByValueUsingComparator:&stru_1000568A8];
    v5 = a2;
    if ([v4 count] >= a2)
    {
      v6 = [v4 count] - a2;
    }

    else
    {
      v6 = 0;
    }

    v8 = [v4 count];
    if (v8 >= v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = v8;
    }

    v7 = [v4 subarrayWithRange:{v6, v9}];
  }

  else
  {
    v7 = objc_alloc_init(NSArray);
  }

  return v7;
}

int64_t sub_10002A1F0(id a1, HUDContentProtocol *a2, HUDContentProtocol *a3)
{
  v4 = a3;
  v5 = [(HUDContentProtocol *)a2 compareValue];
  v6 = [(HUDContentProtocol *)v4 compareValue];

  v7 = 1;
  if (v5 <= v6)
  {
    v7 = -1;
  }

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_10002A24C()
{
  if (qword_100067CB0 != -1)
  {
    sub_1000345D8();
  }

  return byte_100067CB8;
}

uint64_t sub_10002A2B4(void *a1, _BYTE *a2)
{
  v3 = a1;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 persistentDomainForName:@"com.apple.HangHUD"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:v3];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      *a2 = [v7 isEqualToString:@"YES"];
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_10002A388()
{
  v2 = 0;
  v0 = &v2;
  if ((sub_10002A2B4(@"UseHangHUD", &v2) & 1) == 0)
  {
    if (qword_100067CC0 != -1)
    {
      sub_1000345EC();
    }

    v0 = &byte_100067CC8;
  }

  return *v0;
}

void sub_10002A41C(int a1)
{
  v1 = a1;
  if (byte_1000677B8 != a1)
  {
    v2 = sub_100003824();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
    if (v1)
    {
      if (v3)
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "  =>  clearing HUD context on hangtracerd when enabling HangHUD", v5, 2u);
      }

      sub_100026064();
    }

    else
    {
      if (v3)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "  =>  clear HUD context on angle server when disabling HangHUD", buf, 2u);
      }

      v4 = +[HangHUDClient sharedInstance];
      [v4 clearHUDWithCompletion:&stru_100056908];
    }
  }

  byte_1000677B8 = v1;
}

void sub_10002A504(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_100003824();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100034600(v2, v3);
    }
  }
}

void sub_10002A55C(id a1)
{
  byte_100067CD8 = SBSIsSystemApertureAvailable();
  v1 = sub_100003824();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v2[0] = 67109120;
    v2[1] = byte_100067CD8;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "New API was available, retrieved aperture available %{BOOL}i", v2, 8u);
  }
}

BOOL sub_10002A60C()
{
  if (qword_100067D28 != -1)
  {
    sub_100034678();
  }

  return off_100067CE0 != 0;
}

void sub_10002A64C(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = objc_autoreleasePoolPush();
  if (qword_100067D28 != -1)
  {
    sub_100034678();
  }

  if (!off_100067CE0)
  {
    v26 = sub_100003824();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Tailspin dump symbol is missing!", buf, 2u);
    }

    goto LABEL_15;
  }

  v28[0] = qword_100067CE8;
  v28[1] = qword_100067CF0;
  v29[0] = &__kCFBooleanTrue;
  v29[1] = a4;
  v28[2] = qword_100067CF8;
  v29[2] = [NSNumber numberWithBool:a6];
  v28[3] = qword_100067D00;
  v29[3] = [NSNumber numberWithBool:a7];
  v28[4] = qword_100067D08;
  v29[4] = [NSNumber numberWithBool:a8];
  v19 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:5]];
  if (a5)
  {
    v20 = [NSNumber numberWithInt:a5];
    [(NSMutableDictionary *)v19 setObject:v20 forKey:qword_100067D10];
  }

  if (a2)
  {
    v21 = [NSNumber numberWithUnsignedLongLong:a2];
    [(NSMutableDictionary *)v19 setObject:v21 forKey:qword_100067D18];
  }

  if (a3)
  {
    v22 = [NSNumber numberWithUnsignedLongLong:a3];
    [(NSMutableDictionary *)v19 setObject:v22 forKey:qword_100067D20];
  }

  v23 = off_100067CE0(a1, v19, a9, a10);
  if (v23)
  {
    v24 = strerror(v23);
    v25 = sub_100003824();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10003468C(v24, v25);
    }

LABEL_15:
    (*(a10 + 16))(a10, 0);
  }

  objc_autoreleasePoolPop(v18);
}

void sub_10002A8D4(id a1)
{
  v1 = dlopen("/usr/lib/libtailspin.dylib", 1);
  qword_100067D30 = v1;
  if (v1)
  {
    off_100067CE0 = dlsym(v1, "tailspin_dump_output_with_options");
    qword_100067CF0 = *dlsym(qword_100067D30, "TSPDumpOptions_ReasonString");
    qword_100067CE8 = *dlsym(qword_100067D30, "TSPDumpOptions_NoSymbolicate");
    qword_100067D18 = *dlsym(qword_100067D30, "TSPDumpOptions_MinTimestamp");
    qword_100067D20 = *dlsym(qword_100067D30, "TSPDumpOptions_EndTimestamp");
    qword_100067D10 = *dlsym(qword_100067D30, "TSPDumpOptions_TargetPID");
    qword_100067CF8 = *dlsym(qword_100067D30, "TSPDumpOptions_CollectOsSignposts");
    qword_100067D00 = *dlsym(qword_100067D30, "TSPDumpOptions_CollectTrials");
    qword_100067D08 = *dlsym(qword_100067D30, "TSPDumpOptions_ScrubOutput");
  }

  else
  {
    v2 = sub_100003824();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "libtailspin.dylib is not present.", v3, 2u);
    }
  }
}

uint64_t sub_10002AA48(unint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v4 = a3;
  v32 = 0;
  v7 = 0;
  v30 = a2 - a1;
  *&v8 = a3 + 32;
  v9 = 10;
  do
  {
    if (*v4)
    {
      ++v7;
      v10 = *(v4 + 24);
      if (v10 >= *(v4 + 16))
      {
        v10 = *(v4 + 16);
      }

      v11 = *(v4 + 8) <= a1 ? a1 : *(v4 + 8);
      v12 = v10 >= a2 ? a2 : v10;
      if (v12 > v11)
      {
        v13 = sub_100003824();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = *v4;
          v15 = *(v4 + 8);
          v16 = *(v4 + 24);
          *buf = 134219266;
          v36 = v14;
          v37 = 2080;
          v38 = v8;
          v39 = 2048;
          v40 = v15;
          v41 = 2048;
          v42 = v16;
          v43 = 2048;
          v44 = a1;
          v45 = 2048;
          v46 = a2;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "HTAssertion: checkOverlap: hang overlaps with assertion, assertionid=%llu assertionname=(%s) start=%llu end=%llu, hangstart=%llu, hangend=%llu)", buf, 0x3Eu);
        }

        if (*(v4 + 96) == 1)
        {
          if (*(v4 + 24) < a2)
          {
            v17 = sub_100003824();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              v18 = v17;
              v19 = "HTAssertion: checkOverlap: not ignoring hang during screen turning on";
LABEL_21:
              v20 = 2;
LABEL_22:
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, v19, buf, v20);
              goto LABEL_23;
            }

            goto LABEL_23;
          }

          if (*(v4 + 8) > a1)
          {
            v17 = sub_100003824();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              v18 = v17;
              v19 = "HTAssertion: checkOverlap: not ignoring hang during screen turning off";
              goto LABEL_21;
            }

LABEL_23:

            goto LABEL_30;
          }

          v21 = sub_1000024F8(v30);
          v22 = sub_100003824();
          v17 = v22;
          if (v21 >= 1000.0)
          {
            if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              goto LABEL_23;
            }

            v23 = sub_1000024F8(v30);
            *buf = 134217984;
            v36 = v23;
            v18 = v17;
            v19 = "HTAssertion: checkOverlap: not ignoring hang during screen off with duration %.0fms";
            v20 = 12;
            goto LABEL_22;
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            sub_100034704(v33, v30, &v34, v17);
          }
        }

        v32 += v12 - v11;
        if (a4)
        {
          AnalyticsSendEventLazy();
        }
      }
    }

LABEL_30:
    v4 += 104;
    *&v8 += 104;
    --v9;
  }

  while (v9);
  if (!v7)
  {
    v28 = sub_100003824();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      sub_1000347B4(v28);
    }

    goto LABEL_48;
  }

  v24 = sub_1000024F8(v32);
  v25 = sub_1000024F8(v30) - v24;
  if (v25 >= 250.0)
  {
    v29 = sub_100003824();
    v28 = v29;
    if (v32)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v36 = v25;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "HTAssertion: checkOverlap: hang partially overlaps assertions, since hangDurationWithoutOverlap=%fms does not qualify as assertion overlap", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_100034770(v28);
    }

LABEL_48:

    return 0;
  }

  v26 = sub_100003824();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v36 = v24;
    v37 = 2048;
    v38 = v32 * 100.0 / v30;
    v39 = 2048;
    v40 = v25;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "HTAssertion: checkOverlap: hang overlaps assertion for %f ms (%f %%), hangDurationWithoutOverlap=%fms -> qualifies as assertion overlap", buf, 0x20u);
  }

  if (a4)
  {
    AnalyticsSendEventLazy();
  }

  return 1;
}

id sub_10002AF44(void *a1)
{
  v6[0] = @"assertionOverlapMs";
  v2 = [NSNumber numberWithUnsignedLongLong:a1[4] - a1[5]];
  v6[1] = @"assertionOverlapName";
  v7[0] = v2;
  v3 = [NSString stringWithUTF8String:a1[6]];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

id sub_10002B02C(uint64_t a1)
{
  v6[0] = @"hangDurationOverlapMs";
  v2 = [NSNumber numberWithDouble:*(a1 + 32)];
  v6[1] = @"hangDurationOverlapPercent";
  v7[0] = v2;
  v3 = [NSNumber numberWithDouble:*(a1 + 40)];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

void sub_10002B23C(uint64_t a1)
{
  v2 = objc_alloc_init(HTUserNotificationHelper);
  v3 = qword_100067D38;
  qword_100067D38 = v2;

  if (v2)
  {
    v4 = dispatch_queue_create("com.apple.hangtracerd.notification-queue", 0);
    [qword_100067D38 setNotificationQueue:v4];

    v5 = [UNUserNotificationCenter alloc];
    v6 = [qword_100067D38 notificationQueue];
    v7 = [v5 initWithBundleIdentifier:@"com.apple.hangtracerd.usernotifications" queue:v6];
    [qword_100067D38 setNotificationCenter:v7];

    v8 = [qword_100067D38 notificationCenter];
    v9 = [NSSet setWithArray:*(a1 + 32)];
    [v8 setNotificationCategories:v9];

    v10 = qword_100067D38;
    v11 = [qword_100067D38 notificationCenter];
    [v11 setDelegate:v10];

    v12 = [qword_100067D38 notificationCenter];
    [v12 setWantsNotificationResponsesDelivered];

    v13 = objc_alloc_init(NSMutableDictionary);
    [qword_100067D38 setResponseHandlers:v13];
  }
}

id sub_10002B7C8(const __CFString *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [NSString stringWithFormat:@"%@.", a3];
  v7 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = CFPreferencesCopyKeyList(a1, v5, kCFPreferencesAnyHost);
  v9 = [(__CFArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([v13 hasPrefix:v6])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [(__CFArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

void sub_10002BA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002BAA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002BABC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 unsignedIntValue] - 1;
  v8 = sub_100003824();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 138412802;
    v15 = v5;
    v16 = 1024;
    v17 = [v6 unsignedIntValue];
    v18 = 1024;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ Generated Logs count decreased %u -> %u", &v14, 0x18u);
  }

  if (v7)
  {
    v9 = [NSNumber numberWithUnsignedInt:v7];
    [qword_100067DA8 setObject:v9 forKeyedSubscript:v5];
  }

  else
  {
    v10 = *(*(*(a1 + 32) + 8) + 40);
    if (!v10)
    {
      v11 = objc_alloc_init(NSMutableArray);
      v12 = *(*(a1 + 32) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      v10 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v10 addObject:v5];
  }
}

id sub_10002D1BC(uint64_t a1)
{
  v9[0] = *(a1 + 32);
  v8[0] = @"EnablementType";
  v8[1] = @"CaptureSuccessful";
  v2 = [NSNumber numberWithBool:*(a1 + 64)];
  v9[1] = v2;
  v8[2] = @"CaptureFailureReason";
  v3 = [NSNumber numberWithInteger:*(a1 + 40)];
  v9[2] = v3;
  v8[3] = @"HangSubType";
  v4 = [NSNumber numberWithInteger:*(a1 + 48)];
  v9[3] = v4;
  v8[4] = @"HTBugType";
  v5 = [NSNumber numberWithInteger:*(a1 + 56)];
  v9[4] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:5];

  return v6;
}

void sub_10002D784(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = sub_100003824();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100034B00(a1, a2, v4);
    }

    unlink(*(a1 + 56));
    v5 = sub_10001990C(3, @"Failed to save tailspin data for Sentry");
    v6 = 0;
    if (!v5)
    {
      goto LABEL_18;
    }

LABEL_13:
    v13 = [*(a1 + 48) objectForKeyedSubscript:off_1000676B0];
    v14 = sub_100003824();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100034C08(v5);
    }

    v19[0] = off_1000676B0;
    v19[1] = off_100067710;
    v20[0] = v13;
    v20[1] = v5;
    v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    v16 = sub_100003824();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v22 = "+[HTTailspin saveSentryTailspin:infoDict:startTime:endTime:error:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s: Posting notification to Sentry due to failure to dump tailspin", buf, 0xCu);
    }

    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, off_1000676A8, 0, v15, 1u);

    goto LABEL_18;
  }

  ++dword_100067D98;
  ++dword_100067D9C;
  v7 = sub_100003824();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    *buf = 138412802;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    v25 = 2080;
    v26 = "/var/root/Library/Caches/hangtracerd/spool";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@: Moving tailspin %@ to spool: %s\n", buf, 0x20u);
  }

  v10 = *(a1 + 40);
  v18 = 0;
  v11 = [HTTailspin moveAndTrackTailspinToSpoolDirectory:v10 error:&v18];
  v6 = v18;
  if (v11)
  {
    v5 = 0;
    goto LABEL_18;
  }

  v5 = sub_10001990C(3, @"Failed to move tailspin to final path");
  v12 = sub_100003824();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100034B7C(v6);
  }

  unlink(*(a1 + 56));
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_18:
}

void sub_10002E1DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003824();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100034CAC(v5);
    }

    v6 = 0;
    v7 = a2;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      *buf = 138543874;
      v23 = v8;
      v24 = 2114;
      v25 = v9;
      v26 = 2114;
      v27 = @"/var/root/Library/Caches/hangtracerd/spool";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Moving tailspin %{public}@ to spool: %{public}@\n", buf, 0x20u);
    }

    v10 = *(a1 + 40);
    v21 = 0;
    v11 = [HTTailspin moveAndTrackTailspinToSpoolDirectory:v10 error:&v21];
    v6 = v21;
    if (v11)
    {
      v7 = 0;
      goto LABEL_13;
    }

    v5 = sub_100003824();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100034CF0(a1, v6);
    }

    v7 = 13;
  }

  unlink(*(a1 + 56));
LABEL_13:
  [*(a1 + 48) setFailReason:v7];
  v12 = sub_10001ADCC([*(a1 + 48) hangSubType]);
  if (a2)
  {
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (!v12)
    {
      [*(a1 + 48) hangDurationMS];
      v15 = v14;
      v16 = [*(a1 + 48) processName];
      +[HTTailspin incrementAppGeneratedLogsCountForDuration:procName:isFirstPartyApp:](HTTailspin, "incrementAppGeneratedLogsCountForDuration:procName:isFirstPartyApp:", v16, [*(a1 + 48) isFirstPartyApp], v15);

      [*(a1 + 48) hangDurationMS];
      +[HTTailspin incrementDailyLogGenerationCountForDuration:isFirstPartyApp:](HTTailspin, "incrementDailyLogGenerationCountForDuration:isFirstPartyApp:", [*(a1 + 48) isFirstPartyApp], v17);
LABEL_20:
      v18 = [*(a1 + 48) isFirstPartyApp];
      v19 = [*(a1 + 48) isThirdPartyDevSupportModeHang];
      [*(a1 + 48) hangDurationMS];
      v13 = sub_10001AE00(v18, v19, v20);
      goto LABEL_21;
    }

    +[HTTailspin incrementDailyFenceLogGenerationCount];
  }

  v13 = 0;
LABEL_21:
  +[HTTailspin notifyHTTailSpinResult:failReason:hangSubType:htBugType:](HTTailspin, "notifyHTTailSpinResult:failReason:hangSubType:htBugType:", a2 == 0, [*(a1 + 48) failReason], objc_msgSend(*(a1 + 48), "hangSubType"), v13);
}

id sub_10002EBE4(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 12;
  }

  (*(v2 + 16))(v2, v3);

  return +[HTTailspin decrementPendingTailspinBlocks];
}

void sub_10002EC2C(uint64_t a1, unint64_t a2)
{
  if (a2 != 10)
  {
    close(*(a1 + 48));
  }

  v4 = +[HTPrefs sharedPrefs];
  v5 = [v4 enablementPrefix];

  if (!v5)
  {
    v5 = &stru_100057080;
  }

  v6 = sub_100003824();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = [NSNumber numberWithBool:a2 == 0];
    v11 = sub_10001AD74(*(a1 + 40));
    v12 = sub_10001ADDC(a2);
    *buf = 138413314;
    v16 = @"EnablementType";
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "com.apple.hangtracer.tailspin_requests %@: %@, request_success: %@, request_type: %@, failure_reason: %@\n", buf, 0x34u);
  }

  v13 = v5;
  v14 = *(a1 + 40);
  v7 = v5;
  AnalyticsSendEventLazy();
  (*(*(a1 + 32) + 16))(*(a1 + 32), a2, v8, v9);
  sub_100004420(@"Tailspin Request");
}

id sub_10002EE50(uint64_t a1)
{
  v8[0] = *(a1 + 32);
  v7[0] = @"EnablementType";
  v7[1] = @"CaptureSuccessful";
  v2 = [NSNumber numberWithBool:*(a1 + 56)];
  v8[1] = v2;
  v7[2] = @"CaptureFailureReason";
  v3 = [NSNumber numberWithInteger:*(a1 + 40)];
  v8[2] = v3;
  v7[3] = @"TailspinRequestType";
  v4 = [NSNumber numberWithInteger:*(a1 + 48)];
  v8[3] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];

  return v5;
}

void sub_10002EF6C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_10002EFA4(uint64_t a1, int a2)
{
  v3 = xpc_connection_copy_entitlement_value();
  v4 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_BOOL && xpc_BOOL_get_value(v4))
  {
    v5 = 1;
  }

  else
  {
    v6 = sub_10001B04C(a2);
    v7 = sub_100003824();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100034FC8();
    }

    v5 = 0;
  }

  return v5;
}

uint64_t sub_10002F05C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2 && a2 < a1;
  v4 = !v3;
  if (v3)
  {
    v5 = sub_100003824();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100035060();
    }
  }

  return v4;
}

void sub_10002F0D0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = qword_100067DB8;
  v10 = [a4 UTF8String];
  v11 = v8;
  v12 = v7;
  if (v11)
  {
    reply = xpc_dictionary_create_reply(v11);
  }

  else
  {
    reply = xpc_dictionary_create_empty();
  }

  v14 = reply;
  if (v12)
  {
    v15 = reply == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  if (!v15)
  {
    xpc_dictionary_set_BOOL(reply, "success", v9 == a1);
    xpc_dictionary_set_uint64(v14, "errorCode", a1);
    if (v10)
    {
      xpc_dictionary_set_string(v14, "fileName", v10);
    }
  }

  v17 = sub_100003824();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = sub_100019BD4(v14);
    v20 = 138412290;
    v21 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Created XPC Dictionary for HTHangLogs Client response: %@", &v20, 0xCu);
  }

  if (v16)
  {
    xpc_connection_send_message(v12, v14);
  }

  else
  {
    v19 = sub_100003824();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000350E4(v14, v12);
    }
  }
}

void sub_10002F2A4(uint64_t a1)
{
  if (a1 != -1 && sandbox_extension_release() == -1)
  {
    v1 = sub_100003824();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1000351A0();
    }
  }
}

void sub_10002F300(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if (qword_100067D50 != -1)
  {
    sub_100035228();
  }

  v7 = qword_100067D48;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F3E4;
  block[3] = &unk_100056AA0;
  v13 = a3;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void sub_10002F3E4(uint64_t a1)
{
  if (sub_10002EFA4(*(a1 + 32), *(a1 + 48)))
  {
    date = xpc_dictionary_get_date(*(a1 + 40), "startTime");
    v3 = xpc_dictionary_get_date(*(a1 + 40), "endTime");
    if (sub_10002F05C(date, v3))
    {
      if (date)
      {
        date = [NSDate dateWithTimeIntervalSince1970:(date / 0x3B9ACA00)];
      }

      if (v3)
      {
        v3 = [NSDate dateWithTimeIntervalSince1970:(v3 / 0x3B9ACA00)];
      }

      if (xpc_dictionary_get_string(*(a1 + 40), "sandboxExtension"))
      {
        v4 = sandbox_extension_consume();
        if (v4 != -1)
        {
          v5 = v4;
          v6 = [NSString stringWithUTF8String:xpc_dictionary_get_string(*(a1 + 40), "archiveSaveDirectory")];
          if (v6)
          {
            v7 = sub_100003824();
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
            {
              sub_10003523C();
            }

            xpc_dictionary_get_BOOL(*(a1 + 40), "archiveCompressionBypass");
            v8 = sub_1000183CC();
            v9 = 0;
            if (v8)
            {
              sub_10002F2A4(v5);
              v10 = qword_100067DB8;
              v11 = *(a1 + 32);
              v12 = *(a1 + 40);
              v13 = v9;
            }

            else
            {
              v21 = sub_100003824();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                sub_1000352B0();
              }

              sub_10002F2A4(v5);
              v11 = *(a1 + 32);
              v12 = *(a1 + 40);
              v10 = 2;
              v13 = 0;
            }

            sub_10002F0D0(v10, v11, v12, v13);
          }

          else
          {
            sub_10002F2A4(v5);
            sub_10002F0D0(5uLL, *(a1 + 32), *(a1 + 40), 0);
          }

          goto LABEL_30;
        }

        v20 = sub_100003824();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100035324();
        }

        v17 = *(a1 + 32);
        v18 = *(a1 + 40);
        v19 = 10;
      }

      else
      {
        v17 = *(a1 + 32);
        v18 = *(a1 + 40);
        v19 = 9;
      }

      sub_10002F0D0(v19, v17, v18, 0);
LABEL_30:

      return;
    }

    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = 6;
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = 3;
  }

  sub_10002F0D0(v16, v14, v15, 0);
}

void sub_10002F6A8(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("com.apple.hangtracer.client", v3);
  v2 = qword_100067D48;
  qword_100067D48 = v1;
}

void sub_10002F798()
{
  v0 = objc_opt_class();
  v1 = sub_1000067BC(v0);
  sub_100006808(&_mh_execute_header, v2, v3, "Value of %@ for key %@ is unexpected class %@. Values in %@ domain were modified", v4, v5, v6, v7, v8);
}

void sub_10002F8A8(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006788();
  sub_10000679C(&_mh_execute_header, v2, v3, "%s: %@", v4, v5, v6, v7, 2u);
}

void sub_10002F938()
{
  sub_100006788();
  sub_1000067F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10002FA50(int a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Hangreporter has processed more tailspins than hangtracerd has requested. tailspinsProcessed:%u successfulTailspinSaves:%u. This should never happen.", v3, 0xEu);
}

void sub_10002FAD8()
{
  sub_1000067FC();
  sub_1000067F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002FB48()
{
  sub_1000067FC();
  sub_1000067F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002FD40(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unknown action identifier %@", buf, 0xCu);
}

void sub_10002FE68(uint64_t a1, NSObject *a2)
{
  v3 = [*(*(*a1 + 8) + 40) pid];
  v4[0] = 67109120;
  v4[1] = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "File for pid %d not found, tailspin generation likely failed", v4, 8u);
}

void sub_100030014(uint64_t a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 67109378;
  *(buf + 1) = a3;
  *(buf + 4) = 2080;
  *(buf + 10) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to fetch launch_service_stats(%d):%s", buf, 0x12u);
}

void sub_1000300E4()
{
  sub_100006788();
  sub_1000067F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100030258()
{
  v0 = [qword_1000678B8 target];
  sub_1000067FC();
  sub_10000E7F8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100030304()
{
  sub_1000067FC();
  sub_10000E7D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100030600(void *a1, void *a2, NSObject *a3)
{
  v5 = 136315650;
  v6 = "handleSentryTailspinRequest";
  v7 = 2048;
  v8 = [a1 unsignedLongLongValue];
  v9 = 2048;
  v10 = [a2 unsignedLongLongValue];
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%s: Requested startTime = %llu, endTime = %llu", &v5, 0x20u);
}

void sub_1000306C0(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006788();
  sub_10000E7F8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100030A58()
{
  sub_10000E808();
  sub_1000067F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100030A94()
{
  sub_10000E808();
  sub_1000067F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100030AD0()
{
  sub_10000E808();
  sub_1000067F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100030B80(uint64_t a1, void *a2)
{
  v7 = [a2 localizedDescription];
  sub_10000E7F8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100030C2C()
{
  sub_10000E808();
  sub_1000067F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100030C68(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006788();
  sub_10000E7F8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100030D00()
{
  sub_100006788();
  sub_1000067F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100030DFC()
{
  sub_10000E7E0();
  sub_10000E7D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100030E6C()
{
  sub_1000067FC();
  sub_1000067F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100030EDC()
{
  sub_1000067FC();
  sub_1000067F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100030F4C()
{
  sub_10000E808();
  sub_1000067F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100030FFC()
{
  sub_1000067FC();
  sub_10000E7D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000310F0()
{
  sub_1000067FC();
  sub_1000067F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100031160()
{
  sub_10000E7E0();
  sub_10000E7D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000311D0()
{
  sub_10000E808();
  sub_1000067F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003120C()
{
  sub_1000067FC();
  sub_10000E7D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100031304(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2114;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Recent State Info for process with pid '%d': %{public}@", v3, 0x12u);
}

void sub_10003138C(void *a1)
{
  v1 = sub_100019BD4(a1);
  sub_1000067FC();
  sub_10000E7F8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100031580(os_log_t log)
{
  v1 = 136315138;
  v2 = "checkForPendingHangsWrapper";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s, Saving a tailspin now.", &v1, 0xCu);
}

void sub_100031680(uint64_t a1, NSObject *a2)
{
  v2 = 134218240;
  v3 = a1;
  v4 = 2048;
  v5 = qword_1000679C8;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "getHangWaitTimeout: now %llu < hangSequenceLastHangReportedTime %llu", &v2, 0x16u);
}

void sub_100031774(os_log_t log)
{
  v1 = 134218240;
  v2 = qword_1000679C0;
  v3 = 2048;
  v4 = qword_1000679C8;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "getHangWaitTimeout: hangSequenceStartTime %llu, hangSequenceLastHangReportedTime %llu", &v1, 0x16u);
}

void sub_100031808(void *a1, int a2, NSObject *a3)
{
  v5 = [a1 objectForKeyedSubscript:@"Primary"];
  v6 = 138412546;
  v7 = v5;
  v8 = 1024;
  v9 = a2;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Acquired network state: interface type = %@, time since primary = %u", &v6, 0x12u);
}

void sub_1000319A0(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 bundleId];
  sub_1000067FC();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Unable to create an LS application record from bundle id %@: %@", v6, 0x16u);
}

void sub_100031B48(void *a1)
{
  [a1 count];
  sub_1000067FC();
  sub_100013CE4(&_mh_execute_header, v1, v2, "Updating HUD with %lu hangs", v3, v4, v5, v6, v7);
}

void sub_100031BC0(uint64_t a1)
{
  v6 = *(a1 + 56);
  sub_100013CD8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100031C38(uint64_t a1)
{
  v6 = *(a1 + 56);
  sub_100013CD8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100031CB0()
{
  sub_1000067FC();
  sub_100013CD8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100031D20()
{
  sub_1000067FC();
  sub_100013CD8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100031E54(os_log_t log)
{
  v1 = 136315138;
  v2 = "configureTailspinForThirdPartyDevelopment";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Failed to create tailspin config object", &v1, 0xCu);
}

void sub_100031ED8(NSObject *a1)
{
  v2 = +[HangHUDServiceSpecification machName];
  v3 = +[HangHUDServiceSpecification identifier];
  v4 = 138412546;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "failed to lookup endpoint with machName=%@ service=%@", &v4, 0x16u);
}

void sub_1000323F4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "No more update happens as it's completed for %@ @ HangHUDLine::update:", &v2, 0xCu);
}

void sub_10003246C(uint64_t a1, NSObject *a2, double a3)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Checking if hang is current with hangID %@: durationSinceLastUpdateMs:%f", &v3, 0x16u);
}

void sub_1000324F0()
{
  sub_100018F14();
  archive_errno();
  sub_100018F24();
  sub_100018EF0();
  sub_10000E7F8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_10003257C()
{
  sub_100018F14();
  archive_errno();
  sub_100018F24();
  sub_100018EF0();
  sub_10000E7F8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100032608()
{
  sub_100018F14();
  archive_errno();
  sub_100018F24();
  sub_100018EF0();
  sub_10000E7F8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100032694()
{
  sub_100018F14();
  archive_errno();
  sub_100018F24();
  sub_100018EF0();
  sub_10000E7F8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100032720()
{
  sub_100018F14();
  archive_errno();
  sub_100018F24();
  sub_100018EF0();
  sub_10000E7F8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_1000327AC()
{
  archive_errno();
  sub_100018F24();
  sub_10000E7F8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10003285C()
{
  archive_errno();
  archive_error_string();
  sub_10000E7F8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100032904()
{
  sub_100018F14();
  archive_errno();
  sub_100018F24();
  sub_100018EF0();
  sub_10000E7F8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100032990()
{
  sub_100018F14();
  archive_errno();
  sub_100018F24();
  sub_100018EF0();
  sub_10000E7F8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100032BC8()
{
  sub_1000067FC();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Error handling url %@: %@", v2, 0x16u);
}

void sub_100032CBC(void *a1, NSObject *a2, double a3)
{
  v5 = [a1 string];
  v6 = 138412546;
  v7 = v5;
  v8 = 2048;
  v9 = a3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "TextAnimation: duration layer's animation object initialized: text set as %@ for a given duration %f", &v6, 0x16u);
}

void sub_100032E4C(id *a1, NSObject *a2)
{
  v3 = [*a1 string];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "TextAnimation:  duration layer's text set as %@", &v4, 0xCu);
}

void sub_100032F5C()
{
  v1[0] = 136315394;
  sub_100006788();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s: %@", v1, 0x16u);
}

void sub_100032FDC()
{
  sub_1000067FC();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Error: error creating directory at path %@ %@", v2, 0x16u);
}

void sub_1000330D4(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_1000067FC();
  sub_10001B168(&_mh_execute_header, v2, v3, "Failed to validate os log profile payload with error: %@", v4, v5, v6, v7, v8);
}

void sub_100033158(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_1000067FC();
  sub_10001B168(&_mh_execute_header, v2, v3, "Failed to remove os log profile payload with error: %@", v4, v5, v6, v7, v8);
}

void sub_1000331DC(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_1000067FC();
  sub_10001B168(&_mh_execute_header, v2, v3, "Failed to install os log profile payload with error: %@", v4, v5, v6, v7, v8);
}

void sub_100033334(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Client is not vending the current protocol version: %u", v3, 8u);
}

void sub_1000333B0(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to setup up dispatch source to monitor PROC_EXIT for new proc %u", v2, 8u);
}

void sub_100033490(unint64_t a1)
{
  v6 = sub_1000043DC(a1);
  sub_10000E7F8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100033544(unint64_t a1)
{
  v1 = sub_1000043DC(a1);
  sub_1000067FC();
  sub_10000E7F8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000335D0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 60);
  v4 = +[HTPrefs sharedPrefs];
  v5 = v4;
  if (v3)
  {
    [v4 runloopHangDurationThresholdMSec];
  }

  else
  {
    [v4 runloopHangThirdPartyDurationThresholdMSec];
  }

  sub_10001E310();
  sub_10000E7F8();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_1000336B0(uint64_t *a1)
{
  v2 = sub_1000043DC(2uLL);
  v3 = *a1;
  v4 = +[HTPrefs sharedPrefs];
  [v4 runloopHangTimeoutDurationMSec];
  sub_10001E310();
  sub_10000E7F8();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_1000337BC(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 24);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "dealloc for %@", &v3, 0xCu);
}

void sub_100033838(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Querying LS database for bundle id %@", &v3, 0xCu);
}

void sub_1000338B4(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 138543618;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "There was an error querying the LS database for bundle id %{public}@: %@", &v4, 0x16u);
}

void sub_100033940(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "    A hang with ID %@ has not ended yet!", &v2, 0xCu);
}

void sub_1000339B8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, " 🔚 A hang with ID %@ has ended!", &v2, 0xCu);
}

void sub_100033AC4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1000251AC();
  sub_10002519C();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100033B50()
{
  sub_1000251BC();
  sub_1000251CC();
  sub_10002519C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100033BF4()
{
  sub_1000251BC();
  sub_1000251CC();
  sub_10002519C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100033C98(uint64_t a1)
{
  v1 = *(a1 + 400);
  sub_1000251AC();
  sub_10000FE30(&_mh_execute_header, v2, v3, "HTPrefs: %s: %@", v4, v5, v6, v7, 2u);
}

void sub_100033D14(uint64_t a1)
{
  v1 = *(a1 + 392);
  sub_1000251AC();
  sub_10000FE30(&_mh_execute_header, v2, v3, "HTPrefs: %s: %@", v4, v5, v6, v7, 2u);
}

void sub_100033D90(uint64_t *a1)
{
  v1 = *a1;
  sub_1000251AC();
  sub_10000FE30(&_mh_execute_header, v2, v3, "HTPrefs: %s is set to %@, treating as carry device", v4, v5, v6, v7, 2u);
}

void sub_100033E9C()
{
  sub_1000251BC();
  sub_1000251CC();
  sub_10002519C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100033F40()
{
  sub_1000251BC();
  sub_1000251CC();
  sub_10002519C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10003407C(uint64_t *a1, NSObject *a2, double a3)
{
  v3 = *a1;
  v4 = 134218496;
  v5 = v3;
  v6 = 2048;
  v7 = a3;
  v8 = 2048;
  v9 = 0x4059000000000000;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "HTHUD: numberOfDashes greater than maximum, elapsedTimeMS=%f, numberOfDashes=%f, capping to max_dash_count=%f", &v4, 0x20u);
}

void sub_100034144(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "sendHangData did not complete. Error: %@", &v2, 0xCu);
}

void sub_100034344()
{
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = sub_1000279EC(v1);
  sub_10000E7F8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10003447C(uint64_t a1, NSObject *a2)
{
  v4 = 134218498;
  v5 = qword_100067C58;
  v6 = 2048;
  v7 = [HUDLine contentScaleForTexts]_0();
  v8 = 2112;
  v9 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "cachedTopMargin is set to %f where DisplayScale is %f. The orientation is %@", &v4, 0x20u);
}

void sub_10003455C(os_log_t log, double a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "durationSinceLastUpdateMs: %f", &v2, 0xCu);
}

void sub_100034600(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "clearHUDWithCompletionHandler did not complete. Error: %@", &v2, 0xCu);
}

void sub_10003468C(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Tailspin dump request failed with error (%s)", &v2, 0xCu);
}

void sub_100034704(uint8_t *a1, unint64_t a2, double *a3, NSObject *a4)
{
  v7 = sub_1000024F8(a2);
  *a1 = 134217984;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "HTAssertion: checkOverlap: ignoring hang during screen off with duration %.0fms", a1, 0xCu);
}

void sub_1000347F8(os_log_t log)
{
  v1 = 136315138;
  v2 = "+[HTUserNotificationHelper sharedHelperWithCategories:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s Shared HTUserNotificationHelper was provided with notification categories, but singleton is already instantiated.", &v1, 0xCu);
}

void sub_10003487C(os_log_t log)
{
  v1 = 136315138;
  v2 = "+[HTUserNotificationHelper sharedHelperWithCategories:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s Trying to create shared HTUserNotificationHelper but no notification categories provided", &v1, 0xCu);
}

void sub_100034A08(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = dword_100067DA0;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Attempting to decrement Pending Tailspin Block count when it is at %d", v1, 8u);
}

void sub_100034B00(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2048;
  *&v3[14] = a2;
  sub_10002EF6C(&_mh_execute_header, a2, a3, "%{public}@: Unable to save tailspin data to file, reason: %ld\n", *v3, *&v3[8], *&v3[16]);
}

void sub_100034B7C(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_1000067FC();
  sub_10000E7F8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100034C08(void *a1)
{
  v6 = [a1 localizedDescription];
  sub_10000E7F8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100034CF0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v8 = [a2 localizedDescription];
  sub_10000E7F8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100034E94()
{
  v0 = __error();
  strerror(*v0);
  sub_10000E7F8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_100034F48(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = 50;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "More than %d pending tailspin blocks, tailspin is not responding to hangtracerd tailspin requests", v1, 8u);
}

void sub_100034FC8()
{
  sub_1000067FC();
  v3 = 1024;
  v4 = v0;
  v5 = 2080;
  v6 = "com.apple.hangtracer.collect-logs";
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "client %{public}@ [%d] does not bear entitlement %s; refusing HANGTRACER_XPC_CMD_COLLECT_LOGS command", v2, 0x1Cu);
}

void sub_100035060()
{
  sub_1000067FC();
  v3 = 2048;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Start Date: %lld is later than End Date: %lld", v2, 0x16u);
}

void sub_1000350E4(void *a1, void *a2)
{
  v3 = sub_100019BD4(a1);
  v9 = sub_100019BD4(a2);
  sub_10000E7F8();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1000351A0()
{
  v0 = __error();
  strerror(*v0);
  sub_1000067FC();
  sub_10000E7F8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100035324()
{
  v0 = __error();
  strerror(*v0);
  sub_10000E7F8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}