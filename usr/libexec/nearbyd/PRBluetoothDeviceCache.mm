@interface PRBluetoothDeviceCache
- (BOOL)isCached:(id)cached;
- (BOOL)isCachedByTokenData:(id)data;
- (BOOL)uncacheDeviceByTokenData:(id)data;
- (PRBluetoothDeviceCache)init;
- (id)cachedDevices;
- (id)deviceForIDSIdentifier:(id)identifier;
- (id)deviceForIdentifier:(unint64_t)identifier;
- (id)deviceForTokenData:(id)data;
- (void)cacheDevice:(id)device;
- (void)reset;
- (void)uncacheDevice:(id)device;
@end

@implementation PRBluetoothDeviceCache

- (PRBluetoothDeviceCache)init
{
  v11.receiver = self;
  v11.super_class = PRBluetoothDeviceCache;
  v2 = [(PRBluetoothDeviceCache *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_opt_new();
    u64IdentifierToBluetoothDeviceMap = v3->_u64IdentifierToBluetoothDeviceMap;
    v3->_u64IdentifierToBluetoothDeviceMap = v4;

    v6 = objc_opt_new();
    tokenDataToBluetoothDeviceMap = v3->_tokenDataToBluetoothDeviceMap;
    v3->_tokenDataToBluetoothDeviceMap = v6;

    v8 = objc_opt_new();
    idsIdentifierToBluetoothDeviceMap = v3->_idsIdentifierToBluetoothDeviceMap;
    v3->_idsIdentifierToBluetoothDeviceMap = v8;
  }

  return v3;
}

- (void)reset
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_u64IdentifierToBluetoothDeviceMap removeAllObjects];
  [(NSMutableDictionary *)self->_tokenDataToBluetoothDeviceMap removeAllObjects];
  [(NSMutableDictionary *)self->_idsIdentifierToBluetoothDeviceMap removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)cachedDevices
{
  v3 = objc_opt_new();
  os_unfair_lock_lock(&self->_lock);
  allValues = [(NSMutableDictionary *)self->_u64IdentifierToBluetoothDeviceMap allValues];

  os_unfair_lock_unlock(&self->_lock);

  return allValues;
}

- (void)cacheDevice:(id)device
{
  deviceCopy = device;
  v5 = deviceCopy;
  if (deviceCopy)
  {
    u64Identifier = [deviceCopy u64Identifier];
    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = u64Identifier;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Caching device with address: 0x%llx", &v15, 0xCu);
    }

    os_unfair_lock_lock(&self->_lock);
    u64IdentifierToBluetoothDeviceMap = self->_u64IdentifierToBluetoothDeviceMap;
    v9 = [NSNumber numberWithUnsignedLongLong:u64Identifier];
    [(NSMutableDictionary *)u64IdentifierToBluetoothDeviceMap setObject:v5 forKeyedSubscript:v9];

    tokenDataToBluetoothDeviceMap = self->_tokenDataToBluetoothDeviceMap;
    discoveryTokenData = [v5 discoveryTokenData];
    [(NSMutableDictionary *)tokenDataToBluetoothDeviceMap setObject:v5 forKeyedSubscript:discoveryTokenData];

    idsDeviceID = [v5 idsDeviceID];
    LOBYTE(discoveryTokenData) = idsDeviceID == 0;

    if ((discoveryTokenData & 1) == 0)
    {
      idsIdentifierToBluetoothDeviceMap = self->_idsIdentifierToBluetoothDeviceMap;
      idsDeviceID2 = [v5 idsDeviceID];
      [(NSMutableDictionary *)idsIdentifierToBluetoothDeviceMap setObject:v5 forKeyedSubscript:idsDeviceID2];
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)uncacheDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy)
  {
    v13 = deviceCopy;
    u64Identifier = [deviceCopy u64Identifier];
    os_unfair_lock_lock(&self->_lock);
    u64IdentifierToBluetoothDeviceMap = self->_u64IdentifierToBluetoothDeviceMap;
    v7 = [NSNumber numberWithUnsignedLongLong:u64Identifier];
    [(NSMutableDictionary *)u64IdentifierToBluetoothDeviceMap removeObjectForKey:v7];

    tokenDataToBluetoothDeviceMap = self->_tokenDataToBluetoothDeviceMap;
    discoveryTokenData = [v13 discoveryTokenData];
    [(NSMutableDictionary *)tokenDataToBluetoothDeviceMap removeObjectForKey:discoveryTokenData];

    idsDeviceID = [v13 idsDeviceID];

    if (idsDeviceID)
    {
      idsIdentifierToBluetoothDeviceMap = self->_idsIdentifierToBluetoothDeviceMap;
      idsDeviceID2 = [v13 idsDeviceID];
      [(NSMutableDictionary *)idsIdentifierToBluetoothDeviceMap removeObjectForKey:idsDeviceID2];
    }

    os_unfair_lock_unlock(&self->_lock);
    deviceCopy = v13;
  }
}

- (BOOL)uncacheDeviceByTokenData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(NSMutableDictionary *)self->_tokenDataToBluetoothDeviceMap objectForKey:dataCopy];
    os_unfair_lock_unlock(&self->_lock);
    v6 = v5 != 0;
    if (v5)
    {
      [(PRBluetoothDeviceCache *)self uncacheDevice:v5];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isCached:(id)cached
{
  cachedCopy = cached;
  v5 = cachedCopy;
  if (cachedCopy)
  {
    discoveryTokenData = [cachedCopy discoveryTokenData];
    v7 = [(PRBluetoothDeviceCache *)self deviceForTokenData:discoveryTokenData];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isCachedByTokenData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v5 = [(PRBluetoothDeviceCache *)self deviceForTokenData:dataCopy];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)deviceForIdentifier:(unint64_t)identifier
{
  os_unfair_lock_lock(&self->_lock);
  u64IdentifierToBluetoothDeviceMap = self->_u64IdentifierToBluetoothDeviceMap;
  v6 = [NSNumber numberWithUnsignedLongLong:identifier];
  v7 = [(NSMutableDictionary *)u64IdentifierToBluetoothDeviceMap objectForKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)deviceForTokenData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(NSMutableDictionary *)self->_tokenDataToBluetoothDeviceMap objectForKeyedSubscript:dataCopy];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)deviceForIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(NSMutableDictionary *)self->_idsIdentifierToBluetoothDeviceMap objectForKeyedSubscript:identifierCopy];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end