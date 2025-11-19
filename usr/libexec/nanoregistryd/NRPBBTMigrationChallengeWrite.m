@interface NRPBBTMigrationChallengeWrite
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation NRPBBTMigrationChallengeWrite

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBBTMigrationChallengeWrite;
  v3 = [(NRPBBTMigrationChallengeWrite *)&v7 description];
  v4 = [(NRPBBTMigrationChallengeWrite *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_challenge)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_encryptedPhoneName)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_challenge copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_encryptedPhoneName copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((challenge = self->_challenge, !(challenge | v4[1])) || -[NSData isEqual:](challenge, "isEqual:")))
  {
    encryptedPhoneName = self->_encryptedPhoneName;
    if (encryptedPhoneName | v4[2])
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