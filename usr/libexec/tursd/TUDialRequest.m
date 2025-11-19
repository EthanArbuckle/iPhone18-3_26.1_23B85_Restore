@interface TUDialRequest
+ (void)_logProvider:(id)a3;
- (BOOL)nph_isSOS;
- (BOOL)nph_needsPrompt;
- (BOOL)nph_needsRTTDisambiguationPrompt;
- (id)nph_localizedShortDescription;
- (unint64_t)nph_audioMessageType;
- (void)nph_logWithReason:(id)a3 indented:(BOOL)a4;
- (void)setNph_audioMessageType:(unint64_t)a3;
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
    v8 = 1;
  }

  else
  {
    v8 = [(TUDialRequest *)self isSOS];
  }

  return v8;
}

- (BOOL)nph_needsRTTDisambiguationPrompt
{
  v3 = [(TUDialRequest *)self provider];
  v4 = [v3 isTelephonyProvider];

  return v4 && sub_1000015F0() - 1 <= 1 && [(TUDialRequest *)self ttyType]== 0;
}

- (void)nph_logWithReason:(id)a3 indented:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = &stru_100014D40;
  if (v4)
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
    v13 = v6;
    v14 = 2048;
    v15 = self;
    v16 = 2112;
    v17 = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@%@ TUDialRequest %p: %@", &v10, 0x2Au);
  }
}

+ (void)_logProvider:(id)a3
{
  v3 = a3;
  v4 = sub_100001C24();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "provider: %@", &v6, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_100009A88(v5);
  }
}

- (void)setNph_audioMessageType:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  objc_setAssociatedObject(self, "nph_audioMessageType", v4, 3);
}

- (unint64_t)nph_audioMessageType
{
  v2 = objc_getAssociatedObject(self, "nph_audioMessageType");
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (id)nph_localizedShortDescription
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [(TUDialRequest *)self handle];
  v5 = [v4 value];
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