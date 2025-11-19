@interface WebBookmarksCreditCardImporterDelgate
- (WebBookmarksCreditCardImporterDelgate)initWithConnection:(id)a3;
- (void)finishWithCompletionHandler:(id)a3;
- (void)importCreditCardDataWithCardNumber:(id)a3 cardName:(id)a4 cardholderName:(id)a5 cardExpirationMonth:(id)a6 cardExpirationYear:(id)a7 lastUsedDate:(id)a8;
@end

@implementation WebBookmarksCreditCardImporterDelgate

- (WebBookmarksCreditCardImporterDelgate)initWithConnection:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WebBookmarksCreditCardImporterDelgate;
  v6 = [(WebBookmarksCreditCardImporterDelgate *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    v8 = v7;
  }

  return v7;
}

- (void)importCreditCardDataWithCardNumber:(id)a3 cardName:(id)a4 cardholderName:(id)a5 cardExpirationMonth:(id)a6 cardExpirationYear:(id)a7 lastUsedDate:(id)a8
{
  v26 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  connection = self->_connection;
  v19 = kWebBookmarksSaveImportedCreditCardMessageName;
  v20 = a3;
  v21 = [(WebBookmarksXPCConnection *)connection messageWithName:v19];
  v22 = kWebBookmarksSaveImportedCreditCardNumberKey;
  v23 = [v20 UTF8String];

  xpc_dictionary_set_string(v21, v22, v23);
  if (v26 && [v26 length])
  {
    xpc_dictionary_set_string(v21, kWebBookmarksSaveImportedCreditCardNameKey, [v26 UTF8String]);
  }

  if (v14 && [v14 length])
  {
    xpc_dictionary_set_string(v21, kWebBookmarksSaveImportedCreditCardHolderNameKey, [v14 UTF8String]);
  }

  if (v15)
  {
    xpc_dictionary_set_int64(v21, kWebBookmarksSaveImportedCreditCardExpirationMonthKey, [v15 integerValue]);
  }

  if (v16)
  {
    xpc_dictionary_set_int64(v21, kWebBookmarksSaveImportedCreditCardExpirationYearKey, [v16 integerValue]);
  }

  if (v17)
  {
    v24 = kWebBookmarksSaveImportedCreditCardLastUsedDateKey;
    [v17 timeIntervalSinceReferenceDate];
    xpc_dictionary_set_date(v21, v24, v25);
  }

  [(WebBookmarksXPCConnection *)self->_connection sendMessage:v21];
}

- (void)finishWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksFinishedImportingCreditCardsMessageName];
  connection = self->_connection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100006834;
  v8[3] = &unk_100029128;
  v9 = v4;
  v7 = v4;
  [(WebBookmarksXPCConnection *)connection sendMessage:v5 withReplyHandler:v8];
}

@end