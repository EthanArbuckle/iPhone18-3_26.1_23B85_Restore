@interface APPBMerchant
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)paymentCapabilitiesAsString:(int)string;
- (id)supportedPaymentNetworksAsString:(int)string;
- (int)StringAsPaymentCapabilities:(id)capabilities;
- (int)StringAsSupportedPaymentNetworks:(id)networks;
- (int)paymentCapabilitiesAtIndex:(unint64_t)index;
- (int)supportedPaymentNetworksAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation APPBMerchant

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = APPBMerchant;
  [(APPBMerchant *)&v3 dealloc];
}

- (int)supportedPaymentNetworksAtIndex:(unint64_t)index
{
  p_supportedPaymentNetworks = &self->_supportedPaymentNetworks;
  count = self->_supportedPaymentNetworks.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_supportedPaymentNetworks->list[index];
}

- (id)supportedPaymentNetworksAsString:(int)string
{
  if (string >= 4)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_10047DE80 + string);
  }

  return v4;
}

- (int)StringAsSupportedPaymentNetworks:(id)networks
{
  networksCopy = networks;
  if ([networksCopy isEqualToString:@"AmericanExpress"])
  {
    v4 = 0;
  }

  else if ([networksCopy isEqualToString:@"MasterCard"])
  {
    v4 = 1;
  }

  else if ([networksCopy isEqualToString:@"Visa"])
  {
    v4 = 2;
  }

  else if ([networksCopy isEqualToString:@"ChinaUnionPay"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)paymentCapabilitiesAtIndex:(unint64_t)index
{
  p_paymentCapabilities = &self->_paymentCapabilities;
  count = self->_paymentCapabilities.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_paymentCapabilities->list[index];
}

- (id)paymentCapabilitiesAsString:(int)string
{
  if (string)
  {
    if (string == 1)
    {
      v4 = @"EMV";
    }

    else
    {
      v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
    }
  }

  else
  {
    v4 = @"ThreeDS";
  }

  return v4;
}

- (int)StringAsPaymentCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  if ([capabilitiesCopy isEqualToString:@"ThreeDS"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [capabilitiesCopy isEqualToString:@"EMV"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBMerchant;
  v3 = [(APPBMerchant *)&v7 description];
  dictionaryRepresentation = [(APPBMerchant *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  countryCode = self->_countryCode;
  if (countryCode)
  {
    [v4 setObject:countryCode forKey:@"countryCode"];
  }

  p_supportedPaymentNetworks = &self->_supportedPaymentNetworks;
  if (self->_supportedPaymentNetworks.count)
  {
    v8 = [NSMutableArray arrayWithCapacity:?];
    if (self->_supportedPaymentNetworks.count)
    {
      v9 = 0;
      do
      {
        v10 = p_supportedPaymentNetworks->list[v9];
        if (v10 >= 4)
        {
          v11 = [NSString stringWithFormat:@"(unknown: %i)", p_supportedPaymentNetworks->list[v9]];
        }

        else
        {
          v11 = *(&off_10047DE80 + v10);
        }

        [v8 addObject:v11];

        ++v9;
      }

      while (v9 < self->_supportedPaymentNetworks.count);
    }

    [v4 setObject:v8 forKey:@"supportedPaymentNetworks"];
  }

  p_paymentCapabilities = &self->_paymentCapabilities;
  if (self->_paymentCapabilities.count)
  {
    v13 = [NSMutableArray arrayWithCapacity:?];
    if (self->_paymentCapabilities.count)
    {
      v14 = 0;
      do
      {
        v15 = p_paymentCapabilities->list[v14];
        if (v15)
        {
          if (v15 == 1)
          {
            v16 = @"EMV";
          }

          else
          {
            v16 = [NSString stringWithFormat:@"(unknown: %i)", p_paymentCapabilities->list[v14]];
          }
        }

        else
        {
          v16 = @"ThreeDS";
        }

        [v13 addObject:v16];

        ++v14;
      }

      while (v14 < self->_paymentCapabilities.count);
    }

    [v4 setObject:v13 forKey:@"paymentCapabilities"];
  }

  paymentProcessingURL = self->_paymentProcessingURL;
  if (paymentProcessingURL)
  {
    [v4 setObject:paymentProcessingURL forKey:@"paymentProcessingURL"];
  }

  paymentProcessingCertificate = self->_paymentProcessingCertificate;
  if (paymentProcessingCertificate)
  {
    [v4 setObject:paymentProcessingCertificate forKey:@"paymentProcessingCertificate"];
  }

  shippingUpdateURL = self->_shippingUpdateURL;
  if (shippingUpdateURL)
  {
    [v4 setObject:shippingUpdateURL forKey:@"shippingUpdateURL"];
  }

  shippingUpdateCertificate = self->_shippingUpdateCertificate;
  if (shippingUpdateCertificate)
  {
    [v4 setObject:shippingUpdateCertificate forKey:@"shippingUpdateCertificate"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_identifier)
  {
    sub_100394508();
  }

  v8 = toCopy;
  PBDataWriterWriteStringField();
  if (!self->_countryCode)
  {
    sub_1003944DC();
  }

  PBDataWriterWriteStringField();
  if (self->_supportedPaymentNetworks.count)
  {
    v5 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v5;
    }

    while (v5 < self->_supportedPaymentNetworks.count);
  }

  if (self->_paymentCapabilities.count)
  {
    v6 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v6;
    }

    while (v6 < self->_paymentCapabilities.count);
  }

  if (!self->_paymentProcessingURL)
  {
    sub_1003944B0();
  }

  PBDataWriterWriteStringField();
  if (self->_paymentProcessingCertificate)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_shippingUpdateURL)
  {
    PBDataWriterWriteStringField();
  }

  v7 = v8;
  if (self->_shippingUpdateCertificate)
  {
    PBDataWriterWriteDataField();
    v7 = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setIdentifier:self->_identifier];
  [toCopy setCountryCode:self->_countryCode];
  if ([(APPBMerchant *)self supportedPaymentNetworksCount])
  {
    [toCopy clearSupportedPaymentNetworks];
    supportedPaymentNetworksCount = [(APPBMerchant *)self supportedPaymentNetworksCount];
    if (supportedPaymentNetworksCount)
    {
      v5 = supportedPaymentNetworksCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addSupportedPaymentNetworks:{-[APPBMerchant supportedPaymentNetworksAtIndex:](self, "supportedPaymentNetworksAtIndex:", i)}];
      }
    }
  }

  if ([(APPBMerchant *)self paymentCapabilitiesCount])
  {
    [toCopy clearPaymentCapabilities];
    paymentCapabilitiesCount = [(APPBMerchant *)self paymentCapabilitiesCount];
    if (paymentCapabilitiesCount)
    {
      v8 = paymentCapabilitiesCount;
      for (j = 0; j != v8; ++j)
      {
        [toCopy addPaymentCapabilities:{-[APPBMerchant paymentCapabilitiesAtIndex:](self, "paymentCapabilitiesAtIndex:", j)}];
      }
    }
  }

  [toCopy setPaymentProcessingURL:self->_paymentProcessingURL];
  if (self->_paymentProcessingCertificate)
  {
    [toCopy setPaymentProcessingCertificate:?];
  }

  if (self->_shippingUpdateURL)
  {
    [toCopy setShippingUpdateURL:?];
  }

  v10 = toCopy;
  if (self->_shippingUpdateCertificate)
  {
    [toCopy setShippingUpdateCertificate:?];
    v10 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[8];
  v5[8] = v6;

  v8 = [(NSString *)self->_countryCode copyWithZone:zone];
  v9 = v5[7];
  v5[7] = v8;

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v10 = [(NSString *)self->_paymentProcessingURL copyWithZone:zone];
  v11 = v5[10];
  v5[10] = v10;

  v12 = [(NSData *)self->_paymentProcessingCertificate copyWithZone:zone];
  v13 = v5[9];
  v5[9] = v12;

  v14 = [(NSString *)self->_shippingUpdateURL copyWithZone:zone];
  v15 = v5[12];
  v5[12] = v14;

  v16 = [(NSData *)self->_shippingUpdateCertificate copyWithZone:zone];
  v17 = v5[11];
  v5[11] = v16;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | equalCopy[8])) || -[NSString isEqual:](identifier, "isEqual:")) && ((countryCode = self->_countryCode, !(countryCode | equalCopy[7])) || -[NSString isEqual:](countryCode, "isEqual:")) && PBRepeatedInt32IsEqual() && PBRepeatedInt32IsEqual() && ((paymentProcessingURL = self->_paymentProcessingURL, !(paymentProcessingURL | equalCopy[10])) || -[NSString isEqual:](paymentProcessingURL, "isEqual:")) && ((paymentProcessingCertificate = self->_paymentProcessingCertificate, !(paymentProcessingCertificate | equalCopy[9])) || -[NSData isEqual:](paymentProcessingCertificate, "isEqual:")) && ((shippingUpdateURL = self->_shippingUpdateURL, !(shippingUpdateURL | equalCopy[12])) || -[NSString isEqual:](shippingUpdateURL, "isEqual:")))
  {
    shippingUpdateCertificate = self->_shippingUpdateCertificate;
    if (shippingUpdateCertificate | equalCopy[11])
    {
      v11 = [(NSData *)shippingUpdateCertificate isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_countryCode hash]^ v3;
  v5 = PBRepeatedInt32Hash();
  v6 = v5 ^ PBRepeatedInt32Hash();
  v7 = v4 ^ v6 ^ [(NSString *)self->_paymentProcessingURL hash];
  v8 = [(NSData *)self->_paymentProcessingCertificate hash];
  v9 = v8 ^ [(NSString *)self->_shippingUpdateURL hash];
  return v7 ^ v9 ^ [(NSData *)self->_shippingUpdateCertificate hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v12 = fromCopy;
  if (fromCopy[8])
  {
    [(APPBMerchant *)self setIdentifier:?];
    fromCopy = v12;
  }

  if (fromCopy[7])
  {
    [(APPBMerchant *)self setCountryCode:?];
    fromCopy = v12;
  }

  supportedPaymentNetworksCount = [fromCopy supportedPaymentNetworksCount];
  if (supportedPaymentNetworksCount)
  {
    v6 = supportedPaymentNetworksCount;
    for (i = 0; i != v6; ++i)
    {
      -[APPBMerchant addSupportedPaymentNetworks:](self, "addSupportedPaymentNetworks:", [v12 supportedPaymentNetworksAtIndex:i]);
    }
  }

  paymentCapabilitiesCount = [v12 paymentCapabilitiesCount];
  if (paymentCapabilitiesCount)
  {
    v9 = paymentCapabilitiesCount;
    for (j = 0; j != v9; ++j)
    {
      -[APPBMerchant addPaymentCapabilities:](self, "addPaymentCapabilities:", [v12 paymentCapabilitiesAtIndex:j]);
    }
  }

  v11 = v12;
  if (v12[10])
  {
    [(APPBMerchant *)self setPaymentProcessingURL:?];
    v11 = v12;
  }

  if (v11[9])
  {
    [(APPBMerchant *)self setPaymentProcessingCertificate:?];
    v11 = v12;
  }

  if (v11[12])
  {
    [(APPBMerchant *)self setShippingUpdateURL:?];
    v11 = v12;
  }

  if (v11[11])
  {
    [(APPBMerchant *)self setShippingUpdateCertificate:?];
    v11 = v12;
  }
}

@end