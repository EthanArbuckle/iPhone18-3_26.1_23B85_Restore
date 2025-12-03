@interface NPTOSyncRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)npto_assetsRequiringExternalPowerSourceConnected;
- (id)npto_libraryCollectionTargetMap;
- (int)requiringExternalPowerSourceConnectedAssetIndexAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPTOSyncRequest

- (id)npto_libraryCollectionTargetMap
{
  collectionTargetList = [(NPTOSyncRequest *)self collectionTargetList];
  library = [(NPTOSyncRequest *)self library];
  v5 = [collectionTargetList collectionTargetMapWithLibrary:library];

  return v5;
}

- (id)npto_assetsRequiringExternalPowerSourceConnected
{
  v3 = +[NSMutableSet set];
  if ([(NPTOSyncRequest *)self requiringExternalPowerSourceConnectedAssetIndexsCount])
  {
    v4 = 0;
    do
    {
      v5 = [(NPTOSyncRequest *)self requiringExternalPowerSourceConnectedAssetIndexAtIndex:v4];
      library = [(NPTOSyncRequest *)self library];
      v7 = [library assetAtIndex:v5];
      [v3 addObject:v7];

      ++v4;
    }

    while (v4 < [(NPTOSyncRequest *)self requiringExternalPowerSourceConnectedAssetIndexsCount]);
  }

  v8 = [v3 copy];

  return v8;
}

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = NPTOSyncRequest;
  [(NPTOSyncRequest *)&v3 dealloc];
}

- (int)requiringExternalPowerSourceConnectedAssetIndexAtIndex:(unint64_t)index
{
  p_requiringExternalPowerSourceConnectedAssetIndexs = &self->_requiringExternalPowerSourceConnectedAssetIndexs;
  count = self->_requiringExternalPowerSourceConnectedAssetIndexs.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_requiringExternalPowerSourceConnectedAssetIndexs->list[index];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPTOSyncRequest;
  v3 = [(NPTOSyncRequest *)&v7 description];
  dictionaryRepresentation = [(NPTOSyncRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  library = self->_library;
  if (library)
  {
    dictionaryRepresentation = [(NPTOLibrary *)library dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"library"];
  }

  collectionTargetList = self->_collectionTargetList;
  if (collectionTargetList)
  {
    dictionaryRepresentation2 = [(NPTOCollectionTargetList *)collectionTargetList dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"collectionTargetList"];
  }

  v8 = PBRepeatedInt32NSArray();
  [v3 setObject:v8 forKey:@"requiringExternalPowerSourceConnectedAssetIndex"];

  return v3;
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    p_vtable = &OBJC_METACLASS___NMSIncomingResponse.vtable;
    v7 = &selRef_setHasDate_;
    v8 = &off_100097000;
    while (1)
    {
      if ([from hasError])
      {
        goto LABEL_57;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v37) = 0;
        v12 = [from position] + 1;
        if (v12 >= [from position] && (v13 = objc_msgSend(from, "position") + 1, v13 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v37 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v11 |= (v37 & 0x7F) << v9;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [from hasError] ? 0 : v11;
LABEL_16:
      if (([from hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        goto LABEL_57;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) == 3)
      {
        if ((v16 & 7) == 2)
        {
          v37 = 0;
          v38 = 0;
          v19 = PBReaderPlaceMark();
          if (!v19)
          {
            return v19;
          }

          while (1)
          {
            position2 = [from position];
            if (position2 >= [from length] || (objc_msgSend(from, "hasError") & 1) != 0)
            {
              break;
            }

            v21 = 0;
            v22 = 0;
            v23 = 0;
            while (1)
            {
              v39 = 0;
              v24 = [from position] + 1;
              if (v24 >= [from position] && (v25 = objc_msgSend(from, "position") + 1, v25 <= objc_msgSend(from, "length")))
              {
                data2 = [from data];
                [data2 getBytes:&v39 range:{objc_msgSend(from, "position"), 1}];

                [from setPosition:{objc_msgSend(from, "position") + 1}];
              }

              else
              {
                [from _setError];
              }

              v23 |= (v39 & 0x7F) << v21;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v15 = v22++ >= 9;
              if (v15)
              {
                goto LABEL_41;
              }
            }

            [from hasError];
LABEL_41:
            PBRepeatedInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v27 = v7;
          v28 = p_vtable;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          while (1)
          {
            LOBYTE(v37) = 0;
            v32 = [from position] + 1;
            if (v32 >= [from position] && (v33 = objc_msgSend(from, "position") + 1, v33 <= objc_msgSend(from, "length")))
            {
              data3 = [from data];
              [data3 getBytes:&v37 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v31 |= (v37 & 0x7F) << v29;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v15 = v30++ >= 9;
            if (v15)
            {
              goto LABEL_55;
            }
          }

          [from hasError];
LABEL_55:
          p_vtable = v28;
          PBRepeatedInt32Add();
          v7 = v27;
          v8 = &off_100097000;
        }

        goto LABEL_56;
      }

      if (v17 == 2)
      {
        break;
      }

      if (v17 == 1)
      {
        v18 = objc_alloc_init((v8 + 374));
        objc_storeStrong(&self->_library, v18);
        v37 = 0;
        v38 = 0;
        if (!PBReaderPlaceMark() || !NPTOLibraryReadFrom(v18, from))
        {
          goto LABEL_59;
        }

LABEL_26:
        PBReaderRecallMark();

        goto LABEL_56;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_60;
      }

LABEL_56:
      position3 = [from position];
      if (position3 >= [from length])
      {
        goto LABEL_57;
      }
    }

    v18 = objc_alloc_init((p_vtable + 32));
    objc_storeStrong(&self->PBRequest_opaque[*(v7 + 571)], v18);
    v37 = 0;
    v38 = 0;
    if (!PBReaderPlaceMark() || !NPTOCollectionTargetListReadFrom(v18, from))
    {
LABEL_59:

LABEL_60:
      LOBYTE(v19) = 0;
      return v19;
    }

    goto LABEL_26;
  }

LABEL_57:
  LOBYTE(v19) = [from hasError] ^ 1;
  return v19;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_library)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }

  if (self->_collectionTargetList)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }

  p_requiringExternalPowerSourceConnectedAssetIndexs = &self->_requiringExternalPowerSourceConnectedAssetIndexs;
  if (p_requiringExternalPowerSourceConnectedAssetIndexs->count)
  {
    v6 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      toCopy = v7;
      ++v6;
    }

    while (v6 < p_requiringExternalPowerSourceConnectedAssetIndexs->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_library)
  {
    [toCopy setLibrary:?];
  }

  if (self->_collectionTargetList)
  {
    [toCopy setCollectionTargetList:?];
  }

  if ([(NPTOSyncRequest *)self requiringExternalPowerSourceConnectedAssetIndexsCount])
  {
    [toCopy clearRequiringExternalPowerSourceConnectedAssetIndexs];
    requiringExternalPowerSourceConnectedAssetIndexsCount = [(NPTOSyncRequest *)self requiringExternalPowerSourceConnectedAssetIndexsCount];
    if (requiringExternalPowerSourceConnectedAssetIndexsCount)
    {
      v5 = requiringExternalPowerSourceConnectedAssetIndexsCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addRequiringExternalPowerSourceConnectedAssetIndex:{-[NPTOSyncRequest requiringExternalPowerSourceConnectedAssetIndexAtIndex:](self, "requiringExternalPowerSourceConnectedAssetIndexAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NPTOLibrary *)self->_library copyWithZone:zone];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NPTOCollectionTargetList *)self->_collectionTargetList copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  PBRepeatedInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((library = self->_library, !(library | equalCopy[5])) || -[NPTOLibrary isEqual:](library, "isEqual:")) && ((collectionTargetList = self->_collectionTargetList, !(collectionTargetList | equalCopy[4])) || -[NPTOCollectionTargetList isEqual:](collectionTargetList, "isEqual:")))
  {
    IsEqual = PBRepeatedInt32IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (unint64_t)hash
{
  v3 = [(NPTOLibrary *)self->_library hash];
  v4 = [(NPTOCollectionTargetList *)self->_collectionTargetList hash]^ v3;
  return v4 ^ PBRepeatedInt32Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  library = self->_library;
  v6 = fromCopy[5];
  v12 = fromCopy;
  if (library)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPTOLibrary *)library mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPTOSyncRequest *)self setLibrary:?];
  }

  fromCopy = v12;
LABEL_7:
  collectionTargetList = self->_collectionTargetList;
  v8 = fromCopy[4];
  if (collectionTargetList)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(NPTOCollectionTargetList *)collectionTargetList mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(NPTOSyncRequest *)self setCollectionTargetList:?];
  }

  fromCopy = v12;
LABEL_13:
  requiringExternalPowerSourceConnectedAssetIndexsCount = [fromCopy requiringExternalPowerSourceConnectedAssetIndexsCount];
  if (requiringExternalPowerSourceConnectedAssetIndexsCount)
  {
    v10 = requiringExternalPowerSourceConnectedAssetIndexsCount;
    for (i = 0; i != v10; ++i)
    {
      -[NPTOSyncRequest addRequiringExternalPowerSourceConnectedAssetIndex:](self, "addRequiringExternalPowerSourceConnectedAssetIndex:", [v12 requiringExternalPowerSourceConnectedAssetIndexAtIndex:i]);
    }
  }
}

@end