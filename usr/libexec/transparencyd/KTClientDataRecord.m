@interface KTClientDataRecord
- (BOOL)active:(id)a3;
- (BOOL)expired:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)marked:(id)a3;
- (BOOL)shouldRemove:(id)a3 removeAllMarked:(BOOL)a4;
- (KTClientDataRecord)initWithCoder:(id)a3;
- (KTClientDataRecord)initWithMutation:(id)a3;
- (KTClientDataRecord)initWithSingleDataRecord:(id)a3;
- (NSDictionary)diagnosticsJsonDictionary;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)markWithMutationMs:(unint64_t)a3;
- (void)updateWithAddMutation:(id)a3 error:(id *)a4;
- (void)updateWithMarkDeleteMutation:(id)a3 error:(id *)a4;
@end

@implementation KTClientDataRecord

- (id)debugDescription
{
  v3 = [(NSData *)self->_clientData kt_hexString];
  v4 = [(NSData *)self->_clientDataHash kt_hexString];
  v5 = [NSString stringWithFormat:@"{\tclientData:%@\n\tclientDataHash:%@\n\tapplicationVersion:%lu\n\taddedDate:%@\n\tmarkedForDeletion:%@\n\texpiry:%@\n\tescrowExpiry:%@\n}", v3, v4, self->_applicationVersion, self->_addedDate, self->_markedForDeletion, self->_expiry, self->_escrowExpiry];

  return v5;
}

- (id)description
{
  v3 = [(NSData *)self->_clientData kt_hexString];
  v4 = [(NSData *)self->_clientDataHash kt_hexString];
  v5 = [NSString stringWithFormat:@"clientData:%@ clientDataHash:%@; applicationVersion:%lu; addedDate:%@; markedForDeletion:%@; expiry:%@; escrowExpiry:%@", v3, v4, self->_applicationVersion, self->_addedDate, self->_markedForDeletion, self->_expiry, self->_escrowExpiry];;

  return v5;
}

- (NSDictionary)diagnosticsJsonDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(KTClientDataRecord *)self clientData];

  if (v4)
  {
    v5 = [(KTClientDataRecord *)self clientData];
    v6 = [v5 kt_hexString];
    [v3 setObject:v6 forKeyedSubscript:@"clientData"];
  }

  v7 = [(KTClientDataRecord *)self clientDataHash];
  v8 = [v7 kt_hexString];
  [v3 setObject:v8 forKeyedSubscript:@"clientDataHash"];

  v9 = [NSNumber numberWithUnsignedInteger:[(KTClientDataRecord *)self applicationVersion]];
  [v3 setObject:v9 forKeyedSubscript:@"appVersion"];

  v10 = [(KTClientDataRecord *)self addedDate];
  v11 = [v10 kt_dateToString];
  [v3 setObject:v11 forKeyedSubscript:@"addedDate"];

  v12 = [(KTClientDataRecord *)self addedDate];
  v13 = [v12 kt_toISO_8601_UTCString];
  [v3 setObject:v13 forKeyedSubscript:@"addedDateReadable"];

  v14 = [(KTClientDataRecord *)self markedForDeletion];

  if (v14)
  {
    v15 = [(KTClientDataRecord *)self markedForDeletion];
    v16 = [v15 kt_dateToString];
    [v3 setObject:v16 forKeyedSubscript:@"markedDate"];

    v17 = [(KTClientDataRecord *)self markedForDeletion];
    v18 = [v17 kt_toISO_8601_UTCString];
    [v3 setObject:v18 forKeyedSubscript:@"markedDateReadable"];
  }

  v19 = [(KTClientDataRecord *)self expiry];
  v20 = [v19 kt_dateToString];
  [v3 setObject:v20 forKeyedSubscript:@"expiry"];

  v21 = [(KTClientDataRecord *)self expiry];
  v22 = [v21 kt_toISO_8601_UTCString];
  [v3 setObject:v22 forKeyedSubscript:@"expiryReadable"];

  v23 = [(KTClientDataRecord *)self escrowExpiry];

  if (v23)
  {
    v24 = [(KTClientDataRecord *)self escrowExpiry];
    v25 = [v24 kt_dateToString];
    [v3 setObject:v25 forKeyedSubscript:@"escrowExpiry"];

    v26 = [(KTClientDataRecord *)self escrowExpiry];
    v27 = [v26 kt_toISO_8601_UTCString];
    [v3 setObject:v27 forKeyedSubscript:@"escrowExpiryReadable"];
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

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(KTClientDataRecord *)self applicationVersion];
  if (v4 > 0xFFFFFFFE)
  {
    abort();
  }

  v5 = v4;
  v6 = [(KTClientDataRecord *)self clientData];
  [v12 encodeObject:v6 forKey:@"clientData"];

  [v12 encodeInteger:v5 forKey:@"applicationVersion"];
  v7 = [(KTClientDataRecord *)self clientDataHash];
  [v12 encodeObject:v7 forKey:@"clientDataHash"];

  v8 = [(KTClientDataRecord *)self markedForDeletion];
  [v8 timeIntervalSince1970];
  [v12 encodeDouble:@"markedForDeletion" forKey:?];

  v9 = [(KTClientDataRecord *)self addedDate];
  [v9 timeIntervalSince1970];
  [v12 encodeDouble:@"addedDate" forKey:?];

  v10 = [(KTClientDataRecord *)self expiry];
  [v10 timeIntervalSince1970];
  [v12 encodeDouble:@"expiry" forKey:?];

  v11 = [(KTClientDataRecord *)self escrowExpiry];
  [v11 timeIntervalSince1970];
  [v12 encodeDouble:@"escrowExpiry" forKey:?];

  [v12 encodeBool:-[KTClientDataRecord verified](self forKey:{"verified"), @"verified"}];
  [v12 encodeBool:-[KTClientDataRecord synced](self forKey:{"synced"), @"synced"}];
}

- (KTClientDataRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientData"];
  v6 = [v4 decodeIntegerForKey:@"applicationVersion"];
  if ((v6 & 0x8000000000000000) != 0)
  {
    abort();
  }

  v7 = v6;
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientDataHash"];
  v21 = [v4 decodeBoolForKey:@"verified"];
  v20 = [v4 decodeBoolForKey:@"synced"];
  [v4 decodeDoubleForKey:@"markedForDeletion"];
  if (v9 <= 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = [NSDate dateWithTimeIntervalSince1970:?];
  }

  [v4 decodeDoubleForKey:@"addedDate"];
  if (v11 <= 0.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = [NSDate dateWithTimeIntervalSince1970:?];
  }

  [v4 decodeDoubleForKey:@"expiry"];
  if (v13 <= 0.0)
  {
    v14 = 0;
  }

  else
  {
    v14 = [NSDate dateWithTimeIntervalSince1970:?];
  }

  [v4 decodeDoubleForKey:@"escrowExpiry"];
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

- (KTClientDataRecord)initWithMutation:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = KTClientDataRecord;
  v5 = [(KTClientDataRecord *)&v22 init];
  if (v5)
  {
    v6 = [v4 clientDataHash];
    clientDataHash = v5->_clientDataHash;
    v5->_clientDataHash = v6;

    v5->_applicationVersion = [v4 appVersion];
    v8 = [v4 idsMutation];
    if ([v8 mutationType] == 1)
    {
    }

    else
    {
      v9 = [v4 idsMutation];
      v10 = [v9 mutationType];

      if (v10 != 4)
      {
        v16 = [v4 idsMutation];
        if ([v16 mutationType] == 2)
        {
        }

        else
        {
          v17 = [v4 idsMutation];
          v18 = [v17 mutationType];

          if (v18 != 5)
          {
            goto LABEL_12;
          }
        }

        expiry = [v4 idsMutation];
        v19 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [expiry mutationMs] / 1000.0);
        markedForDeletion = v5->_markedForDeletion;
        v5->_markedForDeletion = v19;

        goto LABEL_11;
      }
    }

    v11 = [v4 idsMutation];
    v12 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v11 mutationMs] / 1000.0);
    addedDate = v5->_addedDate;
    v5->_addedDate = v12;

    if ([v4 expiryMs])
    {
      v14 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v4 expiryMs] / 1000.0);
      expiry = v5->_expiry;
      v5->_expiry = v14;
LABEL_11:
    }
  }

LABEL_12:

  return v5;
}

- (KTClientDataRecord)initWithSingleDataRecord:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = KTClientDataRecord;
  v5 = [(KTClientDataRecord *)&v17 init];
  if (v5)
  {
    v6 = [v4 clientDataHash];
    clientDataHash = v5->_clientDataHash;
    v5->_clientDataHash = v6;

    v5->_applicationVersion = [v4 appVersion];
    v8 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v4 addedMs] / 1000.0);
    addedDate = v5->_addedDate;
    v5->_addedDate = v8;

    v10 = [v4 markedForDeletionMs];
    if (v10)
    {
      v10 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v4 markedForDeletionMs] / 1000.0);
    }

    markedForDeletion = v5->_markedForDeletion;
    v5->_markedForDeletion = v10;

    if ([v4 expiryMs])
    {
      v12 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v4 expiryMs] / 1000.0);
      expiry = v5->_expiry;
      v5->_expiry = v12;
    }

    if ([v4 escrowExpiryMs])
    {
      v14 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v4 escrowExpiryMs] / 1000.0);
      escrowExpiry = v5->_escrowExpiry;
      v5->_escrowExpiry = v14;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(KTClientDataRecord *)self clientData];
      v7 = [(KTClientDataRecord *)v5 clientData];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(KTClientDataRecord *)self clientData];
        v10 = [(KTClientDataRecord *)v5 clientData];
        v11 = [v9 isEqualToData:v10];

        if (!v11)
        {
          goto LABEL_32;
        }
      }

      v13 = [(KTClientDataRecord *)self applicationVersion];
      if (v13 == [(KTClientDataRecord *)v5 applicationVersion])
      {
        v14 = [(KTClientDataRecord *)self clientDataHash];
        v15 = [(KTClientDataRecord *)v5 clientDataHash];
        v16 = v15;
        if (v14 == v15)
        {
        }

        else
        {
          v17 = [(KTClientDataRecord *)self clientDataHash];
          v18 = [(KTClientDataRecord *)v5 clientDataHash];
          v19 = [v17 isEqualToData:v18];

          if (!v19)
          {
            goto LABEL_32;
          }
        }

        v20 = [(KTClientDataRecord *)self addedDate];
        v21 = [(KTClientDataRecord *)v5 addedDate];
        v22 = v21;
        if (v20 == v21)
        {
        }

        else
        {
          v23 = [(KTClientDataRecord *)self addedDate];
          v24 = [(KTClientDataRecord *)v5 addedDate];
          v25 = [v23 kt_isEqualWithinOneMillisecond:v24];

          if (!v25)
          {
            goto LABEL_32;
          }
        }

        v26 = [(KTClientDataRecord *)self markedForDeletion];
        v27 = [(KTClientDataRecord *)v5 markedForDeletion];
        v28 = v27;
        if (v26 == v27)
        {
        }

        else
        {
          v29 = [(KTClientDataRecord *)self markedForDeletion];
          v30 = [(KTClientDataRecord *)v5 markedForDeletion];
          v31 = [v29 kt_isEqualWithinOneMillisecond:v30];

          if (!v31)
          {
            goto LABEL_32;
          }
        }

        v32 = [(KTClientDataRecord *)self expiry];
        v33 = [(KTClientDataRecord *)v5 expiry];
        v34 = v33;
        if (v32 == v33)
        {
        }

        else
        {
          v35 = [(KTClientDataRecord *)self expiry];
          v36 = [(KTClientDataRecord *)v5 expiry];
          v37 = [v35 kt_isEqualWithinOneMillisecond:v36];

          if (!v37)
          {
            goto LABEL_32;
          }
        }

        v38 = [(KTClientDataRecord *)self escrowExpiry];
        v39 = [(KTClientDataRecord *)v5 escrowExpiry];
        v40 = v39;
        if (v38 == v39)
        {
        }

        else
        {
          v41 = [(KTClientDataRecord *)self escrowExpiry];
          v42 = [(KTClientDataRecord *)v5 escrowExpiry];
          v43 = [v41 kt_isEqualWithinOneMillisecond:v42];

          if (!v43)
          {
            goto LABEL_32;
          }
        }

        v44 = [(KTClientDataRecord *)self verified];
        if (v44 == [(KTClientDataRecord *)v5 verified])
        {
          v45 = [(KTClientDataRecord *)self synced];
          if (v45 == [(KTClientDataRecord *)v5 synced])
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

- (BOOL)marked:(id)a3
{
  v4 = a3;
  v5 = [(KTClientDataRecord *)self markedForDeletion];

  if (v5)
  {
    v6 = [(KTClientDataRecord *)self markedForDeletion];
    v7 = [v6 compare:v4] == -1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)expired:(id)a3
{
  v4 = a3;
  v5 = [(KTClientDataRecord *)self expiry];

  if (v5)
  {
    v6 = [(KTClientDataRecord *)self expiry];
    v7 = [v6 compare:v4] == -1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)active:(id)a3
{
  v4 = a3;
  v5 = [(KTClientDataRecord *)self markedForDeletion];
  if (v5 && (v6 = v5, -[KTClientDataRecord markedForDeletion](self, "markedForDeletion"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 compare:v4], v7, v6, v8 == -1))
  {
    v12 = 0;
  }

  else
  {
    v9 = [(KTClientDataRecord *)self expiry];
    if (v9)
    {
      v10 = v9;
      v11 = [(KTClientDataRecord *)self expiry];
      v12 = [v11 compare:v4] != -1;
    }

    else
    {
      v12 = 1;
    }
  }

  return v12;
}

- (void)markWithMutationMs:(unint64_t)a3
{
  v5 = [(KTClientDataRecord *)self markedForDeletion];

  if (!v5)
  {
    v6 = a3 / 1000.0;
    v7 = [NSDate dateWithTimeIntervalSince1970:v6];
    [(KTClientDataRecord *)self setMarkedForDeletion:v7];

    [(KTClientDataRecord *)self setExpiry:0];
    v8 = [NSDate dateWithTimeIntervalSince1970:v6 + kKTEscrowExpiryPeriod];
    [(KTClientDataRecord *)self setEscrowExpiry:v8];
  }
}

- (void)updateWithAddMutation:(id)a3 error:(id *)a4
{
  v16 = a3;
  v5 = [v16 idsMutation];
  v6 = [v5 mutationMs];

  v7 = [NSDate dateWithTimeIntervalSince1970:v6 / 1000.0];
  if ([(KTClientDataRecord *)self marked:v7]|| [(KTClientDataRecord *)self expired:v7])
  {
    [(KTClientDataRecord *)self setMarkedForDeletion:0];
    v8 = [NSDate dateWithTimeIntervalSince1970:v6 / 1000.0];
    [(KTClientDataRecord *)self setAddedDate:v8];

    if ([v16 expiryMs])
    {
      v9 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v16 expiryMs] / 1000.0);
      [(KTClientDataRecord *)self setExpiry:v9];

      v10 = [v16 expiryMs];
      v11 = [NSDate dateWithTimeIntervalSince1970:v10 / 1000.0 + kKTEscrowExpiryPeriod];
      [(KTClientDataRecord *)self setEscrowExpiry:v11];
    }
  }

  else if ([v16 expiryMs])
  {
    v12 = [v16 expiryMs];
    v13 = [NSDate dateWithTimeIntervalSince1970:(v12 / 0x3E8) + kKTExpiryGracePeriod];
    [(KTClientDataRecord *)self setExpiry:v13];

    v14 = [(KTClientDataRecord *)self expiry];
    v15 = [v14 dateByAddingTimeInterval:kKTEscrowExpiryPeriod];

    [(KTClientDataRecord *)self setEscrowExpiry:v15];
  }

  else
  {
    [(KTClientDataRecord *)self setExpiry:0];
    [(KTClientDataRecord *)self setEscrowExpiry:0];
  }
}

- (void)updateWithMarkDeleteMutation:(id)a3 error:(id *)a4
{
  v5 = [a3 idsMutation];
  v6 = [v5 mutationMs];

  v7 = [(KTClientDataRecord *)self markedForDeletion];

  if (v7)
  {
    v8 = [NSDate dateWithTimeIntervalSince1970:v6 / 1000.0 + kKTEscrowExpiryPeriod];
    [(KTClientDataRecord *)self setEscrowExpiry:v8];
  }

  else
  {

    [(KTClientDataRecord *)self markWithMutationMs:v6];
  }
}

- (BOOL)shouldRemove:(id)a3 removeAllMarked:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(KTClientDataRecord *)self escrowExpiry];

  if (v7)
  {
    v8 = [(KTClientDataRecord *)self escrowExpiry];
    v9 = [v6 compare:v8];

    if (v9 == 1)
    {
      goto LABEL_6;
    }
  }

  if (!v4)
  {
    goto LABEL_7;
  }

  v10 = [(KTClientDataRecord *)self markedForDeletion];
  v11 = [v6 compare:v10];

  if (v11 == 1 || (-[KTClientDataRecord expiry](self, "expiry"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v6 compare:v12], v12, v13 == 1))
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