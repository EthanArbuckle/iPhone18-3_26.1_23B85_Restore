@interface NSCoder
- (__n128)decodeDoubleVector3ForKey:(__n128 *)key@<X8>;
- (__n128)decodeMatrix4x4ForKey:(void *)key;
- (__n128)decodeQuatForKey:(void *)key;
- (__n128)decodeVector3ForKey:(void *)key;
- (void)encodeDoubleVector3:(id)vector3 forKey:;
- (void)encodeMatrix4x4:(__n128)matrix4x4 forKey:(__n128)key;
- (void)encodeQuat:(uint64_t)quat forKey:(void *)key;
- (void)encodeVector3:(id)vector3 forKey:;
@end

@implementation NSCoder

- (void)encodeMatrix4x4:(__n128)matrix4x4 forKey:(__n128)key
{
  v10 = a2;
  matrix4x4Copy = matrix4x4;
  keyCopy = key;
  v13 = a5;
  v8 = a7;
  v9 = [NSData dataWithBytes:&v10 length:64];
  [self encodeObject:v9 forKey:{v8, *&v10, *&matrix4x4Copy, *&keyCopy, *&v13}];
}

- (__n128)decodeMatrix4x4ForKey:(void *)key
{
  keyCopy = key;
  if ([self containsValueForKey:keyCopy])
  {
    v5 = [self decodeObjectOfClass:objc_opt_class() forKey:keyCopy];
    if ([v5 length] <= 0x3F)
    {
      v7 = +[NSAssertionHandler currentHandler];
      v8 = [NSString stringWithUTF8String:"simd_float4x4 GetMatrix4x4FromNSData(NSData *__strong)"];
      [v7 handleFailureInFunction:v8 file:@"NIVisionSupport.mm" lineNumber:111 description:@"NSData must contain enough bytes for simd_float4x4"];
    }

    [v5 getBytes:&v13 length:64];

    v12 = v13;
  }

  else
  {
    v11 = matrix_identity_float4x4.columns[1];
    v12 = matrix_identity_float4x4.columns[0];
    v9 = matrix_identity_float4x4.columns[3];
    v10 = matrix_identity_float4x4.columns[2];
  }

  return v12;
}

- (void)encodeVector3:(id)vector3 forKey:
{
  v7 = v3;
  vector3Copy = vector3;
  v6 = [NSData dataWithBytes:&v7 length:16];
  [(NSCoder *)self encodeObject:v6 forKey:vector3Copy, v7];
}

- (__n128)decodeVector3ForKey:(void *)key
{
  keyCopy = key;
  v5 = [self decodeObjectOfClass:objc_opt_class() forKey:keyCopy];
  if ([v5 length] <= 0xF)
  {
    v7 = +[NSAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"simd_float3 GetVector3FromNSData(NSData *__strong)"];
    [v7 handleFailureInFunction:v8 file:@"NINearbyObject.mm" lineNumber:719 description:@"NSData must contain enough bytes for simd_float3"];
  }

  DWORD2(v10) = 0;
  *&v10 = 0;
  [v5 getBytes:&v10 length:16];
  v9 = v10;

  return v9;
}

- (void)encodeQuat:(uint64_t)quat forKey:(void *)key
{
  v7 = a2;
  keyCopy = key;
  v6 = [NSData dataWithBytes:&v7 length:16];
  [self encodeObject:v6 forKey:{keyCopy, *&v7}];
}

- (__n128)decodeQuatForKey:(void *)key
{
  keyCopy = key;
  v5 = [self decodeObjectOfClass:objc_opt_class() forKey:keyCopy];
  if ([v5 length] <= 0xF)
  {
    v7 = +[NSAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"simd_quatf GetQuaternionFromNSData(NSData *__strong)"];
    [v7 handleFailureInFunction:v8 file:@"NINearbyObject.mm" lineNumber:726 description:@"NSData must contain enough bytes for simd_quatf"];
  }

  [v5 getBytes:&v10 length:16];

  v9 = v10;
  return v9;
}

- (void)encodeDoubleVector3:(id)vector3 forKey:
{
  v5 = *(vector3 + 1);
  v8 = *vector3;
  v9 = v5;
  v6 = v3;
  v7 = [NSData dataWithBytes:&v8 length:32];
  [(NSCoder *)self encodeObject:v7 forKey:v6, v8, v9];
}

- (__n128)decodeDoubleVector3ForKey:(__n128 *)key@<X8>
{
  v5 = a2;
  v6 = [self decodeObjectOfClass:objc_opt_class() forKey:v5];
  if ([v6 length] <= 0x1F)
  {
    v8 = +[NSAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"simd_double3 GetDoubleVector3FromNSData(NSData * _Nonnull __strong)"];
    [v8 handleFailureInFunction:v9 file:@"NIDLTDOACoordinatesUpdate.mm" lineNumber:25 description:@"NSData must contain enough bytes for simd_double3"];
  }

  v13.n128_u64[0] = 0;
  v12 = 0uLL;
  [v6 getBytes:&v12 length:32];
  v10 = v13;
  v11 = v12;

  result = v11;
  *key = v11;
  key[1] = v10;
  return result;
}

@end