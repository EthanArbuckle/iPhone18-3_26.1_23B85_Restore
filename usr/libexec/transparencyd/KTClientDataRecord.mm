@interface KTClientDataRecord
- (BOOL)active:(id)active;
- (BOOL)expired:(id)expired;
- (BOOL)isEqual:(id)equal;
- (BOOL)marked:(id)marked;
- (BOOL)shouldRemove:(id)remove removeAllMarked:(BOOL)marked;
- (KTClientDataRecord)initWithCoder:(id)coder;
- (KTClientDataRecord)initWithMutation:(id)mutation;
- (KTClientDataRecord)initWithSingleDataRecord:(id)record;
- (NSDictionary)diagnosticsJsonDictionary;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)markWithMutationMs:(unint64_t)ms;
- (void)updateWithAddMutation:(id)mutation error:(id *)error;
- (void)updateWithMarkDeleteMutation:(id)mutation error:(id *)error;
@end

@implementation KTClientDataRecord

- (id)debugDescription
{
  kt_hexString = [(NSData *)self->_clientData kt_hexString];
  kt_hexString2 = [(NSData *)self->_clientDataHash kt_hexString];
  v5 = [NSString stringWithFormat:@"{\tclientData:%@\n\tclientDataHash:%@\n\tapplicationVersion:%lu\n\taddedDate:%@\n\tmarkedForDeletion:%@\n\texpiry:%@\n\tescrowExpiry:%@\n}", kt_hexString, kt_hexString2, self->_applicationVersion, self->_addedDate, self->_markedForDeletion, self->_expiry, self->_escrowExpiry];

  return v5;
}

- (id)description
{
  kt_hexString = [(NSData *)self->_clientData kt_hexString];
  kt_hexString2 = [(NSData *)self->_clientDataHash kt_hexString];
  v5 = [NSString stringWithFormat:@"clientData:%@ clientDataHash:%@; applicationVersion:%lu; addedDate:%@; markedForDeletion:%@; expiry:%@; escrowExpiry:%@", kt_hexString, kt_hexString2, self->_applicationVersion, self->_addedDate, self->_markedForDeletion, self->_expiry, self->_escrowExpiry];;

  return v5;
}

- (NSDictionary)diagnosticsJsonDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  clientData = [(KTClientDataRecord *)self clientData];

  if (clientData)
  {
    clientData2 = [(KTClientDataRecord *)self clientData];
    kt_hexString = [clientData2 kt_hexString];
    [v3 setObject:kt_hexString forKeyedSubscript:@"clientData"];
  }

  clientDataHash = [(KTClientDataRecord *)self clientDataHash];
  kt_hexString2 = [clientDataHash kt_hexString];
  [v3 setObject:kt_hexString2 forKeyedSubscript:@"clientDataHash"];

  v9 = [NSNumber numberWithUnsignedInteger:[(KTClientDataRecord *)self applicationVersion]];
  [v3 setObject:v9 forKeyedSubscript:@"appVersion"];

  addedDate = [(KTClientDataRecord *)self addedDate];
  kt_dateToString = [addedDate kt_dateToString];
  [v3 setObject:kt_dateToString forKeyedSubscript:@"addedDate"];

  addedDate2 = [(KTClientDataRecord *)self addedDate];
  kt_toISO_8601_UTCString = [addedDate2 kt_toISO_8601_UTCString];
  [v3 setObject:kt_toISO_8601_UTCString forKeyedSubscript:@"addedDateReadable"];

  markedForDeletion = [(KTClientDataRecord *)self markedForDeletion];

  if (markedForDeletion)
  {
    markedForDeletion2 = [(KTClientDataRecord *)self markedForDeletion];
    kt_dateToString2 = [markedForDeletion2 kt_dateToString];
    [v3 setObject:kt_dateToString2 forKeyedSubscript:@"markedDate"];

    markedForDeletion3 = [(KTClientDataRecord *)self markedForDeletion];
    kt_toISO_8601_UTCString2 = [markedForDeletion3 kt_toISO_8601_UTCString];
    [v3 setObject:kt_toISO_8601_UTCString2 forKeyedSubscript:@"markedDateReadable"];
  }

  expiry = [(KTClientDataRecord *)self expiry];
  kt_dateToString3 = [expiry kt_dateToString];
  [v3 setObject:kt_dateToString3 forKeyedSubscript:@"expiry"];

  expiry2 = [(KTClientDataRecord *)self expiry];
  kt_toISO_8601_UTCString3 = [expiry2 kt_toISO_8601_UTCString];
  [v3 setObject:kt_toISO_8601_UTCString3 forKeyedSubscript:@"expiryReadable"];

  escrowExpiry = [(KTClientDataRecord *)self escrowExpiry];

  if (escrowExpiry)
  {
    escrowExpiry2 = [(KTClientDataRecord *)self escrowExpiry];
    kt_dateToString4 = [escrowExpiry2 kt_dateToString];
    [v3 setObject:kt_dateToString4 forKeyedSubscript:@"escrowExpiry"];

    escrowExpiry3 = [(KTClientDataRecord *)self escrowExpiry];
    kt_toISO_8601_UTCString4 = [escrowExpiry3 kt_toISO_8601_UTCString];
    [v3 setObject:kt_toISO_8601_UTCString4 forKeyedSubscript:@"escrowExpiryReadable"];
  }

  if ([(KTClientDataRecord *)self verified])
  {
    v28 = [NSNumber numberWithBool:[(KTClientDataRecord *)self verified]];
    [v3 setObject:v28 forKeyedSubscript:@"matchesServerData"];
  }

  if ([(KTClientDataRecord *)self synced])
  {
    v29 = [NSNumber numberWithBool:[(KTClientDataRecord *)self synced]];
    [v3 setObject:v29 forKeyedSubscript:@"matchesSyncedData"];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  applicationVersion = [(KTClientDataRecord *)self applicationVersion];
  if (applicationVersion > 0xFFFFFFFE)
  {
    abort();
  }

  v5 = applicationVersion;
  clientData = [(KTClientDataRecord *)self clientData];
  [coderCopy encodeObject:clientData forKey:@"clientData"];

  [coderCopy encodeInteger:v5 forKey:@"applicationVersion"];
  clientDataHash = [(KTClientDataRecord *)self clientDataHash];
  [coderCopy encodeObject:clientDataHash forKey:@"clientDataHash"];

  markedForDeletion = [(KTClientDataRecord *)self markedForDeletion];
  [markedForDeletion timeIntervalSince1970];
  [coderCopy encodeDouble:@"markedForDeletion" forKey:?];

  addedDate = [(KTClientDataRecord *)self addedDate];
  [addedDate timeIntervalSince1970];
  [coderCopy encodeDouble:@"addedDate" forKey:?];

  expiry = [(KTClientDataRecord *)self expiry];
  [expiry timeIntervalSince1970];
  [coderCopy encodeDouble:@"expiry" forKey:?];

  escrowExpiry = [(KTClientDataRecord *)self escrowExpiry];
  [escrowExpiry timeIntervalSince1970];
  [coderCopy encodeDouble:@"escrowExpiry" forKey:?];

  [coderCopy encodeBool:-[KTClientDataRecord verified](self forKey:{"verified"), @"verified"}];
  [coderCopy encodeBool:-[KTClientDataRecord synced](self forKey:{"synced"), @"synced"}];
}

- (KTClientDataRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientData"];
  v6 = [coderCopy decodeIntegerForKey:@"applicationVersion"];
  if ((v6 & 0x8000000000000000) != 0)
  {
    abort();
  }

  v7 = v6;
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDataHash"];
  v21 = [coderCopy decodeBoolForKey:@"verified"];
  v20 = [coderCopy decodeBoolForKey:@"synced"];
  [coderCopy decodeDoubleForKey:@"markedForDeletion"];
  if (v9 <= 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = [NSDate dateWithTimeIntervalSince1970:?];
  }

  [coderCopy decodeDoubleForKey:@"addedDate"];
  if (v11 <= 0.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = [NSDate dateWithTimeIntervalSince1970:?];
  }

  [coderCopy decodeDoubleForKey:@"expiry"];
  if (v13 <= 0.0)
  {
    v14 = 0;
  }

  else
  {
    v14 = [NSDate dateWithTimeIntervalSince1970:?];
  }

  [coderCopy decodeDoubleForKey:@"escrowExpiry"];
  if (v15 <= 0.0)
  {
    v16 = 0;
  }

  else
  {
    v16 = [NSDate dateWithTimeIntervalSince1970:?];
  }

  v17 = objc_alloc_init(KTClientDataRecord);
  v18 = v17;
  if (v17)
  {
    [(KTClientDataRecord *)v17 setClientData:v5];
    [(KTClientDataRecord *)v18 setApplicationVersion:v7];
    [(KTClientDataRecord *)v18 setClientDataHash:v8];
    [(KTClientDataRecord *)v18 setMarkedForDeletion:v10];
    [(KTClientDataRecord *)v18 setAddedDate:v12];
    [(KTClientDataRecord *)v18 setExpiry:v14];
    [(KTClientDataRecord *)v18 setEscrowExpiry:v16];
    [(KTClientDataRecord *)v18 setVerified:v21];
    [(KTClientDataRecord *)v18 setSynced:v20];
  }

  return v18;
}

- (KTClientDataRecord)initWithMutation:(id)mutation
{
  mutationCopy = mutation;
  v22.receiver = self;
  v22.super_class = KTClientDataRecord;
  v5 = [(KTClientDataRecord *)&v22 init];
  if (v5)
  {
    clientDataHash = [mutationCopy clientDataHash];
    clientDataHash = v5->_clientDataHash;
    v5->_clientDataHash = clientDataHash;

    v5->_applicationVersion = [mutationCopy appVersion];
    idsMutation = [mutationCopy idsMutation];
    if ([idsMutation mutationType] == 1)
    {
    }

    else
    {
      idsMutation2 = [mutationCopy idsMutation];
      mutationType = [idsMutation2 mutationType];

      if (mutationType != 4)
      {
        idsMutation3 = [mutationCopy idsMutation];
        if ([idsMutation3 mutationType] == 2)
        {
        }

        else
        {
          idsMutation4 = [mutationCopy idsMutation];
          mutationType2 = [idsMutation4 mutationType];

          if (mutationType2 != 5)
          {
            goto LABEL_12;
          }
        }

        expiry = [mutationCopy idsMutation];
        v19 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [expiry mutationMs] / 1000.0);
        markedForDeletion = v5->_markedForDeletion;
        v5->_markedForDeletion = v19;

        goto LABEL_11;
      }
    }

    idsMutation5 = [mutationCopy idsMutation];
    v12 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [idsMutation5 mutationMs] / 1000.0);
    addedDate = v5->_addedDate;
    v5->_addedDate = v12;

    if ([mutationCopy expiryMs])
    {
      v14 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [mutationCopy expiryMs] / 1000.0);
      expiry = v5->_expiry;
      v5->_expiry = v14;
LABEL_11:
    }
  }

LABEL_12:

  return v5;
}

- (KTClientDataRecord)initWithSingleDataRecord:(id)record
{
  recordCopy = record;
  v17.receiver = self;
  v17.super_class = KTClientDataRecord;
  v5 = [(KTClientDataRecord *)&v17 init];
  if (v5)
  {
    clientDataHash = [recordCopy clientDataHash];
    clientDataHash = v5->_clientDataHash;
    v5->_clientDataHash = clientDataHash;

    v5->_applicationVersion = [recordCopy appVersion];
    v8 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [recordCopy addedMs] / 1000.0);
    addedDate = v5->_addedDate;
    v5->_addedDate = v8;

    markedForDeletionMs = [recordCopy markedForDeletionMs];
    if (markedForDeletionMs)
    {
      markedForDeletionMs = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [recordCopy markedForDeletionMs] / 1000.0);
    }

    markedForDeletion = v5->_markedForDeletion;
    v5->_markedForDeletion = markedForDeletionMs;

    if ([recordCopy expiryMs])
    {
      v12 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [recordCopy expiryMs] / 1000.0);
      expiry = v5->_expiry;
      v5->_expiry = v12;
    }

    if ([recordCopy escrowExpiryMs])
    {
      v14 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [recordCopy escrowExpiryMs] / 1000.0);
      escrowExpiry = v5->_escrowExpiry;
      v5->_escrowExpiry = v14;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      clientData = [(KTClientDataRecord *)self clientData];
      clientData2 = [(KTClientDataRecord *)v5 clientData];
      v8 = clientData2;
      if (clientData == clientData2)
      {
      }

      else
      {
        clientData3 = [(KTClientDataRecord *)self clientData];
        clientData4 = [(KTClientDataRecord *)v5 clientData];
        v11 = [clientData3 isEqualToData:clientData4];

        if (!v11)
        {
          goto LABEL_32;
        }
      }

      applicationVersion = [(KTClientDataRecord *)self applicationVersion];
      if (applicationVersion == [(KTClientDataRecord *)v5 applicationVersion])
      {
        clientDataHash = [(KTClientDataRecord *)self clientDataHash];
        clientDataHash2 = [(KTClientDataRecord *)v5 clientDataHash];
        v16 = clientDataHash2;
        if (clientDataHash == clientDataHash2)
        {
        }

        else
        {
          clientDataHash3 = [(KTClientDataRecord *)self clientDataHash];
          clientDataHash4 = [(KTClientDataRecord *)v5 clientDataHash];
          v19 = [clientDataHash3 isEqualToData:clientDataHash4];

          if (!v19)
          {
            goto LABEL_32;
          }
        }

        addedDate = [(KTClientDataRecord *)self addedDate];
        addedDate2 = [(KTClientDataRecord *)v5 addedDate];
        v22 = addedDate2;
        if (addedDate == addedDate2)
        {
        }

        else
        {
          addedDate3 = [(KTClientDataRecord *)self addedDate];
          addedDate4 = [(KTClientDataRecord *)v5 addedDate];
          v25 = [addedDate3 kt_isEqualWithinOneMillisecond:addedDate4];

          if (!v25)
          {
            goto LABEL_32;
          }
        }

        markedForDeletion = [(KTClientDataRecord *)self markedForDeletion];
        markedForDeletion2 = [(KTClientDataRecord *)v5 markedForDeletion];
        v28 = markedForDeletion2;
        if (markedForDeletion == markedForDeletion2)
        {
        }

        else
        {
          markedForDeletion3 = [(KTClientDataRecord *)self markedForDeletion];
          markedForDeletion4 = [(KTClientDataRecord *)v5 markedForDeletion];
          v31 = [markedForDeletion3 kt_isEqualWithinOneMillisecond:markedForDeletion4];

          if (!v31)
          {
            goto LABEL_32;
          }
        }

        expiry = [(KTClientDataRecord *)self expiry];
        expiry2 = [(KTClientDataRecord *)v5 expiry];
        v34 = expiry2;
        if (expiry == expiry2)
        {
        }

        else
        {
          expiry3 = [(KTClientDataRecord *)self expiry];
          expiry4 = [(KTClientDataRecord *)v5 expiry];
          v37 = [expiry3 kt_isEqualWithinOneMillisecond:expiry4];

          if (!v37)
          {
            goto LABEL_32;
          }
        }

        escrowExpiry = [(KTClientDataRecord *)self escrowExpiry];
        escrowExpiry2 = [(KTClientDataRecord *)v5 escrowExpiry];
        v40 = escrowExpiry2;
        if (escrowExpiry == escrowExpiry2)
        {
        }

        else
        {
          escrowExpiry3 = [(KTClientDataRecord *)self escrowExpiry];
          escrowExpiry4 = [(KTClientDataRecord *)v5 escrowExpiry];
          v43 = [escrowExpiry3 kt_isEqualWithinOneMillisecond:escrowExpiry4];

          if (!v43)
          {
            goto LABEL_32;
          }
        }

        verified = [(KTClientDataRecord *)self verified];
        if (verified == [(KTClientDataRecord *)v5 verified])
        {
          synced = [(KTClientDataRecord *)self synced];
          if (synced == [(KTClientDataRecord *)v5 synced])
          {
            v12 = 1;
            goto LABEL_33;
          }
        }
      }

LABEL_32:
      v12 = 0;
LABEL_33:

      goto LABEL_34;
    }

    v12 = 0;
  }

LABEL_34:

  return v12;
}

- (BOOL)marked:(id)marked
{
  markedCopy = marked;
  markedForDeletion = [(KTClientDataRecord *)self markedForDeletion];

  if (markedForDeletion)
  {
    markedForDeletion2 = [(KTClientDataRecord *)self markedForDeletion];
    v7 = [markedForDeletion2 compare:markedCopy] == -1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)expired:(id)expired
{
  expiredCopy = expired;
  expiry = [(KTClientDataRecord *)self expiry];

  if (expiry)
  {
    expiry2 = [(KTClientDataRecord *)self expiry];
    v7 = [expiry2 compare:expiredCopy] == -1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)active:(id)active
{
  activeCopy = active;
  markedForDeletion = [(KTClientDataRecord *)self markedForDeletion];
  if (markedForDeletion && (v6 = markedForDeletion, -[KTClientDataRecord markedForDeletion](self, "markedForDeletion"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 compare:activeCopy], v7, v6, v8 == -1))
  {
    v12 = 0;
  }

  else
  {
    expiry = [(KTClientDataRecord *)self expiry];
    if (expiry)
    {
      v10 = expiry;
      expiry2 = [(KTClientDataRecord *)self expiry];
      v12 = [expiry2 compare:activeCopy] != -1;
    }

    else
    {
      v12 = 1;
    }
  }

  return v12;
}

- (void)markWithMutationMs:(unint64_t)ms
{
  markedForDeletion = [(KTClientDataRecord *)self markedForDeletion];

  if (!markedForDeletion)
  {
    v6 = ms / 1000.0;
    v7 = [NSDate dateWithTimeIntervalSince1970:v6];
    [(KTClientDataRecord *)self setMarkedForDeletion:v7];

    [(KTClientDataRecord *)self setExpiry:0];
    kKTEscrowExpiryPeriod = [NSDate dateWithTimeIntervalSince1970:v6 + kKTEscrowExpiryPeriod];
    [(KTClientDataRecord *)self setEscrowExpiry:kKTEscrowExpiryPeriod];
  }
}

- (void)updateWithAddMutation:(id)mutation error:(id *)error
{
  mutationCopy = mutation;
  idsMutation = [mutationCopy idsMutation];
  mutationMs = [idsMutation mutationMs];

  v7 = [NSDate dateWithTimeIntervalSince1970:mutationMs / 1000.0];
  if ([(KTClientDataRecord *)self marked:v7]|| [(KTClientDataRecord *)self expired:v7])
  {
    [(KTClientDataRecord *)self setMarkedForDeletion:0];
    v8 = [NSDate dateWithTimeIntervalSince1970:mutationMs / 1000.0];
    [(KTClientDataRecord *)self setAddedDate:v8];

    if ([mutationCopy expiryMs])
    {
      v9 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [mutationCopy expiryMs] / 1000.0);
      [(KTClientDataRecord *)self setExpiry:v9];

      expiryMs = [mutationCopy expiryMs];
      kKTEscrowExpiryPeriod = [NSDate dateWithTimeIntervalSince1970:expiryMs / 1000.0 + kKTEscrowExpiryPeriod];
      [(KTClientDataRecord *)self setEscrowExpiry:kKTEscrowExpiryPeriod];
    }
  }

  else if ([mutationCopy expiryMs])
  {
    expiryMs2 = [mutationCopy expiryMs];
    kKTExpiryGracePeriod = [NSDate dateWithTimeIntervalSince1970:(expiryMs2 / 0x3E8) + kKTExpiryGracePeriod];
    [(KTClientDataRecord *)self setExpiry:kKTExpiryGracePeriod];

    expiry = [(KTClientDataRecord *)self expiry];
    v15 = [expiry dateByAddingTimeInterval:kKTEscrowExpiryPeriod];

    [(KTClientDataRecord *)self setEscrowExpiry:v15];
  }

  else
  {
    [(KTClientDataRecord *)self setExpiry:0];
    [(KTClientDataRecord *)self setEscrowExpiry:0];
  }
}

- (void)updateWithMarkDeleteMutation:(id)mutation error:(id *)error
{
  idsMutation = [mutation idsMutation];
  mutationMs = [idsMutation mutationMs];

  markedForDeletion = [(KTClientDataRecord *)self markedForDeletion];

  if (markedForDeletion)
  {
    kKTEscrowExpiryPeriod = [NSDate dateWithTimeIntervalSince1970:mutationMs / 1000.0 + kKTEscrowExpiryPeriod];
    [(KTClientDataRecord *)self setEscrowExpiry:kKTEscrowExpiryPeriod];
  }

  else
  {

    [(KTClientDataRecord *)self markWithMutationMs:mutationMs];
  }
}

- (BOOL)shouldRemove:(id)remove removeAllMarked:(BOOL)marked
{
  markedCopy = marked;
  removeCopy = remove;
  escrowExpiry = [(KTClientDataRecord *)self escrowExpiry];

  if (escrowExpiry)
  {
    escrowExpiry2 = [(KTClientDataRecord *)self escrowExpiry];
    v9 = [removeCopy compare:escrowExpiry2];

    if (v9 == 1)
    {
      goto LABEL_6;
    }
  }

  if (!markedCopy)
  {
    goto LABEL_7;
  }

  markedForDeletion = [(KTClientDataRecord *)self markedForDeletion];
  v11 = [removeCopy compare:markedForDeletion];

  if (v11 == 1 || (-[KTClientDataRecord expiry](self, "expiry"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [removeCopy compare:v12], v12, v13 == 1))
  {
LABEL_6:
    v14 = 1;
  }

  else
  {
LABEL_7:
    v14 = 0;
  }

  return v14;
}

@end