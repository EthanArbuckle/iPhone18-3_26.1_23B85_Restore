@interface NSCoder
- (__n128)decodeDoubleVector3ForKey:(__n128 *)a3@<X8>;
- (__n128)decodeMatrix4x4ForKey:(void *)a3;
- (__n128)decodeQuatForKey:(void *)a3;
- (__n128)decodeVector3ForKey:(void *)a3;
- (void)encodeDoubleVector3:(id)a3 forKey:;
- (void)encodeMatrix4x4:(__n128)a3 forKey:(__n128)a4;
- (void)encodeQuat:(uint64_t)a3 forKey:(void *)a4;
- (void)encodeVector3:(id)a3 forKey:;
@end

@implementation NSCoder

- (void)encodeMatrix4x4:(__n128)a3 forKey:(__n128)a4
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v8 = a7;
  v9 = [NSData dataWithBytes:&v10 length:64];
  [a1 encodeObject:v9 forKey:{v8, *&v10, *&v11, *&v12, *&v13}];
}

- (__n128)decodeMatrix4x4ForKey:(void *)a3
{
  v4 = a3;
  if ([a1 containsValueForKey:v4])
  {
    v5 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v4];
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

- (void)encodeVector3:(id)a3 forKey:
{
  v7 = v3;
  v5 = a3;
  v6 = [NSData dataWithBytes:&v7 length:16];
  [(NSCoder *)self encodeObject:v6 forKey:v5, v7];
}

- (__n128)decodeVector3ForKey:(void *)a3
{
  v4 = a3;
  v5 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v4];
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

- (void)encodeQuat:(uint64_t)a3 forKey:(void *)a4
{
  v7 = a2;
  v5 = a4;
  v6 = [NSData dataWithBytes:&v7 length:16];
  [a1 encodeObject:v6 forKey:{v5, *&v7}];
}

- (__n128)decodeQuatForKey:(void *)a3
{
  v4 = a3;
  v5 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v4];
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

- (void)encodeDoubleVector3:(id)a3 forKey:
{
  v5 = *(a3 + 1);
  v8 = *a3;
  v9 = v5;
  v6 = v3;
  v7 = [NSData dataWithBytes:&v8 length:32];
  [(NSCoder *)self encodeObject:v7 forKey:v6, v8, v9];
}

- (__n128)decodeDoubleVector3ForKey:(__n128 *)a3@<X8>
{
  v5 = a2;
  v6 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v5];
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
  *a3 = v11;
  a3[1] = v10;
  return result;
}

@end