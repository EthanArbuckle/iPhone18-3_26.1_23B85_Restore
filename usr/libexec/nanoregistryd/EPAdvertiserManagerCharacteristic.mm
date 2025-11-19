@interface EPAdvertiserManagerCharacteristic
- (BOOL)isEqual:(id)a3;
- (CBCharacteristic)characteristic;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation EPAdvertiserManagerCharacteristic

- (CBCharacteristic)characteristic
{
  if (self->_readHandler)
  {
    if (self->_encryptionRequired)
    {
      v3 = 4;
    }

    else
    {
      v3 = 1;
    }

    v4 = 2;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (self->_writeHandler)
  {
    v4 |= 8uLL;
    if (self->_encryptionRequired)
    {
      v3 |= 8uLL;
    }

    else
    {
      v3 |= 2uLL;
    }
  }

  v5 = 0;
  if (v4 && v3)
  {
    v5 = [[CBMutableCharacteristic alloc] initWithType:self->_characteristicUUID properties:v4 value:0 permissions:v3];
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(CBUUID *)self->_characteristicUUID hash];
  v4 = self->_encryptionRequired - v3 + 32 * v3;
  v5 = [self->_readHandler hash] + 32 * v4 - v4;
  return [self->_writeHandler hash] - v5 + 32 * v5 + 923521;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([(CBUUID *)self->_characteristicUUID isEqual:v5->_characteristicUUID]&& self->_encryptionRequired == v5->_encryptionRequired)
      {
        readHandler = self->_readHandler;
        v7 = objc_retainBlock(v5->_readHandler);
        if ([readHandler isEqual:v7])
        {
          writeHandler = self->_writeHandler;
          v9 = objc_retainBlock(v5->_writeHandler);
          v10 = [writeHandler isEqual:v9];
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)description
{
  v3 = [(CBUUID *)self->_characteristicUUID UUIDString];
  v4 = v3;
  v5 = @"NO";
  if (self->_encryptionRequired)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (self->_readHandler)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (self->_writeHandler)
  {
    v5 = @"YES";
  }

  v8 = [NSString stringWithFormat:@"Characteristic: %@ encryptionRequired: %@ readable:%@ writeable:%@", v3, v6, v7, v5];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[EPAdvertiserManagerCharacteristic allocWithZone:?]];
  objc_storeStrong(&v4->_characteristicUUID, self->_characteristicUUID);
  v4->_encryptionRequired = self->_encryptionRequired;
  v5 = [self->_readHandler copy];
  readHandler = v4->_readHandler;
  v4->_readHandler = v5;

  v7 = [self->_writeHandler copy];
  writeHandler = v4->_writeHandler;
  v4->_writeHandler = v7;

  return v4;
}

@end