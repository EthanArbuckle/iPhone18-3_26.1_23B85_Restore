@interface NFContactlessPaymentEndEvent
+ (BOOL)logsTransactionDetails;
- (NFContactlessPaymentEndEvent)initWithCoder:(id)a3;
- (NFContactlessPaymentEndEvent)initWithDictionary:(id)a3;
- (id)asDictionary;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFContactlessPaymentEndEvent

+ (BOOL)logsTransactionDetails
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm"];
  v3 = [v2 BOOLForKey:@"LogTransactionDetails"];

  return v3;
}

- (NFContactlessPaymentEndEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = NFContactlessPaymentEndEvent;
  v5 = [(NFContactlessPaymentEndEvent *)&v38 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"appletIdentifier"];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = v6;

    v8 = [v4 objectForKeyedSubscript:@"endPointIdentifier"];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = v8;

    v10 = [v4 objectForKeyedSubscript:@"readerIdentifier"];
    readerIdentifier = v5->_readerIdentifier;
    v5->_readerIdentifier = v10;

    v12 = [v4 objectForKeyedSubscript:@"transactionIdentifier"];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v12;

    v14 = [v4 objectForKeyedSubscript:@"didError"];
    v5->_didError = [v14 BOOLValue];

    v15 = [v4 objectForKeyedSubscript:@"command"];
    v5->_command = [v15 unsignedIntValue];

    v16 = [v4 objectForKeyedSubscript:@"status"];
    v5->_status = [v16 unsignedIntValue];

    v17 = [v4 objectForKeyedSubscript:@"result"];
    v5->_result = [v17 unsignedIntValue];

    v18 = [v4 objectForKeyedSubscript:@"informative"];
    v5->_informative = [v18 unsignedIntValue];

    v19 = [v4 objectForKeyedSubscript:@"amount"];
    amount = v5->_amount;
    v5->_amount = v19;

    v21 = [v4 objectForKeyedSubscript:@"currency"];
    currency = v5->_currency;
    v5->_currency = v21;

    v23 = [v4 objectForKeyedSubscript:@"tlv"];
    tlv = v5->_tlv;
    v5->_tlv = v23;

    v25 = [v4 objectForKeyedSubscript:@"type"];
    v5->_type = [v25 unsignedIntValue];

    v26 = [v4 objectForKeyedSubscript:@"felicaInfo"];
    felicaInfo = v5->_felicaInfo;
    v5->_felicaInfo = v26;

    v28 = [v4 objectForKeyedSubscript:@"parsedInfo"];
    parsedInfo = v5->_parsedInfo;
    v5->_parsedInfo = v28;

    v30 = [v4 objectForKeyedSubscript:@"BackgroundTransaction"];
    v5->_background = [v30 BOOLValue];

    v31 = [v4 objectForKeyedSubscript:@"PairingModeBrandCode"];
    if (v31)
    {
      v32 = v5->_parsedInfo;
      if (v32)
      {
        v33 = [(NSDictionary *)v32 mutableCopy];
        [(NSDictionary *)v33 setObject:v31 forKeyedSubscript:@"PairingModeBrandCode"];
        v34 = [(NSDictionary *)v33 copy];
        v35 = v5->_parsedInfo;
        v5->_parsedInfo = v34;
      }

      else
      {
        v39 = @"PairingModeBrandCode";
        v40 = v31;
        v36 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v33 = v5->_parsedInfo;
        v5->_parsedInfo = v36;
      }
    }
  }

  return v5;
}

- (id)description
{
  if (self->_keyIdentifier)
  {
    v3 = [NSString alloc];
    appletIdentifier = self->_appletIdentifier;
    v5 = [v3 initWithFormat:@"applet=%@ endpoint=%@ ", appletIdentifier, self->_keyIdentifier];
  }

  else
  {
    readerIdentifier = self->_readerIdentifier;
    v7 = [NSString alloc];
    v8 = self->_appletIdentifier;
    if (readerIdentifier)
    {
      v5 = [v7 initWithFormat:@"applet=%@ reader=%@ ", self->_appletIdentifier, self->_readerIdentifier];
    }

    else
    {
      v5 = [v7 initWithFormat:@"applet=%@ ", self->_appletIdentifier, v36];
    }
  }

  type = self->_type;
  v10 = @"UNKNOWN";
  if (type <= 0x16)
  {
    if (self->_type > 1u)
    {
      if (type == 2)
      {
        v10 = @"VoidRefund";
      }

      else if (type == 9)
      {
        v10 = @"PurchaseWithCashback";
      }
    }

    else if (self->_type)
    {
      v10 = @"Cashback";
    }

    else
    {
      v10 = @"Purchase";
    }
  }

  else if (self->_type <= 0x21u)
  {
    if (type == 23)
    {
      v10 = @"CashDisbursement";
    }

    else if (type == 32)
    {
      v10 = @"RefundPurchase";
    }
  }

  else
  {
    switch(type)
    {
      case 0x22u:
        v10 = @"VoidPurchase";
        break;
      case 0x100u:
        v10 = @"Felica";
        break;
      case 0xF001u:
        v10 = @"Parsed by ATL";
        break;
    }
  }

  v11 = self->_result;
  v12 = @"UNKNOWN";
  v41 = v10;
  v42 = v5;
  if (v11 > 0xF001)
  {
    if (self->_result > 0xF004u)
    {
      switch(v11)
      {
        case 0xF005u:
          v12 = @"key not found";
          break;
        case 0xF006u:
          v12 = @"reader in pairing mode";
          break;
        case 0xF007u:
          v12 = @"no matching key";
          break;
      }
    }

    else
    {
      switch(v11)
      {
        case 0xF002u:
          v12 = @"online type f";
          break;
        case 0xF003u:
          v12 = @"express transit";
          break;
        case 0xF004u:
          v12 = @"incompatible applet";
          break;
      }
    }
  }

  else if (self->_result > 0xFFu)
  {
    switch(v11)
    {
      case 0x100u:
        v12 = @"failed";
        break;
      case 0xF000u:
        v12 = @"failed/field tear";
        break;
      case 0xF001u:
        v12 = @"offline type f";
        break;
    }
  }

  else if (self->_result)
  {
    if (v11 == 64)
    {
      v12 = @"offline/approved";
    }

    else if (v11 == 128)
    {
      v12 = @"online/pending";
    }
  }

  else
  {
    v12 = @"offline/declined";
  }

  v13 = objc_opt_new();
  v14 = v13;
  informative = self->_informative;
  if (informative)
  {
    [v13 addObject:@"PINRequired"];
    informative = self->_informative;
    if ((informative & 2) == 0)
    {
LABEL_55:
      if ((informative & 4) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_66;
    }
  }

  else if ((informative & 2) == 0)
  {
    goto LABEL_55;
  }

  [v14 addObject:@"WarningPresent"];
  informative = self->_informative;
  if ((informative & 4) == 0)
  {
LABEL_56:
    if ((informative & 8) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_67;
  }

LABEL_66:
  [v14 addObject:@"ContactIssuer"];
  informative = self->_informative;
  if ((informative & 8) == 0)
  {
LABEL_57:
    if ((informative & 0x100) == 0)
    {
      goto LABEL_58;
    }

LABEL_68:
    [v14 addObject:@"EMVTransaction"];
    if ((self->_informative & 0x8000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_69;
  }

LABEL_67:
  [v14 addObject:@"PINAttemptsExceeded"];
  informative = self->_informative;
  if ((informative & 0x100) != 0)
  {
    goto LABEL_68;
  }

LABEL_58:
  if ((informative & 0x8000) == 0)
  {
    goto LABEL_59;
  }

LABEL_69:
  [v14 addObject:@"ActionNeeded"];
LABEL_59:
  v40 = v12;
  if (!+[NFContactlessPaymentEndEvent logsTransactionDetails])
  {
LABEL_71:
    v39 = &stru_10031EA18;
    goto LABEL_76;
  }

  v16 = self->_type;
  if (v16 == 61441)
  {
    parsedInfo = self->_parsedInfo;
    if (parsedInfo)
    {
      goto LABEL_63;
    }

    goto LABEL_71;
  }

  if (v16 == 256)
  {
    parsedInfo = self->_felicaInfo;
    if (parsedInfo)
    {
LABEL_63:
      v39 = [(NSDictionary *)parsedInfo description];
      goto LABEL_76;
    }

    goto LABEL_71;
  }

  v18 = v14;
  v19 = [NSString alloc];
  v20 = v19;
  transactionIdentifier = self->_transactionIdentifier;
  if (self->_amount)
  {
    v22 = [[NSString alloc] initWithFormat:@"%@", self->_amount];
    v39 = [v20 initWithFormat:@"transID=%@ amount=%@ tlv=%@ ", transactionIdentifier, v22, self->_tlv];
  }

  else
  {
    v39 = [v19 initWithFormat:@"transID=%@ amount=%@ tlv=%@ ", transactionIdentifier, @"NOT_PRESENT", self->_tlv];
  }

  v14 = v18;
LABEL_76:
  v37 = v14;
  v38 = [NSString alloc];
  v43.receiver = self;
  v43.super_class = NFContactlessPaymentEndEvent;
  v23 = [(NFContactlessPaymentEndEvent *)&v43 description];
  didError = self->_didError;
  status = self->_status;
  v26 = self->_type;
  v27 = self->_result;
  v28 = self->_informative;
  command = self->_command;
  v30 = [v14 componentsJoinedByString:{@", "}];
  v31 = v30;
  currency = self->_currency;
  if (!currency)
  {
    currency = @"NOT_PRESENT";
  }

  v33 = @"NO";
  if (didError)
  {
    v33 = @"YES";
  }

  v34 = [v38 initWithFormat:@"%@ { %@ didError=%@ command=0x%04x status=0x%04x type=0x%04x(%@) result=0x%04x(%@) informative=0x%04x(%@) currency=%@ %@}", v23, v42, v33, command, status, v26, v41, v27, v40, v28, v30, currency, v39];

  return v34;
}

- (id)asDictionary
{
  type = self->_type;
  v4 = @"UNKNOWN";
  if (type <= 0x16)
  {
    if (self->_type > 1u)
    {
      if (type == 2)
      {
        v4 = @"VoidRefund";
      }

      else if (type == 9)
      {
        v4 = @"PurchaseWithCashback";
      }
    }

    else if (self->_type)
    {
      v4 = @"Cashback";
    }

    else
    {
      v4 = @"Purchase";
    }
  }

  else if (self->_type <= 0x21u)
  {
    if (type == 23)
    {
      v4 = @"CashDisbursement";
    }

    else if (type == 32)
    {
      v4 = @"RefundPurchase";
    }
  }

  else
  {
    switch(type)
    {
      case 0x22u:
        v4 = @"VoidPurchase";
        break;
      case 0x100u:
        v4 = @"Felica";
        break;
      case 0xF001u:
        v4 = @"ATL";
        break;
    }
  }

  v5 = self->_result;
  v6 = @"UNKNOWN";
  v38 = v4;
  if (v5 > 0xF001)
  {
    if (self->_result > 0xF004u)
    {
      switch(v5)
      {
        case 0xF005u:
          v6 = @"key not found";
          break;
        case 0xF006u:
          v6 = @"reader in pairing mode";
          break;
        case 0xF007u:
          v6 = @"no matching key";
          break;
      }
    }

    else
    {
      switch(v5)
      {
        case 0xF002u:
          v6 = @"online type f";
          break;
        case 0xF003u:
          v6 = @"express transit";
          break;
        case 0xF004u:
          v6 = @"incompatible applet";
          break;
      }
    }
  }

  else if (self->_result > 0xFFu)
  {
    switch(v5)
    {
      case 0x100u:
        v6 = @"failed";
        break;
      case 0xF000u:
        v6 = @"failed/field tear";
        break;
      case 0xF001u:
        v6 = @"offline type f";
        break;
    }
  }

  else if (self->_result)
  {
    if (v5 == 64)
    {
      v6 = @"offline/approved";
    }

    else if (v5 == 128)
    {
      v6 = @"online/pending";
    }
  }

  else
  {
    v6 = @"offline/declined";
  }

  v37 = v6;
  v7 = objc_opt_new();
  v8 = v7;
  informative = self->_informative;
  if (informative)
  {
    [v7 addObject:@"PINRequired"];
    informative = self->_informative;
    if ((informative & 2) == 0)
    {
LABEL_50:
      if ((informative & 4) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_59;
    }
  }

  else if ((informative & 2) == 0)
  {
    goto LABEL_50;
  }

  [v8 addObject:@"WarningPresent"];
  informative = self->_informative;
  if ((informative & 4) == 0)
  {
LABEL_51:
    if ((informative & 8) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_60;
  }

LABEL_59:
  [v8 addObject:@"ContactIssuer"];
  informative = self->_informative;
  if ((informative & 8) == 0)
  {
LABEL_52:
    if ((informative & 0x100) == 0)
    {
      goto LABEL_53;
    }

LABEL_61:
    [v8 addObject:@"EMVTransaction"];
    if ((self->_informative & 0x8000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_62;
  }

LABEL_60:
  [v8 addObject:@"PINAttemptsExceeded"];
  informative = self->_informative;
  if ((informative & 0x100) != 0)
  {
    goto LABEL_61;
  }

LABEL_53:
  if ((informative & 0x8000) == 0)
  {
    goto LABEL_54;
  }

LABEL_62:
  [v8 addObject:@"ActionNeeded"];
LABEL_54:
  if (+[NFContactlessPaymentEndEvent logsTransactionDetails])
  {
    v10 = [NSString alloc];
    v11 = v10;
    transactionIdentifier = self->_transactionIdentifier;
    if (self->_amount)
    {
      v13 = [[NSString alloc] initWithFormat:@"%@", self->_amount];
      v36 = [v11 initWithFormat:@", transID : %@, amount : %@, tlv : %@, ", transactionIdentifier, v13, self->_tlv];
    }

    else
    {
      v36 = [v10 initWithFormat:@", transID : %@, amount : %@, tlv : %@, ", transactionIdentifier, @"NOT_PRESENT", self->_tlv];
    }
  }

  else
  {
    v36 = &stru_10031EA18;
  }

  if (!self->_felicaInfo)
  {
    v14 = objc_alloc_init(NSDictionary);
    felicaInfo = self->_felicaInfo;
    self->_felicaInfo = v14;
  }

  if (!self->_parsedInfo)
  {
    v16 = objc_opt_new();
    parsedInfo = self->_parsedInfo;
    self->_parsedInfo = v16;
  }

  v18 = [NSDictionary alloc];
  appletIdentifier = self->_appletIdentifier;
  v35 = v18;
  readerIdentifier = self->_readerIdentifier;
  keyIdentifier = self->_keyIdentifier;
  v30 = [NSNumber numberWithUnsignedInt:self->_command];
  v19 = [NSNumber numberWithUnsignedShort:self->_status];
  v20 = [NSNumber numberWithUnsignedShort:self->_type];
  v21 = [NSNumber numberWithUnsignedShort:self->_result];
  v22 = [NSNumber numberWithUnsignedShort:self->_informative];
  v23 = [v8 componentsJoinedByString:{@", "}];
  currency = self->_currency;
  v31 = v8;
  v25 = self->_felicaInfo;
  v26 = self->_parsedInfo;
  v27 = [NSNumber numberWithBool:self->_background];
  v28 = [v35 initWithObjectsAndKeys:{appletIdentifier, @"applet", keyIdentifier, @"endpoint", readerIdentifier, @"reader", v30, @"command", v19, @"status", v20, @"type", v38, @"typeStr", v21, @"result", v37, @"resultStr", v22, @"informative", v23, @"informativeStr", currency, @"currency", v36, @"details", v25, @"felicaInfo", v26, @"parsedInfo", v27, @"background", 0}];

  return v28;
}

- (NFContactlessPaymentEndEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = NFContactlessPaymentEndEvent;
  v5 = [(NFContactlessPaymentEndEvent *)&v33 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appletIdentifier"];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endPointIdentifier"];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readerIdentifier"];
    readerIdentifier = v5->_readerIdentifier;
    v5->_readerIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionIdentifier"];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v12;

    v5->_didError = [v4 decodeBoolForKey:@"didError"];
    v5->_command = [v4 decodeInt32ForKey:@"command"];
    v5->_status = [v4 decodeInt32ForKey:@"status"];
    v5->_type = [v4 decodeInt32ForKey:@"type"];
    v5->_result = [v4 decodeInt32ForKey:@"result"];
    v5->_informative = [v4 decodeInt32ForKey:@"informative"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currency"];
    currency = v5->_currency;
    v5->_currency = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tlv"];
    tlv = v5->_tlv;
    v5->_tlv = v18;

    v5->_background = [v4 decodeBoolForKey:@"BackgroundTransaction"];
    v20 = [NSSet alloc];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v20 initWithObjects:{v21, v22, v23, v24, v25, v26, objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"felicaInfo"];
    felicaInfo = v5->_felicaInfo;
    v5->_felicaInfo = v28;

    v30 = [v4 decodeObjectOfClasses:v27 forKey:@"parsedInfo"];
    parsedInfo = v5->_parsedInfo;
    v5->_parsedInfo = v30;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  appletIdentifier = self->_appletIdentifier;
  v5 = a3;
  [v5 encodeObject:appletIdentifier forKey:@"appletIdentifier"];
  [v5 encodeObject:self->_keyIdentifier forKey:@"endPointIdentifier"];
  [v5 encodeObject:self->_readerIdentifier forKey:@"readerIdentifier"];
  [v5 encodeObject:self->_transactionIdentifier forKey:@"transactionIdentifier"];
  [v5 encodeBool:self->_didError forKey:@"didError"];
  [v5 encodeInt32:self->_command forKey:@"command"];
  [v5 encodeInt32:self->_status forKey:@"status"];
  [v5 encodeInt32:self->_type forKey:@"type"];
  [v5 encodeInt32:self->_result forKey:@"result"];
  [v5 encodeInt32:self->_informative forKey:@"informative"];
  [v5 encodeObject:self->_amount forKey:@"amount"];
  [v5 encodeObject:self->_currency forKey:@"currency"];
  [v5 encodeObject:self->_tlv forKey:@"tlv"];
  [v5 encodeObject:self->_felicaInfo forKey:@"felicaInfo"];
  [v5 encodeObject:self->_parsedInfo forKey:@"parsedInfo"];
  [v5 encodeBool:self->_background forKey:@"BackgroundTransaction"];
}

@end