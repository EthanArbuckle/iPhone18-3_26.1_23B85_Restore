@interface SECC2MPCloudKitOperationGroupInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SECC2MPCloudKitOperationGroupInfo

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 1))
  {
    [(SECC2MPCloudKitOperationGroupInfo *)self setOperationGroupId:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(SECC2MPCloudKitOperationGroupInfo *)self setOperationGroupName:?];
    v4 = v5;
  }

  if (v4[28])
  {
    self->_operationGroupTriggered = v4[24];
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_operationGroupId hash];
  v4 = [(NSString *)self->_operationGroupName hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_operationGroupTriggered;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  operationGroupId = self->_operationGroupId;
  if (operationGroupId | *(v4 + 1))
  {
    if (![(NSString *)operationGroupId isEqual:?])
    {
      goto LABEL_8;
    }
  }

  operationGroupName = self->_operationGroupName;
  if (operationGroupName | *(v4 + 2))
  {
    if (![(NSString *)operationGroupName isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_operationGroupTriggered)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(v4 + 24))
    {
      goto LABEL_8;
    }

    v7 = 1;
  }

LABEL_9:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_operationGroupId copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_operationGroupName copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_operationGroupTriggered;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_operationGroupId)
  {
    [v4 setOperationGroupId:?];
    v4 = v5;
  }

  if (self->_operationGroupName)
  {
    [v5 setOperationGroupName:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[24] = self->_operationGroupTriggered;
    v4[28] |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_operationGroupId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_operationGroupName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    operationGroupTriggered = self->_operationGroupTriggered;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  operationGroupId = self->_operationGroupId;
  if (operationGroupId)
  {
    [v3 setObject:operationGroupId forKey:@"operation_group_id"];
  }

  operationGroupName = self->_operationGroupName;
  if (operationGroupName)
  {
    [v4 setObject:operationGroupName forKey:@"operation_group_name"];
  }

  if (*&self->_has)
  {
    v7 = [NSNumber numberWithBool:self->_operationGroupTriggered];
    [v4 setObject:v7 forKey:@"operation_group_triggered"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SECC2MPCloudKitOperationGroupInfo;
  v3 = [(SECC2MPCloudKitOperationGroupInfo *)&v7 description];
  v4 = [(SECC2MPCloudKitOperationGroupInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end