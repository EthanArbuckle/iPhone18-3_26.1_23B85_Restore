@interface GTDeviceCapabilities
- (id)deviceCompatibilityCapabilitiesWithHeapDescriptors:(id)descriptors;
@end

@implementation GTDeviceCapabilities

- (id)deviceCompatibilityCapabilitiesWithHeapDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  apr_initialize();
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, 0);
  v44 = 0;
  v45 = 0;
  v4 = [descriptorsCopy objectForKeyedSubscript:@"heap-texture-info"];
  v5 = v4;
  v43 = 0;
  if (v4)
  {
    v44 = GTCapabilitiesHeapTextureInfo_deserialize(v4, newpool, &v43);
    v45 = v6;
  }

  v41 = 0;
  v42 = 0;
  v7 = [descriptorsCopy objectForKeyedSubscript:@"heap-acceleration-structure-info"];
  v8 = v7;
  v40 = 0;
  if (v7)
  {
    v41 = GTCapabilitiesHeapAccelerationStructureInfo_deserialize(v7, newpool, &v40);
    v42 = v9;
  }

  v31 = descriptorsCopy;
  v10 = MTLCreateSystemDefaultDevice();
  v29 = v8;
  v30 = v5;
  v28 = v10;
  if (v10)
  {
    v50 = v10;
    v11 = [NSArray arrayWithObjects:&v50 count:1];
  }

  else
  {
    v11 = 0;
  }

  v34 = objc_alloc_init(NSMutableArray);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v12)
  {
    v13 = v12;
    v33 = *v37;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v37 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        p = 0;
        apr_pool_create_ex(&p, 0, 0, 0);
        v16 = GTCapabilitiesRuntime_fromDeviceSafe(v15, p);
        v17 = GTCapabilitiesRuntime_serialize(v16, 2049, p);
        v18 = GTCapabilitiesRuntime_heapTextureInfoCompatible(&v44, v16, v15);
        v19 = GTCapabilitiesRuntime_heapAccelerationStructureInfoCompatible(&v41, v16, v15);
        v47[0] = @"device-name";
        name = [v15 name];
        v48[0] = name;
        v48[1] = v17;
        v47[1] = @"capabilities-runtime";
        v47[2] = @"heap-texture-compatibility";
        v21 = [NSNumber numberWithBool:v18];
        v48[2] = v21;
        v47[3] = @"heap-acceleration-structure-compatibility";
        v22 = [NSNumber numberWithBool:v19];
        v48[3] = v22;
        v47[4] = @"heap-texture-info-decoded";
        v23 = [NSNumber numberWithInt:v43 ^ 1u];
        v48[4] = v23;
        v47[5] = @"heap-acceleration-structure-info-decoded";
        v24 = [NSNumber numberWithInt:v40 ^ 1u];
        v48[5] = v24;
        v25 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:6];
        [v34 addObject:v25];

        apr_pool_destroy(p);
      }

      v13 = [obj countByEnumeratingWithState:&v36 objects:v49 count:16];
    }

    while (v13);
  }

  apr_pool_destroy(newpool);
  v26 = [v34 copy];

  return v26;
}

@end