@interface WebBookmarksCreditCardImporterDelgate
- (WebBookmarksCreditCardImporterDelgate)initWithConnection:(id)connection;
- (void)finishWithCompletionHandler:(id)handler;
- (void)importCreditCardDataWithCardNumber:(id)number cardName:(id)name cardholderName:(id)cardholderName cardExpirationMonth:(id)month cardExpirationYear:(id)year lastUsedDate:(id)date;
@end

@implementation WebBookmarksCreditCardImporterDelgate

- (WebBookmarksCreditCardImporterDelgate)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v10.receiver = self;
  v10.super_class = WebBookmarksCreditCardImporterDelgate;
  v6 = [(WebBookmarksCreditCardImporterDelgate *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    v8 = v7;
  }

  return v7;
}

- (void)importCreditCardDataWithCardNumber:(id)number cardName:(id)name cardholderName:(id)cardholderName cardExpirationMonth:(id)month cardExpirationYear:(id)year lastUsedDate:(id)date
{
  nameCopy = name;
  cardholderNameCopy = cardholderName;
  monthCopy = month;
  yearCopy = year;
  dateCopy = date;
  connection = self->_connection;
  v19 = kWebBookmarksSaveImportedCreditCardMessageName;
  numberCopy = number;
  v21 = [(WebBookmarksXPCConnection *)connection messageWithName:v19];
  v22 = kWebBookmarksSaveImportedCreditCardNumberKey;
  uTF8String = [numberCopy UTF8String];

  xpc_dictionary_set_string(v21, v22, uTF8String);
  if (nameCopy && [nameCopy length])
  {
    xpc_dictionary_set_string(v21, kWebBookmarksSaveImportedCreditCardNameKey, [nameCopy UTF8String]);
  }

  if (cardholderNameCopy && [cardholderNameCopy length])
  {
    xpc_dictionary_set_string(v21, kWebBookmarksSaveImportedCreditCardHolderNameKey, [cardholderNameCopy UTF8String]);
  }

  if (monthCopy)
  {
    xpc_dictionary_set_int64(v21, kWebBookmarksSaveImportedCreditCardExpirationMonthKey, [monthCopy integerValue]);
  }

  if (yearCopy)
  {
    xpc_dictionary_set_int64(v21, kWebBookmarksSaveImportedCreditCardExpirationYearKey, [yearCopy integerValue]);
  }

  if (dateCopy)
  {
    v24 = kWebBookmarksSaveImportedCreditCardLastUsedDateKey;
    [dateCopy timeIntervalSinceReferenceDate];
    xpc_dictionary_set_date(v21, v24, v25);
  }

  [(WebBookmarksXPCConnection *)self->_connection sendMessage:v21];
}

- (void)finishWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksFinishedImportingCreditCardsMessageName];
  connection = self->_connection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100006834;
  v8[3] = &unk_100029128;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(WebBookmarksXPCConnection *)connection sendMessage:v5 withReplyHandler:v8];
}

@end