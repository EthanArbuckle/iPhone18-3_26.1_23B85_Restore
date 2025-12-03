@interface CCDDeviceUploadSubmitDeviceRequest
- (id)_deviceDetails;
- (id)requestBody;
@end

@implementation CCDDeviceUploadSubmitDeviceRequest

- (id)requestBody
{
  submitDeviceRequestPayload = [(CCDDeviceUploadSubmitDeviceRequest *)self submitDeviceRequestPayload];
  v20[0] = kDEPDeviceUploadOrgIdKey;
  orgId = [submitDeviceRequestPayload orgId];
  v21[0] = orgId;
  v20[1] = kDEPDeviceUploadOrgNameKey;
  orgName = [submitDeviceRequestPayload orgName];
  v21[1] = orgName;
  v20[2] = kDEPDeviceUploadRequestTypeKey;
  requestType = [submitDeviceRequestPayload requestType];
  code = [requestType code];
  v21[2] = code;
  v20[3] = kDEPDeviceUploadSubmitterDsidKey;
  submitter = [submitDeviceRequestPayload submitter];
  dsid = [submitter dsid];
  v21[3] = dsid;
  v20[4] = kDEPDeviceUploadSubmitterNameKey;
  submitter2 = [submitDeviceRequestPayload submitter];
  name = [submitter2 name];
  v21[4] = name;
  v20[5] = kDEPDeviceUploadSoldToIdKey;
  soldToId = [submitDeviceRequestPayload soldToId];
  v21[5] = soldToId;
  v20[6] = kDEPDeviceUploadApproverDsidKey;
  approver = [submitDeviceRequestPayload approver];
  dsid2 = [approver dsid];
  v21[6] = dsid2;
  v20[7] = kDEPDeviceUploadApproverNameKey;
  approver2 = [submitDeviceRequestPayload approver];
  name2 = [approver2 name];
  v21[7] = name2;
  v20[8] = kDEPDeviceUploadDeviceDetailsKey;
  _deviceDetails = [(CCDDeviceUploadSubmitDeviceRequest *)self _deviceDetails];
  v21[8] = _deviceDetails;
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
  stringValue = [v6 stringValue];
  v15[3] = stringValue;
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