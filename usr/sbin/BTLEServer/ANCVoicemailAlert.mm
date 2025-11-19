@interface ANCVoicemailAlert
- (ANCVoicemailAlert)initWithVoicemail:(id)a3 manager:(id)a4 contactStore:(id)a5 queue:(id)a6;
- (BOOL)hasPositiveAction;
- (BOOL)performNegativeAction;
- (BOOL)performPositiveAction;
- (id)date;
- (id)message;
- (id)negativeActionLabel;
- (id)positiveActionLabel;
- (id)subtitle;
- (id)title;
@end

@implementation ANCVoicemailAlert

- (ANCVoicemailAlert)initWithVoicemail:(id)a3 manager:(id)a4 contactStore:(id)a5 queue:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ANCVoicemailAlert;
  v15 = [(ANCAlert *)&v18 initWithCategoryID:3];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_voicemail, a3);
    objc_storeStrong(&v16->_manager, a4);
    objc_storeStrong(&v16->_contactStore, a5);
    objc_storeStrong(&v16->_queue, a6);
  }

  return v16;
}

- (id)title
{
  v3 = [(ANCVoicemailAlert *)self voicemail];
  v4 = [v3 senderDestinationID];

  if (v4)
  {
    v5 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
    v15 = v5;
    v6 = [NSArray arrayWithObjects:&v15 count:1];

    v7 = [(ANCVoicemailAlert *)self voicemail];
    v8 = [(ANCVoicemailAlert *)self contactStore];
    v9 = [v7 contactUsingContactStore:v8 withKeysToFetch:v6];

    if (v9)
    {
      v10 = [CNContactFormatter stringFromContact:v9 style:0];
    }

    else
    {
      v11 = [(ANCVoicemailAlert *)self voicemail];
      v12 = [v11 senderDestinationID];
      v13 = TUHomeCountryCode();
      v10 = TUFormattedPhoneNumber();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)subtitle
{
  v3 = [(ANCVoicemailAlert *)self voicemail];
  v4 = [v3 senderDestinationID];

  if (v4)
  {
    v5 = [(ANCVoicemailAlert *)self voicemail];
    v6 = [(ANCVoicemailAlert *)self contactStore];
    v26 = CNContactPhoneNumbersKey;
    v7 = [NSArray arrayWithObjects:&v26 count:1];
    v8 = [v5 contactUsingContactStore:v6 withKeysToFetch:v7];

    if (v8)
    {
      v9 = [(ANCVoicemailAlert *)self voicemail];
      v10 = [v9 senderDestinationID];
      v11 = [CNPhoneNumber phoneNumberWithStringValue:v10];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = [v8 phoneNumbers];
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        v14 = *v22;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v21 + 1) + 8 * i);
            v17 = [v16 value];
            v18 = [v11 isEqual:v17];

            if (v18)
            {
              v19 = [v16 label];
              v13 = [CNLabeledValue localizedStringForLabel:v19];

              goto LABEL_14;
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)message
{
  v2 = +[NSBundle mobileBluetoothBundle];
  v3 = [v2 localizedStringForKey:@"VOICEMAIL" value:@"Voicemail" table:0];

  return v3;
}

- (id)date
{
  v2 = [(ANCVoicemailAlert *)self voicemail];
  v3 = [v2 date];

  return v3;
}

- (BOOL)hasPositiveAction
{
  v3 = [(ANCVoicemailAlert *)self voicemail];
  v4 = [v3 callbackDestinationID];
  if ([v4 length])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(ANCVoicemailAlert *)self voicemail];
    v7 = [v6 senderDestinationID];
    v5 = [v7 length] != 0;
  }

  return v5;
}

- (id)positiveActionLabel
{
  v2 = +[NSBundle mobileBluetoothBundle];
  v3 = [v2 localizedStringForKey:@"CALL_BACK" value:@"Call Back" table:0];

  return v3;
}

- (id)negativeActionLabel
{
  v2 = +[NSBundle mobileBluetoothBundle];
  v3 = [v2 localizedStringForKey:@"DELETE" value:@"Delete" table:0];

  return v3;
}

- (BOOL)performPositiveAction
{
  v3 = [(ANCVoicemailAlert *)self voicemail];
  v4 = [v3 callbackDestinationID];
  v5 = [v4 length];

  v6 = [(ANCVoicemailAlert *)self voicemail];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 callbackDestinationID];
  }

  else
  {
    v9 = [v6 senderDestinationID];
    v10 = [v9 length];

    if (!v10)
    {
      return 0;
    }

    v7 = [(ANCVoicemailAlert *)self voicemail];
    v8 = [v7 senderDestinationID];
  }

  v11 = v8;

  if (!v11)
  {
    return 0;
  }

  v12 = objc_alloc_init(TUCallProviderManager);
  v13 = [TUDialRequest alloc];
  v14 = [v12 telephonyProvider];
  v15 = [v13 initWithProvider:v14];

  v16 = [TUHandle handleWithDestinationID:v11];
  [v15 setHandle:v16];

  v17 = [(ANCVoicemailAlert *)self queue];
  v18 = [TUCallCenter callCenterWithQueue:v17];
  v19 = [v18 dialWithRequest:v15];
  v20 = v19 != 0;

  return v20;
}

- (BOOL)performNegativeAction
{
  v3 = [(ANCVoicemailAlert *)self manager];
  v4 = [(ANCVoicemailAlert *)self voicemail];
  v5 = [v3 trashVoicemail:v4];

  return 1;
}

@end