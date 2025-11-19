@interface VRFWitness
+ (id)descriptor;
- (id)diagnosticsJsonDictionary;
- (unint64_t)verifyWithError:(id *)a3;
@end

@implementation VRFWitness

+ (id)descriptor
{
  result = qword_10039C848;
  if (!qword_10039C848)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:VRFWitness messageName:@"VRFWitness" fileDescription:&unk_10038A4D8 fields:&off_10038A478 fieldCount:3 storageSize:24 flags:v3];
    qword_10039C848 = result;
  }

  return result;
}

- (id)diagnosticsJsonDictionary
{
  v11[0] = @"type";
  v3 = VRFType_EnumDescriptor();
  v4 = [v3 textFormatNameForValue:{-[VRFWitness type](self, "type")}];
  v12[0] = v4;
  v11[1] = @"output";
  v5 = [(VRFWitness *)self output];
  v6 = [v5 kt_hexString];
  v12[1] = v6;
  v11[2] = @"proof";
  v7 = [(VRFWitness *)self proof];
  v8 = [v7 kt_hexString];
  v12[2] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

- (unint64_t)verifyWithError:(id *)a3
{
  v5 = [(VRFWitness *)self type];
  v6 = [(VRFWitness *)self verifier];
  v7 = [v6 vrfType];

  if (v5 == v7)
  {
    v8 = [(VRFWitness *)self verifier];
    v9 = [(VRFWitness *)self message];
    v10 = [(VRFWitness *)self output];
    v11 = [(VRFWitness *)self proof];
    v12 = [v8 verifyMessage:v9 salt:0 output:v10 proof:v11 error:a3];

    if (v12)
    {
      return 1;
    }

    else
    {
      v15 = [(VRFWitness *)self verifier];
      v16 = [v15 key];
      v17 = [v16 needsRefresh];

      if (v17)
      {
        return 2;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    if (a3)
    {
      *a3 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-55 description:@"Unknown VRF algorithm used for VRF witness: %d", VRFWitness_Type_RawValue(self)];
    }

    if (qword_10039CDF8 != -1)
    {
      sub_10025FA34();
    }

    v14 = qword_10039CE00;
    if (os_log_type_enabled(qword_10039CE00, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Unknown VRF algorithm used for VRF witness", buf, 2u);
    }

    return 0;
  }
}

@end