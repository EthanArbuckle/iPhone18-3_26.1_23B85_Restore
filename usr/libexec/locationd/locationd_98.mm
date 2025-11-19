BOOL sub_10071B104()
{
  if (!sub_10006FE64())
  {
    return 1;
  }

  return sub_10006FE30();
}

void sub_10071B13C(id a1)
{
  sub_10001CAF4(&v4);
  v1 = qword_102659318;
  v6 = 0;
  v2 = sub_1000B9370(v4, "GnssMinimumDebounceInterval", &v6);
  v3 = v6;
  if (!v2)
  {
    v3 = v1;
  }

  qword_102659318 = v3;
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_10071B1B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10071B1C8()
{
  if (sub_10006FE30())
  {
    return 1;
  }

  return sub_100718F78();
}

void sub_10071B200(id a1)
{
  v1 = CFPreferencesCopyValue(@"StoreDemoMode", @"com.apple.demo-settings", @"mobile", kCFPreferencesAnyHost);
  if (v1)
  {
    v2 = v1;
    byte_102659200 = CFBooleanGetValue(v1) != 0;

    CFRelease(v2);
  }
}

uint64_t sub_10071B280()
{
  if (qword_102659218 != -1)
  {
    sub_10191CB3C();
  }

  return byte_102659210;
}

void sub_10071B2B8(id a1)
{
  v6 = 0;
  sub_10001CAF4(buf);
  v1 = sub_10001CB4C(*buf, "ForceMultiUser", &v6);
  v2 = v1 & v6;
  if (v8)
  {
    sub_100008080(v8);
  }

  if (v2)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10191B9F8();
    }

    v3 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#Warning force multi user", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191CB50();
    }

    byte_102659210 = 1;
  }

  else
  {
    v4 = MKBUserTypeDeviceMode();
    if (v4)
    {
      v5 = [v4 objectForKey:kMKBDeviceModeKey];
      if ([v5 isEqualToString:kMKBDeviceModeMultiUser])
      {
        byte_102659210 = 1;
      }
    }
  }
}

void sub_10071B5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10071B62C(id a1)
{
  sub_10001CAF4(&v5);
  v1 = v5;
  v2 = sub_100718F78();
  v7 = 0;
  v3 = sub_10001CB4C(v1, "GpsdEnableRof", &v7);
  v4 = v7;
  if (!v3)
  {
    v4 = v2;
  }

  byte_102659220 = v4;
  if (v6)
  {
    sub_100008080(v6);
  }
}

void sub_10071B6A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10071B6BC()
{
  v0 = sub_100719DCC();
  sub_10001CAF4(&v5);
  v7 = 0;
  v1 = sub_10001CB4C(v5, "EnableRof", &v7);
  v2 = v7;
  if (v6)
  {
    sub_100008080(v6);
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return v0;
  }
}

void sub_10071B734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10071B74C()
{
  if ((sub_1000734AC() & 1) != 0 || sub_10006FE64() && !sub_10006FF1C() || sub_10006FDD0() && !sub_10006FEAC())
  {
    return 1;
  }

  return sub_100718F78();
}

uint64_t sub_10071B7A4()
{
  sub_10001CAF4(&v5);
  v7 = 0;
  v0 = sub_10001CB4C(v5, "GnssPlatformEnableNavic", &v7);
  v1 = v7;
  if (v6)
  {
    sub_100008080(v6);
  }

  if (qword_102659170 != -1)
  {
    sub_10191C990();
  }

  if (byte_102659168 == 1)
  {
    if (sub_10006FB70() && !sub_10006FCD4() || (v2 = sub_100718F78()) != 0)
    {
      if (sub_10006FE30() || sub_100718F78())
      {
        v3 = 1;
        v2 = 1;
      }

      else
      {
        v3 = 1;
        v2 = sub_1007192A4();
      }
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  return (v2 | v0 & v1 & v3) & 1;
}

void sub_10071B890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071B8A8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10071B938;
  block[3] = &unk_102449A78;
  block[4] = a1;
  if (qword_102659248 != -1)
  {
    dispatch_once(&qword_102659248, block);
  }

  return byte_102659240;
}

void sub_10071B938()
{
  if (qword_102659160 != -1)
  {
    sub_10191C10C();
  }

  v0 = byte_102659158;
  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168)
  {
    goto LABEL_12;
  }

  if (qword_102659150 != -1)
  {
    sub_10191C0F8();
  }

  if (byte_102659148)
  {
    goto LABEL_12;
  }

  if (qword_102659180 != -1)
  {
    sub_10191C120();
  }

  if ((byte_102659178 | v0))
  {
LABEL_12:
    if (v0)
    {
      v1 = 1;
    }

    else
    {
      if (qword_102659290 != -1)
      {
        sub_10191C97C();
      }

      v1 = qword_102659298 & 1 | ((qword_102659298 & 2) != 0);
    }

    byte_102659240 = v1;
  }
}

uint64_t sub_10071BA24()
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return 1;
}

uint64_t sub_10071BA58()
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  v1 = (dword_1026592D0 - 78) > 0x25 || ((1 << (dword_1026592D0 - 78)) & 0x3FFFFE7D53) == 0;
  if (v1 && ((dword_1026592D0 - 134) > 0x2D || ((1 << (dword_1026592D0 + 122)) & 0x3CFC00F003FFLL) == 0) && ((dword_1026592D0 - 205) > 0x30 || ((1 << (dword_1026592D0 + 51)) & 0x1FFF00000000FLL) == 0))
  {
    return 0;
  }

  return result;
}

uint64_t sub_10071BB0C()
{
  if (qword_102659258 != -1)
  {
    sub_10191CC78();
  }

  return byte_102659250;
}

void sub_10071BB44(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    if (CFStringCompare(v1, @"KH", 0) == kCFCompareEqualTo)
    {
      byte_102659250 = 1;
      if (qword_1025D4870 != -1)
      {
        sub_10191BF9C();
      }

      v3 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        *v4 = 0;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "isKoreaSKU: true", v4, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191CC8C();
      }
    }

    CFRelease(v2);
  }
}

void sub_10071BC18(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    if (CFStringCompare(v1, @"CH", 0) == kCFCompareEqualTo)
    {
      byte_102659260 = 1;
      if (qword_1025D4870 != -1)
      {
        sub_10191BF9C();
      }

      v3 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        *v4 = 0;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "isChinaSKU: true", v4, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191CD70();
      }
    }

    CFRelease(v2);
  }
}

uint64_t sub_10071BCEC()
{
  if (qword_102659278 != -1)
  {
    sub_10191CE54();
  }

  return byte_102659270;
}

void sub_10071BD64(id a1)
{
  v4 = @"IOPropertyMatch";
  v5 = &off_102553B48;
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1]);
  if (MatchingService)
  {
    byte_102659288 = 1;
    IOObjectRelease(MatchingService);
  }

  else
  {
    if (qword_1025D42D0 != -1)
    {
      sub_10191D06C();
    }

    v2 = qword_1025D42D8;
    if (os_log_type_enabled(qword_1025D42D8, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Compass service missing", v3, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191D094();
    }
  }
}

void sub_10071BE84(id a1)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  qword_102659298 = sub_10071BEBC();
}

uint64_t sub_10071BEBC()
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  v0 = 0;
  v1 = dword_1026592D0;
  switch(dword_1026592D0)
  {
    case 0:
    case 281:
      if (qword_1025D4870 != -1)
      {
        sub_10191BF9C();
      }

      v17 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        *buf = 67174657;
        v22 = v1;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "Unsupported HW type %{private}d; file a radar to CoreMotion Factory | 1.0", buf, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10191D178(v1);
      }

      goto LABEL_10;
    case 2:
    case 3:
    case 5:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 21:
    case 22:
    case 23:
    case 37:
    case 38:
    case 40:
    case 41:
    case 43:
    case 52:
    case 81:
    case 83:
    case 85:
    case 87:
      if (qword_1025D4870 != -1)
      {
        sub_10191BF9C();
      }

      v2 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        v22 = v1;
        _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_FAULT, "Old hardware,%d is not supported", buf, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10191D270(v1);
      }

LABEL_10:
      v0 = 0;
      break;
    case 24:
    case 25:
    case 27:
    case 28:
      v13 = 1586033086;
      goto LABEL_50;
    case 26:
      v7 = 0x134E88F1BELL;
      goto LABEL_76;
    case 29:
      v0 = 1115734017;
      break;
    case 30:
    case 31:
    case 32:
      v16 = 1115734017;
      goto LABEL_53;
    case 33:
    case 217:
    case 219:
    case 220:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 227:
    case 228:
    case 246:
    case 247:
    case 248:
    case 249:
    case 250:
    case 251:
    case 252:
    case 253:
    case 255:
    case 256:
      v3 = 1530;
      goto LABEL_14;
    case 34:
    case 195:
    case 196:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 218:
    case 229:
    case 230:
    case 231:
    case 232:
    case 241:
    case 242:
    case 243:
    case 244:
    case 245:
    case 257:
    case 258:
      v3 = 13818;
LABEL_14:
      v4 = v3 & 0xFFFFFFFF0000FFFFLL | 0x628C0000;
      goto LABEL_15;
    case 35:
    case 36:
    case 64:
    case 65:
      v14 = -3702;
      goto LABEL_70;
    case 39:
    case 42:
      v0 = 0x50022CA9C00ELL;
      break;
    case 44:
      v14 = -15942;
LABEL_70:
      v0 = v14 | 0x42880000u;
      break;
    case 45:
      v0 = 1116271034;
      break;
    case 46:
    case 62:
    case 161:
      v0 = 1653129658;
      break;
    case 47:
    case 63:
      v16 = 1653129658;
LABEL_53:
      v0 = v16 | 0x3000;
      break;
    case 48:
    case 193:
      v5 = 1088;
      v6 = 0x26289C1BALL;
      goto LABEL_18;
    case 49:
    case 194:
    case 197:
    case 210:
      v10 = 62970;
      goto LABEL_44;
    case 50:
    case 51:
      v7 = 0x5002ACA9C00ELL;
      goto LABEL_76;
    case 54:
    case 55:
      v13 = 2127327678;
LABEL_50:
      v0 = v13 | 0x202005300000000;
      break;
    case 56:
    case 57:
    case 58:
    case 59:
      v0 = 0x20300537E8C71BELL;
      break;
    case 60:
    case 61:
    case 204:
      v0 = 0x400000000;
      break;
    case 66:
    case 67:
    case 74:
    case 75:
      v7 = 0x486ABCA9C00ELL;
      goto LABEL_76;
    case 68:
    case 69:
    case 71:
    case 72:
      v12 = 0x24300537E8C35BELL;
      goto LABEL_64;
    case 70:
    case 73:
      v9 = 0x80537E8C31BELL;
      goto LABEL_66;
    case 76:
    case 146:
    case 147:
      v10 = 49594;
LABEL_44:
      v4 = v10 & 0xFFFFFFFF0000FFFFLL | 0x62890000;
LABEL_15:
      v0 = v4 & 0xFFFF0000FFFFFFFFLL | 0x200000000;
      break;
    case 77:
    case 145:
      v12 = 0x26289F5FALL;
LABEL_64:
      v0 = v12 - 1024;
      break;
    case 78:
    case 79:
    case 80:
    case 142:
      v9 = 0x537E8C35BELL;
LABEL_66:
      v0 = v9 & 0xFFFFFFFFFFFFLL | 0x243000000000000;
      break;
    case 82:
    case 84:
      v7 = 0x4F6ABCA9C00ELL;
      goto LABEL_76;
    case 86:
    case 88:
      v0 = 0x2496ABCA9C00ELL;
      break;
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
      v7 = 0x496ABCA9C01ELL;
      goto LABEL_76;
    case 95:
    case 96:
    case 97:
    case 98:
      v0 = 0x612496ABCA9C01ELL;
      break;
    case 99:
    case 100:
    case 101:
    case 102:
      v0 = 0xE12696ABCA9C05ELL;
      break;
    case 103:
    case 104:
    case 105:
    case 106:
      v0 = 0xE12696ABCAA005ELL;
      break;
    case 107:
    case 108:
    case 109:
    case 110:
      v8 = 0x496ABCA9C05ELL;
      goto LABEL_27;
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 280:
      v8 = 0x696ABCAA005ELL;
LABEL_27:
      v0 = v8 & 0xFFFFFFFFFFFFLL | 0xE16000000000000;
      break;
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
      v0 = 0x2E16696ABCAA005ELL;
      break;
    case 134:
    case 135:
    case 136:
    case 137:
      v11 = 1653208570;
      goto LABEL_41;
    case 138:
    case 139:
    case 140:
    case 141:
    case 143:
      v0 = 0x24B00537E8C35BELL;
      break;
    case 144:
    case 254:
      v0 = 0x2628C31BALL;
      break;
    case 148:
      v0 = 0x136E8C408ELL;
      break;
    case 149:
      v7 = 0x122C8C010ELL;
      goto LABEL_76;
    case 150:
    case 151:
    case 152:
    case 153:
      v7 = 0x406ABCA9C00ELL;
LABEL_76:
      v0 = v7 & 0xFFFFFFFFFFFFLL | 0x2000000000000;
      break;
    case 154:
    case 155:
    case 156:
    case 157:
      v11 = 1653356026;
LABEL_41:
      v0 = (v11 & 0xFFFF0000FFFFFFFFLL | 0x200000000) - 64;
      break;
    case 168:
    case 169:
    case 170:
    case 171:
      v0 = 0x27B00537E8C35BELL;
      break;
    case 172:
    case 173:
    case 176:
    case 177:
      v15 = 0x27B00537E8C35BELL;
      goto LABEL_68;
    case 174:
    case 175:
    case 234:
    case 235:
    case 236:
    case 237:
      v0 = 0x27700537E8C35FELL;
      break;
    case 178:
    case 179:
    case 180:
    case 181:
      v0 = 0x27700537E8C37FELL;
      break;
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 238:
    case 239:
    case 240:
      v5 = 2560;
      v6 = 0x27700537E8C35FELL;
LABEL_18:
      v0 = v6 | v5;
      break;
    case 198:
    case 199:
    case 200:
    case 201:
    case 259:
    case 260:
    case 261:
    case 262:
    case 263:
    case 264:
    case 265:
    case 266:
    case 267:
    case 268:
    case 269:
    case 270:
    case 271:
    case 272:
    case 273:
    case 274:
    case 275:
    case 276:
    case 277:
    case 278:
    case 279:
      v0 = 554434570;
      break;
    case 233:
      v15 = 0x24B00537E8C35BELL;
LABEL_68:
      v0 = v15 | 0x40;
      break;
    default:
      break;
  }

  v20 = (v0 & 0x200) != 0;
  sub_100126E84(buf, "OverrideMotionCapEclipseService", &v20, 0);
  v18 = 512;
  if (!buf[1])
  {
    v18 = 0;
  }

  return v18 | v0 & 0x2E7FFF7FFFEFFDFFLL;
}

uint64_t sub_10071C3C8()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  v1 = (dword_1026592D0 - 205) > 0x35 || ((1 << (dword_1026592D0 + 51)) & 0x3FFFF00F3FFFEFLL) == 0;
  if (v1 && ((dword_1026592D0 - 134) > 0x3F || ((1 << (dword_1026592D0 + 122)) & 0xF800000000F0080FLL) == 0) && (dword_1026592D0 > 0x3F || ((1 << dword_1026592D0) & 0xC003F00000000000) == 0))
  {
    return 0;
  }

  return result;
}

BOOL sub_10071C490()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  if ((dword_1026592D0 - 195) > 0x3F || ((1 << (dword_1026592D0 + 61)) & 0xC000018000000003) == 0)
  {
    return (dword_1026592D0 - 33) < 2;
  }

  return result;
}

uint64_t sub_10071C510()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return ((dword_1026592D0 - 195) < 0x40) & (0xF0000003FFC00003 >> (dword_1026592D0 + 61));
}

uint64_t sub_10071C578()
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return ((dword_1026592D0 - 213) < 0x2A) & (0x200000F000FuLL >> (dword_1026592D0 + 43));
}

uint64_t sub_10071C5D0()
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  if (dword_1026592D0 <= 137)
  {
    v2 = (dword_1026592D0 - 78) > 0x37 || ((1 << (dword_1026592D0 - 78)) & 0xFFFFFE1E000007) == 0;
    if (v2 && (dword_1026592D0 - 68) >= 6)
    {
      return 0;
    }
  }

  else
  {
    v1 = (dword_1026592D0 - 138) > 0x35 || ((1 << (dword_1026592D0 + 118)) & 0x3FFFFFC000003FLL) == 0;
    if (v1 && ((dword_1026592D0 - 233) > 0x2F || ((1 << (dword_1026592D0 + 23)) & 0x8000000000FFLL) == 0))
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10071C698()
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  v0 = dword_1026592D0 == 280;
  if ((dword_1026592D0 - 89) < 4)
  {
    v0 = 1;
  }

  return (dword_1026592D0 - 95) < 0x27 || v0;
}

uint64_t sub_10071C6F4()
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  v0 = dword_1026592D0 == 280;
  if ((dword_1026592D0 - 99) < 8)
  {
    v0 = 1;
  }

  return (dword_1026592D0 - 111) < 0x17 || v0;
}

uint64_t sub_10071C750()
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return ((dword_1026592D0 - 172) < 0x40) & (0xC0000000000000F3 >> (dword_1026592D0 + 84));
}

uint64_t sub_10071C7A4()
{
  v2 = 0;
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  if (dword_1026592D0 == 233)
  {
    v2 = 1;
  }

  sub_100126E84(v1, off_1025D6528[0], &v2, 0);
  return v1[1];
}

BOOL sub_10071C814()
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return (dword_1026592D0 - 107) < 4;
}

BOOL sub_10071C858()
{
  if (qword_102659290 != -1)
  {
    sub_10191C97C();
  }

  return (qword_102659298 & 0x4000) != 0 && (qword_102659298 & 0x10000) == 0;
}

uint64_t sub_10071C8A8()
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return ((dword_1026592D0 - 115) < 0x13) & (0x787E1u >> (dword_1026592D0 - 115));
}

uint64_t sub_10071C8FC()
{
  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168)
  {
    return 1;
  }

  if (qword_102659150 != -1)
  {
    sub_10191C0F8();
  }

  return byte_102659148;
}

uint64_t sub_10071C978()
{
  if (qword_1026592A8 != -1)
  {
    sub_10191D368();
  }

  return byte_1026592A0;
}

void sub_10071C9B0(id a1)
{
  v1 = MGGetBoolAnswer();
  byte_1026592A0 = v1;
  if (v1)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10191BF9C();
    }

    v2 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Booted in to diagnostics mode", v3, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191D37C();
    }
  }
}

uint64_t sub_10071CA5C()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168)
  {
    return 1;
  }

  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_102659180 != -1)
  {
    sub_10191C120();
  }

  if (byte_102659178)
  {
    return 1;
  }

  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_102659150 != -1)
  {
    sub_10191C0F8();
  }

  return byte_102659148;
}

BOOL sub_10071CB28()
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return (dword_1026592D0 - 168) < 0x18 || (dword_1026592D0 - 234) < 7;
}

BOOL sub_10071CB80()
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  if ((dword_1026592D0 - 184) > 0x38 || ((1 << (dword_1026592D0 + 72)) & 0x10000000000003FLL) == 0)
  {
    return (dword_1026592D0 - 174) < 2;
  }

  return result;
}

uint64_t sub_10071CBEC()
{
  result = sub_1001C0C18();
  if (result)
  {
    if (qword_102659170 != -1)
    {
      sub_10191C0D0();
    }

    return byte_102659168;
  }

  return result;
}

BOOL sub_10071CC28()
{
  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168)
  {
    return 1;
  }

  return sub_10071CC78();
}

BOOL sub_10071CC78()
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return dword_1026592D0 == 70 || dword_1026592D0 == 73;
}

BOOL sub_10071CCC0()
{
  if (sub_10006FF1C() || (result = sub_10006FF98()))
  {

    return sub_100714E94();
  }

  return result;
}

BOOL sub_10071CCFC()
{
  if ((sub_1001B9C14() & 1) == 0 && !sub_10006FE30() && !sub_100718F78())
  {
    goto LABEL_8;
  }

  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168)
  {
    v0 = 1;
  }

  else
  {
LABEL_8:
    v0 = sub_100718E94();
  }

  sub_10001CAF4(&v5);
  v7 = 0;
  v1 = sub_10001CB4C(v5, "supportsBBTimeFreqTransfer", &v7);
  v2 = v7;
  if (v6)
  {
    sub_100008080(v6);
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return v0;
  }
}

void sub_10071CDB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10071CDD0()
{
  if ((sub_1001B9BE0() & 1) == 0 && !sub_10006FE30())
  {
    goto LABEL_7;
  }

  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168)
  {
    v0 = 1;
  }

  else
  {
LABEL_7:
    v0 = sub_100718E94();
  }

  sub_10001CAF4(&v5);
  v7 = 0;
  v1 = sub_10001CB4C(v5, "supportsGnssDisablementAssertion", &v7);
  v2 = v7;
  if (v6)
  {
    sub_100008080(v6);
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return v0;
  }
}

void sub_10071CE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071CE9C()
{
  sub_10001CAF4(&v6);
  v0 = v6;
  if ((sub_1001B9BE0() & 1) != 0 || sub_10006FE30() || sub_100718F78())
  {
    if (qword_102659170 != -1)
    {
      sub_10191C990();
    }

    v1 = byte_102659168;
  }

  else
  {
    v1 = 0;
  }

  v8 = 0;
  v2 = sub_10001CB4C(v0, "supportsGnssStatusQueryAssertion", &v8);
  v3 = v8;
  if (v7)
  {
    sub_100008080(v7);
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v1;
  }

  return v4 & 1;
}

void sub_10071CF50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071CF68()
{
  if (!sub_1001B9BE0())
  {
    goto LABEL_8;
  }

  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168 == 1)
  {
    sub_10001CAF4(&v4);
    v6 = 0;
    v0 = sub_10001CB4C(v4, "enableWwanAntTuneGnssL5Blanking", &v6);
    v1 = v0 & v6;
    if (v5)
    {
      sub_100008080(v5);
    }

    v2 = 1;
  }

  else
  {
LABEL_8:
    v1 = 0;
    v2 = 0;
  }

  return v1 | (v2 << 8);
}

void sub_10071D008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071D020()
{
  sub_10001CAF4(&v3);
  v5 = 0;
  v0 = sub_1004FB7DC(v3, "ProactiveGnssModePowerBudget", &v5);
  v1 = v5;
  if (v4)
  {
    sub_100008080(v4);
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void sub_10071D084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071D09C()
{
  sub_10001CAF4(&v3);
  v5 = 0;
  v0 = sub_10001CB4C(v3, "ProactiveGnssModeSupported", &v5);
  v1 = v5;
  if (v4)
  {
    sub_100008080(v4);
  }

  return v0 & v1;
}

void sub_10071D0FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071D114()
{
  sub_10001CAF4(&v3);
  v5 = 0;
  v0 = sub_10001CB4C(v3, "SetLocationStreamingDisabled", &v5);
  v1 = v5;
  if (v4)
  {
    sub_100008080(v4);
  }

  return v0 & v1;
}

void sub_10071D174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071D18C()
{
  sub_10001CAF4(&v3);
  v5 = 0;
  v0 = sub_10001CB4C(v3, "externalLocationDisablementAllowed", &v5);
  v1 = v5;
  if (v4)
  {
    sub_100008080(v4);
  }

  return v1 | ((v0 & 1) == 0);
}

void sub_10071D1F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071D208()
{
  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168 == 1 && (sub_1000733FC() & 1) == 0)
  {
    return sub_1000734AC() ^ 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10071D25C()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return ((dword_1026592D0 - 115) < 0xB) & (0x601u >> (dword_1026592D0 - 115));
}

uint64_t sub_10071D2C0()
{
  if ((sub_1001B9C14() & 1) != 0 || sub_10006FE30() || sub_100718F78())
  {
    if (qword_102659170 != -1)
    {
      sub_10191C0D0();
    }

    v0 = byte_102659168;
  }

  else
  {
    v0 = 0;
  }

  sub_10001CAF4(&v5);
  v7 = 0;
  v1 = sub_10001CB4C(v5, "SupportPeriodicRefPosMaintenance", &v7);
  v2 = v7;
  if (v6)
  {
    sub_100008080(v6);
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = v0;
  }

  return v3 & 1;
}

void sub_10071D370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10071D38C(id a1)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  v1 = byte_102659168 == 1 && ((sub_10006FB70() & 1) != 0 || (sub_1000733FC() & 1) != 0 || (sub_1000734AC() & 1) != 0 || sub_100718F78());
  byte_1026592B0 = v1;
}

uint64_t sub_10071D414()
{
  sub_10001CAF4(&v3);
  v5 = 0;
  v0 = sub_10001CB4C(v3, "RayTracingTileManagerSupport", &v5);
  v1 = v5;
  if (v4)
  {
    sub_100008080(v4);
  }

  return v0 & v1;
}

void sub_10071D474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10071D48C()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  if ((dword_1026592D0 - 180) > 0x3C || ((1 << (dword_1026592D0 + 76)) & 0x1F00000000000FFFLL) == 0)
  {
    return (dword_1026592D0 - 174) < 2;
  }

  return result;
}

uint64_t sub_10071D50C()
{
  sub_10001CAF4(&v3);
  v5 = 0;
  v0 = sub_10001CB4C(v3, "GNSSSupportsDynamicL1TuningDesireValue", &v5);
  v1 = v5;
  if (v4)
  {
    sub_100008080(v4);
  }

  return v0 & v1;
}

void sub_10071D56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071D584()
{
  sub_10001CAF4(&v6);
  v0 = v6;
  if (qword_102659170 != -1)
  {
    sub_10191C990();
  }

  v1 = byte_102659168;
  v8 = 0;
  v2 = sub_10001CB4C(v0, "supportsProactiveLocation", &v8);
  v3 = v8;
  if (v7)
  {
    sub_100008080(v7);
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v1;
  }

  return v4 & 1;
}

void sub_10071D618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10071D630()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return ((dword_1026592D0 - 82) & 0xFFFFFFF9) == 0;
}

void sub_10071D6B8(id a1)
{
  v1 = objc_autoreleasePoolPush();
  byte_1026592C8 = 0;
  v2 = CFPreferencesCopyValue(@"StoreDemoMode", @"com.apple.demo-settings", @"mobile", kCFPreferencesAnyHost);
  if (v2)
  {
    v3 = v2;
    CFAutorelease(v2);
    v4 = CFGetTypeID(v3);
    if (v4 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v3))
      {
        v5 = CFPreferencesCopyValue(@"FProgramNumber", @"com.apple.demo-settings", @"mobile", kCFPreferencesAnyHost);
        if (v5)
        {
          v6 = v5;
          CFAutorelease(v5);
          v7 = CFGetTypeID(v6);
          if (v7 == CFNumberGetTypeID())
          {
            valuePtr = 0;
            if (CFNumberGetValue(v6, kCFNumberIntType, &valuePtr))
            {
              byte_1026592C8 = valuePtr == 5;
            }
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v1);
}

void sub_10071D8BC(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();

  sub_10071DFFC(a1, 0xE, Current);
}

uint64_t sub_10071D908(uint64_t a1, uint64_t a2)
{
  if (uuid_compare((a1 + 448), (a2 + 72)))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 114) ^ 1;
  }

  return v3 & 1;
}

uint64_t sub_10071D96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, __int128 *a7)
{
  *a1 = &unk_10246D2B0;
  *(a1 + 8) = 23;
  *(a1 + 16) = 512;
  *(a1 + 24) = *a3;
  if (*(a3 + 39) < 0)
  {
    sub_100007244((a1 + 40), *(a3 + 16), *(a3 + 24));
  }

  else
  {
    v14 = *(a3 + 16);
    *(a1 + 56) = *(a3 + 32);
    *(a1 + 40) = v14;
  }

  sub_10069B5FC(a1 + 64, (a3 + 40));
  *(a1 + 112) = *(a3 + 80) > 1uLL;
  *(a1 + 113) = a5;
  *(a1 + 114) = 0;
  *(a1 + 120) = a4;
  bzero((a1 + 128), 0x230uLL);
  *(a1 + 688) = a6;
  v31[0] = off_10246D508;
  v31[1] = a1;
  v31[3] = v31;
  sub_1008AF580(a1 + 696, v31);
  sub_100697F4C(v31);
  *(a1 + 752) = *(a4 + 296);
  v15 = *a7;
  v16 = a7[2];
  *(a1 + 776) = a7[1];
  *(a1 + 792) = v16;
  *(a1 + 760) = v15;
  uuid_copy((a1 + 600), a3);
  std::string::operator=((a1 + 616), (a3 + 16));
  sub_10071DC3C(a2, v29);
  v17 = v29[11];
  *(a1 + 392) = v29[10];
  *(a1 + 408) = v17;
  *(a1 + 424) = v29[12];
  *(a1 + 440) = v30;
  v18 = v29[7];
  *(a1 + 328) = v29[6];
  *(a1 + 344) = v18;
  v19 = v29[9];
  *(a1 + 360) = v29[8];
  *(a1 + 376) = v19;
  v20 = v29[3];
  *(a1 + 264) = v29[2];
  *(a1 + 280) = v20;
  v21 = v29[5];
  *(a1 + 296) = v29[4];
  *(a1 + 312) = v21;
  v22 = v29[1];
  *(a1 + 232) = v29[0];
  *(a1 + 248) = v22;
  v23 = *(a1 + 408);
  *(a1 + 544) = *(a1 + 392);
  *(a1 + 560) = v23;
  *(a1 + 576) = *(a1 + 424);
  *(a1 + 592) = *(a1 + 440);
  v24 = *(a1 + 344);
  *(a1 + 480) = *(a1 + 328);
  *(a1 + 496) = v24;
  v25 = *(a1 + 376);
  *(a1 + 512) = *(a1 + 360);
  *(a1 + 528) = v25;
  v26 = *(a1 + 312);
  *(a1 + 448) = *(a1 + 296);
  *(a1 + 464) = v26;
  sub_1011665F8((a1 + 128), a1 + 232, v29);
  sub_10069C000((a1 + 640), v29);
  sub_100666704(v29);
  sub_10071DCD4(a1);
  sub_10071DE58(a1);
  Current = CFAbsoluteTimeGetCurrent();
  sub_10071DFFC(a1, 0xD, Current);
  return a1;
}

void sub_10071DBA8(_Unwind_Exception *a1)
{
  sub_10071FBA4((v1 + 87));
  sub_100697CDC((v1 + 75));
  v3 = v1[28];
  v1[28] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_100666704(v1 + 22);
  sub_100666704(v1 + 16);
  sub_10184081C((v1 + 3));
  _Unwind_Resume(a1);
}

void sub_10071DC3C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = CFAbsoluteTimeGetCurrent();
  *(a2 + 8) = 0xBFF0000000000000;
  *(a2 + 16) = 23;
  *(a2 + 24) = 0xBFF0000000000000;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  v4 = *(a1 + 112);
  *(a2 + 160) = *(a1 + 96);
  *(a2 + 176) = v4;
  *(a2 + 192) = *(a1 + 128);
  *(a2 + 208) = *(a1 + 144);
  v5 = *(a1 + 48);
  *(a2 + 96) = *(a1 + 32);
  *(a2 + 112) = v5;
  v6 = *(a1 + 80);
  *(a2 + 128) = *(a1 + 64);
  *(a2 + 144) = v6;
  v7 = *(a1 + 16);
  *(a2 + 64) = *a1;
  *(a2 + 80) = v7;
  uuid_copy((a2 + 64), a1);

  uuid_copy((a2 + 80), (a1 + 16));
}

uint64_t sub_10071DCD4(uint64_t result)
{
  if (*(result + 112) == 1)
  {
    v1 = result;
    if (!*(result + 224))
    {
      if (qword_1025D43F0 != -1)
      {
        sub_10191D474();
      }

      v2 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
      {
        *v3 = 0;
        _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLWorkoutSeriesPredictor, bringing up CLWorkoutSeriesDetectionModelController", v3, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191D488();
      }

      if (*(v1 + 760) == 1)
      {
        operator new();
      }

      operator new();
    }
  }

  return result;
}

uint64_t sub_10071DE58(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v2 == 3 || v2 == 5;
  if (v3 || *(a1 + 440) == 1)
  {
    if (*(a1 + 112) == 1)
    {
      if (qword_1025D43F0 != -1)
      {
        sub_10191D474();
      }

      v4 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v8[0]) = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "Disabling power assertion when auto detection is enabled", v8, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10191D56C();
      }
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  if (qword_1025D43F0 != -1)
  {
    sub_10191D654();
  }

  v6 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Notifying clients with power assertion update, shouldEnablePowerAssertion,%d", v8, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191D67C(v5);
  }

  return (*(**(a1 + 688) + 48))(*(a1 + 688), v5);
}

void sub_10071DFFC(uint64_t a1, int *a2, double a3)
{
  v16 = *(a1 + 232);
  v17 = a2;
  v18 = a3;
  v19 = 0u;
  v20 = 0u;
  v6 = *(a1 + 408);
  v27 = *(a1 + 392);
  v28 = v6;
  v29 = *(a1 + 424);
  v30 = *(a1 + 440);
  v7 = *(a1 + 344);
  v23 = *(a1 + 328);
  v24 = v7;
  v8 = *(a1 + 376);
  v25 = *(a1 + 360);
  v26 = v8;
  v9 = *(a1 + 312);
  v21 = *(a1 + 296);
  v22 = v9;
  if (*(a1 + 328) == 14)
  {
    *(&v20 + 1) = *(a1 + 344);
  }

  uuid_copy(&v21, (a1 + 296));
  uuid_copy(&v22, (a1 + 312));
  if (qword_1025D43F0 != -1)
  {
    sub_10191D654();
  }

  v10 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218240;
    v13 = a3;
    v14 = 2048;
    v15 = a2;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "CLWorkoutSeriesPredictor, notify session update, eventTime,%f, eventType,%ld", &v12, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191D778(a2, a3);
  }

  if (a2 > 15)
  {
    if (a2 == 16)
    {
      (*(**(a1 + 688) + 24))(*(a1 + 688), &v16, a1 + 600);
      return;
    }

    if (a2 == 17)
    {
      (*(**(a1 + 688) + 32))(*(a1 + 688), &v16, a1 + 600);
      return;
    }

    if (a2 != 18)
    {
      goto LABEL_22;
    }

    if (v23 != 33)
    {
      sub_1008AF6F0((a1 + 696), v23, *(&v23 + 1), v24, *(&v24 + 1));
      sub_1008AFA98((a1 + 696));
    }

    (*(**(a1 + 688) + 40))(*(a1 + 688), &v16, a1 + 600, *(a1 + 808));
  }

  else
  {
    if (a2 == 13)
    {
      sub_1008AF7F0(a1 + 696);
      (***(a1 + 688))(*(a1 + 688), &v16, a1 + 600);
      return;
    }

    if (a2 != 14)
    {
      if (a2 == 15)
      {
        sub_1008AF7F0(a1 + 696);
        (*(**(a1 + 688) + 8))(*(a1 + 688), &v16, a1 + 600);
        return;
      }

LABEL_22:
      if (qword_1025D43F0 != -1)
      {
        sub_10191D654();
      }

      v11 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
      {
        v12 = 134217984;
        v13 = *&a2;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "CLWorkoutSeriesPredictor, tried to notify invalid event type, eventType, %ld", &v12, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10191D88C(a2);
      }

      return;
    }

    if (v23 != 33)
    {
      sub_1008AF6F0((a1 + 696), v23, *(&v23 + 1), v24, *(&v24 + 1));
      sub_1008AFA98((a1 + 696));
    }

    (*(**(a1 + 688) + 16))(*(a1 + 688), &v16, a1 + 600);
  }
}

uint64_t sub_10071E3BC(uint64_t a1, uint64_t a2, void *a3)
{
  v38 = 0;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  sub_10071DC3C(a2, &v25);
  if (v31 == 33)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_10191D654();
    }

    v5 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v25;
      *&buf[12] = 1024;
      *&buf[14] = a3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLWorkoutSeriesPredictor, client confirmed transition segment, startTime,%f, isManualTransition,%d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191D994(&v25, a3);
    }

    v20 = v35;
    v21 = v36;
    v22 = v37;
    v23 = v38;
    v16 = v31;
    v17 = v32;
    v18 = v33;
    v19 = v34;
    v12 = v27;
    v13 = v28;
    v14 = v29;
    v15 = v30;
    *buf = v25;
    *&buf[16] = v26;
    v24 = a3;
    v6 = a1;
    v7 = 2;
  }

  else
  {
    if (qword_1025D43F0 != -1)
    {
      sub_10191D654();
    }

    v8 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218752;
      *&buf[4] = v31;
      *&buf[12] = 2048;
      *&buf[14] = *(&v31 + 1);
      *&buf[22] = 2048;
      *&buf[24] = v25;
      LOWORD(v12) = 1024;
      *(&v12 + 2) = a3;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "CLWorkoutSeriesPredictor, client confirmed workout segment, workoutType,%ld, workoutLocationType,%ld, startTime,%f, isManualTransition,%d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D43F0 != -1)
      {
        sub_10191D654();
      }

      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWorkoutSeriesPredictor::feedSetCurrentWorkoutType(const CLMotionStateMediator_Type::WorkoutSettings &, BOOL)", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    v20 = v35;
    v21 = v36;
    v22 = v37;
    v23 = v38;
    v16 = v31;
    v17 = v32;
    v18 = v33;
    v19 = v34;
    v12 = v27;
    v13 = v28;
    v14 = v29;
    v15 = v30;
    *buf = v25;
    *&buf[16] = v26;
    v24 = a3;
    v6 = a1;
    v7 = 1;
  }

  return sub_1000CE87C(v6, v7, buf);
}

void sub_10071E75C(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    sub_100D9015C(v2, &v47);
    v3 = __p;
    v4 = v65;
    while (v3 != v4)
    {
      v5 = v3[12];
      if (v5 != *(a1 + 328) || v3[13] != *(a1 + 336))
      {
        v6 = v3[2];
        if (v6 == 21)
        {
          sub_1008AF584((a1 + 696), v5, v3[13]);
        }

        else if (v6 == 20)
        {
          sub_1008AF9E8((a1 + 696), v5, v3[13], v3[14], v3[15]);
        }
      }

      v3 += 27;
    }

    v21 = v48;
    v7 = v47;
    v8 = v49;
    v43 = v50;
    v44 = v51;
    v45 = v52;
    v46 = v53;
    v9 = v54;
    v10 = v55;
    v11 = v56;
    v12 = v57;
    v42 = v63;
    v41 = v62;
    v40 = v61;
    v39 = v60;
    v38 = v59;
    v37 = v58;
    if (v54)
    {
      v13 = sub_1008AF980((a1 + 696), v54, v55);
      v14 = v13;
      if (v7 < v13)
      {
        v13 = v7;
      }

      if (v14 == -1.0)
      {
        v15 = v7;
      }

      else
      {
        v15 = v13;
      }

      v16 = *(a1 + 232);
      if (v15 <= v16)
      {
        v17 = v16 + 2.22044605e-16;
        if (v15 < v17)
        {
          v15 = v17;
        }

        if (qword_1025D43F0 != -1)
        {
          sub_10191D654();
        }

        v18 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_FAULT))
        {
          v19 = *(a1 + 232);
          *buf = 134218752;
          *&buf[4] = v7;
          *&buf[12] = 2048;
          *&buf[14] = v14;
          *&buf[22] = 2048;
          *&buf[24] = v19;
          *v23 = 2048;
          *&v23[2] = v15;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "CLWorkoutSeriesPredictor, detected workout time must be later than current segment start time, adjusting detection time, detectedStartTime, %f, prewarmStartTime, %f, currentStartTime, %f, filteredStartTime, %f", buf, 0x2Au);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10191DAA8(buf);
          v20 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CLWorkoutSeriesPredictor::feedMotionStateUpdate(const CLWorkoutPredictorActivity &)", "%s\n", v20);
          if (v20 != buf)
          {
            free(v20);
          }
        }
      }

      *buf = v8;
      *&buf[8] = v15;
      *&buf[16] = v21;
      *v23 = 0xBFF0000000000000;
      *&v23[8] = v43;
      v24 = v44;
      v25 = v45;
      v26 = v46;
      v27 = v9;
      v28 = v10;
      v29 = v11;
      v30 = v12;
      v36 = v42;
      v35 = v41;
      v34 = v40;
      v33 = v39;
      v32 = v38;
      v31 = v37;
      sub_1000CE87C(a1, 3, buf);
    }

    if (__p)
    {
      v65 = __p;
      operator delete(__p);
    }
  }
}

void sub_10071EAF0(_Unwind_Exception *a1)
{
  v2 = STACK[0x830];
  if (STACK[0x830])
  {
    STACK[0x838] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10071EB24(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_1025D43F0 != -1)
  {
    sub_10191D474();
  }

  v3 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 134217984;
    *&v5[4] = Current;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "CLWorkoutSeriesPredictor, client confirmed manual pause, startTime,%f", v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191DAEC();
  }

  *v5 = Current;
  return sub_1000CE87C(a1, 4, v5);
}

uint64_t sub_10071EC1C(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_1025D43F0 != -1)
  {
    sub_10191D474();
  }

  v3 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 134217984;
    *&v5[4] = Current;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "CLWorkoutSeriesPredictor, workout session end, endTime,%f", v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191DBE0();
  }

  *v5 = Current;
  return sub_1000CE87C(a1, 5, v5);
}

uint64_t sub_10071ED14(uint64_t a1)
{
  if (*(a1 + 112) == 1 && *(a1 + 224))
  {
    if (qword_1025D43F0 != -1)
    {
      sub_10191D474();
    }

    v2 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Tearing down CLWorkoutSeriesDetectionModelController", v5, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191DCD4();
    }

    v3 = *(a1 + 224);
    *(a1 + 224) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  return sub_1008AF7F0(a1 + 696);
}

void sub_10071EDF8(uint64_t a1, uint64_t a2)
{
  *(a1 + 114) = 0;
  v3 = *(a1 + 408);
  *(a1 + 544) = *(a1 + 392);
  *(a1 + 560) = v3;
  *(a1 + 576) = *(a1 + 424);
  *(a1 + 592) = *(a1 + 440);
  v4 = *(a1 + 344);
  *(a1 + 480) = *(a1 + 328);
  *(a1 + 496) = v4;
  v5 = *(a1 + 376);
  *(a1 + 512) = *(a1 + 360);
  *(a1 + 528) = v5;
  v6 = *(a1 + 312);
  *(a1 + 448) = *(a1 + 296);
  *(a1 + 464) = v6;
  v7 = *(a1 + 224);
  if (v7)
  {
    sub_100D8F6D4(v7, a2);
  }

  sub_101166638((a1 + 128), a2, *(a2 + 216), &v17);
  sub_10069C000((a1 + 640), &v17);
  sub_100666704(&v17);
  v30 = 0;
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
  v17 = 0u;
  v8 = *(a1 + 680);
  if (v8)
  {
    v9 = *(*(a1 + 648) + 8 * ((v8 + *(a1 + 672) - 1) / 0x12uLL)) + 216 * ((v8 + *(a1 + 672) - 1) % 0x12uLL);
    v27 = *(v9 + 160);
    v28 = *(v9 + 176);
    v29 = *(v9 + 192);
    v30 = *(v9 + 208);
    v23 = *(v9 + 96);
    v24 = *(v9 + 112);
    v25 = *(v9 + 128);
    v26 = *(v9 + 144);
    v19 = *(v9 + 32);
    v20 = *(v9 + 48);
    v21 = *(v9 + 64);
    v22 = *(v9 + 80);
    v17 = *v9;
    v18 = *(v9 + 16);
  }

  *(a1 + 440) = v30;
  v10 = v18;
  *(a1 + 232) = v17;
  *(a1 + 248) = v10;
  v11 = v28;
  *(a1 + 392) = v27;
  *(a1 + 408) = v11;
  *(a1 + 424) = v29;
  v12 = v24;
  *(a1 + 328) = v23;
  *(a1 + 344) = v12;
  v13 = v26;
  *(a1 + 360) = v25;
  *(a1 + 376) = v13;
  v14 = v20;
  *(a1 + 264) = v19;
  *(a1 + 280) = v14;
  v15 = v22;
  *(a1 + 296) = v21;
  *(a1 + 312) = v15;
  Current = CFAbsoluteTimeGetCurrent();
  sub_10071DFFC(a1, 0xE, Current);
}

void sub_10071EFFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 224);
  if (v4)
  {
    sub_100D8F820(v4, *(a2 + 216));
  }

  sub_101166638((a1 + 128), a2, *(a2 + 216), &v14);
  sub_10069C000((a1 + 640), &v14);
  sub_100666704(&v14);
  v27 = 0;
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
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v5 = *(a1 + 680);
  if (v5)
  {
    v6 = *(*(a1 + 648) + 8 * ((v5 + *(a1 + 672) - 1) / 0x12uLL)) + 216 * ((v5 + *(a1 + 672) - 1) % 0x12uLL);
    v24 = *(v6 + 160);
    v25 = *(v6 + 176);
    v26 = *(v6 + 192);
    v27 = *(v6 + 208);
    v20 = *(v6 + 96);
    v21 = *(v6 + 112);
    v22 = *(v6 + 128);
    v23 = *(v6 + 144);
    v16 = *(v6 + 32);
    v17 = *(v6 + 48);
    v18 = *(v6 + 64);
    v19 = *(v6 + 80);
    v14 = *v6;
    v15 = *(v6 + 16);
  }

  *(a1 + 440) = v27;
  v7 = v15;
  *(a1 + 232) = v14;
  *(a1 + 248) = v7;
  v8 = v25;
  *(a1 + 392) = v24;
  *(a1 + 408) = v8;
  *(a1 + 424) = v26;
  v9 = v21;
  *(a1 + 328) = v20;
  *(a1 + 344) = v9;
  v10 = v23;
  *(a1 + 360) = v22;
  *(a1 + 376) = v10;
  v11 = v17;
  *(a1 + 264) = v16;
  *(a1 + 280) = v11;
  v12 = v19;
  *(a1 + 296) = v18;
  *(a1 + 312) = v12;
  Current = CFAbsoluteTimeGetCurrent();
  sub_10071DFFC(a1, 0xE, Current);
}

void sub_10071F1C4(uint64_t a1, double *a2)
{
  *(a1 + 240) = *a2;
  sub_10071ED14(a1);
  sub_1011673BC((a1 + 128), v5, *a2);
  sub_10069C000((a1 + 640), v5);
  sub_100666704(v5);
  sub_10071DE58(a1);
  Current = CFAbsoluteTimeGetCurrent();
  sub_10071DFFC(a1, 0x10, Current);
}

void sub_10071F238(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 248) = a2[1];
  *(a1 + 232) = v4;
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[5];
  *(a1 + 296) = a2[4];
  *(a1 + 312) = v7;
  *(a1 + 264) = v5;
  *(a1 + 280) = v6;
  v8 = a2[6];
  v9 = a2[7];
  v10 = a2[9];
  *(a1 + 360) = a2[8];
  *(a1 + 376) = v10;
  *(a1 + 328) = v8;
  *(a1 + 344) = v9;
  v11 = a2[10];
  v12 = a2[11];
  v13 = a2[12];
  *(a1 + 440) = *(a2 + 26);
  *(a1 + 408) = v12;
  *(a1 + 424) = v13;
  *(a1 + 392) = v11;
  memmove((a1 + 448), a2 + 4, 0x98uLL);
  sub_101166638((a1 + 128), a2, *(a2 + 216), v14);
  sub_10069C000((a1 + 640), v14);
  sub_100666704(v14);
  sub_10071F2F0(a1);
}

void sub_10071F2F0(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10191D474();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLWorkoutSeriesPredictor, exiting manual pause", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191DDB0();
  }

  sub_10071DCD4(a1);
  sub_10071DE58(a1);
  Current = CFAbsoluteTimeGetCurrent();
  sub_10071DFFC(a1, 0x11, Current);
}

void sub_10071F3A8(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 248) = a2[1];
  *(a1 + 232) = v3;
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[5];
  *(a1 + 296) = a2[4];
  *(a1 + 312) = v6;
  *(a1 + 264) = v4;
  *(a1 + 280) = v5;
  v7 = a2[6];
  v8 = a2[7];
  v9 = a2[9];
  *(a1 + 360) = a2[8];
  *(a1 + 376) = v9;
  *(a1 + 328) = v7;
  *(a1 + 344) = v8;
  v10 = a2[10];
  v11 = a2[11];
  v12 = a2[12];
  *(a1 + 440) = *(a2 + 26);
  *(a1 + 408) = v11;
  *(a1 + 424) = v12;
  *(a1 + 392) = v10;
  sub_101166638((a1 + 128), a2, *(a2 + 216), v13);
  sub_10069C000((a1 + 640), v13);
  sub_100666704(v13);
  sub_10071F44C(a1);
}

void sub_10071F44C(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10191D474();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLWorkoutSeriesPredictor, exiting manual pause", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191DE8C();
  }

  sub_10071DCD4(a1);
  sub_10071DE58(a1);
  Current = CFAbsoluteTimeGetCurrent();
  sub_10071DFFC(a1, 0x11, Current);
}

void sub_10071F504(uint64_t a1, __int128 *a2)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10191D474();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CLWorkoutSeriesPredictor, exiting manual pause into detected transition", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191DF68();
  }

  Current = CFAbsoluteTimeGetCurrent();
  v11 = *(a1 + 240);
  v6 = *(a1 + 408);
  v36 = *(a1 + 392);
  v37 = v6;
  v38 = *(a1 + 424);
  v39 = *(a1 + 440);
  v7 = *(a1 + 344);
  v32 = *(a1 + 328);
  v33 = v7;
  v8 = *(a1 + 376);
  v34 = *(a1 + 360);
  v35 = v8;
  v9 = *(a1 + 280);
  v28 = *(a1 + 264);
  v29 = v9;
  v10 = *(a1 + 312);
  v30 = *(a1 + 296);
  v31 = v10;
  sub_10071F238(a1, a2);
  *buf = Current;
  v13 = Current;
  v14 = v11;
  v15 = Current;
  v24 = v36;
  v25 = v37;
  v26 = v38;
  v27 = v39;
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v23 = v35;
  v16 = v28;
  v17 = v29;
  v18 = v30;
  v19 = v31;
  sub_10071F6A0(a1, buf);
}

void sub_10071F6A0(uint64_t a1, uint64_t a2)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10191D474();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 104);
    v6 = *(a2 + 112);
    v7 = *(a2 + 8);
    v9 = 134218496;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    v13 = 2048;
    v14 = v7;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CLWorkoutSeriesPredictor, auto-detected new workout, workoutType,%ld, workoutLocationType,%ld, detectionTime,%f", &v9, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191E044(a2);
  }

  v8 = (*(a1 + 114) & 1) != 0 || *(a2 + 104) != 33;
  *(a1 + 114) = v8;
  sub_101166F38((a1 + 128), (a2 + 8), &v9);
  sub_10069C000((a1 + 640), &v9);
  sub_100666704(&v9);
  sub_100D8F8D4(*(a1 + 224), a2 + 8);
}

void sub_10071F864(uint64_t a1, uint64_t a2)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10191D474();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CLWorkoutSeriesPredictor, auto-detected current confirmed workout, removing detected transition", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191E15C();
  }

  sub_101166FD0((a1 + 128), a2 + 8, v5);
  sub_10069C000((a1 + 640), v5);
  sub_100666704(v5);
  sub_100D8F8D4(*(a1 + 224), a2 + 8);
}

uint64_t sub_10071F9D8(uint64_t a1, double *a2)
{
  sub_1011673BC((a1 + 128), &v13, *a2);
  sub_10069C000((a1 + 640), &v13);
  sub_100666704(&v13);
  v26 = 0;
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
  v13 = 0u;
  v4 = *(a1 + 680);
  if (v4)
  {
    v5 = *(*(a1 + 648) + 8 * ((v4 + *(a1 + 672) - 1) / 0x12uLL)) + 216 * ((v4 + *(a1 + 672) - 1) % 0x12uLL);
    v23 = *(v5 + 160);
    v24 = *(v5 + 176);
    v25 = *(v5 + 192);
    v26 = *(v5 + 208);
    v19 = *(v5 + 96);
    v20 = *(v5 + 112);
    v21 = *(v5 + 128);
    v22 = *(v5 + 144);
    v15 = *(v5 + 32);
    v16 = *(v5 + 48);
    v17 = *(v5 + 64);
    v18 = *(v5 + 80);
    v13 = *v5;
    v14 = *(v5 + 16);
  }

  *(a1 + 440) = v26;
  v6 = v14;
  *(a1 + 232) = v13;
  *(a1 + 248) = v6;
  v7 = v24;
  *(a1 + 392) = v23;
  *(a1 + 408) = v7;
  *(a1 + 424) = v25;
  v8 = v20;
  *(a1 + 328) = v19;
  *(a1 + 344) = v8;
  v9 = v22;
  *(a1 + 360) = v21;
  *(a1 + 376) = v9;
  v10 = v16;
  *(a1 + 264) = v15;
  *(a1 + 280) = v10;
  v11 = v18;
  *(a1 + 296) = v17;
  *(a1 + 312) = v11;
  *(a1 + 240) = *a2;
  sub_10071DE58(a1);
  sub_10071DFFC(a1, 0xF, *a2);
  return sub_10071ED14(a1);
}

uint64_t sub_10071FBA4(uint64_t a1)
{
  sub_100697F4C(a1 + 24);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10071FC80(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10246D508;
  a2[1] = v2;
  return result;
}

uint64_t sub_10071FCAC(uint64_t a1)
{
  result = *(*(a1 + 8) + 688);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t sub_10071FCE0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10071FF7C()
{
  if (qword_102637220)
  {
    (*(*qword_102637220 + 8))(qword_102637220);
  }

  if (qword_102637228)
  {
    (*(*qword_102637228 + 8))(qword_102637228);
  }

  if (qword_102637230)
  {
    (*(*qword_102637230 + 8))(qword_102637230);
  }

  if (qword_102637238)
  {
    (*(*qword_102637238 + 8))(qword_102637238);
  }

  if (qword_102637240)
  {
    (*(*qword_102637240 + 8))(qword_102637240);
  }

  if (qword_102637248)
  {
    (*(*qword_102637248 + 8))(qword_102637248);
  }

  if (qword_102637250)
  {
    (*(*qword_102637250 + 8))(qword_102637250);
  }

  if (qword_102637258)
  {
    (*(*qword_102637258 + 8))(qword_102637258);
  }

  if (qword_102637260)
  {
    (*(*qword_102637260 + 8))(qword_102637260);
  }

  if (qword_102637268)
  {
    (*(*qword_102637268 + 8))(qword_102637268);
  }

  if (qword_102637270)
  {
    (*(*qword_102637270 + 8))(qword_102637270);
  }

  result = qword_102637278;
  if (qword_102637278)
  {
    v1 = *(*qword_102637278 + 8);

    return v1();
  }

  return result;
}

void sub_1007201E4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_1026593D0 & 1) == 0)
  {
    byte_1026593D0 = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/ProtobufDefs/GnssTypes.pb.cc", a4);
    sub_100D0BBD0(v4, v5, v6, v7);
    operator new();
  }
}

uint64_t sub_100720678(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_10246D878;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1007206A0(uint64_t result)
{
  *result = off_10246D968;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1007206C8(uint64_t result)
{
  *(result + 20) = 0;
  *result = off_10246DA58;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void sub_100720700(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 96);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v10 = *(a2 + 8);
    *(a1 + 96) |= 1u;
    *(a1 + 8) = v10;
    v4 = *(a2 + 96);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(a2 + 16);
  *(a1 + 96) |= 2u;
  *(a1 + 16) = v11;
  v4 = *(a2 + 96);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  v12 = *(a2 + 24);
  *(a1 + 96) |= 4u;
  *(a1 + 24) = v12;
  v4 = *(a2 + 96);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  v13 = *(a2 + 32);
  *(a1 + 96) |= 8u;
  *(a1 + 32) = v13;
  v4 = *(a2 + 96);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_30:
    v15 = *(a2 + 48);
    *(a1 + 96) |= 0x20u;
    *(a1 + 48) = v15;
    v4 = *(a2 + 96);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_29:
  v14 = *(a2 + 40);
  *(a1 + 96) |= 0x10u;
  *(a1 + 40) = v14;
  v4 = *(a2 + 96);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_30;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_31:
  v16 = *(a2 + 56);
  *(a1 + 96) |= 0x40u;
  *(a1 + 56) = v16;
  v4 = *(a2 + 96);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 64);
    *(a1 + 96) |= 0x80u;
    *(a1 + 64) = v5;
    v4 = *(a2 + 96);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 72);
      *(a1 + 96) |= 0x100u;
      *(a1 + 72) = v6;
      v4 = *(a2 + 96);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 76);
      if (!sub_1001348E0(v7))
      {
        sub_10191E374();
      }

      *(a1 + 96) |= 0x200u;
      *(a1 + 76) = v7;
      v4 = *(a2 + 96);
    }

    if ((v4 & 0x400) != 0)
    {
      v8 = *(a2 + 80);
      *(a1 + 96) |= 0x400u;
      *(a1 + 80) = v8;
      v4 = *(a2 + 96);
    }

    if ((v4 & 0x800) != 0)
    {
      v9 = *(a2 + 88);
      if (v9 >= 6)
      {
        sub_10191E3A0();
      }

      *(a1 + 96) |= 0x800u;
      *(a1 + 88) = v9;
    }
  }
}

void sub_100720914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10072094C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102637220;
  if (!qword_102637220)
  {
    sub_1007201E4(0, a2, a3, a4);
    return qword_102637220;
  }

  return result;
}

uint64_t sub_1007209E0(uint64_t result)
{
  v1 = *(result + 96);
  if (v1)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
  }

  *(result + 96) = 0;
  return result;
}

void sub_100720A18(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100720700(a1, lpsrc);
}

double sub_100720AB8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 60);
  if (v5)
  {
    if (*(a2 + 60))
    {
      result = *(a2 + 8);
      *(a1 + 60) |= 1u;
      *(a1 + 8) = result;
      v5 = *(a2 + 60);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 60) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 16);
    *(a1 + 60) |= 2u;
    *(a1 + 16) = result;
    v5 = *(a2 + 60);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

LABEL_14:
    result = *(a2 + 24);
    *(a1 + 60) |= 4u;
    *(a1 + 24) = result;
    v5 = *(a2 + 60);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

LABEL_15:
    result = *(a2 + 32);
    *(a1 + 60) |= 8u;
    *(a1 + 32) = result;
    v5 = *(a2 + 60);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        return result;
      }

      goto LABEL_10;
    }

LABEL_16:
    result = *(a2 + 40);
    *(a1 + 60) |= 0x10u;
    *(a1 + 40) = result;
    if ((*(a2 + 60) & 0x20) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 48);
    *(a1 + 60) |= 0x20u;
    *(a1 + 48) = result;
  }

  return result;
}

void sub_100720BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100720C80(uint64_t result)
{
  if (*(result + 60))
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  *(result + 60) = 0;
  return result;
}

uint64_t sub_100720CA0(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 60);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v5 = *(v4 + 60);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
  v5 = *(v4 + 60);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 24), a3);
  v5 = *(v4 + 60);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v4 + 40), a3);
    if ((*(v4 + 60) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 32), a3);
  v5 = *(v4 + 60);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v5 & 0x20) == 0)
  {
    return result;
  }

LABEL_13:
  v6 = *(v4 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, v6, a3);
}

uint64_t sub_100720D80(uint64_t a1)
{
  v1 = *(a1 + 60);
  if (*(a1 + 60))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 8) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x10) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x20) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 56) = v1;
  return v1;
}

double sub_100720DDC(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100720AB8(a1, lpsrc);
}

void sub_100720E7C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v4 = *(a2 + 72);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 8);
    *(a1 + 72) |= 1u;
    *(a1 + 8) = v7;
    v4 = *(a2 + 72);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 16);
  *(a1 + 72) |= 2u;
  *(a1 + 16) = v8;
  v4 = *(a2 + 72);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 20);
  *(a1 + 72) |= 4u;
  *(a1 + 20) = v9;
  v4 = *(a2 + 72);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 64);
  *(a1 + 72) |= 8u;
  *(a1 + 64) = v10;
  v4 = *(a2 + 72);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v12 = *(a2 + 32);
    *(a1 + 72) |= 0x20u;
    *(a1 + 32) = v12;
    v4 = *(a2 + 72);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_20:
  v11 = *(a2 + 24);
  *(a1 + 72) |= 0x10u;
  *(a1 + 24) = v11;
  v4 = *(a2 + 72);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  v13 = *(a2 + 40);
  *(a1 + 72) |= 0x40u;
  *(a1 + 40) = v13;
  v4 = *(a2 + 72);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 48);
    *(a1 + 72) |= 0x80u;
    *(a1 + 48) = v5;
    v4 = *(a2 + 72);
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 56);
    *(a1 + 72) |= 0x100u;
    *(a1 + 56) = v6;
  }
}

void sub_100721010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007210AC(uint64_t result)
{
  v1 = *(result + 72);
  if (v1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 20) = 0;
    *(result + 64) = 0;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 56) = 0;
  }

  *(result + 72) = 0;
  return result;
}

uint64_t sub_1007210E8(uint64_t result, unint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 72);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 72);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 72);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 64), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 32), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, *(v5 + 48), a2, a4);
    if ((*(v5 + 72) & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 40), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v6 & 0x100) == 0)
  {
    return result;
  }

LABEL_19:
  v7 = *(v5 + 56);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(9, v7, a2, a4);
}

uint64_t sub_10072121C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    if (v3)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
      v3 = *(a1 + 72);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 5;
    }

    v6 = v4 + ((v3 >> 1) & 2);
    if ((v3 & 8) != 0)
    {
      v7 = *(a1 + 64);
      if ((v7 & 0x80000000) != 0)
      {
        v8 = 11;
      }

      else if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
        v3 = *(a1 + 72);
      }

      else
      {
        v8 = 2;
      }

      v6 += v8;
    }

    if ((v3 & 0x10) != 0)
    {
      v6 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
      v3 = *(a1 + 72);
    }

    v9 = v6 + 9;
    if ((v3 & 0x20) == 0)
    {
      v9 = v6;
    }

    if ((v3 & 0x40) != 0)
    {
      v5 = v9 + 9;
    }

    else
    {
      v5 = v9;
    }

    if ((v3 & 0x80) != 0)
    {
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 48), a2) + 1;
      v3 = *(a1 + 72);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0x100) != 0)
  {
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 56), a2) + 1;
  }

  *(a1 + 68) = v5;
  return v5;
}

void sub_10072131C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100720E7C(a1, lpsrc);
}

void sub_1007213BC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      *(a1 + 48) |= 1u;
      v5 = *(a1 + 8);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 8);
      if (!v6)
      {
        v6 = *(qword_102637238 + 8);
      }

      sub_100720E7C(v5, v6);
      v4 = *(a2 + 48);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 48) |= 2u;
    v7 = *(a1 + 16);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 16);
    if (!v8)
    {
      v8 = *(qword_102637238 + 16);
    }

    sub_100720700(v7, v8);
    v4 = *(a2 + 48);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }

LABEL_20:
    *(a1 + 48) |= 4u;
    v9 = *(a1 + 24);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 24);
    if (!v10)
    {
      v10 = *(qword_102637238 + 24);
    }

    sub_100720AB8(v9, v10);
    v4 = *(a2 + 48);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

LABEL_26:
      v12 = *(a2 + 40);
      if (v12 >= 5)
      {
        sub_10191E3CC();
      }

      *(a1 + 48) |= 0x10u;
      *(a1 + 40) = v12;
      return;
    }

LABEL_25:
    v11 = *(a2 + 32);
    *(a1 + 48) |= 8u;
    *(a1 + 32) = v11;
    if ((*(a2 + 48) & 0x10) == 0)
    {
      return;
    }

    goto LABEL_26;
  }
}

void sub_100721618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100721630(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_10246D710;
  sub_100139D3C(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

uint64_t sub_100721684(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102637238;
  if (!qword_102637238)
  {
    sub_1007201E4(0, a2, a3, a4);
    return qword_102637238;
  }

  return result;
}

uint64_t sub_10072170C(uint64_t result)
{
  LOBYTE(v1) = *(result + 48);
  if (v1)
  {
    if (*(result + 48))
    {
      v2 = *(result + 8);
      if (v2)
      {
        v3 = *(v2 + 72);
        if (v3)
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 20) = 0;
          *(v2 + 64) = 0;
          *(v2 + 24) = 0u;
          *(v2 + 40) = 0u;
        }

        if ((v3 & 0xFF00) != 0)
        {
          *(v2 + 56) = 0;
        }

        *(v2 + 72) = 0;
        v1 = *(result + 48);
      }
    }

    if ((v1 & 2) != 0)
    {
      v4 = *(result + 16);
      if (v4)
      {
        v5 = *(v4 + 96);
        if (v5)
        {
          *(v4 + 56) = 0u;
          *(v4 + 40) = 0u;
          *(v4 + 24) = 0u;
          *(v4 + 8) = 0u;
        }

        if ((v5 & 0xFF00) != 0)
        {
          *(v4 + 72) = 0;
          *(v4 + 80) = 0;
          *(v4 + 88) = 0;
        }

        *(v4 + 96) = 0;
        v1 = *(result + 48);
      }
    }

    if ((v1 & 4) != 0)
    {
      v6 = *(result + 24);
      if (v6)
      {
        if (*(v6 + 60))
        {
          *(v6 + 40) = 0u;
          *(v6 + 24) = 0u;
          *(v6 + 8) = 0u;
        }

        *(v6 + 60) = 0;
      }
    }

    *(result + 32) = 0;
    *(result + 40) = 0;
  }

  *(result + 48) = 0;
  return result;
}

uint64_t sub_1007217D8(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102637238 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 48);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102637238 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
    if ((*(v5 + 48) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_13:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(qword_102637238 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_17:
  v10 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v10, a2, a4);
}

uint64_t sub_1007218CC(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_35;
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 48) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v5 = *(qword_102637238 + 8);
  }

  v6 = sub_10072121C(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(a1 + 48);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 16);
    if (!v9)
    {
      v9 = *(qword_102637238 + 16);
    }

    v10 = sub_1001B4F8C(v9, a2);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
    v3 = *(a1 + 48);
  }

LABEL_18:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_20;
    }

LABEL_28:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32), a2) + 1;
    if ((*(a1 + 48) & 0x10) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  v13 = *(a1 + 24);
  if (!v13)
  {
    v13 = *(qword_102637238 + 24);
  }

  v14 = sub_100720D80(v13);
  v15 = v14;
  if (v14 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
  }

  else
  {
    v16 = 1;
  }

  v4 = (v4 + v15 + v16 + 1);
  v3 = *(a1 + 48);
  if ((v3 & 8) != 0)
  {
    goto LABEL_28;
  }

LABEL_20:
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_35;
  }

LABEL_29:
  v17 = *(a1 + 40);
  if ((v17 & 0x80000000) != 0)
  {
    v18 = 11;
  }

  else if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
  }

  else
  {
    v18 = 2;
  }

  v4 = (v18 + v4);
LABEL_35:
  *(a1 + 44) = v4;
  return v4;
}

void sub_100721A40(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1007213BC(a1, lpsrc);
}

void sub_100721AE0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 48))
  {
    v6 = *(a2 + 16);
    *(a1 + 48) |= 1u;
    *(a1 + 16) = v6;
    v4 = *(a2 + 48);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((*(a2 + 48) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(a1 + 48) |= 2u;
  v7 = *(a1 + 8);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 8);
  if (!v8)
  {
    v8 = *(qword_102637240 + 8);
  }

  sub_100720E7C(v7, v8);
  v4 = *(a2 + 48);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    v10 = *(a2 + 40);
    *(a1 + 48) |= 8u;
    *(a1 + 40) = v10;
    v4 = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_18:
  v9 = *(a2 + 20);
  if (v9 >= 7)
  {
    sub_10191E3F8();
  }

  *(a1 + 48) |= 4u;
  *(a1 + 20) = v9;
  v4 = *(a2 + 48);
  if ((v4 & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_21:
  v11 = *(a2 + 24);
  *(a1 + 48) |= 0x10u;
  *(a1 + 24) = v11;
  if ((*(a2 + 48) & 0x20) != 0)
  {
LABEL_10:
    v5 = *(a2 + 32);
    *(a1 + 48) |= 0x20u;
    *(a1 + 32) = v5;
  }
}

void sub_100721C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100721D00(uint64_t result)
{
  v1 = *(result + 48);
  if (v1)
  {
    *(result + 16) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(result + 8);
      if (v2)
      {
        v3 = *(v2 + 72);
        if (v3)
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 20) = 0;
          *(v2 + 64) = 0;
          *(v2 + 24) = 0u;
          *(v2 + 40) = 0u;
        }

        if ((v3 & 0xFF00) != 0)
        {
          *(v2 + 56) = 0;
        }

        *(v2 + 72) = 0;
      }
    }

    *(result + 28) = 0;
    *(result + 20) = 0;
    *(result + 36) = 0;
  }

  *(result + 48) = 0;
  return result;
}

uint64_t sub_100721D64(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 16), a2, a4);
    v6 = *(v5 + 48);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 8);
  if (!v7)
  {
    v7 = *(qword_102637240 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 24), a2, a4);
    if ((*(v5 + 48) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 40), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return result;
  }

LABEL_15:
  v8 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, v8, a2, a4);
}

uint64_t sub_100721E54(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_27;
  }

  v4 = 2 * (v3 & 1u);
  if ((v3 & 2) != 0)
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      v5 = *(qword_102637240 + 8);
    }

    v6 = sub_10072121C(v5, a2);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
    }

    else
    {
      v8 = 1;
    }

    v4 = (v7 + v4 + v8 + 1);
    v3 = *(a1 + 48);
    if ((v3 & 4) == 0)
    {
LABEL_4:
      if ((v3 & 8) == 0)
      {
        goto LABEL_5;
      }

LABEL_21:
      v11 = *(a1 + 40);
      if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
        v3 = *(a1 + 48);
      }

      else
      {
        v12 = 2;
      }

      v4 = (v12 + v4);
      if ((v3 & 0x10) == 0)
      {
LABEL_6:
        if ((v3 & 0x20) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v9 = *(a1 + 20);
  if ((v9 & 0x80000000) != 0)
  {
    v10 = 11;
  }

  else if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
    v3 = *(a1 + 48);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v3 & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_5:
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_25:
  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
  if ((*(a1 + 48) & 0x20) != 0)
  {
LABEL_26:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32), a2) + 1;
  }

LABEL_27:
  *(a1 + 44) = v4;
  return v4;
}

void sub_100721F80(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100721AE0(a1, lpsrc);
}

void sub_100722020(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      *(a1 + 52) |= 1u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        v7 = *(qword_102637248 + 8);
      }

      sub_100721AE0(v6, v7);
      v4 = *(a2 + 52);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_17;
      }
    }

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 16);
    *(a1 + 52) |= 2u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 52);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }

LABEL_17:
    v9 = *(a2 + 24);
    *(a1 + 52) |= 4u;
    *(a1 + 24) = v9;
    v4 = *(a2 + 52);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_18:
    v10 = *(a2 + 32);
    *(a1 + 52) |= 8u;
    *(a1 + 32) = v10;
    if ((*(a2 + 52) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 40);
    *(a1 + 52) |= 0x10u;
    *(a1 + 40) = v5;
  }
}

void sub_100722194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007221B0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102637248;
  if (!qword_102637248)
  {
    sub_1007201E4(0, a2, a3, a4);
    return qword_102637248;
  }

  return result;
}

uint64_t sub_100722238(uint64_t result)
{
  v1 = result;
  if (*(result + 52))
  {
    if (*(result + 52))
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_100721D00(result);
      }
    }

    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
  }

  *(v1 + 52) = 0;
  return result;
}

uint64_t sub_10072227C(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 52);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102637248 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 52);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
    if ((*(v5 + 52) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_13:
  v8 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, v8, a2, a4);
}

uint64_t sub_100722350(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_17;
  }

  if ((*(a1 + 52) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 52) & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
    v3 = *(a1 + 52);
    goto LABEL_13;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v5 = *(qword_102637248 + 8);
  }

  v6 = sub_100721E54(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(a1 + 52);
  if ((v3 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_15;
    }

LABEL_19:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32), a2) + 1;
    if ((*(a1 + 52) & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
  v3 = *(a1 + 52);
  if ((v3 & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  if ((v3 & 0x10) != 0)
  {
LABEL_16:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 40), a2) + 1;
  }

LABEL_17:
  *(a1 + 48) = v4;
  return v4;
}

void sub_100722440(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100722020(a1, lpsrc);
}

float sub_1007224E0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 24);
  if (v5)
  {
    if (*(a2 + 24))
    {
      v6 = *(a2 + 8);
      *(a1 + 24) |= 1u;
      *(a1 + 8) = v6;
      v5 = *(a2 + 24);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 16);
      *(a1 + 24) |= 2u;
      *(a1 + 16) = result;
    }
  }

  return result;
}

void sub_10072258C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1007225C4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_10246D878;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100722668(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_100722680(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v11 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v10;
        v11 = v9 + 1;
        *(this + 1) = v11;
      }

      *(a1 + 24) |= 1u;
      if (v11 < v8 && *v11 == 21)
      {
        *(this + 1) = v11 + 1;
LABEL_21:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v13;
        *(a1 + 24) |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5)
    {
      goto LABEL_21;
    }

LABEL_13:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_1007227EC(uint64_t result, unint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, v4, v7, a3);
  }

  return result;
}

uint64_t sub_100722858(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 24);
  if (v3)
  {
    if (*(a1 + 24))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
      v3 = *(a1 + 24);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      result = v4 + 5;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  *(a1 + 20) = result;
  return result;
}

float sub_1007228B4(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_1007224E0(a1, lpsrc);
}

float sub_100722954(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 8);
      *(a1 + 32) |= 1u;
      *(a1 + 8) = v6;
      v5 = *(a2 + 32);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 16);
    *(a1 + 32) |= 2u;
    *(a1 + 16) = result;
    v5 = *(a2 + 32);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

LABEL_12:
    result = *(a2 + 20);
    *(a1 + 32) |= 4u;
    *(a1 + 20) = result;
    if ((*(a2 + 32) & 8) == 0)
    {
      return result;
    }

LABEL_8:
    result = *(a2 + 24);
    *(a1 + 32) |= 8u;
    *(a1 + 24) = result;
  }

  return result;
}

void sub_100722A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100722AD0(uint64_t result)
{
  if (*(result + 32))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_100722AE8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 != 5)
          {
            goto LABEL_20;
          }

LABEL_32:
          v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v17) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 20) = v17;
          *(a1 + 32) |= 4u;
          v15 = *(this + 1);
          if (v15 < *(this + 2) && *v15 == 37)
          {
            *(this + 1) = v15 + 1;
            goto LABEL_36;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 5)
          {
            goto LABEL_20;
          }

LABEL_36:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v16) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v16;
          *(a1 + 32) |= 8u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v10 = *(this + 1);
      v9 = *(this + 2);
      if (v10 >= v9 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v12 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v11;
        v12 = v10 + 1;
        *(this + 1) = v12;
      }

      *(a1 + 32) |= 1u;
      if (v12 < v9 && *v12 == 21)
      {
        *(this + 1) = v12 + 1;
LABEL_28:
        v18 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v18) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v18;
        *(a1 + 32) |= 2u;
        v14 = *(this + 1);
        if (v14 < *(this + 2) && *v14 == 29)
        {
          *(this + 1) = v14 + 1;
          goto LABEL_32;
        }
      }
    }

    if (v7 == 2 && v8 == 5)
    {
      goto LABEL_28;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

float sub_100722D14(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100722954(a1, lpsrc);
}

void sub_100722DB4(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 8);
      a1[8] |= 1u;
      a1[2] = v6;
      v4 = *(a2 + 32);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 12);
    a1[8] |= 2u;
    a1[3] = v7;
    v4 = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    v8 = *(a2 + 16);
    a1[8] |= 4u;
    a1[4] = v8;
    v4 = *(a2 + 32);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_14:
    v9 = *(a2 + 20);
    a1[8] |= 8u;
    a1[5] = v9;
    if ((*(a2 + 32) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 24);
    a1[8] |= 0x10u;
    a1[6] = v5;
  }
}

void sub_100722EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100722F00(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_10246D968;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100722FA4(uint64_t result)
{
  if (*(result + 32))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_100722FBC(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v10 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v13 = *(this + 1);
        v8 = *(this + 2);
        if (v13 >= v8 || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
          if (!result)
          {
            return result;
          }

          v15 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          a1[2] = v14;
          v15 = v13 + 1;
          *(this + 1) = v15;
        }

        a1[8] |= 1u;
        if (v15 < v8 && *v15 == 16)
        {
          v10 = v15 + 1;
          *(this + 1) = v10;
LABEL_32:
          v25 = 0;
          if (v10 >= v8 || (v16 = *v10, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25);
            if (!result)
            {
              return result;
            }

            v16 = v25;
            v17 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            v17 = v10 + 1;
            *(this + 1) = v17;
          }

          a1[3] = v16;
          a1[8] |= 2u;
          if (v17 < v8 && *v17 == 24)
          {
            v11 = v17 + 1;
            *(this + 1) = v11;
LABEL_40:
            if (v11 >= v8 || (v18 = *v11, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
              if (!result)
              {
                return result;
              }

              v19 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              a1[4] = v18;
              v19 = v11 + 1;
              *(this + 1) = v19;
            }

            a1[8] |= 4u;
            if (v19 < v8 && *v19 == 32)
            {
              v12 = v19 + 1;
              *(this + 1) = v12;
              goto LABEL_48;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v11 = *(this + 1);
        v8 = *(this + 2);
        goto LABEL_40;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v12 = *(this + 1);
      v8 = *(this + 2);
LABEL_48:
      if (v12 >= v8 || (v20 = *v12, (v20 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
        if (!result)
        {
          return result;
        }

        v21 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        a1[5] = v20;
        v21 = v12 + 1;
        *(this + 1) = v21;
      }

      a1[8] |= 8u;
      if (v21 < v8 && *v21 == 40)
      {
        v9 = v21 + 1;
        *(this + 1) = v21 + 1;
LABEL_56:
        v26 = 0;
        if (v9 >= v8 || (v22 = *v9, (v22 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26);
          if (!result)
          {
            return result;
          }

          v22 = v26;
          v23 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v23 = v9 + 1;
          *(this + 1) = v23;
        }

        a1[6] = -(v22 & 1) ^ (v22 >> 1);
        a1[8] |= 0x10u;
        if (v23 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_56;
    }

LABEL_21:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

int *sub_1007232B4(int *result, unsigned int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[8];
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, result[2], a2, a4);
    v6 = v5[8];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v5[3], a2, a4);
  v6 = v5[8];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
    if ((v5[8] & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[8];
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:
  v7 = v5[6];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(5, v7, a2, a4);
}

uint64_t sub_100723378(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_32;
  }

  if (*(a1 + 32))
  {
    v5 = *(a1 + 8);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 32);
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v6 = *(a1 + 12);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 32);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(a1 + 32);
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v10 = *(a1 + 20);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v3 = *(a1 + 32);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) != 0)
  {
LABEL_28:
    v12 = ((2 * *(a1 + 24)) ^ (*(a1 + 24) >> 31));
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    }

    else
    {
      v13 = 2;
    }

    v4 = (v13 + v4);
  }

LABEL_32:
  *(a1 + 28) = v4;
  return v4;
}

void sub_1007234A0(_DWORD *a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100722DB4(a1, lpsrc);
}

void sub_100723540(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      v5 = *(a2 + 8);
      *(a1 + 48) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 48);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 16);
    *(a1 + 48) |= 2u;
    *(a1 + 16) = v6;
    v4 = *(a2 + 48);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_12:
    v7 = *(a2 + 24);
    *(a1 + 48) |= 4u;
    *(a1 + 24) = v7;
    v4 = *(a2 + 48);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

LABEL_14:
      v9 = *(a2 + 40);
      if (v9 >= 2)
      {
        sub_10191E424();
      }

      *(a1 + 48) |= 0x10u;
      *(a1 + 40) = v9;
      return;
    }

LABEL_13:
    v8 = *(a2 + 32);
    *(a1 + 48) |= 8u;
    *(a1 + 32) = v8;
    if ((*(a2 + 48) & 0x10) == 0)
    {
      return;
    }

    goto LABEL_14;
  }
}

void sub_100723660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100723698(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102637268;
  if (!qword_102637268)
  {
    sub_1007201E4(0, a2, a3, a4);
    return qword_102637268;
  }

  return result;
}

uint64_t sub_100723720(uint64_t result)
{
  if (*(result + 48))
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  *(result + 48) = 0;
  return result;
}

uint64_t sub_100723740(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 48);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
    if ((*(v5 + 48) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 48);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:
  v7 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v7, a2, a4);
}

uint64_t sub_100723804(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 48);
  if (*(a1 + 48))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 0x10) != 0)
    {
      v6 = *(a1 + 40);
      if ((v6 & 0x80000000) != 0)
      {
        v7 = 11;
      }

      else if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      }

      else
      {
        v7 = 2;
      }

      v5 = (v7 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 44) = v5;
  return v5;
}

void sub_10072389C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100723540(a1, lpsrc);
}

void sub_10072393C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 8);
      *(a1 + 24) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 24);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 16);
      *(a1 + 24) |= 2u;
      *(a1 + 16) = v6;
    }
  }
}

void sub_1007239E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100723A20(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_10246DA58;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100723A74(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102637270;
  if (!qword_102637270)
  {
    sub_1007201E4(0, a2, a3, a4);
    return qword_102637270;
  }

  return result;
}

uint64_t sub_100723AF4(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_100723B0C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(this + 1);
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v9;
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      *(a1 + 24) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(this + 1) = v11;
LABEL_22:
        v15 = 0;
        if (v11 >= v7 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v15);
          if (!result)
          {
            return result;
          }

          v12 = v15;
          v13 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          v13 = v11 + 1;
          *(this + 1) = v13;
        }

        *(a1 + 16) = v12 != 0;
        *(a1 + 24) |= 2u;
        if (v13 == v7 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v7 = *(this + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_100723CA0(uint64_t result, unint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, v4, a4);
  }

  return result;
}

uint64_t sub_100723D0C(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 24);
  if (v3)
  {
    if (*(a1 + 24))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
      v3 = *(a1 + 24);
    }

    else
    {
      v4 = 0;
    }

    result = (v3 & 2u) + v4;
  }

  else
  {
    result = 0;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_100723D64(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10072393C(a1, lpsrc);
}

void sub_100723E04(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 8);
      *(a1 + 36) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 36);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 24);
    *(a1 + 36) |= 2u;
    *(a1 + 24) = v6;
    v4 = *(a2 + 36);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

LABEL_12:
      v8 = *(a2 + 28);
      if (!sub_1001744A4(v8))
      {
        sub_10191E450();
      }

      *(a1 + 36) |= 8u;
      *(a1 + 28) = v8;
      return;
    }

LABEL_11:
    v7 = *(a2 + 16);
    *(a1 + 36) |= 4u;
    *(a1 + 16) = v7;
    if ((*(a2 + 36) & 8) == 0)
    {
      return;
    }

    goto LABEL_12;
  }
}

void sub_100723F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100723F40(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_10246DAD0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100723F94(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102637278;
  if (!qword_102637278)
  {
    sub_1007201E4(0, a2, a3, a4);
    return qword_102637278;
  }

  return result;
}

uint64_t sub_10072401C(uint64_t result)
{
  if (*(result + 36))
  {
    *(result + 28) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 36) = 0;
  return result;
}

uint64_t sub_100724038(uint64_t result, unint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
      if ((*(v5 + 36) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v7 = *(v5 + 28);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, v7, a2, a4);
}

uint64_t sub_1007240E0(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (v3)
  {
    if (*(a1 + 36))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
      v3 = *(a1 + 36);
    }

    else
    {
      v4 = 0;
    }

    v5 = (v3 & 2u) + v4;
    if ((v3 & 4) != 0)
    {
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
      v3 = *(a1 + 36);
    }

    if ((v3 & 8) != 0)
    {
      v6 = *(a1 + 28);
      if ((v6 & 0x80000000) != 0)
      {
        v7 = 11;
      }

      else if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      }

      else
      {
        v7 = 2;
      }

      v5 = (v7 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 32) = v5;
  return v5;
}

void sub_100724184(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100723E04(a1, lpsrc);
}

uint64_t sub_100724228(uint64_t result, int a2)
{
  *result = off_10246DC68;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a2;
  return result;
}

void *sub_100724250(void *a1)
{
  *a1 = off_10246DC68;
  sub_1004F0990(a1 + 3, 0);
  v2 = a1[2];
  if (v2)
  {
    sub_100008080(v2);
  }

  return a1;
}

BOOL sub_1007242AC(uint64_t *a1)
{
  buf[0] = (*(*a1 + 24))(a1);
  sub_100126E84(&v19, "AlwaysOnDeviceMotion", buf, 0);
  buf[0] = 1;
  sub_100126E84(&v17, "DeviceMotionUseGyroController", buf, 0);
  v2 = (a1 + 1);
  if (!a1[1])
  {
    v3 = sub_100011660();
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10072462C;
    v16[3] = &unk_102449A78;
    v16[4] = a1;
    sub_10017A794(v3, v16);
  }

  v15 = 2;
  v4 = v20;
  BYTE1(v15) = v20;
  v5 = v18;
  BYTE2(v15) = v18;
  v6 = (*(*a1 + 32))(a1);
  HIBYTE(v15) = v6;
  if (qword_1025D42C0 != -1)
  {
    sub_10191E47C();
  }

  v7 = qword_1025D42C8;
  if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*v2 + 16);
    *buf = 67109888;
    v30 = v8;
    v31 = 1024;
    v32 = v4;
    v33 = 1024;
    v34 = v5;
    v35 = 1024;
    v36 = v6;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "[CLDeviceMotionControl-%d] Configuring,enableAlwaysOn,%d,useGyroController,%d,enableVisualLocalization,%d", buf, 0x1Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D42C0 != -1)
    {
      sub_10191E47C();
    }

    v13 = *(*v2 + 16);
    v21 = 67109888;
    v22 = v13;
    v23 = 1024;
    v24 = v4;
    v25 = 1024;
    v26 = v5;
    v27 = 1024;
    v28 = v6;
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDeviceMotionControl::configure()", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  v9 = sub_1007247E0(a1, &v15, 4);
  if (!v9)
  {
    if (qword_1025D42C0 != -1)
    {
      sub_10191E47C();
    }

    v10 = qword_1025D42C8;
    if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_INFO))
    {
      v11 = *(*v2 + 16);
      *buf = 67109120;
      v30 = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "[CLDeviceMotionControl-%d] Configure failed", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191E4A4(v2);
    }
  }

  return v9;
}

uint64_t sub_10072462C(uint64_t result)
{
  if (!*(*(result + 32) + 8))
  {
    v1 = sub_1009B38EC();
    sub_101860780(v1);
  }

  return result;
}

void sub_100724768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  operator delete();
}

uint64_t sub_100724798(uint64_t a1)
{
  v2 = *(a1 + 24);
  sub_1010FA2B0(v2);
  sub_1010FA55C(v2);

  return sub_1007242AC(a1);
}

BOOL sub_1007247E0(uint64_t *a1, uint64_t a2, int *a3)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    sub_10191E5D0();
  }

  v8 = 0;
  v7 = 4;
  return sub_1010FAC50(a1[3], a2, a3, &v8, &v7) == 0;
}

double sub_1007248A0(uint64_t a1)
{
  v2 = *(a1 + 324);
  v3 = *(a1 + 304);
  v4 = *(a1 + 312);
  v5 = *(a1 + 4528) * 1.107 + -0.123;
  v6 = v4 * (v5 + *(a1 + 192) * 0.006);
  if (v3 <= 0.0)
  {
    v7 = v4 * (v5 + *(a1 + 192) * 0.006);
  }

  else
  {
    v7 = 2.23693991 / v3;
  }

  if ((v2 & 0x10) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4 * (v5 + *(a1 + 192) * 0.006);
  }

  if (qword_1025D4230 != -1)
  {
    sub_10191E7A0();
  }

  v9 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 312);
    *buf = 134350336;
    v15 = v10;
    v16 = 1026;
    v17 = v2;
    v18 = 2050;
    v19 = v8;
    v20 = 2050;
    v21 = v7;
    v22 = 2050;
    v23 = v6;
    v24 = 2050;
    v25 = v11;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "beginTime, %{public}f, distanceConfig, %{public}d, bestSpeed, %{public}f, pedSpeed, %{public}f, uncalibratedSpeed, %{public}f, currentCadence,%{public}f", buf, 0x3Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_10191E7B4();
    }

    v13 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static double CLFitnessYouthBriskWalkOverride::bestSpeed(const CLNatalieModelInput &)", "%s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  return v8;
}

uint64_t sub_100724B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1007248A0(a3);
  *buf = 0;
  v6 = sub_1006E9E64((a3 + 4520), buf);
  if (v5 <= v6)
  {
    if (v5 <= 0.0)
    {
      return a2;
    }

    v8 = sub_1001732D0(1, a2);
    if (qword_1025D4230 != -1)
    {
      sub_10191E7B4();
    }

    v11 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v12 = *(a3 + 16);
      *buf = 134218752;
      v16 = v12;
      v17 = 1026;
      v18 = a2;
      v19 = 1026;
      v20 = v8;
      v21 = 2050;
      v22 = v5;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "Overriding youth type for nonzero speed, beginTime, %f, before, %{public}d, after, %{public}d, speed, %{public}f", buf, 0x22u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v7 = v6;
    v8 = sub_1001732D0(2, a2);
    if (qword_1025D4230 != -1)
    {
      sub_10191E7B4();
    }

    v9 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v10 = *(a3 + 16);
      *buf = 134219008;
      v16 = v10;
      v17 = 1026;
      v18 = a2;
      v19 = 1026;
      v20 = v8;
      v21 = 2050;
      v22 = v5;
      v23 = 2050;
      v24 = v7;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Overriding youth type for brisk walk, beginTime, %f, before, %{public}d, after, %{public}d, speed, %{public}f, speedThreshold, %{public}f", buf, 0x2Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 == -1)
      {
LABEL_16:
        v13 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual CLMotionActivity::TypeYouth CLFitnessYouthBriskWalkOverride::doOverride(CLMotionActivity::TypeYouth, const CLNatalieModelInput &)", "%s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }

        return v8;
      }

LABEL_20:
      sub_10191E7B4();
      goto LABEL_16;
    }
  }

  return v8;
}

void sub_100724EA0(uint64_t a1, uint64_t a2)
{
  *a1 = off_10246DD38;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 28) = 0xA00000000;
  *(a1 + 24) = 1031798784;
  *(a1 + 80) = 0;
  if (a2 != 24)
  {
    if (a2 == 17)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_100725090(uint64_t a1, double *a2)
{
  if ((atomic_load_explicit(&qword_1026593F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1026593F0))
  {
    LODWORD(v109[0]) = 8;
    qword_1026593E0 = 0;
    unk_1026593E8 = 0;
    qword_1026593D8 = 0;
    sub_1004579D4(&qword_1026593D8, v109, v109 + 4, 1uLL);
    __cxa_atexit(sub_10051F310, &qword_1026593D8, dword_100000000);
    __cxa_guard_release(&qword_1026593F0);
  }

  v110 = 0;
  *v109 = xmmword_101C78400;
  memset(&v109[2], 0, 135);
  v111 = xmmword_101C78400;
  v112 = 0;
  v113 = 0;
  memset(v114, 0, sizeof(v114));
  v115 = 0;
  v117 = 0;
  v118 = 0;
  v116 = 0u;
  v119 = xmmword_101C78400;
  v120 = 0;
  v121 = 0;
  v122 = 0xFFEFFFFFFFFFFFFFLL;
  v133 = 0;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  memset(v132, 0, sizeof(v132));
  v134 = 0u;
  v135 = 0xFFEFFFFFFFFFFFFFLL;
  v136 = 0;
  v137 = 0;
  v142 = 0;
  v143 = 0;
  v148 = 0;
  memset(v141, 0, sizeof(v141));
  v140 = 0u;
  v139 = 0u;
  v138 = 0u;
  v146 = 0;
  v145 = 0u;
  v144 = 0u;
  memset(v147, 0, sizeof(v147));
  v149 = 0xFFEFFFFFFFFFFFFFLL;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0xFFEFFFFFFFFFFFFFLL;
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v175 = 0xFFEFFFFFFFFFFFFFLL;
  v176 = 0;
  v177 = 0;
  v178 = 0;
  v179 = 0;
  v180 = 0xFFEFFFFFFFFFFFFFLL;
  v181 = 0u;
  v182 = 0x80000000800000;
  v183 = 0u;
  v184 = xmmword_101C78410;
  v185 = 0x80000000800000;
  v186 = 0u;
  v187 = 0u;
  v188 = 0;
  v189 = 0xFFEFFFFFFFFFFFFFLL;
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v196 = 0;
  v197 = 0xFFEFFFFFFFFFFFFFLL;
  v198 = 0;
  v199 = 0;
  v200 = 0xFFEFFFFFFFFFFFFFLL;
  v201 = 7;
  v202 = 0xFFEFFFFFFFFFFFFFLL;
  v203 = 0;
  v205 = 0;
  v204 = 0u;
  if (sub_1000C2B7C(a2, &qword_1026593D8, v109))
  {
    *(a1 + 8) = v160 != 0;
  }

  if ((***(a1 + 80))(*(a1 + 80), a2))
  {
    return 2;
  }

  if ((atomic_load_explicit(&qword_102659410, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102659410))
  {
    LODWORD(v12[0]) = 2;
    qword_102659400 = 0;
    unk_102659408 = 0;
    qword_1026593F8 = 0;
    sub_1004579D4(&qword_1026593F8, v12, v12 + 4, 1uLL);
    __cxa_atexit(sub_10051F310, &qword_1026593F8, dword_100000000);
    __cxa_guard_release(&qword_102659410);
  }

  v13 = 0;
  *v12 = xmmword_101C78400;
  memset(&v12[2], 0, 135);
  v14 = xmmword_101C78400;
  v15 = 0;
  v16 = 0;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0u;
  v22 = xmmword_101C78400;
  v23 = 0;
  v24 = 0;
  v25 = 0xFFEFFFFFFFFFFFFFLL;
  v36 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  memset(v35, 0, sizeof(v35));
  v37 = 0u;
  v38 = 0xFFEFFFFFFFFFFFFFLL;
  v39 = 0;
  v40 = 0;
  v45 = 0;
  v46 = 0;
  v51 = 0;
  v43 = 0u;
  memset(v44, 0, sizeof(v44));
  v41 = 0u;
  v42 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  memset(v50, 0, sizeof(v50));
  v52 = 0xFFEFFFFFFFFFFFFFLL;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0xFFEFFFFFFFFFFFFFLL;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0xFFEFFFFFFFFFFFFFLL;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0xFFEFFFFFFFFFFFFFLL;
  v84 = 0u;
  v85 = 0x80000000800000;
  v86 = 0u;
  v87 = xmmword_101C78410;
  v88 = 0x80000000800000;
  v89 = 0u;
  v90 = 0u;
  v91 = 0;
  v92 = 0xFFEFFFFFFFFFFFFFLL;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0;
  v100 = 0xFFEFFFFFFFFFFFFFLL;
  v101 = 0;
  v102 = 0;
  v103 = 0xFFEFFFFFFFFFFFFFLL;
  v104 = 7;
  v105 = 0xFFEFFFFFFFFFFFFFLL;
  v106 = 0;
  v108 = 0;
  v107 = 0u;
  if (sub_1000C2B7C(a2, &qword_1026593F8, v12) && ((v6 = *(a1 + 28), v7 = *(a1 + 30), v8 = *(a1 + 32), v6 + v7 >= v8) ? (v9 = *(a1 + 32)) : (v9 = 0), (v5 = *(&v27 + 1), *(a1 + 4 * (v6 + v7 - v9) + 36) = v5, v8 <= v7) ? ((v10 = v6 + 1, v10 >= v8) ? (v11 = v8) : (v11 = 0), *(a1 + 28) = v10 - v11) : (LOWORD(v7) = v7 + 1, *(a1 + 30) = v7, LODWORD(v7) = v7), (*(a1 + 12) = 1, v8 == v7) && (sub_10072580C((a1 + 28), sub_1007258A0, 0) > 13.4112 || *(a1 + 8) == 1 && sub_10072580C((a1 + 28), sub_1007258A0, 0) > 6.7056)))
  {
    return 9;
  }

  else
  {
    return 0;
  }
}

void *sub_10072570C(void *a1)
{
  *a1 = off_10246DD38;
  v2 = a1[10];
  a1[10] = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  return a1;
}

void sub_10072577C(void *a1)
{
  *a1 = off_10246DD38;
  v2 = a1[10];
  a1[10] = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  operator delete();
}

float sub_10072580C(unsigned __int16 *a1, unsigned int (*a2)(float, float), unint64_t a3)
{
  v6 = a1[1];
  if (!a1[1])
  {
    sub_10191E7DC();
  }

  v7 = *sub_100457AE8(a1, a3);
  if (v6 > a3)
  {
    do
    {
      v8 = sub_100457AE8(a1, a3);
      v9 = *v8;
      if (a2(*v8, v7))
      {
        v7 = v9;
      }

      ++a3;
    }

    while (v6 != a3);
  }

  return v7;
}

void sub_1007258AC(uint64_t a1)
{
  if (CFAbsoluteTimeGetCurrent() - *a1 >= 86400.0)
  {
    if (qword_1025D41E0 != -1)
    {
      sub_10191E964();
    }

    v3 = qword_1025D41E8;
    if (os_log_type_enabled(qword_1025D41E8, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 8);
      v5 = *a1;
      *buf = 67240704;
      v8 = v4;
      v9 = 2048;
      v10 = v5;
      v11 = 2050;
      Current = CFAbsoluteTimeGetCurrent();
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "[CLSuppressionLogger][counterReset]  suppressionStateMetricsCounter,%{public}d,fTimestampLastSuppressionStateMetricsCounterReset,%f,currentTime,%{public}f", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191E978(a1);
    }

    v6 = CFAbsoluteTimeGetCurrent();
    v2 = 0;
    *a1 = v6;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  *(a1 + 8) = v2 + 1;
  if (v2 < *(a1 + 12))
  {
    AnalyticsSendEventLazy();
  }
}

NSDictionary *sub_100725A54(uint64_t a1)
{
  v2 = *(a1 + 32);
  v18[0] = @"logSequenceID";
  v19[0] = [NSNumber numberWithUnsignedLongLong:(CFAbsoluteTimeGetCurrent() * 1000000.0)];
  v18[1] = @"isAPAwake";
  v19[1] = [NSNumber numberWithBool:*(*(a1 + 40) + 1)];
  v18[2] = @"exitedToFSMState";
  v19[2] = [NSNumber numberWithInt:*(*(a1 + 40) + 2)];
  v18[3] = @"sessionFSMState";
  v19[3] = [NSNumber numberWithInt:*(*(a1 + 40) + 3)];
  v18[4] = @"timeInFSMState";
  v19[4] = [NSNumber numberWithUnsignedLongLong:*(*(a1 + 40) + 4)];
  v18[5] = @"timeStatic";
  v19[5] = [NSNumber numberWithUnsignedLongLong:*(*(a1 + 40) + 36)];
  v18[6] = @"timeFrozen";
  v19[6] = [NSNumber numberWithUnsignedLongLong:*(*(a1 + 40) + 44)];
  v18[7] = @"timeMoving";
  v19[7] = [NSNumber numberWithUnsignedLongLong:*(*(a1 + 40) + 52)];
  v18[8] = @"meanGravityAngle";
  if (*(*(a1 + 40) + 12) >= 1.1755e-38)
  {
    v3 = [NSNumber numberWithFloat:?];
  }

  else
  {
    v3 = +[NSNull null];
  }

  v19[8] = v3;
  v18[9] = @"meanPocketProbability";
  if (*(*(a1 + 40) + 16) >= 1.1755e-38)
  {
    v4 = [NSNumber numberWithFloat:?];
  }

  else
  {
    v4 = +[NSNull null];
  }

  v19[9] = v4;
  v18[10] = @"meanIlluminance";
  if (*(*(a1 + 40) + 20) >= 1.1755e-38)
  {
    v5 = [NSNumber numberWithFloat:?];
  }

  else
  {
    v5 = +[NSNull null];
  }

  v19[10] = v5;
  v18[11] = @"proxBaselineAtEntry";
  if (*(*(a1 + 40) + 60) >= 1.1755e-38)
  {
    v6 = [NSNumber numberWithFloat:?];
  }

  else
  {
    v6 = +[NSNull null];
  }

  v19[11] = v6;
  v18[12] = @"proxBaselineAtExit";
  if (*(*(a1 + 40) + 68) >= 1.1755e-38)
  {
    v7 = [NSNumber numberWithFloat:?];
  }

  else
  {
    v7 = +[NSNull null];
  }

  v19[12] = v7;
  v18[13] = @"proxBaselineUncertaintyAtEntry";
  if (*(*(a1 + 40) + 64) >= 1.1755e-38)
  {
    v8 = [NSNumber numberWithFloat:?];
  }

  else
  {
    v8 = +[NSNull null];
  }

  v19[13] = v8;
  v18[14] = @"proxBaselineUncertaintyAtExit";
  if (*(*(a1 + 40) + 72) >= 1.1755e-38)
  {
    v9 = [NSNumber numberWithFloat:?];
  }

  else
  {
    v9 = +[NSNull null];
  }

  v19[14] = v9;
  v18[15] = @"maxProxTemperature";
  if (*(*(a1 + 40) + 24) >= 1.1755e-38)
  {
    v10 = [NSNumber numberWithFloat:?];
  }

  else
  {
    v10 = +[NSNull null];
  }

  v19[15] = v10;
  v18[16] = @"minProxTemperature";
  if (*(*(a1 + 40) + 28) <= 3.4028e38)
  {
    v11 = [NSNumber numberWithFloat:?];
  }

  else
  {
    v11 = +[NSNull null];
  }

  v19[16] = v11;
  v18[17] = @"meanProxTemperature";
  if (*(*(a1 + 40) + 32) >= 1.1755e-38)
  {
    v12 = [NSNumber numberWithFloat:?];
  }

  else
  {
    v12 = +[NSNull null];
  }

  v19[17] = v12;
  v18[18] = @"alwaysOnViewObstructed";
  if (sub_100CF1D20())
  {
    v13 = sub_100CF1D20();
    v14 = [NSNumber numberWithBool:sub_100CF2730(v13)];
  }

  else
  {
    v14 = +[NSNull null];
  }

  v19[18] = v14;
  v18[19] = @"displayState";
  v19[19] = [NSNumber numberWithUnsignedInt:*(v2 + 20)];
  v18[20] = @"suppressionClientTypes";
  if (sub_100CF1D20())
  {
    v15 = sub_100CF1D20();
    v16 = [NSNumber numberWithUnsignedInt:sub_100CF286C(v15)];
  }

  else
  {
    v16 = +[NSNull null];
  }

  v19[20] = v16;
  return [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:21];
}

uint64_t sub_100725F04(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 1);
  if (v2 == 2)
  {
    v3 = result;
    result = AnalyticsSendEventLazy();
    *(v3 + 16) = 0;
  }

  else if (v2 == 1 || !*(a2 + 1))
  {
    return AnalyticsSendEventLazy();
  }

  return result;
}

NSDictionary *sub_100726054(uint64_t a1)
{
  v11[0] = @"logSequenceID";
  v12[0] = [NSNumber numberWithUnsignedLongLong:(CFAbsoluteTimeGetCurrent() * 1000000.0)];
  v11[1] = @"timeSinceLastMeasurement";
  if (*(*(a1 + 32) + 26))
  {
    v2 = [NSNumber numberWithUnsignedLongLong:?];
  }

  else
  {
    v2 = +[NSNull null];
  }

  v12[1] = v2;
  v11[2] = @"estimate";
  if (*(*(a1 + 32) + 6) >= 3.4028e38)
  {
    v3 = +[NSNull null];
  }

  else
  {
    v3 = [NSNumber numberWithFloat:?];
  }

  v12[2] = v3;
  v11[3] = @"uncertainty";
  if (*(*(a1 + 32) + 34) >= 3.4028e38)
  {
    v4 = +[NSNull null];
  }

  else
  {
    v4 = [NSNumber numberWithFloat:?];
  }

  v12[3] = v4;
  v11[4] = @"factoryCalibration";
  if (*(*(a1 + 32) + 10) >= 3.4028e38)
  {
    v5 = +[NSNull null];
  }

  else
  {
    v5 = [NSNumber numberWithFloat:?];
  }

  v12[4] = v5;
  v11[5] = @"currentLux";
  if (*(*(a1 + 32) + 2) >= 3.4028e38)
  {
    v6 = +[NSNull null];
  }

  else
  {
    v6 = [NSNumber numberWithFloat:?];
  }

  v12[5] = v6;
  v11[6] = @"proxIntensity";
  if (*(*(a1 + 32) + 14) >= 3.4028e38)
  {
    v7 = +[NSNull null];
  }

  else
  {
    v7 = [NSNumber numberWithFloat:?];
  }

  v12[6] = v7;
  v11[7] = @"temperature";
  if (*(*(a1 + 32) + 18) >= 3.4028e38)
  {
    v8 = +[NSNull null];
  }

  else
  {
    v8 = [NSNumber numberWithFloat:?];
  }

  v12[7] = v8;
  v11[8] = @"temperatureAtLastMeasurement";
  if (*(*(a1 + 32) + 22) >= 3.4028e38)
  {
    v9 = +[NSNull null];
  }

  else
  {
    v9 = [NSNumber numberWithFloat:?];
  }

  v12[8] = v9;
  return [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:9];
}

NSDictionary *sub_1007262D4(uint64_t a1)
{
  v12[0] = @"resetTriggered";
  v13[0] = [NSNumber numberWithBool:1];
  v12[1] = @"logSequenceID";
  v13[1] = [NSNumber numberWithUnsignedLongLong:(CFAbsoluteTimeGetCurrent() * 1000000.0)];
  v12[2] = @"suiCountSinceLastLog";
  v13[2] = [NSNumber numberWithUnsignedLongLong:*(*(a1 + 32) + 42)];
  v12[3] = @"timeSinceLastMeasurement";
  if (*(*(a1 + 32) + 26))
  {
    v2 = [NSNumber numberWithUnsignedLongLong:?];
  }

  else
  {
    v2 = +[NSNull null];
  }

  v13[3] = v2;
  v12[4] = @"estimate";
  if (*(*(a1 + 32) + 6) >= 3.4028e38)
  {
    v3 = +[NSNull null];
  }

  else
  {
    v3 = [NSNumber numberWithFloat:?];
  }

  v13[4] = v3;
  v12[5] = @"uncertainty";
  if (*(*(a1 + 32) + 34) >= 3.4028e38)
  {
    v4 = +[NSNull null];
  }

  else
  {
    v4 = [NSNumber numberWithFloat:?];
  }

  v13[5] = v4;
  v12[6] = @"factoryCalibration";
  if (*(*(a1 + 32) + 10) >= 3.4028e38)
  {
    v5 = +[NSNull null];
  }

  else
  {
    v5 = [NSNumber numberWithFloat:?];
  }

  v13[6] = v5;
  v12[7] = @"currentLux";
  if (*(*(a1 + 32) + 2) >= 3.4028e38)
  {
    v6 = +[NSNull null];
  }

  else
  {
    v6 = [NSNumber numberWithFloat:?];
  }

  v13[7] = v6;
  v12[8] = @"proxIntensity";
  if (*(*(a1 + 32) + 14) >= 3.4028e38)
  {
    v7 = +[NSNull null];
  }

  else
  {
    v7 = [NSNumber numberWithFloat:?];
  }

  v13[8] = v7;
  v12[9] = @"temperature";
  if (*(*(a1 + 32) + 18) >= 3.4028e38)
  {
    v8 = +[NSNull null];
  }

  else
  {
    v8 = [NSNumber numberWithFloat:?];
  }

  v13[9] = v8;
  v12[10] = @"temperatureAtLastMeasurement";
  if (*(*(a1 + 32) + 22) >= 3.4028e38)
  {
    v9 = +[NSNull null];
  }

  else
  {
    v9 = [NSNumber numberWithFloat:?];
  }

  v13[10] = v9;
  v12[11] = @"minProxInLast3s";
  if (*(*(a1 + 32) + 38) >= 3.4028e38)
  {
    v10 = +[NSNull null];
  }

  else
  {
    v10 = [NSNumber numberWithFloat:?];
  }

  v13[11] = v10;
  return [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:12];
}

NSDictionary *sub_1007265CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10[0] = @"isOutOfBox";
  v11[0] = [NSNumber numberWithBool:*(v2 + 16)];
  v10[1] = @"logSequenceID";
  v11[1] = [NSNumber numberWithUnsignedLongLong:(CFAbsoluteTimeGetCurrent() * 1000000.0)];
  v10[2] = @"timeToFirstEstimate";
  v11[2] = [NSNumber numberWithUnsignedLongLong:*(*(a1 + 40) + 50)];
  v10[3] = @"estimate";
  if (*(*(a1 + 40) + 6) >= 3.4028e38)
  {
    v3 = +[NSNull null];
  }

  else
  {
    v3 = [NSNumber numberWithFloat:?];
  }

  v11[3] = v3;
  v10[4] = @"uncertainty";
  if (*(*(a1 + 40) + 34) >= 3.4028e38)
  {
    v4 = +[NSNull null];
  }

  else
  {
    v4 = [NSNumber numberWithFloat:?];
  }

  v11[4] = v4;
  v10[5] = @"factoryCalibration";
  if (*(*(a1 + 40) + 10) >= 3.4028e38)
  {
    v5 = +[NSNull null];
  }

  else
  {
    v5 = [NSNumber numberWithFloat:?];
  }

  v11[5] = v5;
  v10[6] = @"currentLux";
  if (*(*(a1 + 40) + 2) >= 3.4028e38)
  {
    v6 = +[NSNull null];
  }

  else
  {
    v6 = [NSNumber numberWithFloat:?];
  }

  v11[6] = v6;
  v10[7] = @"proxIntensity";
  if (*(*(a1 + 40) + 14) >= 3.4028e38)
  {
    v7 = +[NSNull null];
  }

  else
  {
    v7 = [NSNumber numberWithFloat:?];
  }

  v11[7] = v7;
  v10[8] = @"temperature";
  if (*(*(a1 + 40) + 18) >= 3.4028e38)
  {
    v8 = +[NSNull null];
  }

  else
  {
    v8 = [NSNumber numberWithFloat:?];
  }

  v11[8] = v8;
  return [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:9];
}

unsigned __int16 *sub_100726880(uint64_t a1, int *a2, uint64_t a3)
{
  v16 = 0;
  v6 = *(a3 + 8);
  v5 = *(a3 + 16);
  *&v14 = *(a3 + 40);
  *(&v14 + 1) = v6;
  LOBYTE(v16) = *a3 == 4;
  if (v16)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = v5;
  }

  v15 = v7;
  if (qword_1025D45A0 != -1)
  {
    sub_10191EAD0();
  }

  v8 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    v9 = *a2;
    *buf = 67109632;
    v24 = v9;
    v25 = 2048;
    v26 = v6;
    v27 = 2048;
    v28 = v7;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Raw HR notification %d hr %f confidence %f", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D45A0 != -1)
    {
      sub_10191EAE4();
    }

    v12 = *a2;
    v17 = 67109632;
    v18 = v12;
    v19 = 2048;
    v20 = v6;
    v21 = 2048;
    v22 = v7;
    v13 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CMDataProviderFactoryRawHR::onRawHeartrate(const CLCatherineNotifier_Type::Notification &, const CLCatherineNotifier_Type::NotificationData &)", "%s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  sub_100726AD4((a1 + 64), &v14);
  result = sub_100726B38((a1 + 1672), a2);
  for (i = *(a1 + 32); i != a1 + 24; i = *(i + 8))
  {
    result = (*(**(i + 24) + 16))(*(i + 24), a1);
  }

  return result;
}

unsigned __int16 *sub_100726AD4(unsigned __int16 *result, __int128 *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[16 * (v3 - v2)];
  v5 = *a2;
  *(v4 + 12) = a2[1];
  *(v4 + 4) = v5;
  v6 = result[1];
  v7 = *(result + 1);
  if (v7 <= v6)
  {
    v8 = *result + 1;
    if (v8 < v7)
    {
      LOWORD(v7) = 0;
    }

    *result = v8 - v7;
  }

  else
  {
    result[1] = v6 + 1;
  }

  return result;
}

unsigned __int16 *sub_100726B38(unsigned __int16 *result, _DWORD *a2)
{
  v2 = result[1];
  v3 = *(result + 1);
  v4 = *result;
  if (v4 + v2 >= v3)
  {
    v5 = *(result + 1);
  }

  else
  {
    v5 = 0;
  }

  *&result[2 * (v4 + v2 - v5) + 4] = *a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *result = v4 + 1 - v3;
  }

  else
  {
    result[1] = v2 + 1;
  }

  return result;
}

void sub_100726B8C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v5 = (a1 + 16);
  v6 = *(a1 + 16);
  sub_1003E66FC(a1 + 8, a2, a3);
  if (qword_1025D45A0 != -1)
  {
    sub_10191EAD0();
  }

  v7 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    v8 = *v5;
    *buf = 67109376;
    v11 = v8;
    v12 = 1024;
    v13 = v3;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "xxx - fActiveRefCount %d leech %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191EB0C(v5);
  }

  if (!v6 && *v5 == 1)
  {
    if (qword_1025D45A0 != -1)
    {
      sub_10191EAE4();
    }

    v9 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "creating Raw HR dispatcher", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191EC28();
    }

    if (*(a1 + 48))
    {
      operator new();
    }
  }
}

void sub_100726DCC(uint64_t a1, uint64_t a2)
{
  if (sub_1003E6B84(a1 + 8, a2))
  {
    if (*(a1 + 16) != 1)
    {
      sub_10191ED0C(qword_1025D45A0 == -1);
    }

    if (qword_1025D45A0 != -1)
    {
      sub_10191EAD0();
    }

    v4 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "removing Raw HR delegate", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191EED4();
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      (*(*v5 + 232))(v5);
    }
  }

  if (qword_1025D45A0 != -1)
  {
    sub_10191EAE4();
  }

  v6 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "release Raw HR client", v7, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191EFB4();
  }

  sub_1003E6D3C(a1 + 8, a2);
}

double sub_100726F44(uint64_t a1, int a2)
{
  result = -1.0;
  if (a2 == 1 && *(a1 + 66))
  {
    v3 = *(a1 + 66) + *(a1 + 64) - 1;
    v4 = *(a1 + 68);
    if (v3 < v4)
    {
      v4 = 0;
    }

    return *(a1 + 32 * (v3 - v4) + 72);
  }

  return result;
}

void sub_100726F84(void *a1)
{
  sub_100727040(a1);

  operator delete();
}

void sub_100726FD4(uint64_t a1)
{
  sub_100727040((a1 - 8));

  operator delete();
}

void *sub_100727040(void *a1)
{
  *a1 = off_10246DDC0;
  a1[1] = off_10246DE28;
  if (qword_1025D45A0 != -1)
  {
    sub_10191EAD0();
  }

  v2 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "factory stream raw hr destroyed", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191F094(buf);
    v5 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual CMDataProviderFactoryRawHR::~CMDataProviderFactoryRawHR()", "%s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v3 = a1[7];
  if (v3)
  {
    sub_100008080(v3);
  }

  a1[1] = off_10244FCF8;
  sub_1001FB750(a1 + 3);
  return a1;
}

void sub_10072720C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void *sub_100727284(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10246DEB8;
  sub_10072737C((a1 + 3), a2);
  return a1;
}

void sub_100727300(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10246DEB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10072737C(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1007273F0(a1, &v5);
  if (v6)
  {
    sub_100008080(v6);
  }

  return a1;
}

void sub_1007273D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_1007273F0(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = a1 + 24;
  *(a1 + 32) = a1 + 24;
  *(a1 + 40) = 0;
  *a1 = off_10246DDC0;
  *(a1 + 8) = off_10246DE28;
  v2 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *&result = 0x3200000000;
  *(a1 + 64) = 0x3200000000;
  *(a1 + 1672) = 0x3200000000;
  return result;
}

__n128 sub_1007274CC(uint64_t a1, uint64_t a2)
{
  *a2 = off_10246DF08;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100727504(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t sub_10072754C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100727598(uint64_t a1)
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

BOOL sub_100727618(void *a1, CFArrayRef *a2)
{
  theArray = *a2;
  if (*a2)
  {
    Count = CFArrayGetCount(theArray);
    if (qword_1025D46B0 != -1)
    {
      sub_10191F0D8();
    }

    v5 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
    {
      *buf = 67240192;
      *&buf[4] = Count;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,signalEnvironment,count,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191F0EC();
    }

    if (Count >= 1)
    {
      v6 = 0;
      v7 = Count & 0x7FFFFFFF;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a2, v6);
        v9 = ValueAtIndex;
        if (ValueAtIndex)
        {
          sub_10000EC00(buf, [ValueAtIndex UTF8String]);
          v10 = sub_100727A34(buf);
          v12 = a1[4];
          v11 = a1[5];
          if (v12 >= v11)
          {
            v15 = a1[3];
            v16 = v12 - v15;
            v17 = (v12 - v15) >> 2;
            v18 = v17 + 1;
            if ((v17 + 1) >> 62)
            {
              sub_10028C64C();
            }

            v19 = v11 - v15;
            if (v19 >> 1 > v18)
            {
              v18 = v19 >> 1;
            }

            v20 = v19 >= 0x7FFFFFFFFFFFFFFCLL;
            v21 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v20)
            {
              v21 = v18;
            }

            if (v21)
            {
              sub_1000B85D0((a1 + 3), v21);
            }

            v22 = (v12 - v15) >> 2;
            v23 = (4 * v17);
            v24 = (4 * v17 - 4 * v22);
            *v23 = v10;
            v13 = v23 + 1;
            memcpy(v24, v15, v16);
            v25 = a1[3];
            a1[3] = v24;
            a1[4] = v13;
            a1[5] = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            *v12 = v10;
            v13 = v12 + 4;
          }

          a1[4] = v13;
          if (v41 < 0)
          {
            operator delete(*buf);
          }

          if (qword_1025D46B0 != -1)
          {
            sub_10191F1DC();
          }

          v26 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
          {
            v27 = *(a1[4] - 4);
            *buf = 138543618;
            *&buf[4] = v9;
            v39 = 1026;
            v40 = v27;
            _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,signalEnvironment,%{public}@,%{public}d", buf, 0x12u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D46B0 != -1)
            {
              sub_10191F1DC();
            }

            v28 = *(a1[4] - 4);
            v34 = 138543618;
            v35 = v9;
            v36 = 1026;
            v37 = v28;
            v29 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMapMatcherOperatingPolicy::CLMapMatcherOperatingRegions::fillSignalEnvironment(const CFArrayRef &)", "%s\n", v29);
            if (v29 != buf)
            {
              free(v29);
            }
          }
        }

        else
        {
          if (qword_1025D46B0 != -1)
          {
            sub_10191F1DC();
          }

          v14 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,signalEnvironment,NULL arrayElement", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10191F204(&v32, v33);
          }
        }

        ++v6;
      }

      while (v7 != v6);
    }
  }

  return theArray != 0;
}

void sub_100727A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100727A34(const void **a1)
{
  sub_10000EC00(&__p, "Unavailable");
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = v47;
  v5 = v47;
  if ((v47 & 0x80u) != 0)
  {
    v4 = v46;
  }

  if (v3 != v4)
  {
    v8 = 0;
    if (v47 < 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    if (!v8)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (v2 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if ((v47 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v8 = memcmp(v6, p_p, v3) == 0;
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_18:
  operator delete(__p);
  if (v8)
  {
    return 0;
  }

LABEL_19:
  sub_10000EC00(&__p, "Rural");
  v10 = *(a1 + 23);
  if (v10 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = a1[1];
  }

  v12 = v47;
  v13 = v47;
  if ((v47 & 0x80u) != 0)
  {
    v12 = v46;
  }

  if (v11 != v12)
  {
    v16 = 0;
    if (v47 < 0)
    {
      goto LABEL_36;
    }

LABEL_34:
    if (!v16)
    {
      goto LABEL_37;
    }

    return 1;
  }

  if (v10 >= 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  if ((v47 & 0x80u) == 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  v16 = memcmp(v14, v15, v11) == 0;
  if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

LABEL_36:
  operator delete(__p);
  if (v16)
  {
    return 1;
  }

LABEL_37:
  sub_10000EC00(&__p, "Urban");
  v17 = *(a1 + 23);
  if (v17 >= 0)
  {
    v18 = *(a1 + 23);
  }

  else
  {
    v18 = a1[1];
  }

  v19 = v47;
  v20 = v47;
  if ((v47 & 0x80u) != 0)
  {
    v19 = v46;
  }

  if (v18 != v19)
  {
    v23 = 0;
    if (v47 < 0)
    {
      goto LABEL_54;
    }

LABEL_52:
    if (!v23)
    {
      goto LABEL_55;
    }

    return 2;
  }

  if (v17 >= 0)
  {
    v21 = a1;
  }

  else
  {
    v21 = *a1;
  }

  if ((v47 & 0x80u) == 0)
  {
    v22 = &__p;
  }

  else
  {
    v22 = __p;
  }

  v23 = memcmp(v21, v22, v18) == 0;
  if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_52;
  }

LABEL_54:
  operator delete(__p);
  if (v23)
  {
    return 2;
  }

LABEL_55:
  sub_10000EC00(&__p, "DenseUrban");
  v24 = *(a1 + 23);
  if (v24 >= 0)
  {
    v25 = *(a1 + 23);
  }

  else
  {
    v25 = a1[1];
  }

  v26 = v47;
  v27 = v47;
  if ((v47 & 0x80u) != 0)
  {
    v26 = v46;
  }

  if (v25 != v26)
  {
    v30 = 0;
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  if (v24 >= 0)
  {
    v28 = a1;
  }

  else
  {
    v28 = *a1;
  }

  if ((v47 & 0x80u) == 0)
  {
    v29 = &__p;
  }

  else
  {
    v29 = __p;
  }

  v30 = memcmp(v28, v29, v25) == 0;
  if (v27 < 0)
  {
LABEL_70:
    operator delete(__p);
  }

LABEL_71:
  if (v30)
  {
    return 3;
  }

  sub_10000EC00(&__p, "DenseUrbanCanyon");
  v31 = *(a1 + 23);
  if (v31 >= 0)
  {
    v32 = *(a1 + 23);
  }

  else
  {
    v32 = a1[1];
  }

  v33 = v47;
  v34 = v47;
  if ((v47 & 0x80u) != 0)
  {
    v33 = v46;
  }

  if (v32 == v33)
  {
    if (v31 >= 0)
    {
      v35 = a1;
    }

    else
    {
      v35 = *a1;
    }

    if ((v47 & 0x80u) == 0)
    {
      v36 = &__p;
    }

    else
    {
      v36 = __p;
    }

    v37 = memcmp(v35, v36, v32) == 0;
  }

  else
  {
    v37 = 0;
  }

  if (v34 < 0)
  {
    operator delete(__p);
  }

  if (v37)
  {
    return 4;
  }

  sub_10000EC00(&__p, "Foliage");
  v38 = *(a1 + 23);
  if (v38 >= 0)
  {
    v39 = *(a1 + 23);
  }

  else
  {
    v39 = a1[1];
  }

  v40 = v47;
  v41 = v47;
  if ((v47 & 0x80u) != 0)
  {
    v40 = v46;
  }

  if (v39 == v40)
  {
    if (v38 >= 0)
    {
      v42 = a1;
    }

    else
    {
      v42 = *a1;
    }

    if ((v47 & 0x80u) == 0)
    {
      v43 = &__p;
    }

    else
    {
      v43 = __p;
    }

    if (!memcmp(v42, v43, v39))
    {
      v9 = 6;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  if (v41 < 0)
  {
    operator delete(__p);
  }

  return v9;
}

BOOL sub_100727DAC(uint64_t a1, uint64_t *a2, const std::string *a3, CFArrayRef *a4, uint64_t a5)
{
  if (*a4)
  {
    Count = CFArrayGetCount(*a4);
    if (qword_1025D46B0 != -1)
    {
      sub_10191F0D8();
    }

    v9 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
    {
      if (*(a2 + 23) >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = a3;
      }

      else
      {
        v11 = a3->__r_.__value_.__r.__words[0];
      }

      *buf = 136446722;
      *&buf[4] = v10;
      v84 = 2082;
      *v85 = v11;
      *&v85[8] = 1026;
      *&v85[10] = Count;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,%{public}s,%{public}s,coordinate count,%{public}d", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D46B0 != -1)
      {
        sub_10191F1DC();
      }

      if (*(a2 + 23) >= 0)
      {
        v59 = a2;
      }

      else
      {
        v59 = *a2;
      }

      if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v60 = a3;
      }

      else
      {
        v60 = a3->__r_.__value_.__r.__words[0];
      }

      *v74 = 136446722;
      *&v74[4] = v59;
      v75 = 2082;
      v76 = v60;
      v77 = 1026;
      v78 = Count;
      v61 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMapMatcherOperatingPolicy::CLMapMatcherOperatingRegions::fillPolygonData(const std::string &, const std::string &, const CFArrayRef &, std::vector<CLMapMatcherOperatingPolygon> &)", "%s\n", v61);
      if (v61 != buf)
      {
        free(v61);
      }
    }

    __src = 0;
    v72 = 0;
    v73 = 0;
    if (Count < 1)
    {
      return 1;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = Count & 0x7FFFFFFF;
      p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a4, v12);
        v17 = ValueAtIndex;
        if (ValueAtIndex)
        {
          if ([ValueAtIndex containsString:{@", "}])
          {
            v18 = [v17 componentsSeparatedByString:{@", "}];
            v19 = v18;
            if (!v18 || [v18 count] != 2)
            {
              if (qword_1025D46B0 != -1)
              {
                sub_10191F1DC();
                p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
              }

              v50 = p_info[215];
              if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
              {
                v51 = *(a2 + 23);
                v52 = *a2;
                v53 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
                v54 = a3->__r_.__value_.__r.__words[0];
                v55 = [v19 count];
                if (v53 >= 0)
                {
                  v56 = a3;
                }

                else
                {
                  v56 = v54;
                }

                *buf = 136446722;
                if (v51 >= 0)
                {
                  v57 = a2;
                }

                else
                {
                  v57 = v52;
                }

                *&buf[4] = v57;
                v84 = 2082;
                *v85 = v56;
                *&v85[8] = 1026;
                *&v85[10] = v55;
                _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_ERROR, "CLMM,MA-OTA,%{public}s,%{public}s,invalid split counts in reading coordinate data,%{public}d", buf, 0x1Cu);
              }

              if (sub_10000A100(121, 0))
              {
                sub_10191F310(buf);
                v62 = *(a2 + 23);
                v63 = *a2;
                v64 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
                v65 = a3->__r_.__value_.__r.__words[0];
                v66 = [v19 count];
                v67 = (v64 >= 0 ? a3 : v65);
                *v74 = 136446722;
                v68 = (v62 >= 0 ? a2 : v63);
                *&v74[4] = v68;
                v75 = 2082;
                v76 = v67;
                v77 = 1026;
                v78 = v66;
                v69 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 0, "BOOL CLMapMatcherOperatingPolicy::CLMapMatcherOperatingRegions::fillPolygonData(const std::string &, const std::string &, const CFArrayRef &, std::vector<CLMapMatcherOperatingPolygon> &)", "%s\n", v69);
                if (v69 != buf)
                {
                  free(v69);
                }
              }

              goto LABEL_90;
            }

            [objc_msgSend(v19 objectAtIndexedSubscript:{0), "doubleValue"}];
            v21 = v20;
            [objc_msgSend(v19 objectAtIndexedSubscript:{1), "doubleValue"}];
            v23 = v22;
            if (qword_1025D46B0 != -1)
            {
              sub_10191F1DC();
              p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            }

            v24 = p_info[215];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              if (*(a2 + 23) >= 0)
              {
                v25 = a2;
              }

              else
              {
                v25 = *a2;
              }

              if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v26 = a3;
              }

              else
              {
                v26 = a3->__r_.__value_.__r.__words[0];
              }

              *buf = 136447235;
              *&buf[4] = v25;
              v84 = 2082;
              *v85 = v26;
              *&v85[8] = 1026;
              *&v85[10] = v12;
              *&v85[14] = 2053;
              *&v85[16] = v21;
              *&v85[24] = 2053;
              *&v85[26] = v23;
              _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,%{public}s,%{public}s,coordinate%{public}d,ll,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x30u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10191F310(buf);
              p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
              v46 = *(a2 + 23) >= 0 ? a2 : *a2;
              v47 = (a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? a3 : a3->__r_.__value_.__r.__words[0];
              *v74 = 136447235;
              *&v74[4] = v46;
              v75 = 2082;
              v76 = v47;
              v77 = 1026;
              v78 = v12;
              v79 = 2053;
              v80 = v21;
              v81 = 2053;
              v82 = v23;
              v48 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMapMatcherOperatingPolicy::CLMapMatcherOperatingRegions::fillPolygonData(const std::string &, const std::string &, const CFArrayRef &, std::vector<CLMapMatcherOperatingPolygon> &)", "%s\n", v48);
              if (v48 != buf)
              {
                free(v48);
              }
            }

            v27 = v72;
            if (v72 >= v73)
            {
              v35 = __src;
              v36 = v72 - __src;
              v37 = (v72 - __src) >> 4;
              v38 = v37 + 1;
              if ((v37 + 1) >> 60)
              {
                sub_10028C64C();
              }

              v39 = v73 - __src;
              if ((v73 - __src) >> 3 > v38)
              {
                v38 = v39 >> 3;
              }

              v40 = v39 >= 0x7FFFFFFFFFFFFFF0;
              v41 = 0xFFFFFFFFFFFFFFFLL;
              if (!v40)
              {
                v41 = v38;
              }

              if (v41)
              {
                sub_1003E5FE8(&__src, v41);
              }

              v42 = (v72 - __src) >> 4;
              v43 = (16 * v37);
              *v43 = v21;
              v43[1] = v23;
              v28 = 16 * v37 + 16;
              v44 = (16 * v37 - 16 * v42);
              memcpy(&v43[-2 * v42], v35, v36);
              v45 = __src;
              __src = v44;
              v72 = v28;
              v73 = 0;
              if (v45)
              {
                operator delete(v45);
              }

              p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            }

            else
            {
              *v72 = v21;
              *(v27 + 1) = v23;
              v28 = (v27 + 16);
            }

            v72 = v28;
          }
        }

        else
        {
          if (qword_1025D46B0 != -1)
          {
            sub_10191F1DC();
            p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          }

          v29 = p_info[215];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            if (*(a2 + 23) >= 0)
            {
              v30 = a2;
            }

            else
            {
              v30 = *a2;
            }

            if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v31 = a3;
            }

            else
            {
              v31 = a3->__r_.__value_.__r.__words[0];
            }

            *buf = 136446466;
            *&buf[4] = v30;
            v84 = 2082;
            *v85 = v31;
            _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_ERROR, "CLMM,MA-OTA,%{public}s,%{public}s,NULL arrayElements", buf, 0x16u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_10191F310(buf);
            p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
            v32 = *(a2 + 23) >= 0 ? a2 : *a2;
            v33 = (a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? a3 : a3->__r_.__value_.__r.__words[0];
            *v74 = 136446466;
            *&v74[4] = v32;
            v75 = 2082;
            v76 = v33;
            v34 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "BOOL CLMapMatcherOperatingPolicy::CLMapMatcherOperatingRegions::fillPolygonData(const std::string &, const std::string &, const CFArrayRef &, std::vector<CLMapMatcherOperatingPolygon> &)", "%s\n", v34);
            if (v34 != buf)
            {
              free(v34);
            }
          }
        }

        v13 = ++v12 >= v14;
      }

      while (v14 != v12);
      v49 = __src;
      if (__src == v72)
      {
        goto LABEL_91;
      }

      *buf = 0xBFF0000000000000;
      buf[8] = 0;
      memset(&v85[2], 0, 32);
      v86 = 0u;
      v87 = 0u;
      v88 = 0;
      sub_1007286F0(buf, a3, &__src);
      sub_1007289F4(a5, buf);
      *v74 = &v87;
      sub_1002EC52C(v74);
      if (*&v85[26])
      {
        *&v86 = *&v85[26];
        operator delete(*&v85[26]);
      }

      if ((v85[25] & 0x80000000) != 0)
      {
        operator delete(*&v85[2]);
      }

LABEL_90:
      v49 = __src;
LABEL_91:
      if (v49)
      {
        v72 = v49;
        operator delete(v49);
      }
    }
  }

  else
  {
    return 0;
  }

  return v13;
}

void sub_100728698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007286F0(uint64_t a1, const std::string *a2, uint64_t **a3)
{
  sub_1002EC580((a1 + 64));
  v6 = (a1 + 40);
  *(a1 + 48) = *(a1 + 40);
  std::string::operator=((a1 + 16), a2);
  v7 = *a3;
  v8 = a3[1];
  if (*a3 != v8)
  {
    v9 = *(a1 + 48);
    do
    {
      v10 = *v7;
      v11 = v7[1];
      v12 = *(a1 + 56);
      if (v9 >= v12)
      {
        v13 = (v9 - *v6) >> 4;
        if ((v13 + 1) >> 60)
        {
          sub_10028C64C();
        }

        v14 = v12 - *v6;
        v15 = v14 >> 3;
        if (v14 >> 3 <= (v13 + 1))
        {
          v15 = v13 + 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF0)
        {
          v16 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          sub_1003E5FE8(a1 + 40, v16);
        }

        v17 = (16 * v13);
        *v17 = v11;
        v17[1] = v10;
        v9 = (16 * v13 + 16);
        v18 = *(a1 + 40);
        v19 = *(a1 + 48) - v18;
        v20 = 16 * v13 - v19;
        memcpy(v17 - v19, v18, v19);
        v21 = *(a1 + 40);
        *(a1 + 40) = v20;
        *(a1 + 48) = v9;
        *(a1 + 56) = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v9 = v11;
        v9[1] = v10;
        v9 += 2;
      }

      *(a1 + 48) = v9;
      v7 += 2;
    }

    while (v7 != v8);
  }

  if (qword_1025D46B0 != -1)
  {
    sub_10191F0D8();
  }

  v22 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
  {
    v23 = a1 + 16;
    if (*(a1 + 39) < 0)
    {
      v23 = *(a1 + 16);
    }

    v24 = (a3[1] - *a3) >> 4;
    *buf = 136446466;
    *&buf[4] = v23;
    v27 = 2050;
    v28 = v24;
    _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,Polygon,%{public}s,set with,%{public}lu,coordinates", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D46B0 != -1)
    {
      sub_10191F1DC();
    }

    v25 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatcherOperatingPolicy::CLMapMatcherOperatingPolygon::setPolygon(const std::string &, const std::vector<CLClientLocationCoordinate> &)", "%s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  *buf = 0x3FF0000000000000;
  sub_10072F128((a1 + 40), buf);
}

uint64_t sub_1007289F4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_10072FCB0(a1, a2);
  }

  else
  {
    sub_10072FBB8(a1, a2);
    result = v3 + 88;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_100729890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  a25 = &a16;
  sub_1001E56E8(&a25);
  _Unwind_Resume(a1);
}

uint64_t sub_1007298FC(uint64_t a1, int a2, int8x16_t *a3)
{
  if (*a1)
  {
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    v9 = *(a1 + 48);
    v8 = *(a1 + 56);
    v10 = sub_1000081AC();
    v11 = *(a1 + 8);
    v12 = vabdd_f64(v10, v11);
    if (v11 >= 0.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = -1.0;
    }

    if (qword_1025D46B0 != -1)
    {
      sub_10191F0D8();
    }

    v14 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      v15 = (*(a1 + 32) - *(a1 + 24)) >> 2;
      v16 = -1171354717 * ((*(a1 + 56) - *(a1 + 48)) >> 3);
      v17 = -1171354717 * ((*(a1 + 80) - *(a1 + 72)) >> 3);
      v18 = *(a1 + 16);
      *buf = 67242240;
      v45 = a2;
      v46 = 1026;
      v47 = v6 == v7;
      v48 = 1026;
      v49 = v15;
      v50 = 1026;
      *v51 = v8 == v9;
      *&v51[4] = 1026;
      *&v51[6] = v16;
      v52 = 1026;
      v53 = 0;
      v54 = 1026;
      v55 = v17;
      v56 = 2050;
      v57 = v13;
      v58 = 1026;
      v59 = v18;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "CLMM,MA-OTA,initialCheck,signalEnv,%{public}d,isSEOk,%{public}d,size,%{public}d,isPolygonOK,%{public}d,size,%{public}d,isInsideSkippedPolygon,%{public}d,size,%{public}d,dtSinceLastMMStateChangedBasedOnSE,%{public}.1lf,mmStateBasedOnSE,%{public}d", buf, 0x3Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D46B0 != -1)
      {
        sub_10191F1DC();
      }

      v43 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMapMatcherOperatingPolicy::CLMapMatcherOperatingRegions::canMapMatch(const CLSignalEnvironmentProvider_Type::SignalEnvironmentType, const CLClientLocationCoordinate &)", "%s\n", v43);
      if (v43 != buf)
      {
        free(v43);
      }
    }

    if (v6 != v7)
    {
      v20 = *(a1 + 24);
      v19 = *(a1 + 32);
      if (v20 == v19)
      {
        v23 = 0;
      }

      else
      {
        v21 = v20 + 4;
        do
        {
          v22 = *(v21 - 4);
          v23 = v22 == a2;
          v24 = v22 == a2 || v21 == v19;
          v21 += 4;
        }

        while (!v24);
      }

      v27 = *(a1 + 16);
      if (v27 == v23 || (*(a1 + 8) >= 0.0 ? (v28 = v13 <= 120.0) : (v28 = 0), v28))
      {
        if ((v27 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (qword_1025D46B0 != -1)
        {
          sub_10191F1DC();
        }

        v29 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
        {
          v30 = *(a1 + 16);
          *buf = 67240448;
          v45 = v30;
          v46 = 1026;
          v47 = v23;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "CLMM,MA-OTA,seStateChanged,prevSEState,%{public}d,newSEState,%{public}d", buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10191F444((a1 + 16), v23);
        }

        *(a1 + 16) = v23;
        *(a1 + 8) = v10;
        if (!v23)
        {
LABEL_38:
          if (qword_1025D46B0 != -1)
          {
            sub_10191F1DC();
          }

          v31 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67240704;
            v45 = 0;
            v46 = 1026;
            v47 = v8 == v9;
            v48 = 1026;
            v49 = 0;
            _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "CLMM,MA-OTA,seCheck,isSEOk,%{public}d,isPolygonOK,%{public}d,isInsideSkippedPolygon,%{public}d,early return due to failed se check - polygon not checked)", buf, 0x14u);
          }

          result = sub_10000A100(121, 2);
          if (result)
          {
            sub_10191F548((v8 == v9));
            return 0;
          }

          return result;
        }
      }
    }

    if (v8 == v9)
    {
LABEL_65:
      v38 = *(a1 + 72);
      v37 = *(a1 + 80);
      while (1)
      {
        if (v38 == v37)
        {
          v39 = 0;
          goto LABEL_79;
        }

        if (sub_10072A0D0(v38, a3))
        {
          break;
        }

        v38 += 88;
      }

      if (qword_1025D46B0 != -1)
      {
        sub_10191F1DC();
      }

      v40 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        v41 = (v38 + 16);
        if (*(v38 + 39) < 0)
        {
          v41 = *v41;
        }

        *buf = 67240963;
        v45 = 1;
        v46 = 1026;
        v47 = 1;
        v48 = 1026;
        v49 = 1;
        v50 = 2081;
        *v51 = v41;
        _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "CLMM,MA-OTA,skipRegionCheck,isSEOk,%{public}d,isPolygonOK,%{public}d,isInsideSkippedPolygon,%{public}d,inside,%{private}s", buf, 0x1Eu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191F868(v38);
      }

      v39 = 1;
LABEL_79:
      if (qword_1025D46B0 != -1)
      {
        sub_10191F1DC();
      }

      v42 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67240704;
        v45 = 1;
        v46 = 1026;
        v47 = 1;
        v48 = 1026;
        v49 = v39;
        _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEBUG, "CLMM,MA-OTA,final,isSEOk,%{public}d,isPolygonOK,%{public}d,isInsideSkippedPolygon,%{public}d", buf, 0x14u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191F97C(v39);
      }

      return v39 ^ 1;
    }

    else
    {
      v32 = *(a1 + 48);
      v33 = *(a1 + 56);
      while (v32 != v33)
      {
        if (sub_10072A0D0(v32, a3))
        {
          if (qword_1025D46B0 != -1)
          {
            sub_10191F1DC();
          }

          v35 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
          {
            v36 = v32 + 16;
            if (v32[39] < 0)
            {
              v36 = *v36;
            }

            *buf = 67240963;
            v45 = 1;
            v46 = 1026;
            v47 = 1;
            v48 = 1026;
            v49 = 0;
            v50 = 2081;
            *v51 = v36;
            _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "CLMM,MA-OTA,polygonCheck,isSEOk,%{public}d,isPolygonOK,%{public}d,isInsideSkippedPolygon,%{public}d,inside,%{private}s", buf, 0x1Eu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10191F654(v32);
          }

          goto LABEL_65;
        }

        v32 += 88;
      }

      if (qword_1025D46B0 != -1)
      {
        sub_10191F1DC();
      }

      v34 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67240704;
        v45 = 1;
        v46 = 1026;
        v47 = 0;
        v48 = 1026;
        v49 = 0;
        _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "CLMM,MA-OTA,polygonCheck,isSEOk,%{public}d,isPolygonOK,%{public}d,isInsideSkippedPolygon,%{public}d,early return due to failed polygon check - skipregion not checked)", buf, 0x14u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_10191F768();
        return 0;
      }
    }

    return result;
  }

  if (qword_1025D46B0 != -1)
  {
    sub_10191F0D8();
  }

  v25 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "CLMM,MA-OTA,MM disabled for this country", buf, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10191F354();
    return 0;
  }

  return result;
}