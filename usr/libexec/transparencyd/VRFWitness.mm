@interface VRFWitness
+ (id)descriptor;
- (id)diagnosticsJsonDictionary;
- (unint64_t)verifyWithError:(id *)error;
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
  output = [(VRFWitness *)self output];
  kt_hexString = [output kt_hexString];
  v12[1] = kt_hexString;
  v11[2] = @"proof";
  proof = [(VRFWitness *)self proof];
  kt_hexString2 = [proof kt_hexString];
  v12[2] = kt_hexString2;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

- (unint64_t)verifyWithError:(id *)error
{
  type = [(VRFWitness *)self type];
  verifier = [(VRFWitness *)self verifier];
  vrfType = [verifier vrfType];

  if (type == vrfType)
  {
    verifier2 = [(VRFWitness *)self verifier];
    message = [(VRFWitness *)self message];
    output = [(VRFWitness *)self output];
    proof = [(VRFWitness *)self proof];
    v12 = [verifier2 verifyMessage:message salt:0 output:output proof:proof error:error];

    if (v12)
    {
      return 1;
    }

    else
    {
      verifier3 = [(VRFWitness *)self verifier];
      v16 = [verifier3 key];
      needsRefresh = [v16 needsRefresh];

      if (needsRefresh)
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
    if (error)
    {
      *error = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-55 description:@"Unknown VRF algorithm used for VRF witness: %d", VRFWitness_Type_RawValue(self)];
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