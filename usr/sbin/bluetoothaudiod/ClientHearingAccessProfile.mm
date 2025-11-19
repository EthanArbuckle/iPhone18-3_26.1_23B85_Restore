@interface ClientHearingAccessProfile
- (ClientHearingAccessProfile)init;
- (id)getSecondBinauraldHearingAid:(id)a3;
- (void)HAPReadActivePresetIndex:(id)a3;
- (void)HAPReadHearingAidFeatures:(id)a3;
- (void)HAPSendSetNextPreset:(id)a3 syncLocally:(BOOL)a4;
- (void)HAPSendSetPreviousPreset:(id)a3 syncLocally:(BOOL)a4;
- (void)HAPSetNextPreset:(id)a3;
- (void)HAPSetPreviousPreset:(id)a3;
- (void)addAcceptorToSet:(id)a3;
- (void)peripheralDisconnected:(id)a3;
- (void)processHearingAidFeatures:(id)a3;
- (void)processPresetControlPointResult:(unsigned __int8)a3 withIdentifier:(id)a4;
@end

@implementation ClientHearingAccessProfile

- (ClientHearingAccessProfile)init
{
  v6.receiver = self;
  v6.super_class = ClientHearingAccessProfile;
  v2 = [(ClientCommonAudioProfile *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    binauralHearingAidSet = v2->_binauralHearingAidSet;
    v2->_binauralHearingAidSet = v3;
  }

  return v2;
}

- (void)addAcceptorToSet:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ClientHearingAccessProfile;
  [(ClientCommonAudioProfile *)&v18 addAcceptorToSet:v4];
  v5 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v6 = [v4 peripheral];
  v7 = [v6 identifier];
  v8 = [v5 objectForKey:v7];

  if (v8)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10004AC74;
    v17[3] = &unk_100095990;
    v17[4] = self;
    [v4 setPresetControlPointResultHandler:v17];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10004AC84;
    v16[3] = &unk_1000959B8;
    v16[4] = self;
    [v4 setHearingAidFeaturesHandler:v16];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10004AC90;
    v15[3] = &unk_100095990;
    v15[4] = self;
    [v4 setActivePresetIndexHandler:v15];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10004ACA0;
    v14[3] = &unk_100095990;
    v14[4] = self;
    [v4 setReadPresetsResponseHandler:v14];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004ACB0;
    v13[3] = &unk_100095990;
    v13[4] = self;
    [v4 setPresetNameChangedHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10004ACC0;
    v12[3] = &unk_100095990;
    v12[4] = self;
    [v4 setPresetRecordAddedHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10004ACD0;
    v11[3] = &unk_100095990;
    v11[4] = self;
    [v4 setPresetRecordDeletedHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004ACE0;
    v10[3] = &unk_100095990;
    v10[4] = self;
    [v4 setPresetRecordAvailableHandler:v10];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10004ACF0;
    v9[3] = &unk_100095990;
    v9[4] = self;
    [v4 setPresetRecordUnavailableHandler:v9];
  }
}

- (void)peripheralDisconnected:(id)a3
{
  v4 = a3;
  v5 = [(ClientHearingAccessProfile *)self binauralHearingAidSet];
  v6 = [v4 identifier];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = [(ClientHearingAccessProfile *)self binauralHearingAidSet];
    v9 = [v4 identifier];
    [v8 removeObject:v9];

    v10 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v4 identifier];
      *buf = 138412290;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Hearing Aid %@ removed from our Binaural Hearing Aid Set", buf, 0xCu);
    }
  }

  v13.receiver = self;
  v13.super_class = ClientHearingAccessProfile;
  [(ClientCommonAudioProfile *)&v13 peripheralDisconnected:v4];
}

- (void)processPresetControlPointResult:(unsigned __int8)a3 withIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v7 = [v6 objectForKey:v5];
}

- (void)processHearingAidFeatures:(id)a3
{
  v4 = a3;
  v5 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [v6 hasInterface];
    v8 = [v7 binauralHearingAid];

    if (v8)
    {
      v9 = [(ClientHearingAccessProfile *)self binauralHearingAidSet];
      v10 = [v9 containsObject:v4];

      if (v10)
      {
        goto LABEL_9;
      }

      v11 = [(ClientHearingAccessProfile *)self binauralHearingAidSet];
      [v11 addObject:v4];

      v12 = qword_1000A9FE0;
      if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      *v15 = 138412290;
      *&v15[4] = v4;
      v13 = "Hearing Aid %@ added to our Binaural Hearing Aid Set";
    }

    else
    {
      v12 = qword_1000A9FE0;
      if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:
        v14 = +[LEAudioXPCSession instance];
        [v14 supportedFeaturesUpdated:v6];

        goto LABEL_10;
      }

      *v15 = 138412290;
      *&v15[4] = v4;
      v13 = "Hearing Aid %@ not part of any Binaural Hearing Aid Set";
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, v15, 0xCu);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)HAPSetNextPreset:(id)a3
{
  v4 = a3;
  v5 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [v6 hasInterface];

    if (v7)
    {
      v8 = [v6 hasInterface];
      v9 = [v8 presetSyncSupported];

      if (v9)
      {
        [v6 sendSetNextPresetSyncLocally];
        goto LABEL_21;
      }

      v10 = [v6 hasInterface];
      v11 = [v10 binauralHearingAid];

      if (v11)
      {
        v12 = [v6 peripheral];
        v13 = [v12 identifier];
        v14 = [(ClientHearingAccessProfile *)self getSecondBinauraldHearingAid:v13];

        if (v14)
        {
          v15 = [v14 hasInterface];
          v16 = [v15 presetSyncSupported];

          if (v16)
          {
            [v14 sendSetNextPresetSyncLocally];
LABEL_20:

            goto LABEL_21;
          }

          v17 = [v6 hasInterface];
          v18 = [v17 independentPresets];

          if ((v18 & 1) == 0)
          {
            v19 = [(ClientHearingAccessProfile *)self binauralHearingAidSet];
            v20 = [(ClientCommonAudioProfile *)self getOrderedAccessSet:v19];

            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v21 = v20;
            v22 = [v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v27;
              do
              {
                for (i = 0; i != v23; i = i + 1)
                {
                  if (*v27 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  [*(*(&v26 + 1) + 8 * i) sendSetNextPreset];
                }

                v23 = [v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
              }

              while (v23);
            }

            goto LABEL_20;
          }
        }
      }

      [v6 sendSetNextPreset];
    }
  }

LABEL_21:
}

- (void)HAPSetPreviousPreset:(id)a3
{
  v4 = a3;
  v5 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [v6 hasInterface];

    if (v7)
    {
      v8 = [v6 hasInterface];
      v9 = [v8 presetSyncSupported];

      if (v9)
      {
        [v6 sendSetPreviousPresetSyncLocally];
        goto LABEL_21;
      }

      v10 = [v6 hasInterface];
      v11 = [v10 binauralHearingAid];

      if (v11)
      {
        v12 = [v6 peripheral];
        v13 = [v12 identifier];
        v14 = [(ClientHearingAccessProfile *)self getSecondBinauraldHearingAid:v13];

        if (v14)
        {
          v15 = [v14 hasInterface];
          v16 = [v15 presetSyncSupported];

          if (v16)
          {
            [v14 sendSetPreviousPresetSyncLocally];
LABEL_20:

            goto LABEL_21;
          }

          v17 = [v6 hasInterface];
          v18 = [v17 independentPresets];

          if ((v18 & 1) == 0)
          {
            v19 = [(ClientHearingAccessProfile *)self binauralHearingAidSet];
            v20 = [(ClientCommonAudioProfile *)self getOrderedAccessSet:v19];

            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v21 = v20;
            v22 = [v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v27;
              do
              {
                for (i = 0; i != v23; i = i + 1)
                {
                  if (*v27 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  [*(*(&v26 + 1) + 8 * i) sendSetPreviousPreset];
                }

                v23 = [v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
              }

              while (v23);
            }

            goto LABEL_20;
          }
        }
      }

      [v6 sendSetPreviousPreset];
    }
  }

LABEL_21:
}

- (void)HAPReadActivePresetIndex:(id)a3
{
  v4 = a3;
  v5 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v7 = [v5 objectForKey:v4];

  if (v7)
  {
    v6 = [v7 hasInterface];

    if (v6)
    {
      [v7 sendReadActivePresetIndex];
    }
  }
}

- (void)HAPReadHearingAidFeatures:(id)a3
{
  v4 = a3;
  v5 = [(ClientCommonAudioProfile *)self coordinatedSet];
  v7 = [v5 objectForKey:v4];

  if (v7)
  {
    v6 = [v7 hasInterface];

    if (v6)
    {
      [v7 sendReadHearingAidFeatures];
    }
  }
}

- (void)HAPSendSetNextPreset:(id)a3 syncLocally:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(ClientCommonAudioProfile *)self coordinatedSet];
        v13 = [v12 objectForKey:v11];

        if (v13)
        {
          if (v4)
          {
            [v13 sendSetNextPresetSyncLocally];
          }

          else
          {
            [v13 sendSetNextPreset];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)HAPSendSetPreviousPreset:(id)a3 syncLocally:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(ClientCommonAudioProfile *)self coordinatedSet];
        v13 = [v12 objectForKey:v11];

        if (v13)
        {
          if (v4)
          {
            [v13 sendSetPreviousPresetSyncLocally];
          }

          else
          {
            [v13 sendSetPreviousPreset];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (id)getSecondBinauraldHearingAid:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(ClientHearingAccessProfile *)self binauralHearingAidSet];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (v10 != v4)
        {
          v12 = [(ClientCommonAudioProfile *)self coordinatedSet];
          v11 = [v12 objectForKey:v10];

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

@end