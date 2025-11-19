@interface ThermalManager
- (ThermalManager)initWithConfig:(__CFDictionary *)a3;
- (void)checkForArcOverride:(__SCPreferences *)a3 key:(__CFString *)a4;
- (void)checkForLifetimeServoOverride:(__SCPreferences *)a3 key:(__CFString *)a4;
- (void)createNewProduct:(__CFRunLoop *)a3;
- (void)dealloc;
- (void)initDataCollection;
- (void)updatePrefs:(__SCPreferences *)a3 :(BOOL)a4;
@end

@implementation ThermalManager

- (ThermalManager)initWithConfig:(__CFDictionary *)a3
{
  v5.receiver = self;
  v5.super_class = ThermalManager;
  result = [(ThermalManager *)&v5 init];
  if (result)
  {
    result->product = 0;
    result->_plistConfig = a3;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ThermalManager;
  [(ThermalManager *)&v3 dealloc];
}

- (void)createNewProduct:(__CFRunLoop *)a3
{
  self->localMainRunloop = a3;
  productName = self->productName;
  if (productName > 14994604)
  {
    if (productName <= 17463759)
    {
      if (productName > 16110159)
      {
        if (productName <= 16800719)
        {
          if (productName > 16445679)
          {
            if (productName > 16500799)
            {
              if (productName == 16500800)
              {
                v4 = off_100084C50;
              }

              else
              {
                if (productName != 16796240)
                {
                  return;
                }

                v4 = off_100084A58;
              }
            }

            else if (productName == 16445680)
            {
              v4 = off_100084BC8;
            }

            else
            {
              if (productName != 16496400)
              {
                return;
              }

              v4 = off_100084A38;
            }

            goto LABEL_309;
          }

          if (productName <= 16189199)
          {
            if (productName == 16110160)
            {
              v4 = off_100084CA0;
            }

            else
            {
              if (productName != 16155600)
              {
                return;
              }

              v4 = off_100084C68;
            }

            goto LABEL_309;
          }

          if (productName == 16189200)
          {
            goto LABEL_261;
          }

          if (productName != 16210960)
          {
            return;
          }

          goto LABEL_214;
        }

        if (productName <= 17132239)
        {
          if (productName <= 16826399)
          {
            if (productName == 16800720)
            {
              v4 = off_100084BB8;
            }

            else
            {
              if (productName != 16822000)
              {
                return;
              }

              v4 = off_100084B30;
            }

            goto LABEL_309;
          }

          if (productName != 16826400)
          {
            if (productName != 17127760)
            {
              return;
            }

            v4 = off_100084C28;
            goto LABEL_309;
          }

          goto LABEL_264;
        }

        if (productName > 17151999)
        {
          switch(productName)
          {
            case 17152000:
              v4 = off_100084C38;
              break;
            case 17331600:
              v4 = off_100084A30;
              break;
            case 17459280:
              v4 = off_100084C98;
              break;
            default:
              return;
          }

          goto LABEL_309;
        }

        if (productName != 17132240)
        {
          if (productName != 17147600)
          {
            return;
          }

          v4 = &off_100084D40;
          goto LABEL_309;
        }

LABEL_265:
        v4 = off_100084A70;
        goto LABEL_309;
      }

      if (productName > 15541839)
      {
        if (productName <= 15865519)
        {
          if (productName > 15621199)
          {
            if (productName == 15621200)
            {
              v4 = off_100084AB0;
            }

            else
            {
              if (productName != 15826000)
              {
                return;
              }

              v4 = off_100084AD8;
            }

            goto LABEL_309;
          }

          if (productName != 15541840)
          {
            if (productName != 15598960)
            {
              return;
            }

            v4 = off_100084A88;
            goto LABEL_309;
          }

          goto LABEL_259;
        }

        if (productName > 15917199)
        {
          if (productName == 15917200)
          {
            v4 = off_100084C08;
            goto LABEL_309;
          }

          v5 = 16104400;
          goto LABEL_201;
        }

        if (productName == 15865520)
        {
LABEL_169:
          v4 = off_100084A20;
          goto LABEL_309;
        }

        if (productName != 15893200)
        {
          return;
        }

        goto LABEL_119;
      }

      if (productName > 15281439)
      {
        if (productName > 15308879)
        {
          if (productName == 15308880)
          {
            v4 = off_100084B28;
          }

          else
          {
            if (productName != 15325200)
            {
              return;
            }

            v4 = off_100084AA0;
          }
        }

        else if (productName == 15281440)
        {
          v4 = off_100084D18;
        }

        else
        {
          if (productName != 15285360)
          {
            return;
          }

          v4 = off_100084BE0;
        }

        goto LABEL_309;
      }

      if (productName > 15018799)
      {
        if (productName == 15018800)
        {
          v4 = off_100084C88;
        }

        else
        {
          if (productName != 15025200)
          {
            return;
          }

          v4 = off_100084D38;
        }

        goto LABEL_309;
      }

      if (productName != 14994605)
      {
        v6 = 14995280;
        goto LABEL_51;
      }

LABEL_98:
      v4 = off_100084D10;
LABEL_309:
      self->product = [objc_alloc(*v4) initProduct:self];
      return;
    }

    if (productName <= 18137599)
    {
      if (productName <= 17804239)
      {
        if (productName <= 17790799)
        {
          if (productName <= 17477599)
          {
            if (productName == 17463760)
            {
              v4 = off_100084A80;
            }

            else
            {
              if (productName != 17473200)
              {
                return;
              }

              v4 = off_100084B20;
            }

            goto LABEL_309;
          }

          if (productName != 17477600)
          {
            if (productName != 17486400)
            {
              return;
            }

            v4 = off_100084CF8;
            goto LABEL_309;
          }

          goto LABEL_260;
        }

        if (productName <= 17798799)
        {
          if (productName == 17790800)
          {
            v4 = off_100084BF8;
            goto LABEL_309;
          }

          v7 = 17795280;
LABEL_138:
          if (productName != v7)
          {
            return;
          }

          v4 = off_100084B90;
          goto LABEL_309;
        }

        if (productName == 17798800)
        {
          v4 = off_100084AA8;
          goto LABEL_309;
        }

        if (productName == 17803200)
        {
LABEL_262:
          v4 = off_100084CC0;
          goto LABEL_309;
        }

        return;
      }

      if (productName <= 18124399)
      {
        if (productName > 17937999)
        {
          if (productName == 17938000)
          {
            v4 = off_100084BA0;
          }

          else
          {
            if (productName != 18122320)
            {
              return;
            }

            v4 = off_100084BB0;
          }
        }

        else if (productName == 17804240)
        {
          v4 = off_100084B38;
        }

        else
        {
          if (productName != 17812000)
          {
            return;
          }

          v4 = off_100084B60;
        }

        goto LABEL_309;
      }

      if (productName > 18128799)
      {
        if (productName == 18128800)
        {
          v4 = off_100084CC8;
        }

        else
        {
          if (productName != 18135760)
          {
            return;
          }

          v4 = off_100084D28;
        }

        goto LABEL_309;
      }

      if (productName != 18124400)
      {
        if (productName == 18126800)
        {
LABEL_268:
          v4 = off_100084CF0;
          goto LABEL_309;
        }

        return;
      }
    }

    else
    {
      if (productName > 30114159)
      {
        if (productName > 32298159)
        {
          if (productName <= 32753999)
          {
            if (productName == 32298160)
            {
              v4 = off_100084CE8;
            }

            else
            {
              if (productName != 32306000)
              {
                return;
              }

              v4 = off_100084B10;
            }

            goto LABEL_309;
          }

          if (productName == 32754000)
          {
            goto LABEL_160;
          }

          if (productName == 32762960)
          {
            goto LABEL_266;
          }

          v5 = 1803554640;
          goto LABEL_201;
        }

        if (productName <= 32135759)
        {
          if (productName != 30114160)
          {
            v8 = 30122400;
LABEL_159:
            if (productName != v8)
            {
              return;
            }

LABEL_160:
            v4 = off_100084C30;
            goto LABEL_309;
          }

LABEL_263:
          v4 = off_100084C18;
          goto LABEL_309;
        }

        if (productName == 32135760)
        {
LABEL_249:
          v4 = off_100084A40;
          goto LABEL_309;
        }

        if (productName != 32144720)
        {
          return;
        }

        goto LABEL_245;
      }

      if (productName > 18458319)
      {
        if (productName > 18789839)
        {
          if (productName == 18789840)
          {
            v4 = off_100084A60;
          }

          else
          {
            if (productName != 19462720)
            {
              return;
            }

            v4 = off_100084B00;
          }

          goto LABEL_309;
        }

        if (productName == 18458320)
        {
          v4 = off_100084CD0;
          goto LABEL_309;
        }

        if (productName != 18467280)
        {
          return;
        }
      }

      else if (productName > 18453839)
      {
        if (productName != 18453840)
        {
          if (productName != 18454400)
          {
            return;
          }

          v4 = off_100084B70;
          goto LABEL_309;
        }
      }

      else if (productName != 18137600)
      {
        if (productName != 18450400)
        {
          return;
        }

        goto LABEL_98;
      }
    }

    v4 = off_100084B98;
    goto LABEL_309;
  }

  if (productName <= 11969634)
  {
    if (productName > 242139)
    {
      if (productName <= 299664)
      {
        if (productName > 250914)
        {
          if (productName > 255334)
          {
            if (productName == 255335)
            {
              v4 = off_100084BA8;
            }

            else
            {
              if (productName != 255400)
              {
                return;
              }

              v4 = off_100084B18;
            }
          }

          else if (productName == 250915)
          {
            v4 = off_100084A78;
          }

          else
          {
            if (productName != 250980)
            {
              return;
            }

            v4 = off_100084C20;
          }
        }

        else if (productName > 246559)
        {
          if (productName == 246560)
          {
            v4 = off_100084B48;
          }

          else
          {
            if (productName != 246885)
            {
              return;
            }

            v4 = off_100084C70;
          }
        }

        else if (productName == 242140)
        {
          v4 = off_100084B40;
        }

        else
        {
          if (productName != 246495)
          {
            return;
          }

          v4 = off_100084C48;
        }

        goto LABEL_309;
      }

      if (productName <= 11215374)
      {
        if (productName > 299924)
        {
          if (productName == 299925)
          {
            v4 = off_100084AC8;
          }

          else
          {
            if (productName != 300055)
            {
              return;
            }

            v4 = off_100084D20;
          }
        }

        else if (productName == 299665)
        {
          v4 = off_100084A50;
        }

        else
        {
          if (productName != 299730)
          {
            return;
          }

          v4 = off_100084CE0;
        }

        goto LABEL_309;
      }

      if (productName > 11431954)
      {
        if (productName != 11431955)
        {
          if (productName == 11730370)
          {
            v4 = off_100084CB0;
            goto LABEL_309;
          }

          if (productName != 11938760)
          {
            return;
          }

          goto LABEL_269;
        }

        goto LABEL_245;
      }

      if (productName != 11215375)
      {
        v9 = 11428770;
LABEL_248:
        if (productName != v9)
        {
          return;
        }

        goto LABEL_249;
      }

LABEL_267:
      v4 = off_100084B68;
      goto LABEL_309;
    }

    if (productName <= 233234)
    {
      if (productName <= 224719)
      {
        if (productName > 224394)
        {
          if (productName == 224395)
          {
            v4 = off_100084C40;
          }

          else
          {
            if (productName != 224655)
            {
              return;
            }

            v4 = off_100084B80;
          }
        }

        else if (productName == 220170)
        {
          v4 = off_100084B58;
        }

        else
        {
          if (productName != 220235)
          {
            return;
          }

          v4 = off_100084A90;
        }

        goto LABEL_309;
      }

      if (productName <= 229139)
      {
        if (productName == 224720)
        {
          v4 = off_100084C78;
        }

        else
        {
          if (productName != 229075)
          {
            return;
          }

          v4 = off_100084C60;
        }

        goto LABEL_309;
      }

      if (productName == 229140)
      {
        v4 = off_100084AF8;
        goto LABEL_309;
      }

      v9 = 233170;
      goto LABEL_248;
    }

    if (productName <= 237589)
    {
      if (productName > 233559)
      {
        if (productName == 233560)
        {
          v4 = off_100084CD8;
        }

        else
        {
          if (productName != 233625)
          {
            return;
          }

          v4 = off_100084AD0;
        }

        goto LABEL_309;
      }

      if (productName != 233235)
      {
        if (productName != 233495)
        {
          return;
        }

        v4 = off_100084BC0;
        goto LABEL_309;
      }

      goto LABEL_245;
    }

    if (productName <= 237719)
    {
      if (productName != 237590)
      {
        v8 = 237655;
        goto LABEL_159;
      }

      goto LABEL_263;
    }

    if (productName != 237720)
    {
      if (productName != 242075)
      {
        return;
      }

      v4 = off_100084C58;
      goto LABEL_309;
    }

LABEL_266:
    v4 = off_100084D00;
    goto LABEL_309;
  }

  if (productName > 14204204)
  {
    if (productName > 14689359)
    {
      if (productName <= 14731679)
      {
        if (productName > 14724799)
        {
          if (productName == 14724800)
          {
            v4 = off_100084B88;
          }

          else
          {
            if (productName != 14729200)
            {
              return;
            }

            v4 = off_100084BD8;
          }

          goto LABEL_309;
        }

        if (productName != 14689360)
        {
          if (productName != 14701280)
          {
            return;
          }

          v4 = off_100084C80;
          goto LABEL_309;
        }

LABEL_269:
        v4 = off_100084BD0;
        goto LABEL_309;
      }

      if (productName > 14969679)
      {
        switch(productName)
        {
          case 14969680:
            v4 = off_100084B50;
            break;
          case 14973520:
            v4 = off_100084B08;
            break;
          case 14991360:
            v4 = off_100084AE8;
            break;
          default:
            return;
        }

        goto LABEL_309;
      }

      if (productName != 14731680)
      {
        if (productName != 14733200)
        {
          return;
        }

        v4 = off_100084D08;
        goto LABEL_309;
      }

      goto LABEL_268;
    }

    if (productName <= 14438639)
    {
      if (productName > 14415119)
      {
        if (productName == 14415120)
        {
          v4 = off_100084CA8;
        }

        else
        {
          if (productName != 14434720)
          {
            return;
          }

          v4 = off_100084A68;
        }

        goto LABEL_309;
      }

      if (productName != 14204205)
      {
        if (productName != 14401360)
        {
          return;
        }

        v4 = off_100084C90;
        goto LABEL_309;
      }

LABEL_260:
      v4 = off_100084AF0;
      goto LABEL_309;
    }

    if (productName <= 14468754)
    {
      if (productName == 14438640)
      {
        v4 = off_100084D30;
        goto LABEL_309;
      }

      v7 = 14462320;
      goto LABEL_138;
    }

    if (productName != 14468755)
    {
      if (productName != 14685520)
      {
        return;
      }

      v4 = off_100084BE8;
      goto LABEL_309;
    }

    goto LABEL_262;
  }

  if (productName > 13175059)
  {
    if (productName <= 13923599)
    {
      if (productName > 13795759)
      {
        if (productName == 13795760)
        {
          v4 = off_100084C10;
          goto LABEL_309;
        }

        if (productName == 13799680)
        {
          goto LABEL_267;
        }

        return;
      }

      if (productName != 13175060)
      {
        if (productName != 13675105)
        {
          return;
        }

LABEL_264:
        v4 = off_100084AC0;
        goto LABEL_309;
      }

LABEL_214:
      v4 = off_100084BF0;
      goto LABEL_309;
    }

    if (productName <= 14066239)
    {
      if (productName != 13923600)
      {
        v9 = 14062320;
        goto LABEL_248;
      }

      goto LABEL_265;
    }

    if (productName != 14066240)
    {
      if (productName != 14121040)
      {
        return;
      }

      v4 = off_100084A98;
      goto LABEL_309;
    }

LABEL_245:
    v4 = off_100084AE0;
    goto LABEL_309;
  }

  if (productName <= 12916879)
  {
    if (productName <= 12631399)
    {
      if (productName == 11969635)
      {
        v4 = off_100084A48;
        goto LABEL_309;
      }

      v6 = 12187320;
LABEL_51:
      if (productName != v6)
      {
        return;
      }

      v4 = off_100084C00;
      goto LABEL_309;
    }

    if (productName != 12631400)
    {
      if (productName != 12894390)
      {
        return;
      }

      goto LABEL_169;
    }

LABEL_259:
    v4 = off_100084A28;
    goto LABEL_309;
  }

  if (productName <= 13087959)
  {
    if (productName != 12916880)
    {
      v5 = 13083865;
LABEL_201:
      if (productName != v5)
      {
        return;
      }

      goto LABEL_202;
    }

LABEL_119:
    v4 = off_100084AB8;
    goto LABEL_309;
  }

  if (productName == 13087960)
  {
LABEL_202:
    v4 = off_100084B78;
    goto LABEL_309;
  }

  if (productName == 13157380)
  {
LABEL_261:
    v4 = off_100084CB8;
    goto LABEL_309;
  }
}

- (void)updatePrefs:(__SCPreferences *)a3 :(BOOL)a4
{
  sub_10002C640(a3, self, a4);
  Value = SCPreferencesGetValue(a3, @"overrideSensorLI");
  byte_1000ABC39 = Value == kCFBooleanTrue;
  if (byte_1000AB2F8 != 1 || (v7 = qword_1000AB718, !os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT)))
  {
    if (Value != kCFBooleanTrue)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  v8 = "dis";
  if (Value == kCFBooleanTrue)
  {
    v8 = "en";
  }

  *buf = 136315138;
  v95[0] = v8;
  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> sensor status thermalOverrideLoadingIndex %sabled", buf, 0xCu);
  if (byte_1000ABC39)
  {
LABEL_8:
    v9 = SCPreferencesGetValue(a3, @"setSensorLI");
    if (v9)
    {
      v10 = v9;
      v11 = CFGetTypeID(v9);
      if (v11 == CFArrayGetTypeID() && CFArrayGetCount(v10) == 2)
      {
        LODWORD(v92) = 0;
        valuePtr = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v10, 0);
        CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &v92);
        v13 = CFArrayGetValueAtIndex(v10, 1);
        CFNumberGetValue(v13, kCFNumberIntType, &valuePtr);
        if (byte_1000AB2F8 == 1)
        {
          v14 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            LODWORD(v95[0]) = v92;
            WORD2(v95[0]) = 1024;
            *(v95 + 6) = valuePtr;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "<Notice> Updating Component ID: %d with loading index of %d", buf, 0xEu);
          }
        }

        [(CommonProduct *)self->product updateMaxLIFor:v92];
        SCPreferencesRemoveValue(a3, @"setSensorLI");
      }
    }

    byte_1000ABC39 = 0;
  }

LABEL_16:
  if (SCPreferencesGetValue(a3, @"removeOverrideSensorLI") == kCFBooleanTrue)
  {
    [(CommonProduct *)self->product clearLoadingIndexOverrides];
    SCPreferencesRemoveValue(a3, @"removeOverrideSensorLI");
    SCPreferencesRemoveValue(a3, @"overrideSensorLI");
    SCPreferencesCommitChanges(a3);
  }

  v15 = SCPreferencesGetValue(a3, @"currentComponent");
  if (v15)
  {
    *buf = 0;
    CFNumberGetValue(v15, kCFNumberIntType, buf);
    SCPreferencesRemoveValue(a3, @"currentComponent");
    LODWORD(v92) = [(CommonProduct *)self->product getCurrentMaxLIForComponent:*buf];
    v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v92);
    SCPreferencesSetValue(a3, @"getCurrentLI", v16);
    SCPreferencesCommitChanges(a3);
    CFRelease(v16);
  }

  v17 = SCPreferencesGetValue(a3, @"overrideControlEffort");
  byte_1000ABC3A = v17 == kCFBooleanTrue;
  if (byte_1000AB2F8 == 1)
  {
    v18 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v19 = "dis";
      if (v17 == kCFBooleanTrue)
      {
        v19 = "en";
      }

      *buf = 136315138;
      v95[0] = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "<Notice> sensor status thermalOverrideControlEffort %sabled", buf, 0xCu);
      if (byte_1000ABC3A)
      {
        goto LABEL_25;
      }

LABEL_33:
      [(CommonProduct *)self->product clearControlEffortOverrides];
      goto LABEL_34;
    }
  }

  if (v17 != kCFBooleanTrue)
  {
    goto LABEL_33;
  }

LABEL_25:
  v20 = SCPreferencesGetValue(a3, @"setSensorControlEffort");
  if (v20)
  {
    v21 = v20;
    v22 = CFGetTypeID(v20);
    if (v22 == CFArrayGetTypeID() && CFArrayGetCount(v21) == 2)
    {
      LODWORD(v92) = 0;
      valuePtr = 0;
      v23 = CFArrayGetValueAtIndex(v21, 0);
      CFNumberGetValue(v23, kCFNumberIntType, &v92);
      v24 = CFArrayGetValueAtIndex(v21, 1);
      CFNumberGetValue(v24, kCFNumberIntType, &valuePtr);
      if (byte_1000AB2F8 == 1)
      {
        v25 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          LODWORD(v95[0]) = v92;
          WORD2(v95[0]) = 1024;
          *(v95 + 6) = valuePtr;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "<Notice> Updating Component ID: %d with control effort of %d", buf, 0xEu);
        }
      }

      [(CommonProduct *)self->product updateControlEffortFor:v92];
    }
  }

LABEL_34:
  v26 = SCPreferencesGetValue(a3, @"hotSpotPIDTargetKey");
  if (v26)
  {
    v27 = v26;
    v28 = CFGetTypeID(v26);
    if (v28 == CFArrayGetTypeID() && CFArrayGetCount(v27) == 2)
    {
      LODWORD(v92) = 0;
      valuePtr = 0;
      v29 = CFArrayGetValueAtIndex(v27, 0);
      CFNumberGetValue(v29, kCFNumberIntType, &v92);
      v30 = CFArrayGetValueAtIndex(v27, 1);
      CFNumberGetValue(v30, kCFNumberIntType, &valuePtr);
      if (byte_1000AB2F8 == 1)
      {
        v31 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          LODWORD(v95[0]) = v92;
          WORD2(v95[0]) = 1024;
          *(v95 + 6) = valuePtr;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "<Notice> Updating Hotspot PID Target ID: %d with Target of %d", buf, 0xEu);
        }
      }

      [(CommonProduct *)self->product updateHotSpotPIDTargetFor:v92];
      if (SCPreferencesGetValue(a3, @"hotSpotPIDTargetKeyPersistentlyEnabled") != kCFBooleanTrue)
      {
        SCPreferencesRemoveValue(a3, @"hotSpotPIDTargetKey");
        SCPreferencesCommitChanges(a3);
      }
    }
  }

  if (SCPreferencesGetValue(a3, @"removeHotspotTargetOverrides") == kCFBooleanTrue)
  {
    [(CommonProduct *)self->product removeHotspotTargetOverrides];
    SCPreferencesRemoveValue(a3, @"removeHotspotTargetOverrides");
    SCPreferencesCommitChanges(a3);
  }

  v32 = SCPreferencesGetValue(a3, @"trapTarget");
  if (v32)
  {
    v33 = v32;
    v34 = CFGetTypeID(v32);
    if (v34 == CFArrayGetTypeID() && CFArrayGetCount(v33) == 2)
    {
      LODWORD(v92) = 0;
      valuePtr = 0;
      v35 = CFArrayGetValueAtIndex(v33, 0);
      CFNumberGetValue(v35, kCFNumberIntType, &v92);
      v36 = CFArrayGetValueAtIndex(v33, 1);
      CFNumberGetValue(v36, kCFNumberIntType, &valuePtr);
      if (byte_1000AB2F8 == 1)
      {
        v37 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          LODWORD(v95[0]) = v92;
          WORD2(v95[0]) = 1024;
          *(v95 + 6) = valuePtr;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "<Notice> Updating Trap Hotspot ID: %d with Target of %d", buf, 0xEu);
        }
      }

      [(CommonProduct *)self->product updateTrapTargetFor:v92];
      if (SCPreferencesGetValue(a3, @"trapTargetPersistentlyEnabled") != kCFBooleanTrue)
      {
        SCPreferencesRemoveValue(a3, @"trapTarget");
        SCPreferencesCommitChanges(a3);
      }
    }
  }

  v38 = SCPreferencesGetValue(a3, @"sleepTarget");
  if (v38)
  {
    v39 = v38;
    v40 = CFGetTypeID(v38);
    if (v40 == CFArrayGetTypeID() && CFArrayGetCount(v39) == 2)
    {
      LODWORD(v92) = 0;
      valuePtr = 0;
      v41 = CFArrayGetValueAtIndex(v39, 0);
      CFNumberGetValue(v41, kCFNumberIntType, &v92);
      v42 = CFArrayGetValueAtIndex(v39, 1);
      CFNumberGetValue(v42, kCFNumberIntType, &valuePtr);
      if (byte_1000AB2F8 == 1)
      {
        v43 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          LODWORD(v95[0]) = v92;
          WORD2(v95[0]) = 1024;
          *(v95 + 6) = valuePtr;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "<Notice> Updating Sleep Hotspot ID: %d with Target of %d", buf, 0xEu);
        }
      }

      [(CommonProduct *)self->product updateSleepTargetFor:v92];
      if (SCPreferencesGetValue(a3, @"sleepTargetPersistentlyEnabled") != kCFBooleanTrue)
      {
        SCPreferencesRemoveValue(a3, @"sleepTarget");
        SCPreferencesCommitChanges(a3);
      }
    }
  }

  [(ThermalManager *)self checkForLifetimeServoOverride:a3 key:@"LifetimeServoStateSaveIntervalMinutes"];
  [(ThermalManager *)self checkForLifetimeServoOverride:a3 key:@"LifetimeServoDieTempMaxMax"];
  [(ThermalManager *)self checkForLifetimeServoOverride:a3 key:@"LifetimeServoDieTempMaxAverage"];
  [(ThermalManager *)self checkForLifetimeServoOverride:a3 key:@"LifetimeServoIntegratorState_E"];
  [(ThermalManager *)self checkForLifetimeServoOverride:a3 key:@"LifetimeServoInstantaneousAF_E"];
  [(ThermalManager *)self checkForLifetimeServoOverride:a3 key:@"LifetimeServoIntegratorState_P"];
  [(ThermalManager *)self checkForLifetimeServoOverride:a3 key:@"LifetimeServoInstantaneousAF_P"];
  [(ThermalManager *)self checkForLifetimeServoOverride:a3 key:@"LifetimeServoIntegratorState_G"];
  [(ThermalManager *)self checkForLifetimeServoOverride:a3 key:@"LifetimeServoInstantaneousAF_G"];
  [(ThermalManager *)self checkForLifetimeServoOverride:a3 key:@"LifetimeServoDieTempTarget"];
  v44 = SCPreferencesGetValue(a3, @"kBatteryPercentRemainingKey");
  if (v44)
  {
    v45 = v44;
    v46 = CFGetTypeID(v44);
    if (v46 == CFNumberGetTypeID())
    {
      LODWORD(v92) = 0;
      CFNumberGetValue(v45, kCFNumberIntType, &v92);
      sub_100032448(v92);
      if (byte_1000AB2F8 == 1)
      {
        v47 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v95[0]) = v92;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "<Notice> Battery percent overriden to %d%%", buf, 8u);
        }
      }
    }

    if (SCPreferencesGetValue(a3, @"kBatteryPercentRemainingKeyPersistentlyEnabled") != kCFBooleanTrue)
    {
      SCPreferencesRemoveValue(a3, @"kBatteryPercentRemainingKey");
      if (!SCPreferencesCommitChanges(a3) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100051514();
      }
    }
  }

  v48 = SCPreferencesGetValue(a3, @"kBatteryRawGasGaugeSOCKey");
  if (v48)
  {
    v49 = v48;
    v50 = CFGetTypeID(v48);
    if (v50 == CFNumberGetTypeID())
    {
      *buf = 0;
      CFNumberGetValue(v49, kCFNumberIntType, buf);
      sub_1000326F0(*buf);
    }

    if (SCPreferencesGetValue(a3, @"kBatteryRawGasGaugeSOCKeyPersistentlyEnabled") != kCFBooleanTrue)
    {
      SCPreferencesRemoveValue(a3, @"kBatteryRawGasGaugeSOCKey");
      if (!SCPreferencesCommitChanges(a3) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100051514();
      }
    }
  }

  v51 = SCPreferencesGetValue(a3, @"kBatteryChemSOCKey");
  if (v51)
  {
    v52 = v51;
    v53 = CFGetTypeID(v51);
    if (v53 == CFNumberGetTypeID())
    {
      *buf = 0;
      CFNumberGetValue(v52, kCFNumberIntType, buf);
      sub_100032648(*buf);
    }

    if (SCPreferencesGetValue(a3, @"kBatteryChemSOCKeyPersistentlyEnabled") != kCFBooleanTrue)
    {
      SCPreferencesRemoveValue(a3, @"kBatteryChemSOCKey");
      if (!SCPreferencesCommitChanges(a3) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100051514();
      }
    }
  }

  [(ThermalManager *)self checkForArcOverride:a3 key:@"ArcModuleThresholdKey"];
  [(ThermalManager *)self checkForArcOverride:a3 key:@"ArcVirtualThresholdKey"];
  v54 = SCPreferencesGetValue(a3, @"overrideCameraStrobeMaxLoad");
  byte_1000ABC3B = v54 == kCFBooleanTrue;
  if (byte_1000AB2F8 != 1 || (v55 = qword_1000AB718, !os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT)))
  {
    if (v54 != kCFBooleanTrue)
    {
      goto LABEL_110;
    }

LABEL_90:
    v57 = IOServiceMatching("AppleDieTempController");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v57);
    if (!MatchingService)
    {
      if (byte_1000AB2F8 == 1)
      {
        v70 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "<Notice> dieTempCtlService is NULL\n", buf, 2u);
        }
      }

      goto LABEL_106;
    }

    v59 = MatchingService;
    v92 = 0;
    v60 = SCPreferencesGetValue(a3, @"setCameraStrobeMaxLoad");
    if (v60)
    {
      v61 = v60;
      v62 = CFGetTypeID(v60);
      if (v62 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v61, kCFNumberSInt64Type, &v92);
      }
    }

    v63 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &v92);
    if (!v63)
    {
LABEL_106:
      if (SCPreferencesGetValue(a3, @"overrideCameraStrobeMaxLoadPersistentlyEnabled") != kCFBooleanTrue)
      {
        SCPreferencesRemoveValue(a3, @"overrideCameraStrobeMaxLoad");
        if (!SCPreferencesCommitChanges(a3) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100051514();
        }
      }

      goto LABEL_110;
    }

    v64 = v63;
    v65 = IORegistryEntrySetCFProperty(v59, @"CameraStrobeMaxLoad", v63);
    v66 = byte_1000AB2F8;
    if (v65 && (byte_1000AB2F8 & 1) != 0)
    {
      v67 = v65;
      v68 = qword_1000AB718;
      if (!os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_100;
      }

      *buf = 67109120;
      LODWORD(v95[0]) = v67;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "<Notice> IORegistryEntrySetCFProperty returned %d\n", buf, 8u);
      v66 = byte_1000AB2F8;
    }

    if ((v66 & 1) == 0)
    {
LABEL_102:
      CFRelease(v64);
      goto LABEL_106;
    }

LABEL_100:
    v69 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v95[0] = v92;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "<Notice> Camera strobe max load overriden to %lld", buf, 0xCu);
    }

    goto LABEL_102;
  }

  v56 = "dis";
  if (v54 == kCFBooleanTrue)
  {
    v56 = "en";
  }

  *buf = 136315138;
  v95[0] = v56;
  _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "<Notice> Camera strobe override %sabled", buf, 0xCu);
  if (byte_1000ABC3B)
  {
    goto LABEL_90;
  }

LABEL_110:
  v71 = SCPreferencesGetValue(a3, @"kBatteryRaKey");
  if (v71)
  {
    v72 = v71;
    v73 = CFGetTypeID(v71);
    if (v73 == CFNumberGetTypeID())
    {
      *buf = 0;
      CFNumberGetValue(v72, kCFNumberIntType, buf);
      sub_100032D78(*buf);
    }

    if (SCPreferencesGetValue(a3, @"kBatteryRaKeyPersistentlyEnabled") != kCFBooleanTrue)
    {
      SCPreferencesRemoveValue(a3, @"kBatteryRaKey");
      if (!SCPreferencesCommitChanges(a3) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100051514();
      }
    }
  }

  v74 = SCPreferencesGetValue(a3, @"kBatteryWRaKey");
  if (v74)
  {
    v75 = v74;
    v76 = CFGetTypeID(v74);
    if (v76 == CFNumberGetTypeID())
    {
      *buf = 0;
      CFNumberGetValue(v75, kCFNumberIntType, buf);
      sub_100032E34(*buf);
    }

    if (SCPreferencesGetValue(a3, @"kBatteryWRaKeyPersistentlyEnabled") != kCFBooleanTrue)
    {
      SCPreferencesRemoveValue(a3, @"kBatteryWRaKey");
      if (!SCPreferencesCommitChanges(a3) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100051514();
      }
    }
  }

  v77 = SCPreferencesGetValue(a3, @"kBatteryUPOCountKey");
  if (v77)
  {
    v78 = v77;
    v79 = CFGetTypeID(v77);
    if (v79 == CFNumberGetTypeID())
    {
      *buf = 0;
      CFNumberGetValue(v78, kCFNumberIntType, buf);
      sub_100033044(*buf);
    }

    if (SCPreferencesGetValue(a3, @"kBatteryUPOCountKeyPersistentlyEnabled") != kCFBooleanTrue)
    {
      SCPreferencesRemoveValue(a3, @"kBatteryUPOCountKey");
      if (!SCPreferencesCommitChanges(a3) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100051514();
      }
    }
  }

  v80 = SCPreferencesGetValue(a3, @"kStepperDisabledKey");
  if (v80)
  {
    v81 = v80;
    v82 = CFGetTypeID(v80);
    if (v82 == CFNumberGetTypeID())
    {
      *buf = 0;
      CFNumberGetValue(v81, kCFNumberIntType, buf);
      sub_10003305C(*buf != 0);
    }

    SCPreferencesRemoveValue(a3, @"kStepperDisabledKey");
    if (!SCPreferencesCommitChanges(a3) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100051514();
    }
  }

  v83 = SCPreferencesGetValue(a3, @"kUseNewMitigationsKey");
  if (v83)
  {
    v84 = v83;
    v85 = CFGetTypeID(v83);
    if (v85 == CFNumberGetTypeID())
    {
      *buf = 0;
      CFNumberGetValue(v84, kCFNumberIntType, buf);
      sub_100033068(*buf == 1);
    }

    if (SCPreferencesGetValue(a3, @"kUseNewMitigationsPersistentlyEnabled") != kCFBooleanTrue)
    {
      SCPreferencesRemoveValue(a3, @"kUseNewMitigationsKey");
      if (!SCPreferencesCommitChanges(a3) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100051514();
      }
    }
  }

  v86 = SCPreferencesGetValue(a3, @"kAgingControllerDisabledKey");
  if (v86)
  {
    v87 = v86;
    v88 = CFGetTypeID(v86);
    if (v88 == CFNumberGetTypeID())
    {
      *buf = 0;
      CFNumberGetValue(v87, kCFNumberIntType, buf);
      sub_10003308C(*buf != 0);
    }

    if (SCPreferencesGetValue(a3, @"kAgingControllerDisabledPersistentKey") != kCFBooleanTrue)
    {
      SCPreferencesRemoveValue(a3, @"kAgingControllerDisabledKey");
      if (!SCPreferencesCommitChanges(a3) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100051514();
      }
    }
  }

  v89 = SCPreferencesGetValue(a3, @"kOnChargerStatusKey");
  if (v89)
  {
    v90 = v89;
    v91 = CFGetTypeID(v89);
    if (v91 == CFNumberGetTypeID())
    {
      *buf = 0;
      CFNumberGetValue(v90, kCFNumberIntType, buf);
      sub_1000330CC(*buf);
    }

    if (SCPreferencesGetValue(a3, @"kOnChargerStatusKeyPersistentlyEnabled") != kCFBooleanTrue)
    {
      SCPreferencesRemoveValue(a3, @"kOnChargerStatusKey");
      if (!SCPreferencesCommitChanges(a3) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100051514();
      }
    }
  }
}

- (void)checkForLifetimeServoOverride:(__SCPreferences *)a3 key:(__CFString *)a4
{
  Value = SCPreferencesGetValue(a3, a4);
  v7 = 0xFFFFFFFFLL;
  valuePtr = -1;
  if (Value)
  {
    v8 = Value;
    v9 = CFGetTypeID(Value);
    if (v9 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v8, kCFNumberIntType, &valuePtr);
      v7 = valuePtr;
    }
  }

  [(CommonProduct *)self->product overrideLifetimeServoParam:a4 value:v7];
}

- (void)checkForArcOverride:(__SCPreferences *)a3 key:(__CFString *)a4
{
  Value = SCPreferencesGetValue(a3, a4);
  if (Value)
  {
    v7 = Value;
    v8 = CFGetTypeID(Value);
    if (v8 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v7, kCFNumberIntType, &valuePtr);
      [(CommonProduct *)self->product overrideArcParam:a4 value:valuePtr];
    }
  }
}

- (void)initDataCollection
{
  if (self->product)
  {
    v3 = +[TGraphSampler sharedInstance];
    product = self->product;
    v5 = [(CommonProduct *)product listofComponentControl];
    v6 = [(CommonProduct *)self->product listOfSupervisorControl];

    [(TGraphSampler *)v3 setProduct:product withComponents:v5 andHotspotSupervisors:v6];
  }
}

@end