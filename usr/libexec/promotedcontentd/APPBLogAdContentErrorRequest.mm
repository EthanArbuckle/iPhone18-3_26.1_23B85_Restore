@interface APPBLogAdContentErrorRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)errorTypeAsString:(int)a3;
- (int)StringAsErrorType:(id)a3;
- (int)errorType;
- (unint64_t)hash;
- (void)addFunctionNames:(id)a3;
- (void)addLines:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasLineNumber:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBLogAdContentErrorRequest

+ (id)options
{
  if (qword_1004E6CE0 != -1)
  {
    sub_100394604();
  }

  v3 = qword_1004E6CD8;

  return v3;
}

- (int)errorType
{
  if (*&self->_has)
  {
    return self->_errorType;
  }

  else
  {
    return 1;
  }
}

- (id)errorTypeAsString:(int)a3
{
  if (a3 == 1)
  {
    v4 = @"ParseError";
  }

  else if (a3 == 2)
  {
    v4 = @"Exception";
  }

  else
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  return v4;
}

- (int)StringAsErrorType:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"ParseError"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"Exception"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setHasLineNumber:(BOOL)a3
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

- (void)addLines:(id)a3
{
  v4 = a3;
  lines = self->_lines;
  v8 = v4;
  if (!lines)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_lines;
    self->_lines = v6;

    v4 = v8;
    lines = self->_lines;
  }

  [(NSMutableArray *)lines addObject:v4];
}

- (void)addFunctionNames:(id)a3
{
  v4 = a3;
  functionNames = self->_functionNames;
  v8 = v4;
  if (!functionNames)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_functionNames;
    self->_functionNames = v6;

    v4 = v8;
    functionNames = self->_functionNames;
  }

  [(NSMutableArray *)functionNames addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBLogAdContentErrorRequest;
  v3 = [(APPBLogAdContentErrorRequest *)&v7 description];
  v4 = [(APPBLogAdContentErrorRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  metaData = self->_metaData;
  if (metaData)
  {
    v5 = [(APPBLogMetaData *)metaData dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"metaData"];
  }

  if (*&self->_has)
  {
    errorType = self->_errorType;
    if (errorType == 1)
    {
      v7 = @"ParseError";
    }

    else if (errorType == 2)
    {
      v7 = @"Exception";
    }

    else
    {
      v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_errorType];
    }

    [v3 setObject:v7 forKey:@"errorType"];
  }

  errorMessage = self->_errorMessage;
  if (errorMessage)
  {
    [v3 setObject:errorMessage forKey:@"errorMessage"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v9 = [NSNumber numberWithInt:self->_lineNumber];
    [v3 setObject:v9 forKey:@"lineNumber"];
  }

  uRL = self->_uRL;
  if (uRL)
  {
    [v3 setObject:uRL forKey:@"URL"];
  }

  lines = self->_lines;
  if (lines)
  {
    [v3 setObject:lines forKey:@"lines"];
  }

  functionNames = self->_functionNames;
  if (functionNames)
  {
    [v3 setObject:functionNames forKey:@"functionNames"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_metaData)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_errorMessage)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_uRL)
  {
    PBDataWriterWriteStringField();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_lines;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_functionNames;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v13 = v4;
  if (self->_metaData)
  {
    [v4 setMetaData:?];
    v4 = v13;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_errorType;
    *(v4 + 64) |= 1u;
  }

  if (self->_errorMessage)
  {
    [v13 setErrorMessage:?];
    v4 = v13;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 8) = self->_lineNumber;
    *(v4 + 64) |= 2u;
  }

  if (self->_uRL)
  {
    [v13 setURL:?];
  }

  if ([(APPBLogAdContentErrorRequest *)self linesCount])
  {
    [v13 clearLines];
    v5 = [(APPBLogAdContentErrorRequest *)self linesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(APPBLogAdContentErrorRequest *)self linesAtIndex:i];
        [v13 addLines:v8];
      }
    }
  }

  if ([(APPBLogAdContentErrorRequest *)self functionNamesCount])
  {
    [v13 clearFunctionNames];
    v9 = [(APPBLogAdContentErrorRequest *)self functionNamesCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(APPBLogAdContentErrorRequest *)self functionNamesAtIndex:j];
        [v13 addFunctionNames:v12];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(APPBLogMetaData *)self->_metaData copyWithZone:a3];
  v7 = v5[6];
  v5[6] = v6;

  if (*&self->_has)
  {
    *(v5 + 4) = self->_errorType;
    *(v5 + 64) |= 1u;
  }

  v8 = [(NSString *)self->_errorMessage copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 8) = self->_lineNumber;
    *(v5 + 64) |= 2u;
  }

  v10 = [(NSString *)self->_uRL copyWithZone:a3];
  v11 = v5[7];
  v5[7] = v10;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = self->_lines;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v29 + 1) + 8 * v16) copyWithZone:a3];
        [v5 addLines:v17];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v14);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = self->_functionNames;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v25 + 1) + 8 * v22) copyWithZone:{a3, v25}];
        [v5 addFunctionNames:v23];

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v20);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  metaData = self->_metaData;
  if (metaData | *(v4 + 6))
  {
    if (![(APPBLogMetaData *)metaData isEqual:?])
    {
      goto LABEL_23;
    }
  }

  has = self->_has;
  if (has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_errorType != *(v4 + 4))
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 64))
  {
    goto LABEL_23;
  }

  errorMessage = self->_errorMessage;
  if (errorMessage | *(v4 + 1))
  {
    if (![(NSString *)errorMessage isEqual:?])
    {
LABEL_23:
      v11 = 0;
      goto LABEL_24;
    }

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    if ((*(v4 + 64) & 2) == 0 || self->_lineNumber != *(v4 + 8))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 64) & 2) != 0)
  {
    goto LABEL_23;
  }

  uRL = self->_uRL;
  if (uRL | *(v4 + 7) && ![(NSString *)uRL isEqual:?])
  {
    goto LABEL_23;
  }

  lines = self->_lines;
  if (lines | *(v4 + 5))
  {
    if (![(NSMutableArray *)lines isEqual:?])
    {
      goto LABEL_23;
    }
  }

  functionNames = self->_functionNames;
  if (functionNames | *(v4 + 3))
  {
    v11 = [(NSMutableArray *)functionNames isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_24:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(APPBLogMetaData *)self->_metaData hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_errorType;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_errorMessage hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_lineNumber;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 ^ v3 ^ v5 ^ v6;
  v8 = [(NSString *)self->_uRL hash];
  v9 = v8 ^ [(NSMutableArray *)self->_lines hash];
  return v7 ^ v9 ^ [(NSMutableArray *)self->_functionNames hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  metaData = self->_metaData;
  v6 = *(v4 + 6);
  if (metaData)
  {
    if (v6)
    {
      [(APPBLogMetaData *)metaData mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(APPBLogAdContentErrorRequest *)self setMetaData:?];
  }

  if (*(v4 + 64))
  {
    self->_errorType = *(v4 + 4);
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    [(APPBLogAdContentErrorRequest *)self setErrorMessage:?];
  }

  if ((*(v4 + 64) & 2) != 0)
  {
    self->_lineNumber = *(v4 + 8);
    *&self->_has |= 2u;
  }

  if (*(v4 + 7))
  {
    [(APPBLogAdContentErrorRequest *)self setURL:?];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = *(v4 + 5);
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(APPBLogAdContentErrorRequest *)self addLines:*(*(&v21 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = *(v4 + 3);
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(APPBLogAdContentErrorRequest *)self addFunctionNames:*(*(&v17 + 1) + 8 * j), v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

@end