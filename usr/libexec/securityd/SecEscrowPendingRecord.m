@interface SecEscrowPendingRecord
+ (id)loadAllFromKeychain:(id *)a3;
+ (id)loadFromKeychain:(id)a3 error:(id *)a4;
- (BOOL)deleteFromKeychain:(id *)a3;
- (BOOL)escrowAttemptedWithinLastSeconds:(double)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (BOOL)saveToKeychain:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCertCached:(BOOL)a3;
- (void)setHasLastEscrowAttemptTime:(BOOL)a3;
- (void)setHasTriggerRequestTime:(BOOL)a3;
- (void)setHasUploadCompleted:(BOOL)a3;
- (void)setHasUploadRetries:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SecEscrowPendingRecord

- (BOOL)deleteFromKeychain:(id *)a3
{
  v11[0] = kSecClass;
  v11[1] = kSecAttrAccessGroup;
  v12[0] = kSecClassInternetPassword;
  v12[1] = @"com.apple.sbd";
  v12[2] = @"escrow-prerecord";
  v11[2] = kSecAttrServer;
  v11[3] = kSecAttrAccount;
  v4 = [(SecEscrowPendingRecord *)self uuid];
  v12[3] = v4;
  v12[4] = &__kCFBooleanTrue;
  v11[4] = kSecUseDataProtectionKeychain;
  v11[5] = kSecAttrSynchronizable;
  v12[5] = &__kCFBooleanFalse;
  v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:6];
  v6 = [v5 mutableCopy];

  v7 = SecItemDelete(v6);
  v8 = v7;
  if (a3 && v7)
  {
    v9 = [NSString stringWithFormat:@"SecItemAdd: %d", v7];
    *a3 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v8 description:v9];
  }

  return v8 == 0;
}

- (BOOL)saveToKeychain:(id *)a3
{
  v32[0] = kSecClass;
  v32[1] = kSecAttrAccessible;
  v33[0] = kSecClassInternetPassword;
  v33[1] = kSecAttrAccessibleWhenUnlockedThisDeviceOnly;
  v32[2] = kSecAttrAccessGroup;
  v32[3] = kSecAttrServer;
  v33[2] = @"com.apple.sbd";
  v33[3] = @"escrow-prerecord";
  v32[4] = kSecAttrDescription;
  v4 = [(SecEscrowPendingRecord *)self uuid];
  v5 = [NSString stringWithFormat:@"Escrow Prerecord: %@", v4];
  v33[4] = v5;
  v32[5] = kSecAttrAccount;
  v6 = [(SecEscrowPendingRecord *)self uuid];
  v33[5] = v6;
  v32[6] = kSecValueData;
  v7 = [(SecEscrowPendingRecord *)self data];
  v33[6] = v7;
  v33[7] = &__kCFBooleanTrue;
  v32[7] = kSecAttrIsInvisible;
  v32[8] = kSecUseDataProtectionKeychain;
  v32[9] = kSecAttrSynchronizable;
  v33[8] = &__kCFBooleanTrue;
  v33[9] = &__kCFBooleanFalse;
  v8 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:10];
  v9 = [v8 mutableCopy];

  result = 0;
  v10 = SecItemAdd(v9, &result);
  if (v10)
  {
    if (v10 == -25299)
    {
      v11 = objc_alloc_init(NSMutableDictionary);
      v12 = [(__CFDictionary *)v9 objectForKeyedSubscript:kSecClass];
      [v11 setObject:v12 forKeyedSubscript:kSecClass];

      v13 = [(__CFDictionary *)v9 objectForKeyedSubscript:kSecAttrSynchronizable];
      [v11 setObject:v13 forKeyedSubscript:kSecAttrSynchronizable];

      v14 = [(__CFDictionary *)v9 objectForKeyedSubscript:kSecAttrSyncViewHint];
      [v11 setObject:v14 forKeyedSubscript:kSecAttrSyncViewHint];

      v15 = [(__CFDictionary *)v9 objectForKeyedSubscript:kSecAttrAccessGroup];
      [v11 setObject:v15 forKeyedSubscript:kSecAttrAccessGroup];

      v16 = [(__CFDictionary *)v9 objectForKeyedSubscript:kSecAttrAccount];
      [v11 setObject:v16 forKeyedSubscript:kSecAttrAccount];

      v17 = [(__CFDictionary *)v9 objectForKeyedSubscript:kSecAttrServer];
      [v11 setObject:v17 forKeyedSubscript:kSecAttrServer];

      v18 = [(__CFDictionary *)v9 objectForKeyedSubscript:kSecAttrPath];
      [v11 setObject:v18 forKeyedSubscript:kSecAttrPath];

      v19 = [(__CFDictionary *)v9 objectForKeyedSubscript:kSecUseDataProtectionKeychain];
      [v11 setObject:v19 forKeyedSubscript:kSecUseDataProtectionKeychain];

      v20 = [(__CFDictionary *)v9 mutableCopy];
      [v20 setObject:0 forKeyedSubscript:kSecClass];
      v21 = SecItemUpdate(v11, v20);
      if (v21)
      {
        v22 = v21;
        v23 = [NSString stringWithFormat:@"SecItemUpdate: %d", v21];
        v24 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v22 description:v23];
      }

      else
      {
        v24 = 0;
      }

      v27 = a3;
    }

    else
    {
      v26 = v10;
      v11 = [NSString stringWithFormat:@"SecItemAdd: %d", v10];
      v24 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v26 description:v11];
      v27 = a3;
    }

    v25 = v24 == 0;
    if (v27 && v24)
    {
      v28 = v24;
      v25 = 0;
      *v27 = v24;
    }
  }

  else
  {
    v24 = 0;
    v25 = 1;
  }

  return v25;
}

- (BOOL)escrowAttemptedWithinLastSeconds:(double)a3
{
  v4 = [NSDate dateWithTimeIntervalSinceNow:-a3];
  [v4 timeIntervalSince1970];
  v6 = v5;
  v7 = [(SecEscrowPendingRecord *)self hasLastEscrowAttemptTime]&& [(SecEscrowPendingRecord *)self lastEscrowAttemptTime]>= (v6 * 1000.0);

  return v7;
}

+ (id)loadAllFromKeychain:(id *)a3
{
  v32[0] = kSecClass;
  v32[1] = kSecAttrAccessGroup;
  v33[0] = kSecClassInternetPassword;
  v33[1] = @"com.apple.sbd";
  v32[2] = kSecAttrServer;
  v32[3] = kSecMatchLimit;
  v33[2] = @"escrow-prerecord";
  v33[3] = kSecMatchLimitAll;
  v32[4] = kSecAttrSynchronizable;
  v32[5] = kSecUseDataProtectionKeychain;
  v33[4] = &__kCFBooleanFalse;
  v33[5] = &__kCFBooleanTrue;
  v32[6] = kSecReturnAttributes;
  v32[7] = kSecReturnData;
  v33[6] = &__kCFBooleanTrue;
  v33[7] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:8];
  v5 = [v4 mutableCopy];

  result = 0;
  v6 = SecItemCopyMatching(v5, &result);
  if (v6)
  {
    v7 = v6;
    v8 = result;
    if (result)
    {
      result = 0;
      CFRelease(v8);
    }

    if (!a3)
    {
      v11 = 0;
      goto LABEL_22;
    }

    v30 = NSLocalizedDescriptionKey;
    v9 = [NSString stringWithFormat:@"SecItemCopyMatching: %d", v7];
    v31 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    [NSError errorWithDomain:NSOSStatusErrorDomain code:v7 userInfo:v10];
    *a3 = v11 = 0;
  }

  else
  {
    v11 = +[NSMutableArray array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = result;
    v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v22 = v5;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = [SecEscrowPendingRecord alloc];
          v18 = [v16 objectForKeyedSubscript:kSecValueData];
          v19 = [(SecEscrowPendingRecord *)v17 initWithData:v18];

          if (v19)
          {
            [v11 addObject:v19];
          }

          else
          {
            v20 = sub_100006274("SecError");
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "escrowrequest: Unable to deserialize keychain item", buf, 2u);
            }
          }
        }

        v13 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v13);
      v9 = v10;
      v5 = v22;
    }

    else
    {
      v9 = v10;
    }
  }

LABEL_22:

  return v11;
}

+ (id)loadFromKeychain:(id)a3 error:(id *)a4
{
  v5 = a3;
  v18[0] = kSecClass;
  v18[1] = kSecAttrAccessGroup;
  v19[0] = kSecClassInternetPassword;
  v19[1] = @"com.apple.sbd";
  v18[2] = kSecAttrServer;
  v18[3] = kSecAttrAccount;
  v19[2] = @"escrow-prerecord";
  v19[3] = v5;
  v18[4] = kSecMatchLimit;
  v18[5] = kSecAttrSynchronizable;
  v19[4] = kSecMatchLimitOne;
  v19[5] = &__kCFBooleanFalse;
  v18[6] = kSecUseDataProtectionKeychain;
  v18[7] = kSecReturnAttributes;
  v19[6] = &__kCFBooleanTrue;
  v19[7] = &__kCFBooleanTrue;
  v18[8] = kSecReturnData;
  v19[8] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:9];
  v7 = [v6 mutableCopy];

  result = 0;
  v8 = SecItemCopyMatching(v7, &result);
  v9 = result;
  if (!v8)
  {
    v13 = [SecEscrowPendingRecord alloc];
    v11 = [v9 objectForKeyedSubscript:kSecValueData];
    v12 = [(SecEscrowPendingRecord *)v13 initWithData:v11];
    goto LABEL_7;
  }

  v10 = v8;
  if (result)
  {
    result = 0;
    CFRelease(v9);
  }

  if (a4)
  {
    v16 = NSLocalizedDescriptionKey;
    v9 = [NSString stringWithFormat:@"SecItemCopyMatching: %d", v10];
    v17 = v9;
    v11 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    [NSError errorWithDomain:NSOSStatusErrorDomain code:v10 userInfo:v11];
    *a4 = v12 = 0;
LABEL_7:

    goto LABEL_9;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 8))
  {
    [(SecEscrowPendingRecord *)self setUuid:?];
    v4 = v6;
  }

  if ((*(v4 + 76) & 0x10) != 0)
  {
    self->_certCached = *(v4 + 72);
    *&self->_has |= 0x10u;
  }

  if (*(v4 + 6))
  {
    [(SecEscrowPendingRecord *)self setSerializedPrerecord:?];
    v4 = v6;
  }

  v5 = *(v4 + 76);
  if (v5)
  {
    self->_lastCloudServicesTriggerTime = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 76);
    if ((v5 & 2) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }
  }

  else if ((*(v4 + 76) & 2) == 0)
  {
    goto LABEL_9;
  }

  self->_lastEscrowAttemptTime = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 76);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  self->_uploadCompleted = *(v4 + 73);
  *&self->_has |= 0x20u;
  if ((*(v4 + 76) & 8) != 0)
  {
LABEL_11:
    self->_uploadRetries = *(v4 + 4);
    *&self->_has |= 8u;
  }

LABEL_12:
  if (*(v4 + 5))
  {
    [(SecEscrowPendingRecord *)self setAltDSID:?];
    v4 = v6;
  }

  if ((*(v4 + 76) & 4) != 0)
  {
    self->_triggerRequestTime = *(v4 + 3);
    *&self->_has |= 4u;
  }

  if (*(v4 + 7))
  {
    [(SecEscrowPendingRecord *)self setSerializedReason:?];
    v4 = v6;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uuid hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v4 = 2654435761 * self->_certCached;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSData *)self->_serializedPrerecord hash];
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_lastCloudServicesTriggerTime;
    if ((*&self->_has & 2) != 0)
    {
LABEL_6:
      v7 = 2654435761u * self->_lastEscrowAttemptTime;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v8 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v8 = 2654435761 * self->_uploadCompleted;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    v9 = 2654435761u * self->_uploadRetries;
    goto LABEL_13;
  }

LABEL_12:
  v9 = 0;
LABEL_13:
  v10 = [(NSString *)self->_altDSID hash];
  if ((*&self->_has & 4) != 0)
  {
    v11 = 2654435761u * self->_triggerRequestTime;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSData *)self->_serializedReason hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_48;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 8))
  {
    if (![(NSString *)uuid isEqual:?])
    {
      goto LABEL_48;
    }
  }

  has = self->_has;
  v7 = *(v4 + 76);
  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 76) & 0x10) == 0)
    {
      goto LABEL_48;
    }

    v9 = *(v4 + 72);
    if (self->_certCached)
    {
      if ((*(v4 + 72) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (*(v4 + 72))
    {
      goto LABEL_48;
    }
  }

  else if ((*(v4 + 76) & 0x10) != 0)
  {
    goto LABEL_48;
  }

  serializedPrerecord = self->_serializedPrerecord;
  if (serializedPrerecord | *(v4 + 6))
  {
    if (![(NSData *)serializedPrerecord isEqual:?])
    {
      goto LABEL_48;
    }

    has = self->_has;
    v7 = *(v4 + 76);
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_lastCloudServicesTriggerTime != *(v4 + 1))
    {
      goto LABEL_48;
    }
  }

  else if (v7)
  {
    goto LABEL_48;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_lastEscrowAttemptTime != *(v4 + 2))
    {
      goto LABEL_48;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_48;
  }

  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_48;
    }

    v10 = *(v4 + 73);
    if (self->_uploadCompleted)
    {
      if ((*(v4 + 73) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (*(v4 + 73))
    {
      goto LABEL_48;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_48;
  }

  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_uploadRetries != *(v4 + 4))
    {
      goto LABEL_48;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_48;
  }

  altDSID = self->_altDSID;
  if (altDSID | *(v4 + 5))
  {
    if ([(NSString *)altDSID isEqual:?])
    {
      has = self->_has;
      v7 = *(v4 + 76);
      goto LABEL_39;
    }

LABEL_48:
    v13 = 0;
    goto LABEL_49;
  }

LABEL_39:
  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_triggerRequestTime != *(v4 + 3))
    {
      goto LABEL_48;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_48;
  }

  serializedReason = self->_serializedReason;
  if (serializedReason | *(v4 + 7))
  {
    v13 = [(NSData *)serializedReason isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_49:

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uuid copyWithZone:a3];
  v7 = v5[8];
  v5[8] = v6;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 72) = self->_certCached;
    *(v5 + 76) |= 0x10u;
  }

  v8 = [(NSData *)self->_serializedPrerecord copyWithZone:a3];
  v9 = v5[6];
  v5[6] = v8;

  has = self->_has;
  if (has)
  {
    v5[1] = self->_lastCloudServicesTriggerTime;
    *(v5 + 76) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x20) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v5[2] = self->_lastEscrowAttemptTime;
  *(v5 + 76) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(v5 + 73) = self->_uploadCompleted;
  *(v5 + 76) |= 0x20u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v5[4] = self->_uploadRetries;
    *(v5 + 76) |= 8u;
  }

LABEL_8:
  v11 = [(NSString *)self->_altDSID copyWithZone:a3];
  v12 = v5[5];
  v5[5] = v11;

  if ((*&self->_has & 4) != 0)
  {
    v5[3] = self->_triggerRequestTime;
    *(v5 + 76) |= 4u;
  }

  v13 = [(NSData *)self->_serializedReason copyWithZone:a3];
  v14 = v5[7];
  v5[7] = v13;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_uuid)
  {
    [v4 setUuid:?];
    v4 = v6;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(v4 + 72) = self->_certCached;
    *(v4 + 76) |= 0x10u;
  }

  if (self->_serializedPrerecord)
  {
    [v6 setSerializedPrerecord:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_lastCloudServicesTriggerTime;
    *(v4 + 76) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  *(v4 + 2) = self->_lastEscrowAttemptTime;
  *(v4 + 76) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  *(v4 + 73) = self->_uploadCompleted;
  *(v4 + 76) |= 0x20u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    *(v4 + 4) = self->_uploadRetries;
    *(v4 + 76) |= 8u;
  }

LABEL_12:
  if (self->_altDSID)
  {
    [v6 setAltDSID:?];
    v4 = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 3) = self->_triggerRequestTime;
    *(v4 + 76) |= 4u;
  }

  if (self->_serializedReason)
  {
    [v6 setSerializedReason:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    certCached = self->_certCached;
    PBDataWriterWriteBOOLField();
    v4 = v12;
  }

  if (self->_serializedPrerecord)
  {
    PBDataWriterWriteDataField();
    v4 = v12;
  }

  has = self->_has;
  if (has)
  {
    lastCloudServicesTriggerTime = self->_lastCloudServicesTriggerTime;
    PBDataWriterWriteUint64Field();
    v4 = v12;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  lastEscrowAttemptTime = self->_lastEscrowAttemptTime;
  PBDataWriterWriteUint64Field();
  v4 = v12;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  uploadCompleted = self->_uploadCompleted;
  PBDataWriterWriteBOOLField();
  v4 = v12;
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    uploadRetries = self->_uploadRetries;
    PBDataWriterWriteUint64Field();
    v4 = v12;
  }

LABEL_12:
  if (self->_altDSID)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if ((*&self->_has & 4) != 0)
  {
    triggerRequestTime = self->_triggerRequestTime;
    PBDataWriterWriteUint64Field();
    v4 = v12;
  }

  if (self->_serializedReason)
  {
    PBDataWriterWriteDataField();
    v4 = v12;
  }
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    do
    {
      if ([a3 hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v61 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v61 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v61 & 0x7F) << v6;
        if ((v61 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        break;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) > 5)
      {
        if (v14 <= 7)
        {
          if (v14 != 6)
          {
            if (v14 != 7)
            {
LABEL_89:
              v56 = PBReaderSkipValueWithTag();
              if (!v56)
              {
                return v56;
              }

              goto LABEL_113;
            }

            v31 = 0;
            v32 = 0;
            v33 = 0;
            *&self->_has |= 8u;
            while (1)
            {
              v65 = 0;
              v34 = [a3 position] + 1;
              if (v34 >= [a3 position] && (v35 = objc_msgSend(a3, "position") + 1, v35 <= objc_msgSend(a3, "length")))
              {
                v36 = [a3 data];
                [v36 getBytes:&v65 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
              }

              v33 |= (v65 & 0x7F) << v31;
              if ((v65 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v12 = v32++ >= 9;
              if (v12)
              {
                v21 = 0;
                goto LABEL_96;
              }
            }

            if ([a3 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v33;
            }

LABEL_96:
            v58 = 32;
            goto LABEL_112;
          }

          v37 = 0;
          v38 = 0;
          v39 = 0;
          *&self->_has |= 0x20u;
          while (1)
          {
            v62 = 0;
            v40 = [a3 position] + 1;
            if (v40 >= [a3 position] && (v41 = objc_msgSend(a3, "position") + 1, v41 <= objc_msgSend(a3, "length")))
            {
              v42 = [a3 data];
              [v42 getBytes:&v62 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v39 |= (v62 & 0x7F) << v37;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v12 = v38++ >= 9;
            if (v12)
            {
              LOBYTE(v30) = 0;
              goto LABEL_98;
            }
          }

          v30 = (v39 != 0) & ~[a3 hasError];
LABEL_98:
          v57 = 73;
          goto LABEL_99;
        }

        switch(v14)
        {
          case 8:
            v22 = PBReaderReadString();
            v23 = 40;
            break;
          case 9:
            v50 = 0;
            v51 = 0;
            v52 = 0;
            *&self->_has |= 4u;
            while (1)
            {
              v64 = 0;
              v53 = [a3 position] + 1;
              if (v53 >= [a3 position] && (v54 = objc_msgSend(a3, "position") + 1, v54 <= objc_msgSend(a3, "length")))
              {
                v55 = [a3 data];
                [v55 getBytes:&v64 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
              }

              v52 |= (v64 & 0x7F) << v50;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              v12 = v51++ >= 9;
              if (v12)
              {
                v21 = 0;
                goto LABEL_111;
              }
            }

            if ([a3 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v52;
            }

LABEL_111:
            v58 = 24;
LABEL_112:
            *&self->PBCodable_opaque[v58] = v21;
            goto LABEL_113;
          case 0xA:
            v22 = PBReaderReadData();
            v23 = 56;
            break;
          default:
            goto LABEL_89;
        }
      }

      else if (v14 <= 2)
      {
        if (v14 != 1)
        {
          if (v14 != 2)
          {
            goto LABEL_89;
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          *&self->_has |= 0x10u;
          while (1)
          {
            v63 = 0;
            v27 = [a3 position] + 1;
            if (v27 >= [a3 position] && (v28 = objc_msgSend(a3, "position") + 1, v28 <= objc_msgSend(a3, "length")))
            {
              v29 = [a3 data];
              [v29 getBytes:&v63 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v26 |= (v63 & 0x7F) << v24;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v12 = v25++ >= 9;
            if (v12)
            {
              LOBYTE(v30) = 0;
              goto LABEL_92;
            }
          }

          v30 = (v26 != 0) & ~[a3 hasError];
LABEL_92:
          v57 = 72;
LABEL_99:
          self->PBCodable_opaque[v57] = v30;
          goto LABEL_113;
        }

        v22 = PBReaderReadString();
        v23 = 64;
      }

      else
      {
        if (v14 != 3)
        {
          if (v14 == 4)
          {
            v44 = 0;
            v45 = 0;
            v46 = 0;
            *&self->_has |= 1u;
            while (1)
            {
              v67 = 0;
              v47 = [a3 position] + 1;
              if (v47 >= [a3 position] && (v48 = objc_msgSend(a3, "position") + 1, v48 <= objc_msgSend(a3, "length")))
              {
                v49 = [a3 data];
                [v49 getBytes:&v67 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
              }

              v46 |= (v67 & 0x7F) << v44;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v44 += 7;
              v12 = v45++ >= 9;
              if (v12)
              {
                v21 = 0;
                goto LABEL_107;
              }
            }

            if ([a3 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v46;
            }

LABEL_107:
            v58 = 8;
          }

          else
          {
            if (v14 != 5)
            {
              goto LABEL_89;
            }

            v15 = 0;
            v16 = 0;
            v17 = 0;
            *&self->_has |= 2u;
            while (1)
            {
              v66 = 0;
              v18 = [a3 position] + 1;
              if (v18 >= [a3 position] && (v19 = objc_msgSend(a3, "position") + 1, v19 <= objc_msgSend(a3, "length")))
              {
                v20 = [a3 data];
                [v20 getBytes:&v66 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
              }

              v17 |= (v66 & 0x7F) << v15;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v12 = v16++ >= 9;
              if (v12)
              {
                v21 = 0;
                goto LABEL_103;
              }
            }

            if ([a3 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_103:
            v58 = 16;
          }

          goto LABEL_112;
        }

        v22 = PBReaderReadData();
        v23 = 48;
      }

      v43 = *&self->PBCodable_opaque[v23];
      *&self->PBCodable_opaque[v23] = v22;

LABEL_113:
      v59 = [a3 position];
    }

    while (v59 < [a3 length]);
  }

  LOBYTE(v56) = [a3 hasError] ^ 1;
  return v56;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v6 = [NSNumber numberWithBool:self->_certCached];
    [v4 setObject:v6 forKey:@"certCached"];
  }

  serializedPrerecord = self->_serializedPrerecord;
  if (serializedPrerecord)
  {
    [v4 setObject:serializedPrerecord forKey:@"serializedPrerecord"];
  }

  has = self->_has;
  if (has)
  {
    v14 = [NSNumber numberWithUnsignedLongLong:self->_lastCloudServicesTriggerTime];
    [v4 setObject:v14 forKey:@"lastCloudServicesTriggerTime"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  v15 = [NSNumber numberWithUnsignedLongLong:self->_lastEscrowAttemptTime];
  [v4 setObject:v15 forKey:@"lastEscrowAttemptTime"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  v16 = [NSNumber numberWithBool:self->_uploadCompleted];
  [v4 setObject:v16 forKey:@"uploadCompleted"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    v9 = [NSNumber numberWithUnsignedLongLong:self->_uploadRetries];
    [v4 setObject:v9 forKey:@"uploadRetries"];
  }

LABEL_12:
  altDSID = self->_altDSID;
  if (altDSID)
  {
    [v4 setObject:altDSID forKey:@"altDSID"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v11 = [NSNumber numberWithUnsignedLongLong:self->_triggerRequestTime];
    [v4 setObject:v11 forKey:@"triggerRequestTime"];
  }

  serializedReason = self->_serializedReason;
  if (serializedReason)
  {
    [v4 setObject:serializedReason forKey:@"serializedReason"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SecEscrowPendingRecord;
  v3 = [(SecEscrowPendingRecord *)&v7 description];
  v4 = [(SecEscrowPendingRecord *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)setHasTriggerRequestTime:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasUploadRetries:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasUploadCompleted:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasLastEscrowAttemptTime:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasCertCached:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

@end