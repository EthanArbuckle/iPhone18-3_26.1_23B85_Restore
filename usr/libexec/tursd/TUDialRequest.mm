@interface TUDialRequest
+ (void)_logProvider:(id)provider;
- (BOOL)nph_isSOS;
- (BOOL)nph_needsPrompt;
- (BOOL)nph_needsRTTDisambiguationPrompt;
- (id)nph_localizedShortDescription;
- (unint64_t)nph_audioMessageType;
- (void)nph_logWithReason:(id)reason indented:(BOOL)indented;
- (void)setNph_audioMessageType:(unint64_t)type;
@end

@implementation TUDialRequest

- (BOOL)nph_needsPrompt
{
  if ([(TUDialRequest *)self nph_isSOS])
  {
    return 0;
  }

  return [(TUDialRequest *)self nph_needsRTTDisambiguationPrompt];
}

- (BOOL)nph_isSOS
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 stringForKey:@"CSLEmergencyPhoneNumber"];

  if (NPHDeviceOSIsInternalInstall() && v4 && (-[TUDialRequest handle](self, "handle"), v5 = objc_claimAutoreleasedReturnValue(), [v5 value], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", v4), v6, v5, (v7 & 1) != 0))
  {
    isSOS = 1;
  }

  else
  {
    isSOS = [(TUDialRequest *)self isSOS];
  }

  return isSOS;
}

- (BOOL)nph_needsRTTDisambiguationPrompt
{
  provider = [(TUDialRequest *)self provider];
  isTelephonyProvider = [provider isTelephonyProvider];

  return isTelephonyProvider && sub_1000015F0() - 1 <= 1 && [(TUDialRequest *)self ttyType]== 0;
}

- (void)nph_logWithReason:(id)reason indented:(BOOL)indented
{
  indentedCopy = indented;
  reasonCopy = reason;
  v7 = &stru_100014D40;
  if (indentedCopy)
  {
    v7 = @"\t";
  }

  v8 = v7;
  v9 = sub_100001C24();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138413058;
    v11 = v8;
    v12 = 2112;
    v13 = reasonCopy;
    v14 = 2048;
    selfCopy = self;
    v16 = 2112;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@%@ TUDialRequest %p: %@", &v10, 0x2Au);
  }
}

+ (void)_logProvider:(id)provider
{
  providerCopy = provider;
  v4 = sub_100001C24();
  v5 = v4;
  if (providerCopy)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = providerCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "provider: %@", &v6, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_100009A88(v5);
  }
}

- (void)setNph_audioMessageType:(unint64_t)type
{
  v4 = [NSNumber numberWithUnsignedInteger:type];
  objc_setAssociatedObject(self, "nph_audioMessageType", v4, 3);
}

- (unint64_t)nph_audioMessageType
{
  v2 = objc_getAssociatedObject(self, "nph_audioMessageType");
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)nph_localizedShortDescription
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  handle = [(TUDialRequest *)self handle];
  value = [handle value];
  v6 = TUNetworkCountryCode();
  if (v6)
  {
    v7 = TUFormattedPhoneNumber();
  }

  else
  {
    v8 = TUHomeCountryCode();
    v7 = TUFormattedPhoneNumber();
  }

  if (![v7 length])
  {
    if (([(TUDialRequest *)self isSOS]& 1) != 0 || [(TUDialRequest *)self dialType]== 1)
    {
      v9 = @"PROMPT_RTT_CALL_EMERGENCY";
LABEL_8:
      v10 = [v3 localizedStringForKey:v9 value:&stru_100014D40 table:0];

      v7 = v10;
      goto LABEL_9;
    }

    if ([(TUDialRequest *)self dialType]== 2)
    {
      v9 = @"TOP_LEVEL_MENU_ITEM_VOICEMAIL";
      goto LABEL_8;
    }

    v12 = sub_100001C24();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100009ACC(self, v12);
    }
  }

LABEL_9:

  return v7;
}

@end