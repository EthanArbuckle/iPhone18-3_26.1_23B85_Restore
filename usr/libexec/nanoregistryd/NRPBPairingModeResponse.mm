@interface NRPBPairingModeResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation NRPBPairingModeResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBPairingModeResponse;
  v3 = [(NRPBPairingModeResponse *)&v7 description];
  dictionaryRepresentation = [(NRPBPairingModeResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithBool:self->_success];
  [v3 setObject:v4 forKey:@"success"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 8) = self->_success;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_success == equalCopy[8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end