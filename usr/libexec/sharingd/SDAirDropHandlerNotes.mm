@interface SDAirDropHandlerNotes
+ (id)extractNotesURLs:(id)a3;
- (BOOL)canHandleTransfer;
- (SDAirDropHandlerNotes)initWithTransfer:(id)a3;
- (id)createDestination;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
- (void)updatePossibleActions;
@end

@implementation SDAirDropHandlerNotes

- (SDAirDropHandlerNotes)initWithTransfer:(id)a3
{
  v9.receiver = self;
  v9.super_class = SDAirDropHandlerNotes;
  v3 = [(SDAirDropHandlerGenericFiles *)&v9 initWithTransfer:a3 bundleIdentifier:@"com.apple.mobilenotes"];
  v4 = v3;
  if (v3)
  {
    v5 = [(SDAirDropHandler *)v3 bundleProxy];

    if (v5)
    {
      v6 = [(SDAirDropHandler *)v4 bundleProxy];
      v10 = v6;
      v7 = [NSArray arrayWithObjects:&v10 count:1];
      [(SDAirDropHandlerGenericFiles *)v4 setAvailableApplications:v7];
    }
  }

  return v4;
}

- (BOOL)canHandleTransfer
{
  if (![(SDAirDropHandler *)self isJustFiles])
  {
    return 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(SDAirDropHandler *)self transfer];
  v4 = [v3 metaData];
  v5 = [v4 rawFiles];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = kSFOperationFileNameKey;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) objectForKeyedSubscript:v9];
        v12 = [v11 pathExtension];

        LODWORD(v11) = SFIsNote();
        if (!v11)
        {
          v13 = 0;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_13:

  return v13;
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = SDAirDropHandlerNotes;
  return [(SDAirDropHandlerGenericFiles *)&v3 transferTypes]| 0x100;
}

- (id)suitableContentsDescription
{
  v3 = [(SDAirDropHandler *)self senderName];
  v4 = [(SDAirDropHandler *)self totalSharedItemsCount];
  v13 = @"NOTE";
  v5 = [NSNumber numberWithUnsignedInteger:v4];
  v14 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v15 = v6;
  v7 = [NSArray arrayWithObjects:&v15 count:1];
  v8 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v7];

  LODWORD(v6) = [(SDAirDropHandler *)self isModernProgress];
  v9 = SFLocalizedStringForKey();
  if (v6)
  {
    [NSString localizedStringWithFormat:v9, v4, v12];
  }

  else
  {
    [NSString localizedStringWithFormat:v9, v3, v4];
  }
  v10 = ;

  return v10;
}

- (void)updatePossibleActions
{
  v2.receiver = self;
  v2.super_class = SDAirDropHandlerNotes;
  [(SDAirDropHandlerGenericFiles *)&v2 updatePossibleActions];
}

- (id)createDestination
{
  v3 = NSHomeDirectory();
  v4 = [NSURL fileURLWithPath:v3 isDirectory:1];
  v9 = 0;
  v5 = sub_1001F1158(v4, &v9);
  v6 = v9;

  if (!v5)
  {
    v7 = airdrop_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100105AB4(self, v6, v7);
    }
  }

  return v5;
}

+ (id)extractNotesURLs:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v21;
    *&v7 = 136315394;
    v19 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [NSFileManager defaultManager:v19];
        v13 = [v11 path];
        v14 = [v12 fileExistsAtPath:v13];

        if (v14)
        {
          v15 = [v11 absoluteString];
          v16 = [v15 pathExtension];

          if (SFIsNote())
          {
            [v4 addObject:v11];
          }

          else
          {
            v17 = airdrop_log();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v19;
              v25 = "+[SDAirDropHandlerNotes extractNotesURLs:]";
              v26 = 2112;
              v27 = v11;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "### %s - dropped URL:[%@]", buf, 0x16u);
            }
          }
        }

        else
        {
          v16 = airdrop_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            *buf = v19;
            v25 = "+[SDAirDropHandlerNotes extractNotesURLs:]";
            v26 = 2112;
            v27 = v11;
            _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "### %s -- URL does not exist on filesystem:[%@]", buf, 0x16u);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v8);
  }

  return v4;
}

@end