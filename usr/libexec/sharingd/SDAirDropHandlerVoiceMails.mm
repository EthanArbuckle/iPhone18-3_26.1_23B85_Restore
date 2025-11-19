@interface SDAirDropHandlerVoiceMails
- (BOOL)canHandleTransfer;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
@end

@implementation SDAirDropHandlerVoiceMails

- (BOOL)canHandleTransfer
{
  v3 = [(SDAirDropHandler *)self transfer];
  v4 = [v3 metaData];
  v5 = [v4 senderBundleID];
  v6 = [v5 isEqual:@"com.apple.mobilephone"];

  return v6 & [(SDAirDropHandlerVoiceMemos *)self canHandleTransferRegardlessOfBundleID];
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = SDAirDropHandlerVoiceMails;
  return [(SDAirDropHandlerVoiceMemos *)&v3 transferTypes]| 0x800;
}

- (id)suitableContentsDescription
{
  v3 = [(SDAirDropHandler *)self senderName];
  v4 = [(SDAirDropHandler *)self totalSharedItemsCount];
  v13 = @"VOICEMAIL";
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

@end