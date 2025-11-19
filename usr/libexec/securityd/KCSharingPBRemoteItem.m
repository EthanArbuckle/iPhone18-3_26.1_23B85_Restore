@interface KCSharingPBRemoteItem
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCSharingPBRemoteItem

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  privateKey = self->_privateKey;
  v6 = v4[3];
  v9 = v4;
  if (privateKey)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(KCSharingPBPrivateKeyCredential *)privateKey mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(KCSharingPBRemoteItem *)self setPrivateKey:?];
  }

  v4 = v9;
LABEL_7:
  internetPassword = self->_internetPassword;
  v8 = v4[2];
  if (internetPassword)
  {
    if (v8)
    {
      [(KCSharingPBInternetPasswordCredential *)internetPassword mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(KCSharingPBRemoteItem *)self setInternetPassword:?];
  }

  _objc_release_x1();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((privateKey = self->_privateKey, !(privateKey | v4[3])) || -[KCSharingPBPrivateKeyCredential isEqual:](privateKey, "isEqual:")))
  {
    internetPassword = self->_internetPassword;
    if (internetPassword | v4[2])
    {
      v7 = [(KCSharingPBInternetPasswordCredential *)internetPassword isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(KCSharingPBPrivateKeyCredential *)self->_privateKey copyWithZone:a3];
  v7 = *(v5 + 3);
  *(v5 + 3) = v6;

  v8 = [(KCSharingPBInternetPasswordCredential *)self->_internetPassword copyWithZone:a3];
  v9 = *(v5 + 2);
  *(v5 + 2) = v8;

  objc_storeStrong(v5 + 1, self->_unknownFields);
  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_privateKey)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_internetPassword)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:v4];
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    while (1)
    {
      if ([a3 hasError])
      {
        return [a3 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v20) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v20 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v20 & 0x7F) << v6;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        if (v7++ >= 9)
        {
          v8 = 0;
          goto LABEL_14;
        }
      }

      if ([a3 hasError])
      {
        v8 = 0;
      }

LABEL_14:
      if (([a3 hasError] & 1) != 0 || (v8 & 7) == 4)
      {
        return [a3 hasError] ^ 1;
      }

      v13 = v8 >> 3;
      if (v13 == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = objc_alloc_init(KCSharingPBPrivateKeyCredential);
        objc_storeStrong(&self->_privateKey, v14);
        v20 = 0xAAAAAAAAAAAAAAAALL;
        v21 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !sub_100034F1C(v14, a3))
        {
          goto LABEL_29;
        }

LABEL_23:
        PBReaderRecallMark();

        goto LABEL_27;
      }

      if (!self->_unknownFields)
      {
        v15 = objc_alloc_init(PBUnknownFields);
        unknownFields = self->_unknownFields;
        self->_unknownFields = v15;

        v17 = self->_unknownFields;
      }

      if ((PBUnknownFieldAdd() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v18 = [a3 position];
      if (v18 >= [a3 length])
      {
        return [a3 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(KCSharingPBInternetPasswordCredential);
    objc_storeStrong(&self->_internetPassword, v14);
    v20 = 0xAAAAAAAAAAAAAAAALL;
    v21 = 0xAAAAAAAAAAAAAAAALL;
    if (!PBReaderPlaceMark() || !sub_10005D630(v14, a3))
    {
LABEL_29:

      return 0;
    }

    goto LABEL_23;
  }

  return [a3 hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  privateKey = self->_privateKey;
  if (privateKey)
  {
    v5 = [(KCSharingPBPrivateKeyCredential *)privateKey dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"privateKey"];
  }

  internetPassword = self->_internetPassword;
  if (internetPassword)
  {
    v7 = [(KCSharingPBInternetPasswordCredential *)internetPassword dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"internetPassword"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    v9 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"Unknown Fields"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCSharingPBRemoteItem;
  v3 = [(KCSharingPBRemoteItem *)&v7 description];
  v4 = [(KCSharingPBRemoteItem *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end