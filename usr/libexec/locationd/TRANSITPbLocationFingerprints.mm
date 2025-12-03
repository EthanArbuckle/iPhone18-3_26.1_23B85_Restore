@interface TRANSITPbLocationFingerprints
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addLocationFingerprint:(id)fingerprint;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation TRANSITPbLocationFingerprints

- (void)dealloc
{
  [(TRANSITPbLocationFingerprints *)self setLocationFingerprints:0];
  v3.receiver = self;
  v3.super_class = TRANSITPbLocationFingerprints;
  [(TRANSITPbLocationFingerprints *)&v3 dealloc];
}

- (void)addLocationFingerprint:(id)fingerprint
{
  locationFingerprints = self->_locationFingerprints;
  if (!locationFingerprints)
  {
    locationFingerprints = objc_alloc_init(NSMutableArray);
    self->_locationFingerprints = locationFingerprints;
  }

  [(NSMutableArray *)locationFingerprints addObject:fingerprint];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = TRANSITPbLocationFingerprints;
  return [NSString stringWithFormat:@"%@ %@", [(TRANSITPbLocationFingerprints *)&v3 description], [(TRANSITPbLocationFingerprints *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(NSMutableArray *)self->_locationFingerprints count])
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_locationFingerprints, "count")}];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    locationFingerprints = self->_locationFingerprints;
    v6 = [(NSMutableArray *)locationFingerprints countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(locationFingerprints);
          }

          [v4 addObject:{objc_msgSend(*(*(&v11 + 1) + 8 * v9), "dictionaryRepresentation")}];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)locationFingerprints countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"locationFingerprint"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  locationFingerprints = self->_locationFingerprints;
  v4 = [(NSMutableArray *)locationFingerprints countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(locationFingerprints);
        }

        PBDataWriterWriteSubmessage();
      }

      v5 = [(NSMutableArray *)locationFingerprints countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)copyTo:(id)to
{
  if ([(TRANSITPbLocationFingerprints *)self locationFingerprintsCount])
  {
    [to clearLocationFingerprints];
    locationFingerprintsCount = [(TRANSITPbLocationFingerprints *)self locationFingerprintsCount];
    if (locationFingerprintsCount)
    {
      v6 = locationFingerprintsCount;
      for (i = 0; i != v6; ++i)
      {
        [to addLocationFingerprint:{-[TRANSITPbLocationFingerprints locationFingerprintAtIndex:](self, "locationFingerprintAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  locationFingerprints = self->_locationFingerprints;
  v7 = [(NSMutableArray *)locationFingerprints countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(locationFingerprints);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addLocationFingerprint:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)locationFingerprints countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    locationFingerprints = self->_locationFingerprints;
    if (locationFingerprints | *(equal + 1))
    {

      LOBYTE(v5) = [(NSMutableArray *)locationFingerprints isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (void)mergeFrom:(id)from
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(from + 1);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(TRANSITPbLocationFingerprints *)self addLocationFingerprint:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end