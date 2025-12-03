@interface ANCVoicemailAlert
- (ANCVoicemailAlert)initWithVoicemail:(id)voicemail manager:(id)manager contactStore:(id)store queue:(id)queue;
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

- (ANCVoicemailAlert)initWithVoicemail:(id)voicemail manager:(id)manager contactStore:(id)store queue:(id)queue
{
  voicemailCopy = voicemail;
  managerCopy = manager;
  storeCopy = store;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = ANCVoicemailAlert;
  v15 = [(ANCAlert *)&v18 initWithCategoryID:3];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_voicemail, voicemail);
    objc_storeStrong(&v16->_manager, manager);
    objc_storeStrong(&v16->_contactStore, store);
    objc_storeStrong(&v16->_queue, queue);
  }

  return v16;
}

- (id)title
{
  voicemail = [(ANCVoicemailAlert *)self voicemail];
  senderDestinationID = [voicemail senderDestinationID];

  if (senderDestinationID)
  {
    v5 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
    v15 = v5;
    v6 = [NSArray arrayWithObjects:&v15 count:1];

    voicemail2 = [(ANCVoicemailAlert *)self voicemail];
    contactStore = [(ANCVoicemailAlert *)self contactStore];
    v9 = [voicemail2 contactUsingContactStore:contactStore withKeysToFetch:v6];

    if (v9)
    {
      v10 = [CNContactFormatter stringFromContact:v9 style:0];
    }

    else
    {
      voicemail3 = [(ANCVoicemailAlert *)self voicemail];
      senderDestinationID2 = [voicemail3 senderDestinationID];
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
  voicemail = [(ANCVoicemailAlert *)self voicemail];
  senderDestinationID = [voicemail senderDestinationID];

  if (senderDestinationID)
  {
    voicemail2 = [(ANCVoicemailAlert *)self voicemail];
    contactStore = [(ANCVoicemailAlert *)self contactStore];
    v26 = CNContactPhoneNumbersKey;
    v7 = [NSArray arrayWithObjects:&v26 count:1];
    v8 = [voicemail2 contactUsingContactStore:contactStore withKeysToFetch:v7];

    if (v8)
    {
      voicemail3 = [(ANCVoicemailAlert *)self voicemail];
      senderDestinationID2 = [voicemail3 senderDestinationID];
      v11 = [CNPhoneNumber phoneNumberWithStringValue:senderDestinationID2];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      phoneNumbers = [v8 phoneNumbers];
      v13 = [phoneNumbers countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        v14 = *v22;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(phoneNumbers);
            }

            v16 = *(*(&v21 + 1) + 8 * i);
            value = [v16 value];
            v18 = [v11 isEqual:value];

            if (v18)
            {
              label = [v16 label];
              v13 = [CNLabeledValue localizedStringForLabel:label];

              goto LABEL_14;
            }
          }

          v13 = [phoneNumbers countByEnumeratingWithState:&v21 objects:v25 count:16];
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
  voicemail = [(ANCVoicemailAlert *)self voicemail];
  date = [voicemail date];

  return date;
}

- (BOOL)hasPositiveAction
{
  voicemail = [(ANCVoicemailAlert *)self voicemail];
  callbackDestinationID = [voicemail callbackDestinationID];
  if ([callbackDestinationID length])
  {
    v5 = 1;
  }

  else
  {
    voicemail2 = [(ANCVoicemailAlert *)self voicemail];
    senderDestinationID = [voicemail2 senderDestinationID];
    v5 = [senderDestinationID length] != 0;
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
  voicemail = [(ANCVoicemailAlert *)self voicemail];
  callbackDestinationID = [voicemail callbackDestinationID];
  v5 = [callbackDestinationID length];

  voicemail2 = [(ANCVoicemailAlert *)self voicemail];
  voicemail3 = voicemail2;
  if (v5)
  {
    callbackDestinationID2 = [voicemail2 callbackDestinationID];
  }

  else
  {
    senderDestinationID = [voicemail2 senderDestinationID];
    v10 = [senderDestinationID length];

    if (!v10)
    {
      return 0;
    }

    voicemail3 = [(ANCVoicemailAlert *)self voicemail];
    callbackDestinationID2 = [voicemail3 senderDestinationID];
  }

  v11 = callbackDestinationID2;

  if (!v11)
  {
    return 0;
  }

  v12 = objc_alloc_init(TUCallProviderManager);
  v13 = [TUDialRequest alloc];
  telephonyProvider = [v12 telephonyProvider];
  v15 = [v13 initWithProvider:telephonyProvider];

  v16 = [TUHandle handleWithDestinationID:v11];
  [v15 setHandle:v16];

  queue = [(ANCVoicemailAlert *)self queue];
  v18 = [TUCallCenter callCenterWithQueue:queue];
  v19 = [v18 dialWithRequest:v15];
  v20 = v19 != 0;

  return v20;
}

- (BOOL)performNegativeAction
{
  manager = [(ANCVoicemailAlert *)self manager];
  voicemail = [(ANCVoicemailAlert *)self voicemail];
  v5 = [manager trashVoicemail:voicemail];

  return 1;
}

@end