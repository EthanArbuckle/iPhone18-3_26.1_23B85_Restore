@interface SECC2MPCloudKitInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addClientOperation:(id)operation;
- (void)addOperationGroup:(id)group;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAnonymous:(BOOL)anonymous;
- (void)setHasReportClientOperationFrequencyBase:(BOOL)base;
- (void)setHasReportOperationGroupFrequency:(BOOL)frequency;
- (void)setHasReportOperationGroupFrequencyBase:(BOOL)base;
- (void)writeTo:(id)to;
@end

@implementation SECC2MPCloudKitInfo

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 7))
  {
    [(SECC2MPCloudKitInfo *)self setClientProcessVersion:?];
  }

  if (*(fromCopy + 5))
  {
    [(SECC2MPCloudKitInfo *)self setClientBundleId:?];
  }

  if (*(fromCopy + 8))
  {
    [(SECC2MPCloudKitInfo *)self setContainer:?];
  }

  if (*(fromCopy + 9))
  {
    [(SECC2MPCloudKitInfo *)self setEnvironment:?];
  }

  if ((*(fromCopy + 92) & 0x10) != 0)
  {
    self->_anonymous = *(fromCopy + 88);
    *&self->_has |= 0x10u;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = *(fromCopy + 10);
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SECC2MPCloudKitInfo *)self addOperationGroup:*(*(&v21 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v10 = *(fromCopy + 92);
  if ((v10 & 4) != 0)
  {
    self->_reportOperationGroupFrequency = *(fromCopy + 3);
    *&self->_has |= 4u;
    v10 = *(fromCopy + 92);
  }

  if ((v10 & 8) != 0)
  {
    self->_reportOperationGroupFrequencyBase = *(fromCopy + 4);
    *&self->_has |= 8u;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = *(fromCopy + 6);
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(SECC2MPCloudKitInfo *)self addClientOperation:*(*(&v17 + 1) + 8 * j), v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = *(fromCopy + 92);
  if (v16)
  {
    self->_reportClientOperationFrequency = *(fromCopy + 1);
    *&self->_has |= 1u;
    v16 = *(fromCopy + 92);
  }

  if ((v16 & 2) != 0)
  {
    self->_reportClientOperationFrequencyBase = *(fromCopy + 2);
    *&self->_has |= 2u;
  }
}

- (unint64_t)hash
{
  v14 = [(NSString *)self->_clientProcessVersion hash];
  v3 = [(NSString *)self->_clientBundleId hash];
  v4 = [(NSString *)self->_container hash];
  v5 = [(NSString *)self->_environment hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v6 = 2654435761 * self->_anonymous;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSMutableArray *)self->_operationGroups hash];
  if ((*&self->_has & 4) != 0)
  {
    v8 = 2654435761u * self->_reportOperationGroupFrequency;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_6:
      v9 = 2654435761u * self->_reportOperationGroupFrequencyBase;
      goto LABEL_9;
    }
  }

  v9 = 0;
LABEL_9:
  v10 = [(NSMutableArray *)self->_clientOperations hash];
  if (*&self->_has)
  {
    v11 = 2654435761u * self->_reportClientOperationFrequency;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v12 = 0;
    return v3 ^ v14 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

  v11 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v12 = 2654435761u * self->_reportClientOperationFrequencyBase;
  return v3 ^ v14 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_43;
  }

  clientProcessVersion = self->_clientProcessVersion;
  if (clientProcessVersion | *(equalCopy + 7))
  {
    if (![(NSString *)clientProcessVersion isEqual:?])
    {
      goto LABEL_43;
    }
  }

  clientBundleId = self->_clientBundleId;
  if (clientBundleId | *(equalCopy + 5))
  {
    if (![(NSString *)clientBundleId isEqual:?])
    {
      goto LABEL_43;
    }
  }

  container = self->_container;
  if (container | *(equalCopy + 8))
  {
    if (![(NSString *)container isEqual:?])
    {
      goto LABEL_43;
    }
  }

  environment = self->_environment;
  if (environment | *(equalCopy + 9))
  {
    if (![(NSString *)environment isEqual:?])
    {
      goto LABEL_43;
    }
  }

  has = self->_has;
  v10 = *(equalCopy + 92);
  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 92) & 0x10) == 0)
    {
      goto LABEL_43;
    }

    v12 = *(equalCopy + 88);
    if (self->_anonymous)
    {
      if ((*(equalCopy + 88) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (*(equalCopy + 88))
    {
      goto LABEL_43;
    }
  }

  else if ((*(equalCopy + 92) & 0x10) != 0)
  {
    goto LABEL_43;
  }

  operationGroups = self->_operationGroups;
  if (operationGroups | *(equalCopy + 10))
  {
    if (![(NSMutableArray *)operationGroups isEqual:?])
    {
      goto LABEL_43;
    }

    has = self->_has;
    v10 = *(equalCopy + 92);
  }

  if ((has & 4) != 0)
  {
    if ((v10 & 4) == 0 || self->_reportOperationGroupFrequency != *(equalCopy + 3))
    {
      goto LABEL_43;
    }
  }

  else if ((v10 & 4) != 0)
  {
    goto LABEL_43;
  }

  if ((has & 8) != 0)
  {
    if ((v10 & 8) == 0 || self->_reportOperationGroupFrequencyBase != *(equalCopy + 4))
    {
      goto LABEL_43;
    }
  }

  else if ((v10 & 8) != 0)
  {
    goto LABEL_43;
  }

  clientOperations = self->_clientOperations;
  if (clientOperations | *(equalCopy + 6))
  {
    if ([(NSMutableArray *)clientOperations isEqual:?])
    {
      has = self->_has;
      v10 = *(equalCopy + 92);
      goto LABEL_34;
    }

LABEL_43:
    v14 = 0;
    goto LABEL_44;
  }

LABEL_34:
  if (has)
  {
    if ((v10 & 1) == 0 || self->_reportClientOperationFrequency != *(equalCopy + 1))
    {
      goto LABEL_43;
    }
  }

  else if (v10)
  {
    goto LABEL_43;
  }

  v14 = (v10 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v10 & 2) == 0 || self->_reportClientOperationFrequencyBase != *(equalCopy + 2))
    {
      goto LABEL_43;
    }

    v14 = 1;
  }

LABEL_44:

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_clientProcessVersion copyWithZone:zone];
  v7 = v5[7];
  v5[7] = v6;

  v8 = [(NSString *)self->_clientBundleId copyWithZone:zone];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(NSString *)self->_container copyWithZone:zone];
  v11 = v5[8];
  v5[8] = v10;

  v12 = [(NSString *)self->_environment copyWithZone:zone];
  v13 = v5[9];
  v5[9] = v12;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 88) = self->_anonymous;
    *(v5 + 92) |= 0x10u;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = self->_operationGroups;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v34;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v33 + 1) + 8 * i) copyWithZone:zone];
        [v5 addOperationGroup:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v16);
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v5[3] = self->_reportOperationGroupFrequency;
    *(v5 + 92) |= 4u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v5[4] = self->_reportOperationGroupFrequencyBase;
    *(v5 + 92) |= 8u;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = self->_clientOperations;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v30;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v29 + 1) + 8 * j) copyWithZone:{zone, v29}];
        [v5 addClientOperation:v26];
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v23);
  }

  v27 = self->_has;
  if (v27)
  {
    v5[1] = self->_reportClientOperationFrequency;
    *(v5 + 92) |= 1u;
    v27 = self->_has;
  }

  if ((v27 & 2) != 0)
  {
    v5[2] = self->_reportClientOperationFrequencyBase;
    *(v5 + 92) |= 2u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v15 = toCopy;
  if (self->_clientProcessVersion)
  {
    [toCopy setClientProcessVersion:?];
    toCopy = v15;
  }

  if (self->_clientBundleId)
  {
    [v15 setClientBundleId:?];
    toCopy = v15;
  }

  if (self->_container)
  {
    [v15 setContainer:?];
    toCopy = v15;
  }

  if (self->_environment)
  {
    [v15 setEnvironment:?];
    toCopy = v15;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    toCopy[88] = self->_anonymous;
    toCopy[92] |= 0x10u;
  }

  if ([(SECC2MPCloudKitInfo *)self operationGroupsCount])
  {
    [v15 clearOperationGroups];
    operationGroupsCount = [(SECC2MPCloudKitInfo *)self operationGroupsCount];
    if (operationGroupsCount)
    {
      v6 = operationGroupsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(SECC2MPCloudKitInfo *)self operationGroupAtIndex:i];
        [v15 addOperationGroup:v8];
      }
    }
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v15 + 3) = self->_reportOperationGroupFrequency;
    v15[92] |= 4u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v15 + 4) = self->_reportOperationGroupFrequencyBase;
    v15[92] |= 8u;
  }

  if ([(SECC2MPCloudKitInfo *)self clientOperationsCount])
  {
    [v15 clearClientOperations];
    clientOperationsCount = [(SECC2MPCloudKitInfo *)self clientOperationsCount];
    if (clientOperationsCount)
    {
      v11 = clientOperationsCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(SECC2MPCloudKitInfo *)self clientOperationAtIndex:j];
        [v15 addClientOperation:v13];
      }
    }
  }

  v14 = self->_has;
  if (v14)
  {
    *(v15 + 1) = self->_reportClientOperationFrequency;
    v15[92] |= 1u;
    v14 = self->_has;
  }

  if ((v14 & 2) != 0)
  {
    *(v15 + 2) = self->_reportClientOperationFrequencyBase;
    v15[92] |= 2u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_clientProcessVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_clientBundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_container)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_environment)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    anonymous = self->_anonymous;
    PBDataWriterWriteBOOLField();
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = self->_operationGroups;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    reportOperationGroupFrequency = self->_reportOperationGroupFrequency;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    reportOperationGroupFrequencyBase = self->_reportOperationGroupFrequencyBase;
    PBDataWriterWriteUint64Field();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = self->_clientOperations;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v24 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v17);
  }

  v21 = self->_has;
  if (v21)
  {
    reportClientOperationFrequency = self->_reportClientOperationFrequency;
    PBDataWriterWriteUint64Field();
    v21 = self->_has;
  }

  if ((v21 & 2) != 0)
  {
    reportClientOperationFrequencyBase = self->_reportClientOperationFrequencyBase;
    PBDataWriterWriteUint64Field();
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  clientProcessVersion = self->_clientProcessVersion;
  if (clientProcessVersion)
  {
    [v3 setObject:clientProcessVersion forKey:@"client_process_version"];
  }

  clientBundleId = self->_clientBundleId;
  if (clientBundleId)
  {
    [v4 setObject:clientBundleId forKey:@"client_bundle_id"];
  }

  container = self->_container;
  if (container)
  {
    [v4 setObject:container forKey:@"container"];
  }

  environment = self->_environment;
  if (environment)
  {
    [v4 setObject:environment forKey:@"environment"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v9 = [NSNumber numberWithBool:self->_anonymous];
    [v4 setObject:v9 forKey:@"anonymous"];
  }

  if ([(NSMutableArray *)self->_operationGroups count])
  {
    v10 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_operationGroups, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v11 = self->_operationGroups;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v36;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation = [*(*(&v35 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v13);
    }

    [v4 setObject:v10 forKey:@"operation_group"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v18 = [NSNumber numberWithUnsignedLongLong:self->_reportOperationGroupFrequency];
    [v4 setObject:v18 forKey:@"report_operation_group_frequency"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v19 = [NSNumber numberWithUnsignedLongLong:self->_reportOperationGroupFrequencyBase];
    [v4 setObject:v19 forKey:@"report_operation_group_frequency_base"];
  }

  if ([(NSMutableArray *)self->_clientOperations count])
  {
    v20 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_clientOperations, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v21 = self->_clientOperations;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v32;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(v21);
          }

          dictionaryRepresentation2 = [*(*(&v31 + 1) + 8 * j) dictionaryRepresentation];
          [v20 addObject:dictionaryRepresentation2];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v23);
    }

    [v4 setObject:v20 forKey:@"client_operation"];
  }

  v27 = self->_has;
  if (v27)
  {
    v28 = [NSNumber numberWithUnsignedLongLong:self->_reportClientOperationFrequency];
    [v4 setObject:v28 forKey:@"report_client_operation_frequency"];

    v27 = self->_has;
  }

  if ((v27 & 2) != 0)
  {
    v29 = [NSNumber numberWithUnsignedLongLong:self->_reportClientOperationFrequencyBase];
    [v4 setObject:v29 forKey:@"report_client_operation_frequency_base"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SECC2MPCloudKitInfo;
  v3 = [(SECC2MPCloudKitInfo *)&v7 description];
  dictionaryRepresentation = [(SECC2MPCloudKitInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)setHasReportClientOperationFrequencyBase:(BOOL)base
{
  if (base)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addClientOperation:(id)operation
{
  operationCopy = operation;
  clientOperations = self->_clientOperations;
  v8 = operationCopy;
  if (!clientOperations)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_clientOperations;
    self->_clientOperations = v6;

    operationCopy = v8;
    clientOperations = self->_clientOperations;
  }

  [(NSMutableArray *)clientOperations addObject:operationCopy];
}

- (void)setHasReportOperationGroupFrequencyBase:(BOOL)base
{
  if (base)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasReportOperationGroupFrequency:(BOOL)frequency
{
  if (frequency)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addOperationGroup:(id)group
{
  groupCopy = group;
  operationGroups = self->_operationGroups;
  v8 = groupCopy;
  if (!operationGroups)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_operationGroups;
    self->_operationGroups = v6;

    groupCopy = v8;
    operationGroups = self->_operationGroups;
  }

  [(NSMutableArray *)operationGroups addObject:groupCopy];
}

- (void)setHasAnonymous:(BOOL)anonymous
{
  if (anonymous)
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