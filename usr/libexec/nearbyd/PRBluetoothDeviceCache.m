@interface PRBluetoothDeviceCache
- (BOOL)isCached:(id)a3;
- (BOOL)isCachedByTokenData:(id)a3;
- (BOOL)uncacheDeviceByTokenData:(id)a3;
- (PRBluetoothDeviceCache)init;
- (id)cachedDevices;
- (id)deviceForIDSIdentifier:(id)a3;
- (id)deviceForIdentifier:(unint64_t)a3;
- (id)deviceForTokenData:(id)a3;
- (void)cacheDevice:(id)a3;
- (void)reset;
- (void)uncacheDevice:(id)a3;
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
  v4 = [(NSMutableDictionary *)self->_u64IdentifierToBluetoothDeviceMap allValues];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)cacheDevice:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 u64Identifier];
    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Caching device with address: 0x%llx", &v15, 0xCu);
    }

    os_unfair_lock_lock(&self->_lock);
    u64IdentifierToBluetoothDeviceMap = self->_u64IdentifierToBluetoothDeviceMap;
    v9 = [NSNumber numberWithUnsignedLongLong:v6];
    [(NSMutableDictionary *)u64IdentifierToBluetoothDeviceMap setObject:v5 forKeyedSubscript:v9];

    tokenDataToBluetoothDeviceMap = self->_tokenDataToBluetoothDeviceMap;
    v11 = [v5 discoveryTokenData];
    [(NSMutableDictionary *)tokenDataToBluetoothDeviceMap setObject:v5 forKeyedSubscript:v11];

    v12 = [v5 idsDeviceID];
    LOBYTE(v11) = v12 == 0;

    if ((v11 & 1) == 0)
    {
      idsIdentifierToBluetoothDeviceMap = self->_idsIdentifierToBluetoothDeviceMap;
      v14 = [v5 idsDeviceID];
      [(NSMutableDictionary *)idsIdentifierToBluetoothDeviceMap setObject:v5 forKeyedSubscript:v14];
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)uncacheDevice:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = v4;
    v5 = [v4 u64Identifier];
    os_unfair_lock_lock(&self->_lock);
    u64IdentifierToBluetoothDeviceMap = self->_u64IdentifierToBluetoothDeviceMap;
    v7 = [NSNumber numberWithUnsignedLongLong:v5];
    [(NSMutableDictionary *)u64IdentifierToBluetoothDeviceMap removeObjectForKey:v7];

    tokenDataToBluetoothDeviceMap = self->_tokenDataToBluetoothDeviceMap;
    v9 = [v13 discoveryTokenData];
    [(NSMutableDictionary *)tokenDataToBluetoothDeviceMap removeObjectForKey:v9];

    v10 = [v13 idsDeviceID];

    if (v10)
    {
      idsIdentifierToBluetoothDeviceMap = self->_idsIdentifierToBluetoothDeviceMap;
      v12 = [v13 idsDeviceID];
      [(NSMutableDictionary *)idsIdentifierToBluetoothDeviceMap removeObjectForKey:v12];
    }

    os_unfair_lock_unlock(&self->_lock);
    v4 = v13;
  }
}

- (BOOL)uncacheDeviceByTokenData:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(NSMutableDictionary *)self->_tokenDataToBluetoothDeviceMap objectForKey:v4];
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

- (BOOL)isCached:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 discoveryTokenData];
    v7 = [(PRBluetoothDeviceCache *)self deviceForTokenData:v6];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isCachedByTokenData:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PRBluetoothDeviceCache *)self deviceForTokenData:v4];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)deviceForIdentifier:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  u64IdentifierToBluetoothDeviceMap = self->_u64IdentifierToBluetoothDeviceMap;
  v6 = [NSNumber numberWithUnsignedLongLong:a3];
  v7 = [(NSMutableDictionary *)u64IdentifierToBluetoothDeviceMap objectForKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)deviceForTokenData:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(NSMutableDictionary *)self->_tokenDataToBluetoothDeviceMap objectForKeyedSubscript:v4];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)deviceForIDSIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(NSMutableDictionary *)self->_idsIdentifierToBluetoothDeviceMap objectForKeyedSubscript:v4];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end