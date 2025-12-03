@interface NRPBBTMigrationChallengeWrite
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation NRPBBTMigrationChallengeWrite

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBBTMigrationChallengeWrite;
  v3 = [(NRPBBTMigrationChallengeWrite *)&v7 description];
  dictionaryRepresentation = [(NRPBBTMigrationChallengeWrite *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  challenge = self->_challenge;
  if (challenge)
  {
    [v3 setObject:challenge forKey:@"challenge"];
  }

  encryptedPhoneName = self->_encryptedPhoneName;
  if (encryptedPhoneName)
  {
    [v4 setObject:encryptedPhoneName forKey:@"encryptedPhoneName"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_challenge)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_encryptedPhoneName)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_challenge copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_encryptedPhoneName copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((challenge = self->_challenge, !(challenge | equalCopy[1])) || -[NSData isEqual:](challenge, "isEqual:")))
  {
    encryptedPhoneName = self->_encryptedPhoneName;
    if (encryptedPhoneName | equalCopy[2])
    {
      v7 = [(NSData *)encryptedPhoneName isEqual:?];
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

@end