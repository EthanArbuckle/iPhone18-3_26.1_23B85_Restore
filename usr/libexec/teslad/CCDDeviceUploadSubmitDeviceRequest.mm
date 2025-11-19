@interface CCDDeviceUploadSubmitDeviceRequest
- (id)_deviceDetails;
- (id)requestBody;
@end

@implementation CCDDeviceUploadSubmitDeviceRequest

- (id)requestBody
{
  v3 = [(CCDDeviceUploadSubmitDeviceRequest *)self submitDeviceRequestPayload];
  v20[0] = kDEPDeviceUploadOrgIdKey;
  v19 = [v3 orgId];
  v21[0] = v19;
  v20[1] = kDEPDeviceUploadOrgNameKey;
  v18 = [v3 orgName];
  v21[1] = v18;
  v20[2] = kDEPDeviceUploadRequestTypeKey;
  v17 = [v3 requestType];
  v16 = [v17 code];
  v21[2] = v16;
  v20[3] = kDEPDeviceUploadSubmitterDsidKey;
  v15 = [v3 submitter];
  v4 = [v15 dsid];
  v21[3] = v4;
  v20[4] = kDEPDeviceUploadSubmitterNameKey;
  v5 = [v3 submitter];
  v6 = [v5 name];
  v21[4] = v6;
  v20[5] = kDEPDeviceUploadSoldToIdKey;
  v7 = [v3 soldToId];
  v21[5] = v7;
  v20[6] = kDEPDeviceUploadApproverDsidKey;
  v8 = [v3 approver];
  v9 = [v8 dsid];
  v21[6] = v9;
  v20[7] = kDEPDeviceUploadApproverNameKey;
  v10 = [v3 approver];
  v11 = [v10 name];
  v21[7] = v11;
  v20[8] = kDEPDeviceUploadDeviceDetailsKey;
  v12 = [(CCDDeviceUploadSubmitDeviceRequest *)self _deviceDetails];
  v21[8] = v12;
  v14 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:9];

  return v14;
}

- (id)_deviceDetails
{
  if (+[CCDDeviceUtilities isiPad])
  {
    v2 = @"MQD22/A";
  }

  else if (+[CCDDeviceUtilities isiPhone])
  {
    v2 = @"MNAC2/A";
  }

  else if (+[CCDDeviceUtilities isAppleTV])
  {
    v2 = @"MR8A2/A";
  }

  else
  {
    v3 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Unknown device type. Using actual model number, which is unlikely to work once the request is approved", v13, 2u);
    }

    v2 = +[CCDDeviceUtilities modelNumber];
  }

  v14[0] = kDEPDeviceUploadSerialNumberKey;
  v4 = +[CCDDeviceUtilities serialNumber];
  v15[0] = v4;
  v14[1] = kDEPDeviceUploadProductFamilyKey;
  v5 = +[CCDDeviceUtilities deviceType];
  v15[1] = v5;
  v15[2] = @"iOS Device";
  v14[2] = kDEPDeviceUploadProductDescriptionKey;
  v14[3] = kDEPDeviceUploadStorageSizeKey;
  v6 = +[CCDDeviceUtilities deviceCapacity];
  v7 = [v6 stringValue];
  v15[3] = v7;
  v15[4] = @"size unknown";
  v14[4] = kDEPDeviceUploadScreenSizeKey;
  v14[5] = kDEPDeviceUploadColorKey;
  v8 = +[CCDDeviceUtilities deviceColor];
  v15[5] = v8;
  v14[6] = kDEPDeviceUploadModelKey;
  v9 = +[CCDDeviceUtilities deviceType];
  v14[7] = kDEPDeviceUploadPartNumberKey;
  v15[6] = v9;
  v15[7] = v2;
  v10 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:8];
  v16 = v10;
  v11 = [NSArray arrayWithObjects:&v16 count:1];

  return v11;
}

@end