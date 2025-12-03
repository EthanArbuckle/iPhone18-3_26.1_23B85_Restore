@interface KCSharingPBRemoteItem
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation KCSharingPBRemoteItem

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  privateKey = self->_privateKey;
  v6 = fromCopy[3];
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  internetPassword = self->_internetPassword;
  v8 = fromCopy[2];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((privateKey = self->_privateKey, !(privateKey | equalCopy[3])) || -[KCSharingPBPrivateKeyCredential isEqual:](privateKey, "isEqual:")))
  {
    internetPassword = self->_internetPassword;
    if (internetPassword | equalCopy[2])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(KCSharingPBPrivateKeyCredential *)self->_privateKey copyWithZone:zone];
  v7 = *(v5 + 3);
  *(v5 + 3) = v6;

  v8 = [(KCSharingPBInternetPasswordCredential *)self->_internetPassword copyWithZone:zone];
  v9 = *(v5 + 2);
  *(v5 + 2) = v8;

  objc_storeStrong(v5 + 1, self->_unknownFields);
  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_privateKey)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_internetPassword)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy];
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    while (1)
    {
      if ([from hasError])
      {
        return [from hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v20) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v20 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
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

      if ([from hasError])
      {
        v8 = 0;
      }

LABEL_14:
      if (([from hasError] & 1) != 0 || (v8 & 7) == 4)
      {
        return [from hasError] ^ 1;
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
        if (!PBReaderPlaceMark() || !sub_100034F1C(v14, from))
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
      position2 = [from position];
      if (position2 >= [from length])
      {
        return [from hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(KCSharingPBInternetPasswordCredential);
    objc_storeStrong(&self->_internetPassword, v14);
    v20 = 0xAAAAAAAAAAAAAAAALL;
    v21 = 0xAAAAAAAAAAAAAAAALL;
    if (!PBReaderPlaceMark() || !sub_10005D630(v14, from))
    {
LABEL_29:

      return 0;
    }

    goto LABEL_23;
  }

  return [from hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  privateKey = self->_privateKey;
  if (privateKey)
  {
    dictionaryRepresentation = [(KCSharingPBPrivateKeyCredential *)privateKey dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"privateKey"];
  }

  internetPassword = self->_internetPassword;
  if (internetPassword)
  {
    dictionaryRepresentation2 = [(KCSharingPBInternetPasswordCredential *)internetPassword dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"internetPassword"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    dictionaryRepresentation3 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"Unknown Fields"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCSharingPBRemoteItem;
  v3 = [(KCSharingPBRemoteItem *)&v7 description];
  dictionaryRepresentation = [(KCSharingPBRemoteItem *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end