@interface NRPBPairingModeResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation NRPBPairingModeResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBPairingModeResponse;
  v3 = [(NRPBPairingModeResponse *)&v7 description];
  v4 = [(NRPBPairingModeResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithBool:self->_success];
  [v3 setObject:v4 forKey:@"success"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 8) = self->_success;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_success == v4[8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end