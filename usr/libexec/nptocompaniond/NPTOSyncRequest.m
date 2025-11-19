@interface NPTOSyncRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)npto_assetsRequiringExternalPowerSourceConnected;
- (id)npto_libraryCollectionTargetMap;
- (int)requiringExternalPowerSourceConnectedAssetIndexAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPTOSyncRequest

- (id)npto_libraryCollectionTargetMap
{
  v3 = [(NPTOSyncRequest *)self collectionTargetList];
  v4 = [(NPTOSyncRequest *)self library];
  v5 = [v3 collectionTargetMapWithLibrary:v4];

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
      v6 = [(NPTOSyncRequest *)self library];
      v7 = [v6 assetAtIndex:v5];
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

- (int)requiringExternalPowerSourceConnectedAssetIndexAtIndex:(unint64_t)a3
{
  p_requiringExternalPowerSourceConnectedAssetIndexs = &self->_requiringExternalPowerSourceConnectedAssetIndexs;
  count = self->_requiringExternalPowerSourceConnectedAssetIndexs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_requiringExternalPowerSourceConnectedAssetIndexs->list[a3];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPTOSyncRequest;
  v3 = [(NPTOSyncRequest *)&v7 description];
  v4 = [(NPTOSyncRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  library = self->_library;
  if (library)
  {
    v5 = [(NPTOLibrary *)library dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"library"];
  }

  collectionTargetList = self->_collectionTargetList;
  if (collectionTargetList)
  {
    v7 = [(NPTOCollectionTargetList *)collectionTargetList dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"collectionTargetList"];
  }

  v8 = PBRepeatedInt32NSArray();
  [v3 setObject:v8 forKey:@"requiringExternalPowerSourceConnectedAssetIndex"];

  return v3;
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    p_vtable = &OBJC_METACLASS___NMSIncomingResponse.vtable;
    v7 = &selRef_setHasDate_;
    v8 = &off_100097000;
    while (1)
    {
      if ([a3 hasError])
      {
        goto LABEL_57;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v37) = 0;
        v12 = [a3 position] + 1;
        if (v12 >= [a3 position] && (v13 = objc_msgSend(a3, "position") + 1, v13 <= objc_msgSend(a3, "length")))
        {
          v14 = [a3 data];
          [v14 getBytes:&v37 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v16 = [a3 hasError] ? 0 : v11;
LABEL_16:
      if (([a3 hasError] & 1) != 0 || (v16 & 7) == 4)
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
            v20 = [a3 position];
            if (v20 >= [a3 length] || (objc_msgSend(a3, "hasError") & 1) != 0)
            {
              break;
            }

            v21 = 0;
            v22 = 0;
            v23 = 0;
            while (1)
            {
              v39 = 0;
              v24 = [a3 position] + 1;
              if (v24 >= [a3 position] && (v25 = objc_msgSend(a3, "position") + 1, v25 <= objc_msgSend(a3, "length")))
              {
                v26 = [a3 data];
                [v26 getBytes:&v39 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
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

            [a3 hasError];
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
            v32 = [a3 position] + 1;
            if (v32 >= [a3 position] && (v33 = objc_msgSend(a3, "position") + 1, v33 <= objc_msgSend(a3, "length")))
            {
              v34 = [a3 data];
              [v34 getBytes:&v37 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
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

          [a3 hasError];
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
        if (!PBReaderPlaceMark() || !NPTOLibraryReadFrom(v18, a3))
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
      v35 = [a3 position];
      if (v35 >= [a3 length])
      {
        goto LABEL_57;
      }
    }

    v18 = objc_alloc_init((p_vtable + 32));
    objc_storeStrong(&self->PBRequest_opaque[*(v7 + 571)], v18);
    v37 = 0;
    v38 = 0;
    if (!PBReaderPlaceMark() || !NPTOCollectionTargetListReadFrom(v18, a3))
    {
LABEL_59:

LABEL_60:
      LOBYTE(v19) = 0;
      return v19;
    }

    goto LABEL_26;
  }

LABEL_57:
  LOBYTE(v19) = [a3 hasError] ^ 1;
  return v19;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_library)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if (self->_collectionTargetList)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  p_requiringExternalPowerSourceConnectedAssetIndexs = &self->_requiringExternalPowerSourceConnectedAssetIndexs;
  if (p_requiringExternalPowerSourceConnectedAssetIndexs->count)
  {
    v6 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      v4 = v7;
      ++v6;
    }

    while (v6 < p_requiringExternalPowerSourceConnectedAssetIndexs->count);
  }
}

- (void)copyTo:(id)a3
{
  v7 = a3;
  if (self->_library)
  {
    [v7 setLibrary:?];
  }

  if (self->_collectionTargetList)
  {
    [v7 setCollectionTargetList:?];
  }

  if ([(NPTOSyncRequest *)self requiringExternalPowerSourceConnectedAssetIndexsCount])
  {
    [v7 clearRequiringExternalPowerSourceConnectedAssetIndexs];
    v4 = [(NPTOSyncRequest *)self requiringExternalPowerSourceConnectedAssetIndexsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v7 addRequiringExternalPowerSourceConnectedAssetIndex:{-[NPTOSyncRequest requiringExternalPowerSourceConnectedAssetIndexAtIndex:](self, "requiringExternalPowerSourceConnectedAssetIndexAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NPTOLibrary *)self->_library copyWithZone:a3];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NPTOCollectionTargetList *)self->_collectionTargetList copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  PBRepeatedInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((library = self->_library, !(library | v4[5])) || -[NPTOLibrary isEqual:](library, "isEqual:")) && ((collectionTargetList = self->_collectionTargetList, !(collectionTargetList | v4[4])) || -[NPTOCollectionTargetList isEqual:](collectionTargetList, "isEqual:")))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  library = self->_library;
  v6 = v4[5];
  v12 = v4;
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

  v4 = v12;
LABEL_7:
  collectionTargetList = self->_collectionTargetList;
  v8 = v4[4];
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

  v4 = v12;
LABEL_13:
  v9 = [v4 requiringExternalPowerSourceConnectedAssetIndexsCount];
  if (v9)
  {
    v10 = v9;
    for (i = 0; i != v10; ++i)
    {
      -[NPTOSyncRequest addRequiringExternalPowerSourceConnectedAssetIndex:](self, "addRequiringExternalPowerSourceConnectedAssetIndex:", [v12 requiringExternalPowerSourceConnectedAssetIndexAtIndex:i]);
    }
  }
}

@end