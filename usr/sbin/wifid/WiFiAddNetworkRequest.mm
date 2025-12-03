@interface WiFiAddNetworkRequest
- (WiFiAddNetworkRequest)initWithClient:(__WiFiClient *)client network:(__WiFiNetwork *)network bundleId:(id)id localizedAppName:(id)name originator:(int)originator poweredOff:(BOOL)off wapi:(BOOL)wapi sessionBased:(BOOL)self0 useSSIDPrefix:(BOOL)self1 callback:(void *)self2 context:(void *)self3 bypassPrompt:(BOOL)self4;
- (__CFDictionary)_createAlertDictionary;
- (void)dealloc;
- (void)setNetworkMatchingPrefix:(__WiFiNetwork *)prefix;
@end

@implementation WiFiAddNetworkRequest

- (WiFiAddNetworkRequest)initWithClient:(__WiFiClient *)client network:(__WiFiNetwork *)network bundleId:(id)id localizedAppName:(id)name originator:(int)originator poweredOff:(BOOL)off wapi:(BOOL)wapi sessionBased:(BOOL)self0 useSSIDPrefix:(BOOL)self1 callback:(void *)self2 context:(void *)self3 bypassPrompt:(BOOL)self4
{
  v21 = objc_autoreleasePoolPush();
  v27.receiver = self;
  v27.super_class = WiFiAddNetworkRequest;
  v22 = [(WiFiAddNetworkRequest *)&v27 init];
  if (!v22)
  {
    goto LABEL_11;
  }

  v23 = v22;
  v22->_client = client;
  if (!network)
  {
    goto LABEL_11;
  }

  v22->_network = network;
  if (!id)
  {
    goto LABEL_11;
  }

  if (originator)
  {
    v22->_localizedApplicationName = [name copy];
  }

  v23->_originator = originator;
  v23->_bundleId = [id copy];
  v23->_poweredOff = off;
  v23->_wapi = wapi;
  v23->_sessionBased = based;
  v23->_callback = callback;
  v23->_context = context;
  v23->_usingPrefix = prefix;
  v23->_bypassPrompt = prompt;
  _createAlertDictionary = [(WiFiAddNetworkRequest *)v23 _createAlertDictionary];
  if (!_createAlertDictionary)
  {
    sub_100187B58(id);
LABEL_11:
    v23 = 0;
    goto LABEL_9;
  }

  v23->_alertDictionary = _createAlertDictionary;
  CFRetain(v23->_network);
  client = v23->_client;
  if (client)
  {
    CFRetain(client);
  }

LABEL_9:
  objc_autoreleasePoolPop(v21);
  return v23;
}

- (void)dealloc
{
  network = self->_network;
  if (network)
  {
    CFRelease(network);
    self->_network = 0;
  }

  client = self->_client;
  if (client)
  {
    CFRelease(client);
    self->_client = 0;
  }

  v5.receiver = self;
  v5.super_class = WiFiAddNetworkRequest;
  [(WiFiAddNetworkRequest *)&v5 dealloc];
}

- (void)setNetworkMatchingPrefix:(__WiFiNetwork *)prefix
{
  if (self->_usingPrefix)
  {
    network = self->_network;
    v6 = sub_10000A878(prefix);
    sub_10000AD34(network, @"SSID_STR", v6);
    v7 = self->_network;
    v8 = sub_10001CA74(prefix);
    sub_10000AD34(v7, @"SSID", v8);

    self->_alertDictionary = [(WiFiAddNetworkRequest *)self _createAlertDictionary];
    self->_usingPrefix = 0;
  }
}

- (__CFDictionary)_createAlertDictionary
{
  v3 = objc_autoreleasePoolPush();
  v4 = sub_10000836C();
  Mutable = CFDictionaryCreateMutable(v4, v5, v6, v7);
  if (Mutable && sub_10010E220())
  {
    if (sub_10000AFE4(self->_network))
    {
      v9 = sub_10000836C();
      v11 = CFStringCreateMutable(v9, v10);
      if (v11)
      {
        v12 = v11;
        sub_1000AA84C(self->_wapi);
        localizedApplicationName = self->_localizedApplicationName;
        v13 = sub_10000836C();
        CFStringAppendFormat(v13, v14, v15, localizedApplicationName, 0);
        CFDictionarySetValue(Mutable, kCFUserNotificationAlertHeaderKey, v12);
        v16 = 0;
        v17 = @"WIFI_JOIN_NETWORK_ALLOW";
        goto LABEL_17;
      }
    }

    else
    {
      v39 = sub_10000A878(self->_network);
      v18 = sub_10000836C();
      v21 = CFStringCreateWithFormat(v18, v19, v20, 8, v39, 127);
      if (v21)
      {
        v16 = v21;
        v22 = sub_10000836C();
        v24 = CFStringCreateMutable(v22, v23);
        if (!v24)
        {
          v12 = v16;
LABEL_21:
          CFRelease(v12);
          goto LABEL_22;
        }

        v12 = v24;
        originator = self->_originator;
        if (originator == 6 || originator == 1)
        {
          sub_1000AA84C(self->_wapi);
          p_isa = self->_localizedApplicationName;
        }

        else
        {
          sub_1000AA84C(self->_wapi);
          p_isa = &v16->isa;
        }

        v27 = sub_10000836C();
        CFStringAppendFormat(v27, v28, v29, p_isa);
        CFDictionarySetValue(Mutable, kCFUserNotificationAlertHeaderKey, v12);
        if (self->_poweredOff)
        {
          v30 = sub_1000AA84C(self->_wapi);
          CFDictionarySetValue(Mutable, kCFUserNotificationAlertMessageKey, v30);
        }

        v17 = @"WIFI_JOIN_NETWORK_JOIN";
LABEL_17:
        v31 = sub_10010E234(v17);
        CFDictionarySetValue(Mutable, kCFUserNotificationDefaultButtonTitleKey, v31);
        if (SBUserNotificationDismissOnLock)
        {
          sub_100024F28(v32, SBUserNotificationDismissOnLock);
          CFDictionarySetValue(Mutable, SBUserNotificationAlertMessageDelimiterKey, &stru_1002680F8);
          sub_100024F28(v33, SBUserNotificationForcesModalAlertAppearance);
          sub_100024F28(v34, SBUserNotificationDisplayActionButtonOnLockScreen);
        }

        sub_100024F28(v32, kCFUserNotificationAlertTopMostKey);
        v35 = sub_10010E234(@"WIFI_JOIN_NETWORK_CANCEL");
        CFDictionarySetValue(Mutable, kCFUserNotificationAlternateButtonTitleKey, v35);
        if (v16)
        {
          CFRelease(v16);
        }

        goto LABEL_21;
      }
    }
  }

LABEL_22:
  objc_autoreleasePoolPop(v3);
  return Mutable;
}

@end