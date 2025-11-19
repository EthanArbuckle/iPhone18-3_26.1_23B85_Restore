@interface APPBLogSysEventRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)eventTypeAsString:(int)a3;
- (int)StringAsEventType:(id)a3;
- (int)eventType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEventType:(BOOL)a3;
- (void)setHasRequestCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBLogSysEventRequest

+ (id)options
{
  if (qword_1004E6958 != -1)
  {
    sub_100393AD0();
  }

  v3 = qword_1004E6950;

  return v3;
}

- (int)eventType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_eventType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasEventType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)eventTypeAsString:(int)a3
{
  if (a3 <= 199)
  {
    v4 = @"BannerClicked";
    switch(a3)
    {
      case 1:
        goto LABEL_239;
      case 2:
        v4 = @"iTunesLaunched";

        break;
      case 4:
        v4 = @"ExternalLink";

        break;
      case 5:
        v4 = @"AdSheetOpened";

        break;
      case 6:
        v4 = @"AdSheetLoaded";

        break;
      case 7:
        v4 = @"AdSheetClosedWithXButton";

        break;
      case 8:
        v4 = @"AdSheetClosedWithHomeButton";

        break;
      case 9:
        v4 = @"AppPreventedAdAction";

        break;
      case 10:
        v4 = @"AppCancelledAdAction";

        break;
      case 11:
        v4 = @"AppPause";

        break;
      case 12:
        v4 = @"AppResume";

        break;
      case 13:
        v4 = @"AdRedirectOK";

        break;
      case 14:
        v4 = @"AdRedirectCancel";

        break;
      case 15:
        v4 = @"AdBuyOK";

        break;
      case 16:
        v4 = @"AdBuyCancel";

        break;
      case 17:
        v4 = @"WallpaperSetOK";

        break;
      case 18:
        v4 = @"WallpaperSetCancel";

        break;
      case 19:
        v4 = @"CalendarEventCreateOK";

        break;
      case 20:
        v4 = @"CalendarEventCreateCancel";

        break;
      case 21:
        v4 = @"EmailSendOK";

        break;
      case 22:
        v4 = @"EmailSendCancel";

        break;
      case 23:
        v4 = @"SMSSendOK";

        break;
      case 24:
        v4 = @"SMSSendCancel";

        break;
      case 25:
        v4 = @"AdSheetCallOK";

        break;
      case 26:
        v4 = @"AdSheetCallCancel";

        break;
      case 27:
        v4 = @"AdInterstitialDidAppear";

        break;
      case 28:
        v4 = @"AdInterstitialDidDisappear";

        break;
      case 29:
        v4 = @"AdInterstitialWasDismissed";

        break;
      case 30:
        v4 = @"AdInterstitialWasRemovedFromView";

        break;
      case 31:
        v4 = @"AdContactsEntryCreated";

        break;
      case 32:
        v4 = @"AdContactsEntryCanceled";

        break;
      case 33:
        v4 = @"AdIBooksPDFAdded";

        break;
      case 34:
        v4 = @"AdIBooksPDFCanceled";

        break;
      case 35:
        v4 = @"AdCameraPictureCaptured";

        break;
      case 36:
        v4 = @"AdCameraPictureCanceled";

        break;
      case 38:
        v4 = @"AdSheetClosedWithClientBackgrounded";

        break;
      case 42:
        v4 = @"AdSheetClosedWithAutoDismiss";

        break;
      default:
        goto LABEL_238;
    }

    return v4;
  }

  if (a3 > 699)
  {
    if (a3 <= 902)
    {
      if (a3 <= 800)
      {
        switch(a3)
        {
          case 700:
            v4 = @"ReminderCreateOK";

            break;
          case 701:
            v4 = @"ReminderCreateCancel";

            break;
          case 800:
            v4 = @"PreRollSkip";

            break;
          default:
            goto LABEL_238;
        }
      }

      else if (a3 > 900)
      {
        if (a3 == 901)
        {
          v4 = @"PrivacyAdTransparencyDidAppear";
        }

        else
        {
          v4 = @"PrivacyAdTransparencyDidRenderTransparency";
        }
      }

      else if (a3 == 801)
      {
        v4 = @"CreativeUnloadedWithInvalidSize";
      }

      else
      {
        if (a3 != 900)
        {
          goto LABEL_238;
        }

        v4 = @"PrivacyAdMarkWasTapped";
      }
    }

    else if (a3 > 906)
    {
      if (a3 > 908)
      {
        if (a3 == 909)
        {
          v4 = @"TimeSpent";
        }

        else
        {
          if (a3 != 910)
          {
            goto LABEL_238;
          }

          v4 = @"AggregatedTimeSpent";
        }
      }

      else if (a3 == 907)
      {
        v4 = @"NavigationActionBlockedDueToAccidentalTap";
      }

      else
      {
        v4 = @"CarouselFinished";
      }
    }

    else if (a3 > 904)
    {
      if (a3 == 905)
      {
        v4 = @"AdCreativeDidUnload";
      }

      else
      {
        v4 = @"TapGestureTimerDidExpireBeforePrimaryActionWasInvoked";
      }
    }

    else if (a3 == 903)
    {
      v4 = @"PrivacyAdTransparencyDidDisappear";
    }

    else
    {
      v4 = @"PrivacyAdTransparencyDidLinkOut";
    }
  }

  else if (a3 <= 402)
  {
    if (a3 <= 300)
    {
      switch(a3)
      {
        case 200:
          v4 = @"RingtoneDownloadOK";

          break;
        case 201:
          v4 = @"RingtoneDownloadCancel";

          break;
        case 300:
          v4 = @"InAdWebViewOpened";

          break;
        default:
          goto LABEL_238;
      }
    }

    else if (a3 > 400)
    {
      if (a3 == 401)
      {
        v4 = @"VisibleContentsCaptureCancel";
      }

      else
      {
        v4 = @"VisibleContentsSaveToPhotosOK";
      }
    }

    else if (a3 == 301)
    {
      v4 = @"InAdWebViewClosed";
    }

    else
    {
      if (a3 != 400)
      {
        goto LABEL_238;
      }

      v4 = @"VisibleContentsCaptureOK";
    }
  }

  else if (a3 > 502)
  {
    if (a3 > 600)
    {
      if (a3 == 601)
      {
        v4 = @"AdSheetClosedWithPrimaryURLFailure";
      }

      else
      {
        if (a3 != 602)
        {
          goto LABEL_238;
        }

        v4 = @"AdSheetClosedWithProductPageLoadFailure";
      }
    }

    else if (a3 == 503)
    {
      v4 = @"SaveVideoToPhotosCancel";
    }

    else
    {
      if (a3 != 600)
      {
        goto LABEL_238;
      }

      v4 = @"AdSheetClosedByPrivilegedAd";
    }
  }

  else if (a3 > 500)
  {
    if (a3 == 501)
    {
      v4 = @"SaveImageToPhotosCancel";
    }

    else
    {
      v4 = @"SaveVideoToPhotosOK";
    }
  }

  else
  {
    if (a3 != 403)
    {
      if (a3 == 500)
      {
        v4 = @"SaveImageToPhotosOK";

        return v4;
      }

LABEL_238:
      v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
LABEL_239:

      return v4;
    }

    v4 = @"VisibleContentsSaveToPhotosCancel";
  }

  return v4;
}

- (int)StringAsEventType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"BannerClicked"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"iTunesLaunched"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ExternalLink"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"AdSheetOpened"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"AdSheetLoaded"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"AdSheetClosedWithXButton"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"AdSheetClosedWithHomeButton"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"AppPreventedAdAction"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"AppCancelledAdAction"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"AppPause"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"AppResume"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"AdRedirectOK"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"AdRedirectCancel"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"AdBuyOK"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"AdBuyCancel"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"WallpaperSetOK"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"WallpaperSetCancel"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"CalendarEventCreateOK"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"CalendarEventCreateCancel"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"EmailSendOK"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"EmailSendCancel"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"SMSSendOK"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"SMSSendCancel"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"AdSheetCallOK"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"AdSheetCallCancel"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"AdInterstitialDidAppear"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"AdInterstitialDidDisappear"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"AdInterstitialWasDismissed"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"AdInterstitialWasRemovedFromView"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"AdContactsEntryCreated"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"AdContactsEntryCanceled"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"AdIBooksPDFAdded"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"AdIBooksPDFCanceled"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"AdCameraPictureCaptured"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"AdCameraPictureCanceled"])
  {
    v4 = 36;
  }

  else if ([v3 isEqualToString:@"AdSheetClosedWithClientBackgrounded"])
  {
    v4 = 38;
  }

  else if ([v3 isEqualToString:@"AdSheetClosedWithAutoDismiss"])
  {
    v4 = 42;
  }

  else if ([v3 isEqualToString:@"RingtoneDownloadOK"])
  {
    v4 = 200;
  }

  else if ([v3 isEqualToString:@"RingtoneDownloadCancel"])
  {
    v4 = 201;
  }

  else if ([v3 isEqualToString:@"InAdWebViewOpened"])
  {
    v4 = 300;
  }

  else if ([v3 isEqualToString:@"InAdWebViewClosed"])
  {
    v4 = 301;
  }

  else if ([v3 isEqualToString:@"VisibleContentsCaptureOK"])
  {
    v4 = 400;
  }

  else if ([v3 isEqualToString:@"VisibleContentsCaptureCancel"])
  {
    v4 = 401;
  }

  else if ([v3 isEqualToString:@"VisibleContentsSaveToPhotosOK"])
  {
    v4 = 402;
  }

  else if ([v3 isEqualToString:@"VisibleContentsSaveToPhotosCancel"])
  {
    v4 = 403;
  }

  else if ([v3 isEqualToString:@"SaveImageToPhotosOK"])
  {
    v4 = 500;
  }

  else if ([v3 isEqualToString:@"SaveImageToPhotosCancel"])
  {
    v4 = 501;
  }

  else if ([v3 isEqualToString:@"SaveVideoToPhotosOK"])
  {
    v4 = 502;
  }

  else if ([v3 isEqualToString:@"SaveVideoToPhotosCancel"])
  {
    v4 = 503;
  }

  else if ([v3 isEqualToString:@"AdSheetClosedByPrivilegedAd"])
  {
    v4 = 600;
  }

  else if ([v3 isEqualToString:@"AdSheetClosedWithPrimaryURLFailure"])
  {
    v4 = 601;
  }

  else if ([v3 isEqualToString:@"AdSheetClosedWithProductPageLoadFailure"])
  {
    v4 = 602;
  }

  else if ([v3 isEqualToString:@"ReminderCreateOK"])
  {
    v4 = 700;
  }

  else if ([v3 isEqualToString:@"ReminderCreateCancel"])
  {
    v4 = 701;
  }

  else if ([v3 isEqualToString:@"PreRollSkip"])
  {
    v4 = 800;
  }

  else if ([v3 isEqualToString:@"CreativeUnloadedWithInvalidSize"])
  {
    v4 = 801;
  }

  else if ([v3 isEqualToString:@"PrivacyAdMarkWasTapped"])
  {
    v4 = 900;
  }

  else if ([v3 isEqualToString:@"PrivacyAdTransparencyDidAppear"])
  {
    v4 = 901;
  }

  else if ([v3 isEqualToString:@"PrivacyAdTransparencyDidRenderTransparency"])
  {
    v4 = 902;
  }

  else if ([v3 isEqualToString:@"PrivacyAdTransparencyDidDisappear"])
  {
    v4 = 903;
  }

  else if ([v3 isEqualToString:@"PrivacyAdTransparencyDidLinkOut"])
  {
    v4 = 904;
  }

  else if ([v3 isEqualToString:@"AdCreativeDidUnload"])
  {
    v4 = 905;
  }

  else if ([v3 isEqualToString:@"TapGestureTimerDidExpireBeforePrimaryActionWasInvoked"])
  {
    v4 = 906;
  }

  else if ([v3 isEqualToString:@"NavigationActionBlockedDueToAccidentalTap"])
  {
    v4 = 907;
  }

  else if ([v3 isEqualToString:@"CarouselFinished"])
  {
    v4 = 908;
  }

  else if ([v3 isEqualToString:@"TimeSpent"])
  {
    v4 = 909;
  }

  else if ([v3 isEqualToString:@"AggregatedTimeSpent"])
  {
    v4 = 910;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasRequestCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBLogSysEventRequest;
  v3 = [(APPBLogSysEventRequest *)&v7 description];
  v4 = [(APPBLogSysEventRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  metaData = self->_metaData;
  if (metaData)
  {
    v6 = [(APPBLogMetaData *)metaData dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"metaData"];
  }

  if ((*&self->_has & 2) != 0)
  {
    eventType = self->_eventType;
    if (eventType <= 199)
    {
      v8 = @"BannerClicked";
      switch(eventType)
      {
        case 1:
          goto LABEL_110;
        case 2:
          v8 = @"iTunesLaunched";
          break;
        case 4:
          v8 = @"ExternalLink";
          break;
        case 5:
          v8 = @"AdSheetOpened";
          break;
        case 6:
          v8 = @"AdSheetLoaded";
          break;
        case 7:
          v8 = @"AdSheetClosedWithXButton";
          break;
        case 8:
          v8 = @"AdSheetClosedWithHomeButton";
          break;
        case 9:
          v8 = @"AppPreventedAdAction";
          break;
        case 10:
          v8 = @"AppCancelledAdAction";
          break;
        case 11:
          v8 = @"AppPause";
          break;
        case 12:
          v8 = @"AppResume";
          break;
        case 13:
          v8 = @"AdRedirectOK";
          break;
        case 14:
          v8 = @"AdRedirectCancel";
          break;
        case 15:
          v8 = @"AdBuyOK";
          break;
        case 16:
          v8 = @"AdBuyCancel";
          break;
        case 17:
          v8 = @"WallpaperSetOK";
          break;
        case 18:
          v8 = @"WallpaperSetCancel";
          break;
        case 19:
          v8 = @"CalendarEventCreateOK";
          break;
        case 20:
          v8 = @"CalendarEventCreateCancel";
          break;
        case 21:
          v8 = @"EmailSendOK";
          break;
        case 22:
          v8 = @"EmailSendCancel";
          break;
        case 23:
          v8 = @"SMSSendOK";
          break;
        case 24:
          v8 = @"SMSSendCancel";
          break;
        case 25:
          v8 = @"AdSheetCallOK";
          break;
        case 26:
          v8 = @"AdSheetCallCancel";
          break;
        case 27:
          v8 = @"AdInterstitialDidAppear";
          break;
        case 28:
          v8 = @"AdInterstitialDidDisappear";
          break;
        case 29:
          v8 = @"AdInterstitialWasDismissed";
          break;
        case 30:
          v8 = @"AdInterstitialWasRemovedFromView";
          break;
        case 31:
          v8 = @"AdContactsEntryCreated";
          break;
        case 32:
          v8 = @"AdContactsEntryCanceled";
          break;
        case 33:
          v8 = @"AdIBooksPDFAdded";
          break;
        case 34:
          v8 = @"AdIBooksPDFCanceled";
          break;
        case 35:
          v8 = @"AdCameraPictureCaptured";
          break;
        case 36:
          v8 = @"AdCameraPictureCanceled";
          break;
        case 38:
          v8 = @"AdSheetClosedWithClientBackgrounded";
          break;
        case 42:
          v8 = @"AdSheetClosedWithAutoDismiss";
          break;
        default:
          goto LABEL_109;
      }

      goto LABEL_110;
    }

    if (eventType > 699)
    {
      if (eventType <= 902)
      {
        if (eventType <= 800)
        {
          switch(eventType)
          {
            case 700:
              v8 = @"ReminderCreateOK";
              goto LABEL_110;
            case 701:
              v8 = @"ReminderCreateCancel";
              goto LABEL_110;
            case 800:
              v8 = @"PreRollSkip";
              goto LABEL_110;
          }
        }

        else
        {
          if (eventType > 900)
          {
            if (eventType == 901)
            {
              v8 = @"PrivacyAdTransparencyDidAppear";
            }

            else
            {
              v8 = @"PrivacyAdTransparencyDidRenderTransparency";
            }

            goto LABEL_110;
          }

          if (eventType == 801)
          {
            v8 = @"CreativeUnloadedWithInvalidSize";
            goto LABEL_110;
          }

          if (eventType == 900)
          {
            v8 = @"PrivacyAdMarkWasTapped";
            goto LABEL_110;
          }
        }
      }

      else
      {
        if (eventType <= 906)
        {
          if (eventType > 904)
          {
            if (eventType == 905)
            {
              v8 = @"AdCreativeDidUnload";
            }

            else
            {
              v8 = @"TapGestureTimerDidExpireBeforePrimaryActionWasInvoked";
            }
          }

          else if (eventType == 903)
          {
            v8 = @"PrivacyAdTransparencyDidDisappear";
          }

          else
          {
            v8 = @"PrivacyAdTransparencyDidLinkOut";
          }

          goto LABEL_110;
        }

        if (eventType <= 908)
        {
          if (eventType == 907)
          {
            v8 = @"NavigationActionBlockedDueToAccidentalTap";
          }

          else
          {
            v8 = @"CarouselFinished";
          }

          goto LABEL_110;
        }

        if (eventType == 909)
        {
          v8 = @"TimeSpent";
          goto LABEL_110;
        }

        if (eventType == 910)
        {
          v8 = @"AggregatedTimeSpent";
          goto LABEL_110;
        }
      }
    }

    else if (eventType <= 402)
    {
      if (eventType <= 300)
      {
        switch(eventType)
        {
          case 200:
            v8 = @"RingtoneDownloadOK";
            goto LABEL_110;
          case 201:
            v8 = @"RingtoneDownloadCancel";
            goto LABEL_110;
          case 300:
            v8 = @"InAdWebViewOpened";
            goto LABEL_110;
        }
      }

      else
      {
        if (eventType > 400)
        {
          if (eventType == 401)
          {
            v8 = @"VisibleContentsCaptureCancel";
          }

          else
          {
            v8 = @"VisibleContentsSaveToPhotosOK";
          }

          goto LABEL_110;
        }

        if (eventType == 301)
        {
          v8 = @"InAdWebViewClosed";
          goto LABEL_110;
        }

        if (eventType == 400)
        {
          v8 = @"VisibleContentsCaptureOK";
          goto LABEL_110;
        }
      }
    }

    else if (eventType > 502)
    {
      if (eventType > 600)
      {
        if (eventType == 601)
        {
          v8 = @"AdSheetClosedWithPrimaryURLFailure";
          goto LABEL_110;
        }

        if (eventType == 602)
        {
          v8 = @"AdSheetClosedWithProductPageLoadFailure";
          goto LABEL_110;
        }
      }

      else
      {
        if (eventType == 503)
        {
          v8 = @"SaveVideoToPhotosCancel";
          goto LABEL_110;
        }

        if (eventType == 600)
        {
          v8 = @"AdSheetClosedByPrivilegedAd";
          goto LABEL_110;
        }
      }
    }

    else
    {
      if (eventType > 500)
      {
        if (eventType == 501)
        {
          v8 = @"SaveImageToPhotosCancel";
        }

        else
        {
          v8 = @"SaveVideoToPhotosOK";
        }

        goto LABEL_110;
      }

      if (eventType == 403)
      {
        v8 = @"VisibleContentsSaveToPhotosCancel";
        goto LABEL_110;
      }

      if (eventType == 500)
      {
        v8 = @"SaveImageToPhotosOK";
LABEL_110:
        [v3 setObject:v8 forKey:@"eventType"];

        goto LABEL_111;
      }
    }

LABEL_109:
    v8 = [NSString stringWithFormat:@"(unknown: %i)", self->_eventType];
    goto LABEL_110;
  }

LABEL_111:
  clickLocation = self->_clickLocation;
  if (clickLocation)
  {
    v10 = [(APPBClickLocation *)clickLocation dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"clickLocation"];
  }

  if (*&self->_has)
  {
    *&v4 = self->_actionableDuration;
    v11 = [NSNumber numberWithFloat:v4];
    [v3 setObject:v11 forKey:@"actionableDuration"];
  }

  bannerCustomMetadata = self->_bannerCustomMetadata;
  if (bannerCustomMetadata)
  {
    [v3 setObject:bannerCustomMetadata forKey:@"bannerCustomMetadata"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v13 = [NSNumber numberWithInt:self->_requestCount];
    [v3 setObject:v13 forKey:@"requestCount"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_metaData)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }

  if (self->_clickLocation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
    v4 = v5;
  }

  if (self->_bannerCustomMetadata)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_metaData)
  {
    [v4 setMetaData:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 8) = self->_eventType;
    *(v4 + 52) |= 2u;
  }

  if (self->_clickLocation)
  {
    [v5 setClickLocation:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = LODWORD(self->_actionableDuration);
    *(v4 + 52) |= 1u;
  }

  if (self->_bannerCustomMetadata)
  {
    [v5 setBannerCustomMetadata:?];
    v4 = v5;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 12) = self->_requestCount;
    *(v4 + 52) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(APPBLogMetaData *)self->_metaData copyWithZone:a3];
  v7 = v5[5];
  v5[5] = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 8) = self->_eventType;
    *(v5 + 52) |= 2u;
  }

  v8 = [(APPBClickLocation *)self->_clickLocation copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  if (*&self->_has)
  {
    *(v5 + 2) = LODWORD(self->_actionableDuration);
    *(v5 + 52) |= 1u;
  }

  v10 = [(NSString *)self->_bannerCustomMetadata copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 12) = self->_requestCount;
    *(v5 + 52) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  metaData = self->_metaData;
  if (metaData | *(v4 + 5))
  {
    if (![(APPBLogMetaData *)metaData isEqual:?])
    {
      goto LABEL_24;
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0 || self->_eventType != *(v4 + 8))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 52) & 2) != 0)
  {
    goto LABEL_24;
  }

  clickLocation = self->_clickLocation;
  if (clickLocation | *(v4 + 3))
  {
    if (![(APPBClickLocation *)clickLocation isEqual:?])
    {
      goto LABEL_24;
    }

    has = self->_has;
  }

  if (has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_actionableDuration != *(v4 + 2))
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 52))
  {
    goto LABEL_24;
  }

  bannerCustomMetadata = self->_bannerCustomMetadata;
  if (bannerCustomMetadata | *(v4 + 2))
  {
    if ([(NSString *)bannerCustomMetadata isEqual:?])
    {
      has = self->_has;
      goto LABEL_20;
    }

LABEL_24:
    v9 = 0;
    goto LABEL_25;
  }

LABEL_20:
  v9 = (*(v4 + 52) & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((*(v4 + 52) & 4) == 0 || self->_requestCount != *(v4 + 12))
    {
      goto LABEL_24;
    }

    v9 = 1;
  }

LABEL_25:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(APPBLogMetaData *)self->_metaData hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_eventType;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(APPBClickLocation *)self->_clickLocation hash];
  if (*&self->_has)
  {
    actionableDuration = self->_actionableDuration;
    if (actionableDuration < 0.0)
    {
      actionableDuration = -actionableDuration;
    }

    *v6.i32 = floorf(actionableDuration + 0.5);
    v10 = (actionableDuration - *v6.i32) * 1.8447e19;
    *v7.i32 = *v6.i32 - (truncf(*v6.i32 * 5.421e-20) * 1.8447e19);
    v11.i64[0] = 0x8000000080000000;
    v11.i64[1] = 0x8000000080000000;
    v8 = 2654435761u * *vbslq_s8(v11, v7, v6).i32;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabsf(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = [(NSString *)self->_bannerCustomMetadata hash];
  if ((*&self->_has & 4) != 0)
  {
    v13 = 2654435761 * self->_requestCount;
  }

  else
  {
    v13 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v8 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  metaData = self->_metaData;
  v6 = *(v4 + 5);
  v9 = v4;
  if (metaData)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(APPBLogMetaData *)metaData mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(APPBLogSysEventRequest *)self setMetaData:?];
  }

  v4 = v9;
LABEL_7:
  if ((*(v4 + 52) & 2) != 0)
  {
    self->_eventType = *(v4 + 8);
    *&self->_has |= 2u;
  }

  clickLocation = self->_clickLocation;
  v8 = *(v4 + 3);
  if (clickLocation)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    [(APPBClickLocation *)clickLocation mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    [(APPBLogSysEventRequest *)self setClickLocation:?];
  }

  v4 = v9;
LABEL_15:
  if (*(v4 + 52))
  {
    self->_actionableDuration = *(v4 + 2);
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(APPBLogSysEventRequest *)self setBannerCustomMetadata:?];
    v4 = v9;
  }

  if ((*(v4 + 52) & 4) != 0)
  {
    self->_requestCount = *(v4 + 12);
    *&self->_has |= 4u;
  }

  _objc_release_x1();
}

@end