@interface CBDevice
- (CBDevice)initWithBTStackDevice:(void *)device error:(id *)error;
- (unint64_t)updateWithBLEDevice:(id)device btAddr:(unint64_t)addr;
- (unint64_t)updateWithClassicDevice:(void *)device deviceUUID:(id)d;
@end

@implementation CBDevice

- (CBDevice)initWithBTStackDevice:(void *)device error:(id *)error
{
  v21.receiver = self;
  v21.super_class = CBDevice;
  v6 = [(CBDevice *)&v21 init];
  if (!v6)
  {
    if (error)
    {
      v19 = [objc_opt_class() description];
      *error = CBErrorF();
    }

    goto LABEL_13;
  }

  v7 = *(device + 128);
  v8 = *(device + 129);
  v9 = *(device + 130);
  v10 = *(device + 131);
  v11 = *(device + 133);
  v12 = (v7 << 40) | (v8 << 32) | (v9 << 24) | (v10 << 16) | (*(device + 132) << 8);
  v13 = v12 | v11;
  if (!(v12 | v11))
  {
    if (error)
    {
      CBErrorF();
      *error = v17 = 0;
      goto LABEL_8;
    }

LABEL_13:
    v17 = 0;
    goto LABEL_8;
  }

  v20[0] = v7;
  v20[1] = v8;
  v20[2] = v9;
  v20[3] = v10;
  v20[4] = BYTE1(v12);
  v20[5] = v11;
  v14 = [[NSData alloc] initWithBytes:v20 length:6];
  [(CBDevice *)v6 setBtAddressData:v14];

  v22[0] = 0;
  v22[1] = 0;
  if (qword_100B508D0 != -1)
  {
    sub_10080573C();
  }

  sub_1000498D4(off_100B508C8, v13, 1u, 1u, 0, 0, v22);
  v15 = sub_10004DF60(v22);
  uUIDString = [v15 UUIDString];
  if (uUIDString)
  {
    [(CBDevice *)v6 setIdentifier:uUIDString];
    v17 = v6;
  }

  else if (error)
  {
    CBErrorF();
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_8:
  return v17;
}

- (unint64_t)updateWithBLEDevice:(id)device btAddr:(unint64_t)addr
{
  deviceCopy = device;
  v197 = 0;
  v198 = &v197;
  v199 = 0x2020000000;
  v200 = 0;
  v193 = 0;
  v194 = &v193;
  v195 = 0x2020000000;
  v196 = 0;
  v189 = 0;
  v190 = &v189;
  v191 = 0x2020000000;
  v192 = 0;
  v185 = 0;
  v186 = &v185;
  v187 = 0x2020000000;
  v188 = 0;
  v181 = 0;
  v182 = &v181;
  v183 = 0x2020000000;
  v184 = 0;
  v177 = 0;
  v178 = &v177;
  v179 = 0x2020000000;
  v180 = 0;
  v173 = 0;
  v174 = &v173;
  v175 = 0x2020000000;
  v176 = 0;
  v167 = 0;
  v168 = &v167;
  v169 = 0x3032000000;
  v170 = sub_1000421C4;
  v171 = sub_100042574;
  v172 = 0;
  v163 = 0;
  v164 = &v163;
  v165 = 0x2020000000;
  v166 = 0;
  v159 = 0;
  v160 = &v159;
  v161 = 0x2020000000;
  v162 = 0;
  v155 = 0;
  v156 = &v155;
  v157 = 0x2020000000;
  v158 = 0;
  v151 = 0;
  v152 = &v151;
  v153 = 0x2020000000;
  v154 = 0;
  v145 = 0;
  v146 = &v145;
  v147 = 0x3032000000;
  v148 = sub_1000421C4;
  v149 = sub_100042574;
  v150 = 0;
  v141 = 0;
  v142 = &v141;
  v143 = 0x2020000000;
  v144 = 0;
  v135 = 0;
  v136 = &v135;
  v137 = 0x3032000000;
  v138 = sub_1000421C4;
  v139 = sub_100042574;
  v140 = 0;
  v129 = 0;
  v130 = &v129;
  v131 = 0x3032000000;
  v132 = sub_1000421C4;
  v133 = sub_100042574;
  v134 = 0;
  v125 = 0;
  v126 = &v125;
  v127 = 0x2020000000;
  v128 = 0;
  v119 = 0;
  v120 = &v119;
  v121 = 0x3032000000;
  v122 = sub_1000421C4;
  v123 = sub_100042574;
  v124 = 0;
  v115 = 0;
  v116 = &v115;
  v117 = 0x2020000000;
  v118 = 0;
  v111 = 0;
  v112 = &v111;
  v113 = 0x2020000000;
  v114 = 0;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v110 = 0;
  if (qword_100B508D0 != -1)
  {
    sub_10080573C();
  }

  v7 = off_100B508C8;
  v84[0] = _NSConcreteStackBlock;
  v84[1] = 3221225472;
  v84[2] = sub_100105B3C;
  v84[3] = &unk_100AE05F8;
  v86 = &v197;
  v87 = &v181;
  v88 = &v177;
  v89 = &v189;
  v90 = &v185;
  v91 = &v167;
  v92 = &v163;
  v93 = &v159;
  v94 = &v155;
  v95 = &v151;
  v96 = &v145;
  v97 = &v141;
  v85 = deviceCopy;
  v98 = &v193;
  v99 = &v135;
  v100 = &v129;
  v101 = &v125;
  v102 = &v119;
  v103 = &v115;
  v104 = &v107;
  v105 = &v111;
  v106 = &v173;
  v81 = v85;
  sub_1000C320C(v7, v85, v84);
  if (*(v198 + 12) && (v8 = [(CBDevice *)self appearanceValue], v8 != *(v198 + 12)))
  {
    [(CBDevice *)self setAppearanceValue:?];
    v9 = 0x80000000000;
  }

  else
  {
    v9 = 0;
  }

  if ([v120[5] length] < 5)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    if (!addr)
    {
      goto LABEL_18;
    }
  }

  else
  {
    bytes = [v120[5] bytes];
    v11 = *bytes;
    v12 = *(bytes + 1);
    v13 = *(bytes + 3);
    if (!addr)
    {
      goto LABEL_18;
    }
  }

  LOBYTE(v82) = BYTE5(addr);
  BYTE1(v82) = BYTE4(addr);
  BYTE2(v82) = BYTE3(addr);
  HIBYTE(v82) = BYTE2(addr);
  LOBYTE(v83) = BYTE1(addr);
  HIBYTE(v83) = addr;
  btAddressData = [(CBDevice *)self btAddressData];
  if ([btAddressData length] != 6 || ((v15 = objc_msgSend(btAddressData, "bytes"), v82 == *v15) ? (v16 = v83 == v15[2]) : (v16 = 0), !v16))
  {
    v17 = [[NSData alloc] initWithBytes:&v82 length:6];
    [(CBDevice *)self setBtAddressData:v17];

    v9 = 0x80000000000;
  }

LABEL_18:
  v18 = *(v194 + 24);
  if (!*(v194 + 24))
  {
    goto LABEL_30;
  }

  if (v18 > 0xE)
  {
    v19 = "?";
  }

  else
  {
    v19 = off_100AE0778[v18 - 1];
  }

  v20 = [NSString stringWithFormat:@"%s", v19, v81];
  btVersion = [(CBDevice *)self btVersion];
  v22 = v20;
  v23 = btVersion;
  v24 = v23;
  if (v22 == v23)
  {
  }

  else
  {
    if ((v22 != 0) != (v23 == 0))
    {
      v25 = [v22 isEqual:v23];

      if (v25)
      {
        goto LABEL_29;
      }
    }

    else
    {
    }

    [(CBDevice *)self setBtVersion:v22];
    v9 = 0x80000000000;
  }

LABEL_29:

LABEL_30:
  connectedServices = [(CBDevice *)self connectedServices];
  if (*(v182 + 24))
  {
    v27 = 0x400000;
  }

  else
  {
    v27 = 0;
  }

  if (qword_100B50920 != -1)
  {
    sub_100805764();
  }

  v28 = sub_1000E3EC8(qword_100B50918, v81);
  if (v28 && *(v152 + 24) == 1)
  {
    v29 = v27 | connectedServices & 0xFFBFFFFF | 0x10000;
  }

  else
  {
    v29 = v27 & 0xFFFEFFFF | connectedServices & 0xFFBEFFFF;
  }

  v30 = v29 & 0xFDFFFFFF;
  if (*(v112 + 24))
  {
    v31 = 0x2000000;
  }

  else
  {
    v31 = 0;
  }

  if ((v31 | v30) != connectedServices)
  {
    [(CBDevice *)self setConnectedServices:?];
    v9 |= 0x80000200000uLL;
  }

  if (*(v178 + 12))
  {
    v32 = *(v178 + 12);
    if (v32 != [(CBDevice *)self interval])
    {
      [(CBDevice *)self setInterval:*(v178 + 12)];
      v9 |= 0x80000000000uLL;
    }
  }

  deviceFlags = [(CBDevice *)self deviceFlags];
  v34 = 0x20000000000;
  if (!*(v164 + 24))
  {
    v34 = 0;
  }

  if (*(v126 + 24))
  {
    v34 |= 0x2000uLL;
  }

  if (*(v190 + 24))
  {
    v35 = v34 | 0x200000;
  }

  else
  {
    v35 = v34;
  }

  if (*(v186 + 24))
  {
    v35 |= 0x8000uLL;
  }

  if (!*(v126 + 24) || (v108[3] & 1) != 0 || (deviceFlags & 0x4000) != 0)
  {
    v36 = v35 | 0x40000000000;
    if (v186[3])
    {
      goto LABEL_65;
    }
  }

  else
  {
    v36 = v35 & 0xFFFFFBFFFFFFFFFFLL;
    if (v186[3])
    {
      goto LABEL_65;
    }
  }

  if ((v142[3] & 1) == 0 && !*(v164 + 24))
  {
    v37 = v36 & 0xFFFFFFFFFFFFEFFFLL;
    goto LABEL_66;
  }

LABEL_65:
  v37 = v36 | 0x1000;
LABEL_66:
  if (*(v160 + 24) == 1)
  {
    v38 = 0x20000;
    if (!*(v156 + 24))
    {
      v38 = 0;
    }

    v39 = 0x10000;
    if (*(v156 + 24))
    {
      v39 = 0;
    }

    v37 = v38 | v39 | v37 & 0xFFFFFFFFFFFCFFFFLL;
  }

  if (v37 != deviceFlags)
  {
    [(CBDevice *)self setDeviceFlags:?];
    v9 |= 0x80000000000uLL;
  }

  if (*(v174 + 24))
  {
    v40 = *(v174 + 24);
    if (v40 != [(CBDevice *)self deviceType])
    {
      [(CBDevice *)self setDeviceType:*(v174 + 24)];
      v9 |= 0x80000000000uLL;
    }
  }

  v41 = v168[5];
  if (v41)
  {
    idsDeviceID = [(CBDevice *)self idsDeviceID];

    if (v41 != idsDeviceID)
    {
      [(CBDevice *)self setIdsDeviceID:v168[5]];
      v9 |= 0x80000000000uLL;
    }
  }

  if ([v146[5] length])
  {
    v43 = v146[5];
    firmwareVersion = [(CBDevice *)self firmwareVersion];
    v45 = v43;
    v46 = firmwareVersion;
    v47 = v46;
    if (v45 == v46)
    {

      goto LABEL_88;
    }

    if ((v45 != 0) == (v46 == 0))
    {
    }

    else
    {
      v48 = [v45 isEqual:v46];

      if (v48)
      {
        goto LABEL_88;
      }
    }

    [(CBDevice *)self setFirmwareVersion:v146[5]];
    v9 |= 0x80000000000uLL;
  }

LABEL_88:
  if (![v136[5] length])
  {
    goto LABEL_96;
  }

  v49 = v136[5];
  modelUser = [(CBDevice *)self modelUser];
  v51 = v49;
  v52 = modelUser;
  v53 = v52;
  if (v51 == v52)
  {

    goto LABEL_96;
  }

  if ((v51 != 0) == (v52 == 0))
  {

    goto LABEL_95;
  }

  v54 = [v51 isEqual:v52];

  if ((v54 & 1) == 0)
  {
LABEL_95:
    [(CBDevice *)self setModelUser:v136[5]];
    v9 |= 0x80000000000uLL;
  }

LABEL_96:
  if ([v130[5] length])
  {
    v55 = v130[5];
    name = [(CBDevice *)self name];
    v57 = v55;
    v58 = name;
    v59 = v58;
    if (v57 == v58)
    {
    }

    else
    {
      if ((v57 != 0) == (v58 == 0))
      {

        goto LABEL_105;
      }

      v60 = [v57 isEqual:v58];

      if ((v60 & 1) == 0)
      {
LABEL_105:
        [(CBDevice *)self setName:v130[5]];
        v9 |= 0x80000000000uLL;
        if (!v13)
        {
          goto LABEL_108;
        }

        goto LABEL_106;
      }
    }
  }

  if (!v13)
  {
    goto LABEL_108;
  }

LABEL_106:
  if (v13 != [(CBDevice *)self productID])
  {
    [(CBDevice *)self setProductID:v13];
    v9 |= 0x80000000000uLL;
  }

LABEL_108:
  v61 = *(v116 + 6);
  if (v61 && v61 != [(CBDevice *)self bleRSSI])
  {
    [(CBDevice *)self setBleRSSI:*(v116 + 6)];
    v9 |= 0x200000000uLL;
  }

  supportedServices = [(CBDevice *)self supportedServices];
  if (v28)
  {
    v63 = 0x10000;
  }

  else
  {
    v63 = 0;
  }

  if (*(v112 + 24))
  {
    v64 = 0x2000000;
  }

  else
  {
    v64 = 0;
  }

  if ((supportedServices & 0xFDFEFFFF | v63 | v64) != [(CBDevice *)self supportedServices])
  {
    [(CBDevice *)self setSupportedServices:?];
  }

  if (v12 && [(CBDevice *)self vendorID]!= v12)
  {
    [(CBDevice *)self setVendorID:v12];
    v9 |= 0x80000000000uLL;
  }

  if (!v11)
  {
    goto LABEL_128;
  }

  if (v11 != [(CBDevice *)self vendorIDSource])
  {
    [(CBDevice *)self setVendorIDSource:v11];
    v9 |= 0x80000000000uLL;
  }

  if (v11 == 1 && v12 == 76)
  {
    v65 = 1;
  }

  else
  {
LABEL_128:
    v65 = v11 == 2 && v12 == 1452;
  }

  productID = [(CBDevice *)self productID];
  if (!productID)
  {
    productID = [(CBDevice *)self proximityPairingProductID];
  }

  if (productID != 0 && v65)
  {
    v68 = [CBProductInfo productInfoWithProductID:productID];
    productName = [v68 productName];

    if (productName)
    {
      productName2 = [(CBDevice *)self productName];
      v71 = productName;
      v72 = v71;
      if (productName2 == v71)
      {
      }

      else
      {
        if (productName2)
        {
          v73 = [productName2 isEqual:v71];

          if (v73)
          {
            goto LABEL_145;
          }
        }

        else
        {
        }

        [(CBDevice *)self setProductName:v72];
        v9 |= 0x80000000000uLL;
      }
    }

LABEL_145:
  }

  [(CBDevice *)self deviceType];
  v74 = CBDeviceTypeToNSLocalizedString();
  if (v65)
  {
    name2 = [(CBDevice *)self name];
    if (!name2 || (-[CBDevice name](self, "name"), v76 = objc_claimAutoreleasedReturnValue(), v77 = [v76 isEqualToString:v74], v76, name2, (v77 & 1) != 0))
    {
      v78 = sub_100106320(productID);
      if (v78)
      {
        [(CBDevice *)self setName:v78];
        v9 |= 0x80000000000uLL;
      }
    }
  }

  name3 = [(CBDevice *)self name];

  if (!name3)
  {
    [(CBDevice *)self setName:v74];
    v9 |= 0x80000000000uLL;
  }

  _Block_object_dispose(&v107, 8);
  _Block_object_dispose(&v111, 8);
  _Block_object_dispose(&v115, 8);
  _Block_object_dispose(&v119, 8);

  _Block_object_dispose(&v125, 8);
  _Block_object_dispose(&v129, 8);

  _Block_object_dispose(&v135, 8);
  _Block_object_dispose(&v141, 8);
  _Block_object_dispose(&v145, 8);

  _Block_object_dispose(&v151, 8);
  _Block_object_dispose(&v155, 8);
  _Block_object_dispose(&v159, 8);
  _Block_object_dispose(&v163, 8);
  _Block_object_dispose(&v167, 8);

  _Block_object_dispose(&v173, 8);
  _Block_object_dispose(&v177, 8);
  _Block_object_dispose(&v181, 8);
  _Block_object_dispose(&v185, 8);
  _Block_object_dispose(&v189, 8);
  _Block_object_dispose(&v193, 8);
  _Block_object_dispose(&v197, 8);

  return v9;
}

- (unint64_t)updateWithClassicDevice:(void *)device deviceUUID:(id)d
{
  dCopy = d;
  if (qword_100B508D0 != -1)
  {
    sub_10080578C();
  }

  v6 = off_100B508C8;
  if (qword_100B50AB0 != -1)
  {
    sub_1008057A0();
  }

  v7 = off_100B50AA8;
  if (qword_100B50AC0 != -1)
  {
    sub_1008057B4();
  }

  v8 = off_100B50AB8;
  v243 = sub_1000DFA00(off_100B50AB8, device);
  v236 = v7;
  v264 = 0;
  v265 = 0;
  v266 = 0;
  sub_1000DFC04(device, &v264);
  if (0xAAAAAAAAAAAAAAABLL * ((v265 - v264) >> 3) < 4)
  {
    v246 = 0;
    v10 = 0;
LABEL_19:
    v245 = 0;
    goto LABEL_20;
  }

  v9 = v264 + 3;
  if (SHIBYTE(v264[3].__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v9->__r_.__value_.__r.__words[0];
  }

  v10 = [NSString stringWithUTF8String:v9];
  if (0xAAAAAAAAAAAAAAABLL * ((v265 - v264) >> 3) < 9)
  {
    v246 = 0;
    goto LABEL_19;
  }

  v11 = v264 + 8;
  if (SHIBYTE(v264[8].__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v11->__r_.__value_.__r.__words[0];
  }

  v246 = [NSString stringWithUTF8String:v11];
  if (0xAAAAAAAAAAAAAAABLL * ((v265 - v264) >> 3) < 0xA)
  {
    goto LABEL_19;
  }

  v12 = v264 + 9;
  if (SHIBYTE(v264[9].__r_.__value_.__r.__words[2]) < 0)
  {
    v12 = v12->__r_.__value_.__r.__words[0];
  }

  v245 = [NSString stringWithUTF8String:v12];
LABEL_20:
  v13 = [v10 length];
  v239 = v6;
  if (!v13)
  {
    v237 = 0;
    v235 = 0;
LABEL_37:
    v22 = 0;
    goto LABEL_38;
  }

  v14 = sub_1000DFED0(v6, v10);
  if (!v14)
  {
    v237 = 0;
    v16 = 0;
    v235 = 0;
LABEL_34:

    v22 = 0;
    v13 = v16;
    goto LABEL_38;
  }

  if (sub_10079096C(v6, v14))
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v16 = sub_100790774(v6, v14);
  v235 = v15;
  if (sub_1007908B4(v6, v14) != 2)
  {
    v237 = 0;
    goto LABEL_34;
  }

  uUIDString = [v14 UUIDString];

  if (!uUIDString)
  {
    v237 = 0;
LABEL_36:
    v13 = v16;
    goto LABEL_37;
  }

  findMyCaseIdentifier = [(CBDevice *)self findMyCaseIdentifier];
  v19 = uUIDString;
  v20 = findMyCaseIdentifier;
  v14 = v20;
  v237 = v19;
  if (v19 == v20)
  {

    goto LABEL_34;
  }

  if (v20)
  {
    v21 = [v19 isEqual:v20];

    if ((v21 & 1) == 0)
    {
      goto LABEL_506;
    }

    goto LABEL_36;
  }

LABEL_506:
  [(CBDevice *)self setFindMyCaseIdentifier:v19];
  v13 = v16;
  v22 = 0x80000000000;
LABEL_38:
  v238 = v13;
  uUIDString2 = [v13 UUIDString];
  if (!uUIDString2)
  {
    goto LABEL_46;
  }

  findMyGroupIdentifier = [(CBDevice *)self findMyGroupIdentifier];
  v24 = uUIDString2;
  v25 = findMyGroupIdentifier;
  v26 = v25;
  if (v24 == v25)
  {

    goto LABEL_46;
  }

  if (!v25)
  {

    goto LABEL_45;
  }

  v27 = [v24 isEqual:v25];

  if ((v27 & 1) == 0)
  {
LABEL_45:
    [(CBDevice *)self setFindMyGroupIdentifier:v24];
    v22 = 0x80000000000;
  }

LABEL_46:
  v262 = 0;
  v263 = 0;
  v240 = sub_1000C2364(device, &v263 + 1, &v263, &v262 + 1, &v262);
  v28 = *(device + 1570);
  if (v28 != [(CBDevice *)self aclLinkState])
  {
    [(CBDevice *)self setAclLinkState:v28];
    v22 = 0x80000000000;
  }

  v29 = sub_1000E00E4(device);
  if (v29 != [(CBDevice *)self adaptiveVolumeConfig])
  {
    [(CBDevice *)self setAdaptiveVolumeConfig:v29];
    v22 = 0x80000000000;
  }

  v30 = sub_1000E012C(device, 144);
  v31 = sub_10000C7D0();
  v32 = v30 & sub_1000E01B4(v31, 0);
  if (v32 == 1 && [(CBDevice *)self adaptiveVolumeCapability]!= 1)
  {
    [(CBDevice *)self setAdaptiveVolumeCapability:v32];
    v22 |= 0x80000000000uLL;
  }

  if (qword_100B50950 != -1)
  {
    sub_1008057C8();
  }

  v33 = sub_1000E0264(off_100B50948, device);
  if (v33 >= 3)
  {
    if (qword_100B50AD0 != -1)
    {
      sub_1008057F0();
    }

    if (sub_1000E02E0(off_100B50AC8) == device)
    {
      v34 = 3;
    }

    else
    {
      if (qword_100B50AE0 != -1)
      {
        sub_100805818();
      }

      if (sub_1000E03B0(qword_100B50AD8, device))
      {
        v34 = 2;
      }

      else
      {
        v34 = 0;
      }
    }
  }

  else
  {
    v34 = dword_1008A2354[v33];
  }

  if (v34 != [(CBDevice *)self audioStreamState])
  {
    [(CBDevice *)self setAudioStreamState:v34];
    v22 |= 0x80000000000uLL;
  }

  v35 = sub_1000E012C(device, 176);
  v36 = sub_10000C7D0();
  v37 = v35 & sub_1000E01B4(v36, 3u);
  if (v37 == 1 && [(CBDevice *)self autoAncCapability]!= 1)
  {
    [(CBDevice *)self setAutoAncCapability:v37];
    v22 |= 0x80000000000uLL;
  }

  v260 = 0u;
  v261 = 0u;
  v241 = sub_1000C0348(device);
  if (v241 || *(device + 1360) == 1)
  {
    sub_1000DEB5C(device, &v260);
    v38 = v260;
    v39 = BYTE4(v260) << 8;
  }

  else
  {
    v39 = 0;
    v38 = 0;
  }

  if (v38 >= 100)
  {
    v40 = 100;
  }

  else
  {
    v40 = v38;
  }

  if ([(CBDevice *)self batteryInfoMain]!= (v39 | v40 & ~(v40 >> 31)))
  {
    [(CBDevice *)self setBatteryInfoMain:(v39 | v40 & ~(v40 >> 31))];
    v22 |= 0x80000000000uLL;
  }

  v41 = BYTE12(v260);
  if (SDWORD2(v260) >= 100)
  {
    v42 = 100;
  }

  else
  {
    v42 = DWORD2(v260);
  }

  if ([(CBDevice *)self batteryInfoLeft]!= (v42 & ~(v42 >> 31) | (v41 << 8)))
  {
    [(CBDevice *)self setBatteryInfoLeft:(v42 & ~(v42 >> 31) | (v41 << 8))];
    v22 |= 0x80000000000uLL;
  }

  v43 = BYTE4(v261);
  if (v261 >= 100)
  {
    v44 = 100;
  }

  else
  {
    v44 = v261;
  }

  if ([(CBDevice *)self batteryInfoRight]!= (v44 & ~(v44 >> 31) | (v43 << 8)))
  {
    [(CBDevice *)self setBatteryInfoRight:(v44 & ~(v44 >> 31) | (v43 << 8))];
    v22 |= 0x80000000000uLL;
  }

  v45 = BYTE12(v261);
  if (SDWORD2(v261) >= 100)
  {
    v46 = 100;
  }

  else
  {
    v46 = DWORD2(v261);
  }

  if ([(CBDevice *)self batteryInfoCase]!= (v46 & ~(v46 >> 31) | (v45 << 8)))
  {
    [(CBDevice *)self setBatteryInfoCase:(v46 & ~(v46 >> 31) | (v45 << 8))];
    v22 |= 0x80000000000uLL;
  }

  *v259 = *(device + 32);
  *&v259[4] = *(device + 66);
  if ((v259[0] << 40) | (v259[1] << 32) | (v259[2] << 24) | (v259[3] << 16) | (v259[4] << 8) | v259[5])
  {
    LOBYTE(v255) = v259[0];
    *(&v255 + 1) = *&v259[1];
    BYTE5(v255) = v259[5];
    btAddressData = [(CBDevice *)self btAddressData];
    if ([btAddressData length] != 6 || ((v48 = objc_msgSend(btAddressData, "bytes"), v255 == *v48) ? (v49 = WORD2(v255) == v48[2]) : (v49 = 0), !v49))
    {
      v50 = [[NSData alloc] initWithBytes:&v255 length:6];
      [(CBDevice *)self setBtAddressData:v50];

      v22 |= 0x80000000000uLL;
    }
  }

  v258 = 0;
  v256 = 0u;
  *v257 = 0u;
  v255 = 0u;
  sub_100007E30(v257, "");
  if (sub_1000E0610(device, &v255))
  {
    v51 = v256;
    if (v256)
    {
      v52 = v256 >> 4;
      if (v255 < 2u)
      {
        v53 = v256 & 0xF;
      }

      else
      {
        v53 = (v256 >> 20) & 0xFFF0 | v256 & 0xF;
        v52 = WORD2(v256) & 0xFFF0 | v52;
      }

      v54 = +[NSMutableString string];
      v55 = v54;
      if (v255 < 3u)
      {
        [v54 appendFormat:@"%u.%u.%u", (v51 >> 8), v52, v53];
      }

      else
      {
        LODWORD(v56) = (v52 + 65);
        if (v52 >= 0x1A)
        {
          v56 = 65;
        }

        else
        {
          v56 = v56;
        }

        [v54 appendFormat:@"%u%c%u", (v51 >> 8) / 0xAu, v56, v53];
        if (BYTE6(v51) - 1 <= 0x19)
        {
          [v55 appendFormat:@"%c", BYTE6(v51) | 0x60u];
        }
      }

      v57 = [v55 copy];
      if (v57)
      {
        caseVersion = [(CBDevice *)self caseVersion];
        v59 = [v57 isEqualToString:caseVersion];

        if ((v59 & 1) == 0)
        {
          [(CBDevice *)self setCaseVersion:v57];
          v22 |= 0x80000000000uLL;
        }
      }
    }
  }

  v60 = sub_1000E06A4(device);
  if (v60 != [(CBDevice *)self classicRSSI])
  {
    [(CBDevice *)self setClassicRSSI:v60];
    v22 |= 0x200000000uLL;
  }

  v61 = sub_1000E06EC(device);
  if ([(CBDevice *)self clickHoldModeLeft]!= HIBYTE(v61))
  {
    [(CBDevice *)self setClickHoldModeLeft:HIBYTE(v61)];
    v22 |= 0x80000000000uLL;
  }

  if ([(CBDevice *)self clickHoldModeRight]!= v61)
  {
    [(CBDevice *)self setClickHoldModeRight:v61];
    v22 |= 0x80000000000uLL;
  }

  v62 = sub_1000E0734(device);
  v63 = v62;
  v64 = v62 & 0xF;
  v244 = v10;
  if (v64 == 1)
  {
    v67 = v62 >> 4;
    v68 = (v62 >> 8) & 0xF;
    v65 = HIWORD(v62) & 0xF;
    v66 = (v62 << 12) & 0xF000000;
  }

  else
  {
    v65 = 0;
    v66 = 0;
    if ((v62 & 0xF) != 0)
    {
      v68 = 0;
      v67 = 0;
    }

    else
    {
      v67 = v62 >> 4;
      v68 = (v62 >> 8) & 0xF;
    }
  }

  if (sub_1000E012C(device, 80))
  {
    if (v63)
    {
      v69 = v68;
    }

    else
    {
      v69 = 2;
    }

    [(CBDevice *)self setCallMgmtMsg:v66 | (v65 << 32) | v64 | (v69 << 16) | (v67 << 8)];
    if ([(CBDevice *)self callMgmtMsg]== 1)
    {
      [(CBDevice *)self setMuteControlCapability:1];
    }

    else if (![(CBDevice *)self callMgmtMsg])
    {
      [(CBDevice *)self setEndCallCapability:1];
    }

    if (v69 && v69 != [(CBDevice *)self endCallConfig])
    {
      [(CBDevice *)self setEndCallConfig:v69];
      v22 |= 0x80000000000uLL;
    }

    if (v65 && v65 != [(CBDevice *)self muteControlConfig])
    {
      [(CBDevice *)self setMuteControlConfig:v65];
      v22 |= 0x80000000000uLL;
    }
  }

  v70 = device + 392;
  if (*(device + 415) < 0)
  {
    sub_100008904(__p, *(device + 49), *(device + 50));
  }

  else
  {
    *__p = *v70;
    v254 = *(device + 51);
  }

  if (SHIBYTE(v254) < 0)
  {
    v71 = __p[1];
    operator delete(__p[0]);
    if (!v71)
    {
      goto LABEL_162;
    }
  }

  else if (!HIBYTE(v254))
  {
    goto LABEL_162;
  }

  if (*(device + 415) < 0)
  {
    sub_100008904(__p, *(device + 49), *(device + 50));
  }

  else
  {
    *__p = *v70;
    v254 = *(device + 51);
  }

  if (v254 >= 0)
  {
    v72 = __p;
  }

  else
  {
    v72 = __p[0];
  }

  v73 = [NSString stringWithUTF8String:v72];
  if (SHIBYTE(v254) < 0)
  {
    operator delete(__p[0]);
  }

  model = [(CBDevice *)self model];

  if (v73 != model)
  {
    [(CBDevice *)self setModel:v73];
    v22 |= 0x80000000000uLL;
  }

LABEL_162:
  v75 = sub_1000E077C(v8, device);
  if (qword_100B50AA0 != -1)
  {
    sub_100805840();
  }

  if (*(off_100B50A98 + 60) == 1)
  {
    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    v76 = sub_1000E1FE8(v259);
    if (v76 && !*(v76 + 54))
    {
      LODWORD(v75) = v75 | 0x800000;
    }

    v77 = sub_1000E2040(v259);
    sub_100022214(__p);
    if (v77)
    {
      v75 = v75 | 0x1000000;
    }

    else
    {
      v75 = v75;
    }

    sub_10002249C(__p);
  }

  if (v75 != [(CBDevice *)self connectedServices])
  {
    [(CBDevice *)self setConnectedServices:v75];
    v22 |= 0x80000200000uLL;
  }

  v78 = sub_1000E20B0(device);
  if (v78 != [(CBDevice *)self conversationDetectConfig])
  {
    [(CBDevice *)self setConversationDetectConfig:v78];
    v22 |= 0x80000000000uLL;
  }

  v79 = sub_1000E012C(device, 160);
  v80 = sub_10000C7D0();
  v81 = v79 & sub_1000E01B4(v80, 2u);
  if (v81 == 1 && [(CBDevice *)self conversationDetectCapability]!= 1)
  {
    [(CBDevice *)self setConversationDetectCapability:v81];
    v22 |= 0x80000000000uLL;
  }

  v82 = sub_1000E20F8(device);
  if (v82 != [(CBDevice *)self crownRotationDirection])
  {
    [(CBDevice *)self setCrownRotationDirection:v82];
    v22 |= 0x80000000000uLL;
  }

  deviceFlags = [(CBDevice *)self deviceFlags];
  v84 = sub_1000E2140(device, 12);
  v85 = sub_1000E2140(device, 16);
  v86 = *(device + 1016);
  v87 = *(device + 1032);
  v88 = sub_1000E2570(v236, device);
  v89 = sub_1000E2140(device, 27);
  v90 = sub_1000E2140(device, 26);
  v91 = (v243 >> 19) & 1;
  if (v84)
  {
    v91 |= 0x1000000uLL;
  }

  if (v85)
  {
    v91 |= 0x4000000uLL;
  }

  if (v86)
  {
    v92 = v91 | 0x2000000;
  }

  else
  {
    v92 = v91;
  }

  if (v87)
  {
    v93 = 0x20000000;
  }

  else
  {
    v93 = 0;
  }

  if (v88)
  {
    v94 = 2;
  }

  else
  {
    v94 = 0;
  }

  if (v89)
  {
    v95 = 4;
  }

  else
  {
    v95 = 0;
  }

  if (v90)
  {
    v96 = 8;
  }

  else
  {
    v96 = 0;
  }

  v97 = v92 & 0xFFFFFFFFCF7FFFF1 | v93 | v94 | v95 | v96;
  if (!sub_1000E012C(device, 64) || (v98 = sub_10000C798(), !(*(*v98 + 840))(v98, 1)))
  {
    v252 = 0;
LABEL_209:
    v102 = v97 & 0xFFFFFFFFBFFFFFFFLL;
    goto LABEL_210;
  }

  v252 = 0;
  if (qword_100B508F0 != -1)
  {
    sub_100805868();
  }

  sub_10056C0AC(off_100B508E8, device, &v252);
  v99 = v252 == 1;
  if (qword_100B50940 != -1)
  {
    sub_100805890();
  }

  v100 = sub_100639958(off_100B50938, device);
  v101 = v97 | (v99 << 28);
  if (!v100)
  {
    v97 = v101 | 0x800000;
    goto LABEL_209;
  }

  v102 = v101 | 0x40800000;
LABEL_210:
  if (sub_1000E2140(device, 32) && sub_1000E5DB8(device) == 1)
  {
    v103 = v102 | 0x10;
  }

  else
  {
    v103 = v102 & 0xFFFFFFFFFFFFFFEFLL;
  }

  v104 = sub_1000E2140(device, 17);
  v105 = sub_1000E2140(device, 33);
  v106 = sub_1000E2B78(device);
  if (qword_100B508C0 != -1)
  {
    sub_1008058B8();
  }

  v107 = sub_10004EE74(off_100B508B8, dCopy);
  v108 = sub_1000295DC(device);
  sub_1000B006C(v239, dCopy, __p);
  v109 = 0x8000000;
  if (!v104)
  {
    v109 = 0;
  }

  v110 = 32;
  if (!v105)
  {
    v110 = 0;
  }

  v111 = v109 | v110;
  v112 = 64;
  if (!v106)
  {
    v112 = 0;
  }

  v113 = v111 | v112;
  v114 = 0x2000;
  if (!v107)
  {
    v114 = 0;
  }

  v115 = v113 | v114 | v103 & 0xFFFFFFFFF7EB1F9FLL;
  if (v108)
  {
    v116 = 0x4000;
  }

  else
  {
    v116 = 0;
  }

  if (SHIBYTE(v254) < 0)
  {
    v117 = __p[1] == 0;
    operator delete(__p[0]);
  }

  else
  {
    v117 = SHIBYTE(v254) == 0;
  }

  v118 = 0x8000;
  if (v117)
  {
    v118 = 0;
  }

  v119 = 0x40000;
  if (!*(device + 1499))
  {
    v119 = 0;
  }

  v120 = v118 | v119;
  v121 = 0x100000;
  if (!*(device + 1360))
  {
    v121 = 0;
  }

  v122 = v115 | v116 | v120 | v121;
  if (v241)
  {
    v123 = sub_10054F768(device);
    v124 = 0x200000;
    if (!v123)
    {
      v124 = 0;
    }

    v125 = v124 | v122 & 0xFFFFFFFFFFDFFFFFLL;
    if (*(device + 1500))
    {
      v126 = v125 | 0x400000;
      goto LABEL_243;
    }
  }

  else
  {
    v125 = v122 & 0xFFFFFFFFFFDFFFFFLL;
  }

  v126 = v125 & 0xFFFFFFFFFFBFFFFFLL;
LABEL_243:
  v127 = sub_1000E2BC0(device);
  if ((v117 | v108))
  {
    v128 = v126 & 0xFFFFFBFF7FFFEFFFLL | ((v127 == 1) << 31) | 0x40000000000;
  }

  else
  {
    v128 = v126 & 0xFFFFFBFF7FFFFFFFLL | ((v127 == 1) << 31) | 0x40000001000;
  }

  if (sub_1000E2C08(device))
  {
    v129 = sub_10054E104(device);
    v130 = 0x20000;
    if (!v129)
    {
      v130 = 0;
    }

    v131 = 0x10000;
    if (v129)
    {
      v131 = 0;
    }

    v128 = v130 | v131 | v128 & 0xFFFFFFFFFFFCFFFFLL;
  }

  v132 = sub_1000E2C2C(device);
  v133 = sub_1000E2E8C(device);
  v134 = 0x80000;
  if (!v132)
  {
    v134 = 0;
  }

  v135 = 0x10000000000;
  if (!v133)
  {
    v135 = 0;
  }

  v136 = v134 | v135 | v128 & 0xFFFFFEFFFFF7FFFFLL;
  if (v235)
  {
    v137 = v136 & 0xFFFFFF7FFFFFFFFFLL | ((v235 == 1) << 39);
  }

  else
  {
    v137 = v136;
  }

  if (v137 != deviceFlags)
  {
    [(CBDevice *)self setDeviceFlags:?];
    v22 |= 0x80000000000uLL;
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100805840();
  }

  if (*(off_100B50A98 + 60) == 1)
  {
    LOBYTE(v248) = 0;
    LOWORD(__p[0]) = 0;
    LOWORD(v249) = 0;
    sub_1000E2FE4(device, __p, &v248, &v249);
    if (v248)
    {
      if (v248 > 0xEu)
      {
        v138 = "?";
      }

      else
      {
        v138 = off_100AE0778[v248 - 1];
      }

      v138 = [NSString stringWithFormat:@"%s", v138];
      btVersion = [(CBDevice *)self btVersion];
      v141 = v138;
      v142 = btVersion;
      v143 = v142;
      if (v141 == v142)
      {
      }

      else
      {
        if ((v141 != 0) != (v142 == 0))
        {
          v144 = [v141 isEqual:v142];

          if (v144)
          {
            goto LABEL_276;
          }
        }

        else
        {
        }

        [(CBDevice *)self setBtVersion:v141];
        v22 |= 0x80000000000uLL;
      }

LABEL_276:
    }
  }

  v145 = sub_1000C2398(device);
  if (![(CBDevice *)self colorInfo]&& [(CBDevice *)self colorInfo]!= v145)
  {
    [(CBDevice *)self setColorInfo:v145];
    v22 |= 0x80000000000uLL;
  }

  v146 = sub_1000DEB14(device);
  if ([(CBDevice *)self deviceType]!= v146)
  {
    [(CBDevice *)self setDeviceType:v146];
    v22 |= 0x80000000000uLL;
  }

  if (![(CBDevice *)self appearanceValue]&& ([(CBDevice *)self deviceType]== 20 || [(CBDevice *)self deviceType]== 16))
  {
    v161 = sub_1000E30FC(v239, dCopy);
    if (v161)
    {
      if ([(CBDevice *)self appearanceValue]!= v161)
      {
        [(CBDevice *)self setAppearanceValue:v161];
        v22 |= 0x80000000000uLL;
      }
    }
  }

  v147 = sub_1000E3188(device);
  if (HIBYTE(v147) < 5u)
  {
    v148 = HIBYTE(v147) + 1;
  }

  else
  {
    v148 = 0;
  }

  if (v148 != [(CBDevice *)self doubleTapActionLeft])
  {
    [(CBDevice *)self setDoubleTapActionLeft:?];
    v22 |= 0x80000000000uLL;
  }

  if (v147 < 5u)
  {
    v149 = v147 + 1;
  }

  else
  {
    v149 = 0;
  }

  if (v149 != [(CBDevice *)self doubleTapActionRight])
  {
    [(CBDevice *)self setDoubleTapActionRight:?];
    v22 |= 0x80000000000uLL;
  }

  doubleTapCapability = [(CBDevice *)self doubleTapCapability];
  if (sub_1000DFB74(device, 0x80000u) == 4)
  {
    v151 = sub_1000E2140(device, 14) ? 2 : 1;
    if (v151 != doubleTapCapability)
    {
      [(CBDevice *)self setDoubleTapCapability:v151];
      v22 |= 0x80000000000uLL;
    }
  }

  v152 = sub_1000E31D0(device);
  if (v152 != [(CBDevice *)self gapaFlags])
  {
    [(CBDevice *)self setGapaFlags:v152];
    v22 |= 0x80000000000uLL;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v265 - v264) >> 3) < 0xB)
  {
    if (!v240)
    {
      goto LABEL_322;
    }

    v233 = v262 >> 4;
    v234 = v262 & 0xF;
    v232 = BYTE1(v262);
    v156 = NSPrintF_safe();
    v160 = [(CBDevice *)self firmwareVersion:v232];

    if (v156 != v160)
    {
LABEL_320:
      [(CBDevice *)self setFirmwareVersion:v156];
      v22 |= 0x80000000000uLL;
    }
  }

  else
  {
    v153 = v264 + 10;
    if (SHIBYTE(v264[10].__r_.__value_.__r.__words[2]) < 0)
    {
      v153 = v153->__r_.__value_.__r.__words[0];
    }

    v154 = [NSString stringWithUTF8String:v153];
    if ([v154 length])
    {
      firmwareVersion = [(CBDevice *)self firmwareVersion];
      v156 = v154;
      v157 = firmwareVersion;
      v158 = v157;
      if (v156 != v157)
      {
        if ((v156 != 0) == (v157 == 0))
        {
        }

        else
        {
          v159 = [v156 isEqual:v157];

          if (v159)
          {
            goto LABEL_321;
          }
        }

        goto LABEL_320;
      }
    }

    else
    {
      v156 = v154;
    }
  }

LABEL_321:

LABEL_322:
  if (*(device + 1437))
  {
    v162 = 2;
  }

  else
  {
    v162 = 1;
  }

  if ([(CBDevice *)self frequencyBand]!= v162)
  {
    [(CBDevice *)self setFrequencyBand:v162];
    v22 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(device, 0xC0u) == 2)
  {
    v163 = 1;
  }

  else
  {
    v163 = 2;
  }

  if (v163 != [(CBDevice *)self hearingAidSupport])
  {
    [(CBDevice *)self setHearingAidSupport:v163];
    v22 |= 0x80000000000uLL;
  }

  if (sub_1000E3218(device, 0xD0u) == 2)
  {
    v164 = 1;
  }

  else
  {
    v164 = 2;
  }

  if (v164 != [(CBDevice *)self hearingTestSupport])
  {
    [(CBDevice *)self setHearingTestSupport:v164];
    v22 |= 0x80000000000uLL;
  }

  v165 = sub_1000E3284(device);
  if (v165 != [(CBDevice *)self listeningMode])
  {
    [(CBDevice *)self setListeningMode:v165];
    v22 |= 0x80000000000uLL;
  }

  v166 = sub_1000E32CC(device);
  if (v166 != [(CBDevice *)self listeningModeConfigs])
  {
    [(CBDevice *)self setListeningModeConfigs:v166];
    v22 |= 0x80000000000uLL;
  }

  v167 = sub_1000E3314(device);
  if (v167 >= 3)
  {
    v168 = 0;
  }

  else
  {
    v168 = 0x20301u >> (8 * v167);
  }

  if ((v168 & 3) != [(CBDevice *)self microphoneMode])
  {
    [(CBDevice *)self setMicrophoneMode:?];
    v22 |= 0x80000000000uLL;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v265 - v264) >> 3) >= 2)
  {
    v169 = v264 + 1;
    if (SHIBYTE(v264[1].__r_.__value_.__r.__words[2]) < 0)
    {
      v169 = v169->__r_.__value_.__r.__words[0];
    }

    v170 = [NSString stringWithUTF8String:v169];
    if (![v170 length])
    {
      goto LABEL_357;
    }

    modelUser = [(CBDevice *)self modelUser];
    v172 = v170;
    v173 = modelUser;
    v174 = v173;
    if (v172 == v173)
    {
    }

    else
    {
      if ((v172 != 0) == (v173 == 0))
      {
      }

      else
      {
        v175 = [v172 isEqual:v173];

        if (v175)
        {
          goto LABEL_357;
        }
      }

      [(CBDevice *)self setModelUser:v172];
      v22 |= 0x80000000000uLL;
    }

LABEL_357:
  }

  sub_1000C23E0(device, __p);
  if (v254 >= 0)
  {
    v176 = __p;
  }

  else
  {
    v176 = __p[0];
  }

  v177 = [NSString stringWithUTF8String:v176];
  if (SHIBYTE(v254) < 0)
  {
    operator delete(__p[0]);
  }

  if ([v177 length])
  {
    name = [(CBDevice *)self name];
    v179 = v177;
    v180 = name;
    v181 = v180;
    if (v179 == v180)
    {

      goto LABEL_371;
    }

    if ((v179 != 0) == (v180 == 0))
    {
    }

    else
    {
      v182 = [v179 isEqual:v180];

      if (v182)
      {
        goto LABEL_371;
      }
    }

    [(CBDevice *)self setName:v179];
    v22 |= 0x80000000000uLL;
  }

LABEL_371:
  if ([v177 length])
  {
    if (qword_100B508D0 != -1)
    {
      sub_10080573C();
    }

    v183 = off_100B508C8;
    sub_1000C23E0(device, v250);
    sub_1000E335C(v183, dCopy, v250);
    if (v251 < 0)
    {
      operator delete(v250[0]);
    }
  }

  primaryPlacement = [(CBDevice *)self primaryPlacement];
  secondaryPlacement = [(CBDevice *)self secondaryPlacement];
  primaryBudSide = [(CBDevice *)self primaryBudSide];
  if (sub_1000DFB74(device, 0x80000u) != 4)
  {
    v188 = 0;
    v189 = 0;
    v190 = 3;
    goto LABEL_394;
  }

  v187 = sub_1000E356C(device);
  LODWORD(__p[0]) = 3;
  v248 = 3;
  v249 = 3;
  if (v241)
  {
    if (qword_100B50950 != -1)
    {
      sub_1008057C8();
    }

    sub_10033C1E4(off_100B50948, device, __p, &v249);
    if (qword_100B50950 != -1)
    {
      sub_1008057C8();
    }

    sub_10033C47C(off_100B50948, device, &v248);
  }

  if (v187)
  {
    if (LODWORD(__p[0]) > 0xC)
    {
      v188 = 0;
    }

    else
    {
      v188 = dword_1008A2360[LODWORD(__p[0])];
    }

    if (v249 > 9)
    {
      switch(v249)
      {
        case 10:
          v189 = 4;
          goto LABEL_388;
        case 11:
          v189 = 5;
          goto LABEL_388;
        case 12:
          v189 = 6;
          goto LABEL_388;
      }
    }

    else
    {
      switch(v249)
      {
        case 0:
          v189 = 1;
          goto LABEL_388;
        case 1:
          v189 = 2;
          goto LABEL_388;
        case 2:
          v189 = 3;
          goto LABEL_388;
      }
    }

    v189 = 0;
    goto LABEL_388;
  }

  v188 = 7;
  v189 = 7;
LABEL_388:
  if (v248 == 2)
  {
    v191 = 2;
  }

  else
  {
    v191 = 3;
  }

  if (v248 == 1)
  {
    v190 = 1;
  }

  else
  {
    v190 = v191;
  }

LABEL_394:
  if (v188 != primaryPlacement)
  {
    [(CBDevice *)self setPrimaryPlacement:?];
    v22 |= 0x80000000000uLL;
  }

  if (v189 != secondaryPlacement)
  {
    [(CBDevice *)self setSecondaryPlacement:v189];
    v22 |= 0x80000000000uLL;
  }

  if (primaryBudSide != v190)
  {
    [(CBDevice *)self setPrimaryBudSide:v190];
    v22 |= 0x80000000000uLL;
  }

  if (sub_1000E356C(device))
  {
    v192 = 1;
  }

  else
  {
    v192 = 2;
  }

  if (v192 != [(CBDevice *)self placementMode])
  {
    [(CBDevice *)self setPlacementMode:v192];
    v22 |= 0x80000000000uLL;
  }

  v193 = sub_1000E35B4(device);
  if (v193 != [(CBDevice *)self selectiveSpeechListeningConfig])
  {
    [(CBDevice *)self setSelectiveSpeechListeningConfig:v193];
    v22 |= 0x80000000000uLL;
  }

  v194 = sub_1000E3218(device, 6u);
  v195 = sub_10000C7D0();
  v196 = sub_1000E01B4(v195, 4u);
  if (v194 > 2)
  {
    v197 = v196;
  }

  else
  {
    v197 = 0;
  }

  if (v197 && [(CBDevice *)self selectiveSpeechListeningCapability]!= 1)
  {
    [(CBDevice *)self setSelectiveSpeechListeningCapability:v197];
    v22 |= 0x80000000000uLL;
  }

  if ([v244 length])
  {
    serialNumber = [(CBDevice *)self serialNumber];
    v199 = v244;
    v200 = serialNumber;
    v201 = v200;
    if (v199 == v200)
    {

      goto LABEL_421;
    }

    if ((v199 != 0) == (v200 == 0))
    {
    }

    else
    {
      v202 = [v199 isEqual:v200];

      if (v202)
      {
        goto LABEL_421;
      }
    }

    [(CBDevice *)self setSerialNumber:v199];
    v22 |= 0x80000000000uLL;
  }

LABEL_421:
  if (![v246 length])
  {
    goto LABEL_429;
  }

  serialNumberLeft = [(CBDevice *)self serialNumberLeft];
  v204 = v246;
  v205 = serialNumberLeft;
  v206 = v205;
  if (v204 == v205)
  {

    goto LABEL_429;
  }

  if ((v204 != 0) == (v205 == 0))
  {

    goto LABEL_428;
  }

  v207 = [v204 isEqual:v205];

  if ((v207 & 1) == 0)
  {
LABEL_428:
    [(CBDevice *)self setSerialNumberLeft:v204];
    v22 |= 0x80000000000uLL;
  }

LABEL_429:
  if (![v245 length])
  {
    goto LABEL_437;
  }

  serialNumberRight = [(CBDevice *)self serialNumberRight];
  v209 = v245;
  v210 = serialNumberRight;
  v211 = v210;
  if (v209 == v210)
  {

    goto LABEL_437;
  }

  if ((v209 != 0) == (v210 == 0))
  {

    goto LABEL_436;
  }

  v212 = [v209 isEqual:v210];

  if ((v212 & 1) == 0)
  {
LABEL_436:
    [(CBDevice *)self setSerialNumberRight:v209];
    v22 |= 0x80000000000uLL;
  }

LABEL_437:
  v213 = sub_1000E5DB8(device);
  if (v213 == 1)
  {
    v214 = 1;
  }

  else
  {
    v214 = 2 * (v213 == 2);
  }

  if (v214 != [(CBDevice *)self smartRoutingMode])
  {
    [(CBDevice *)self setSmartRoutingMode:v214];
    v22 |= 0x80000000000uLL;
  }

  v215 = sub_1000E35FC(device);
  if (v215 && v215 != [(CBDevice *)self interval])
  {
    [(CBDevice *)self setInterval:v215];
    v22 |= 0x80000000000uLL;
  }

  LODWORD(__p[0]) = 0;
  LOBYTE(v249) = 0;
  if (qword_100B508F0 != -1)
  {
    sub_100805868();
  }

  sub_1000E6A78(off_100B508E8, device, @"global", __p, &v249);
  v216 = __p[0];
  if (v216 != [(CBDevice *)self spatialAudioMode])
  {
    [(CBDevice *)self setSpatialAudioMode:LODWORD(__p[0])];
    v22 |= 0x80000000000uLL;
  }

  if (v243 != [(CBDevice *)self supportedServices])
  {
    [(CBDevice *)self setSupportedServices:v243];
    v22 |= 0x80000200000uLL;
  }

  if ((([(CBDevice *)self productID]== 0) & v240) == 1 && HIDWORD(v262))
  {
    [(CBDevice *)self setProductID:?];
    v22 |= 0x80000000000uLL;
  }

  if ((([(CBDevice *)self vendorID]== 0) & v240) == 1 && v263)
  {
    [(CBDevice *)self setVendorID:v263];
    v22 |= 0x80000000000uLL;
  }

  if ((([(CBDevice *)self vendorIDSource]== 0) & v240) == 1 && HIDWORD(v263))
  {
    [(CBDevice *)self setVendorIDSource:BYTE4(v263)];
    v22 |= 0x80000000000uLL;
  }

  if ([(CBDevice *)self vendorIDSource]== 1 && [(CBDevice *)self vendorID]== 76)
  {
    v217 = 1;
  }

  else
  {
    v217 = [(CBDevice *)self vendorIDSource]== 2 && [(CBDevice *)self vendorID]== 1452;
  }

  productID = [(CBDevice *)self productID];
  if (!productID)
  {
    productID = [(CBDevice *)self proximityPairingProductID];
  }

  if (productID != 0 && v217)
  {
    v219 = [CBProductInfo productInfoWithProductID:productID];
    productName = [v219 productName];

    if (productName)
    {
      productName2 = [(CBDevice *)self productName];
      v222 = productName;
      v223 = v222;
      if (productName2 == v222)
      {
      }

      else
      {
        if (productName2)
        {
          v224 = [productName2 isEqual:v222];

          if (v224)
          {
            goto LABEL_487;
          }
        }

        else
        {
        }

        [(CBDevice *)self setProductName:v223];
        v22 |= 0x80000000000uLL;
      }
    }

LABEL_487:
  }

  [(CBDevice *)self deviceType];
  v225 = CBDeviceTypeToNSLocalizedString();
  if (v217)
  {
    name2 = [(CBDevice *)self name];
    if (!name2 || (-[CBDevice name](self, "name"), v227 = objc_claimAutoreleasedReturnValue(), v228 = [v227 isEqualToString:v225], v227, name2, (v228 & 1) != 0))
    {
      v229 = sub_100106320(productID);
      if (v229)
      {
        [(CBDevice *)self setName:v229];
        v22 |= 0x80000000000uLL;
      }
    }
  }

  name3 = [(CBDevice *)self name];

  if (!name3)
  {
    [(CBDevice *)self setName:v225];
    v22 |= 0x80000000000uLL;
  }

  if (SHIBYTE(v258) < 0)
  {
    operator delete(v257[0]);
  }

  *&v255 = &v264;
  sub_1000161FC(&v255);

  return v22;
}

@end